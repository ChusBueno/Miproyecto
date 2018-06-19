-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2018 a las 00:13:24
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
CREATE DATABASE IF NOT EXISTS federacion DEFAULT CHARACTER SET utf8;
USE federacion;
--
-- Base de datos: `federacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuario_categorias`
--

CREATE TABLE `anuario_categorias` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `anuario_categorias`
--

INSERT INTO `anuario_categorias` (`id`, `nombre`) VALUES
(1, 'Senior'),
(2, 'Junior'),
(3, 'Cadete'),
(4, 'Infantil'),
(5, 'Alevin'),
(6, 'Benjamin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuario_clubes`
--

CREATE TABLE `anuario_clubes` (
  `id` int(10) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  `nombreclub` varchar(50) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `localidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `anuario_clubes`
--

INSERT INTO `anuario_clubes` (`id`, `responsable`, `nombreclub`, `imagen`, `localidad`) VALUES
(1, 'Daniel Celorrio', 'Cantbasket 04', 'cantbasket.png', 'Santander'),
(2, 'Julio', 'Calasanz', 'calasanz.png', 'Santander'),
(3, 'Panta', 'Solares', 'solares.jpg', 'Solares'),
(4, 'Pepito', 'CBT Torrelavega', 'cbt.png', 'Torrelavega'),
(5, 'Nacho', 'Pielagos', 'pielagos.jpg', 'Renedo de Pielagos'),
(6, 'Pepito', 'Amide', 'amide.jpeg', 'Maliaño'),
(7, 'Raul', 'Castrobasket', 'castrobasket.png', 'Castro-Urdiales'),
(8, 'Pepito', 'La Paz', 'lapaz.png', 'Torrelavega'),
(9, 'Pepito', 'Ventanas Arsan', 'ventanasarsan.png', 'Maliaño'),
(10, 'Pepito', 'Tirso Igualatorio', 'tirso.jpeg', 'Santander'),
(11, 'Pepito', 'Daygon', 'daygon.jpg', 'Santander'),
(12, 'Maria', 'Bezana', 'bezana.jpg', 'Bezana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuario_equipos`
--

CREATE TABLE `anuario_equipos` (
  `id` int(10) NOT NULL,
  `id_club` int(10) NOT NULL,
  `id_relacion` int(10) NOT NULL,
  `entrenador` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `pabellon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `anuario_equipos`
--

INSERT INTO `anuario_equipos` (`id`, `id_club`, `id_relacion`, `entrenador`, `nombre`, `imagen`, `pabellon`) VALUES
(1, 1, 1, 'Amador', 'Uc gallofa sub22', 'equipo.jpg', 'Manuel Llano'),
(2, 1, 1, 'Joaquin', 'Uc gallofa 04', 'equipo.jpg', 'Universidad de Cantabria'),
(3, 3, 1, 'Pablo', 'Cb solares', 'equipo.jpg', 'Mies del corro'),
(4, 4, 1, 'Javier', 'Cbt Torrelavega A', 'equipo.jpg', 'Vicente Trueba'),
(5, 8, 1, 'David', 'La paz torrelavega', 'equipo.jpg', 'Vicente Trueba'),
(6, 11, 1, 'Mario', 'Daygon Baloncesto Santander A', 'equipo.jpg', 'Cueto'),
(7, 8, 4, 'Dani', 'La paz torrelavega', 'equipo.jpg', 'Maria Pardo'),
(8, 10, 4, 'Juan', 'Tirso Igualatorio', 'equipo.jpg', 'Cueto'),
(9, 9, 4, 'Jose', 'Ventanas Arsan Astillero', 'equipo.jpg', 'La cantabrica'),
(10, 6, 2, 'Aitor', 'Sayme Amide', 'equipo.jpg', 'Matilde de la Torre'),
(11, 11, 2, 'Jesus', 'Daygon Baloncesto Santander b', 'equipo.jpg', 'Numancia'),
(12, 4, 2, 'Francisco', 'Cbt Torrelavega B', 'equipo.jpg', 'Vicente Trueba'),
(13, 7, 2, 'Alvaro', 'Cbcastro.com', 'equipo.jpg', 'Pachi Torre'),
(14, 3, 2, 'Marcos', 'Cb solares B', 'equipo.jpg', 'Mies del corro'),
(15, 9, 5, 'Jose', 'Ventanas Arsan Astillero', 'equipo.jpg', 'La cantabrica'),
(16, 11, 5, 'Gonzalo', 'Daygon Pub la pecera', 'equipo.jpg', 'Numancia'),
(17, 3, 5, 'Marcos', 'CB Solares', 'equipo.jpg', 'Mies del Corro'),
(18, 4, 5, 'Luis', 'CBT winchester saloon', 'equipo.jpg', 'Habana Vieja'),
(19, 12, 6, 'Jesus', 'Animallago bezana', 'equipo.jpg', 'Pabellon bezana'),
(20, 4, 6, 'Samuel', 'CBT Torrelavega A', 'equipo.jpg', 'Habana Vieja'),
(21, 1, 6, 'Alvaro', 'Gallofa A', 'equipo.jpg', 'Cueto'),
(22, 5, 6, 'Antonio', 'Em Pielagos Parbayon', 'equipo.jpg', 'Parbayon'),
(23, 3, 6, 'Angel', 'Cb Solares A', 'equipo.jpg', 'Mies del Corro'),
(24, 2, 6, 'Vicente', 'Calasanz A', 'equipo.jpg', 'Calasanz'),
(25, 5, 7, 'Pedro', 'Em Pielagos Renedo', 'equipo.jpg', 'Fernando Exposito'),
(26, 1, 7, 'Pedro', 'Gallofa B', 'equipo.jpg', 'Cueto'),
(27, 2, 7, 'Julio', 'Calasanz B', 'equipo.jpg', 'Calasanz'),
(28, 12, 7, 'Hugo', 'Bezana B', 'equipo.jpg', 'Pabellon bezana'),
(29, 5, 7, 'Jose', 'Em Pielagos Liencres', 'equipo.jpg', 'Pabellon Liencres'),
(30, 7, 7, 'Arturo', 'Castrobasket', 'equipo.jpg', 'Pachi Torre'),
(31, 2, 9, 'Ana', 'Calasanz', 'equipo.jpg', 'Calasanz'),
(32, 8, 9, 'Saul', 'La paz torrelavega', 'equipo.jpg', 'Maria Pardo'),
(33, 4, 9, 'Alejandro', 'CBT jardin de moneche', 'equipo.jpg', 'Habana Vieja'),
(34, 9, 9, 'Pablo', 'Ventanas Arsan Astillero', 'equipo.jpg', 'La cantabrica'),
(35, 2, 10, 'Diego', 'Calasanz B', 'equipo.jpg', 'Calasanz'),
(36, 8, 10, 'Saul', 'La paz torrelavega B ', 'equipo.jpg', 'Maria Pardo'),
(37, 4, 10, 'Alejandro', 'CBT jardin de moneche B', 'equipo.jpg', 'Habana Vieja'),
(38, 9, 10, 'Pablo', 'Ventanas Arsan Astillero B', 'equipo.jpg', 'La cantabrica'),
(39, 12, 12, 'Jesus', 'Animallago bezana', 'equipo.jpg', 'Pabellon bezana'),
(40, 4, 12, 'Samuel', 'CBT Torrelavega A', 'equipo.jpg', 'Habana Vieja'),
(41, 1, 12, 'Alvaro', 'Gallofa A', 'equipo.jpg', 'Cueto'),
(42, 5, 12, 'Antonio', 'Em Pielagos Parbayon', 'equipo.jpg', 'Parbayon'),
(43, 3, 12, 'Angel', 'Cb Solares A', 'equipo.jpg', 'Mies del Corro'),
(44, 2, 12, 'Vicente', 'Calasanz A', 'equipo.jpg', 'Calasanz'),
(45, 5, 13, 'Pedro', 'Em Pielagos Renedo', 'equipo.jpg', 'Fernando Exposito'),
(46, 1, 13, 'Pedro', 'Gallofa B', 'equipo.jpg', 'Cueto'),
(47, 2, 13, 'Julio', 'Calasanz B', 'equipo.jpg', 'Calasanz'),
(48, 12, 13, 'Hugo', 'Bezana B', 'equipo.jpg', 'Pabellon bezana'),
(49, 5, 13, 'Jose', 'Em Pielagos Liencres', 'equipo.jpg', 'Pabellon Liencres'),
(50, 7, 13, 'Arturo', 'Castrobasket', 'equipo.jpg', 'Pachi Torre'),
(51, 2, 15, 'Ana', 'Calasanz', 'equipo.jpg', 'Calasanz'),
(52, 8, 15, 'Saul', 'La paz torrelavega', 'equipo.jpg', 'Maria Pardo'),
(53, 4, 15, 'Alejandro', 'CBT jardin de moneche', 'equipo.jpg', 'Habana Vieja'),
(54, 9, 15, 'Pablo', 'Ventanas Arsan Astillero', 'equipo.jpg', 'La cantabrica'),
(55, 2, 16, 'Diego', 'Calasanz B', 'equipo.jpg', 'Calasanz'),
(56, 8, 16, 'Saul', 'La paz torrelavega B ', 'equipo.jpg', 'Maria Pardo'),
(57, 4, 16, 'Alejandro', 'CBT jardin de moneche B', 'equipo.jpg', 'Habana Vieja'),
(58, 9, 16, 'Pablo', 'Ventanas Arsan Astillero B', 'equipo.jpg', 'La cantabrica'),
(59, 12, 18, 'Jesus', 'Animallago bezana', 'equipo.jpg', 'Pabellon bezana'),
(60, 4, 18, 'Samuel', 'CBT Torrelavega A', 'equipo.jpg', 'Habana Vieja'),
(61, 1, 18, 'Alvaro', 'Gallofa A', 'equipo.jpg', 'Cueto'),
(62, 5, 18, 'Antonio', 'Em Pielagos Parbayon', 'equipo.jpg', 'Parbayon'),
(63, 3, 18, 'Angel', 'Cb Solares A', 'equipo.jpg', 'Mies del Corro'),
(64, 2, 18, 'Vicente', 'Calasanz A', 'equipo.jpg', 'Calasanz'),
(65, 5, 19, 'Pedro', 'Em Pielagos Renedo', 'equipo.jpg', 'Fernando Exposito'),
(66, 1, 19, 'Pedro', 'Gallofa B', 'equipo.jpg', 'Cueto'),
(67, 2, 19, 'Julio', 'Calasanz B', 'equipo.jpg', 'Calasanz'),
(68, 12, 19, 'Hugo', 'Bezana B', 'equipo.jpg', 'Pabellon bezana'),
(69, 5, 19, 'Jose', 'Em Pielagos Liencres', 'equipo.jpg', 'Pabellon Liencres'),
(70, 7, 19, 'Arturo', 'Castrobasket', 'equipo.jpg', 'Pachi Torre'),
(71, 2, 21, 'Ana', 'Calasanz', 'equipo.jpg', 'Calasanz'),
(72, 8, 21, 'Saul', 'La paz torrelavega', 'equipo.jpg', 'Maria Pardo'),
(73, 4, 21, 'Alejandro', 'CBT jardin de moneche', 'equipo.jpg', 'Habana Vieja'),
(74, 9, 21, 'Pablo', 'Ventanas Arsan Astillero', 'equipo.jpg', 'La cantabrica'),
(75, 2, 22, 'Diego', 'Calasanz B', 'equipo.jpg', 'Calasanz'),
(76, 8, 22, 'Saul', 'La paz torrelavega B ', 'equipo.jpg', 'Maria Pardo'),
(77, 4, 22, 'Alejandro', 'CBT jardin de moneche B', 'equipo.jpg', 'Habana Vieja'),
(78, 9, 22, 'Pablo', 'Ventanas Arsan Astillero B', 'equipo.jpg', 'La cantabrica'),
(79, 12, 24, 'Jesus', 'Animallago bezana', 'equipo.jpg', 'Pabellon bezana'),
(80, 4, 24, 'Samuel', 'CBT Torrelavega A', 'equipo.jpg', 'Habana Vieja'),
(81, 1, 24, 'Alvaro', 'Gallofa A', 'equipo.jpg', 'Cueto'),
(82, 5, 24, 'Antonio', 'Em Pielagos Parbayon', 'equipo.jpg', 'Parbayon'),
(83, 3, 24, 'Angel', 'Cb Solares A', 'equipo.jpg', 'Mies del Corro'),
(84, 2, 24, 'Vicente', 'Calasanz A', 'equipo.jpg', 'Calasanz'),
(85, 5, 25, 'Pedro', 'Em Pielagos Renedo', 'equipo.jpg', 'Fernando Exposito'),
(86, 1, 25, 'Pedro', 'Gallofa B', 'equipo.jpg', 'Cueto'),
(87, 2, 25, 'Julio', 'Calasanz B', 'equipo.jpg', 'Calasanz'),
(88, 12, 25, 'Hugo', 'Bezana B', 'equipo.jpg', 'Pabellon bezana'),
(89, 5, 25, 'Jose', 'Em Pielagos Liencres', 'equipo.jpg', 'Pabellon Liencres'),
(90, 7, 25, 'Arturo', 'Castrobasket', 'equipo.jpg', 'Pachi Torre'),
(91, 2, 27, 'Ana', 'Calasanz', 'equipo.jpg', 'Calasanz'),
(92, 8, 27, 'Saul', 'La paz torrelavega', 'equipo.jpg', 'Maria Pardo'),
(93, 4, 27, 'Alejandro', 'CBT jardin de moneche', 'equipo.jpg', 'Habana Vieja'),
(94, 9, 27, 'Pablo', 'Ventanas Arsan Astillero', 'equipo.jpg', 'La cantabrica'),
(95, 2, 28, 'Diego', 'Calasanz B', 'equipo.jpg', 'Calasanz'),
(96, 8, 28, 'Saul', 'La paz torrelavega B ', 'equipo.jpg', 'Maria Pardo'),
(97, 4, 28, 'Alejandro', 'CBT jardin de moneche B', 'equipo.jpg', 'Habana Vieja'),
(98, 9, 28, 'Pablo', 'Ventanas Arsan Astillero B', 'equipo.jpg', 'La cantabrica'),
(99, 12, 30, 'Jesus', 'Animallago bezana', 'equipo.jpg', 'Pabellon bezana'),
(100, 4, 30, 'Samuel', 'CBT Torrelavega A', 'equipo.jpg', 'Habana Vieja'),
(101, 1, 30, 'Alvaro', 'Gallofa A', 'equipo.jpg', 'Cueto'),
(102, 5, 30, 'Antonio', 'Em Pielagos Parbayon', 'equipo.jpg', 'Parbayon'),
(103, 3, 30, 'Angel', 'Cb Solares A', 'equipo.jpg', 'Mies del Corro'),
(104, 2, 30, 'Vicente', 'Calasanz A', 'equipo.jpg', 'Calasanz'),
(105, 5, 31, 'Pedro', 'Em Pielagos Renedo', 'equipo.jpg', 'Fernando Exposito'),
(106, 1, 31, 'Pedro', 'Gallofa B', 'equipo.jpg', 'Cueto'),
(107, 2, 31, 'Julio', 'Calasanz B', 'equipo.jpg', 'Calasanz'),
(108, 12, 31, 'Hugo', 'Bezana B', 'equipo.jpg', 'Pabellon bezana'),
(109, 5, 31, 'Jose', 'Em Pielagos Liencres', 'equipo.jpg', 'Pabellon Liencres'),
(110, 7, 31, 'Arturo', 'Castrobasket', 'equipo.jpg', 'Pachi Torre'),
(111, 2, 33, 'Ana', 'Calasanz', 'equipo.jpg', 'Calasanz'),
(112, 8, 33, 'Saul', 'La paz torrelavega', 'equipo.jpg', 'Maria Pardo'),
(113, 4, 33, 'Alejandro', 'CBT jardin de moneche', 'equipo.jpg', 'Habana Vieja'),
(114, 9, 33, 'Pablo', 'Ventanas Arsan Astillero', 'equipo.jpg', 'La cantabrica'),
(115, 2, 34, 'Diego', 'Calasanz B', 'equipo.jpg', 'Calasanz'),
(116, 8, 34, 'Saul', 'La paz torrelavega B ', 'equipo.jpg', 'Maria Pardo'),
(117, 4, 34, 'Alejandro', 'CBT jardin de moneche B', 'equipo.jpg', 'Habana Vieja'),
(118, 9, 34, 'Pablo', 'Ventanas Arsan Astillero B', 'equipo.jpg', 'La cantabrica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuario_jugadores`
--

CREATE TABLE `anuario_jugadores` (
  `id` int(10) NOT NULL,
  `id_equipo` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `anuario_jugadores`
--

INSERT INTO `anuario_jugadores` (`id`, `id_equipo`, `nombre`, `apellidos`, `fecha`, `imagen`) VALUES
(1, 1, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(2, 1, 'Jugador', 'Inventado2', '2018-06-19', 'llul.jpg'),
(3, 1, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(4, 1, 'Jugador', 'Inventado4', '2018-06-19', 'marc.jpg'),
(5, 1, 'Jugador', 'Inventado5', '2018-06-19', 'llul.jpg'),
(6, 1, 'Jugador', 'Inventado6', '2018-06-19', 'pau.jpg'),
(7, 1, 'Jugador', 'Inventado7', '2018-06-19', 'marc.jpg'),
(8, 1, 'Jugador', 'Inventado8', '2018-06-19', 'llul.jpg'),
(9, 1, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(10, 1, 'Jugador', 'Inventado10', '2018-06-19', 'sanemeterio.jpg'),
(11, 1, 'Jugador', 'Inventado11', '2018-06-19', 'marc.jpg'),
(12, 1, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(13, 2, 'Jugador', 'Inventado1', '2018-06-19', 'sanemeterio.jpg'),
(14, 2, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(15, 2, 'Jugador', 'Inventado3', '2018-06-19', 'llul.jpg'),
(16, 2, 'Jugador', 'Inventado4', '2018-06-19', 'sanemeterio.jpg'),
(17, 2, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(18, 2, 'Jugador', 'Inventado6', '2018-06-19', 'llul.jpg'),
(19, 2, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(20, 2, 'Jugador', 'Inventado8', '2018-06-19', 'marc.jpg'),
(21, 2, 'Jugador', 'Inventado9', '2018-06-19', 'llul.jpg'),
(22, 2, 'Jugador', 'Inventado10', '2018-06-19', 'sanemeterio.jpg'),
(23, 2, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(24, 2, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(25, 3, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(26, 3, 'Jugador', 'Inventado2', '2018-06-19', 'llul.jpg'),
(27, 3, 'Jugador', 'Inventado3', '2018-06-19', 'marc.jpg'),
(28, 3, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(29, 3, 'Jugador', 'Inventado5', '2018-06-19', 'llul.jpg'),
(30, 3, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(31, 3, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(32, 3, 'Jugador', 'Inventado8', '2018-06-19', 'llul.jpg'),
(33, 3, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(34, 3, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(35, 3, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(36, 3, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(37, 4, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(38, 4, 'Jugador', 'Inventado2', '2018-06-19', 'llul.jpg'),
(39, 4, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(40, 4, 'Jugador', 'Inventado4', '2018-06-19', 'llul.jpg'),
(41, 4, 'Jugador', 'Inventado5', '2018-06-19', 'sanemeterio.jpg'),
(42, 4, 'Jugador', 'Inventado6', '2018-06-19', 'pau.jpg'),
(43, 4, 'Jugador', 'Inventado7', '2018-06-19', 'llul.jpg'),
(44, 4, 'Jugador', 'Inventado8', '2018-06-19', 'sanemeterio.jpg'),
(45, 4, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(46, 4, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(47, 4, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(48, 4, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(49, 5, 'Jugador', 'Inventado1', '2018-06-19', 'sanemeterio.jpg'),
(50, 5, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(51, 5, 'Jugador', 'Inventado3', '2018-06-19', 'marc.jpg'),
(52, 5, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(53, 5, 'Jugador', 'Inventado5', '2018-06-19', 'llul.jpg'),
(54, 5, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(55, 5, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(56, 5, 'Jugador', 'Inventado8', '2018-06-19', 'marc.jpg'),
(57, 5, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(58, 5, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(59, 5, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(60, 5, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(61, 6, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(62, 6, 'Jugador', 'Inventado2', '2018-06-19', 'llul.jpg'),
(63, 6, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(64, 6, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(65, 6, 'Jugador', 'Inventado5', '2018-06-19', 'llul.jpg'),
(66, 6, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(67, 6, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(68, 6, 'Jugador', 'Inventado8', '2018-06-19', 'sanemeterio.jpg'),
(69, 6, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(70, 6, 'Jugador', 'Inventado10', '2018-06-19', 'llul.jpg'),
(71, 6, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(72, 6, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(73, 7, 'Jugador', 'Inventado1', '2018-06-19', 'marc.jpg'),
(74, 7, 'Jugador', 'Inventado2', '2018-06-19', 'llul.jpg'),
(75, 7, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(76, 7, 'Jugador', 'Inventado4', '2018-06-19', 'sanemeterio.jpg'),
(77, 7, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(78, 7, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(79, 7, 'Jugador', 'Inventado7', '2018-06-19', 'sanemeterio.jpg'),
(80, 7, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(81, 7, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(82, 7, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(83, 7, 'Jugador', 'Inventado11', '2018-06-19', 'marc.jpg'),
(84, 7, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(85, 8, 'Jugador', 'Inventado1', '2018-06-19', 'sanemeterio.jpg'),
(86, 8, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(87, 8, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(88, 8, 'Jugador', 'Inventado4', '2018-06-19', 'llul.jpg'),
(89, 8, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(90, 8, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(91, 8, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(92, 8, 'Jugador', 'Inventado8', '2018-06-19', 'sanemeterio.jpg'),
(93, 8, 'Jugador', 'Inventado9', '2018-06-19', 'llul.jpg'),
(94, 8, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(95, 8, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(96, 8, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(97, 9, 'Jugador', 'Inventado1', '2018-06-19', 'marc.jpg'),
(98, 9, 'Jugador', 'Inventado2', '2018-06-19', 'llul.jpg'),
(99, 9, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(100, 9, 'Jugador', 'Inventado4', '2018-06-19', 'sanemeterio.jpg'),
(101, 9, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(102, 9, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(103, 9, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(104, 9, 'Jugador', 'Inventado8', '2018-06-19', 'sanemeterio.jpg'),
(105, 9, 'Jugador', 'Inventado9', '2018-06-19', 'llul.jpg'),
(106, 9, 'Jugador', 'Inventado10', '2018-06-19', 'sanemeterio.jpg'),
(107, 9, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(108, 9, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(109, 10, 'Jugador', 'Inventado1', '2018-06-19', 'sanemeterio.jpg'),
(110, 10, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(111, 10, 'Jugador', 'Inventado3', '2018-06-19', 'marc.jpg'),
(112, 10, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(113, 10, 'Jugador', 'Inventado5', '2018-06-19', 'llul.jpg'),
(114, 10, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(115, 10, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(116, 10, 'Jugador', 'Inventado8', '2018-06-19', 'marc.jpg'),
(117, 10, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(118, 10, 'Jugador', 'Inventado10', '2018-06-19', 'llul.jpg'),
(119, 10, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(120, 10, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(121, 11, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(122, 11, 'Jugador', 'Inventado2', '2018-06-19', 'marc.jpg'),
(123, 11, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(124, 11, 'Jugador', 'Inventado4', '2018-06-19', 'sanemeterio.jpg'),
(125, 11, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(126, 11, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(127, 11, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(128, 11, 'Jugador', 'Inventado8', '2018-06-19', 'marc.jpg'),
(129, 11, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(130, 11, 'Jugador', 'Inventado10', '2018-06-19', 'llul.jpg'),
(131, 11, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(132, 11, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(133, 12, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(134, 12, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(135, 12, 'Jugador', 'Inventado3', '2018-06-19', 'llul.jpg'),
(136, 12, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(137, 12, 'Jugador', 'Inventado5', '2018-06-19', 'llul.jpg'),
(138, 12, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(139, 12, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(140, 12, 'Jugador', 'Inventado8', '2018-06-19', 'marc.jpg'),
(141, 12, 'Jugador', 'Inventado9', '2018-06-19', 'llul.jpg'),
(142, 12, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(143, 12, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(144, 12, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(145, 13, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(146, 13, 'Jugador', 'Inventado2', '2018-06-19', 'marc.jpg'),
(147, 13, 'Jugador', 'Inventado3', '2018-06-19', 'llul.jpg'),
(148, 13, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(149, 13, 'Jugador', 'Inventado5', '2018-06-19', 'marc.jpg'),
(150, 13, 'Jugador', 'Inventado6', '2018-06-19', 'pau.jpg'),
(151, 13, 'Jugador', 'Inventado7', '2018-06-19', 'sanemeterio.jpg'),
(152, 13, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(153, 13, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(154, 13, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(155, 13, 'Jugador', 'Inventado11', '2018-06-19', 'llul.jpg'),
(156, 13, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(157, 14, 'Jugador', 'Inventado1', '2018-06-19', 'sanemeterio.jpg'),
(158, 14, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(159, 14, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(160, 14, 'Jugador', 'Inventado4', '2018-06-19', 'marc.jpg'),
(161, 14, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(162, 14, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(163, 14, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(164, 14, 'Jugador', 'Inventado8', '2018-06-19', 'llul.jpg'),
(165, 14, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(166, 14, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(167, 14, 'Jugador', 'Inventado11', '2018-06-19', 'marc.jpg'),
(168, 14, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(169, 15, 'Jugador', 'Inventado1', '2018-06-19', 'sanemeterio.jpg'),
(170, 15, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(171, 15, 'Jugador', 'Inventado3', '2018-06-19', 'marc.jpg'),
(172, 15, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(173, 15, 'Jugador', 'Inventado5', '2018-06-19', 'sanemeterio.jpg'),
(174, 15, 'Jugador', 'Inventado6', '2018-06-19', 'pau.jpg'),
(175, 15, 'Jugador', 'Inventado7', '2018-06-19', 'sanemeterio.jpg'),
(176, 15, 'Jugador', 'Inventado8', '2018-06-19', 'llul.jpg'),
(177, 15, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(178, 15, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(179, 15, 'Jugador', 'Inventado11', '2018-06-19', 'llul.jpg'),
(180, 15, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(181, 16, 'Jugador', 'Inventado1', '2018-06-19', 'sanemeterio.jpg'),
(182, 16, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(183, 16, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(184, 16, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(185, 16, 'Jugador', 'Inventado5', '2018-06-19', 'marc.jpg'),
(186, 16, 'Jugador', 'Inventado6', '2018-06-19', 'pau.jpg'),
(187, 16, 'Jugador', 'Inventado7', '2018-06-19', 'llul.jpg'),
(188, 16, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(189, 16, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(190, 16, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(191, 16, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(192, 16, 'Jugador', 'Inventado12', '2018-06-19', 'marc.jpg'),
(193, 17, 'Jugador', 'Inventado1', '2018-06-19', 'marc.jpg'),
(194, 17, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(195, 17, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(196, 17, 'Jugador', 'Inventado4', '2018-06-19', 'llul.jpg'),
(197, 17, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(198, 17, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(199, 17, 'Jugador', 'Inventado7', '2018-06-19', 'marc.jpg'),
(200, 17, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(201, 17, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(202, 17, 'Jugador', 'Inventado10', '2018-06-19', 'llul.jpg'),
(203, 17, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(204, 17, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(205, 18, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(206, 18, 'Jugador', 'Inventado2', '2018-06-19', 'marc.jpg'),
(207, 18, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(208, 18, 'Jugador', 'Inventado4', '2018-06-19', 'sanemeterio.jpg'),
(209, 18, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(210, 18, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(211, 18, 'Jugador', 'Inventado7', '2018-06-19', 'llul.jpg'),
(212, 18, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(213, 18, 'Jugador', 'Inventado9', '2018-06-19', 'marc.jpg'),
(214, 18, 'Jugador', 'Inventado10', '2018-06-19', 'sanemeterio.jpg'),
(215, 18, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(216, 18, 'Jugador', 'Inventado12', '2018-06-19', 'llul.jpg'),
(217, 19, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(218, 19, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(219, 19, 'Jugador', 'Inventado3', '2018-06-19', 'llul.jpg'),
(220, 19, 'Jugador', 'Inventado4', '2018-06-19', 'marc.jpg'),
(221, 19, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(222, 19, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(223, 19, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(224, 19, 'Jugador', 'Inventado8', '2018-06-19', 'sanemeterio.jpg'),
(225, 19, 'Jugador', 'Inventado9', '2018-06-19', 'marc.jpg'),
(226, 19, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(227, 19, 'Jugador', 'Inventado11', '2018-06-19', 'llul.jpg'),
(228, 19, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(229, 20, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(230, 20, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(231, 20, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(232, 20, 'Jugador', 'Inventado4', '2018-06-19', 'llul.jpg'),
(233, 20, 'Jugador', 'Inventado5', '2018-06-19', 'sanemeterio.jpg'),
(234, 20, 'Jugador', 'Inventado6', '2018-06-19', 'pau.jpg'),
(235, 20, 'Jugador', 'Inventado7', '2018-06-19', 'sanemeterio.jpg'),
(236, 20, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(237, 20, 'Jugador', 'Inventado9', '2018-06-19', 'marc.jpg'),
(238, 20, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(239, 20, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(240, 20, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(241, 21, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(242, 21, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(243, 21, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(244, 21, 'Jugador', 'Inventado4', '2018-06-19', 'marc.jpg'),
(245, 21, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(246, 21, 'Jugador', 'Inventado6', '2018-06-19', 'llul.jpg'),
(247, 21, 'Jugador', 'Inventado7', '2018-06-19', 'llul.jpg'),
(248, 21, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(249, 21, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(250, 21, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(251, 21, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(252, 21, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(253, 22, 'Jugador', 'Inventado1', '2018-06-19', 'marc.jpg'),
(254, 22, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(255, 22, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(256, 22, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(257, 22, 'Jugador', 'Inventado5', '2018-06-19', 'sanemeterio.jpg'),
(258, 22, 'Jugador', 'Inventado6', '2018-06-19', 'pau.jpg'),
(259, 22, 'Jugador', 'Inventado7', '2018-06-19', 'marc.jpg'),
(260, 22, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(261, 22, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(262, 22, 'Jugador', 'Inventado10', '2018-06-19', 'llul.jpg'),
(263, 22, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(264, 22, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(265, 23, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(266, 23, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(267, 23, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(268, 23, 'Jugador', 'Inventado4', '2018-06-19', 'marc.jpg'),
(269, 23, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(270, 23, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(271, 23, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(272, 23, 'Jugador', 'Inventado8', '2018-06-19', 'llul.jpg'),
(273, 23, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(274, 23, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(275, 23, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(276, 23, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(277, 24, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(278, 24, 'Jugador', 'Inventado2', '2018-06-19', 'marc.jpg'),
(279, 24, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(280, 24, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(281, 24, 'Jugador', 'Inventado5', '2018-06-19', 'sanemeterio.jpg'),
(282, 24, 'Jugador', 'Inventado6', '2018-06-19', 'llul.jpg'),
(283, 24, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(284, 24, 'Jugador', 'Inventado8', '2018-06-19', 'marc.jpg'),
(285, 24, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(286, 24, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(287, 24, 'Jugador', 'Inventado11', '2018-06-19', 'marc.jpg'),
(288, 24, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(289, 25, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(290, 25, 'Jugador', 'Inventado2', '2018-06-19', 'llul.jpg'),
(291, 25, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(292, 25, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(293, 25, 'Jugador', 'Inventado5', '2018-06-19', 'llul.jpg'),
(294, 25, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(295, 25, 'Jugador', 'Inventado7', '2018-06-19', 'sanemeterio.jpg'),
(296, 25, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(297, 25, 'Jugador', 'Inventado9', '2018-06-19', 'marc.jpg'),
(298, 25, 'Jugador', 'Inventado10', '2018-06-19', 'sanemeterio.jpg'),
(299, 25, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(300, 25, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(301, 26, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(302, 26, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(303, 26, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(304, 26, 'Jugador', 'Inventado4', '2018-06-19', 'sanemeterio.jpg'),
(305, 26, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(306, 26, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(307, 26, 'Jugador', 'Inventado7', '2018-06-19', 'sanemeterio.jpg'),
(308, 26, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(309, 26, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(310, 26, 'Jugador', 'Inventado10', '2018-06-19', 'llul.jpg'),
(311, 26, 'Jugador', 'Inventado11', '2018-06-19', 'marc.jpg'),
(312, 26, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(313, 27, 'Jugador', 'Inventado1', '2018-06-19', 'marc.jpg'),
(314, 27, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(315, 27, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(316, 27, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(317, 27, 'Jugador', 'Inventado5', '2018-06-19', 'marc.jpg'),
(318, 27, 'Jugador', 'Inventado6', '2018-06-19', 'pau.jpg'),
(319, 27, 'Jugador', 'Inventado7', '2018-06-19', 'sanemeterio.jpg'),
(320, 27, 'Jugador', 'Inventado8', '2018-06-19', 'llul.jpg'),
(321, 27, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(322, 27, 'Jugador', 'Inventado10', '2018-06-19', 'sanemeterio.jpg'),
(323, 27, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(324, 27, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(325, 28, 'Jugador', 'Inventado1', '2018-06-19', 'marc.jpg'),
(326, 28, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(327, 28, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(328, 28, 'Jugador', 'Inventado4', '2018-06-19', 'llul.jpg'),
(329, 28, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(330, 28, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(331, 28, 'Jugador', 'Inventado7', '2018-06-19', 'sanemeterio.jpg'),
(332, 28, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(333, 28, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(334, 28, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(335, 28, 'Jugador', 'Inventado11', '2018-06-19', 'marc.jpg'),
(336, 28, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(337, 29, 'Jugador', 'Inventado1', '2018-06-19', 'sanemeterio.jpg'),
(338, 29, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(339, 29, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(340, 29, 'Jugador', 'Inventado4', '2018-06-19', 'llul.jpg'),
(341, 29, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(342, 29, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(343, 29, 'Jugador', 'Inventado7', '2018-06-19', 'marc.jpg'),
(344, 29, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(345, 29, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(346, 29, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(347, 29, 'Jugador', 'Inventado11', '2018-06-19', 'marc.jpg'),
(348, 29, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(349, 30, 'Jugador', 'Inventado1', '2018-06-19', 'sanemeterio.jpg'),
(350, 30, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(351, 30, 'Jugador', 'Inventado3', '2018-06-19', 'llul.jpg'),
(352, 30, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(353, 30, 'Jugador', 'Inventado5', '2018-06-19', 'marc.jpg'),
(354, 30, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(355, 30, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(356, 30, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(357, 30, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(358, 30, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(359, 30, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(360, 30, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(361, 31, 'Jugador', 'Inventado1', '2018-06-19', 'sanemeterio.jpg'),
(362, 31, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(363, 31, 'Jugador', 'Inventado3', '2018-06-19', 'llul.jpg'),
(364, 31, 'Jugador', 'Inventado4', '2018-06-19', 'marc.jpg'),
(365, 31, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(366, 31, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(367, 31, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(368, 31, 'Jugador', 'Inventado8', '2018-06-19', 'marc.jpg'),
(369, 31, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(370, 31, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(371, 31, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(372, 31, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(373, 32, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(374, 32, 'Jugador', 'Inventado2', '2018-06-19', 'llul.jpg'),
(375, 32, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(376, 32, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(377, 32, 'Jugador', 'Inventado5', '2018-06-19', 'marc.jpg'),
(378, 32, 'Jugador', 'Inventado6', '2018-06-19', 'pau.jpg'),
(379, 32, 'Jugador', 'Inventado7', '2018-06-19', 'sanemeterio.jpg'),
(380, 32, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(381, 32, 'Jugador', 'Inventado9', '2018-06-19', 'marc.jpg'),
(382, 32, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(383, 32, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(384, 32, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(385, 33, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(386, 33, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(387, 33, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(388, 33, 'Jugador', 'Inventado4', '2018-06-19', 'marc.jpg'),
(389, 33, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(390, 33, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(391, 33, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(392, 33, 'Jugador', 'Inventado8', '2018-06-19', 'marc.jpg'),
(393, 33, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(394, 33, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(395, 33, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(396, 33, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(397, 34, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(398, 34, 'Jugador', 'Inventado2', '2018-06-19', 'llul.jpg'),
(399, 34, 'Jugador', 'Inventado3', '2018-06-19', 'sanemeterio.jpg'),
(400, 34, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(401, 34, 'Jugador', 'Inventado5', '2018-06-19', 'marc.jpg'),
(402, 34, 'Jugador', 'Inventado6', '2018-06-19', 'pau.jpg'),
(403, 34, 'Jugador', 'Inventado7', '2018-06-19', 'sanemeterio.jpg'),
(404, 34, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(405, 34, 'Jugador', 'Inventado9', '2018-06-19', 'marc.jpg'),
(406, 34, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(407, 34, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(408, 34, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(409, 35, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(410, 35, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(411, 35, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(412, 35, 'Jugador', 'Inventado4', '2018-06-19', 'sanemeterio.jpg'),
(413, 35, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(414, 35, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(415, 35, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(416, 35, 'Jugador', 'Inventado8', '2018-06-19', 'sanemeterio.jpg'),
(417, 35, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(418, 35, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(419, 35, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(420, 35, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(421, 36, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(422, 36, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(423, 36, 'Jugador', 'Inventado3', '2018-06-19', 'marc.jpg'),
(424, 36, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(425, 36, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(426, 36, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(427, 36, 'Jugador', 'Inventado7', '2018-06-19', 'marc.jpg'),
(428, 36, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(429, 36, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(430, 36, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(431, 36, 'Jugador', 'Inventado11', '2018-06-19', 'marc.jpg'),
(432, 36, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg'),
(433, 37, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(434, 37, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(435, 37, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(436, 37, 'Jugador', 'Inventado4', '2018-06-19', 'pau.jpg'),
(437, 37, 'Jugador', 'Inventado5', '2018-06-19', 'llul.jpg'),
(438, 37, 'Jugador', 'Inventado6', '2018-06-19', 'pau.jpg'),
(439, 37, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(440, 37, 'Jugador', 'Inventado8', '2018-06-19', 'sanemeterio.jpg'),
(441, 37, 'Jugador', 'Inventado9', '2018-06-19', 'pau.jpg'),
(442, 37, 'Jugador', 'Inventado10', '2018-06-19', 'sanemeterio.jpg'),
(443, 37, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(444, 37, 'Jugador', 'Inventado12', '2018-06-19', 'marc.jpg'),
(445, 38, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(446, 38, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(447, 38, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(448, 38, 'Jugador', 'Inventado4', '2018-06-19', 'marc.jpg'),
(449, 38, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(450, 38, 'Jugador', 'Inventado6', '2018-06-19', 'sanemeterio.jpg'),
(451, 38, 'Jugador', 'Inventado7', '2018-06-19', 'llul.jpg'),
(452, 38, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(453, 38, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(454, 38, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(455, 38, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(456, 38, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(457, 39, 'Jugador', 'Inventado1', '2018-06-19', 'llul.jpg'),
(458, 39, 'Jugador', 'Inventado2', '2018-06-19', 'pau.jpg'),
(459, 39, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(460, 39, 'Jugador', 'Inventado4', '2018-06-19', 'marc.jpg'),
(461, 39, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(462, 39, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(463, 39, 'Jugador', 'Inventado7', '2018-06-19', 'llul.jpg'),
(464, 39, 'Jugador', 'Inventado8', '2018-06-19', 'pau.jpg'),
(465, 39, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(466, 39, 'Jugador', 'Inventado10', '2018-06-19', 'marc.jpg'),
(467, 39, 'Jugador', 'Inventado11', '2018-06-19', 'pau.jpg'),
(468, 39, 'Jugador', 'Inventado12', '2018-06-19', 'sanemeterio.jpg'),
(469, 40, 'Jugador', 'Inventado1', '2018-06-19', 'pau.jpg'),
(470, 40, 'Jugador', 'Inventado2', '2018-06-19', 'sanemeterio.jpg'),
(471, 40, 'Jugador', 'Inventado3', '2018-06-19', 'pau.jpg'),
(472, 40, 'Jugador', 'Inventado4', '2018-06-19', 'sanemeterio.jpg'),
(473, 40, 'Jugador', 'Inventado5', '2018-06-19', 'pau.jpg'),
(474, 40, 'Jugador', 'Inventado6', '2018-06-19', 'marc.jpg'),
(475, 40, 'Jugador', 'Inventado7', '2018-06-19', 'pau.jpg'),
(476, 40, 'Jugador', 'Inventado8', '2018-06-19', 'llul.jpg'),
(477, 40, 'Jugador', 'Inventado9', '2018-06-19', 'sanemeterio.jpg'),
(478, 40, 'Jugador', 'Inventado10', '2018-06-19', 'pau.jpg'),
(479, 40, 'Jugador', 'Inventado11', '2018-06-19', 'sanemeterio.jpg'),
(480, 40, 'Jugador', 'Inventado12', '2018-06-19', 'pau.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuario_ligas`
--

CREATE TABLE `anuario_ligas` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `anuario_ligas`
--

INSERT INTO `anuario_ligas` (`id`, `nombre`) VALUES
(1, 'Primera'),
(2, 'Segunda'),
(3, 'Tercera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuario_relacion`
--

CREATE TABLE `anuario_relacion` (
  `id` int(10) NOT NULL,
  `id_categoria` int(10) NOT NULL,
  `id_liga` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `anuario_relacion`
--

INSERT INTO `anuario_relacion` (`id`, `id_categoria`, `id_liga`, `nombre`, `genero`) VALUES
(1, 1, 1, 'Primera Senior', 'masculino'),
(2, 1, 2, 'Segunda Senior', 'masculino'),
(3, 1, 3, 'Tercera Senior', 'masculino'),
(4, 1, 1, 'Primera Senior', 'femenino'),
(5, 1, 2, 'Segunda Senior', 'femenino'),
(6, 2, 1, 'Primera junior', 'masculino'),
(7, 2, 2, 'Segunda junior', 'masculino'),
(8, 2, 3, 'Tercera junior', 'masculino'),
(9, 2, 1, 'Primera junior', 'femenino'),
(10, 2, 2, 'Segunda junior', 'femenino'),
(11, 2, 3, 'Tercera junior', 'femenino'),
(12, 3, 1, 'Primera cadete', 'masculino'),
(13, 3, 2, 'Segunda cadete', 'masculino'),
(14, 3, 3, 'Tercera cadete', 'masculino'),
(15, 3, 1, 'Primera cadete', 'femenino'),
(16, 3, 2, 'Segunda cadete', 'femenino'),
(17, 3, 3, 'Tercera cadete', 'femenino'),
(18, 4, 1, 'Primera infantil', 'masculino'),
(19, 4, 2, 'Segunda infantil', 'masculino'),
(20, 4, 3, 'Tercera infantil', 'masculino'),
(21, 4, 1, 'Primera infantil', 'femenino'),
(22, 4, 2, 'Segunda infantil', 'femenino'),
(23, 4, 3, 'Tercera infantil', 'femenino'),
(24, 5, 1, 'Primera alevin', 'masculino'),
(25, 5, 2, 'Segunda alevin', 'masculino'),
(26, 5, 3, 'Tercera alevin', 'masculino'),
(27, 5, 1, 'Primera alevin', 'femenino'),
(28, 5, 2, 'Segunda alevin', 'femenino'),
(29, 5, 3, 'Tercera alevin', 'femenino'),
(30, 6, 1, 'Primera benjamin', 'masculino'),
(31, 6, 2, 'Segunda benjamin', 'masculino'),
(32, 6, 3, 'Tercera benjamin', 'masculino'),
(33, 6, 1, 'Primera benjamin', 'femenino'),
(34, 6, 2, 'Segunda benjamin', 'femenino'),
(35, 6, 3, 'Tercera benjamin', 'femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'inicio'),
(2, 'selecciones'),
(3, 'clubes'),
(4, 'arbitros'),
(5, 'slider'),
(6, 'agenda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(10) NOT NULL,
  `id_noticia` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `texto` varchar(500) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `id_categoria` int(10) NOT NULL,
  `id_subcategoria` int(10) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(50) DEFAULT NULL,
  `texto` varchar(1500) NOT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `id_usuario`, `id_categoria`, `id_subcategoria`, `titulo`, `subtitulo`, `texto`, `fecha`, `imagen`) VALUES
(12, 3, 5, 9, 'NOTICIA SLIDER', 'subtitulo slider', 'texto slider', '2018-06-19', '1.jpg'),
(13, 3, 5, 9, 'NOTICIA SLIDER2', 'subtitulo slider2', 'texto slider', '2018-06-19', 'calprifem.jpg'),
(14, 3, 5, 9, 'NOTICIA SLIDER3', 'subtitulo slider3', 'texto slider', '2018-06-19', 'carlomar.jpg'),
(15, 3, 5, 9, 'NOTICIA SLIDER4', 'subtitulo slider4', 'texto slider', '2018-06-19', 'copaaf18.jpg'),
(16, 3, 6, 10, 'NOTICIA AGENDA', 'subtitulo agenda', 'texto agenda', '2018-06-19', NULL),
(17, 3, 6, 10, 'NOTICIA agenda2', 'subtitulo agenda2', 'texto agenda2', '2018-06-19', NULL),
(18, 1, 1, 1, 'CURSO INICIACIÓN', 'Del 23 al 29 de Junio', 'El sábado 23 de Junio dará comienzo el curso de Entrenador de nivel Iniciación el cual se desarrollará en gran parte en el Pabellón Mies del Corro de Solares. Como siempre todas las clases son abiertas y a las cuales se puede asistir como oyente de forma gratuita. Una vez finalizado este curso, se realizarán los de Nivel I y Nivel II. ', '2018-06-19', 'cursoiniciacion.jpg'),
(19, 1, 1, 1, 'TRIUNFO ESPECIAL', 'Las chicas se imponen a Castilla y León', 'En el día de hoy victoria de los chicos frente a Melilla 97-56 y gran partido de las chicas ganando a Castilla y León 48-41. Comenzó el Campeonato de España de Selecciones de Minibasket, la Selección Femenina debutó contra Andalucía perdiendo 24-75. Lo chicos de Alejandro González, jugaron su primer partido frente a Castilla-La Mancha con victoria 56-59. Por la tarde nuevo encuentro para las chica', '2018-06-19', 'seleccion18.JPG'),
(20, 1, 1, 1, 'DIA DEL MINI IGUALATORIO', 'Por fin sin lluvia', 'Despues de varios año, por fin el tiempo nos dio una tregua y pudimos completar un gran día del mini. Los más de 600 deportistas que se dieron cita en el Complejo Ruth Beitia de Santander disfrutaron todo el día jugando al baloncesto y la presión sin pensar en el marcador, donde no existian los rivales. Este año los asistentes contaron con un detalle por parte de nuestro patrocinador Igualatorio C', '2018-06-19', 'mini.jpeg'),
(21, 1, 1, 1, 'REVISTA DIGITAL DE FEBRERO', 'La número 15 está disponible', 'El segundo mes de 2018 se cierra, el baloncesto de Cantabria sigue en marcha. Como es habitual, en la revista, las noticias y clasificaciones de los equipos nacionales de febrero. En la Liga EBA, Igualatorio Cantabria Estela sigue en racha, con tan solo una derrota y además buenos resultados, sobre todo de Pas Piélagos. En Primera Femenina termina la primera fase y Tirso afronta la segunda a por e', '2018-06-19', 'RD15.jpg'),
(22, 1, 1, 1, ' CAMPEONES DE PREFERENTE', 'Los alevines ganan a Asturias en la final', 'Extraordinario éxito de los chicos, tremendo lo conseguido, ayer el ascenso al grupo superior para 2019, esta vez frente a Extremadura, ganaron 62-66. Ahora ha sido en la final de preferente frente a Asturias. Un gran partido y victoria 58-53 y son Campeones de España de preferente. No pudo ser para las chicas, derrota frente a Aragón (46-76). La permanencia en especial estaba en juego, en el 2019', '2018-06-19', 'campeones.JPG'),
(23, 1, 1, 1, 'SI SE PUEDE', 'Las chicas a permanecer y los chicos a ascender', 'En el día de hoy derrota de los chicos frente a Asturias 55-69 que fueron mejores a pesar de la lucha de los chicos de Alex González. Las chicas tambien perdieron su partido frente a Galicia 39-86 que jugó un partido muy superior a las chicas de Lucas Vidania. Quizás pagaron el esfuerzo de su gran victoria frente a Castilla y León la noche anterior. Las alevines jugarán los cruces frente a Aragón ', '2018-06-19', 'sepuede.JPG'),
(24, 1, 1, 1, 'ANA FDEZ-NAVAMUEL LIBERTY 2017', 'La Más Valorada Liberty Seguros', 'Ana Fernández-Navamuel, de Ventanas Arsán es la Jugadora Sénior Femenina Más Valorada Liberty Seguros 2017, siendo la que más votos ha recibido por parte de los entrenadores de la Fase Final de Liga. El quinteto de la Liga de las más valoradas Liberty Seguros 2017, esta formado por la base Alba Puente (SD Nueva Montaña), como escolta Ana Fernandez-Navamuel (Ventanas Arsan Astillero), es Alero Mari', '2018-06-19', 'mvpsf.jpeg'),
(25, 1, 1, 1, 'CBT TORRELAVEGA CAMPEÓN', 'Derby Final con La Paz en el Pabellón de Cueto', 'En un pabellón lleno a rebosar de público, el CBT que había ganado en semifinales a La Toba Amide, se proclamó campeón en una interesante final entre lo dos equipos con rivalidad local de Torrelavega, vencieron a La Paz 70-56. Estos habían derrotado a UC Cantbasket A en semifinales. CBT adquiere plaza para jugar en la Liga EBA para la temporada 17-18 que deberán refrendar en los despachos con', '2018-06-19', 'cbtaut.jpg'),
(26, 1, 1, 1, 'PIÉLAGOS Y SOLARES CAMPEONES', 'De Cantabria de la categoría cadete', 'Se jugaron las finales cadetes de Primera División en el Pabellón de Soto de la Marina, que disfrutó de un gran ambiente, Piélagos venció en la femenina a Selaya 58-39, mientras en categoría masculina resultó ganador Baloncesto Solares ganando en la final a Bezana 55-61. En Segunda División también hubo finales teniendo como vencedores a Carlomar Torrelavega en chicos y Baloncesto Solares A en la ', '2018-06-19', 'saulalonso.jpg'),
(27, 1, 1, 1, 'FASE DE ASCENSO A LEB PLATA', 'Igualatorio Cantabria Estela organiza una de las F', 'Merced a su triunfo en la prorroga 79-75 frente al primero del subgrupo AB, Chantada, los cántabros de Estela quedan primeros del Grupo A de la Liga EBA y organizarán 19, 20 y 21 de mayo la Fase de Ascenso a Plata junto al segundo de Madrid (Grupo B), Real Canoe, el 3º del grupo C, Mollet y el 3º del Grupo E, Valencia Basket. El Palacio vivirá un finde semana de gala con diferentes actividades org', '2018-06-19', 'julioestela.jpg'),
(28, 1, 1, 1, 'CAMPEONES BENJAMINES', 'Cantbasket y Escolapios vencen en las finales', 'Se jugaron las finales benjamines de Primera División en el Colegio San Agustín Cantbasket Angeles Custodios ganó a Arsán Astillero (75-47) en la masculina y Escolapios hizo lo propio venciendo a Selaya no Fracking (43-63). En semifinales habían participado Calasanz y Baloncesto Solares en los chicos, y en la categoría femenina San Agustín y EDM Torrelavega A. En Segunda División La Vegana Amide e', '2018-06-19', 'ffbenj.jpg'),
(29, 1, 1, 1, 'CAMPEONES DE LIGA', 'Igualatorio Cantabria Estela', 'Con la victoria sobre el Easo en San Sebastian 77-70 los cántabros se han proclamado campeones del subgrupo AA de la Liga EBA donde están encuadrados nuestro equipos. Se jugarán el Campeonato del Grupo A del Norte frente a Chantada el 6 de Mayo en Santander y con ello organizar como locales la Fase de ascenso a LEB PLata el fin de semana del 20 de mayo. Por otro lado derrota de Gallofa en Tolosa 5', '2018-06-19', 'estelabis.JPG'),
(30, 1, 1, 1, 'PLAZA 3X3 CAIXABANK 2017', 'Día espectacular', 'Exito en Santander del circuito Plaza 3x3CAIXABANK como primera de las diez sedes del circuito de este año. Desde las 9:30h hasta las 19:00h en la Plaza Porticada se jugaron todas las categorías de Premini a Senior encuentros 3x3 de diez minutos. Por otro lado, hubo actividades lúdicas y clinics en dos pistas habilitadas al efecto que son la pista Caixabank y la Universo mujer. Santander recibió l', '2018-06-19', 'plaza.jpg'),
(31, 1, 2, 2, 'SELECCIONES CADETES', 'Último entrenamiento', 'Las Selecciones Cadetes se ejercitarán este Domingo en los Pabellones Mies del Corro de Solares los chicos y Matilde de la Torre en Maliaño entrenarán las chicas.', '2018-06-19', 'seleccad.png'),
(32, 1, 2, 2, 'SELECCIONES INFANTILES', 'Trabajo de tarde', 'Las Selecciones Infantiles cerrarán la temporada de entrenamientos el Domingo por la tarde en el Pabellón Juan de Herrera de Maliaño.', '2018-06-19', 'selecinf.png'),
(33, 1, 2, 2, 'SELECCIONES ALEVINES', 'Sesión para las chicas', 'Domingo por la mañana entrenamiento para la Selección Alevín Femenina en el Pabellón Mies del Corro\r\n', '2018-06-19', 'selecalev.png'),
(34, 1, 2, 2, 'LA ACADEMIA', 'En el Juan de Herrera', 'Entrenamiento de los equipos de la Academia este domingo en el Pabellón Juan de Herrera de Maliaño desde las 16h. ', '2018-06-19', 'acade.png'),
(35, 1, 2, 2, 'SEGUIMIENTO', 'Entrenamiento en Juan de herrera', 'Entrenamiento el Domingo por la tarde de las Selección Femenina de Seguimiento en el Pabellón Juan de herrera de Maliaño ', '2018-06-19', 'segui.png'),
(36, 1, 2, 3, 'Selección Cadete Masculina 2017', ' 3 DE ENERO EN HUELVA', 'Los jugadores y cuerpo técnico de la Selección Cadete Masculina 2017, que del 3 al 7 de enero disputó en Huelva el Campeonato de España de Selecciones Autonómica Cadetes. Los cántabros volvieron a conseguir la permanencia entre los mejores con un séptimo lugar en la clasificación final. A destacar el partido jugado y ganado contra Extremadura en la primera fase del Campeonato y el buen partido dis', '2018-06-19', 'cm17.JPG'),
(37, 1, 2, 3, 'Selección Cadete Femenina 2017', '3 DE ENERO EN HUELVA', 'Aquí tenemos la relación de jugadoras y cuerpo técnico de la Selección Cadete Femenina 2017, que del 3 al 7 de enero disputó en Huelva el Campeonato de España de Selecciones Autonómica Cadetes. Las cántabras firmaron un gran campeonato jugando el partido por el ascenso, en el que cayeron derrotadas por Asturias. Muy bueno el Torneo de las chicas que estuvieron muy cerca de conseguir un nuevo ascen', '2018-06-19', 'cf17.JPG'),
(38, 1, 2, 3, 'Selección Cadete Masculina 2016', 'HUELVA 3 A 7 DE ENERO', 'Los jugadores y cuerpo técnico de la Selección Cadete Masculina 2016, que del 3 al 7 de enero disputó en Huelva el Campeonato de España de Selecciones Autonómica Cadetes. Los cántabros volvieron a conseguir la permanencia entre los mejores para el año siguiente, con un octavo puesto en la clasificación final. A destacar el partido jugado y ganado contra Castilla y León en la segunda fase del Campe', '2018-06-19', 'cm16.JPG'),
(39, 1, 2, 3, 'Selección Cadete Femenina 2016', '3 A 7 DE ENERO EN HUELVA', 'Aquí tenemos la relación de jugadoras y cuerpo técnico de la Selección Cadete Femenina 2016, que del 3 al 7 de enero disputó en Huelva el Campeonato de España de Selecciones Autonómica Cadetes. Las cántabras alcanzaron la posición quince final al ganar el partido final por el quinto puesto del grupo preferente. ', '2018-06-19', 'cf16.JPG'),
(40, 1, 2, 3, 'Selección Cadete Masculina 2015', 'VALLADOLID 3 A 7 DE ENERO', 'Los jugadores y cuerpo técnico de la Selección Cadete Masculina 2017, que del 3 al 7 de enero disputaron en Valladolid el Campeonato de España de Selecciones Autonómica Cadetes. Los cántabros consiguieron la permanencia entre los mejores con un séptimo puesto en la clasificación final, gracias a un destacado triunfo frente a Baleares. ', '2018-06-19', 'cm15.JPG'),
(41, 1, 2, 3, 'Selección Cadete Femenina 2015', '3 A 7 DE ENERO EN VALLADOLID', 'Aquí tenemos la relación de jugadoras y cuerpo técnico de la Selección Cadete Femenina 2015, que del 3 al 7 de enero disputó en Valladolid el Campeonato de España de Selecciones Autonómica Cadetes. Las cántabras intentaron el ascenso que finalmente no alcanzaron y tuvieron que conformarse con el cuarto puesto en Preferente, posición catorce en la tabla total. ', '2018-06-19', 'cf15.JPG'),
(42, 1, 2, 4, 'Selección Infantil Masculina 2017', '3-7 DE ENERO EN HUELVA', 'La relación de jugadores y cuerpo técnico de la Selección Infantil Masculina 2017, que del 3 al 7 de enero disputó en Huelva el Campeonato de España de Selecciones Autonómica Infantiles. Los cántabros alcanzaron el quinto lugar en la clasificación del grupo Preferente, la posición quince en el total. A destacar el partido jugado y ganado contra Castilla la Mancha en la segunda fase del Torneo. ', '2018-06-19', 'im17.JPG'),
(43, 1, 2, 4, 'Selección Infantil Femenina 2017', '3 DE ENERO EN HUELVA', 'Aquí tenemos la relación de jugadoras y cuerpo técnico de la Selección Cadete Femenina 2017, que del 3 al 7 de enero disputó en Huelva el Campeonato de España de Selecciones Autonómica Cadetes. Las cántabras firmaron un gran campeonato jugando el partido por el ascenso, en el que cayeron derrotadas por Navarra. Excelente la competición y el Torneo de las chicas que estuvieron muy cerca de consegui', '2018-06-19', 'if17.JPG'),
(44, 1, 2, 4, ' Selección Infantil Masculina 2016', 'HUELVA 3 A 7 DE ENERO', 'Los jugadores y cuerpo técnico de la Selección Infantil Masculina 2016, que del 3 al 7 de enero disputó en Huelva el Campeonato de España de Selecciones Autonómica Infantiles. Los cántabros conseguieron el ascenso en un gran Campeonato, jugando la final del Grupo Preferente. A destacar el partido jugado y ganado contra Asturias en la segunda fase del Campeonato que valió el ascenso para el equipo ', '2018-06-19', 'im16.jpg'),
(45, 1, 2, 4, 'Selección Infantil Femenina 2016', '3 DE ENERO EN HUELVA', 'Aquí tenemos la relación de jugadoras y cuerpo técnico de la Selección Cadete Femenina 2016, que del 3 al 7 de enero disputó en Huelva el Campeonato de España de Selecciones Autonómica Cadetes. Las cántabras alcanzaron la posición trece final tras jugar por el ascenso en el grupo preferente siendo derrotadas por Murcia en un buen partido. ', '2018-06-19', 'if16.jpg'),
(46, 1, 2, 4, 'Selección Infantil Masculina 2015', 'ZARAGOZA 1-4 DE ABRIL', 'Los jugadores y cuerpo técnico de la Selección Infantil Masculina 2015, que del 1 al 4 de abril disputaron en Zaragoza el Campeonato de España de Selecciones Autonómica Infantiles. Los cántabros consiguieron la quinta posición en el grupo preferente con un quince puesto en la clasificación final, gracias a un destacado triunfo frente a Navarra. ', '2018-06-19', 'im15.jpg'),
(47, 1, 2, 4, 'Selección Infantil Femenina 2015', '1 A 4 DE ABRIL EN VALLADOLID', 'Aquí tenemos la relación de jugadoras y cuerpo técnico de la Selección Infantil Femenina 2015, que del 1 al 4 de abril disputó en Zaragoza el Campeonato de España de Selecciones Autonómica Infantiles. Las cántabras intentaron el ascenso que finalmente no alcanzaron y tuvieron que conformarse con el quinto puesto en Preferente, posición quince en la tabla total.\r\n', '2018-06-19', 'if15.jpg'),
(48, 1, 2, 5, 'Selección Alevín Masculina 2017', ' 8-12 DE ABRIL EN SAN FERNANDO', 'La relación de jugadores y cuerpo técnico de la Selección Alevín Masculina 2017, que del 8 al 12 de abril participará en San Fernando en el Campeonato de España de Selecciones Autonómicas Alevines. Los cántabros buscarán la permanencia en el grupo Especial donde jugarán contra Canarias, Valencia, Aragón y Madrid en la primera Fase. ', '2018-06-19', 'am17.JPG'),
(49, 1, 2, 5, 'Selección Alevín Femenina 2017', '8-12 DE ABRIL DE 2017', 'Aquí tenemos la relación de jugadoras y cuerpo técnico de la Selección Alevín Femenina 2017, que del 8 al 12 de Abril disputará en San Fernando el Campeonato de España de Selecciones Autonómicas de Minibasket. Las cántabras intentarán hacer un gran campeonato y tratar de conseguir un ascenso que se resiste en la categoría femenina, para ello en frente las selecciones de Navarra, La Rioja y Castill', '2018-06-19', 'af17.JPG'),
(50, 1, 2, 5, 'Selección Infantil Masculina 2016', 'HUELVA 3 A 7 DE ENERO', 'Los jugadores y cuerpo técnico de la Selección Infantil Masculina 2016, que del 3 al 7 de enero disputó en Huelva el Campeonato de España de Selecciones Autonómica Infantiles. Los cántabros conseguieron el ascenso en un gran Campeonato, jugando la final del Grupo Preferente. A destacar el partido jugado y ganado contra Asturias en la segunda fase del Campeonato que valió el ascenso para el equipo ', '2018-06-19', 'im166.jpg'),
(51, 1, 2, 5, 'Selección Infantil Femenina 2016', '3 A 7 DE ENERO DE 2016', 'Aquí tenemos la relación de jugadoras y cuerpo técnico de la Selección Cadete Femenina 2016, que del 3 al 7 de enero disputó en Huelva el Campeonato de España de Selecciones Autonómica Cadetes. Las cántabras alcanzaron la posición trece final tras jugar por el ascenso en el grupo preferente siendo derrotadas por Murcia en un buen partido. ', '2018-06-19', 'if166.jpg'),
(52, 1, 2, 5, 'Selección Infantil Masculina 2015', 'ZARAGOZA 1-4 DE ABRIL', 'Los jugadores y cuerpo técnico de la Selección Infantil Masculina 2015, que del 1 al 4 de abril disputaron en Zaragoza el Campeonato de España de Selecciones Autonómica Infantiles. Los cántabros consiguieron la quinta posición en el grupo preferente con un quince puesto en la clasificación final, gracias a un destacado triunfo frente a Navarra. ', '2018-06-19', 'im155.jpg'),
(53, 1, 2, 5, 'Selección Infantil Femenina 2015', '1 A 4 DE ABRIL DE 2015', 'Aquí tenemos la relación de jugadoras y cuerpo técnico de la Selección Infantil Femenina 2015, que del 1 al 4 de abril disputó en Zaragoza el Campeonato de España de Selecciones Autonómica Infantiles. Las cántabras intentaron el ascenso que finalmente no alcanzaron y tuvieron que conformarse con el quinto puesto en Preferente, posición quince en la tabla total. ', '2018-06-19', 'if155.jpg'),
(54, 1, 3, 6, 'CANASTA SOAMLIDARIA 2017', '30 de Diciembre en la Habana Vieja a las 9:30 h', 'Fiesta solidaria de baloncesto, organizada por el S.O.A.M. y la Casa de los Muchachos de la Fundación Amigó en Torrelavega con el objetivo de transformar el futuro de cientos de niños en situación de vulnerabilidad en República Dominicana y Colombia. Habrá campeonatos de tiro (libres, triples y por parejas) en tres categorías (minibasket, infantil-cadete y junior-sénior). Los torneos estarán abiertos a cualquier persona de cualquier edad: competiciones con carácter de participación universal. Existirá una zona lúdica, con diferentes juegos, talleres, y actividades diversas y una zona con hinchables para los más pequeños, y barra con refrescos y pinchos a precios populares. Paralelamente, el RETO 2017 que consiste en que un educador del S.O.A.M. DANIEL ALLENDE intentará anotar el número máximo de tiros libres en solidarios durante toda la jornada, durante 8 horas. Los asistentes podrán poner un precio por canasta encestada para realizar su donativo. ', '2018-06-19', 'allende.jpg'),
(55, 1, 3, 6, '3x3 DE NAVIDAD EN BEZANA', '28 de diciembre y 5 de Enero', 'El Ayuntamiento de Santa Cruz de Bezana organiza una competición de 3x3 de Navidad en el Pabellón de Soto de la Marina para las categorías de mini, infantil, cadete y júnior. Los más pequeños de canasta mini (chicos y chicas) tendrán su momento el 28 de diciembre de 10:00 - 13:30 h mientras los más mayores podrán jugar en equipos de tres el viernes 5 de enero en igual horario. Las inscripciones se pueden hacer al teléfono 697532351. El Baloncesto Bezana cumple 20 años de actividad y es uno de los actos que se organizan por ello. ', '2018-06-19', 'bezana3x3.jpg'),
(57, 1, 3, 6, 'IGUALATORIO CANTABRIA LIDER ', 'Acabó el año invicto en EBA', 'Tras once jornadas en la Liga EBA, Igualatorio Cantabria Estela lídera el grupo con once victorias y ninguna derrota, la calidad y experiencia de los de Pueyo se impusieron en todas las jornadas casi sin apuros. La Gallofa & CO se mantiene en los puestos de cabeza con ocho victorias y tan solo tres derrotas y puede optar a entrar en los puestos que den opción al ascenso. Pas Piélagos es nuestro equipo con más dificultades, lastrado por las lesiones solo conoce la victoria en la Liga en cuatro ocasiones y se encuentra en la parte baja de la clasificación pero empatados con los octavos por lo que hay que ser optimistas para la segunda parte de la competición. ', '2018-06-19', 'estela1.jpg'),
(58, 1, 3, 6, 'APOYO A LA ASOCIACIÓN AMARA', '26 de Marzo en Renedo de Piélagos', 'La AB Pas como organizador junto a Canbasket como colaborador y con motivo del derbi del próximo domingo a las 18 h en Renedo de Piélagos ponen en marcha una jonada de convivencia entre la cantera de ambos clubes en la que habrá una actividad de baby basket, partidos amistosos, una comida popular (3 €) con música y otra serie de actos que culminarán con el interesante partido que disputarán los equipos EBA de ambos clubes correspondiente a la jornada 22, la entrada al mismo será de 2 €. Toda la recaudación va para ayudar a la Asociación Amara que está dedicada al apoyo a familias con niños enfermos de cáncer. ', '2018-06-19', 'amara.jpg'),
(59, 1, 3, 6, 'SEGUIMOS CRECIENDO, 214 EQUIPOS', 'VEINTIDOS EQUIPOS MÁS QUE LA PASADA TEMPORADA', 'Una vez acabada la inscripción para las categorías cadete, infantil, alevín y benjamín sigue la progresión en positivo del número de practicantes al baloncesto en nuestra comunidad. El crecimiento esta vez es de 22 equipos más, que la pasada 2015-16. Comenzarán a jugar a partir del 15 de Octubre hasta las finales del mes de mayo. Destacan los 40 equipos de la categoría Alevín masculino, 36 de la benjamín y los 35 de la infantil. En chicas tambien hay un ligero aumento en las deportistas que escogen el baloncesto como su deporte preferido en nuestra región. ', '2018-06-19', 'creciendo.jpg'),
(60, 1, 3, 7, 'EN PIÉLAGOS, ADB PAS', '38 años viviendo el Baloncesto', 'Un historico del baloncesto de Cantabria, que cuenta en la actualidad con 16 equipos, además de 4 equipos de Baby basket. El ADB Pas, cuenta en sus filas con el equipo EBA, el equipo cántabro que más temporadas lleva en la categoría de la FEB. Es uno de los Clubes más grandes de la región, ya que cuenta con más de 300 deportistas de un Ayuntamiento importante como es Piélagos. Tienen tres focos principales de baloncesto en Liencres, Parbayón y Renedo de Piélagos. ', '2018-06-19', 'logpas.jpg'),
(61, 1, 3, 7, 'ESTELA, HACIENDO HISTORIA', 'Líder indiscutible', 'CD Estela, puede presumir, de estar batiendo todos los records con su equipo EBA, actual lider de la categoría y único equipo invicto en las competiciones nacionales FEB. Tras siete años en la competición, este año sueñan con lograr ascender a LEB Plata, tras dos intentos fallidos en 2011 y 2012, seguro que este es el año. El CD Estela, poco a poco sigue creciendo, este año vuelve a contar con un equipo sénior y añade a su club otro júnior masculino, que refuerzan al EBA. Estela juega en el Palacio de los Deportes y en Pabellones Municipales su cantera. ', '2018-06-19', 'logestela.png'),
(62, 1, 3, 7, 'CANTBASKET, 13 AÑOS DE EVOLUCIÓN', 'La cantera, pilar fundamental', 'Trece temporadas en los que AD Cantbasket, ha ido evolucionando llegando a ser uno de los Clubes de referencia de Cantabria. Un club con una extensa cantera con equipos en todas las categorías y el primer equipo, el senior masculino, en Liga EBA ya por tercera temporada consecutiva. Los focos de baloncesto los tienen en varios colegios e institutos donde juegan sus partidos en Santander. ', '2018-06-19', 'logcantbasket.png'),
(63, 1, 3, 7, 'FEMENINO POR EXCELENCIA, ARSAN', 'Creciendo año tras año', 'Más de un cuarto de siglo de Baloncesto en Astillero, donde el baloncesto femenino es el eje fundamental del Club, pero sin descuidar el masculino, cuenta esta temporada con un total de 23 equipos, siendo el 1ª Femenina el de mayor categoria, y del que pueden presumir de ser uno de los equipos mas veteranos de la categoría. Su cantera es la de la Escuela Municipal de Astillero y los equipos de Selaya con los que manienen un acuerdo de colaboración desde hace varias temporadas. Ventanas Arsán es el patrocinador más veterano del baloncesto cántabro y la base del club de Astillero. ', '2018-06-19', 'logarsan.png'),
(64, 1, 3, 7, 'UN JOVEN, CDE BLUEWHITE', 'Debutantes en 1ª Femenina', 'Es un club joven, pero integrado por gente con mucha experiencia, el Bluewhite, tras varios años en Segunda Senior Femenina, esta temporada han dado el salto a la Interautonómica Primera División Femenina, para lo que ha conformado un equipo joven, pero con ganas, ilusión y trabajo para obtener grandes resultados. Con el patrocinio del Grupo Tirso y del Igualatorio Cantabria juega sus encuentros en el Pabellón de Cueto. ', '2018-06-19', 'logtirso.png'),
(65, 1, 3, 7, 'UN CLÁSICO DE CANTABRIA, LA PAZ', 'Tradición de Torrelavega desde 1965', 'El club con más tradición en la localidad del Besaya por excelencia, Torrelavega, encargados de las Escuelas Municipales de Baloncesto del municipio, tiene de reponsables a Ramón Reigadas y Daniel García. Es el club de Cantabria con más títulos en categoría abasoluta. La Primera División ha sido de su propiedad en innumerables ocasiones y ahora quiere hacer lo propio en categoría femenina. ', '2018-06-19', 'loglapaz.png'),
(66, 1, 3, 7, 'CALASANZ TRADICION EN SANTANDER', 'Un colegio de Baloncesto', 'Un historico del baloncesto de Santander, que cuenta en la actualidad con 14 equipos, además de varios equipos de Baby basket. Es uno de los Clubes con más títulos de Liga de la región en categorías de Base masculina, hoy en día cuenta con el mismo número de equipos de niñas que de niños y ultimamente ha ganado varios títulos con las niñas. ', '2018-06-19', 'calasanz.png'),
(67, 1, 3, 7, 'ADB COLINDRES PARA ARRIBA', 'En 2018 cumplirá 25 años', 'Con casi un cuarto de siglo de historia, el ADB Colindres es uno de los Clubes con más tradición de Cantabria, el club se ha ido reinventando y en la presente temporada tiene más de cien licencias, contando además entre sus filas con el Alcalde de la localidad y un equipo senior masculino que ya suma veintidos temporadas consecutivas compitiendo. ', '2018-06-19', 'colindres.jpg'),
(68, 1, 6, 10, 'Del 30 de Junio al 14 de Julio. Curso Nivel I y II', '', 'El Pabellón Mies del Corro de Solares acogerá de forma simultanea los cursos de Entrenador de Nivel I y II de la Federación Cántabra.', '2018-06-20', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patrocinadores`
--

CREATE TABLE `patrocinadores` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `patrocinadores`
--

INSERT INTO `patrocinadores` (`id`, `nombre`, `url`, `imagen`) VALUES
(1, 'patrocinador1', 'http://www.google.es', 'alega.png'),
(2, 'patrocinador2', 'http://www.google.es', 'arsan.png'),
(3, 'patrocinador3', 'http://www.google.es', 'austral.png'),
(4, 'patrocinador4', 'http://www.google.es', 'baden.png'),
(5, 'patrocinador5', 'http://www.google.es', 'cantabria.png'),
(6, 'patrocinador6', 'http://www.google.es', 'dentomedic.png'),
(7, 'patrocinador7', 'http://www.google.es', 'dromedario.png'),
(8, 'patrocinador8', 'http://www.google.es', 'espaciojoven.png'),
(9, 'patrocinador9', 'http://www.google.es', 'feb.png'),
(10, 'patrocinador10', 'http://www.google.es', 'liberty.png'),
(11, 'patrocinador11', 'http://www.google.es', 'lostal.png'),
(12, 'patrocinador12', 'http://www.google.es', 'lupefer.png'),
(13, 'patrocinador13', 'http://www.google.es', 'seur.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(4) NOT NULL,
  `descripcion` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Redactor Jefe'),
(3, 'Redactor'),
(4, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(10) NOT NULL,
  `id_categoria` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `id_categoria`, `nombre`) VALUES
(1, 1, 'noticias_index'),
(2, 2, 'convocatorias_selecciones'),
(3, 2, 'cadetes_selecciones'),
(4, 2, 'infantiles_selecciones'),
(5, 2, 'alevines_selecciones'),
(6, 3, 'noticias_clubes'),
(7, 3, 'nuestros_clubes'),
(8, 4, 'charlas_arbitros'),
(9, 5, 'noticias_slider'),
(10, 6, 'noticias_agenda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `nombreUsuario` varchar(50) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `contrasenia` varchar(30) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `id_permiso` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombreUsuario`, `nombre`, `apellido`, `contrasenia`, `telefono`, `id_permiso`) VALUES
(1, 'admin', 'Jesus', 'Bueno', 'admin', NULL, 1),
(2, 'redac', 'Redactor', 'Jefe', 'admin', NULL, 2),
(3, 'redacsen', 'Redactor', 'sencillo', 'admin', NULL, 3),
(4, 'redacsen2', 'Redactor2', 'sencillo2', 'admin', NULL, 3),
(5, 'usuar', 'Usuario', 'normal', 'admin', NULL, 4),
(6, 'usuar2', 'Prueba1', 'normal', 'admin', NULL, 4),
(7, 'ererer', 'ererer', 'ererer', 'ererer', 0, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuario_categorias`
--
ALTER TABLE `anuario_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `anuario_clubes`
--
ALTER TABLE `anuario_clubes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `anuario_equipos`
--
ALTER TABLE `anuario_equipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipos_fk1` (`id_club`),
  ADD KEY `equipos_fk2` (`id_relacion`);

--
-- Indices de la tabla `anuario_jugadores`
--
ALTER TABLE `anuario_jugadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jugadores_fk1` (`id_equipo`);

--
-- Indices de la tabla `anuario_ligas`
--
ALTER TABLE `anuario_ligas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `anuario_relacion`
--
ALTER TABLE `anuario_relacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relacion_fk1` (`id_categoria`),
  ADD KEY `relacion_fk2` (`id_liga`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comentarios_fk1` (`id_usuario`),
  ADD KEY `comentarios_fk2` (`id_noticia`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticias_fk1` (`id_usuario`),
  ADD KEY `noticias_fk2` (`id_categoria`),
  ADD KEY `noticias_fk3` (`id_subcategoria`);

--
-- Indices de la tabla `patrocinadores`
--
ALTER TABLE `patrocinadores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombreUsuario` (`nombreUsuario`),
  ADD KEY `usuarios_fk` (`id_permiso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuario_categorias`
--
ALTER TABLE `anuario_categorias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `anuario_clubes`
--
ALTER TABLE `anuario_clubes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `anuario_equipos`
--
ALTER TABLE `anuario_equipos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `anuario_jugadores`
--
ALTER TABLE `anuario_jugadores`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT de la tabla `anuario_ligas`
--
ALTER TABLE `anuario_ligas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `anuario_relacion`
--
ALTER TABLE `anuario_relacion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `patrocinadores`
--
ALTER TABLE `patrocinadores`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuario_equipos`
--
ALTER TABLE `anuario_equipos`
  ADD CONSTRAINT `equipos_fk1` FOREIGN KEY (`id_club`) REFERENCES `anuario_clubes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `equipos_fk2` FOREIGN KEY (`id_relacion`) REFERENCES `anuario_relacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `anuario_jugadores`
--
ALTER TABLE `anuario_jugadores`
  ADD CONSTRAINT `jugadores_fk1` FOREIGN KEY (`id_equipo`) REFERENCES `anuario_equipos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `anuario_relacion`
--
ALTER TABLE `anuario_relacion`
  ADD CONSTRAINT `relacion_fk1` FOREIGN KEY (`id_categoria`) REFERENCES `anuario_categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relacion_fk2` FOREIGN KEY (`id_liga`) REFERENCES `anuario_ligas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_fk1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_fk2` FOREIGN KEY (`id_noticia`) REFERENCES `noticias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_fk1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticias_fk2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticias_fk3` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_fk` FOREIGN KEY (`id_permiso`) REFERENCES `permisos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
