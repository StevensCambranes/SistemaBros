CREATE DATABASE Bros;

USE Bros;

CREATE TABLE Cliente (
	idCliente INT NOT NULL PRIMARY KEY,
	Nombre NVARCHAR (50),
	Apellido NVARCHAR (50),
	idNumero INT,
	idPago INT
);
GO

CREATE TABLE Pedido (
	idPedido INT NOT NULL PRIMARY KEY,
	fecha_hora DATETIME,
	idDetalles INT
);
GO

CREATE TABLE DetallesPedido (
	idDetalles INT NOT NULL PRIMARY KEY,
	Cantidad INT,
	PrecioUnitario DECIMAL (1,2), -- precio por onza o precio por unidad de medida
	idProducto INT
);
GO

CREATE TABLE Producto (
	idProducto INT NOT NULL PRIMARY KEY,
	Nombre NVARCHAR (50),
	Descripcion NVARCHAR (255),
	Precio DECIMAL (3,2),
	Categoria INT,
	Disponibilidad INT -- 1 Si, 0 No
);
GO

CREATE TABLE Inventario (
	idInventario INT NOT NULL PRIMARY KEY,
	Nombre NVARCHAR (50),
	Stock INT,
	UnidadMedida INT , -- 1.kg, 2.gr, 3.onz, 4.paquete, 5.etc
	FechaVencimiento DATE,
	idProveedor INT,
);
GO
-------------------------------------------------------------------------------
CREATE TABLE Proveedor (
	idProveedor INT NOT NULL PRIMARY KEY,,
	Nombre NVARCHAR,
	cantidad INT,
	contacto INT,
	Direccion NVARCHAR,
	Descripcion NVARCHAR,
	PRIMARY KEY(idProveedor)
);
GO

CREATE TABLE Pagos (
	idPagos INT NOT NULL PRIMARY KEY,
	Fecha DATE,
	Monto INT,
	MetodoPago INT,
	idPedido INT,
	PRIMARY KEY(idPagos)
);
GO

CREATE TABLE Reservas (
	idReservas INT NOT NULL PRIMARY KEY,,
	Fecha DATE,
	Hora TIME,
	idPedido INT,
	idMesas INT,
	Anticipo INT,
	PRIMARY KEY(idReservas)
);
GO

CREATE TABLE Telefono (
	idTelefono INT NOT NULL PRIMARY KEY,,
	Tel1 NVARCHAR,
	Tel2 NVARCHAR,
	idCliente INT,
	PRIMARY KEY(idTelefono)
);
GO

CREATE TABLE Merma (
	idMerma INT NOT NULL PRIMARY KEY,
	TipoPerdida NVARCHAR,
	ValorPerdida INT,
	idIngrediente INT,
	PRIMARY KEY(idMerma)
);
GO

CREATE TABLE Promociones (
	idPromociones INT NOT NULL PRIMARY KEY,
	TipoPromocion NVARCHAR,
	Precio NVARCHAR,
	idMenu INT,
	idPedido INT,
	PRIMARY KEY(idPromociones)
);
GO

CREATE TABLE Propinas (
	idPropina INT NOT NULL PRIMARY KEY,
	Monto INT,
	tipoPropina INT,
	idPago INT,
	PRIMARY KEY(idPropina)
);
GO

CREATE TABLE Fechas (
	idFecha INT NOT NULL PRIMARY KEY,
	FechaIngreso DATE,
	FechaVencimiento DATE,
	PRIMARY KEY(idFecha)
);
GO