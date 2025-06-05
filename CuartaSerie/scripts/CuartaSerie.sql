-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2025 a las 21:45:36
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
(20, 2039, 1, '2025-06-04 13:44:43', '192.168.1.4', 'Inicio Sesion', 'LenovoIdeaPadS3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfil` int(10) NOT NULL,
  `nombre_perfil` varchar(85) DEFAULT NULL,
  `estatus_perfil` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfil`, `nombre_perfil`, `estatus_perfil`) VALUES
(100, 'Cliente', '1'),
(101, 'Proveedor', '1'),
(102, 'Compradores', '1'),
(103, 'OrdenCompra', '1'),
(111, 'Gerentes', '1'),
(145, 'Contadores', '1'),
(150, 'pepito', '1'),
(202, 'Programador', '1'),
(222, 'Proveedores', '1'),
(333, 'Inversores', '1'),
(500, 'pepito', '1');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE `vendedor` (
  `id_vendedor` int(11) NOT NULL,
  `nombre_vendedor` varchar(50) NOT NULL,
  `apellido_vendedor` varchar(50) NOT NULL,
  `telefono_vendedor` int(8) NOT NULL,
  `direccion_vendedor` varchar(50) NOT NULL,
  `correo_vendedor` varchar(50) NOT NULL,
  `estatus_vendedor` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id_bitacora`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`id_vendedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2040;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
