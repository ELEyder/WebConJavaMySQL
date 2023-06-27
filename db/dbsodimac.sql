use b2uyzc6bibnnpemtxbwu;
-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-06-2023 a las 04:39:47
-- Versión del servidor: 5.6.13
-- Versión de PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dbsodimac`
--
CREATE DATABASE IF NOT EXISTS `b2uyzc6bibnnpemtxbwu` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `b2uyzc6bibnnpemtxbwu`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbarticulos`
--

CREATE TABLE IF NOT EXISTS `tbarticulos` (
  `id` varchar(15) NOT NULL,
  `articulo` varchar(50) NOT NULL,
  `precio` decimal(25,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbarticulos`
--

INSERT INTO `tbarticulos` (`id`, `articulo`, `precio`) VALUES
('1', 'Inodoro One Piece Vittoria Blanco', '419.90');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbusers`
--

CREATE TABLE IF NOT EXISTS `tbusers` (
  `id` varchar(15) NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbusers`
--

INSERT INTO `tbusers` (`id`, `nombres`, `apellidos`, `usuario`, `correo`, `clave`) VALUES
('1', 'Eyder', 'Huayta Tantavilca', 'eyder26', 'eyderhuayta26@gmail.com', 'eyder26');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
