CREATE DATABASE IF NOT EXISTS tiendaVideojuegos;
USE tiendaVideojuegos;

-- plataformas 
CREATE TABLE IF NOT EXISTS plataforma (
id_plataforma INT PRIMARY KEY NOT NULL,
nombre VARCHAR(255) NOT NULL UNIQUE 
);

-- categorias 
CREATE TABLE IF NOT EXISTS categoria (
id_categoria INT PRIMARY KEY NOT NULL,
nombre VARCHAR(255) NOT NULL UNIQUE 
);


-- genero 
CREATE TABLE IF NOT EXISTS genero (
id_genero INT PRIMARY KEY NOT NULL,
nombre VARCHAR(255) NOT NULL UNIQUE 
);

-- Clasificación de edades 
CREATE TABLE IF NOT EXISTS clasificacion_edades (
id_clasificacion INT PRIMARY KEY NOT NULL,
clasificacion VARCHAR(10) NOT NULL UNIQUE 
);

-- Videojuegos
CREATE TABLE IF NOT EXISTS caracteristicas_videojuego (
id_videojuego  INT PRIMARY KEY NOT NULL,
id_clasificacion INT NOT NULL,
FOREIGN KEY (id_clasificacion) REFERENCES clasificacion_edades(id_clasificacion)
);

-- Plataformas del videojuego (relación) 
CREATE TABLE IF NOT EXISTS plataformas_de_videojuego (
id INT PRIMARY KEY NOT NULL,
id_plataforma INT NOT NULL,
id_videojuego INT NOT NULL,
FOREIGN KEY (id_plataforma) REFERENCES plataforma (id_plataforma),
FOREIGN KEY (id_videojuego) REFERENCES caracteristicas_videojuego (id_videojuego)
);

-- Generos del videojuego (relación) 
CREATE TABLE IF NOT EXISTS generos_de_videojuego (
id INT PRIMARY KEY NOT NULL,
id_genero INT NOT NULL,
id_videojuego INT NOT NULL,
FOREIGN KEY (id_genero) REFERENCES genero (id_genero),
FOREIGN KEY (id_videojuego) REFERENCES caracteristicas_videojuego (id_videojuego)
);

-- productos
CREATE TABLE IF NOT EXISTS producto (
id_producto INT PRIMARY KEY NOT NULL,
nombre VARCHAR(255) NOT NULL,
descripcion TEXT NOT NULL,
id_categoria INT NOT NULL, 
FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria),
precio DECIMAL(10,2) NOT NULL, 
stock INT NOT NULL, 
id_videojuego INT, 
FOREIGN KEY (id_videojuego) REFERENCES caracteristicas_videojuego (id_videojuego)
);

CREATE TABLE IF NOT EXISTS Ciudad(
	id_ciudad INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS Direccion(
	id_direccion INT PRIMARY KEY,
    direccion VARCHAR(255) NOT NULL,
    id_ciudad INT NOT NULL,
    FOREIGN KEY (id_ciudad) REFERENCES Ciudad(id_ciudad)
);
CREATE TABLE IF NOT EXISTS Cliente(
	id_cliente INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    correo VARCHAR(255) NOT NULL UNIQUE,
    CONSTRAINT validacion_correo CHECK (correo LIKE '%@%.%'),
    id_direccion INT,
    FOREIGN KEY (id_direccion) REFERENCES Direccion(id_direccion),
    telefono CHAR(10)
);
CREATE TABLE IF NOT EXISTS Puesto_trabajo(
	id_puesto INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS Empleado(
	id_empleado INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    id_puesto INT NOT NULL,
    FOREIGN KEY (id_puesto) REFERENCES Puesto_trabajo(id_puesto),
    fecha_contratacion DATE NOT NULL
);
CREATE TABLE IF NOT EXISTS Venta(
	id_venta INT PRIMARY KEY,
    fecha DATE NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	id_empleado INT NOT NULL,
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);
CREATE TABLE IF NOT EXISTS Proveedor(
	id_proveedor INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    contacto_proveedor VARCHAR(255) NOT NULL,
    telefono CHAR(10),
    id_direccion INT NOT NULL,
    FOREIGN KEY (id_direccion) REFERENCES Direccion(id_direccion)
);
CREATE TABLE IF NOT EXISTS Orden_proveedor(
	id_orden_proveedor INT PRIMARY KEY,
	fecha DATE NOT NULL,
    id_proveedor INT NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
);
CREATE TABLE IF NOT EXISTS Productos_orden(
	id INT PRIMARY KEY,
    id_orden_proveedor INT NOT NULL,
    FOREIGN KEY (id_orden_proveedor) REFERENCES Orden_proveedor(id_orden_proveedor),
	id_producto INT NOT NULL,
	FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    cantidad INT NOT NULL
);
CREATE TABLE IF NOT EXISTS Productos_venta(
	id INT PRIMARY KEY,
    id_venta INT NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Venta(id_venta),
	id_producto INT NOT NULL,
	FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    cantidad INT NOT NULL
);