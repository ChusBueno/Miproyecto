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
	nombreUsuario varchar(50) NOT NULL UNIQUE,
	nombre varchar(20) NOT NULL,
	apellido varchar(30) NOT NULL,
	contrasenia varchar(30) NOT NULL,
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
	texto varchar(1500) NOT NULL,
	fecha date NOT NULL,
	imagen varchar(255)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- ---------------------------------------------------

-- TABLA CATEGORIAS -- 

CREATE TABLE IF NOT EXISTS categorias (
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(50) NOT NULL
)ENGINE = InnoDB DEFAULT CHARSET = utf8;


-- ----------------------------------------------

-- TABLA SUBCATEGORIAS --

CREATE TABLE IF NOT EXISTS subcategorias (
	id int(10)  NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_categoria int (10) NOT NULL,
	nombre varchar(50) NOT NULL
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

-- TABLA COMENTARIOS -- 


CREATE TABLE IF NOT EXISTS comentarios(
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_noticia int(10) NOT NULL,
	id_usuario int(10) NOT NULL,
	texto varchar (500) NOT NULL,
	fecha date NOT NULL
)ENGINE =InnoDB DEFAULT CHARSET = utf8;



-- ---------------------------------------------------


-- FOREIGN KEYS --

-- TABLA USUARIOS --

ALTER TABLE usuarios
	ADD CONSTRAINT usuarios_fk FOREIGN KEY (id_permiso) REFERENCES permisos (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- TABLA NOTICIAS --

ALTER TABLE noticias
	ADD CONSTRAINT noticias_fk1 FOREIGN KEY (id_usuario) REFERENCES usuarios (id) ON UPDATE CASCADE ON DELETE CASCADE,
	ADD CONSTRAINT noticias_fk2 FOREIGN KEY (id_categoria) REFERENCES categorias (id) ON UPDATE CASCADE ON DELETE CASCADE,
	ADD CONSTRAINT noticias_fk3 FOREIGN KEY (id_subcategoria) REFERENCES subcategorias (id) ON UPDATE CASCADE ON DELETE CASCADE;


-- -------------------------------------


-- TABLA COMENTARIOS --

ALTER TABLE comentarios
	ADD CONSTRAINT comentarios_fk1 FOREIGN KEY (id_usuario) REFERENCES usuarios (id) ON UPDATE CASCADE ON DELETE CASCADE,
	ADD CONSTRAINT comentarios_fk2 FOREIGN KEY (id_noticia) REFERENCES noticias (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- FINAL TABLAS CMS ---------------------------------



-- -----------------------------------------------------------------------------------------------------------------------------------------------

-- ANUARIO ------------------------------------------------

-- TABLA CLUBES --

CREATE TABLE IF NOT EXISTS anuario_clubes(
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	responsable varchar (50) NOT NULL,
	nombreclub varchar (50) NOT NULL,
	imagen varchar(255),
	localidad varchar (100) NOT NULL
)ENGINE =InnoDB DEFAULT CHARSET = utf8;

-- TABLA EQUIPOS --

CREATE TABLE IF NOT EXISTS anuario_equipos(
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_club int(10) NOT NULL,
	id_relacion int(10) NOT NULL,
	entrenador varchar (50) NOT NULL,
	nombre varchar (50) NOT NULL,
	imagen varchar(255),
	pabellon varchar(255) NOT NULL
)ENGINE =InnoDB DEFAULT CHARSET = utf8;



-- TABLA JUGADORES --

CREATE TABLE IF NOT EXISTS anuario_jugadores(
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_equipo int(10) NOT NULL,
	nombre varchar(50) NOT NULL,
	apellidos varchar(100) NOT NULL,
	fecha date NOT NULL,
	imagen varchar(255)
)ENGINE =InnoDB DEFAULT CHARSET = utf8;


-- TABLA CATEGORIAS --

CREATE TABLE IF NOT EXISTS anuario_categorias(
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(50) NOT NULL
)ENGINE =InnoDB DEFAULT CHARSET = utf8;


-- TABLA LIGAS --

CREATE TABLE IF NOT EXISTS anuario_ligas(
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(50) NOT NULL
)ENGINE =InnoDB DEFAULT CHARSET = utf8;



-- TABLA RELACION LIGA-CATEGORA --

CREATE TABLE IF NOT EXISTS anuario_relacion(
	id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_categoria int(10) NOT NULL,
	id_liga int(10) NOT NULL,
	nombre varchar(50) NOT NULL,
	genero varchar(50) NOT NULL
)ENGINE =InnoDB DEFAULT CHARSET = utf8;



-- ---------------------------------------------------


-- FOREIGN KEYS --

-- TABLA EQUIPOS --

ALTER TABLE anuario_equipos
	ADD CONSTRAINT equipos_fk1 FOREIGN KEY (id_club) REFERENCES anuario_clubes (id) ON UPDATE CASCADE ON DELETE CASCADE,
	ADD CONSTRAINT equipos_fk2 FOREIGN KEY (id_relacion) REFERENCES anuario_relacion (id) ON UPDATE CASCADE ON DELETE CASCADE;


-- TABLA JUGADORES --

ALTER TABLE anuario_jugadores
	ADD CONSTRAINT jugadores_fk1 FOREIGN KEY (id_equipo) REFERENCES anuario_equipos (id) ON UPDATE CASCADE ON DELETE CASCADE;


-- TABLA RELACION --

ALTER TABLE anuario_relacion
	ADD CONSTRAINT relacion_fk1 FOREIGN KEY (id_categoria) REFERENCES anuario_categorias (id) ON UPDATE CASCADE ON DELETE CASCADE,
	ADD CONSTRAINT relacion_fk2 FOREIGN KEY (id_liga) REFERENCES anuario_ligas (id) ON UPDATE CASCADE ON DELETE CASCADE;


