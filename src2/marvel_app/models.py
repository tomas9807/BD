from mysql import connector
from mysql.connector import errors
from contextlib import closing
from . import app
import subprocess
from subprocess import PIPE
import os
from contextlib import contextmanager




def get_connection_marvelBD():
    try:
        user = 'tomas'
        db_name = 'marvel'
        conn = connector.connect(user=user,
                                database=db_name)
    except connector.Error as e:
        print(e)
    else:
        return conn


    

def select_query(query,dictionary=True):
    with closing(get_connection_marvelBD()) as conn:
        try:
            
            cur = conn.cursor(dictionary=dictionary)
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
            print(kwargs.values())
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

            





