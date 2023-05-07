from flask import Flask, render_template, request, flash, redirect, url_for
import pymysql

app = Flask(__name__)


def connect():
    return pymysql.connect(
        host='localhost',
        password='',
        user='root',
        db='farmacia',
        port=3306
    )


@app.route('/login')
def index():
    return render_template('login.html')


@app.route('/registro')
def registrar():
    return render_template('registro.html')


@app.route('/menu')
def menu():
    return render_template('menu.html')


@app.route('/producto')
def productos():
    return render_template('producto.html')


@app.route('/factura')
def factura():
    return render_template('factura.html')


if __name__ == '__main__':
    app.run(port=3000, debug=True)
