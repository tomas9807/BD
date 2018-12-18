from . import app
from flask import render_template,redirect,flash,request,jsonify,json,url_for
from . import models
from pprint import pprint
from . import forms
import os
import random,string
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

    form.afiliaciones.choices = models.select_query("SELECT id,nombre FROM Afiliacion",False)
    colores = models.select_query("SELECT id,nombre FROM Color",False)
    form.color_ojos.choices = colores
    form.color_pelo.choices = colores
    
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
            afiliaciones = form.afiliaciones.data
            moralidades =  ('heroe','antiheroe','villano')
            models.insert_query('Personaje_Competidor',
            nombre_original=nombre_original,
            nombre_real=nombre_real,
            apellido_real = apellido_real,
            biografia=biografia,
            identidad= 'publica' if identidad==0 else 'anonima',
            moralidad=moralidades[int(moralidad)],
            altura=altura1,
            altura_opcional=altura2,
            peso=peso1,
            peso_opcional=peso2,
            estado_civil='casado' if estado_civil==0 else 'soltero',
            genero = 'M' if genero==0 else 'F',
            color_ojos_id = color_ojos,
            color_pelo_id = color_pelo,
            id_universo = universo
            )
            id_competidor = models.select_query('SELECT MAX(id) FROM Personaje_Competidor',False)[0][0]
            for al1,al2 in zip(form.otros_alias.choices,otros_alias):
                if int(al1[0])==int(al2[0]):
                    models.insert_query(
                        'Alias',
                        id_competidor=id_competidor,
                        nombre=al2[1]
                    )
            for prof in profesion:
                models.insert_query(
                    'Profesion_Competidor',
                    id_competidor=id_competidor,
                    id_profesion=prof
                )
            for poder in poderes:
                models.insert_query(
                    'Poder_Competidor',
                    id_competidor=id_competidor,
                    id_poder=poder
                )
            for para in parafernalia:
                models.insert_query(
                    'Parafernalia_Competidor',
                    id_competidor=id_competidor,
                    id_parafernalia=para
                )
            
            for afi in afiliaciones:
                afiliacion_base = models.select_query(f""" 
            SELECT id FROM Base_Afiliacion  
            WHERE id_afiliacion={afi}
            """)[0]
                models.insert_query(
                    'Afiliacion_Competidor',
                    id_competidor=id_competidor,
                    id_base_afiliacion=afiliacion_base['id']
                )

        
            flash(f'Se ha registrado un personaje competidor ({nombre_real})')
            return redirect(url_for('personajes',key=key))
        
    else:
       
       
       
        return render_template('form_personajes.html',form=form)
        
        
@app.route('/evento',methods=['POST','GET'])
def evento():
    form = forms.EventoForm(request.form)

    data = models.select_query(f""" 
        SELECT p.id,p.nombre_original FROM Inscrito i,Personaje_Competidor p
        WHERE p.id = (SELECT a.id FROM
        Afiliacion_Personaje a 
        WHERE 
        a.id_competidor=p.id
        )
        GROUP BY i.grupo_id
        )
        """,False)
    form.grupos_competidor.choices = data
    if request.method=='POST' and form.validate():
        pass
    else:
        
        return render_template('form_evento.html',form=form)



def id_generator_str(size=6, chars=string.ascii_uppercase + string.digits):
    str =  ''.join(random.choice(chars) for _ in range(size))
    return str


@app.route('/grupo',methods=['POST','GET'])
def grupo():
    form = forms.GrupoForm(request.form)
    form.competidor1.choices = models.select_query("SELECT id,nombre_original FROM Personaje_Competidor",False)
    if request.method=='POST':
        competidor1_id = form.competidor1.data
        competidor2_id = form.competidor2.data
        competidor3_id = form.competidor3.data
        grupo_uid = id_generator_str(size=15)

        print('aqui:',grupo_uid)
        id_afi_per1 = models.select_query(f""" 
        SELECT id FROM
        Afiliacion_Personaje WHERE
        id_competidor={competidor1_id}
        """)[0]['id']
        id_afi_per2 = models.select_query(f""" 
        SELECT id FROM
        Afiliacion_Personaje WHERE
        id_competidor={competidor2_id}
        """)[0]['id']
        id_afi_per3 = models.select_query(f""" 
        SELECT id FROM
        Afiliacion_Personaje WHERE
        id_competidor={competidor3_id}
        """)[0]['id']


        models.insert_query(
            'Inscrito',
            grupo_id=grupo_uid,
            id_afiliacion_personaje=id_afi_per1
        )
        models.insert_query(
            'Inscrito',
            grupo_id=grupo_uid,
            id_afiliacion_personaje=id_afi_per2
        )
        models.insert_query(
            'Inscrito',
            grupo_id=grupo_uid,
            id_afiliacion_personaje=id_afi_per3
        )
        flash('grupo creado')
        return redirect(url_for('grupo'))
        
    else:
        return render_template('form_grupo.html',form=form)

    
@app.route('/avoid/list_competidores/',methods=['POST'])
def list_competidores_avoid_pk():
    json_received = request.json

    if len(json_received.keys())==1:
        pk = json_received['id']

        id_base = models.select_query(f""" 
        SELECT id_base_afiliacion 
        FROM Afiliacion_Personaje
        WHERE id_competidor={pk}
        """)
        data = []
        for idb in id_base:
            id_base = idb['id_base_afiliacion']
            ids_afi = models.select_query(f"""
            SELECT id_afiliacion 
            FROM Base_Afiliacion
            WHERE id_base={id_base}
            """,False
            )
      
            data += models.select_query(f""" 
            SELECT p.id,CONCAT(nombre_original,' (', afi.nombre,')') as nombre_original
            FROM Personaje_Competidor p,Afiliacion afi
            WHERE p.id <> {pk}
            AND afi.id = {ids_afi[0][0]}
            """)
    else:
        pk1 = json_received['id1']
        pk2 = json_received['id2']

        id_base = models.select_query(f""" 
        SELECT id_base_afiliacion 
        FROM Afiliacion_Personaje
        WHERE id_competidor={pk2}
        """)
        data = []
        for idb in id_base:
            id_base = idb['id_base_afiliacion']
            ids_afi = models.select_query(f"""
            SELECT id_afiliacion 
            FROM Base_Afiliacion
            WHERE id_base={id_base}
            """,False
            )
      
            data += models.select_query(f""" 
        SELECT p.id,CONCAT(nombre_original,' (', afi.nombre,')') as nombre_original
        FROM Personaje_Competidor p,Afiliacion afi
        WHERE p.id <> {pk1} 
        AND p.id <> {pk2}
        AND afi.id = {ids_afi[0][0]}
        """)
        

    return jsonify(data)
    




