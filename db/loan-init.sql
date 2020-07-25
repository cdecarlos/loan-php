-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-07-2020 a las 10:19:52
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `loan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Loans`
--

CREATE TABLE `Loans` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `amount` float NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date DEFAULT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Payments`
--

CREATE TABLE `Payments` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `paidOn` date NOT NULL,
  `status` varchar(200) NOT NULL,
  `idLoan` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Users`
--

INSERT INTO `Users` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Loans`
--
ALTER TABLE `Loans`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Payments`
--
ALTER TABLE `Payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Loans`
--
ALTER TABLE `Loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Payments`
--
ALTER TABLE `Payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
