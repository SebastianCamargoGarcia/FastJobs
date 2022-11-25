-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2022 a las 20:47:19
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fastjobs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_aspirantes`
--

CREATE TABLE `cuentas_aspirantes` (
  `correo` varchar(150) DEFAULT NULL,
  `contraseña` varchar(100) NOT NULL,
  `id_aspirante` int(10) NOT NULL,
  `identificacion` int(20) NOT NULL,
  `nombre_apellido` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) NOT NULL,
  `telefono` int(20) NOT NULL,
  `nivel_estudio` varchar(20) NOT NULL,
  `carrera_estudiada` varchar(100) NOT NULL DEFAULT '',
  `portafolio` varchar(250) NOT NULL,
  `algosobreti` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_empleador`
--

CREATE TABLE `cuentas_empleador` (
  `correoempleador` varchar(150) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL,
  `id_empleador` int(10) NOT NULL,
  `identificacionempleador` int(20) DEFAULT NULL,
  `nombreempleador` varchar(100) DEFAULT NULL,
  `direccionempleador` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `telefonoempleador` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuentas_empleador`
--

INSERT INTO `cuentas_empleador` (`correoempleador`, `contraseña`, `id_empleador`, `identificacionempleador`, `nombreempleador`, `direccionempleador`, `pais`, `telefonoempleador`) VALUES
('ssebastiancamargo19@gmail.com', NULL, 1, 1002022994, 'Sebastian Camargo', 'Carrera 2A sur# 41D-03', NULL, 2147483647);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

CREATE TABLE `inicio` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL,
  `cargo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertasempleo`
--

CREATE TABLE `ofertasempleo` (
  `id_ofertas` int(10) NOT NULL,
  `id_empleador` int(10) DEFAULT NULL,
  `id_aspirante` int(10) DEFAULT NULL,
  `nombre_oferta` varchar(100) DEFAULT NULL,
  `tiempo` varchar(30) DEFAULT NULL,
  `requisitos` varchar(200) DEFAULT NULL,
  `sueldo` int(20) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `ciudad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ofertasempleo`
--

INSERT INTO `ofertasempleo` (`id_ofertas`, `id_empleador`, `id_aspirante`, `nombre_oferta`, `tiempo`, `requisitos`, `sueldo`, `fecha`, `ciudad`) VALUES
(1, NULL, NULL, 'Ingeniero de luces', 'Medio tiempo', 'ninguno', 2000000, '2022-01-29', 'barranquilla');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuentas_aspirantes`
--
ALTER TABLE `cuentas_aspirantes`
  ADD PRIMARY KEY (`id_aspirante`),
  ADD KEY `correo` (`correo`,`nombre_apellido`,`direccion`),
  ADD KEY `correo_2` (`correo`,`nombre_apellido`,`direccion`);

--
-- Indices de la tabla `cuentas_empleador`
--
ALTER TABLE `cuentas_empleador`
  ADD PRIMARY KEY (`id_empleador`);

--
-- Indices de la tabla `inicio`
--
ALTER TABLE `inicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ofertasempleo`
--
ALTER TABLE `ofertasempleo`
  ADD PRIMARY KEY (`id_ofertas`),
  ADD KEY `id_empleador` (`id_empleador`,`id_aspirante`),
  ADD KEY `id_aspirante` (`id_aspirante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuentas_aspirantes`
--
ALTER TABLE `cuentas_aspirantes`
  MODIFY `id_aspirante` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuentas_empleador`
--
ALTER TABLE `cuentas_empleador`
  MODIFY `id_empleador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `inicio`
--
ALTER TABLE `inicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ofertasempleo`
--
ALTER TABLE `ofertasempleo`
  MODIFY `id_ofertas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ofertasempleo`
--
ALTER TABLE `ofertasempleo`
  ADD CONSTRAINT `ofertasempleo_ibfk_1` FOREIGN KEY (`id_aspirante`) REFERENCES `cuentas_aspirantes` (`id_aspirante`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ofertasempleo_ibfk_2` FOREIGN KEY (`id_empleador`) REFERENCES `cuentas_empleador` (`id_empleador`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
