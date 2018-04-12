--
-- Base de datos: `federacion Baloncesto`
--
CREATE DATABASE IF NOT EXISTS federacion DEFAULT CHARACTER SET utf8;
USE federacion;


-- Crear tablas --


-- CMS --


-- TABLA USUARIOS--

CREATE TABLE IF NOT EXISTS usuarios (
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(20) NOT NULL,
	apellido varchar(30) NOT NULL,
	telefono int(11),
	id_permiso int(4) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- -------------------------------------------


-- TABLA PERMISOS --

CREATE TABLE IF NOT EXISTS permisos (
	id int(4) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	descripcion varchar(40)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- ------------------------------------

-- TABLA NOTICIAS --

CREATE TABLE IF NOT EXISTS noticias (
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_usuario int(10) NOT NULL,
	id_categoria int(10) NOT NULL,
	id_subcategoria int(10) NOT NULL,
	titulo varchar(50) NOT NULL,
	subtitulo varchar(50),
	texto varchar(500) NOT NULL,
	fecha date NOT NULL,
	imagen varchar(255)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- ---------------------------------------------------

-- TABLA CATEGORIAS -- 

CREATE TABLE IF NOT EXISTS categorias (
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(20) NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;


-- ----------------------------------------------

-- TABLA SUBCATEGORIAS --

CREATE TABLE IF NOT EXISTS subcategorias (
	id int(10)  NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_categoria int (10) NOT NULL,
	nombre varchar(20) NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- -------------------------------------------------

-- TABLA PATROCINADORES --

CREATE TABLE IF NOT EXISTS patrocinadores(
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(50) NOT NULL,
	url varchar(100) NOT NULL,
	imagen varchar(255)
)ENGINE =InnoDB DEFAULT CHARSET = utf8;


-- -------------------------------------------------


-- FOREIGN KEYS --

-- TABLA USUARIOS --

ALTER TABLE usuarios
	ADD CONSTRAINT usuarios_fk FOREIGN KEY (id_permiso) REFERENCES permisos (id) ON UPDATE CASCADE;

-- TABLA NOTICIAS --

ALTER TABLE noticias
	ADD CONSTRAINT noticias_fk1 FOREIGN KEY (id_usuario) REFERENCES usuarios (id) ON UPDATE CASCADE,
	ADD CONSTRAINT noticias_fk2 FOREIGN KEY (id_categoria) REFERENCES categorias (id) ON UPDATE CASCADE,
	ADD CONSTRAINT noticias_fk3 FOREIGN KEY (id_subcategoria) REFERENCES subcategorias (id) ON UPDATE CASCADE;


-- -------------------------------------



-- FINAL TABLAS CMS ---------------------------------

