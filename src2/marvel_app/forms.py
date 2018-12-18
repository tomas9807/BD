from flask_wtf import FlaskForm
from wtforms import StringField,IntegerField,TextAreaField,DateTimeField,BooleanField,SelectField,SelectMultipleField,SubmitField,RadioField
from wtforms.validators import DataRequired,Length
class PersonajeCompetidor(FlaskForm):
    nombre_original = StringField('Nombre Original: ',validators=[DataRequired(),Length(max=100)])
    nombre_real = StringField('Nombre Real: ',validators=[DataRequired(),Length(max=100)])
    apellido_real = StringField('Apellido Real: ',validators=[DataRequired(),Length(max=100)])
    otros_alias = SelectMultipleField('Otros alias: ')
    biografia = TextAreaField('Biografia: ')
    identidad = RadioField('Identidad: ',choices=[(1,'publica'),(2,'anonima')])
    moralidad = RadioField('Moralidad: ',choices=[(1,'heroe'),(2,'villano'),(3,'antiheroe')])
    altura1 =  IntegerField('Altura en mts (estado normal): ',validators=[DataRequired(),Length(max=10000),])
    altura2 =  IntegerField('Altura en mts (estado alterado): ',validators=[Length(max=10000),])
    peso1 = IntegerField('Peso en Kgs (estado normal): ',validators=[DataRequired(),Length(max=10000),])
    peso2 = IntegerField('Peso en Kgs (estado alterado): ',validators=[Length(max=10000),])
    estado_civil = RadioField('Estado Civil: ',choices=[(1,'casado'),(2,'soltero')])
    genero = RadioField('Estado Civil: ',choices=[(1,'M'),(2,'F')])
    color_ojos = SelectField('Color de Ojos: ',choices=[],render_kw={"class":"custom-select"})
    color_pelo = SelectField('Color de Pelo: ',choices=[],render_kw={"class":"custom-select"})
    universo = SelectField('Universo: ',choices=[],render_kw={"class":"custom-select"})
    profesion = SelectMultipleField('Profesion: ',choices=[])
    parientes = SelectMultipleField('Parientes Conocidos: ',choices=[],render_kw={"class":"custom-select"})
    aliados = SelectMultipleField('Aliados: ',choices=[],render_kw={"class":"custom-select"})
    enemigos = SelectMultipleField('Enemigos: ',choices=[],render_kw={"class":"custom-select"})
    afiliacion = SelectMultipleField('Grupos de Afiliacion: ',choices=[],render_kw={"class":"custom-select"})
    poderes = SelectMultipleField('Poderes Conocidos: ',validators=[DataRequired(),],choices=[],render_kw={"class":"custom-select"})
    parafernalia = SelectMultipleField('Parafernalia: ',choices=[],render_kw={"class":"custom-select"})
    

class PersonajeNoCompetidor(FlaskForm):
    nombre_original = StringField('Nombre Original: ',validators=[DataRequired(),Length(max=100)])
    nombre_real = StringField('Nombre Real: ',validators=[DataRequired(),Length(max=100)])
    apellido_real = StringField('Apellido Real: ',validators=[DataRequired(),Length(max=100)])
    fallecido = BooleanField('Fallecido: ')
    genero = RadioField('Estado Civil: ',choices=[(1,'M'),(2,'F')])
    universo = SelectField('Universo: ',choices=[],render_kw={"class":"custom-select"})

