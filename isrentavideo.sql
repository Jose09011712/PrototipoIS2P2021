-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2021 a las 22:18:18
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `isrentavideo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--

CREATE TABLE `aplicacion` (
  `pk_id_aplicacion` int(10) NOT NULL,
  `fk_id_modulo` int(10) NOT NULL,
  `nombre_aplicacion` varchar(40) NOT NULL,
  `descripcion_aplicacion` varchar(45) NOT NULL,
  `estado_aplicacion` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aplicacion`
--

INSERT INTO `aplicacion` (`pk_id_aplicacion`, `fk_id_modulo`, `nombre_aplicacion`, `descripcion_aplicacion`, `estado_aplicacion`) VALUES
(1, 1, 'Login', 'Ventana de Ingreso', 1),
(2, 1, 'Mantenimiento Usuario', 'Mantenimientos de usuario', 1),
(3, 1, 'Mantenimiento Aplicacion', 'ABC de las Aplicaciones', 1),
(4, 1, 'Mantenimiento Perfil', 'ABC de perfiles', 1),
(5, 1, 'Asignacion de Aplicaciones a Perfil', 'Asignacion Aplicacion y perfil', 1),
(6, 1, 'Asignacaion de Aplicaciones', 'Asignacion especificas a un usuario', 1),
(7, 1, 'Consulta Aplicacion', 'Mantenimiento de Aplicaciones', 1),
(8, 1, 'Agregar Modulo', 'Mantenimientos de Modulos', 1),
(9, 1, 'Consultar Perfil', 'Consultas de perfiles disponibles', 1),
(10, 1, 'Permisos', 'Asignar permisos a perfiles y aplicaciones', 1),
(11, 1, 'Bitacora', 'Guarda todos los movimientos', 1),
(12, 10, 'Gestión de Citas ', 'Gestionar Citas', 1),
(1302, 5, 'Tipo Caso', 'Tipo de casos', 1),
(1303, 5, 'Tipo Pasaporte', 'Tipo Pasaporte', 1),
(1304, 5, 'Tipo Tramite', 'Tipo Tramite', 1),
(1305, 5, 'Centro', 'Centro', 1),
(1306, 5, 'PROPIETARIO', 'PROPIETARIO', 1),
(1307, 5, 'TRANSACCIONES', 'TRANSACCIONES', 1),
(1308, 5, 'DISPONIBILIDAD DIARIA', 'REPORTE DE DISPONIBILIDAD DIARIA', 1),
(1309, 5, 'PETICION POLIZA', 'PETICION POLIZA', 1),
(1310, 5, 'CUENTAS CONTABLES', 'AGREGAR CUENTAS CONTABLES', 1),
(1311, 5, 'POLIZAS', 'POLIZAS', 1),
(1312, 5, 'LIBRO DIARIO', 'LIBRO DIARIO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion_perfil`
--

CREATE TABLE `aplicacion_perfil` (
  `pk_id_aplicacion_perfil` int(10) NOT NULL,
  `fk_idaplicacion_aplicacion_perfil` int(10) DEFAULT NULL,
  `fk_idperfil_aplicacion_perfil` int(10) DEFAULT NULL,
  `fk_idpermiso_aplicacion_perfil` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aplicacion_perfil`
--

INSERT INTO `aplicacion_perfil` (`pk_id_aplicacion_perfil`, `fk_idaplicacion_aplicacion_perfil`, `fk_idperfil_aplicacion_perfil`, `fk_idpermiso_aplicacion_perfil`) VALUES
(1, 1, 1, 1),
(2, 4, 1, 2),
(3, 5, 1, 3),
(4, 2, 1, 4),
(5, 3, 1, 5),
(6, 6, 1, 6),
(7, 8, 1, 7),
(8, 2, 3, 8),
(9, 3, 3, 9),
(10, 4, 3, 11),
(11, 2, 4, 12),
(12, 8, 4, 13),
(13, 8, 5, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion_usuario`
--

CREATE TABLE `aplicacion_usuario` (
  `pk_id_aplicacion_usuario` int(10) NOT NULL,
  `fk_idlogin_aplicacion_usuario` int(10) DEFAULT NULL,
  `fk_idaplicacion_aplicacion_usuario` int(10) DEFAULT NULL,
  `fk_idpermiso_aplicacion_usuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aplicacion_usuario`
--

INSERT INTO `aplicacion_usuario` (`pk_id_aplicacion_usuario`, `fk_idlogin_aplicacion_usuario`, `fk_idaplicacion_aplicacion_usuario`, `fk_idpermiso_aplicacion_usuario`) VALUES
(1, 1, 4, 1),
(2, 1, 5, 2),
(3, 1, 6, 3),
(4, 3, 8, 10),
(5, 4, 6, 14),
(6, 5, 5, 16),
(7, 5, 2, 17),
(8, 6, 2, 1),
(9, 6, 3, 1),
(10, 6, 4, 1),
(11, 6, 6, 1),
(12, 6, 8, 1),
(13, 6, 1302, 1),
(14, 6, 1303, 1),
(15, 6, 1304, 1),
(16, 6, 1305, 1),
(17, 6, 1306, 1),
(18, 6, 12, 1),
(19, 7, 12, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `pk_id_bitacora` int(10) NOT NULL,
  `fk_idusuario_bitacora` int(10) DEFAULT NULL,
  `fk_idaplicacion_bitacora` int(10) DEFAULT NULL,
  `fechahora_bitacora` varchar(50) DEFAULT NULL,
  `direccionhost_bitacora` varchar(20) DEFAULT NULL,
  `nombrehost_bitacora` varchar(20) DEFAULT NULL,
  `accion_bitacora` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`pk_id_bitacora`, `fk_idusuario_bitacora`, `fk_idaplicacion_bitacora`, `fechahora_bitacora`, `direccionhost_bitacora`, `nombrehost_bitacora`, `accion_bitacora`) VALUES
(1, 6, 1, '21/04/2021 11:14:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(2, 6, 1302, '21/04/2021 11:14:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(3, 6, 1302, '21/04/2021 11:14:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(4, 6, 1302, '21/04/2021 11:14:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(5, 6, 1302, '21/04/2021 11:14:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO tipocliente VALUES ( 1,  Normal,  1) '),
(6, 6, 1302, '21/04/2021 11:14:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(7, 6, 1302, '21/04/2021 11:14:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO proveedor VALUES ( 1,  Jose ,  Lopez,  1) '),
(8, 6, 1302, '21/04/2021 11:14:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(9, 6, 1302, '21/04/2021 11:14:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(10, 6, 1302, '21/04/2021 11:14:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(11, 6, 1302, '21/04/2021 11:14:22', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(12, 6, 1, '21/04/2021 11:18:44', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(13, 6, 1302, '21/04/2021 11:18:44', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(14, 6, 1302, '21/04/2021 11:18:44', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO tipovideo VALUES ( 1,  Romance,  1) '),
(15, 6, 1302, '21/04/2021 11:18:44', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO tipovideo VALUES ( 2,  MIEDO,  1) '),
(16, 6, 1302, '21/04/2021 11:18:44', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO tipovideo VALUES ( 3,  TERROR,  1) '),
(17, 6, 1302, '21/04/2021 11:18:44', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(18, 6, 1302, '21/04/2021 11:18:44', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 1,  hoy y mañana ,  1,  1,  1) '),
(19, 6, 1302, '21/04/2021 11:18:44', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(20, 6, 1302, '21/04/2021 11:18:44', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(21, 6, 1302, '21/04/2021 11:18:44', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(22, 6, 1302, '21/04/2021 11:18:44', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Cancelar'),
(23, 6, 1, '21/04/2021 11:24:30', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(24, 6, 1302, '21/04/2021 11:24:30', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(25, 6, 1302, '21/04/2021 11:24:30', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(26, 6, 1302, '21/04/2021 11:24:30', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(27, 6, 1, '21/04/2021 11:25:59', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(28, 6, 1302, '21/04/2021 11:25:59', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(29, 6, 1302, '21/04/2021 11:25:59', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(30, 6, 1, '21/04/2021 11:30:05', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(31, 6, 1302, '21/04/2021 11:30:05', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(32, 6, 1302, '21/04/2021 11:30:05', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 2,  nuevo,  1,  2,  1) '),
(33, 6, 1302, '21/04/2021 11:30:05', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 2,  dos,  1,  1,  1) '),
(34, 6, 1302, '21/04/2021 11:30:05', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 3,  tres,  1,  3,  1) '),
(35, 6, 1302, '21/04/2021 11:30:05', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 3,  tres,  1,  2,  1) '),
(36, 6, 1302, '21/04/2021 11:30:05', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 3,  j,  1,  3,  1) '),
(37, 6, 1302, '21/04/2021 11:30:05', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 3,  tres,  1,  2,  1) '),
(38, 6, 1, '21/04/2021 11:37:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(39, 6, 1302, '21/04/2021 11:37:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(40, 6, 1, '21/04/2021 11:38:31', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(41, 6, 1302, '21/04/2021 11:38:31', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(42, 6, 1302, '21/04/2021 11:38:31', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 3,  NUEVO,  3,  1,  1) '),
(43, 6, 1302, '21/04/2021 11:38:31', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 4,  NUEVO,  3,  1,  1) '),
(44, 6, 1, '21/04/2021 11:40:35', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(45, 6, 1302, '21/04/2021 11:40:35', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(46, 6, 1302, '21/04/2021 11:40:35', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Cancelar'),
(47, 6, 1, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(48, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(49, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO tipovideo VALUES ( 4,  UNO,  1) '),
(50, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(51, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 5,  DOS,  2,  1,  1) '),
(52, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(53, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(54, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO cliente VALUES ( 1,  1,  jose,  lopez,  1254888,  41023655,  guatemala,  1) '),
(55, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(56, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', ' INSERT INTO proveedor VALUES ( 2,  LOPEZ,  LOPEZ,  1) '),
(57, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(58, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(59, 6, 1302, '21/04/2021 11:54:21', 'fdb4:f58e:1300:1d00:', 'DESKTOP-7VFVMJ5', 'Cancelar'),
(60, 6, 1, '21/04/2021 12:36:53', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(61, 6, 1302, '21/04/2021 12:36:53', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(62, 6, 1, '21/04/2021 12:37:40', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(63, 6, 1302, '21/04/2021 12:37:40', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(64, 6, 1302, '21/04/2021 12:37:40', '192.168.4.18', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 6,  CINCO,  2,  2,  250,  1) '),
(65, 6, 1, '21/04/2021 12:49:42', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(66, 6, 1302, '21/04/2021 12:49:42', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(67, 6, 1, '21/04/2021 12:53:13', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(68, 6, 1302, '21/04/2021 12:53:13', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(69, 6, 1, '21/04/2021 13:01:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(70, 6, 1302, '21/04/2021 13:01:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(71, 6, 1, '21/04/2021 13:03:15', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(72, 6, 1302, '21/04/2021 13:03:15', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(73, 6, 1, '21/04/2021 13:04:45', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(74, 6, 1302, '21/04/2021 13:04:45', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(75, 6, 1, '21/04/2021 13:15:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(76, 6, 1302, '21/04/2021 13:15:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(77, 6, 1, '21/04/2021 13:30:27', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(78, 6, 1302, '21/04/2021 13:30:27', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(79, 6, 1, '21/04/2021 13:34:50', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(80, 6, 1302, '21/04/2021 13:34:50', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(81, 6, 1, '21/04/2021 13:36:44', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(82, 6, 1302, '21/04/2021 13:36:44', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(83, 6, 1, '21/04/2021 13:48:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(84, 6, 1302, '21/04/2021 13:48:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(85, 6, 1, '21/04/2021 13:50:27', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(86, 6, 1302, '21/04/2021 13:50:27', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(87, 6, 1, '21/04/2021 13:58:19', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(88, 6, 2, '21/04/2021 13:58:19', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(89, 6, 3, '21/04/2021 13:58:19', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de aplicaciones'),
(90, 6, 4, '21/04/2021 13:58:19', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso a la apliacion de mantenimiento de perfil'),
(91, 6, 1, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(92, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(93, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', ' INSERT INTO tipovideo VALUES ( 5,  terror,  1) '),
(94, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', ' INSERT INTO tipovideo VALUES ( 6,  SUSPENSO,  1) '),
(95, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(96, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 7,  UNA LUNA NUEVA,  1,  2,  50,  1) '),
(97, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', ' INSERT INTO video VALUES ( 8,  EL DIA DESPUES DE MAÑANA,  6,  2,  50,  1) '),
(98, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(99, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', ' INSERT INTO tipocliente VALUES ( 2,  EJECUTIVO,  1) '),
(100, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', ' INSERT INTO tipocliente VALUES ( 3,  EMPRESARIAL,  1) '),
(101, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(102, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', ' INSERT INTO cliente VALUES ( 2,  2,  AEREOLINEA NUEVA,  AEREOLINEA NUEVA,  00000,  41020202,  GUATEMALA,  1) '),
(103, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', ' INSERT INTO cliente VALUES ( 3,  3,  PRESIDENTE DE GUATEMALA,  PRESIDENTE DE GUATEMALA,  145238522,  123456789,  GUATEMALA,  1) '),
(104, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(105, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', ' INSERT INTO proveedor VALUES ( 3,  SERGIO,  ENRIQUE,  1) '),
(106, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(107, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(108, 6, 1302, '21/04/2021 14:07:00', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(109, 6, 1, '21/04/2021 14:11:53', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(110, 6, 2, '21/04/2021 14:11:53', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(111, 6, 3, '21/04/2021 14:11:53', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de aplicaciones'),
(112, 6, 6, '21/04/2021 14:11:53', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso a la asignacion de aplicaciones'),
(113, 6, 4, '21/04/2021 14:11:53', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso a la apliacion de mantenimiento de perfil'),
(114, 6, 6, '21/04/2021 14:11:53', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso a la asignacion de aplicaciones'),
(115, 6, 1, '21/04/2021 14:15:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Logeo Exitoso'),
(116, 6, 1302, '21/04/2021 14:15:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(117, 6, 1302, '21/04/2021 14:15:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(118, 6, 1302, '21/04/2021 14:15:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(119, 6, 1302, '21/04/2021 14:15:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(120, 6, 1302, '21/04/2021 14:15:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(121, 6, 1302, '21/04/2021 14:15:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios'),
(122, 6, 1302, '21/04/2021 14:15:58', '192.168.4.18', 'DESKTOP-7VFVMJ5', 'Ingreso al mantenimiento de usuarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonos`
--

CREATE TABLE `bonos` (
  `idBonos` int(10) NOT NULL,
  `idCliente` int(10) DEFAULT NULL,
  `cantidad` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(10) NOT NULL,
  `idTipoCliente` int(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `DPI` varchar(13) DEFAULT NULL,
  `telefono` varchar(8) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `idTipoCliente`, `nombre`, `apellido`, `DPI`, `telefono`, `direccion`, `estado`) VALUES
(1, 1, 'jose', 'lopez', '1254888', '41023655', 'guatemala', 1),
(2, 2, 'AEREOLINEA NUEVA', 'AEREOLINEA NUEVA', '0', '41020202', 'GUATEMALA', 1),
(3, 3, 'PRESIDENTE DE GUATEMALA', 'PRESIDENTE DE GUATEMALA', '145238522', '12345678', 'GUATEMALA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallerentavideo`
--

CREATE TABLE `detallerentavideo` (
  `idEncabezadoRentaVideo` int(10) NOT NULL,
  `idVideo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallerentavideo`
--

INSERT INTO `detallerentavideo` (`idEncabezadoRentaVideo`, `idVideo`) VALUES
(1, 1),
(2, 1),
(2, 1),
(2, 3),
(2, 5),
(2, 6),
(3, 6),
(3, 6),
(3, 6),
(4, 2),
(5, 1),
(5, 7),
(5, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_bitacora`
--

CREATE TABLE `detalle_bitacora` (
  `pk_id_detalle_bitacora` int(10) NOT NULL,
  `fk_idbitacora_detalle_bitacora` int(10) DEFAULT NULL,
  `querryantigua_detalle_bitacora` varchar(50) DEFAULT NULL,
  `querrynueva_detalle_bitacora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezadorentavideo`
--

CREATE TABLE `encabezadorentavideo` (
  `idEncabezadoRentaVideo` int(10) NOT NULL,
  `idCliente` int(10) DEFAULT NULL,
  `fechaRenta` datetime DEFAULT NULL,
  `valorTotal` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `encabezadorentavideo`
--

INSERT INTO `encabezadorentavideo` (`idEncabezadoRentaVideo`, `idCliente`, `fechaRenta`, `valorTotal`) VALUES
(1, 1, '2021-04-21 13:04:00', 0.00),
(2, 1, '2021-04-21 13:04:00', 0.00),
(3, 1, '2021-04-21 13:04:00', 0.00),
(4, 1, '2021-04-21 13:04:00', 0.00),
(5, 1, '2021-04-21 14:04:00', 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `pk_id_login` int(10) NOT NULL,
  `usuario_login` varchar(45) DEFAULT NULL,
  `contraseña_login` varchar(45) DEFAULT NULL,
  `nombreCompleto_login` varchar(100) DEFAULT NULL,
  `estado_login` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`pk_id_login`, `usuario_login`, `contraseña_login`, `nombreCompleto_login`, `estado_login`) VALUES
(1, 'sistema', 'bi0PL96rbxVRPKJQsLJJAg==', 'Usuario de prueba', 1),
(2, 'bjsican', '0FOYy5u5h0djKjzCYqfvkg==', 'Billy Sican', 1),
(3, 'bmaza', 'xTfsC3/XR/CVyDvNr1Fs+g==', 'Bryan Mazariegos', 1),
(4, 'jsican', 'jsican', 'Jeshua Sican', 0),
(5, 'jmorataya', '123', 'Julio Morataya', 0),
(6, 'JLOPEZ', 'LwUsihMe9Bl//D/5WaIzLA==', 'JOSE LOPEZ', 1),
(7, 'cliente', '21LRuDS2GcjNgOcK8q54Aw==', 'Usuario para clientes', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `pk_id_modulo` int(10) NOT NULL,
  `nombre_modulo` varchar(30) NOT NULL,
  `descripcion_modulo` varchar(50) NOT NULL,
  `estado_modulo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`pk_id_modulo`, `nombre_modulo`, `descripcion_modulo`, `estado_modulo`) VALUES
(1, 'Seguridad', 'Aplicaciones de seguridad', 1),
(2, 'Consultas', 'Consultas Inteligentes', 1),
(3, 'Reporteador', 'Aplicaciones de Reporteador', 1),
(4, 'HRM', 'Aplicaciones de Recursos Humanos', 1),
(5, 'FRM', 'Aplicaciones de Finanzas', 1),
(6, 'SCM', 'Aplicaciones Control de Inventario', 1),
(7, 'MRP', 'Aplicaciones de Produccion', 1),
(8, 'CRM', 'Aplicaciones de Ventas', 1),
(9, 'PRUEBA', 'PRUEBA', 1),
(10, 'Gestión de Citas', 'En este modulo se pueden gestionar las citas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `pk_id_perfil` int(10) NOT NULL,
  `nombre_perfil` varchar(50) DEFAULT NULL,
  `descripcion_perfil` varchar(100) DEFAULT NULL,
  `estado_perfil` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`pk_id_perfil`, `nombre_perfil`, `descripcion_perfil`, `estado_perfil`) VALUES
(1, 'Admin', 'Administracion del programa', 1),
(2, 'Sistema', 'Administrador del sistema', 1),
(3, 'Digitador', 'Digitador para Cuentas', 1),
(4, 'Consultor', 'Unicamente consultas ', 1),
(5, 'Reportes', 'Ingreso y consultas de reportes', 1),
(6, 'Pruebas', 'pruebas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_usuario`
--

CREATE TABLE `perfil_usuario` (
  `pk_id_perfil_usuario` int(10) NOT NULL,
  `fk_idusuario_perfil_usuario` int(10) DEFAULT NULL,
  `fk_idperfil_perfil_usuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfil_usuario`
--

INSERT INTO `perfil_usuario` (`pk_id_perfil_usuario`, `fk_idusuario_perfil_usuario`, `fk_idperfil_perfil_usuario`) VALUES
(2, 3, 3),
(4, 4, 1),
(5, 5, 5),
(6, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `pk_id_permiso` int(10) NOT NULL,
  `insertar_permiso` tinyint(1) DEFAULT NULL,
  `modificar_permiso` tinyint(1) DEFAULT NULL,
  `eliminar_permiso` tinyint(1) DEFAULT NULL,
  `consultar_permiso` tinyint(1) DEFAULT NULL,
  `imprimir_permiso` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`pk_id_permiso`, `insertar_permiso`, `modificar_permiso`, `eliminar_permiso`, `consultar_permiso`, `imprimir_permiso`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 1, 0, 0, 1, 1),
(3, 1, 1, 1, 0, 0),
(4, 1, 1, 1, 1, 1),
(5, 1, 1, 1, 1, 1),
(6, 1, 1, 1, 1, 1),
(7, 1, 1, 1, 1, 1),
(8, 1, 0, 1, 0, 0),
(9, 1, 1, 0, 0, 0),
(10, 1, 1, 0, 0, 0),
(11, 1, 1, 1, 1, 1),
(12, 0, 0, 0, 1, 0),
(13, 0, 0, 0, 1, 0),
(14, 0, 0, 0, 0, 0),
(15, 1, 0, 0, 1, 0),
(16, 0, 0, 0, 0, 0),
(17, 1, 1, 0, 0, 0),
(18, 0, 0, 0, 0, 0),
(19, 0, 0, 0, 0, 0),
(20, 0, 0, 0, 0, 0),
(21, 0, 0, 0, 0, 0),
(22, 0, 0, 0, 0, 0),
(23, 0, 0, 0, 0, 0),
(24, 0, 0, 0, 0, 0),
(25, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `nombre`, `apellido`, `estado`) VALUES
(1, 'Jose ', 'Lopez', 1),
(2, 'LOPEZ', 'LOPEZ', 1),
(3, 'SERGIO', 'ENRIQUE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `targetasocio`
--

CREATE TABLE `targetasocio` (
  `idTargetaSocio` int(10) NOT NULL,
  `numeroTargeta` int(10) DEFAULT NULL,
  `idCliente` int(10) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocliente`
--

CREATE TABLE `tipocliente` (
  `idTipoCliente` int(10) NOT NULL,
  `tipoCliente` varchar(50) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipocliente`
--

INSERT INTO `tipocliente` (`idTipoCliente`, `tipoCliente`, `estado`) VALUES
(1, 'Normal', 1),
(2, 'EJECUTIVO', 1),
(3, 'EMPRESARIAL', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipovideo`
--

CREATE TABLE `tipovideo` (
  `idTipoVideo` int(10) NOT NULL,
  `TipoVideo` varchar(50) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipovideo`
--

INSERT INTO `tipovideo` (`idTipoVideo`, `TipoVideo`, `estado`) VALUES
(1, 'Romance', 1),
(2, 'MIEDO', 1),
(3, 'TERROR', 1),
(4, 'UNO', 1),
(5, 'terror', 1),
(6, 'SUSPENSO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `idVideo` int(10) NOT NULL,
  `Video` varchar(50) DEFAULT NULL,
  `idTipoVideo` int(10) DEFAULT NULL,
  `idProveedor` int(10) DEFAULT NULL,
  `Existencia` int(11) NOT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`idVideo`, `Video`, `idTipoVideo`, `idProveedor`, `Existencia`, `estado`) VALUES
(1, 'hoy y mañana ', 1, 1, 0, 1),
(2, 'dos', 1, 1, 0, 1),
(3, 'NUEVO', 3, 1, 0, 1),
(4, 'NUEVO', 3, 1, 0, 1),
(5, 'DOS', 2, 1, 0, 1),
(6, 'CINCO', 2, 2, 250, 1),
(7, 'UNA LUNA NUEVA', 1, 2, 50, 1),
(8, 'EL DIA DESPUES DE MAÑANA', 6, 2, 50, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD PRIMARY KEY (`pk_id_aplicacion`),
  ADD KEY `pk_id_aplicacion` (`pk_id_aplicacion`),
  ADD KEY `fk_aplicacion_modulo` (`fk_id_modulo`);

--
-- Indices de la tabla `aplicacion_perfil`
--
ALTER TABLE `aplicacion_perfil`
  ADD PRIMARY KEY (`pk_id_aplicacion_perfil`),
  ADD KEY `fk_aplicacionperfil_aplicacion` (`fk_idaplicacion_aplicacion_perfil`),
  ADD KEY `fk_aplicacionperfil_perfil` (`fk_idperfil_aplicacion_perfil`),
  ADD KEY `fk_aplicacionperfil_permiso` (`fk_idpermiso_aplicacion_perfil`);

--
-- Indices de la tabla `aplicacion_usuario`
--
ALTER TABLE `aplicacion_usuario`
  ADD PRIMARY KEY (`pk_id_aplicacion_usuario`),
  ADD KEY `fk_aplicacionusuario_login` (`fk_idlogin_aplicacion_usuario`),
  ADD KEY `fk_aplicacionusuario_aplicacion` (`fk_idaplicacion_aplicacion_usuario`),
  ADD KEY `fk_aplicacionusuario_permiso` (`fk_idpermiso_aplicacion_usuario`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`pk_id_bitacora`),
  ADD KEY `fk_login_bitacora` (`fk_idusuario_bitacora`),
  ADD KEY `fk_aplicacion_bitacora` (`fk_idaplicacion_bitacora`);

--
-- Indices de la tabla `bonos`
--
ALTER TABLE `bonos`
  ADD PRIMARY KEY (`idBonos`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `idTipoCliente` (`idTipoCliente`);

--
-- Indices de la tabla `detallerentavideo`
--
ALTER TABLE `detallerentavideo`
  ADD KEY `idEncabezadoRentaVideo` (`idEncabezadoRentaVideo`),
  ADD KEY `idVideo` (`idVideo`);

--
-- Indices de la tabla `detalle_bitacora`
--
ALTER TABLE `detalle_bitacora`
  ADD PRIMARY KEY (`pk_id_detalle_bitacora`),
  ADD KEY `fk_bitacora_detallebitacora` (`fk_idbitacora_detalle_bitacora`);

--
-- Indices de la tabla `encabezadorentavideo`
--
ALTER TABLE `encabezadorentavideo`
  ADD PRIMARY KEY (`idEncabezadoRentaVideo`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pk_id_login`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`pk_id_modulo`),
  ADD KEY `pk_id_modulo` (`pk_id_modulo`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`pk_id_perfil`);

--
-- Indices de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD PRIMARY KEY (`pk_id_perfil_usuario`),
  ADD KEY `fk_perfil_usuario_login` (`fk_idusuario_perfil_usuario`),
  ADD KEY `fk_perfil_usuario_perfil` (`fk_idperfil_perfil_usuario`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`pk_id_permiso`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `targetasocio`
--
ALTER TABLE `targetasocio`
  ADD PRIMARY KEY (`idTargetaSocio`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `tipocliente`
--
ALTER TABLE `tipocliente`
  ADD PRIMARY KEY (`idTipoCliente`);

--
-- Indices de la tabla `tipovideo`
--
ALTER TABLE `tipovideo`
  ADD PRIMARY KEY (`idTipoVideo`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`idVideo`),
  ADD KEY `idTipoVideo` (`idTipoVideo`),
  ADD KEY `idProveedor` (`idProveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  MODIFY `pk_id_aplicacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1313;

--
-- AUTO_INCREMENT de la tabla `aplicacion_perfil`
--
ALTER TABLE `aplicacion_perfil`
  MODIFY `pk_id_aplicacion_perfil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `aplicacion_usuario`
--
ALTER TABLE `aplicacion_usuario`
  MODIFY `pk_id_aplicacion_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `pk_id_bitacora` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `detalle_bitacora`
--
ALTER TABLE `detalle_bitacora`
  MODIFY `pk_id_detalle_bitacora` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `pk_id_login` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `pk_id_modulo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `pk_id_perfil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  MODIFY `pk_id_perfil_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `pk_id_permiso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD CONSTRAINT `fk_aplicacion_modulo` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`);

--
-- Filtros para la tabla `aplicacion_perfil`
--
ALTER TABLE `aplicacion_perfil`
  ADD CONSTRAINT `fk_aplicacionperfil_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacion_perfil`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionperfil_perfil` FOREIGN KEY (`fk_idperfil_aplicacion_perfil`) REFERENCES `perfil` (`pk_id_perfil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionperfil_permiso` FOREIGN KEY (`fk_idpermiso_aplicacion_perfil`) REFERENCES `permiso` (`pk_id_permiso`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `aplicacion_usuario`
--
ALTER TABLE `aplicacion_usuario`
  ADD CONSTRAINT `fk_aplicacionusuario_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacion_usuario`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionusuario_login` FOREIGN KEY (`fk_idlogin_aplicacion_usuario`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionusuario_permiso` FOREIGN KEY (`fk_idpermiso_aplicacion_usuario`) REFERENCES `permiso` (`pk_id_permiso`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `fk_aplicacion_bitacora` FOREIGN KEY (`fk_idaplicacion_bitacora`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_login_bitacora` FOREIGN KEY (`fk_idusuario_bitacora`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `bonos`
--
ALTER TABLE `bonos`
  ADD CONSTRAINT `bonos_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idTipoCliente`) REFERENCES `tipocliente` (`idTipoCliente`);

--
-- Filtros para la tabla `detallerentavideo`
--
ALTER TABLE `detallerentavideo`
  ADD CONSTRAINT `detallerentavideo_ibfk_1` FOREIGN KEY (`idEncabezadoRentaVideo`) REFERENCES `encabezadorentavideo` (`idEncabezadoRentaVideo`),
  ADD CONSTRAINT `detallerentavideo_ibfk_2` FOREIGN KEY (`idVideo`) REFERENCES `video` (`idVideo`);

--
-- Filtros para la tabla `detalle_bitacora`
--
ALTER TABLE `detalle_bitacora`
  ADD CONSTRAINT `fk_bitacora_detallebitacora` FOREIGN KEY (`fk_idbitacora_detalle_bitacora`) REFERENCES `bitacora` (`pk_id_bitacora`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `encabezadorentavideo`
--
ALTER TABLE `encabezadorentavideo`
  ADD CONSTRAINT `encabezadorentavideo_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Filtros para la tabla `perfil_usuario`
--
ALTER TABLE `perfil_usuario`
  ADD CONSTRAINT `fk_perfil_usuario_login` FOREIGN KEY (`fk_idusuario_perfil_usuario`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_perfil_usuario_perfil` FOREIGN KEY (`fk_idperfil_perfil_usuario`) REFERENCES `perfil` (`pk_id_perfil`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `targetasocio`
--
ALTER TABLE `targetasocio`
  ADD CONSTRAINT `targetasocio_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Filtros para la tabla `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`idTipoVideo`) REFERENCES `tipovideo` (`idTipoVideo`),
  ADD CONSTRAINT `video_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
