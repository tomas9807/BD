from . import app
from flask import render_template,redirect,flash,request,jsonify,json
from .forms import NewPersonaje
from . import models

tipos_geograficos = ('pais','estado','ciudad','zona')
def get_list_lugares(tipo_lugar,id_padre=None):
    return models.select_query(f"""
                    select lugar.id,lugar.nombre from Lugar as lugar
                    where lugar.{'tipo_geografico' if tipo_lugar in tipos_geograficos else 'tipo'}='{tipo_lugar}'
                    {f'and lugar.id_padre={id_padre}' if id_padre else ''}
                    """ 
                    )

@app.route('/')
def home():
    title = 'home'
    return render_template('home.html',title=title)

@app.route('/nuevo_evento')
def nuevo_evento():
    title = 'nuevo evento'
    return render_template('nuevo_evento.html',title=title)

@app.route('/personajes')
@app.route('/personajes/',methods=['POST','GET'])
@app.route('/personajes/<data_type>/',methods=['POST','GET'])
@app.route('/personajes/<data_type>/<pk>',methods=['POST','GET'])

def personajes(keyword=None,data_type=None,pk=None):
    title = 'Personajes & Competidores' 
    if request.method=='GET':
        
        if data_type:
            if data_type=='profesion':
                new_data = models.select_query("""
                select id,nombre from Profesion group by nombre
                """
                if not pk else 
                """select id,nombre from Profesion where id={pk} group by nombre""")
                return jsonify(new_data)

        else:
                title += '| nuevo personaje'
                form = NewPersonaje()
                form.profesion.choices = models.select_query('select id,nombre from Profesion')
                colores = models.select_query('select id,nombre from Color')
                form.color_ojos.choices = colores
                form.color_pelo.choices = colores
                universos = get_list_lugares('universo')
                form.lugar_nacimiento_universo.choices = universos
                if universos:
                    planetas = get_list_lugares('planeta',universos[0][0])
                    if planetas:
                        form.lugar_nacimiento_planeta.choices = planetas
                        paises = get_list_lugares('pais',planetas[0][0])
                        if paises:
                            form.lugar_nacimiento_pais.choices = paises
                            estados = get_list_lugares('estado',paises[0][0])
                            if estados:
                                form.lugar_nacimiento_estado.choices = estados
                                ciudades = get_list_lugares('ciudad',estados[0][0])
                                if ciudades:
                                    form.lugar_nacimiento_ciudad.choices = ciudades
                                    zonas = get_list_lugares('zona',ciudades[0][0])
                                    if zonas:
                                        form.lugar_nacimiento_zona_especifica.choices = zonas



                    
               
                return render_template('new.html',title=title,form=form,type='personaje')

    
                
    elif request.method=='POST': 
        if data_type:
            data = request.json
            print('jejejejeje :',data_type)
            print('data received:', data)
            if data_type=='profesion':
                nombre = data.get('nombre')
                descripcion = data.get('descripcion')
                models.insert_query(table='Profesion',nombre=nombre,descripcion=descripcion)
                return 'success'


    return render_template('personajes.html',title=title)

    
@app.route('/lugares/get/<tipo_hijo>/<id_padre>',methods=['POST','GET'])
def lugares(tipo_hijo,id_padre):
    data = get_list_lugares(tipo_hijo,id_padre)
    return jsonify(data)





    



