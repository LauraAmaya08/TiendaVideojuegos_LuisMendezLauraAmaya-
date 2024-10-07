CREATE DATABASE tiendaVideojuegos;
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


