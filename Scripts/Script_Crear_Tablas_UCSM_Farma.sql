CREATE DATABASE farmacia;
USE farmacia;
-- Crear tabla Cliente
CREATE TABLE Cliente (
  IdCliente INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(255) NOT NULL,
  Direccion VARCHAR(255) NOT NULL,
  Telefono VARCHAR(15) NOT NULL,
  Correo VARCHAR(255) NOT NULL,
  Contrasena VARCHAR(255) NOT NULL,
  PRIMARY KEY (IdCliente)
);

-- Crear tabla Sucursal
CREATE TABLE Sucursal (
  IdSucursal INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(255) NOT NULL,
  Direccion VARCHAR(255) NOT NULL,
  Ubicacion VARCHAR(255) NOT NULL,
  PRIMARY KEY (IdSucursal)
);

-- Crear tabla Producto
CREATE TABLE Producto (
  IdProducto INT NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(255) NOT NULL,
  Categoria VARCHAR(255) NOT NULL,
  Descripcion VARCHAR(255) NOT NULL,
  Cantidad INT NOT NULL,
  Precio DECIMAL(5, 2) NOT NULL,
  PRIMARY KEY (IdProducto)
);

-- Crear tabla Inventario
CREATE TABLE Inventario (
  IdInventario INT NOT NULL AUTO_INCREMENT,
  IdProducto INT NOT NULL,
  IdSucursal INT NOT NULL,
  PRIMARY KEY (IdInventario),
  FOREIGN KEY (IdProducto) REFERENCES Producto(IdProducto),
  FOREIGN KEY (IdSucursal) REFERENCES Sucursal(IdSucursal)
);

-- Crear tabla Factura
CREATE TABLE Factura (
  IdFactura INT NOT NULL AUTO_INCREMENT,
  IdCliente INT NOT NULL,
  IdProducto INT NOT NULL,
  Fecha DATE NOT NULL,
  Subtotal DECIMAL(7, 2) NOT NULL,
  Total DECIMAL(7, 2) NOT NULL,
  Impuesto DECIMAL(5, 2) NOT NULL,
  PRIMARY KEY (IdFactura),
  FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
  FOREIGN KEY (IdProducto) REFERENCES Producto(IdProducto)
);

ALTER TABLE `farmacia`.`Cliente` ;
ALTER TABLE `farmacia`.`Cliente` ALTER INDEX `Correo_UNIQUE` VISIBLE;