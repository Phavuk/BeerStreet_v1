import json

import cross as cross
import mysql.connector
from flask import Flask,jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)
cors = CORS(app, resources= {
    r"/": {
        "origins": "*"
    }
})

@app.route('/getbeers', methods=['GET', 'POST'])
def index():
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="beerstreet"
    )
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM tbeers")
    #myresult = mycursor.fetchall()
    myresult = mycursor.fetchall()
    response = json.dumps(myresult)
    for x in myresult:
        print(x)
    return jsonify(response)

@app.route('/order',methods=['GET','POST'])
def indexx():
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="beerstreet"
    )
    mycursor = mydb.cursor()
    mycursor.execute("SELECT Tbeers.id,Tbeers.name,Twall.beerId,Twall.beerPrice,Twall.timeStamp FROM Tbeers INNER JOIN TWall ON TWall.beerId = Tbeers.id;")
    myresult = mycursor.fetchall()
    for x in myresult:
        print(x)
    return jsonify(myresult)

@app.route('/orderrrr',methods=['GET','POST'])
def indeex():
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="beerstreet"
    )
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM tbeers")
    myresult = mycursor.fetchmany()


    for x in myresult:
        print(x)
    return jsonify (myresult)



