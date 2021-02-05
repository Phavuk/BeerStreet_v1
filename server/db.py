from configparser import ConfigParser
from mysql.connector import MySQLConnection, Error
import mysql.connector

def read_db_config(filename='config.ini',section='mysql'):
    parser = ConfigParser()
    parser.read(filename)

    db= {}
    if parser.has_section(section):
        items = parser.items(section)
        for item in items:
            db[item[0]] = item[1]
    else:
        raise Exception('{0} not found in the {1} file'.format(section, filename))

    return db

def connect():
    db_config = read_db_config()
    conn = None
    try:
        print('connecting to database')
        conn = MySQLConnection(**db_config)

        if conn.is_connected():
            print('connection established.')
        else:
            print('connection failed.')

    except Error as error:
        print(error)

print(read_db_config())


