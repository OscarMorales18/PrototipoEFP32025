-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2025 a las 20:07:06
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cuartaserie`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id_bitacora` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_aplicacion` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `nombre_pc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id_bitacora`, `id_usuario`, `id_aplicacion`, `fecha`, `ip`, `accion`, `nombre_pc`) VALUES
(1, 2026, 1, '2025-06-04 12:00:02', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(2, 2026, 1, '2025-06-04 12:17:10', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(3, 2026, 201, '2025-06-04 12:17:27', '192.168.1.4', 'Ingreso Datos Perfiles', 'LenovoIdeaPadS3'),
(4, 2026, 201, '2025-06-04 12:17:35', '192.168.1.4', 'Ingreso Datos Perfiles', 'LenovoIdeaPadS3'),
(5, 2026, 1, '2025-06-04 12:17:59', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(6, 2026, 201, '2025-06-04 12:18:14', '192.168.1.4', 'Ingreso Datos Perfiles', 'LenovoIdeaPadS3'),
(7, 2026, 1, '2025-06-04 12:40:02', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(8, 2026, 1, '2025-06-04 12:41:10', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(9, 2026, 100, '2025-06-04 12:41:23', '192.168.1.4', 'Ingreso Datos Usuario', 'LenovoIdeaPadS3'),
(10, 2039, 1, '2025-06-04 12:41:39', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(11, 2026, 1, '2025-06-04 13:01:34', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(12, 2039, 1, '2025-06-04 13:33:00', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(13, 2039, 1, '2025-06-04 13:33:54', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(14, 2039, 101, '2025-06-04 13:34:25', '192.168.1.4', 'Ingreso Datos Vendedores', 'LenovoIdeaPadS3'),
(15, 2039, 101, '2025-06-04 13:34:29', '192.168.1.4', 'Borrar Datos Vendedores', 'LenovoIdeaPadS3'),
(16, 2039, 1, '2025-06-04 13:36:17', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(17, 2039, 1, '2025-06-04 13:37:58', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(18, 2039, 1, '2025-06-04 13:38:56', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(19, 2039, 1, '2025-06-04 13:42:02', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(20, 2039, 1, '2025-06-04 13:44:43', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(21, 2039, 1, '2025-06-05 11:55:23', '172.20.10.3', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(22, 2039, 1, '2025-06-05 11:56:49', '172.20.10.3', 'Inicio Sesion', 'LenovoIdeaPadS3'),
(23, 2039, 1, '2025-06-05 12:03:17', '172.20.10.3', 'Inicio Sesion', 'LenovoIdeaPadS3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE `bodega` (
  `pkid` varchar(15) NOT NULL,
  `fkidtipobodega` varchar(15) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `direccion` varchar(15) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `username`, `password`) VALUES
(2026, 'admin', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),
(2039, 'oscar', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id_bitacora`);

--
-- Indices de la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`pkid`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2040;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
