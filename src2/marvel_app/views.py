from . import app
from flask import render_template,redirect,flash,request,jsonify,json,url_for
from . import models
from pprint import pprint
from . import forms
def get_lugares(id_hijo):
    lugares = []
    hijo = models.select_query(f""" 
    SELECT id,id_padre,nombre FROM Lugar
    WHERE id={id_hijo}
    """)[0]
    lugares.append(hijo)
    if hijo['id_padre']:
        id_padre = hijo['id_padre'] 
        while (id_padre):
            padre = models.select_query(f""" 
             SELECT id,id_padre,nombre FROM Lugar
             WHERE id={id_padre}
            """)[0]
            lugares.append(padre)
            id_padre = padre['id_padre']
    return lugares





@app.route('/')
def home():
    return render_template('home.html')



@app.route('/personajes/<key>/<pk>')
@app.route('/personajes/<key>/')
def personajes(key,pk=None):
    if not pk:
        if key=='competidores': 
            keyword = 'Competidor'
        else: 
            keyword = 'NoCompetidor'
        data = models.select_query(f"""
        SELECT p.id,p.nombre_original,p.nombre_real, p.apellido_real,
        u.nombre as universo
        FROM Personaje_{keyword} p , Universo u
        WHERE u.id = p.id_universo
        ORDER BY nombre_real
        """)
    else:
        if key=='competidores': 
            data = models.select_query(f""" 
            SELECT 
            p.id,
            p.nombre_original,
            p.nombre_real, 
            p.apellido_real,
            p.biografia,
            p.identidad,
            p.moralidad,
            p.altura,
            p.altura_opcional,
            p.peso,
            p.peso_opcional,
            p.estado_civil,
            p.genero,
            c1.nombre as color_ojos,
            c2.nombre as color_pelo,
            u.id as universo,
            p.id_lugar_nacimiento
            FROM 
            Personaje_Competidor p ,Universo u, Color c1, Color c2
            WHERE 
            p.id = {pk} AND
            u.id = p.id_universo AND 
            c1.id = p.color_ojos_id AND 
            c2.id = p.color_pelo_id 
            """)[0]
            form = forms.PersonajeCompetidor()
            form.nombre_original.data = data['nombre_original']
            form.nombre_real.data = data['nombre_real']
            form.apellido_real.data = data['apellido_real']
            form.otros_alias.choices = models.select_query(f'SELECT id,nombre FROM Alias WHERE id={pk}',False)
            form.biografia.data = data['biografia']
            form.genero.data = 0 if data['genero']=='M' else 1
            form.identidad.data = 0 if data['identidad']=='publica' else 1
            if data['moralidad']=='heroe':
                form.moralidad.data = 0  
            elif data['moralidad']=='antiheroe':
                form.moralidad.data = 1
            else :
                form.moralidad.data = 2
            
            form.altura1.data = data['altura']
            form.altura2.data = data['altura_opcional']
            form.peso1.data = data['peso']
            form.peso2.data = data['peso_opcional']
            form.universo.choices = models.select_query("SELECT id,nombre FROM Universo",False)
            form.universo.data =  data['universo']
            form.profesion.choices = models.select_query("SELECT id,nombre FROM Profesion",False)
            form.profesion.data = models.select_query(f""" 
            SELECT prof.id from Profesion prof
            WHERE prof.id in 
            (SELECT id_profesion 
            FROM Profesion_Competidor WHERE id_competidor={pk})
            """,False)
            form.parientes.choices = models.select_query("SELECT id,nombre_real FROM Personaje_Competidor",False)
            form.parientes.choices += models.select_query("SELECT id,nombre_real FROM Personaje_NoCompetidor",False)

            form.parientes.data = models.select_query(f""" 
            SELECT per.id from Personaje_NoCompetidor per
            WHERE per.id in 
            (SELECT id_personaje1
            FROM Relacion WHERE id_competidor1={pk} AND tipo_relacion='pariente')
            """,False)

            form.enemigos.choices  = models.select_query("SELECT id,nombre_real FROM Personaje_Competidor",False)
            form.enemigos.choices   += models.select_query("SELECT id,nombre_real FROM Personaje_NoCompetidor",False)

            form.enemigos.data  = models.select_query(f""" 
            SELECT per.id from Personaje_NoCompetidor per
            WHERE per.id in 
            (SELECT id_personaje1
            FROM Relacion WHERE id_competidor1={pk} AND tipo_relacion='enemigo')
            """,False)

            form.aliados.choices  = models.select_query("SELECT id,nombre_real FROM Personaje_Competidor",False)
            form.aliados.choices   += models.select_query("SELECT id,nombre_real FROM Personaje_NoCompetidor",False)

            form.aliados.data  = models.select_query(f""" 
            SELECT per.id from Personaje_NoCompetidor per
            WHERE per.id in 
            (SELECT id_personaje1
            FROM Relacion WHERE id_competidor1={pk} AND tipo_relacion='aliado')
            """,False)

            form.poderes.choices = models.select_query("SELECT id,nombre FROM Poder",False)
            form.poderes.checked = models.select_query(f""" 
             SELECT prof.id from Poder prof
            WHERE prof.id in 
            (SELECT id_poder 
            FROM Poder_Competidor WHERE id_competidor={pk})
            """,False)
            form.parafernalia.choices = models.select_query("SELECT id,nombre FROM Parafernalia",False)
            form.parafernalia.data = models.select_query(f""" 
              SELECT prof.id from Parafernalia prof
            WHERE prof.id in 
            (SELECT id_parafernalia 
            FROM Parafernalia_Competidor WHERE id_competidor={pk})
            """,False)

           
            lugar_nacimiento = None
            if data['id_lugar_nacimiento']:
                lugar_nacimiento=  ','.join(lugar['nombre'] for lugar in get_lugares(data['id_lugar_nacimiento']))
            return render_template('form_personajes.html',form=form,on_edit=True,lugar_nacimiento=lugar_nacimiento)
            
    
    return render_template('list_personajes.html',data=data)
    

