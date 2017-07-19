﻿CREATE TABLE Producto
(
	ProductoId INT PRIMARY KEY IDENTITY(1,1),
	Denominacion VARCHAR(255) NOT NULL,
	Descripcion VARCHAR(MAX) NOT NULL,
	Precio DECIMAL(16,2) NOT NULL DEFAULT 0,
	Existencias INT NOT NULL DEFAULT 0,
	Activo BIT NOT NULL DEFAULT 0
)
CREATE TABLE ProductoImagen
(
	ProductoImagenId INT PRIMARY KEY IDENTITY(1,1),
	ProductoId INT REFERENCES Producto(ProductoId) NOT NULL,
	Imagen VARCHAR(255) NOT NULL ,
	Titulo VARCHAR(255),
	Descripcion VARCHAR(MAX) 
)
CREATE TABLE Cliente
(
	ClienteId INT PRIMARY KEY IDENTITY(1,1),
	Nombres VARCHAR(255) NOT NULL,
	Apellidos VARCHAR(255) NOT NULL,
	Usuario VARCHAR(255) NOT NULL,
	Clave VARCHAR(255) NOT NULL,
	Correo VARCHAR(255) ,
	Celular VARCHAR(255) ,
	Direccion VARCHAR(MAX) 
)
CREATE TABLE Pedido
(
	PedidoId INT PRIMARY KEY IDENTITY(1,1),
	ClienteId INT REFERENCES Cliente(ClienteId) NOT NULL,
	Fecha DATETIME NOT NULL,
	Estado CHAR(3) NOT NULL
)
CREATE TABLE PedidoDetalle
(
	PedidoDetalle INT PRIMARY KEY IDENTITY(1,1),
	PedidoId INT REFERENCES Pedido(PedidoId) NOT NULL,
	ProductoId INT REFERENCES Producto(ProductoId) NOT NULL,
	Cantidad int NOT NULL
)
