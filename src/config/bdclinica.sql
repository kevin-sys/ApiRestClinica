-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2021 a las 07:32:07
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdclinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `CodigoCita` int(4) NOT NULL,
  `IdentificacionPaciente` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `NombresPaciente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ApellidosPaciente` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `IdentificacionPersonal` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `NombresPersonal` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ApellidosPersonal` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `TipoPersonal` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `HoraCita` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `FechaCita` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `EstadoCita` varchar(20) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'No atendido',
  `Observacion` text COLLATE utf8_spanish_ci NOT NULL DEFAULT 'No existe observación',
  `Emision` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`CodigoCita`, `IdentificacionPaciente`, `NombresPaciente`, `ApellidosPaciente`, `IdentificacionPersonal`, `NombresPersonal`, `ApellidosPersonal`, `TipoPersonal`, `HoraCita`, `FechaCita`, `EstadoCita`, `Observacion`, `Emision`) VALUES
(6, '3434', 'Kevin daniel', 'Gomez daza', '4567', 'Ever', 'Gomez Navarro', 'Medico', '8:00', '22-09-2021', 'No atendido', 'No existe observación', '2021-05-13 17:07:27'),
(7, '565677', 'Manuela', 'Zorza', '45906221', 'Luccas', 'Daza daza', 'Medico', '', '', 'No atendido', 'No existe observación', '2021-05-15 04:32:03'),
(8, '44455', 'Kevin', 'Fuentes diaz', '3331990', 'Ever', 'Gomez gomez', 'Medico', '8:00', '14/06/2021', 'No atendido', 'No existe observación', '2021-05-15 04:33:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `Identificacion` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `Foto` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `Nombres` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `Apellidos` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `FechaNacimiento` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `Edad` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `Barrio` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Telefono` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Ciudad` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Activo',
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`Identificacion`, `Foto`, `Nombres`, `Apellidos`, `FechaNacimiento`, `Edad`, `Direccion`, `Barrio`, `Telefono`, `Ciudad`, `Estado`, `FechaRegistro`) VALUES
('8894545', 'Foto', 'Kevin Manuel', 'Gomez Duarte', '11/10/1999', '21', 'calle 15 #23-39', 'La ceiba', '3043044040', 'Valledupar', 'Inactivo', '2021-05-15 01:52:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalatencion`
--

CREATE TABLE `personalatencion` (
  `Identificacion` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `Foto` varchar(400) COLLATE utf8_spanish_ci NOT NULL,
  `Nombres` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `Apellidos` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `Tipo` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `Estado` varchar(10) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Activo',
  `Trabajando` varchar(15) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Libre',
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `personalatencion`
--

INSERT INTO `personalatencion` (`Identificacion`, `Foto`, `Nombres`, `Apellidos`, `Tipo`, `Estado`, `Trabajando`, `FechaRegistro`) VALUES
('35478009', 'foto', 'Shirley Del Carmen', 'Cantillo Palmeras', 'Enfermera', 'Activo', 'Libre', '2021-05-13 05:30:45'),
('54545610', 'FOTO', 'Kevin', 'Gomez Cantillo', 'Medico', 'Inactivo', 'En servicio', '2021-05-15 05:00:15'),
('545657', 'foto', 'Valentina', 'Gomez Correa', 'Medico', 'Activo', 'Libre', '2021-05-13 05:30:13'),
('55567335', 'oto', 'Michael Karina', 'Acosta Zabaleta', 'Enfermera', 'Activo', 'Libre', '2021-05-13 05:32:13'),
('778909', 'Foto', 'Gissel Dayanna', 'Martinez Corzo', 'Medico', 'Activo', 'Libre', '2021-05-13 05:28:53'),
('84572224', 'Foto', 'Ana Lorena', 'Mejia Duarte', 'Fisioterapeuta', 'Activo', 'Libre', '2021-05-13 05:27:27'),
('88989', 'foto', 'geiner daniel', 'daza diaz', 'enfermero', 'Activo', 'Libre', '2021-05-15 02:58:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Identificacion` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `Usuario` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `TipoUsuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Pass` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Identificacion`, `Usuario`, `TipoUsuario`, `Pass`, `FechaRegistro`) VALUES
('123456789', 'Admin', 'Administrador', 'Admin', '2021-04-27 05:36:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`CodigoCita`,`IdentificacionPaciente`,`IdentificacionPersonal`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`Identificacion`);

--
-- Indices de la tabla `personalatencion`
--
ALTER TABLE `personalatencion`
  ADD PRIMARY KEY (`Identificacion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Identificacion`),
  ADD UNIQUE KEY `UsuarioUNK` (`Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `CodigoCita` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
