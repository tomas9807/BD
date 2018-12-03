from mysql import connector
from mysql.connector import errors
from contextlib import closing
from . import app
import subprocess
from subprocess import PIPE
import os
from contextlib import contextmanager
# def setup_marvelBD():

#     scripts_dir = os.path.abspath(os.path.join(app.config['rootdir'],'scripts'))
#     scripts_paths = sorted([os.path.abspath(os.path.join(scripts_dir,script)) for script in os.listdir(scripts_dir) ])

#     for script in scripts_paths:
#         if 'root' in script:
#             user = 'root'
#         else: user = app.config['user_mysqlDB']
#         process = subprocess.Popen(['mysql','-u',user],stdout=PIPE,stdin=PIPE)
#         stderr = process.communicate(str('source ' + script).encode())[1]
#         if (stderr):
#             raise connector.Error(stderr)
#         else: process.kill()
#     print('done creating marvel database')



def get_connection_marvelBD():
    try:
        user = app.config['user_mysqlDB']
        db_name = app.config['database_name']
        conn = connector.connect(user=user,
                                database=db_name)
    except connector.Error as e:
        print(e)
    else:
        return conn


    

def select_query(query):
    with closing(get_connection_marvelBD()) as conn:
        try:
            
            cur = conn.cursor()
            cur.execute(query)
            data = cur.fetchall()
            
            return data
        except connector.Error as e:
            raise(e)
        finally:
            cur.close()
        

def insert_query(table,**kwargs):
    with closing(get_connection_marvelBD()) as conn:
        try:
            cur = conn.cursor()
           
            cur.execute(f"""
            insert into {table} {tuple(kwargs.keys())} 
            values ({','.join('%s' for var in kwargs)})
            """.replace(r"'",''),params=tuple(kwargs.values()))
            
        except connector.Error as e:
            conn.rollback()
            raise(e)
        else:
            conn.commit()
        finally:
            cur.close()

            