@app.route('/personajes/new/<key>',methods=['POST','GET'])
def personajes_new(key):
    if key=='competidores':
        form = forms.PersonajeCompetidor(request.form)
    else:
        form = form.Personaje_NoCompetidor(request.form)

    form.otros_alias.choices = models.select_query(f'SELECT id,nombre FROM Alias',False)
        
    
    form.universo.choices = models.select_query("SELECT id,nombre FROM Universo",False)

    form.profesion.choices = models.select_query("SELECT id,nombre FROM Profesion",False)
    
    form.parientes.choices = models.select_query("SELECT id,nombre_real FROM Personaje_Competidor",False)
    form.parientes.choices += models.select_query("SELECT id,nombre_real FROM Personaje_NoCompetidor",False)

       
    form.enemigos.choices  = models.select_query("SELECT id,nombre_real FROM Personaje_Competidor",False)
    form.enemigos.choices   += models.select_query("SELECT id,nombre_real FROM Personaje_NoCompetidor",False)

      
    form.aliados.choices  = models.select_query("SELECT id,nombre_real FROM Personaje_Competidor",False)
    form.aliados.choices   += models.select_query("SELECT id,nombre_real FROM Personaje_NoCompetidor",False)

    form.poderes.choices = models.select_query("SELECT id,nombre FROM Poder",False)
       
    form.parafernalia.choices = models.select_query("SELECT id,nombre FROM Parafernalia",False)

    
    if request.method == 'POST':
        if key=='competidores':
            nombre_original = form.nombre_original.data
            nombre_real = form.nombre_real.data
            apellido_real = form.apellido_real.data
            otros_alias = form.otros_alias.data
            biografia = form.biografia.data
            identidad = form.identidad.data
            moralidad = form.moralidad.data
            altura1 =  form.altura1.data
            altura2 =  form.altura2.data
            peso1 = form.peso1.data
            peso2 = form.peso2.data
            estado_civil = form.estado_civil.data
            genero = form.genero.data
            color_ojos = form.color_ojos.data
            color_pelo = form.color_pelo.data
            universo = form.universo.data
            profesion = form.profesion.data
            parientes = form.parientes.data
            aliados = form.aliados.data
            enemigos = form.enemigos.data
            afiliacion = form.afiliacion.data
            poderes = form.poderes.data
            parafernalia = form.parafernalia.data
           
            flash(f'Se ha registrado un personaje competidor ({nombre_real})')
            return redirect(url_for('personajes',key=key))
        
    else:
       
       
       
        return render_template('form_personajes.html',form=form)
        
        






