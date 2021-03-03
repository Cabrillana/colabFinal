-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2021 a las 15:13:16
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colabfinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombreCompleto` varchar(255) NOT NULL,
  `email` varchar(64) NOT NULL,
  `comentario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(11) NOT NULL,
  `municipio` varchar(27) DEFAULT NULL,
  `CP` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `municipio`, `CP`) VALUES
(1, 'Abenójar', '13180'),
(2, 'Agudo', '13410'),
(3, 'Alamillo', '13413'),
(4, 'Albaladejo', '13340'),
(5, 'Alcázar de San Juan', '13600'),
(6, 'Alcoba', '13116'),
(7, 'Alcolea de Calatrava', '13107'),
(8, 'Alcubillas', '13391'),
(9, 'Aldea del Rey', '13380'),
(10, 'Alhambra', '13248'),
(11, 'Almadén', '13400'),
(12, 'Almadenejos', '13480'),
(13, 'Almagro', '13270'),
(14, 'Almedina', '13328'),
(15, 'Almodóvar del Campo', '13580'),
(16, 'Almuradiel', '13760'),
(17, 'Anchuras', '13117'),
(18, 'Arenales de San Gregorio', '13619'),
(19, 'Arenas de San Juan', '13679'),
(20, 'Argamasilla de Alba', '13710'),
(21, 'Argamasilla de Calatrava', '13440'),
(22, 'Arroba de los Montes', '13193'),
(23, 'Ballesteros de Calatrava', '13432'),
(24, 'Bolaños de Calatrava', '13260'),
(25, 'Brazatortas', '13450'),
(26, 'Cabezarados', '13192'),
(27, 'Cabezarrubias del Puerto', '13591'),
(28, 'Calzada de Calatrava', '13370'),
(29, 'Campo de Criptana', '13610'),
(30, 'Cañada de Calatrava', '13430'),
(31, 'Caracuel de Calatrava', '13433'),
(32, 'Carrión de Calatrava', '13150'),
(33, 'Carrizosa', '13329'),
(34, 'Castellar de Santiago', '13750'),
(35, 'Chillón', '13412'),
(36, 'Ciudad Real', '13001-005'),
(37, 'Corral de Calatrava', '13190'),
(38, 'Cortijos (Los)', '13427'),
(39, 'Cózar', '13345'),
(40, 'Daimiel', '13250'),
(41, 'Fernán Caballero', '13140'),
(42, 'Fontanarejo', '13193'),
(43, 'Fuencaliente', '13130'),
(44, 'Fuenllana', '13333'),
(45, 'Fuente el Fresno', '13680'),
(46, 'Granátula de Calatrava', '13360'),
(47, 'Guadalmez', '13490'),
(48, 'Herencia', '13640'),
(49, 'Hinojosas de Calatrava', '13590'),
(50, 'Horcajo de los Montes', '13110'),
(51, 'Labores (Las)', '13660'),
(52, 'Llanos del Caudillo', '13220'),
(53, 'Luciana', '13108'),
(54, 'Malagón', '13420'),
(55, 'Manzanares', '13200'),
(56, 'Membrilla', '13230'),
(57, 'Mestanza', '13592'),
(58, 'Miguelturra', '13170'),
(59, 'Montiel', '13326'),
(60, 'Moral de Calatrava', '13350'),
(61, 'Navalpino', '13193'),
(62, 'Navas de Estena', '13194'),
(63, 'Pedro Muñoz', '13620'),
(64, 'Picón', '13196'),
(65, 'Piedrabuena', '13100'),
(66, 'Poblete', '13195'),
(67, 'Porzuna', '13120'),
(68, 'Pozuelo de Calatrava', '13179'),
(69, 'Pozuelos de Calatrava (Los)', '13191'),
(70, 'Puebla de Don Rodrigo', '13109'),
(71, 'Puebla del Príncipe', '13342'),
(72, 'Puerto Lápice', '13650'),
(73, 'Puertollano', '13500'),
(74, 'Retuerta del Bullaque', '13194'),
(75, 'Robledo (El)', '13114'),
(76, 'Ruidera', '13249'),
(77, 'Saceruela', '13414'),
(78, 'San Carlos del Valle', '13247'),
(79, 'San Lorenzo de Calatrava', '13779'),
(80, 'Santa Cruz de los Cáñamos', '13327'),
(81, 'Santa Cruz de Mudela', '13730'),
(82, 'Socuéllamos', '13630'),
(83, 'Solana (La)', '13240'),
(84, 'Solana del Pino', '13593'),
(85, 'Terrinches', '13341'),
(86, 'Tomelloso', '13700'),
(87, 'Torralba de Calatrava', '13160'),
(88, 'Torre de Juan Abad', '13344'),
(89, 'Torrenueva', '13740'),
(90, 'Valdemanco del Esteras', '13411'),
(91, 'Valdepeñas', '13300'),
(92, 'Valenzuela de Calatrava', '13279'),
(93, 'Villahermosa', '13332'),
(94, 'Villamanrique', '13343'),
(95, 'Villamayor de Calatrava', '13595'),
(96, 'Villanueva de la Fuente', '13330'),
(97, 'Villanueva de los Infantes', '13320'),
(98, 'Villanueva de San Carlos', '13379'),
(99, 'Villar del Pozo', '13431'),
(100, 'Villarrubia de los Ojos', '13670'),
(101, 'Villarta de San Juan', '13210'),
(102, 'Viso del Marqués', '13770');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `id` int(11) NOT NULL,
  `idMunicipioVisitado` int(11) NOT NULL,
  `nombreCompleto` varchar(255) NOT NULL,
  `email` varchar(64) NOT NULL,
  `municipioProcedencia` varchar(64) NOT NULL,
  `comentario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_municipio` (`idMunicipioVisitado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `visitas`
--
ALTER TABLE `visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD CONSTRAINT `id_municipio` FOREIGN KEY (`idMunicipioVisitado`) REFERENCES `municipios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
