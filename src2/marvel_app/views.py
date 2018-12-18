from . import app
from flask import render_template,redirect,flash,request,jsonify,json
from . import models




@app.route('/')
def home():
    return render_template('home.html')



@app.route('/personajes/<key>/<pk>')
@app.route('/personajes/<key>/')
def personajes(key,pk=None):

    if key=='competidores': 
        keyword = 'Competidor'
    else : 
        keyword = 'NoCompetidor'
    if not pk:
        data = models.select_query(f"""
        SELECT p.id,p.nombre_original,p.nombre_real, p.apellido_real,
        u.nombre as universo
        FROM Personaje_{keyword} p , Universo u
        WHERE u.id = p.id_universo
        ORDER BY nombre_real
        """)
    else:
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
        p.peso,
        p.estado_civil,
        p.genero,
        c1.nombre as color_ojos,
        c2.nombre as color_pelo,
        u.nombre as universo,
        p.id_lugar_nacimiento
        FROM 
        Personaje_{keyword} p ,Universo u,Color c1,Color c2
        WHERE 
        p.id = {pk} AND
        u.id = p.id_universo AND 
        c1.id = p.color_ojos_id AND 
        c2.id = p.color_pelo_id 
        """)[0]
        if data['id_lugar_nacimiento']:
            data['lugar_nacimiento'] = models.select_query(f""" 
        with recursive Lugar (id,nombre,id_padre) as (
            select     id,
                        name,
                        parent_id
            from       products
            where      parent_id = 19
            union all
            select     p.id,
                        p.name,
                        p.parent_id
            from       products p
            inner join cte
                    on p.parent_id = cte.id
            )
            select * from cte;
            """)
    
    
    return render_template('list_personajes.html',data=data)
    







