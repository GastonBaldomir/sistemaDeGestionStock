-- Crear la base de datos
CREATE DATABASE ControlStock;
GO

USE ControlStock;
GO

-- =========================================
-- TABLA: Categorías
-- =========================================
CREATE TABLE Categorias (
    id_categoria INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100) NOT NULL,
    descripcion NVARCHAR(200)
);
GO

-- =========================================
-- TABLA: Productos
-- =========================================
CREATE TABLE Productos (
    id_producto INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100) NOT NULL,
    descripcion NVARCHAR(200),
    precio DECIMAL(10,2),
    stock INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);
GO

-- =========================================
-- TABLA: Proveedores
-- =========================================
CREATE TABLE Proveedores (
    id_proveedor INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100) NOT NULL,
    telefono NVARCHAR(50),
    email NVARCHAR(100)
);
GO

-- =========================================
-- TABLA: Usuarios
-- =========================================
CREATE TABLE Usuarios (
    id_usuario INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(100) NOT NULL,
    rol NVARCHAR(50)
);
GO

-- =========================================
-- TABLA: ProductoProveedor
-- (Relación muchos a muchos entre Productos y Proveedores)
-- =========================================
CREATE TABLE ProductoProveedor (
    id_producto INT,
    id_proveedor INT,
    PRIMARY KEY (id_producto, id_proveedor),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);
-- =========================================
-- TABLA: Entradas y Salidas de Productos
-- (Movimiento básico de stock)
-- =========================================
CREATE TABLE Movimientos (
    id_movimiento INT IDENTITY(1,1) PRIMARY KEY,
    tipo NVARCHAR(20),        -- ENTRADA o SALIDA
    fecha DATETIME DEFAULT GETDATE(),
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);
GO

--Agregar id_usuario como Clave foránea para saber que usuario hizo cada movimiento.

	ALTER TABLE Movimientos
	ADD Id_usuario INT;

	ALTER TABLE Movimientos
	ADD CONSTRAINT FK_Id_usuario
	FOREIGN KEY (Id_usuario)
	REFERENCES Usuarios(id_usuario);

-- =========================================
-- DATOS DE EJEMPLO
-- =========================================
INSERT INTO Categorias (nombre, descripcion)
VALUES ('Ferreteria', 'Herramientas y materiales de ferreteria'),
       ('Electrónica', 'Artículos eléctricos y electrónicos');

INSERT INTO Productos (nombre, descripcion, precio, stock, id_categoria)
VALUES ('Destornillador', 'Punta plana', 250.00, 50, 1),
       ('Cable USB', 'Cable tipo C', 500.00, 30, 2),
       ('Martillo', 'Mango de goma', 800.00, 15, 1);

INSERT INTO Proveedores (nombre, telefono, email)
VALUES ('Proveedor A', '1122334455', 'proveedorA@mail.com'),
       ('Proveedor B', '2233445566', 'proveedorB@mail.com');

INSERT INTO Usuarios (nombre, rol)
VALUES ('Administrador', 'Admin'),
       ('Juan Pérez', 'Empleado');

INSERT INTO Movimientos (tipo, id_producto, cantidad)
VALUES ('ENTRADA', 1, 10),
       ('SALIDA', 2, 5);
GO