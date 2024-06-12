-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2024 a las 03:00:57
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Morat', 'Si ayer fuera hoy, habria mas bandas'),
(2, 'Trueno', 'Trueno, nacido y criado en el barrio de la boca'),
(3, 'Nicki Nicole', 'figura clave en la musica latina urbana'),
(4, 'Los Tigres del Norte', 'norteño'),
(5, 'kAROL G', 'LA MEJOR'),
(6, 'GLORIA TREVI', '56 AÑOS'),
(7, 'YURIDIA', 'CANTANTE Y COMPOSITORA MEXICANA'),
(8, 'BANDA MS', 'BANDA SINALOENSE'),
(9, 'TOKISCHA', 'CANTANTE Y VEDETTE DOMINICANA'),
(10, 'DAAZ', 'EL NUEVO TALENTO MUSICAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas_canciones`
--

INSERT INTO `artistas_canciones` (`id`, `artista_id`, `cancion_id`) VALUES
(1, 1, 2),
(2, 4, 1),
(3, 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(340) NOT NULL,
  `generos_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `Activo` tinyint(1) NOT NULL,
  `Foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `generos_id`, `duracion`, `fecha_lanzamiento`, `Activo`, `Foto`) VALUES
(1, 'Ni parientes somos', 15, '02:38:00', '2023-02-08', 1, ''),
(2, 'Punto y Aparte', 1, '02:38:00', '2020-12-07', 1, ''),
(3, 'Dancing Queen', 1, '00:00:00', '0000-00-00', 0, ''),
(4, 'Shape of You', 1, '03:53:00', '2017-01-06', 1, ''),
(5, 'Bohemian Rhapsody', 2, '05:55:00', '1975-10-31', 1, ''),
(6, 'Happy', 1, '03:53:00', '2013-11-21', 1, ''),
(7, 'Smooth', 2, '04:58:00', '1999-06-29', 1, ''),
(8, 'Despacito', 1, '03:48:00', '2024-01-12', 1, ''),
(9, 'Billie Jean', 1, '04:54:00', '1983-01-02', 1, ''),
(10, 'Enamórate de alguien más', 1, '03:39:00', '2020-06-10', 1, ''),
(11, 'La correcta', 1, '03:05:00', '2023-07-19', 1, ''),
(12, 'Mamichula', 10, '00:03:24', '2020-07-24', 1, ''),
(13, 'Dance Crip', 10, '00:03:05', '2020-09-25', 1, ''),
(14, 'King Kong', 10, '00:02:45', '2022-05-05', 1, ''),
(15, 'Tusa', 13, '00:03:21', '2019-11-07', 1, ''),
(16, 'Bichota', 13, '00:02:58', '2020-10-23', 1, ''),
(17, 'El Makinon', 13, '00:03:26', '2021-03-25', 1, ''),
(18, 'Colocao', 13, '00:02:33', '2020-05-15', 1, ''),
(19, 'Recuerdos', 11, '00:02:49', '2019-08-09', 1, ''),
(20, 'Wapo Traketero', 10, '00:02:39', '2019-08-23', 1, ''),
(21, 'No Toque Mi Naik', 10, '00:03:14', '2021-08-27', 1, ''),
(22, 'No Pasa Nada', 1, '00:03:31', '2018-08-24', 1, ''),
(23, 'Vestido de Azucar', 11, '00:03:50', '2011-03-18', 1, ''),
(24, 'Gloria', 1, '00:04:40', '1989-12-01', 1, ''),
(25, 'Pelo Suelto', 1, '00:03:50', '1991-07-01', 1, ''),
(26, 'Con los ojos cerrados', 1, '00:04:12', '1994-03-01', 1, ''),
(27, 'Bajo la Mesa', 11, '00:04:00', '2020-05-07', 1, ''),
(28, 'La Correcta', 1, '00:03:02', '2019-10-11', 1, ''),
(29, 'Besos en Guerra', 1, '00:03:34', '2017-10-06', 1, ''),
(30, 'Al Aire', 1, '00:03:30', '2020-08-28', 1, ''),
(31, 'Te dejo ir', 11, '00:03:36', '2016-06-24', 1, ''),
(32, 'Amigos no por favor', 11, '00:03:27', '2016-12-09', 1, ''),
(33, 'Sigue sin mí', 11, '00:04:12', '2017-10-06', 1, ''),
(34, 'Háblame de ti', 15, '00:03:19', '2016-01-01', 1, ''),
(35, 'El color de tus ojos', 15, '00:03:34', '2017-04-07', 1, ''),
(36, 'Tu postura', 15, '00:03:37', '2018-08-24', 1, ''),
(37, 'La mejor versión de mí', 15, '00:03:35', '2018-10-05', 1, ''),
(38, 'Fuertes las ruinas', 10, '00:03:30', '2020-09-18', 1, ''),
(39, 'El barrio', 10, '00:02:50', '2021-07-09', 1, ''),
(40, 'Los envidiosos', 10, '00:02:42', '2021-11-19', 1, ''),
(41, 'Linda', 10, '00:03:11', '2021-09-01', 1, ''),
(42, 'Perra', 10, '00:02:42', '2021-09-01', 1, ''),
(43, 'Singapur', 13, '00:03:05', '2020-12-18', 1, ''),
(44, 'Somos de Calle', 13, '00:03:06', '2008-08-12', 1, ''),
(45, 'La mesa del rincón', 15, '00:03:36', '1995-10-10', 1, ''),
(46, 'Contrabando y traición', 15, '00:03:35', '1974-05-25', 1, ''),
(47, 'La puerta negra', 15, '00:03:16', '1986-01-01', 1, ''),
(48, 'Jefe de jefes', 15, '00:03:39', '1997-04-22', 1, ''),
(49, 'Ni parientes somos', 15, '00:02:41', '1987-07-04', 1, ''),
(50, 'Golpes en el corazón', 15, '00:02:53', '1990-10-01', 1, ''),
(51, 'La banda del carro rojo', 15, '00:02:32', '1982-08-17', 1, ''),
(52, 'Pacas de a kilo', 15, '00:03:13', '1983-09-30', 1, ''),
(53, 'Señor locutor', 15, '00:03:23', '1986-05-21', 1, ''),
(54, 'Un día a la vez', 15, '00:03:32', '1995-10-02', 1, ''),
(55, 'Somos más americanos', 15, '00:03:22', '2001-05-23', 1, ''),
(56, 'La reina del sur', 15, '00:03:16', '2002-04-21', 1, ''),
(57, 'El hijo mayor', 15, '00:03:08', '2004-07-23', 1, ''),
(58, 'La granja', 15, '00:03:18', '2006-05-12', 1, ''),
(59, 'América', 15, '00:03:31', '2009-09-08', 1, ''),
(60, 'El rengo del gallo giro', 15, '00:03:14', '2011-06-17', 1, ''),
(61, 'Panamá', 13, '00:03:10', '2020-09-18', 1, ''),
(62, 'Argentina', 13, '00:03:30', '2021-12-17', 1, ''),
(63, 'Zaza', 13, '00:03:20', '2021-02-05', 1, ''),
(64, 'Location', 13, '00:03:26', '2021-02-11', 1, ''),
(65, 'Ley de atracción', 13, '00:02:59', '2020-08-13', 1, ''),
(66, 'Los hombres no lloran', 1, '00:03:40', '1990-01-01', 1, ''),
(67, 'Doctor Psiquiatra', 1, '00:03:46', '1989-01-01', 1, ''),
(68, 'Zapatos viejos', 1, '00:04:33', '1991-01-01', 1, ''),
(69, 'Como nace el universo', 1, '00:04:01', '1994-01-01', 1, ''),
(70, 'Si me llevas contigo', 1, '00:04:30', '1995-01-01', 1, ''),
(71, 'Besos en guerra', 1, '00:03:34', '2017-11-17', 1, ''),
(72, 'Yo contigo, tú conmigo', 1, '00:03:16', '2017-06-16', 1, ''),
(73, 'Cuando nadie ve', 1, '00:03:25', '2018-09-07', 1, ''),
(74, 'Enamórate de alguien más', 1, '00:03:35', '2019-04-05', 1, ''),
(75, 'La Correcta', 1, '00:03:07', '2019-09-20', 1, ''),
(76, 'Sirena', 11, '00:04:22', '2015-10-16', 1, ''),
(77, 'Ya te olvidé', 11, '00:03:52', '2017-05-26', 1, ''),
(78, 'Lo que son las cosas', 11, '00:04:04', '2005-06-14', 1, ''),
(79, 'Enamorada y herida', 11, '00:04:07', '2011-11-15', 1, ''),
(80, 'Ahora entendí', 11, '00:03:45', '2018-02-23', 1, ''),
(81, 'Hermosa experiencia', 15, '00:03:33', '2013-05-13', 1, ''),
(82, 'El sinaloense', 15, '00:02:30', '2014-10-21', 1, ''),
(83, 'La casita', 15, '00:03:22', '2015-05-10', 1, ''),
(84, 'Es hora de irse', 15, '00:03:44', '2016-09-30', 1, ''),
(85, 'Solo con verte', 15, '00:03:20', '2017-01-20', 1, ''),
(86, 'Linda', 13, '00:03:16', '2021-09-01', 1, ''),
(87, 'Del mar', 13, '00:03:14', '2021-03-25', 1, ''),
(88, 'Twerk', 13, '00:03:21', '2020-08-21', 1, ''),
(89, 'Desacatate', 13, '00:03:28', '2021-07-29', 1, ''),
(90, 'Tukuntazo', 13, '00:03:15', '2020-10-15', 1, ''),
(91, 'La puerta negra', 15, '00:03:10', '1986-01-01', 1, ''),
(92, 'La banda del carro rojo', 15, '00:03:05', '1982-07-05', 1, ''),
(93, 'Jefe de jefes', 15, '00:03:19', '1997-04-23', 1, ''),
(94, 'Contrabando y traición', 15, '00:03:36', '1974-05-25', 1, ''),
(95, 'Ni parientes somos', 15, '00:03:09', '1987-07-04', 1, ''),
(96, 'Golpes en el corazón', 15, '00:02:57', '1990-10-01', 1, ''),
(97, 'Pacas de a kilo', 15, '00:03:10', '1983-09-30', 1, ''),
(98, 'Señor locutor', 15, '00:03:20', '1986-05-21', 1, ''),
(99, 'Un día a la vez', 15, '00:03:25', '1995-10-02', 1, ''),
(100, 'La reina del sur', 15, '00:03:13', '2002-04-21', 1, ''),
(101, 'El hijo mayor', 15, '00:03:10', '2004-07-23', 1, ''),
(102, 'La granja', 15, '00:03:14', '2006-05-12', 1, ''),
(103, 'América', 15, '00:03:25', '2009-09-08', 1, ''),
(104, 'El rengo del gallo giro', 15, '00:03:08', '2011-06-17', 1, ''),
(105, 'Somos más americanos', 15, '00:03:21', '2001-05-23', 1, ''),
(106, 'Pelo suelto', 1, '00:03:54', '1991-07-01', 1, ''),
(107, 'Doctor psiquiatra', 1, '00:03:52', '1989-01-01', 1, ''),
(108, 'Zapatos viejos', 1, '00:04:20', '1991-01-01', 1, ''),
(109, 'Como nace el universo', 1, '00:04:05', '1994-01-01', 1, ''),
(110, 'El último adiós', 1, '00:04:00', '1999-01-01', 1, ''),
(111, 'Jungle', 10, '00:03:01', '2015-06-02', 1, ''),
(112, 'Fresko', 10, '00:03:15', '2021-09-30', 1, ''),
(113, 'Quiero darte', 10, '00:02:58', '2020-11-13', 1, ''),
(114, 'Se siente bien', 10, '00:02:55', '2019-10-04', 1, ''),
(115, 'Pa la otra vida', 10, '00:03:05', '2021-01-15', 1, ''),
(116, 'Ay, Dios mío!', 13, '00:02:27', '2020-07-17', 1, ''),
(117, 'Tusa', 13, '00:03:20', '2019-11-07', 1, ''),
(118, 'Bichota', 13, '00:02:58', '2020-10-23', 1, ''),
(119, 'El Barco', 13, '00:03:42', '2021-05-21', 1, ''),
(120, '200 Copas', 13, '00:02:47', '2021-02-25', 1, ''),
(121, 'La Tonta', 1, '00:03:13', '2021-04-30', 1, ''),
(122, 'Ella Quiere', 10, '00:03:02', '2019-06-14', 1, ''),
(123, 'Me arrepiento', 1, '00:03:25', '2020-11-27', 1, ''),
(124, 'Nicki Nicole: Bzrp Music Sessions, Vol. 13', 10, '00:03:00', '2019-11-13', 1, ''),
(125, 'Mamichula', 10, '00:03:25', '2020-07-24', 1, ''),
(126, 'Verte', 1, '00:03:10', '2020-10-15', 1, ''),
(127, 'Shorty', 10, '00:02:53', '2020-06-26', 1, ''),
(128, 'Freestyle Session #13', 10, '00:02:44', '2020-09-23', 1, ''),
(129, 'Dímelo', 13, '00:03:20', '2020-05-15', 1, ''),
(130, 'Nota de amor', 13, '00:03:56', '2015-01-27', 1, ''),
(131, 'Baila Baila Baila', 13, '00:03:17', '2019-01-25', 1, ''),
(132, 'Dakiti', 13, '00:03:25', '2020-10-30', 1, ''),
(133, 'Señorita', 13, '00:03:10', '2019-06-21', 1, ''),
(134, 'Ya no vuelvas', 11, '00:03:34', '2021-03-25', 1, ''),
(135, 'Quédate conmigo', 11, '00:03:18', '2017-07-28', 1, ''),
(136, 'Abrázame muy fuerte', 11, '00:03:33', '2000-08-14', 1, ''),
(137, 'Te regalo amores', 11, '00:03:45', '2008-10-14', 1, ''),
(138, 'Amigos no por favor', 11, '00:03:35', '2016-12-09', 1, ''),
(139, 'Es hora de irse', 15, '00:03:44', '2016-09-30', 1, ''),
(140, 'Solo con verte', 15, '00:03:20', '2017-01-20', 1, ''),
(141, 'Linda', 13, '00:03:16', '2021-09-01', 1, ''),
(142, 'Del mar', 13, '00:03:14', '2021-03-25', 1, ''),
(143, 'Twerk', 13, '00:03:21', '2020-08-21', 1, ''),
(144, 'Desacatate', 13, '00:03:28', '2021-07-29', 1, ''),
(145, 'Tukuntazo', 13, '00:03:15', '2020-10-15', 1, ''),
(146, 'El último adiós', 1, '00:04:00', '1999-01-01', 1, ''),
(147, 'Guerra', 1, '00:03:47', '2016-09-23', 1, ''),
(148, 'Noche de copas', 11, '00:03:58', '1983-10-30', 1, ''),
(149, 'El recuento de los daños', 11, '00:03:54', '1996-10-30', 1, ''),
(150, 'Me lloras', 13, '00:03:24', '2018-05-04', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `cancion_id`) VALUES
(1, 1, 1),
(2, 1, 140),
(3, 1, 22),
(4, 2, 15),
(5, 3, 7),
(6, 4, 35),
(7, 5, 19),
(8, 6, 28),
(9, 7, 12),
(10, 8, 1),
(11, 9, 39),
(12, 10, 6),
(13, 1, 25),
(14, 2, 30),
(15, 3, 14),
(16, 4, 5),
(17, 5, 18),
(18, 6, 20),
(19, 7, 26),
(20, 8, 33),
(21, 9, 11),
(22, 10, 3),
(23, 1, 21),
(24, 2, 8),
(25, 3, 24),
(26, 4, 32),
(27, 5, 4),
(28, 6, 17),
(29, 7, 9),
(30, 8, 31),
(31, 9, 2),
(32, 10, 27),
(33, 1, 10),
(34, 2, 13),
(35, 3, 23),
(36, 4, 36),
(37, 5, 29),
(38, 6, 34),
(39, 7, 38),
(40, 8, 16),
(41, 9, 40),
(42, 10, 37),
(43, 1, 15),
(44, 2, 26),
(45, 3, 3),
(46, 4, 9),
(47, 5, 28),
(48, 6, 21),
(49, 7, 8),
(50, 8, 14),
(51, 9, 11),
(52, 10, 22),
(53, 1, 20),
(54, 2, 6),
(55, 3, 30),
(56, 4, 12),
(57, 5, 16),
(58, 6, 13),
(59, 7, 25),
(60, 8, 4),
(61, 9, 1),
(62, 10, 18),
(63, 1, 27),
(64, 2, 5),
(65, 3, 19),
(66, 4, 31),
(67, 5, 2),
(68, 6, 39),
(69, 7, 7),
(70, 8, 34),
(71, 9, 32),
(72, 10, 29),
(73, 1, 24),
(74, 2, 10),
(75, 3, 35),
(76, 4, 17),
(77, 5, 40),
(78, 6, 33),
(79, 7, 3),
(80, 8, 26),
(81, 9, 23),
(82, 10, 19),
(83, 1, 37),
(84, 2, 12),
(85, 3, 22),
(86, 4, 11),
(87, 5, 38),
(88, 6, 9),
(89, 7, 8),
(90, 8, 21),
(91, 9, 5),
(92, 10, 6),
(93, 1, 28),
(94, 2, 16),
(95, 3, 31),
(96, 4, 13),
(97, 5, 4),
(98, 6, 27),
(99, 7, 36),
(100, 8, 20),
(101, 9, 2),
(102, 10, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Pop'),
(2, 'Rock and Roll'),
(3, 'Metal'),
(4, 'Jazz'),
(5, 'Country'),
(6, 'Salsa'),
(7, 'Merengue'),
(8, 'Cumbia'),
(9, 'Punk'),
(10, 'Hip Hop'),
(11, 'Baladas'),
(12, 'Reggaeton'),
(13, 'Samba'),
(14, 'Tango'),
(15, 'Banda'),
(16, 'Folk');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(3, 'Free', 0),
(4, 'Premium individual', 129),
(5, 'Premium duo', 169),
(6, 'Premium Familiar', 199),
(7, 'Estudiantes', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `num_canciones` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `num_canciones`, `duracion`, `descripcion`, `publico`) VALUES
(1, 'PARA BAÑARSE FEOS', 1, 8569, '75:29:00', 'BAÑENSE COCHINOS', 1),
(2, 'Rock Classics', 1, 50, '00:00:03', 'Playlist de clásicos del rock.', 1),
(3, 'Chill Vibes', 2, 20, '00:00:01', 'Playlist relajante para trabajar.', 0),
(4, 'Top 40 Hits', 3, 40, '00:00:02', 'Las mejores canciones del momento.', 1),
(5, 'Jazz Essentials', 4, 35, '00:00:02', 'Selección esencial de jazz.', 1),
(6, 'Workout Mix', 5, 25, '00:00:01', 'Playlist para motivarse en el gimnasio.', 0),
(7, 'Indie Favorites', 6, 30, '00:00:02', 'Canciones favoritas del género indie.', 1),
(8, 'Classical Mornings', 7, 15, '00:00:01', 'Playlist de música clásica para las mañanas.', 0),
(9, 'Electronic Beats', 8, 45, '00:00:03', 'Mejores beats electrónicos.', 1),
(10, 'Latin Rhythms', 9, 28, '00:00:01', 'Playlist de ritmos latinos.', 0),
(11, 'Country Roads', 10, 22, '00:00:01', 'Canciones de country para el camino.', 1),
(12, 'Hip Hop Hits', 1, 33, '00:00:02', 'Los mejores hits del hip hop.', 0),
(13, 'Reggae Vibes', 2, 18, '00:00:01', 'Playlist de reggae relajante.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`id`, `playlist_id`, `cancion_id`, `usuario_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 8, 136, 5),
(4, 1, 34, 7),
(5, 2, 85, 2),
(6, 3, 48, 6),
(7, 4, 91, 9),
(8, 5, 123, 1),
(9, 6, 47, 4),
(10, 7, 62, 8),
(11, 8, 19, 5),
(12, 9, 70, 3),
(13, 10, 58, 7),
(14, 11, 110, 2),
(15, 12, 76, 6),
(16, 13, 140, 1),
(17, 1, 25, 4),
(18, 2, 130, 9),
(19, 3, 15, 5),
(20, 4, 55, 8),
(21, 5, 42, 7),
(22, 6, 99, 3),
(23, 7, 117, 10),
(24, 8, 80, 6),
(25, 9, 33, 2),
(26, 10, 50, 5),
(27, 11, 105, 4),
(28, 12, 60, 1),
(29, 13, 135, 8),
(30, 1, 27, 9),
(31, 2, 140, 3),
(32, 3, 75, 7),
(33, 4, 33, 2),
(34, 5, 103, 6),
(35, 6, 65, 10),
(36, 7, 41, 1),
(37, 8, 87, 4),
(38, 9, 12, 8),
(39, 10, 58, 5),
(40, 11, 92, 7),
(41, 12, 110, 9),
(42, 13, 20, 3),
(43, 1, 74, 6),
(44, 2, 128, 4),
(45, 3, 16, 1),
(46, 4, 89, 10),
(47, 5, 45, 8),
(48, 6, 32, 7),
(49, 7, 57, 5),
(50, 8, 101, 3),
(51, 9, 13, 2),
(52, 10, 56, 6),
(53, 11, 38, 9),
(54, 12, 77, 4),
(55, 13, 135, 1),
(56, 1, 22, 10),
(57, 2, 113, 6),
(58, 3, 80, 5),
(59, 4, 17, 7),
(60, 5, 95, 2),
(61, 6, 64, 3),
(62, 7, 49, 9),
(63, 8, 88, 1),
(64, 9, 34, 6),
(65, 10, 42, 8),
(66, 11, 107, 4),
(67, 12, 68, 10),
(68, 13, 139, 7),
(69, 1, 31, 5),
(70, 2, 125, 9),
(71, 3, 8, 4),
(72, 4, 47, 6),
(73, 5, 60, 3),
(74, 6, 72, 10),
(75, 7, 58, 2),
(76, 8, 99, 1),
(77, 9, 26, 7),
(78, 10, 53, 8),
(79, 11, 112, 5),
(80, 12, 50, 4),
(81, 13, 122, 6),
(82, 1, 7, 3),
(83, 2, 32, 8),
(84, 3, 93, 5),
(85, 4, 71, 9),
(86, 5, 110, 1),
(87, 6, 35, 7),
(88, 7, 83, 10),
(89, 8, 119, 4),
(90, 9, 14, 2),
(91, 10, 52, 6),
(92, 11, 74, 3),
(93, 12, 84, 9),
(94, 13, 145, 1),
(95, 1, 21, 8),
(96, 2, 95, 7),
(97, 3, 27, 10),
(98, 4, 79, 2),
(99, 5, 132, 6),
(100, 6, 66, 9),
(101, 7, 58, 4),
(102, 8, 81, 5),
(103, 9, 47, 3),
(104, 10, 63, 7),
(105, 11, 93, 1),
(106, 12, 125, 8),
(107, 13, 17, 6),
(108, 1, 58, 9),
(109, 2, 137, 10),
(110, 3, 25, 4),
(111, 4, 78, 2),
(112, 5, 55, 7),
(113, 6, 107, 5),
(114, 7, 29, 1),
(115, 8, 68, 9),
(116, 9, 39, 10),
(117, 10, 47, 6),
(118, 11, 31, 3),
(119, 12, 96, 2),
(120, 13, 140, 5),
(121, 1, 12, 4),
(122, 2, 20, 7),
(123, 3, 74, 8),
(124, 4, 101, 9),
(125, 5, 122, 3),
(126, 6, 29, 6),
(127, 7, 57, 10),
(128, 8, 100, 2),
(129, 9, 19, 5),
(130, 10, 33, 1),
(131, 11, 43, 4),
(132, 12, 89, 7),
(133, 13, 125, 9),
(134, 1, 85, 6),
(135, 2, 134, 10),
(136, 3, 56, 1),
(137, 4, 110, 8),
(138, 5, 95, 7),
(139, 6, 41, 4),
(140, 7, 48, 3),
(141, 8, 123, 9),
(142, 9, 60, 6),
(143, 10, 20, 5),
(144, 11, 72, 2),
(145, 12, 38, 8),
(146, 13, 92, 1),
(147, 1, 27, 10),
(148, 2, 116, 6),
(149, 3, 7, 4),
(150, 4, 63, 7),
(151, 5, 48, 2),
(152, 6, 58, 5),
(153, 7, 77, 9),
(154, 8, 109, 1),
(155, 9, 12, 10),
(156, 10, 90, 6),
(157, 11, 66, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Alexia Vazquez', 'alexia.vazquez22@cetis107.edu.mx', 4),
(2, 'Juan perez', 'juanito.bonito2007@cetis107.edu', 3),
(3, 'Daniel Lopez', 'Daniel.Lopez22@cetis107.edu.mx', 7),
(4, 'Alejandra Ruiz', 'RuizA.A@gmail.com', 4),
(5, 'Changuito Luis', 'elchangui.to@outlook.com', 5),
(6, 'Mario Felix', 'Mayito@gruz.com', 7),
(7, 'jan ', 'Jan.Sebas@gmail.com', 5),
(8, 'Jen ', 'jen@gmail.com', 5),
(9, 'Luis Alberto', 'Luis.Zamora22@gmail.com', 3),
(10, 'Ibarra', 'cetis107@cetis107.edu.mx', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generos_id` (`generos_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`generos_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
