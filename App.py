from flask import Flask, render_template, request, flash, redirect, url_for
import pymysql
from datetime import datetime

app = Flask(__name__)
app.secret_key = 'bestteam'



def connect():
    return pymysql.connect(
        host='localhost',
        password='',
        user='root',
        db='farmacia',
        port=3306
    )


@app.route('/login', methods=['GET', 'POST'])
def ingresar_cliente():
    connection = connect()
    cursor = connection.cursor()

    if request.method == 'POST':
        correo = request.form['email']
        contrasena = request.form['contrasena']

        query = "SELECT * FROM Cliente WHERE Correo = %s AND Contrasena = %s"
        values = (correo, contrasena)
        cursor.execute(query, values)

        result = cursor.fetchone()

        cursor.close()
        connection.close()

        if result:
            # Iniciar sesión exitosa
            flash("Inicio de sesión exitoso", "success")
            return redirect('/menu')
        else:
            # Credenciales incorrectas
            flash("Correo o contraseña incorrectos", "error")
            return redirect('/login')

    return render_template('login.html')


@app.route('/registro', methods=['GET', 'POST'])
def registrar_cliente():
    connection = connect()
    cursor = connection.cursor()
    if request.method == 'POST':
        Nombres = request.form['nombres']
        Direccion = request.form['direccion']
        Telefono = request.form['telefono']
        Correo = request.form['email']
        Contrasena = request.form['contrasena']

        # Aquí puedes agregar patrones para verificar la veracidad de los datos ingresados

        # Insertar el nuevo usuario en la tabla Cliente
        query = "INSERT INTO Cliente (Nombre, Direccion, Telefono, Correo, Contrasena) VALUES (%s, %s, %s, %s, %s)"
        values = (Nombres, Direccion, Telefono, Correo, Contrasena)
        cursor.execute(query, values)

        connection.commit()
        cursor.close()
        connection.close()

        return redirect('/login')
    return render_template('registro.html')


@app.route('/menu')
def mostrar_menu():
    conn = connect()
    cursor = conn.cursor()

    # Obtener la lista de sucursales
    query = "SELECT * FROM Sucursal"
    cursor.execute(query)
    sucursales = cursor.fetchall()

    # Cerrar el cursor y la conexión a la base de datos
    cursor.close()
    conn.close()

    return render_template('menu.html', sucursales=sucursales)


@app.route('/producto', methods=['GET'])
def mostrar_productos():
    conn = connect()
    cursor = conn.cursor()
    id_sucursal = request.args.get('IdSucursal')  # Obtener el ID de la sucursal seleccionada desde la URL

    # Ejecutar la consulta para obtener los productos de la sucursal seleccionada
    query = "SELECT p.Nombre, p.Descripcion, p.Precio FROM Producto p INNER JOIN Inventario i ON p.IdProducto = i.IdProducto WHERE i.IdSucursal = %s";
    cursor.execute(query, (id_sucursal,))

    # Obtener los resultados de la consulta
    productos = cursor.fetchall()

    # Cerrar el cursor y la conexión a la base de datos
    cursor.close()
    conn.close()

    # Pasar los productos a la plantilla de productos para mostrarlos en la página
    return render_template('producto.html', productos=productos, id_sucursal=id_sucursal)


@app.route('/factura', methods=['GET', 'POST'])
def mostrar_factura():
    # Obtener los datos del formulario
    cliente = request.form.get('cliente')
    fecha = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    productos = []

    # Recorrer los productos seleccionados del formulario
    for i in range(1, 6):
        producto_id = request.form.get('producto{}'.format(i))
        cantidad = int(request.form.get('cantidad{}'.format(i)))
        precio = float(request.form.get('precio{}'.format(i)))

        # Calcular subtotal y total
        subtotal = cantidad * precio
        impuesto = subtotal * 0.13
        total = subtotal + impuesto

        # Agregar producto a la lista de productos
        producto = {
            'nombre': producto_id,
            'cantidad': cantidad,
            'impuesto': impuesto,
            'subtotal': subtotal,
            'total': total
        }
        productos.append(producto)

    # Calcular el total de la factura
    total_factura = sum([producto['total'] for producto in productos])

    # Pasar los datos a la plantilla de factura para mostrarlos
    return render_template('factura.html', cliente=cliente, fecha=fecha, productos=productos, total=total_factura)


if __name__ == '__main__':
    app.run(port=3000, debug=True)
