from . import app
from flask import render_template,redirect,flash,request,jsonify,json
from .forms import NewPersonaje
from . import models

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
                form.lugar_nacimiento_universo.choices = models.select_query('select id,nombre from Lugar where tipo="universo" ')
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



    



