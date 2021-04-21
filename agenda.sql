-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2021 a las 07:14:09
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `mes` varchar(200) NOT NULL,
  `dia` varchar(200) NOT NULL,
  `cinco` varchar(200) NOT NULL,
  `cincoM` varchar(200) NOT NULL,
  `seis` varchar(200) NOT NULL,
  `seisM` varchar(200) NOT NULL,
  `siete` varchar(200) NOT NULL,
  `sieteM` varchar(200) NOT NULL,
  `ocho` varchar(200) NOT NULL,
  `ochoM` varchar(200) NOT NULL,
  `nueve` varchar(200) NOT NULL,
  `nueveM` varchar(200) NOT NULL,
  `diez` varchar(200) NOT NULL,
  `diezM` varchar(200) NOT NULL,
  `once` varchar(200) NOT NULL,
  `onceM` varchar(200) NOT NULL,
  `doce` varchar(200) NOT NULL,
  `doceM` varchar(200) NOT NULL,
  `trece` varchar(200) NOT NULL,
  `treceM` varchar(200) NOT NULL,
  `catorce` varchar(200) NOT NULL,
  `catorceM` varchar(200) NOT NULL,
  `quince` varchar(200) NOT NULL,
  `quinceM` varchar(200) NOT NULL,
  `dieciseis` varchar(200) NOT NULL,
  `dieciseisM` varchar(200) NOT NULL,
  `diecisiete` varchar(200) NOT NULL,
  `diecisieteM` varchar(200) NOT NULL,
  `dieciocho` varchar(200) NOT NULL,
  `dieciochoM` varchar(200) NOT NULL,
  `diecinueve` varchar(200) NOT NULL,
  `diecinueveM` varchar(200) NOT NULL,
  `veinte` varchar(200) NOT NULL,
  `veinteM` varchar(200) NOT NULL,
  `veintiuno` varchar(200) NOT NULL,
  `veintiunoM` varchar(200) NOT NULL,
  `veintidos` varchar(200) NOT NULL,
  `veintidosM` varchar(200) NOT NULL,
  `veintitres` varchar(200) NOT NULL,
  `veintitresM` varchar(200) NOT NULL,
  `cero` varchar(200) NOT NULL,
  `ceroM` varchar(200) NOT NULL,
  `una` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mes`, `dia`, `cinco`, `cincoM`, `seis`, `seisM`, `siete`, `sieteM`, `ocho`, `ochoM`, `nueve`, `nueveM`, `diez`, `diezM`, `once`, `onceM`, `doce`, `doceM`, `trece`, `treceM`, `catorce`, `catorceM`, `quince`, `quinceM`, `dieciseis`, `dieciseisM`, `diecisiete`, `diecisieteM`, `dieciocho`, `dieciochoM`, `diecinueve`, `diecinueveM`, `veinte`, `veinteM`, `veintiuno`, `veintiunoM`, `veintidos`, `veintidosM`, `veintitres`, `veintitresM`, `cero`, `ceroM`, `una`) VALUES
(34, 'luis', 'luchoherrerafernandez@gmail.com', '1234', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'A ESTA HORA ESTOY ATR', 'ATR PERRITO MALVADO', 'SIGO ATR', 'A MIMIR', 'F', 'F'),
(35, 'luis', 'luchoherrerafernandez@gmail.com', '1234', 'libreassdsadas', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'A ESTA HORA ESTOY ATR', 'ATR PERRITO MALVADO', 'SIGO ATR', 'A MIMIR', 'F', 'F'),
(36, 'luis', 'luchoherrerafernandez@gmail.com', '12231', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'A ESTA HORA ESTOY ATR', 'ATR PERRITO MALVADO', 'SIGO ATR', 'A MIMIR', 'F', 'F'),
(37, 'guillee', 'guille@gmail.com', 'guille', 'libreadsas', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'A ESTA HORA ESTOY ATR', 'ATR PERRITO MALVADO', 'SIGO ATR', 'A MIMIR', 'F', 'F'),
(38, 'guillee', 'guille@gmail.com', 'asdsa', 'libreasda', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'A ESTA HORA ESTOY ATR', 'ATR PERRITO MALVADO', 'SIGO ATR', 'A MIMIR', 'F', 'F'),
(39, 'cd', 'cd@gmail.com', 'cd', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'libre', 'A ESTA HORA ESTOY ATR', 'ATR PERRITO MALVADO', 'SIGO ATR', 'A MIMIR', 'F', 'F');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
