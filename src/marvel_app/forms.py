from flask_wtf import FlaskForm
from wtforms import StringField,IntegerField,TextAreaField,DateTimeField,BooleanField,SelectField,SelectMultipleField,SubmitField,RadioField
from wtforms.validators import DataRequired,Length
class NewPersonaje(FlaskForm):

    nombre_real = StringField('Nombre Real',validators=[DataRequired(),Length(max=100)],render_kw={"class":"form-control"})
    fallecido = BooleanField('El personaje ha fallecido?')


    nombre_original = StringField('Nombre Original',validators=[DataRequired(),Length(max=100)],render_kw={"class":"form-control"})
    biografia = TextAreaField('Biografia',render_kw={"class":"form-control"})
   

    otros_alias = TextAreaField('Otros alias',render_kw={"class":"form-control"})
    profesion = SelectField('Profesion',choices=[])
    lugar_nacimiento_universo = SelectField('universo',validators=[DataRequired(),],choices=[],render_kw={"class":"custom-select"})
    lugar_nacimiento_planeta = SelectField('planeta',validators=[DataRequired(),],choices=[],render_kw={"class":"custom-select"})
    lugar_nacimiento_pais = SelectField('pais',validators=[DataRequired(),],choices=[],render_kw={"class":"custom-select"})
    lugar_nacimiento_estado = SelectField('estado',validators=[DataRequired(),],choices=[],render_kw={"class":"custom-select"})
    lugar_nacimiento_ciudad = SelectField('ciudad',validators=[DataRequired(),],choices=[],render_kw={"class":"custom-select"})
    lugar_nacimiento_zona_especifica = SelectField('zona especifica',validators=[DataRequired(),],choices=[],render_kw={"class":"custom-select"})
    

    parientes = SelectMultipleField('Parientes Conocidos',choices=[],render_kw={"class":"custom-select"})
    aliados = SelectMultipleField('Aliados',choices=[],render_kw={"class":"custom-select"})
    enemigos = SelectMultipleField('Enemigos',choices=[],render_kw={"class":"custom-select"})
    afiliacion = SelectMultipleField('Grupos de Afiliacion (actuales)',choices=[],render_kw={"class":"custom-select"})
    peso1 = StringField('Peso (estado normal)',validators=[DataRequired(),Length(max=100),],render_kw={"class":"form-control"})
    peso2 = StringField('Peso (estado alterado)',validators=[Length(max=100),],render_kw={"class":"form-control"})
    altura1 = StringField('Altura (estado normal)',validators=[DataRequired(),Length(max=100),],render_kw={"class":"form-control"})
    altura2 = StringField('Altura (estado alterado)',validators=[Length(max=100),],render_kw={"class":"form-control"})
    color_ojos = SelectField('Color de Ojos',choices=[],render_kw={"class":"custom-select"})
    color_pelo = SelectField('Color de Pelo',choices=[],render_kw={"class":"custom-select"})
    poderes = SelectMultipleField('Poderes Conocidos',validators=[DataRequired(),],choices=[],render_kw={"class":"custom-select"})
    parafernalia = SelectMultipleField('Parafernalia',choices=[],render_kw={"class":"custom-select"})

