-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2021 a las 07:14:41
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
-- Base de datos: `nacho_store`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `id` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carritos`
--

INSERT INTO `carritos` (`id`, `estado`, `usuario_id`) VALUES
(1, 'finalizado', 1),
(3, 'finalizado', 1),
(4, 'finalizado', 1),
(5, 'abierto', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_producto`
--

CREATE TABLE `carrito_producto` (
  `id` int(11) NOT NULL,
  `carrito_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito_producto`
--

INSERT INTO `carrito_producto` (`id`, `carrito_id`, `producto_id`) VALUES
(12, 1, 10),
(14, 3, 10),
(15, 3, 10),
(16, 4, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL,
  `imagen` varchar(300) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `imagen`, `producto_id`) VALUES
(1, 'imagen-1606540188089.jpeg', 1),
(2, 'imagen-1606540210759.jpg', 2),
(3, 'imagen-1607985564318.jpeg', 3),
(4, 'imagen-1607989258812.jpg', 4),
(5, 'imagen-1607990112502.jpeg', 5),
(6, 'imagen-1607990556846.jpeg', 6),
(7, 'imagen-1607991182815.jpeg', 7),
(8, 'imagen-1607991229176.jpg', 8),
(9, 'imagen-1608246122405.jpeg', 9),
(10, 'imagen-1608513215826.jpeg', 10),
(11, 'imagen-1608515523009.jpg', 11),
(12, 'imagen-1608515626324.jpeg', 12),
(13, 'imagen-1608589034648.jpg', 13),
(14, 'imagen-1617130078736.jpg', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descuento` double NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `talle_id` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `cantidad`, `descuento`, `categoria`, `talle_id`, `estado`) VALUES
(1, 'REMERA X', 1500, 1, 15, 'remera', 1, 'inactivo'),
(2, 'JEAN X', 1200, 1, 1, 'jean', 1, 'inactivo'),
(3, 'REMERA X', 12, 1, 1, 'remera', 1, 'inactivo'),
(4, 'REMERA X', 12, 1, 1, 'conjunto', 1, 'inactivo'),
(5, 'REMERA X', 122, 1, 1, 'remera', 1, 'inactivo'),
(6, 'REMERA 1', 1, 1, 2, 'remera', 1, 'inactivo'),
(7, 'REMERA X', 1, 1, 1, 'remera', 1, 'inactivo'),
(8, 'JEAN X', 1, 1, 2, 'jean', 1, 'inactivo'),
(9, 'REMERA X', 1200, 1, 1, 'remera', 11, 'inactivo'),
(10, 'REMERA X', 1, 1, 1, 'remera', 1, 'activo'),
(11, 'REMERA X', 1, 2, 1, 'remera', 1, 'inactivo'),
(12, 'REMERA XD', 12, 1, 1, 'remera', 1, 'inactivo'),
(13, 'JEAN Xaa', 1200, 1, 1, 'jean', 1, 'inactivo'),
(14, 'remera 2', 1500, 1, 15, 'remera', 1, 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contrasenia` varchar(200) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `telefono` double NOT NULL,
  `tipo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `contrasenia`, `direccion`, `telefono`, `tipo`) VALUES
(1, 'luis herrera', 'luchoherrerafernandez@gmail.com', '$2b$12$fJtesuYhnKPXzJOSimWDZO3WVwyV9W0xFDqFZ52RbEDdNFUZW6lxy', 'calle falsa 123', 2216497631, 'admin'),
(2, 'nacho', 'nachostore25@gmail.com', '$2b$12$iJp.P1qWszeWgegg5lb.iOHfLLSzbHYlCAOy.ZtVjLfTwaK0dNXGC', NULL, 0, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `carrito_producto`
--
ALTER TABLE `carrito_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrito_id` (`carrito_id`,`producto_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `carrito_producto`
--
ALTER TABLE `carrito_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD CONSTRAINT `carritos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `carrito_producto`
--
ALTER TABLE `carrito_producto`
  ADD CONSTRAINT `carrito_producto_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrito_producto_ibfk_2` FOREIGN KEY (`carrito_id`) REFERENCES `carritos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
