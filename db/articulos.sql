-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2020 a las 01:03:39
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `buscador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `articulo` text COLLATE utf8_unicode_ci NOT NULL,
  `visitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `nombre`, `articulo`, `visitas`) VALUES
(1, 'C++', 'Volvemos 33 años atrás en el tiempo con C++, un lenguaje hecho para escribir sistemas enormes. Los sistemas operativos que utilizamos, todos los juegos de Blizzard, Unreal Engine, Unity, la mayoría de programas de productividad…', 1),
(2, 'PHP', 'Como ocurre con CSS, PHP no es un lenguaje de programación al uso, sino que es un lenguaje destinado a servidores, y fue diseñado en 1995 con el principio de desarrollar páginas web con contenido dinámico.', 1),
(3, 'GO', 'Go es un desarrollo de Google inspirado en C y Algol que apareció en 2009, y que además de usarse en varios de los sistemas de producción de Google, está abierto a que cualquiera juegue con el.', 1),
(4, 'C', 'C lleva la friolera de 44 años con nosotros, y se ha convertido a la fuerza en uno de los lenguajes de programación más utilizados de todos los tiempos, influyendo a decenas de lenguajes posteriores.', 0),
(5, 'C#', 'C# es una de los lenguajes influenciados por C, y fue desarrollado por Microsoft hace 16 años buscando arreglar los fallos del resto de lenguajes.', 1),
(6, 'CSS', 'CSS no es un lenguaje de programación como tal, sino que se trata de un lenguaje usado para determinar cómo se muestra un documento escrito en un lenguaje de marcado. Es conocido por ser una de las piedras angulares de la web, junto al HTML y JavaScript.', 1),
(7, 'Ruby', 'Ruby, que no confundir con Ruby on Rails, tiene 21 años a sus espaldas y se ha ganado a muchos programadores gracias a la sencillez que lo caracteriza.', 1),
(8, 'Python', 'Python, un lenguaje que hizo su primera aparición en 1991, se cuela en el podio con la tercera posición gracias a ser un lenguaje fácil de leer, y a que es uno de los más recomendados para empezar en la programación.', 1),
(9, 'Java', 'Java, ese lenguaje tan amado como odiado por los desarrolladores, lleva 21 años con nosotros y nos lo podemos encontrar en cualquier parte.', 1),
(10, 'JavaScript', 'El honor de ser el ‘lenguaje de programación’ más utilizado le corresponde a un lenguaje que no podemos compilar, JavaScript. Lleva desde 1995 con nosotros (lo mismo que Java, aunque no tengan nada que ver), y sólo tenemos que escribir el código y adjuntarlo al HTML.', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
