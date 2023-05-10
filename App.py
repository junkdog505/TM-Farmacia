from flask import Flask, render_template, request, flash, url_for, redirect
import pymysql, re
from datetime import datetime
from decimal import Decimal

app = Flask(__name__, static_url_path='/static')
app.secret_key = 'bestteam'


def connect():
    return pymysql.connect(
        host='localhost',
        password='',
        user='root',
        db='farmacia',
        port=3306
    )

@app.route('/')
def inicio():
    return render_template('inicio.html')

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

        # Verificar que el correo no exista en la tabla Cliente
        query = "SELECT Correo FROM Cliente WHERE Correo = %s"
        cursor.execute(query, (Correo,))
        correo_existente = cursor.fetchone()

        if correo_existente:
            flash('El correo electrónico ya se encuentra registrado.', 'error')
            return redirect(url_for('registrar_cliente'))
        if len(Contrasena) < 8:
            flash('La contraseña debe tener al menos 8 caracteres')
            return redirect('/registro')
        if not re.search(r'[A-Za-z]', Contrasena) or not re.search(r'[0-9]', Contrasena) or not re.search(
                r'[!@#$%^&*()_+]', Contrasena):
            flash('La contraseña debe contener letras, números y caracteres especiales')
            return redirect('/registro')

        # Insertar el nuevo usuario en la tabla Cliente
        query = "INSERT INTO Cliente (Nombre, Direccion, Telefono, Correo, Contrasena) VALUES (%s, %s, %s, %s, %s)"
        values = (Nombres, Direccion, Telefono, Correo, Contrasena)
        cursor.execute(query, values)

        connection.commit()
        cursor.close()
        connection.close()

        flash('Registro exitoso. Por favor inicia sesión.', 'success')
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

    # Obtener el nombre de la sucursal
    query_sucursal = "SELECT Ubicacion FROM Sucursal WHERE IdSucursal = %s"
    cursor.execute(query_sucursal, (id_sucursal,))
    nombre_sucursal = cursor.fetchone()[0]

    # Ejecutar la consulta para obtener los productos de la sucursal seleccionada
    query = "SELECT p.Nombre, p.Descripcion, p.Precio FROM Producto p INNER JOIN Inventario i ON p.IdProducto = " \
            "i.IdProducto WHERE i.IdSucursal = %s"
    cursor.execute(query, (id_sucursal,))

    # Obtener los resultados de la consulta
    productos = cursor.fetchall()

    # Cerrar el cursor y la conexión a la base de datos
    cursor.close()
    conn.close()

    # Pasar los productos y el nombre de la sucursal a la plantilla de productos para mostrarlos en la página
    return render_template('producto.html', productos=productos, nombre_sucursal=nombre_sucursal)


@app.route('/factura', methods=['GET', 'POST'])
def mostrar_factura():
    if request.method == 'POST':
        fecha_actual = datetime.now().strftime('%d/%m/%Y')
        hora_actual = datetime.now().strftime('%H:%M')
        conn = connect()
        cursor = conn.cursor()

        productos_seleccionados = []
        subtotal = 0  # Variable para almacenar el subtotal
        for key, value in request.form.items():
            if key.startswith('cantidad_'):
                producto_id = key.split('_')[1]
                cantidad = int(value)
                if cantidad > 0:
                    # Obtener los datos del producto desde la base de datos

                    query = "SELECT p.Nombre, p.Precio FROM Producto p WHERE p.IdProducto = %s"
                    cursor.execute(query, (producto_id,))
                    producto = cursor.fetchone()

                    # Calcular el importe del producto y agregarlo al subtotal
                    importe = Decimal(cantidad) * producto[1]
                    subtotal += importe

                    # Agregar el producto y la cantidad a la lista de productos seleccionados
                    productos_seleccionados.append({
                        'nombre': producto[0],
                        'cantidad': cantidad,
                        'precio_unitario': producto[1],
                        'total': float(importe)
                    })
        cursor.close()
        conn.close()
        # Calcular impuesto y total
        impuesto = subtotal * Decimal('0.18')
        total = subtotal + impuesto

        # Renderizar la plantilla factura.html y pasar los datos seleccionados
        return render_template('factura.html', productos_seleccionados=productos_seleccionados,
                               fecha_actual=fecha_actual, hora_actual=hora_actual,
                               subtotal=subtotal, impuesto=impuesto, total=total)


if __name__ == '__main__':
    app.run(port=3000, debug=True)
