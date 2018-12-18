from flask_wtf import FlaskForm
from wtforms import StringField,IntegerField,TextAreaField,DateTimeField,BooleanField,SelectField,SelectMultipleField,SubmitField,RadioField
from wtforms.validators import DataRequired,Length
class PersonajeCompetidor(FlaskForm):
    nombre_original = StringField('Nombre Original: ',validators=[DataRequired(),Length(max=100)])
    nombre_real = StringField('Nombre Real: ',validators=[DataRequired(),Length(max=100)])
    apellido_real = StringField('Apellido Real: ',validators=[DataRequired(),Length(max=100)])
    otros_alias = SelectMultipleField('Otros alias: ')
    biografia = TextAreaField('Biografia: ')
    identidad = RadioField('Identidad: ',choices=[(0,'publica'),(1,'anonima')])
    moralidad = RadioField('Moralidad: ',choices=[(0,'heroe'),(1,'villano'),(2,'antiheroe')])
    altura1 =  IntegerField('Altura en mts (estado normal): ',validators=[DataRequired(),Length(max=10000),])
    altura2 =  IntegerField('Altura en mts (estado alterado): ',validators=[Length(max=10000),])
    peso1 = IntegerField('Peso en Kgs (estado normal): ',validators=[DataRequired(),Length(max=10000),])
    peso2 = IntegerField('Peso en Kgs (estado alterado): ',validators=[Length(max=10000),])
    estado_civil = RadioField('Estado Civil: ',choices=[(0,'casado'),(1,'soltero')])
    genero = RadioField('Estado Civil: ',choices=[(0,'M'),(1,'F')])
    color_ojos = SelectField('Color de Ojos: ',choices=[])
    color_pelo = SelectField('Color de Pelo: ',choices=[])
    universo = SelectField('Universo: ',choices=[])
    profesion = SelectMultipleField('Profesion: ',choices=[])
    parientes = SelectMultipleField('Parientes Conocidos: ',choices=[])
    aliados = SelectMultipleField('Aliados: ',choices=[])
    enemigos = SelectMultipleField('Enemigos: ',choices=[])
    afiliacion = SelectMultipleField('Grupos de Afiliacion: ',choices=[])
    poderes = SelectMultipleField('Poderes Conocidos: ',validators=[DataRequired(),],choices=[])
    parafernalia = SelectMultipleField('Parafernalia: ',choices=[])
    afiliaciones = SelectMultipleField('Afiliaciones: ',choices=[])

    

class PersonajeNoCompetidor(FlaskForm):
    nombre_original = StringField('Nombre Original: ',validators=[DataRequired(),Length(max=100)])
    nombre_real = StringField('Nombre Real: ',validators=[DataRequired(),Length(max=100)])
    apellido_real = StringField('Apellido Real: ',validators=[DataRequired(),Length(max=100)])
    fallecido = BooleanField('Fallecido: ')
    genero = RadioField('Estado Civil: ',choices=[(1,'M'),(2,'F')])
    universo = SelectField('Universo: ',choices=[])

class EventoForm(FlaskForm):
    grupos_competidor = SelectMultipleField('Seleccione Grupos A competir (minimo 2): ',choices=[])

class GrupoForm(FlaskForm):
    competidor1 = SelectField('Competidor 1: ',validators=[DataRequired(),],choices=[])
    competidor2 =SelectField('Competidor 2: ',validators=[DataRequired(),],choices=[])
    competidor3 = SelectField('Competidor 3: ',validators=[DataRequired(),],choices=[])
