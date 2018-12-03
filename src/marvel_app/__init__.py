from flask import Flask
from flask_bootstrap import Bootstrap
import os
app = Flask(__name__)
Bootstrap(app)
app.config['user_mysqlDB'] = 'tomas'
app.config['database_name'] = 'marvel'
app.config['rootdir'] = os.path.abspath(os.path.dirname(os.path.dirname(__name__)))
app.config['SECRET_KEY'] = os.urandom(5)
from . import views
from . import models


# models.setup_marvelBD()