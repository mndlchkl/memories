-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2017 a las 02:51:05
-- Versión del servidor: 5.6.26-log
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `memory`
--
CREATE DATABASE IF NOT EXISTS `memory` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `memory`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallememoria`
--

CREATE TABLE `detallememoria` (
  `ID_DETMEMORIA` int(11) NOT NULL,
  `ID_EMOCION` int(11) NOT NULL,
  `NOMBRE_DETMEMORIA` varchar(50) DEFAULT NULL,
  `ORIGEN_DETMORIA` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detallememoria`
--

INSERT INTO `detallememoria` (`ID_DETMEMORIA`, `ID_EMOCION`, `NOMBRE_DETMEMORIA`, `ORIGEN_DETMORIA`) VALUES
(1, 1, 'sensorial visual', NULL),
(2, 2, 'sensorial auditivo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emocion`
--

CREATE TABLE `emocion` (
  `ID_EMOCION` int(11) NOT NULL,
  `NOMBRE_EMOCION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `emocion`
--

INSERT INTO `emocion` (`ID_EMOCION`, `NOMBRE_EMOCION`) VALUES
(1, 'Feliz'),
(2, 'Triste'),
(3, 'Enojado'),
(4, 'Serio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recuerdo`
--

CREATE TABLE `recuerdo` (
  `ID_RECUERDO` int(11) NOT NULL,
  `ID_DETMEMORIA` int(11) NOT NULL,
  `RUT` int(11) NOT NULL,
  `TIPO_RECUERDO` varchar(30) DEFAULT NULL,
  `COBERTURA` varchar(50) DEFAULT NULL,
  `FECHA_RECUERDO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recuerdo`
--

INSERT INTO `recuerdo` (`ID_RECUERDO`, `ID_DETMEMORIA`, `RUT`, `TIPO_RECUERDO`, `COBERTURA`, `FECHA_RECUERDO`) VALUES
(1, 2, 1, 'personal', 'amigos', '2016-12-11 23:59:59'),
(3, 1, 1, 'sensorial', 'solo yo', '2016-12-11 23:59:50'),
(6, 1, 2, 'personal', 'amigos', '2016-12-11 23:59:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `NAME` varchar(50) DEFAULT NULL,
  `LASTNAME` varchar(50) DEFAULT NULL,
  `RUT` int(11) NOT NULL,
  `PASSWORD` varchar(20) DEFAULT NULL,
  `FECHA_NACIMIENTO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`NAME`, `LASTNAME`, `RUT`, `PASSWORD`, `FECHA_NACIMIENTO`) VALUES
('francisco', 'vargas', 1, '1', '1994-05-30'),
('juan', 'hernandez', 2, '123456', '1994-06-12'),
('julio', 'bahamondes', 187348250, 'julio123', '1994-05-11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detallememoria`
--
ALTER TABLE `detallememoria`
  ADD PRIMARY KEY (`ID_DETMEMORIA`),
  ADD KEY `FK_PERTENECE` (`ID_EMOCION`);

--
-- Indices de la tabla `emocion`
--
ALTER TABLE `emocion`
  ADD PRIMARY KEY (`ID_EMOCION`);

--
-- Indices de la tabla `recuerdo`
--
ALTER TABLE `recuerdo`
  ADD PRIMARY KEY (`ID_RECUERDO`),
  ADD KEY `FK_POSEE` (`ID_DETMEMORIA`),
  ADD KEY `FK_TIENE` (`RUT`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`RUT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detallememoria`
--
ALTER TABLE `detallememoria`
  MODIFY `ID_DETMEMORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `emocion`
--
ALTER TABLE `emocion`
  MODIFY `ID_EMOCION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `recuerdo`
--
ALTER TABLE `recuerdo`
  MODIFY `ID_RECUERDO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallememoria`
--
ALTER TABLE `detallememoria`
  ADD CONSTRAINT `FK_PERTENECE` FOREIGN KEY (`ID_EMOCION`) REFERENCES `emocion` (`ID_EMOCION`);

--
-- Filtros para la tabla `recuerdo`
--
ALTER TABLE `recuerdo`
  ADD CONSTRAINT `FK_POSEE` FOREIGN KEY (`ID_DETMEMORIA`) REFERENCES `detallememoria` (`ID_DETMEMORIA`),
  ADD CONSTRAINT `FK_TIENE` FOREIGN KEY (`RUT`) REFERENCES `user` (`RUT`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
