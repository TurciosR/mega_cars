-- phpMyAdmin SQL Dump
-- version 5.0.4deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-03-2022 a las 21:04:06
-- Versión del servidor: 10.5.12-MariaDB-0+deb11u1
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `motostop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abono_credito`
--

CREATE TABLE `abono_credito` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_abono_credito` int(11) NOT NULL,
  `id_credito` int(11) NOT NULL,
  `abono` float NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `tipo_doc` varchar(25) NOT NULL,
  `num_doc` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `access_conf`
--

CREATE TABLE `access_conf` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_conf` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `hash` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `access_conf`
--

INSERT INTO `access_conf` (`id_server`, `unique_id`, `id_conf`, `id_sucursal`, `hash`) VALUES
(1, 'O60d7df1a6e0ba6.40217911', 1, 1, 'OIQWAjLkd79ggETQkaSF3UW5x4wPRQkmfHqJsHLVY7aKPbs642CaWcON3+3OMUrKnjc6j6Qd0PvrNLwP11cGioWaHob/OFyq5fx2lBwzT8UK4iLKjzbr/6lpk9KNOKxM8TRtYmJjpaVFUKGU4EOYaW9CeFXbJNZdvrNJpIhxRFg=');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `altclitocli`
--

CREATE TABLE `altclitocli` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id` int(11) NOT NULL,
  `datax` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `ejecutado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apertura_caja`
--

CREATE TABLE `apertura_caja` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_apertura` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `caja` int(11) NOT NULL,
  `turno_vigente` tinyint(1) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `turno` int(11) NOT NULL,
  `monto_apertura` double NOT NULL,
  `monto_ch` decimal(10,2) NOT NULL,
  `monto_ch_actual` decimal(10,2) NOT NULL,
  `tiket_inicia` int(11) NOT NULL,
  `factura_inicia` int(11) NOT NULL,
  `credito_fiscal_inicia` int(11) NOT NULL,
  `dev_inicia` int(11) NOT NULL,
  `vigente` tinyint(1) NOT NULL,
  `monto_vendido` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `apertura_caja`
--

INSERT INTO `apertura_caja` (`id_server`, `unique_id`, `id_sucursal`, `id_apertura`, `fecha`, `hora`, `caja`, `turno_vigente`, `id_empleado`, `turno`, `monto_apertura`, `monto_ch`, `monto_ch_actual`, `tiket_inicia`, `factura_inicia`, `credito_fiscal_inicia`, `dev_inicia`, `vigente`, `monto_vendido`) VALUES
(0, 'S621540ab7aca42.43627273', 1, 1, '2022-02-22', '13:59:39', 1, 0, 1, 2, 10, '0.00', '0.00', 0, 0, 0, 0, 0, 10),
(0, 'S621640c3a07498.71906139', 1, 2, '2022-02-23', '08:12:19', 1, 0, 1, 1, 10, '0.00', '0.00', 0, 0, 0, 0, 0, 0),
(0, 'S621a6931e7dee2.32690725', 1, 3, '2022-02-26', '11:53:53', 1, 0, 1, 2, 200, '0.00', '0.00', 0, 0, 0, 0, 0, 200),
(0, 'S621cdda93221f8.07387448', 1, 4, '2022-02-28', '08:35:21', 1, 0, 1, 2, 400, '0.00', '0.00', 0, 0, 0, 0, 0, 400),
(0, 'S621e3595cc87e2.15414116', 1, 5, '2022-03-01', '09:02:45', 1, 0, 1, 2, 300, '0.00', '0.00', 0, 0, 0, 0, 0, 300),
(0, 'S621ce4b0dc7e39.32557184', 1, 6, '2022-02-28', '09:05:20', 1, 0, 1, 4, 300, '0.00', '0.00', 0, 0, 0, 0, 0, 300),
(0, 'S621fa61d6980c6.18821306', 1, 7, '2022-03-02', '11:15:09', 1, 0, 1, 2, 300, '0.00', '0.00', 0, 0, 0, 0, 0, 300),
(0, 'S62237d63515fc5.24468721', 1, 8, '2022-03-05', '09:10:27', 1, 0, 1, 2, 300, '0.00', '0.00', 0, 0, 0, 0, 0, 300),
(0, 'S6224d180258983.64944124', 1, 9, '2022-03-06', '09:21:36', 1, 0, 1, 2, 300, '0.00', '0.00', 0, 0, 0, 0, 0, 300),
(0, 'S6223886786d248.46177660', 1, 10, '2022-03-05', '09:57:27', 1, 0, 1, 4, 300, '0.00', '0.00', 0, 0, 0, 0, 0, 450),
(0, 'S622616c1017b16.22631975', 1, 11, '2022-03-07', '08:29:21', 1, 0, 1, 2, 300, '0.00', '0.00', 0, 0, 0, 0, 0, 300),
(0, 'S6228cd27ef1910.17513822', 1, 12, '2022-03-09', '09:52:07', 1, 0, 1, 2, 20, '0.00', '0.00', 0, 0, 0, 0, 0, 20),
(0, 'S622a092cdd93e7.42147925', 1, 13, '2022-03-10', '08:20:28', 1, 0, 1, 2, 20, '0.00', '0.00', 0, 0, 0, 0, 0, 20),
(0, 'S622ba88060d367.16366474', 1, 14, '2022-03-11', '13:52:32', 1, 0, 1, 2, 1, '0.00', '0.00', 0, 0, 0, 0, 0, 1),
(0, 'S622ca5d71272d2.61291262', 1, 15, '2022-03-12', '07:53:27', 1, 0, 1, 2, 10, '0.00', '0.00', 0, 0, 0, 0, 0, 10),
(0, 'S6230c19b26f789.24361267', 1, 16, '2022-03-15', '10:40:59', 1, 1, 1, 1, 20, '0.00', '0.00', 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_banco` int(1) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`id_server`, `unique_id`, `id_sucursal`, `id_banco`, `nombre`, `logo`) VALUES
(1, 'O60d7df1abbd429.49149694', 1, 1, 'banco agricola', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_caja` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `serie` varchar(11) NOT NULL,
  `desde` int(11) NOT NULL,
  `hasta` int(11) NOT NULL,
  `correlativo_dispo` int(11) NOT NULL,
  `resolucion` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `activa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id_server`, `unique_id`, `id_sucursal`, `id_caja`, `nombre`, `serie`, `desde`, `hasta`, `correlativo_dispo`, `resolucion`, `fecha`, `activa`) VALUES
(1, 'O60d7df1abdfca2.64813667', 1, 1, 'Caja 1', 'A', 1, 1000000, 4, 'RES-000-0001', '2018-06-21', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre_cat` varchar(30) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `id_sucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_server`, `unique_id`, `id_categoria`, `nombre_cat`, `descripcion`, `id_sucursal`) VALUES
(0, 'S62153e9c0d4050.46000728', 1, 'REPUESTOS', 'REPUESTOS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_proveedor`
--

CREATE TABLE `categoria_proveedor` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria_proveedor`
--

INSERT INTO `categoria_proveedor` (`id_server`, `unique_id`, `id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'O60d7df1c049da6.37304596', 1, 'Consumidor', ''),
(2, 'O60d7df1c061301.99757941', 2, 'Contribuyente', ''),
(3, 'O60d7df1c082b28.77418638', 3, 'Gran Contribuyente', ''),
(4, 'O60d7df1c0a3282.63575036', 4, 'Contribuyente Exento', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cheque`
--

CREATE TABLE `cheque` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_cheque` int(11) NOT NULL,
  `cheque` varchar(50) DEFAULT NULL,
  `monto` float NOT NULL,
  `id_movimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `categoria` int(1) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `razon_social` varchar(250) NOT NULL,
  `direccion` text DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `depto` varchar(100) DEFAULT NULL,
  `pais` varchar(11) DEFAULT NULL,
  `dui` varchar(15) DEFAULT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `nrc` varchar(12) DEFAULT NULL,
  `giro` varchar(40) DEFAULT NULL,
  `telefono1` varchar(12) DEFAULT NULL,
  `telefono2` varchar(12) DEFAULT NULL,
  `fax` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ultventa` date DEFAULT NULL,
  `acumulado` int(1) DEFAULT NULL,
  `saldo` int(1) DEFAULT NULL,
  `percibe` int(1) DEFAULT NULL,
  `retiene` int(10) DEFAULT NULL,
  `retiene10` tinyint(1) NOT NULL,
  `inactivo` tinyint(1) NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_server`, `unique_id`, `id_sucursal`, `id_cliente`, `categoria`, `nombre`, `razon_social`, `direccion`, `municipio`, `depto`, `pais`, `dui`, `nit`, `nrc`, `giro`, `telefono1`, `telefono2`, `fax`, `email`, `ultventa`, `acumulado`, `saldo`, `percibe`, `retiene`, `retiene10`, `inactivo`, `latitud`, `longitud`) VALUES
(-1, 'O60d7df1c0de0a9.76843526', 1, -1, 1, 'MOSTRADOR', '', '', '81', '13', NULL, '', '0000-000000-000-0', '000000-0', '', '0000-0000', '', '', '', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(0, 'S62154c086c43c4.44614415', 1, 150, 1, 'Fredy Turcios', '', 'Colonia Jardines de San Miguel, Calle San Nicolas.', '81', '13', NULL, '05206754-3', '4727-632893-292-2', '', '', '7683-7373', '', '', '', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(0, 'S6230cc05066801.55046567', 1, 151, 1, 'Edgar Reyes', '', 'Avenida Magnolias Casa #3', '81', '13', NULL, '08080808-8', '3434-343434-343-4', '', '', '2121-1112', '', '', '', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `numero_doc` varchar(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `hora` time DEFAULT NULL,
  `fecha_ingreso` date NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `alias_tipodoc` char(5) NOT NULL,
  `total_percepcion` float NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `dias_credito` int(11) NOT NULL,
  `anulada` tinyint(1) NOT NULL,
  `finalizada` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_configuracion` int(11) NOT NULL,
  `sms` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `hash` varchar(512) NOT NULL,
  `iva` decimal(10,4) NOT NULL,
  `utilidad` decimal(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id_server`, `unique_id`, `id_configuracion`, `sms`, `user`, `hash`, `iva`, `utilidad`) VALUES
(1, 'O60d7df1d6fafc9.45867129', 1, 0, '', '', '13.0000', '30.0000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_dir`
--

CREATE TABLE `config_dir` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_config_dir` int(11) NOT NULL,
  `dir_print_script` varchar(50) NOT NULL,
  `shared_printer_matrix` varchar(50) NOT NULL,
  `shared_printer_pos` varchar(50) NOT NULL,
  `shared_print_barcode` varchar(250) NOT NULL,
  `rollo_etiqueta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `config_dir`
--

INSERT INTO `config_dir` (`id_server`, `unique_id`, `id_sucursal`, `id_config_dir`, `dir_print_script`, `shared_printer_matrix`, `shared_printer_pos`, `shared_print_barcode`, `rollo_etiqueta`) VALUES
(1, 'O60d7df1d6b5f57.53225294', 1, 1, 'localhost/impresion/', '//localhost/facturacion', '//localhost/ticket', '//localhost/barcode', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_pos`
--

CREATE TABLE `config_pos` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_config_pos` int(11) NOT NULL,
  `alias_tipodoc` char(4) NOT NULL,
  `header1` varchar(50) NOT NULL,
  `header2` varchar(50) NOT NULL,
  `header3` varchar(50) NOT NULL,
  `header4` varchar(50) NOT NULL,
  `header5` varchar(50) NOT NULL,
  `header6` varchar(50) NOT NULL,
  `header7` varchar(50) NOT NULL,
  `header8` varchar(50) NOT NULL,
  `header9` varchar(50) NOT NULL,
  `header10` varchar(50) NOT NULL,
  `footer1` varchar(50) NOT NULL,
  `footer2` varchar(50) NOT NULL,
  `footer3` varchar(50) NOT NULL,
  `footer4` varchar(50) NOT NULL,
  `footer5` varchar(50) NOT NULL,
  `footer6` varchar(50) NOT NULL,
  `footer7` varchar(50) NOT NULL,
  `footer8` varchar(50) NOT NULL,
  `footer9` varchar(50) NOT NULL,
  `footer10` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `config_pos`
--

INSERT INTO `config_pos` (`id_server`, `unique_id`, `id_sucursal`, `id_config_pos`, `alias_tipodoc`, `header1`, `header2`, `header3`, `header4`, `header5`, `header6`, `header7`, `header8`, `header9`, `header10`, `footer1`, `footer2`, `footer3`, `footer4`, `footer5`, `footer6`, `footer7`, `footer8`, `footer9`, `footer10`) VALUES
(1, 'O60d7df1d6d7820.44563245', 1, 1, 'TIK', '', '', 'VENTA DE PRODUCTOS VARIOS', '', '', '', '', '', '', '', 'GRACIAS POR SU COMPRA, VUELVA PRONTO...', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consignacion`
--

CREATE TABLE `consignacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_consignacion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `concepto` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `numero_doc` varchar(30) NOT NULL,
  `total` float NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `anulada` tinyint(1) NOT NULL DEFAULT 0,
  `id_sucursal` int(11) NOT NULL,
  `finalizada` tinyint(1) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `saldo` float NOT NULL,
  `abono` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consignacion_detalle`
--

CREATE TABLE `consignacion_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_consignacion_detalle` int(11) NOT NULL,
  `id_consignacion` int(11) NOT NULL,
  `id_prod_serv` int(11) NOT NULL,
  `cantidad` float NOT NULL,
  `costo` float NOT NULL,
  `precio_venta` float NOT NULL,
  `subtotal` float NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `tipo_prod_serv` varchar(30) NOT NULL COMMENT 'PRODUCTO o SERVICIO',
  `id_sucursal` int(11) NOT NULL,
  `cant_facturado` float NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `presentacion` int(11) NOT NULL,
  `unidad` int(11) NOT NULL,
  `cantidad_faltante` int(11) NOT NULL,
  `saldo` float NOT NULL,
  `abono` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controlcaja`
--

CREATE TABLE `controlcaja` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_corte` int(11) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_apertura` int(11) NOT NULL,
  `caja` varchar(3) DEFAULT NULL,
  `turno` int(1) DEFAULT NULL,
  `cajero` varchar(10) DEFAULT NULL,
  `fecha_corte` date NOT NULL,
  `hora_corte` time NOT NULL,
  `tiket` int(11) NOT NULL,
  `ticket_e` int(11) NOT NULL,
  `tinicio` int(5) DEFAULT NULL,
  `tfinal` int(5) DEFAULT NULL,
  `totalnot` int(2) DEFAULT NULL,
  `texento` double DEFAULT NULL,
  `tgravado` double DEFAULT NULL,
  `totalt` double DEFAULT NULL,
  `finicio` int(5) DEFAULT NULL,
  `ffinal` int(5) DEFAULT NULL,
  `totalnof` int(2) DEFAULT NULL,
  `fexento` double DEFAULT NULL,
  `fgravado` double DEFAULT NULL,
  `totalf` double DEFAULT NULL,
  `cfinicio` int(4) DEFAULT NULL,
  `cffinal` int(4) DEFAULT NULL,
  `totalnocf` int(1) DEFAULT NULL,
  `cfexento` double DEFAULT NULL,
  `cfgravado` double DEFAULT NULL,
  `totalcf` double DEFAULT NULL,
  `rinicio` int(11) NOT NULL,
  `rfinal` int(11) NOT NULL,
  `totalnor` int(11) NOT NULL,
  `rexento` double NOT NULL,
  `rgravado` double NOT NULL,
  `totalr` double NOT NULL,
  `cashinicial` double DEFAULT NULL,
  `vtacontado` double DEFAULT NULL,
  `vtaefectivo` double DEFAULT NULL,
  `vtatcredito` double DEFAULT NULL,
  `totalgral` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `cashfinal` double DEFAULT NULL,
  `diferencia` double DEFAULT NULL,
  `totalnodev` int(1) DEFAULT NULL,
  `totalnoanu` int(1) DEFAULT NULL,
  `depositos` decimal(6,2) DEFAULT NULL,
  `vales` double DEFAULT NULL,
  `tarjetas` double DEFAULT NULL,
  `depositon` int(1) DEFAULT NULL,
  `valen` int(1) DEFAULT NULL,
  `tarjetan` int(1) DEFAULT NULL,
  `ingresos` double DEFAULT NULL,
  `tcredito` int(1) DEFAULT NULL,
  `ncortex` int(1) DEFAULT NULL,
  `ncortez` int(1) DEFAULT NULL,
  `ncortezm` int(1) DEFAULT NULL,
  `cerrado` int(1) DEFAULT NULL,
  `tipo_corte` varchar(20) NOT NULL,
  `monto_ch` float NOT NULL,
  `retencion` float NOT NULL,
  `tinicio_e` int(11) NOT NULL,
  `tfinal_e` int(11) NOT NULL,
  `tdoctexe` int(11) NOT NULL,
  `tottexe` decimal(10,2) NOT NULL,
  `finicio_e` int(11) NOT NULL,
  `ffinal_e` int(11) NOT NULL,
  `tdocfexe` int(11) NOT NULL,
  `totfexe` decimal(10,2) NOT NULL,
  `cfinicio_e` int(11) NOT NULL,
  `cffinal_e` int(11) NOT NULL,
  `tdoccfexe` int(11) NOT NULL,
  `totcfexe` decimal(10,2) NOT NULL,
  `czxe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `controlcaja`
--

INSERT INTO `controlcaja` (`id_server`, `unique_id`, `id_sucursal`, `id_corte`, `fecha`, `id_empleado`, `id_apertura`, `caja`, `turno`, `cajero`, `fecha_corte`, `hora_corte`, `tiket`, `ticket_e`, `tinicio`, `tfinal`, `totalnot`, `texento`, `tgravado`, `totalt`, `finicio`, `ffinal`, `totalnof`, `fexento`, `fgravado`, `totalf`, `cfinicio`, `cffinal`, `totalnocf`, `cfexento`, `cfgravado`, `totalcf`, `rinicio`, `rfinal`, `totalnor`, `rexento`, `rgravado`, `totalr`, `cashinicial`, `vtacontado`, `vtaefectivo`, `vtatcredito`, `totalgral`, `subtotal`, `cashfinal`, `diferencia`, `totalnodev`, `totalnoanu`, `depositos`, `vales`, `tarjetas`, `depositon`, `valen`, `tarjetan`, `ingresos`, `tcredito`, `ncortex`, `ncortez`, `ncortezm`, `cerrado`, `tipo_corte`, `monto_ch`, `retencion`, `tinicio_e`, `tfinal_e`, `tdoctexe`, `tottexe`, `finicio_e`, `ffinal_e`, `tdocfexe`, `totfexe`, `cfinicio_e`, `cffinal_e`, `tdoccfexe`, `totcfexe`, `czxe`) VALUES
(0, 'S621640bf30b992.78317468', 1, 1, '', 1, 1, NULL, 1, NULL, '2022-02-22', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, NULL, 0, NULL, 10, NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S621cdda217ec45.70735997', 1, 2, '', 1, 3, NULL, 1, NULL, '2022-02-26', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, NULL, 0, NULL, 200, NULL, 200, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S621e358e690390.68323963', 1, 3, '', 1, 4, NULL, 1, NULL, '2022-02-28', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, NULL, 0, NULL, 400, NULL, 400, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S621ce430259d37.63094313', 1, 4, '', 1, 5, NULL, 1, NULL, '2022-03-01', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, NULL, 0, NULL, 300, NULL, 300, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S621fa6158b60c8.02253577', 1, 5, '', 1, 6, NULL, 3, NULL, '2022-02-28', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, NULL, 0, NULL, 300, NULL, 300, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S62237d5e564051.54763855', 1, 6, '', 1, 7, NULL, 1, NULL, '2022-03-02', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, NULL, 0, NULL, 300, NULL, 300, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S6224d1765cd527.41373786', 1, 7, '', 1, 8, NULL, 1, NULL, '2022-03-05', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, NULL, 0, NULL, 300, NULL, 300, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S62238862441e97.17425429', 1, 8, '', 1, 9, NULL, 1, NULL, '2022-03-06', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, NULL, 0, NULL, 300, NULL, 300, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S622616b3c84912.44025902', 1, 9, '', 1, 10, NULL, 3, NULL, '2022-03-05', '21:00:00', 0, 0, 1, 1, 0, 0, 150, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, NULL, 0, NULL, 450, NULL, 450, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S6228cd22238a67.18250419', 1, 10, '', 1, 11, NULL, 1, NULL, '2022-03-07', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, NULL, 0, NULL, 300, NULL, 300, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S622a092688fbe8.17804262', 1, 11, '', 1, 12, NULL, 1, NULL, '2022-03-09', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, NULL, 0, NULL, 20, NULL, 20, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S622ba87b89e549.33102411', 1, 12, '', 1, 13, NULL, 1, NULL, '2022-03-10', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, NULL, 0, NULL, 20, NULL, 20, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S622ca5d265cd39.80803126', 1, 13, '', 1, 14, NULL, 1, NULL, '2022-03-11', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, NULL, 1, NULL, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0),
(0, 'S6230c194885127.05878124', 1, 14, '', 1, 15, NULL, 1, NULL, '2022-03-12', '21:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, NULL, 0, NULL, 10, NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'C', 0, 0, 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0, 0, 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correlativo`
--

CREATE TABLE `correlativo` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_numdoc` int(11) NOT NULL,
  `tik` int(11) NOT NULL,
  `cof` int(11) NOT NULL,
  `ccf` int(11) NOT NULL,
  `ref` int(11) NOT NULL,
  `ii` int(11) NOT NULL,
  `di` int(11) NOT NULL,
  `ai` int(11) NOT NULL,
  `ti` int(11) NOT NULL,
  `voc` int(11) NOT NULL,
  `aj` int(11) NOT NULL,
  `cot` int(11) NOT NULL,
  `tre` int(11) NOT NULL,
  `trr` int(11) NOT NULL,
  `dev` int(11) NOT NULL,
  `nc` int(11) NOT NULL,
  `pd` int(11) NOT NULL,
  `pdp` int(11) NOT NULL,
  `cof_e` int(11) NOT NULL,
  `ccf_e` int(11) NOT NULL,
  `nc_e` int(11) NOT NULL,
  `dev_e` int(11) NOT NULL,
  `con` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `correlativo`
--

INSERT INTO `correlativo` (`id_server`, `unique_id`, `id_sucursal`, `id_numdoc`, `tik`, `cof`, `ccf`, `ref`, `ii`, `di`, `ai`, `ti`, `voc`, `aj`, `cot`, `tre`, `trr`, `dev`, `nc`, `pd`, `pdp`, `cof_e`, `ccf_e`, `nc_e`, `dev_e`, `con`) VALUES
(1, 'O60d7df1e21cb29.22895557', 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE `cotizacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_cotizacion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `vigencia` int(11) NOT NULL,
  `numero_doc` varchar(15) NOT NULL,
  `total` float NOT NULL,
  `impresa` tinyint(1) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion_detalle`
--

CREATE TABLE `cotizacion_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `id_cotizacion` int(11) NOT NULL,
  `id_prod_serv` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` float NOT NULL,
  `subtotal` float NOT NULL,
  `tipo_prod_serv` varchar(20) NOT NULL,
  `id_presentacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credito`
--

CREATE TABLE `credito` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_credito` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tipo_doc` varchar(50) NOT NULL,
  `numero_doc` varchar(50) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `dias` int(11) NOT NULL,
  `total` float NOT NULL,
  `abono` float NOT NULL,
  `saldo` float NOT NULL,
  `finalizada` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_por_pagar_abonos`
--

CREATE TABLE `cuentas_por_pagar_abonos` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_abono` int(11) NOT NULL,
  `id_cuentas_por_pagar` int(11) NOT NULL,
  `abono` decimal(10,4) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_banco`
--

CREATE TABLE `cuenta_banco` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `numero_cuenta` varchar(50) NOT NULL,
  `nombre_cuenta` varchar(100) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `observaciones` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuenta_banco`
--

INSERT INTO `cuenta_banco` (`id_server`, `unique_id`, `id_sucursal`, `id_cuenta`, `numero_cuenta`, `nombre_cuenta`, `id_banco`, `observaciones`) VALUES
(1, 'O60d7df1e3cca68.66763819', 0, 1, '87141516', 'cuenta corriente', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_pagar`
--

CREATE TABLE `cuenta_pagar` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_cuenta_pagar` int(11) NOT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `hora` time NOT NULL,
  `numero_doc` varchar(15) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `monto` float DEFAULT NULL,
  `saldo_pend` float NOT NULL,
  `fecha_vence` date DEFAULT NULL,
  `comentario` varchar(10) DEFAULT NULL,
  `dias_credito` int(3) DEFAULT NULL,
  `alias_tipodoc` char(5) NOT NULL,
  `id_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_departamento` int(11) NOT NULL COMMENT 'ID del departamento',
  `nombre_departamento` varchar(30) NOT NULL COMMENT 'Nombre del departamento'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Departamentos de El Salvador';

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_server`, `unique_id`, `id_departamento`, `nombre_departamento`) VALUES
(1, 'O60d7df1e55b259.94639046', 1, 'Ahuachapán'),
(2, 'O60d7df1e574b96.30477807', 2, 'Santa Ana'),
(3, 'O60d7df1e594646.42936928', 3, 'Sonsonate'),
(4, 'O60d7df1e5b5147.46090564', 4, 'La Libertad'),
(5, 'O60d7df1e5d6ca8.51505396', 5, 'Chalatenango'),
(6, 'O60d7df1e5f9483.12632339', 6, 'San Salvador'),
(7, 'O60d7df1e6191f2.34714250', 7, 'Cuscatlán'),
(8, 'O60d7df1e63be58.70522487', 8, 'La Paz'),
(9, 'O60d7df1e65c640.57582666', 9, 'Cabañas'),
(10, 'O60d7df1e67e0b6.31201543', 10, 'San Vicente'),
(11, 'O60d7df1e69e1a6.75867318', 11, 'Usulután'),
(12, 'O60d7df1e6bee97.87512541', 12, 'Morazán'),
(13, 'O60d7df1e6e04a6.79246797', 13, 'San Miguel'),
(14, 'O60d7df1e703980.80281832', 14, 'La Unión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_apertura`
--

CREATE TABLE `detalle_apertura` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `id_apertura` int(11) NOT NULL,
  `turno` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `vigente` tinyint(1) NOT NULL,
  `caja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_apertura`
--

INSERT INTO `detalle_apertura` (`id_server`, `unique_id`, `id_sucursal`, `id_detalle`, `id_apertura`, `turno`, `id_usuario`, `fecha`, `hora`, `vigente`, `caja`) VALUES
(0, 'S621540ab8a7ce6.62507425', 1, 1, 1, 1, 1, '2022-02-22', '13:59:39', 0, 1),
(0, 'S621640bf5908a4.99844534', 0, 2, 1, 2, 0, '2022-02-22', '21:00:00', 0, 0),
(0, 'S621640c3b377d3.02272476', 1, 3, 2, 1, 1, '2022-02-23', '08:12:19', 0, 1),
(0, 'S621a6932091f36.07303604', 1, 4, 3, 1, 1, '2022-02-26', '11:53:53', 0, 1),
(0, 'S621cdda24247f8.49744706', 0, 5, 3, 2, 0, '2022-02-26', '21:00:00', 0, 0),
(0, 'S621cdda9455934.72989763', 1, 6, 4, 1, 1, '2022-02-28', '08:35:21', 0, 1),
(0, 'S621e358e77ce51.96889819', 0, 7, 4, 2, 0, '2022-02-28', '21:00:00', 0, 0),
(0, 'S621e3595e178f1.81581263', 1, 8, 5, 1, 1, '2022-03-01', '09:02:45', 0, 1),
(0, 'S621ce4303dd4d5.52135807', 0, 9, 5, 2, 0, '2022-03-01', '21:00:00', 0, 0),
(0, 'S621ce4b0ec5d68.57819885', 1, 10, 6, 3, 1, '2022-02-28', '09:05:20', 0, 1),
(0, 'S621fa615a482d1.44569345', 0, 11, 6, 4, 0, '2022-02-28', '21:00:00', 0, 0),
(0, 'S621fa61d952df0.36599983', 1, 12, 7, 1, 1, '2022-03-02', '11:15:09', 0, 1),
(0, 'S62237d5e8bba90.45367848', 0, 13, 7, 2, 0, '2022-03-02', '21:00:00', 0, 0),
(0, 'S62237d636b28e6.65149969', 1, 14, 8, 1, 1, '2022-03-05', '09:10:27', 0, 1),
(0, 'S6224d176b2c6c5.40631029', 0, 15, 8, 2, 0, '2022-03-05', '21:00:00', 0, 0),
(0, 'S6224d180332e50.45005447', 1, 16, 9, 1, 1, '2022-03-06', '09:21:36', 0, 1),
(0, 'S622388626024f1.87218787', 0, 17, 9, 2, 0, '2022-03-06', '21:00:00', 0, 0),
(0, 'S62238867991cd5.55512948', 1, 18, 10, 3, 1, '2022-03-05', '09:57:27', 0, 1),
(0, 'S622616b41bdab7.37055446', 0, 19, 10, 4, 0, '2022-03-05', '21:00:00', 0, 0),
(0, 'S622616c1165f80.81176283', 1, 20, 11, 1, 1, '2022-03-07', '08:29:21', 0, 1),
(0, 'S6228cd2296fe74.46499890', 0, 21, 11, 2, 0, '2022-03-07', '21:00:00', 0, 0),
(0, 'S6228cd280efa93.72131516', 1, 22, 12, 1, 1, '2022-03-09', '09:52:07', 0, 1),
(0, 'S622a09271a2c99.10459016', 0, 23, 12, 2, 0, '2022-03-09', '21:00:00', 0, 0),
(0, 'S622a092cf0ef32.11725120', 1, 24, 13, 1, 1, '2022-03-10', '08:20:28', 0, 1),
(0, 'S622ba87bde7090.49812603', 0, 25, 13, 2, 0, '2022-03-10', '21:00:00', 0, 0),
(0, 'S622ba8807cc116.21588370', 1, 26, 14, 1, 1, '2022-03-11', '13:52:32', 0, 1),
(0, 'S622ca5d28cb6a2.76997034', 0, 27, 14, 2, 0, '2022-03-11', '21:00:00', 0, 0),
(0, 'S622ca5d7288a52.91387332', 1, 28, 15, 1, 1, '2022-03-12', '07:53:27', 0, 1),
(0, 'S6230c194cb7d99.98881148', 0, 29, 15, 2, 0, '2022-03-12', '21:00:00', 0, 0),
(0, 'S6230c19b59a130.13377807', 1, 30, 16, 1, 1, '2022-03-15', '10:40:59', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_det_compra` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_server_prod` int(11) NOT NULL,
  `cantidad` decimal(10,4) DEFAULT NULL,
  `ultcosto` decimal(5,2) DEFAULT NULL,
  `exento` tinyint(1) NOT NULL,
  `subtotal` float NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_voucher`
--

CREATE TABLE `detalle_voucher` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `fecha` varchar(11) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `cargo` varchar(11) DEFAULT NULL,
  `porcentage` varchar(11) DEFAULT NULL,
  `descuento` varchar(11) DEFAULT NULL,
  `devolucion` varchar(11) DEFAULT NULL,
  `bonificacion` varchar(11) DEFAULT NULL,
  `retencion` varchar(11) DEFAULT NULL,
  `vin` varchar(11) DEFAULT NULL,
  `saldo` varchar(11) DEFAULT NULL,
  `id_cuenta_pagar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devoluciones`
--

CREATE TABLE `devoluciones` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_dev` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_factura_dev` int(11) NOT NULL,
  `cant` int(11) NOT NULL,
  `monto` float NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `nombre` text NOT NULL,
  `dui` text NOT NULL,
  `telefono` int(11) NOT NULL,
  `exento` decimal(10,2) NOT NULL,
  `gravado` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devoluciones_corte`
--

CREATE TABLE `devoluciones_corte` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_dev` int(11) NOT NULL,
  `id_corte` int(11) NOT NULL,
  `n_devolucion` varchar(30) NOT NULL,
  `t_devolucion` double NOT NULL,
  `afecta` varchar(30) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `exento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devoluciones_det`
--

CREATE TABLE `devoluciones_det` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_dev_det` int(11) NOT NULL,
  `id_dev` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cant` int(11) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `id_factura_detalle` int(11) NOT NULL,
  `exento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `dui` varchar(16) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `telefono1` varchar(12) NOT NULL,
  `telefono2` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `salariobase` float NOT NULL,
  `id_tipo_empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_server`, `unique_id`, `id_sucursal`, `id_empleado`, `nombre`, `apellido`, `nit`, `dui`, `direccion`, `telefono1`, `telefono2`, `email`, `salariobase`, `id_tipo_empleado`) VALUES
(-1, 'O60d7df1fbc7114.40400621', 0, -1, 'Mostrador', '', '', '', '', '', '', '', 0, 3),
(6, 'O60d7df1fbdeb20.61935783', 1, 6, 'Daniel Alonso', 'Bernabe Luna', '0000-000000-000-0', '04537872-3', 'Apastepeque, alegria, usulutan', '7679-3719', '', '', 325, 5),
(7, 'O60d7df1fbfe446.33257747', 1, 7, 'RAUL', 'MENDEZ', '7878-787878-787-8', '87878787-8', 'moncagua', '7565-9404', '', '', 0, 3),
(8, 'O60d7df1fc1f319.47520793', 1, 8, 'CLARISSA', 'RAMOS', '', '', 'CHIRILAGUA, EL CUCO', '', '', '', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `idempresa` int(1) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `razonsocial` varchar(30) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL,
  `ubicacion` varchar(23) DEFAULT NULL,
  `nrc` varchar(6) DEFAULT NULL,
  `nit` varchar(17) DEFAULT NULL,
  `giro` varchar(16) DEFAULT NULL,
  `telefono1` varchar(10) DEFAULT NULL,
  `depto` varchar(10) DEFAULT NULL,
  `direccion2` varchar(32) DEFAULT NULL,
  `telefono2` varchar(9) DEFAULT NULL,
  `logo` varchar(250) NOT NULL,
  `iva` decimal(5,2) NOT NULL,
  `monto_retencion1` decimal(5,2) NOT NULL,
  `monto_retencion10` decimal(5,2) NOT NULL,
  `monto_percepcion` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_server`, `unique_id`, `idempresa`, `nombre`, `razonsocial`, `direccion`, `ubicacion`, `nrc`, `nit`, `giro`, `telefono1`, `depto`, `direccion2`, `telefono2`, `logo`, `iva`, `monto_retencion1`, `monto_retencion10`, `monto_percepcion`) VALUES
(1, 'O60d7df1fc4b5c2.47201482', 1, 'CALZADO MAYORGA', 'Edgar Rodolfo Mayorga Ascencio', '4a Calle Poniente No. 214', 'San Miguel, El Salvador', '2404-0', '1217-090236-001-0', 'Venta de Calzado', '2661-1836', 'SAN MIGUEL', 'Sucursal Metrocentro Local 64/65', '2667-0452', 'img/5af09749a77c6_logo_sys.png', '13.00', '100.00', '100.00', '100.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estante`
--

CREATE TABLE `estante` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_estante` int(11) NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `descripcion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `numero_doc` varchar(30) NOT NULL,
  `referencia` varchar(15) NOT NULL,
  `numero_ref` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `sumas` float NOT NULL,
  `suma_gravado` float NOT NULL,
  `iva` float NOT NULL,
  `retencion` float NOT NULL,
  `venta_exenta` float NOT NULL,
  `total_menos_retencion` float NOT NULL,
  `total` float NOT NULL,
  `descuento` float NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `anulada` tinyint(1) NOT NULL DEFAULT 0,
  `id_empleado` int(11) NOT NULL,
  `finalizada` tinyint(1) NOT NULL,
  `impresa` tinyint(1) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `serie` varchar(25) NOT NULL,
  `serie_e` varchar(25) NOT NULL,
  `num_fact_impresa` varchar(30) NOT NULL,
  `hora` time NOT NULL,
  `turno` int(11) NOT NULL,
  `id_apertura` int(11) NOT NULL,
  `id_apertura_pagada` int(11) NOT NULL,
  `credito` tinyint(1) NOT NULL,
  `abono` float NOT NULL,
  `saldo` float NOT NULL,
  `afecta` int(11) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `caja` int(11) NOT NULL,
  `numero_doc_e` varchar(30) NOT NULL,
  `num_fact_impresa_e` varchar(30) NOT NULL,
  `nombre` text NOT NULL,
  `direccion` text NOT NULL,
  `precio_aut` int(11) NOT NULL,
  `clave` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_server`, `unique_id`, `id_sucursal`, `id_factura`, `id_cliente`, `fecha`, `numero_doc`, `referencia`, `numero_ref`, `subtotal`, `sumas`, `suma_gravado`, `iva`, `retencion`, `venta_exenta`, `total_menos_retencion`, `total`, `descuento`, `porcentaje`, `id_usuario`, `anulada`, `id_empleado`, `finalizada`, `impresa`, `tipo`, `serie`, `serie_e`, `num_fact_impresa`, `hora`, `turno`, `id_apertura`, `id_apertura_pagada`, `credito`, `abono`, `saldo`, `afecta`, `tipo_documento`, `caja`, `numero_doc_e`, `num_fact_impresa_e`, `nombre`, `direccion`, `precio_aut`, `clave`) VALUES
(0, 'S6230c1d188aae3.52664336', 1, 36, 150, '2022-03-15', '0000000002_TIK', '0000001_REF', 1, 165, 165, 165, 0, 0, 0, 165, 165, 0, 0, 1, 0, 1, 1, 1, 'TICKET', 'A', '0', '2', '10:46:46', 1, 16, 16, 0, 0, 0, 0, 'TIK', 1, '0', '0', '', '', 0, ''),
(0, 'S6230d12c50d9c9.03104735', 1, 37, 150, '2022-03-15', '0000000003_TIK', '0000002_REF', 2, 40, 40, 40, 0, 0, 0, 40, 40, 0, 0, 1, 0, 1, 1, 1, 'TICKET', 'A', '0', '3', '11:48:01', 1, 16, 16, 0, 0, 0, 0, 'TIK', 1, '0', '0', '', '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_detalle`
--

CREATE TABLE `factura_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_factura_detalle` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_prod_serv` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `id_server_prod` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `precio_venta` decimal(11,4) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `descuento` float NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `tipo_prod_serv` varchar(30) NOT NULL COMMENT 'PRODUCTO o SERVICIO',
  `id_factura_dia` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `impresa_lote` tinyint(1) NOT NULL,
  `hora` time NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `exento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura_detalle`
--

INSERT INTO `factura_detalle` (`id_server`, `unique_id`, `id_sucursal`, `id_factura_detalle`, `id_factura`, `id_prod_serv`, `description`, `id_server_prod`, `cantidad`, `precio_venta`, `subtotal`, `descuento`, `id_empleado`, `tipo_prod_serv`, `id_factura_dia`, `fecha`, `impresa_lote`, `hora`, `id_presentacion`, `id_server_presen`, `exento`) VALUES
(0, 'S6230c2f688c9b8.16117012', 1, 56, 36, 1, '', 0, '1.0000', '125.0000', '125.00', 0, 1, 'PRODUCTO', 0, '2022-03-15', 0, '10:46:46', 1, 0, 0),
(0, 'S6230c2f68a7d27.51870445', 1, 57, 36, -9999, 'Limpieza de motor', 0, '1.0000', '40.0000', '40.00', 0, 1, 'PRODUCTO', 0, '2022-03-15', 0, '10:46:46', -9999, 0, 0),
(0, 'S6230d151925279.69898790', 1, 59, 37, -9999, 'Cambio de aceite', 0, '1.0000', '40.0000', '40.00', 0, 1, 'PRODUCTO', 0, '2022-03-15', 0, '11:48:01', -9999, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_cambio_local`
--

CREATE TABLE `log_cambio_local` (
  `id_log_cambio` int(11) NOT NULL,
  `id_server` int(11) DEFAULT NULL,
  `process` varchar(250) NOT NULL,
  `tabla` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  `id_primario` int(11) DEFAULT NULL,
  `subido` int(11) NOT NULL,
  `verificado` int(11) NOT NULL,
  `prioridad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `log_cambio_local`
--

INSERT INTO `log_cambio_local` (`id_log_cambio`, `id_server`, `process`, `tabla`, `fecha`, `hora`, `id_usuario`, `id_sucursal`, `id_primario`, `subido`, `verificado`, `prioridad`) VALUES
(1, 0, 'insert', 'producto', '2022-02-22', '13:58:53', 1, 1, 1, 1, 0, 1),
(2, 0, 'update', 'correlativo', '2022-02-22', '13:59:13', 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_detalle_cambio_local`
--

CREATE TABLE `log_detalle_cambio_local` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_detalle_cambio` int(11) NOT NULL,
  `id_log_cambio` int(11) NOT NULL,
  `tabla` varchar(250) NOT NULL,
  `id_verificador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `log_detalle_cambio_local`
--

INSERT INTO `log_detalle_cambio_local` (`id_server`, `unique_id`, `id_detalle_cambio`, `id_log_cambio`, `tabla`, `id_verificador`) VALUES
(0, 'S6215407d7ef653.24602231', 1, 1, 'producto', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_update_local`
--

CREATE TABLE `log_update_local` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_log_cambio` int(11) NOT NULL,
  `query` text NOT NULL,
  `tabla` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `log_update_local`
--

INSERT INTO `log_update_local` (`id_server`, `unique_id`, `id_log_cambio`, `query`, `tabla`, `fecha`, `hora`, `id_usuario`, `id_sucursal`) VALUES
(0, 'S621ce146e93a69.17891633', 1, 'DELETE FROM factura_detalle WHERE unique_id =\'S621ce10f60ea81.09493969\'', 'factura_detalle', '2022-02-28', '08:50:46', 1, 1),
(0, 'S62238a9cba0608.36374892', 6, 'DELETE FROM factura_detalle WHERE unique_id =\'S62237e7fd97218.25739110\'', 'factura_detalle', '2022-03-05', '10:06:52', 1, 1),
(0, 'S62238a9cba7652.25221973', 7, 'DELETE FROM factura_detalle WHERE unique_id =\'S62237e7fd9f9c1.24519557\'', 'factura_detalle', '2022-03-05', '10:06:52', 1, 1),
(0, 'S622a0f039bfff4.66343413', 8, 'DELETE FROM factura WHERE unique_id =\'S622a0c7357c958.71438829\'', 'factura', '2022-03-10', '08:45:23', 1, 1),
(0, 'S622a0f03b8be89.12411521', 9, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a0c73586736.55162038\'', 'factura_detalle', '2022-03-10', '08:45:23', 1, 1),
(0, 'S622a0f0d76e227.87472530', 10, 'DELETE FROM factura WHERE unique_id =\'S62239446404ff3.62231224\'', 'factura', '2022-03-10', '08:45:33', 1, 1),
(0, 'S622a0f0d77a026.86600881', 11, 'DELETE FROM factura_detalle WHERE unique_id =\'S6223944640fe46.46929656\'', 'factura_detalle', '2022-03-10', '08:45:33', 1, 1),
(0, 'S622a0f0d77faa9.44193077', 12, 'DELETE FROM factura_detalle WHERE unique_id =\'S62239446418212.59167719\'', 'factura_detalle', '2022-03-10', '08:45:33', 1, 1),
(0, 'S622a0f163342d5.95763356', 13, 'DELETE FROM factura WHERE unique_id =\'S622634018c0342.95359485\'', 'factura', '2022-03-10', '08:45:42', 1, 1),
(0, 'S622a0f1633de04.13417976', 14, 'DELETE FROM factura_detalle WHERE unique_id =\'S622634018caba4.25011970\'', 'factura_detalle', '2022-03-10', '08:45:42', 1, 1),
(0, 'S622a0f16344e16.79703500', 15, 'DELETE FROM factura_detalle WHERE unique_id =\'S622634018d34f3.88921930\'', 'factura_detalle', '2022-03-10', '08:45:42', 1, 1),
(0, 'S622a0f1d016a89.57622528', 16, 'DELETE FROM factura WHERE unique_id =\'S6228e66bde3639.24357205\'', 'factura', '2022-03-10', '08:45:49', 1, 1),
(0, 'S622a0f1d022342.58224485', 17, 'DELETE FROM factura_detalle WHERE unique_id =\'S6228e66bdea545.04761625\'', 'factura_detalle', '2022-03-10', '08:45:49', 1, 1),
(0, 'S622a0f1d027887.25313377', 18, 'DELETE FROM factura_detalle WHERE unique_id =\'S6228e66bdeea99.57150611\'', 'factura_detalle', '2022-03-10', '08:45:49', 1, 1),
(0, 'S622a0f251cb3b4.11096151', 19, 'DELETE FROM factura WHERE unique_id =\'S6228e7287274b5.47722952\'', 'factura', '2022-03-10', '08:45:57', 1, 1),
(0, 'S622a0f251d5804.14544109', 20, 'DELETE FROM factura_detalle WHERE unique_id =\'S6228e728731c80.16732789\'', 'factura_detalle', '2022-03-10', '08:45:57', 1, 1),
(0, 'S622a0f2bcae266.76626892', 21, 'DELETE FROM factura WHERE unique_id =\'S6228e83dbd4f29.34969788\'', 'factura', '2022-03-10', '08:46:03', 1, 1),
(0, 'S622a0f2bdb29d6.82362332', 22, 'DELETE FROM factura_detalle WHERE unique_id =\'S6228e83dbde4d6.44898802\'', 'factura_detalle', '2022-03-10', '08:46:03', 1, 1),
(0, 'S622a0f321fd400.69250268', 23, 'DELETE FROM factura WHERE unique_id =\'S622a0c9d9ebbb7.46822869\'', 'factura', '2022-03-10', '08:46:10', 1, 1),
(0, 'S622a0f3220a439.59593792', 24, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a0c9d9f54f1.55289282\'', 'factura_detalle', '2022-03-10', '08:46:10', 1, 1),
(0, 'S622a0f46633b88.09044471', 25, 'DELETE FROM factura WHERE unique_id =\'S622a0d5fbf8399.81277384\'', 'factura', '2022-03-10', '08:46:30', 1, 1),
(0, 'S622a0f469243e3.89677082', 26, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a0d5fc058c1.05527567\'', 'factura_detalle', '2022-03-10', '08:46:30', 1, 1),
(0, 'S622a21d8d48745.68107184', 27, 'DELETE FROM factura WHERE unique_id =\'S622a10007645a7.30294390\'', 'factura', '2022-03-10', '10:05:44', 1, 1),
(0, 'S622a21d8df1699.47428200', 28, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a1000770111.64975974\'', 'factura_detalle', '2022-03-10', '10:05:44', 1, 1),
(0, 'S622a21dfcb0105.50752830', 29, 'DELETE FROM factura WHERE unique_id =\'S622a1b22ad70c1.42411423\'', 'factura', '2022-03-10', '10:05:51', 1, 1),
(0, 'S622a21dfd42031.40760875', 30, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a1b22add845.82412187\'', 'factura_detalle', '2022-03-10', '10:05:51', 1, 1),
(0, 'S622a21eb637dd1.25968205', 31, 'DELETE FROM factura WHERE unique_id =\'S622a20927feee9.34758669\'', 'factura', '2022-03-10', '10:06:03', 1, 1),
(0, 'S622a21eb6cf330.05087618', 32, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a209280c3a5.42792946\'', 'factura_detalle', '2022-03-10', '10:06:03', 1, 1),
(0, 'S622a21fc5ea140.32869515', 33, 'DELETE FROM factura WHERE unique_id =\'S622a1d7ce346d3.00702514\'', 'factura', '2022-03-10', '10:06:20', 1, 1),
(0, 'S622a21fc678c72.80523651', 34, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a1d7ce3cec4.09124061\'', 'factura_detalle', '2022-03-10', '10:06:20', 1, 1),
(0, 'S622a22037e6dc0.77818677', 35, 'DELETE FROM factura WHERE unique_id =\'S622a1c902111c6.08528268\'', 'factura', '2022-03-10', '10:06:27', 1, 1),
(0, 'S622a2203a2e535.78156076', 36, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a1c90217463.32051335\'', 'factura_detalle', '2022-03-10', '10:06:27', 1, 1),
(0, 'S622a22098411e3.13618987', 37, 'DELETE FROM factura WHERE unique_id =\'S622a1c2fba93f0.84070220\'', 'factura', '2022-03-10', '10:06:33', 1, 1),
(0, 'S622a220984dfa5.77764434', 38, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a1c2fbb4dc6.92736222\'', 'factura_detalle', '2022-03-10', '10:06:33', 1, 1),
(0, 'S622a2211d716a9.84558292', 39, 'DELETE FROM factura WHERE unique_id =\'S622a1bbc40ce02.33504372\'', 'factura', '2022-03-10', '10:06:41', 1, 1),
(0, 'S622a2211e118d1.52824570', 40, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a1bbc4182f4.02402720\'', 'factura_detalle', '2022-03-10', '10:06:41', 1, 1),
(0, 'S622a2222336178.50655582', 41, 'DELETE FROM factura WHERE unique_id =\'S622a1e46b88a28.06208910\'', 'factura', '2022-03-10', '10:06:58', 1, 1),
(0, 'S622a22223439b4.57527749', 42, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a1e46b90c55.54729286\'', 'factura_detalle', '2022-03-10', '10:06:58', 1, 1),
(0, 'S622a222c671733.72133870', 43, 'DELETE FROM factura WHERE unique_id =\'S622a21448e0924.48543155\'', 'factura', '2022-03-10', '10:07:08', 1, 1),
(0, 'S622a222c772a67.78516965', 44, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a21448eae56.27212204\'', 'factura_detalle', '2022-03-10', '10:07:08', 1, 1),
(0, 'S622a2235b17960.62166514', 45, 'DELETE FROM factura WHERE unique_id =\'S622a2194302209.25980779\'', 'factura', '2022-03-10', '10:07:17', 1, 1),
(0, 'S622a2235b23934.91893934', 46, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a21943109a4.12403016\'', 'factura_detalle', '2022-03-10', '10:07:17', 1, 1),
(0, 'S622ba9a6731207.03707825', 47, 'DELETE FROM factura WHERE unique_id =\'S622a2d09dd2227.01992989\'', 'factura', '2022-03-11', '13:57:26', 1, 1),
(0, 'S622ba9a67e8fd3.45942911', 48, 'DELETE FROM factura_detalle WHERE unique_id =\'S622a2d09ddc452.47850323\'', 'factura_detalle', '2022-03-11', '13:57:26', 1, 1),
(0, 'S622ba9b1b4cc41.71076105', 49, 'DELETE FROM factura WHERE unique_id =\'S622ba8f941d042.51722744\'', 'factura', '2022-03-11', '13:57:37', 1, 1),
(0, 'S622ba9b1bfb989.91877212', 50, 'DELETE FROM factura_detalle WHERE unique_id =\'S622ba8f9426db2.51171790\'', 'factura_detalle', '2022-03-11', '13:57:37', 1, 1),
(0, 'S622bc4668408a2.57147390', 51, 'DELETE FROM factura WHERE unique_id =\'S622bc3d1139071.94118658\'', 'factura', '2022-03-11', '15:51:34', 1, 1),
(0, 'S622bc46684f023.05942509', 52, 'DELETE FROM factura_detalle WHERE unique_id =\'S622bc3d1144902.65890874\'', 'factura_detalle', '2022-03-11', '15:51:34', 1, 1),
(0, 'S622bc55541df72.89678783', 53, 'DELETE FROM factura WHERE unique_id =\'S622bc52900f6e1.51947004\'', 'factura', '2022-03-11', '15:55:33', 1, 1),
(0, 'S622bc55542e871.29079460', 54, 'DELETE FROM factura_detalle WHERE unique_id =\'S622bc52901a1e8.98234699\'', 'factura_detalle', '2022-03-11', '15:55:33', 1, 1),
(0, 'S622bcb7d606ce3.95757549', 55, 'DELETE FROM factura WHERE unique_id =\'S622bcb5a597f77.85818629\'', 'factura', '2022-03-11', '16:21:49', 1, 1),
(0, 'S622bcb7d612092.29850353', 56, 'DELETE FROM factura_detalle WHERE unique_id =\'S622bcb5a5a3135.29657598\'', 'factura_detalle', '2022-03-11', '16:21:49', 1, 1),
(0, 'S622cbe0e5009d6.87987954', 57, 'DELETE FROM factura_detalle WHERE unique_id =\'S622bd180288ce8.49429565\'', 'factura_detalle', '2022-03-12', '09:36:46', 1, 1),
(0, 'S622cbe951800c3.73718751', 58, 'DELETE FROM factura_detalle WHERE unique_id =\'S622cbe4c6104f7.44247175\'', 'factura_detalle', '2022-03-12', '09:39:01', 1, 1),
(0, 'S622cbeb7705c19.48103043', 59, 'DELETE FROM factura_detalle WHERE unique_id =\'S622cbe9518bfa1.64488058\'', 'factura_detalle', '2022-03-12', '09:39:35', 1, 1),
(0, 'S622cbef608e981.90957065', 60, 'DELETE FROM factura_detalle WHERE unique_id =\'S622cbeb770f0d9.22672562\'', 'factura_detalle', '2022-03-12', '09:40:38', 1, 1),
(0, 'S622cc168788c59.25381764', 61, 'DELETE FROM factura_detalle WHERE unique_id =\'S622cbe0e50ba03.56400562\'', 'factura_detalle', '2022-03-12', '09:51:04', 1, 1),
(0, 'S622cc168790ae1.37264004', 62, 'DELETE FROM factura_detalle WHERE unique_id =\'S622cbe0e512a00.50459594\'', 'factura_detalle', '2022-03-12', '09:51:04', 1, 1),
(0, 'S622cc168797977.18565943', 63, 'DELETE FROM factura_detalle WHERE unique_id =\'S622cbe0e51a097.07761188\'', 'factura_detalle', '2022-03-12', '09:51:04', 1, 1),
(0, 'S622cc172983fd9.21493986', 64, 'DELETE FROM factura_detalle WHERE unique_id =\'S622cbef6096173.18723484\'', 'factura_detalle', '2022-03-12', '09:51:14', 1, 1),
(0, 'S622cc17a873899.03131998', 65, 'DELETE FROM factura_detalle WHERE unique_id =\'S622cc17298f445.90598634\'', 'factura_detalle', '2022-03-12', '09:51:22', 1, 1),
(0, 'S6230c23f318976.46643699', 66, 'DELETE FROM factura_detalle WHERE unique_id =\'S6230c1d1890739.62222779\'', 'factura_detalle', '2022-03-15', '10:43:43', 1, 1),
(0, 'S6230c2f67bc648.63325610', 67, 'DELETE FROM factura_detalle WHERE unique_id =\'S6230c23f322546.56307257\'', 'factura_detalle', '2022-03-15', '10:46:46', 1, 1),
(0, 'S6230c2f67c4ea7.43716344', 68, 'DELETE FROM factura_detalle WHERE unique_id =\'S6230c23f325d71.79835668\'', 'factura_detalle', '2022-03-15', '10:46:46', 1, 1),
(0, 'S6230d15183f462.73904317', 69, 'DELETE FROM factura_detalle WHERE unique_id =\'S6230d12c515620.89943335\'', 'factura_detalle', '2022-03-15', '11:48:01', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote`
--

CREATE TABLE `lote` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `numero` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `precio` decimal(11,4) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `vencimiento` date NOT NULL,
  `estado` varchar(25) NOT NULL,
  `referencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lote`
--

INSERT INTO `lote` (`id_server`, `unique_id`, `id_sucursal`, `id_lote`, `id_producto`, `fecha_entrada`, `numero`, `cantidad`, `precio`, `id_presentacion`, `vencimiento`, `estado`, `referencia`) VALUES
(0, 'S62154091858110.66299666', 1, 1, 1, '2022-02-22', 1, '8.0000', '50.0000', 1, '0000-00-00', 'VIGENTE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `prioridad` int(11) DEFAULT NULL,
  `icono` varchar(250) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_server`, `unique_id`, `id_menu`, `nombre`, `prioridad`, `icono`, `visible`) VALUES
(1, 'O60d7df55068935.53249569', 1, 'Productos', 5, 'fa fa-archive', 1),
(2, 'O60d7df5507d609.84496391', 2, 'Clientes', 1, 'fa fa-users', 1),
(3, 'O60d7df550a83d7.68720876', 3, 'Proveedores', 2, 'fa fa-truck', 1),
(4, 'O60d7df550b3908.32464233', 4, 'Ubicaciones', 4, 'fa fa-database', 1),
(5, 'O60d7df550d6733.13525706', 5, 'Facturación', 8, 'fa fa-money', 1),
(6, 'O60d7df550f4507.44116249', 6, 'Inventario', 7, 'fa fa-table', 1),
(7, 'O60d7df55115309.45560699', 7, 'Caja', 12, 'fa fa-money', 1),
(8, 'O60d7df551369b1.68239316', 8, 'Cuentas por Cobrar', 10, ' fa fa-credit-card', 1),
(9, 'O60d7df55158550.67166195', 9, 'Empleados', 3, 'fa fa-users', 1),
(10, 'O60d7df55179443.96567625', 10, 'Bancos', 9, 'fa fa-bank', 0),
(11, 'O60d7df5519a1f8.34444108', 11, 'Compras', 6, 'fa fa-cart-arrow-down', 1),
(12, 'O60d7df551baa74.56659208', 12, 'Cuentas por Pagar', 11, 'fa fa-balance-scale', 1),
(13, 'O60d7df551dc836.75570782', 13, 'Cotizaciones', 13, 'fa fa-file-pdf-o', 1),
(14, 'O60d7df551fd460.24595789', 14, 'Traslados', 15, 'fa fa-exchange', 0),
(15, 'O60d7df5521f0f8.07652929', 15, 'Utilidades', 16, 'fa fa-gears', 1),
(16, 'O60d7df55240a13.24187446', 16, 'Pedidos', 14, 'fa fa-file', 0),
(17, 'O60d7df55262252.08193710', 17, 'Reportes', 15, 'fa fa-file-pdf-o', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `mostrarmenu` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`id_server`, `unique_id`, `id_modulo`, `id_menu`, `nombre`, `descripcion`, `filename`, `mostrarmenu`) VALUES
(1, 'O60d7df55290a33.25415397', 1, 2, 'Admin Clientes', 'Admin Clientes', 'admin_cliente.php', 1),
(2, 'O60d7df552a3371.38537014', 2, 2, 'Agregar Cliente', 'Agregar Cliente', 'agregar_cliente.php', 0),
(3, 'O60d7df552c4f66.87756158', 3, 2, 'Editar Cliente', 'Editar Cliente', 'editar_cliente.php', 0),
(4, 'O60d7df552e7ac8.42710402', 4, 0, 'Borrar Cliente', 'Borrar Cliente', 'borrar_cliente.php', 0),
(5, 'O60d7df55308472.42586169', 5, 2, 'Ver Cliente', 'Ver Cliente', 'ver_cliente.php', 0),
(6, 'O60d7df553295c0.15447232', 6, 1, 'Admin Productos', 'Admin Productos', 'admin_producto.php', 1),
(7, 'O60d7df5534acb5.61555055', 7, 1, 'Agregar Producto', 'Agregar Producto', 'agregar_producto.php', 0),
(8, 'O60d7df5536c747.81899312', 8, 1, 'Editar Producto', 'Editar Producto', 'editar_producto.php', 0),
(9, 'O60d7df5538ce97.19100735', 9, 0, 'Borrar Producto', 'Borrar Producto', 'borrar_producto.php', 0),
(10, 'O60d7df553ad593.38154235', 10, 1, 'Ver Producto', 'Ver Producto', 'ver_producto.php', 0),
(11, 'O60d7df553ce322.30936788', 11, 1, 'Admin Categorías', 'Admin Categorías', 'admin_categoria.php', 1),
(12, 'O60d7df553f0c10.85487193', 12, 1, 'Agregar Categoría', 'Agregar Categoría', 'agregar_categoria.php', 0),
(13, 'O60d7df55411655.26330011', 13, 1, 'Editar Categoría', 'Editar Categoría', 'editar_categoria.php', 0),
(14, 'O60d7df554327a7.98756650', 14, 1, 'Borrar Categoría', 'Borrar Categoría', 'borrar_categoria.php', 0),
(15, 'O60d7df554523a9.58037361', 15, 1, 'Admin Presentaciones', 'Admin Presentaciones', 'admin_presentacion.php', 1),
(16, 'O60d7df55475625.54594148', 16, 1, 'Agregar Presentación', 'Agregar Presentación', 'agregar_presentacion.php', 0),
(17, 'O60d7df55495b56.07721965', 17, 1, 'Editar Presentación', 'Editar Presentación', 'editar_presentacion.php', 0),
(18, 'O60d7df554b6983.85897144', 18, 0, 'Borrar Presentación', 'Borrar Presentación', 'borrar_presentacion.php', 0),
(19, 'O60d7df554d7b44.68567392', 19, 3, 'Admin Proveedores', 'Admin Proveedores', 'admin_proveedor.php', 1),
(20, 'O60d7df554f9b11.90458590', 20, 3, 'Agregar Proveedor', 'Agregar Proveedor', 'agregar_proveedor.php', 0),
(21, 'O60d7df5551a0f6.23816012', 21, 3, 'Editar Proveedor', 'Editar Proveedor', 'editar_proveedor.php', 0),
(22, 'O60d7df5553ada0.53406272', 22, 3, 'Borrar Proveedor', 'Borrar Proveedor', 'borrar_proveedor.php', 0),
(23, 'O60d7df5555c3d6.65296021', 23, 3, 'Ver Proveedor', 'Ver Proveedor', 'ver_proveedor.php', 0),
(24, 'O60d7df5557d294.06038287', 24, 4, 'Ubicaciones', 'Administrar Ubicaciones', 'admin_ubicacion.php', 1),
(25, 'O60d7df5559e4b1.38601145', 25, 4, 'Agregar Ubicación', 'Agregar  Ubicación', 'agregar_ubicacion.php', 0),
(26, 'O60d7df555bf159.32722407', 26, 4, 'Editar Ubicación', 'Editar Ubicación', 'editar_ubicacion.php', 0),
(27, 'O60d7df555e1155.22982975', 27, 4, 'Borrar Ubicación', 'Borrar Ubicación', 'borrar_ubicacion.php', 0),
(28, 'O60d7df556026f3.66302559', 28, 4, 'Estantes', 'Administrar Estantes', 'admin_estante.php', 1),
(29, 'O60d7df55623a93.80667618', 29, 4, 'Agregar Estante', 'Agregar Estante', 'agregar_estante.php', 0),
(30, 'O60d7df556444f6.28317204', 30, 4, 'Editar Estante', 'Editar  Estante', 'editar_estante.php', 0),
(31, 'O60d7df55664ed1.22669129', 31, 4, 'Borrar Estante', 'Borrar  Estante', 'borrar_estante.php', 0),
(32, 'O60d7df55686d18.16576595', 32, 4, 'Admin Asignación', 'Admin Asignación', 'admin_asignacion.php', 1),
(33, 'O60d7df556a6d42.30841890', 33, 4, 'Agregar Asignación', 'Agregar Asignación', 'agregar_asignacion.php', 0),
(34, 'O60d7df556c8261.79562350', 34, 4, 'Admin no Asignado', 'Admin no Asignado', 'admin_producto_no_asignado.php', 0),
(35, 'O60d7df556e8836.67453788', 35, 5, 'Pre Venta', 'Pre Venta', 'preventa.php', 1),
(36, 'O60d7df5570aaf6.70862800', 36, 5, 'Venta', 'Venta', 'venta.php', 1),
(37, 'O60d7df5572a995.82583574', 37, 6, 'Cargas de Inventario', 'Cargas de Inventario', 'ingreso_inventario.php', 1),
(38, 'O60d7df5574c723.69004790', 38, 6, 'Descargos de Inventario', 'Descargos de Inventario', 'descargo_inventario.php', 1),
(39, 'O60d7df5576d295.26505082', 39, 4, 'Movimientos', 'Movimientos', 'admin_movimiento_asignacion.php', 1),
(40, 'O60d7df5578fec7.96940159', 40, 4, 'Ver Detalle Movimiento', 'Ver Detalle Movimiento', 'ver_detalle_mov.php', 0),
(41, 'O60d7df557b04d5.78190708', 41, 7, 'Admin Corte', 'Admin Corte', 'admin_corte.php', 1),
(42, 'O60d7df557d0ee1.34057895', 42, 7, 'Admin Caja', 'Admin Caja', 'admin_caja.php', 0),
(43, 'O60d7df557f1f92.46881732', 43, 8, 'Admin Créditos', 'Admin Créditos', 'admin_credito.php', 1),
(44, 'O60d7df558144e4.20429203', 44, 8, 'Abono Crédito', 'Abono Crédito', 'abono_credito.php', 0),
(45, 'O60d7df558354c1.67313669', 45, 9, 'Admin Empleados', 'Admin Empleados', 'admin_empleado.php', 1),
(46, 'O60d7df55856b83.01918524', 46, 9, 'Agregar Empleado', 'Agregar Empleado', 'agregar_empleado.php', 0),
(47, 'O60d7df55877b42.85729112', 47, 9, 'Editar Empleado', 'Editar Empleado', 'editar_empleado.php', 0),
(48, 'O60d7df558999d5.63678253', 48, 9, 'Borrar Empleado', 'Borrar Empleado', 'borrar_empleado.php', 0),
(49, 'O60d7df558b9d22.65927455', 49, 9, 'Ver Empleado', 'Ver Empleado', 'ver_empleado.php', 0),
(50, 'O60d7df558daaf6.28936153', 50, 6, 'Consultar Stock', 'Consultar Stock', 'admin_stock.php', 1),
(54, 'O60d7df558fef46.83356817', 54, 10, 'Admin Bancos', 'Admin Bancos', 'admin_banco.php', 1),
(55, 'O60d7df5591ebc8.01677374', 55, 10, 'Agregar Banco', 'Agregar Banco', 'agregar_banco.php', 0),
(56, 'O60d7df559405f7.64684550', 56, 10, 'Editar Banco', 'Editar Banco', 'editar_banco.php', 0),
(57, 'O60d7df55962e81.51285306', 57, 10, 'Borrar Banco', 'Borrar Banco', 'borrar_banco.php', 0),
(58, 'O60d7df55985a93.21312934', 58, 10, 'Ver Banco', 'Ver Banco', 'ver_banco.php', 0),
(59, 'O60d7df559a5849.62206596', 59, 10, 'Admin Cuentas', 'Admin Cuentas', 'cuenta_banco.php', 0),
(60, 'O60d7df559c7428.99997621', 60, 10, 'Agregar Cuenta', 'Agregar Cuenta', 'agregar_cuenta_banco.php', 0),
(61, 'O60d7df559e9095.24682312', 61, 10, 'Editar Cuenta', 'Editar Cuenta', 'editar_cuenta_banco.php', 0),
(62, 'O60d7df55a09295.96285306', 62, 10, 'Borrar Cuenta', 'Borrar Cuenta', 'cuenta_banco.php', 0),
(63, 'O60d7df55a2a930.68376531', 63, 10, 'Admin Movimientos', 'Admin Movimiento', 'admin_mov_cta_banco.php', 1),
(64, 'O60d7df55a4b7e7.87060684', 64, 10, 'Agregar Movimientos', 'Agregar Movimiento', 'agreg_mov_cta_banco.php', 0),
(65, 'O60d7df55a6d489.38577383', 65, 10, 'Editar Movimientos', 'Editar Movimiento', 'editar_mov_cta_banco.php', 0),
(66, 'O60d7df55a8cea0.37228207', 66, 10, 'Borrar Movimientos', 'Borrar Movimiento', 'borrar_mov_cta_banco.php', 0),
(68, 'O60d7df55aad5b3.23454182', 68, 11, 'Admin Compras', 'Admin Compras', 'admin_compra.php', 1),
(69, 'O60d7df55acdc90.84768584', 69, 6, 'Ajuste de Inventario', 'Ajuste de Inventario', 'ajuste_inventario.php', 1),
(70, 'O60d7df55aef926.19411491', 70, 6, 'Reporte Ajuste', 'Reporte Ajuste', 'reporte_ajuste.php', 0),
(71, 'O60d7df55b10624.76839180', 71, 0, 'Hoja de conteo', 'Hoja de conteo', 'hoja_conteo.php', 0),
(72, 'O60d7df55b30af8.59645577', 72, 12, 'Admin Pagos', 'Admin Pagos', 'admin_voucher.php', 0),
(73, 'O60d7df55b52b41.81283284', 73, 12, 'Generar Pago', 'Generar Pago', 'pago_proveedor.php', 0),
(74, 'O60d7df55b755b6.03541919', 74, 12, 'Editar Pago', 'Editar Pago', 'editar_pago_proveedor.php', 0),
(75, 'O60d7df55b94c99.66167697', 75, 12, 'Finalizar Pago', 'Finalizar Pago', 'finalizar_mov_cta_banco.php', 0),
(76, 'O60d7df55bb5de2.01027936', 76, 12, 'Imprimir Pago', 'Imprimir Pago', 'voucher.php', 0),
(77, 'O60d7df55bd6e99.61826529', 77, 13, 'Admin Cotizaciones', 'Admin Cotizaciones', 'admin_cotizacion.php', 1),
(78, 'O60d7df55bf8aa3.69156812', 78, 13, 'Agregar Cotización', 'Agregar Cotización', 'agregar_cotizacion.php', 0),
(79, 'O60d7df55c18ff9.14321430', 79, 13, 'Editar Cotización', 'Editar Cotización', 'editar_cotizacion.php', 0),
(80, 'O60d7df55c3a091.11143342', 80, 13, 'Borrar Cotización', 'Borrar Cotización', 'borrar_cotizacion.php', 0),
(81, 'O60d7df55c5a860.31574617', 81, 13, 'Imprimir Cotización', 'Imprimir Cotización', 'cotizacion.php', 0),
(82, 'O60d7df55c7c978.79014805', 82, 11, 'Agregar Compra', 'Agregar Compra', 'compras.php', 0),
(83, 'O60d7df55c9c3c6.27449608', 83, 11, 'Ver Compra', 'Ver Compra', 'ver_compra.php', 0),
(84, 'O60d7df55cbe824.65649251', 84, 6, 'Admin Ajuste', 'Admin Ajuste', 'admin_ajuste.php', 1),
(85, 'O60d7df55cdf546.63906696', 85, 14, 'Admin Traslado', 'Admin Traslado', 'admin_traslados.php', 1),
(86, 'O60d7df55d01aa9.91512432', 86, 14, 'Realizar Traslado', 'Realizar Traslado', 'traslado_producto.php', 0),
(87, 'O60d7df55d21be6.15706044', 87, 14, 'Anular Traslado ', 'Anular Traslado ', 'anular_traslado.php', 0),
(88, 'O60d7df55d43386.05994162', 88, 14, 'Ver Traslado ', 'Ver Traslado ', 'ver_traslado.php', 0),
(89, 'O60d7df55d64ca3.18992317', 89, 14, 'Reporte Traslado ', 'Reporte Traslado ', 'reporte_traslado.php', 0),
(90, 'O60d7df55d87184.45328263', 90, 14, 'Reporte Traslado Recibido ', 'Reporte Traslado ', 'reporte_traslado.php', 0),
(91, 'O60d7df55da70e9.69752187', 91, 14, 'Recibir Traslado', 'Recibir Traslado', 'recibir_traslado.php', 0),
(92, 'O60d7df55dc7b20.77955378', 92, 15, 'Admin Usuario', 'Admin Usuario', 'admin_usuarios.php', 1),
(93, 'O60d7df55de93c9.78552804', 93, 15, 'Agregar Usuario', 'Agregar Usuario', 'agregar_usuario.php', 0),
(94, 'O60d7df55e0a8f6.40801158', 94, 15, 'Editar Usuario', 'Editar Usuario', 'editar_usuario.php', 0),
(95, 'O60d7df55e2bba9.98846865', 95, 15, 'Borrar Usuario', 'Borrar Usuario', 'borrar_usuario.php', 0),
(96, 'O60d7df55e4cec1.14785961', 96, 15, 'Permisos Usuario', 'Permisos Usuario', 'permiso_usuario.php', 0),
(97, 'O60d7df55e6dd21.24076164', 97, 15, 'Admin Empresa', 'Admin Empresa', 'admin_empresa.php', 1),
(98, 'O60d7df55e8fdf8.30821174', 98, 16, 'Admin Pedidos', 'Admin Pedidos', 'admin_pedido.php', 1),
(99, 'O60d7df55eb00c8.37320563', 99, 16, 'Agregar Pedido', 'Agregar Pedido', 'agregar_pedido.php', 0),
(100, 'O60d7df55ed16e7.52227238', 100, 16, 'Editar Pedido', 'Editar Pedido', 'editar_pedido.php', 0),
(101, 'O60d7df55ef2683.03931971', 101, 16, 'Borrar Pedido', 'Anular Pedido', 'borrar_pedido.php', 0),
(103, 'O60d7df55f14f76.20743945', 103, 16, 'Reporte Pedido', 'Reporte Pedido', 'reporte_pedido.php', 0),
(106, 'O60d7df55f354e8.09517237', 106, 5, 'Admin Facturas', 'Admin Facturas', 'admin_factura_rangos.php', 1),
(107, 'O60d7df56013f93.68632932', 107, 5, 'Ver Factura', 'Ver Factura', 'ver_factura.php', 0),
(108, 'O60d7df560354a2.34283282', 108, 5, 'Reimprimir Factura ', 'Reimprimir Factura ', 'reimprimir_factura.php', 0),
(109, 'O60d7df56056c16.21286696', 109, 5, 'Anular Factura ', 'Anular Factura ', 'anular_factura.php', 0),
(110, 'O60d7df560772c2.39699661', 110, 5, 'Devolución', 'Devolución', 'devolucion.php', 0),
(111, 'O60d7df56098540.92336207', 111, 7, 'Admin Movimiento Caja', 'Admin Movimiento Caja', 'admin_movimiento_caja.php', 1),
(112, 'O60d7df560b9a29.99622830', 112, 7, 'Agregar ingreso caja', 'Agregar ingreso caja', 'agregar_ingreso_caja.php', 0),
(113, 'O60d7df560dba61.70984449', 113, 7, 'Agregar salida caja', 'Agregar salida caja', 'agregar_salida_caja.php', 0),
(114, 'O60d7df560fc346.74618363', 114, 7, 'Editar Movimiento caja', 'Editar Movimiento caja', 'editar_movimiento_caja.php', 0),
(115, 'O60d7df5611d1d9.52983316', 115, 7, 'Imprimir Movimiento', 'Imprimir Movimiento', 'imprimir_movimiento.php', 0),
(116, 'O60d7df5613f390.36238038', 116, 7, 'Borrar Movimiento caja', 'Borrar Movimiento caja', 'Borrar_movimiento_caja.php', 0),
(117, 'O60d7df56161508.22838816', 117, 7, 'Corte de Caja', 'Corte de caja diario', 'corte_caja_diario.php', 0),
(118, 'O60d7df56181b00.47138098', 118, 5, 'Facturas Pendientes', 'Admin Facturas Pendientes', 'admin_pendiente_rangos.php', 1),
(119, 'O60d7df561a2ef5.46280507', 119, 17, 'Hoja de conteo', 'Hoja de conteo', 'generar_hoja.php', 1),
(120, 'O60d7df561c4098.77873395', 120, 5, 'Admin Devoluciones', 'Devoluciones ', 'admin_devoluciones_rangos.php', 0),
(121, 'O60d7df561e5b85.70320154', 121, 17, 'Kardex', 'Reporte Kardex', 'reporte_kardex.php', 1),
(122, 'O60d7df56206592.92543470', 122, 17, 'Inventario', 'Inventario', 'ver_reporte_inventario.php', 1),
(123, 'O60d7df56227dc1.88580315', 123, 17, 'Libro de compras ', 'Libro de compras ', 'ver_libro_compras.php', 1),
(124, 'O60d7df56248eb7.95511946', 124, 0, 'Reposición de producto', 'Reposición de producto', 'admin_movimiento_pendiente.php', 0),
(126, 'O60d7df5626a513.08028685', 126, 17, 'Kardex General', 'Reporte Kardex General', 'reporte_kardex_general.php', 1),
(127, 'O60d7df5628b131.87703463', 127, 0, 'Resumen de vales', 'Resumen de vales', 'resumen_vale.php', 0),
(128, 'O60d7df562abca2.37345431', 128, 17, 'Ventas a Contribuyentes', 'Libro de Ventas a Contribuyentes', 'ver_libro_ventas_a_contribuyente.php', 1),
(129, 'O60d7df562ce368.38192987', 129, 17, 'Ventas a Consumidores', 'Libro de Ventas a Consumidores', 'ver_libro_ventas_a_consumidores.php', 1),
(130, 'O60d7df562ef9b7.29797856', 130, 17, 'Reporte Fiscal', 'Reporte Fiscal', 'ver_reporte_fiscal.php', 1),
(132, 'O60d7df56310538.11111272', 132, 7, 'Apertura de caja', 'Apertura de caja', 'apertura_caja.php', 0),
(133, 'O60d7df56330f30.10140084', 133, 6, 'Administrar lotes', 'administrar lotes', 'admin_lotes.php', 1),
(134, 'O60d7df56352802.22715339', 134, 12, 'Admin cuentas por pagar', 'Admin cuentas por pagar', 'admin_cxp_p.php', 0),
(135, 'O60d7df56373185.90344335', 135, 0, 'Admin cuentas por pagar proveedor', 'Admin cuentas por pagar proveedor', 'admin_cxp.php', 0),
(136, 'O60d7df56394668.42070599', 136, 4, 'Agregar Reasignación', 'Agregar Reasignación', 'agregar_reasignacion.php', 0),
(137, 'O60d7df563b53b4.99815870', 137, 15, 'Backup', 'Backup', 'backup.php', 1),
(138, 'O60d7df563d8608.65441460', 138, 17, 'Ticket de auditoria', 'Ticket de auditoria', 'ticket_dia.php', 1),
(139, 'O60d7df563f8122.54131008', 139, 0, 'Depuracion', 'Depuracion', 'depuracion.php', 0),
(140, 'O60d7df56418d58.40437404', 140, 4, 'Admin transferencias', 'Admin transferencias', 'admin_transferencia.php', 1),
(141, 'O60d7df5643a001.41140082', 141, 4, 'Agregar Transferencia', 'Agregar Transferencia', 'agregar_transferencia.php', 0),
(142, 'O60d7df5645c693.83132957', 142, 5, 'Admin Autorización', 'Admin Autorización', 'admin_autorizacion.php', 1),
(143, 'O60d7df5647c350.65517017', 143, 5, 'Agregar Autorización', 'Agregar Autorización', 'agregar_autorizacion.php', 0),
(144, 'O60d7df5649da76.93841032', 144, 0, 'Reporte Ingresos y Egresos', 'Reporte Ingresos y Egresos', 'reporte_entrada_salida.php', 0),
(145, 'O60d7df564be8b7.50188341', 145, 17, 'Reporte de utilidades', 'Reporte de utilidades', 'ver_reporte_utilidad.php', 1),
(146, 'O60d7df564e1e14.11898223', 146, 17, 'Reporte de Reposicion', 'Reporte de Reposicion', 'ver_reporte_reposicion.php', 1),
(147, 'O60d7df565027a6.20252348', 147, 17, 'Reporte de utilidades Por dia', 'Reporte de utilidades Por dia', 'ver_reporte_utilidades_diarias.php', 1),
(148, 'O60d7df56523427.09370254', 148, 17, 'Reporte Z', 'Reporte Z', 'reportez.php', 1),
(149, 'O60d7df56543b50.54951509', 149, 17, 'Reporte ventas por vendedor', 'Reporte ventas por vendedor', 'ventas_vendedor.php', 1),
(150, 'O60d7df56566c14.03656476', 150, 17, 'Reporte Producto precios', 'Reporte Producto precios', 'ver_producto_precios.php', 1),
(151, 'O60d7df565861f7.60547051', 151, 17, 'Detalle ventas por rango', 'Detalle ventas por rango', 'ventas_rango.php', 1),
(152, 'O60d7df565a81e3.35545248', 152, 12, 'Admin cuentas por pagar', 'Admin cuentas por pagar', 'admin_cxp_p.php', 1),
(35, 'O60d7df556e8836.67453788', 153, 5, 'Ingreso', 'Ingreso de Vehiculos', 'ingreso.php', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_caja_tipo`
--

CREATE TABLE `movimiento_caja_tipo` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `ingreso` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_producto`
--

CREATE TABLE `movimiento_producto` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `correlativo` varchar(20) NOT NULL,
  `concepto` varchar(250) NOT NULL,
  `total` float NOT NULL,
  `tipo` varchar(13) CHARACTER SET utf8 NOT NULL,
  `proceso` varchar(50) NOT NULL,
  `referencia` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_suc_origen` int(11) NOT NULL,
  `id_suc_destino` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `conteo` varchar(100) NOT NULL,
  `sistema` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movimiento_producto`
--

INSERT INTO `movimiento_producto` (`id_server`, `unique_id`, `id_sucursal`, `id_movimiento`, `correlativo`, `concepto`, `total`, `tipo`, `proceso`, `referencia`, `id_empleado`, `fecha`, `hora`, `id_suc_origen`, `id_suc_destino`, `id_proveedor`, `id_compra`, `id_traslado`, `id_factura`, `numero`, `conteo`, `sistema`) VALUES
(0, 'S621540916d5da8.79949973', 1, 1, '0000001_II', 'INVENTARIO INICIAL', 500, 'ENTRADA', 'II', 1, 1, '2022-02-22', '13:59:13', 1, 1, 0, 0, 0, 0, 0, '0', '0'),
(0, 'S62238a9cbb0480.64465765', 1, 4, '0000000001_TIK', 'VENTA', 150, 'SALIDA', 'TIK', 1, 1, '2022-03-05', '10:06:52', 1, 1, 0, 0, 0, 10, 0, '0', '0'),
(0, 'S6230c2f67cd104.92743468', 1, 5, '0000000002_TIK', 'VENTA', 165, 'SALIDA', 'TIK', 2, 1, '2022-03-15', '10:46:46', 1, 1, 0, 0, 0, 36, 0, '0', '0'),
(0, 'S6230d1518450a2.56217448', 1, 6, '0000000003_TIK', 'VENTA', 40, 'SALIDA', 'TIK', 3, 1, '2022-03-15', '11:48:01', 1, 1, 0, 0, 0, 37, 0, '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_producto_detalle`
--

CREATE TABLE `movimiento_producto_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `costo` float NOT NULL,
  `precio` float NOT NULL,
  `stock_anterior` decimal(11,4) NOT NULL,
  `stock_actual` decimal(11,4) NOT NULL,
  `proceso` varchar(50) NOT NULL,
  `referencia` int(11) NOT NULL,
  `lote` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movimiento_producto_detalle`
--

INSERT INTO `movimiento_producto_detalle` (`id_server`, `unique_id`, `id_sucursal`, `id_detalle`, `id_movimiento`, `id_producto`, `id_server_prod`, `id_presentacion`, `id_server_presen`, `cantidad`, `costo`, `precio`, `stock_anterior`, `stock_actual`, `proceso`, `referencia`, `lote`, `fecha`, `hora`) VALUES
(0, 'S6215409184afb8.23486743', 1, 1, 1, 1, 0, 1, 0, '10.0000', 50, 125, '0.0000', '10.0000', '0', 0, 1, '2022-02-22', '13:59:13'),
(0, 'S62238a9cbd5c82.55013823', 1, 4, 4, 1, 0, 1, 0, '1.0000', 50, 125, '10.0000', '9.0000', '0', 0, 0, '2022-03-05', '10:06:52'),
(0, 'S6230c2f689d447.92864023', 1, 5, 5, 1, 0, 1, 0, '1.0000', 50, 125, '9.0000', '8.0000', '0', 0, 0, '2022-03-15', '10:46:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_producto_pendiente`
--

CREATE TABLE `movimiento_producto_pendiente` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_detalle` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `costo` decimal(11,4) NOT NULL,
  `precio` decimal(11,4) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `repuesto` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_stock_ubicacion`
--

CREATE TABLE `movimiento_stock_ubicacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `id_origen` int(11) NOT NULL,
  `id_destino` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `anulada` int(11) NOT NULL,
  `afecta` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `id_mov_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movimiento_stock_ubicacion`
--

INSERT INTO `movimiento_stock_ubicacion` (`id_server`, `unique_id`, `id_sucursal`, `id_movimiento`, `id_producto`, `id_server_prod`, `id_origen`, `id_destino`, `cantidad`, `fecha`, `hora`, `anulada`, `afecta`, `id_presentacion`, `id_server_presen`, `id_mov_prod`) VALUES
(0, 'S6215409185d146.85912669', 1, 1, 1, 0, 0, 1, '10.0000', '2022-02-22', '13:59:13', 0, 0, 1, 0, 1),
(0, 'S62238a9cbcd802.68661928', 1, 4, 1, 0, 1, 0, '1.0000', '2022-03-05', '10:06:52', 0, 0, 1, 0, 4),
(0, 'S6230c2f6898668.22770228', 1, 5, 1, 0, 1, 0, '1.0000', '2022-03-15', '10:46:46', 0, 0, 1, 0, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mov_caja`
--

CREATE TABLE `mov_caja` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(1) DEFAULT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_empleado` int(1) DEFAULT NULL,
  `idtransace` int(11) NOT NULL,
  `alias_tipodoc` char(4) NOT NULL,
  `numero_doc` varchar(30) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `corte` int(1) DEFAULT NULL,
  `cobrado` tinyint(1) NOT NULL,
  `cliente` varchar(40) NOT NULL,
  `duui` varchar(10) NOT NULL,
  `entrada` tinyint(1) NOT NULL,
  `salida` tinyint(1) NOT NULL,
  `anulado` tinyint(1) NOT NULL,
  `turno` int(11) NOT NULL,
  `id_apertura` int(11) NOT NULL,
  `nombre_recibe` varchar(100) NOT NULL,
  `nombre_autoriza` varchar(100) NOT NULL,
  `nombre_proveedor` varchar(100) NOT NULL,
  `iva` float NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mov_cta_banco`
--

CREATE TABLE `mov_cta_banco` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `alias_tipodoc` varchar(15) NOT NULL,
  `numero_doc` varchar(50) NOT NULL,
  `entrada` float NOT NULL,
  `salida` float NOT NULL,
  `saldo` float NOT NULL,
  `fecha` date NOT NULL,
  `responsable` varchar(150) NOT NULL,
  `concepto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_municipio` int(11) NOT NULL COMMENT 'ID del municipio',
  `nombre_municipio` varchar(60) NOT NULL COMMENT 'Nombre del municipio',
  `id_departamento_municipio` int(11) NOT NULL COMMENT 'Departamento al cual pertenece el municipio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Municipios de El Salvador';

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id_server`, `unique_id`, `id_municipio`, `nombre_municipio`, `id_departamento_municipio`) VALUES
(1, 'O60d7dfc2567143.61012554', 1, 'Ahuachapán', 1),
(2, 'O60d7dfc2572d73.36789738', 2, 'Jujutla', 1),
(3, 'O60d7dfc2592097.17590739', 3, 'Atiquizaya', 1),
(4, 'O60d7dfc25b36c3.37582718', 4, 'Concepción de Ataco', 1),
(5, 'O60d7dfc25d4d52.14030196', 5, 'El Refugio', 1),
(6, 'O60d7dfc25f6a20.76551260', 6, 'Guaymango', 1),
(7, 'O60d7dfc2617426.00539454', 7, 'Apaneca', 1),
(8, 'O60d7dfc26389d4.80924862', 8, 'San Francisco Menéndez', 1),
(9, 'O60d7dfc2659658.88425893', 9, 'San Lorenzo', 1),
(10, 'O60d7dfc267b2f1.00972186', 10, 'San Pedro Puxtla', 1),
(11, 'O60d7dfc269ca58.22717641', 11, 'Tacuba', 1),
(12, 'O60d7dfc26bd1c7.75327258', 12, 'Turín', 1),
(13, 'O60d7dfc26dee37.84006015', 13, 'Candelaria de la Frontera', 2),
(14, 'O60d7dfc26ff9b8.53421112', 14, 'Chalchuapa', 2),
(15, 'O60d7dfc2721105.56018326', 15, 'Coatepeque', 2),
(16, 'O60d7dfc2741c93.34808368', 16, 'El Congo', 2),
(17, 'O60d7dfc2762a22.99449691', 17, 'El Porvenir', 2),
(18, 'O60d7dfc27842d7.37436333', 18, 'Masahuat', 2),
(19, 'O60d7dfc27a5198.68801867', 19, 'Metapán', 2),
(20, 'O60d7dfc27c66a8.42779251', 20, 'San Antonio Pajonal', 2),
(21, 'O60d7dfc27e7373.56662266', 21, 'San Sebastián Salitrillo', 2),
(22, 'O60d7dfc2809582.80179224', 22, 'Santa Ana', 2),
(23, 'O60d7dfc282a935.28446603', 23, 'Santa Rosa Guachipilín', 2),
(24, 'O60d7dfc284b4f7.30039155', 24, 'Santiago de la Frontera', 2),
(25, 'O60d7dfc286c046.18551529', 25, 'Texistepeque', 2),
(26, 'O60d7dfc288e163.80385232', 26, 'Acajutla', 3),
(27, 'O60d7dfc28ae187.91857127', 27, 'Armenia', 3),
(28, 'O60d7dfc28cec71.05469694', 28, 'Caluco', 3),
(29, 'O60d7dfc28efd31.25622614', 29, 'Cuisnahuat', 3),
(30, 'O60d7dfc2911873.53562032', 30, 'Izalco', 3),
(31, 'O60d7dfc2932300.63842442', 31, 'Juayúa', 3),
(32, 'O60d7dfc29537a6.82623978', 32, 'Nahuizalco', 3),
(33, 'O60d7dfc2974454.05632431', 33, 'Nahulingo', 3),
(34, 'O60d7dfc2996727.90774840', 34, 'Salcoatitán', 3),
(35, 'O60d7dfc29b6267.22413518', 35, 'San Antonio del Monte', 3),
(36, 'O60d7dfc29d7d91.30059026', 36, 'San Julián', 3),
(37, 'O60d7dfc29f93e8.35139204', 37, 'Santa Catarina Masahuat', 3),
(38, 'O60d7dfc2a1b043.63356622', 38, 'Santa Isabel Ishuatán', 3),
(39, 'O60d7dfc2a3be72.58395613', 39, 'Santo Domingo de Guzmán', 3),
(40, 'O60d7dfc2a5cb19.05313137', 40, 'Sonsonate', 3),
(41, 'O60d7dfc2a7d834.76450785', 41, 'Sonzacate', 3),
(42, 'O60d7dfc2a9ec43.73011975', 42, 'Alegría', 4),
(43, 'O60d7dfc2abfc54.05409440', 43, 'Berlín', 11),
(44, 'O60d7dfc2ae5571.09552581', 44, 'California', 11),
(45, 'O60d7dfc2b057b4.89643938', 45, 'Concepción Batres', 11),
(46, 'O60d7dfc2b25fe4.29372325', 46, 'El Triunfo', 11),
(47, 'O60d7dfc2b46f73.74435515', 47, 'Ereguayquín', 11),
(48, 'O60d7dfc2b68f15.89066758', 48, 'Estanzuelas', 11),
(49, 'O60d7dfc2b89ef1.47395864', 49, 'Jiquilisco', 11),
(50, 'O60d7dfc2bab0e0.46459926', 50, 'Jucuapa', 11),
(51, 'O60d7dfc2bcc648.13066044', 51, 'Jucuarán', 11),
(52, 'O60d7dfc2bed650.21921163', 52, 'Mercedes Umaña', 11),
(53, 'O60d7dfc2c0e0f7.67843093', 53, 'Nueva Granada', 11),
(54, 'O60d7dfc2c2f158.92994793', 54, 'Ozatlán', 11),
(55, 'O60d7dfc2c504a3.75660680', 55, 'Puerto El Triunfo', 11),
(56, 'O60d7dfc2c732b9.20605438', 56, 'San Agustín', 11),
(57, 'O60d7dfc2c93328.80925621', 57, 'San Buenaventura', 11),
(58, 'O60d7dfc2cb44f7.48933488', 58, 'San Dionisio', 11),
(59, 'O60d7dfc2cd5fa3.58108080', 59, 'San Francisco Javier', 11),
(60, 'O60d7dfc2cf7789.84754671', 60, 'Santa Elena', 11),
(61, 'O60d7dfc2d17c01.59678164', 61, 'Santa María', 11),
(62, 'O60d7dfc2d393a2.81133486', 62, 'Santiago de María', 11),
(63, 'O60d7dfc2d5a411.28478426', 63, 'Tecapán', 11),
(64, 'O60d7dfc2d7ba11.66723119', 64, 'Usulután', 11),
(65, 'O60d7dfc2d9beb8.80465693', 65, 'Carolina', 13),
(66, 'O60d7dfc2dbcd48.41143500', 66, 'Chapeltique', 13),
(67, 'O60d7dfc2ddde66.87827437', 67, 'Chinameca', 13),
(68, 'O60d7dfc2dff303.92695434', 68, 'Chirilagua', 13),
(69, 'O60d7dfc2e20f28.64685971', 69, 'Ciudad Barrios', 13),
(70, 'O60d7dfc2e420f5.39159226', 70, 'Comacarán', 13),
(71, 'O60d7dfc2e62d15.78380005', 71, 'El Tránsito', 13),
(72, 'O60d7dfc2e855a1.04872391', 72, 'Lolotique', 13),
(73, 'O60d7dfc2ea4cb9.82809562', 73, 'Moncagua', 13),
(74, 'O60d7dfc2ec5fc3.43611192', 74, 'Nueva Guadalupe', 13),
(75, 'O60d7dfc2ee7d09.38323559', 75, 'Nuevo Edén de San Juan', 13),
(76, 'O60d7dfc2f09448.01327613', 76, 'Quelepa', 13),
(77, 'O60d7dfc2f28c89.80658035', 77, 'San Antonio del Mosco', 13),
(78, 'O60d7dfc3007fd1.45810404', 78, 'San Gerardo', 13),
(79, 'O60d7dfc3029333.61155872', 79, 'San Jorge', 13),
(80, 'O60d7dfc304ae70.29917833', 80, 'San Luis de la Reina', 13),
(81, 'O60d7dfc306b580.02199541', 81, 'San Miguel', 13),
(82, 'O60d7dfc308c4d7.98153133', 82, 'San Rafael Oriente', 13),
(83, 'O60d7dfc30ae050.99841041', 83, 'Sesori', 13),
(84, 'O60d7dfc30d01e9.74980208', 84, 'Uluazapa', 13),
(85, 'O60d7dfc30f0665.85048552', 85, 'Arambala', 12),
(86, 'O60d7dfc3111b95.80336723', 86, 'Cacaopera', 12),
(87, 'O60d7dfc31327b4.10047132', 87, 'Chilanga', 12),
(88, 'O60d7dfc3154b75.20731396', 88, 'Corinto', 12),
(89, 'O60d7dfc3174cf6.10770856', 89, 'Delicias de Concepción', 12),
(90, 'O60d7dfc31970f8.43515620', 90, 'El Divisadero', 12),
(91, 'O60d7dfc31b8879.40080851', 91, 'El Rosario', 12),
(92, 'O60d7dfc31da491.16599877', 92, 'Gualococti', 12),
(93, 'O60d7dfc31fa528.57889296', 93, 'Guatajiagua', 12),
(94, 'O60d7dfc321b130.04568481', 94, 'Joateca', 12),
(95, 'O60d7dfc323c947.70780501', 95, 'Jocoaitique', 12),
(96, 'O60d7dfc325ece7.76934984', 96, 'Jocoro', 12),
(97, 'O60d7dfc327fa05.19058705', 97, 'Lolotiquillo', 12),
(98, 'O60d7dfc32a0cd6.30455643', 98, 'Meanguera', 12),
(99, 'O60d7dfc32c1e38.60363826', 99, 'Osicala', 12),
(100, 'O60d7dfc32e47a9.93346153', 100, 'Perquín', 12),
(101, 'O60d7dfc3304004.72781875', 101, 'San Carlos', 12),
(102, 'O60d7dfc3325993.53743563', 102, 'San Fernando', 12),
(103, 'O60d7dfc3346470.05247119', 103, 'San Francisco Gotera', 12),
(104, 'O60d7dfc33680c6.13226926', 104, 'San Isidro', 12),
(105, 'O60d7dfc3388c22.70120804', 105, 'San Simón', 12),
(106, 'O60d7dfc33a9ec1.09030508', 106, 'Sensembra', 12),
(107, 'O60d7dfc33cb783.71278089', 107, 'Sociedad', 12),
(108, 'O60d7dfc33ec9b0.42169827', 108, 'Torola', 12),
(109, 'O60d7dfc340c686.09207552', 109, 'Yamabal', 12),
(110, 'O60d7dfc342d711.01531407', 110, 'Yoloaiquín', 12),
(111, 'O60d7dfc344ea12.00713520', 111, 'La Unión', 14),
(112, 'O60d7dfc3470e46.03823782', 112, 'San Alejo', 14),
(113, 'O60d7dfc3491b70.34327567', 113, 'Yucuaiquín', 14),
(114, 'O60d7dfc34b2f74.74697273', 114, 'Conchagua', 14),
(115, 'O60d7dfc34d3960.43581387', 115, 'Intipucá', 14),
(116, 'O60d7dfc34f5a98.28892241', 116, 'San José', 14),
(117, 'O60d7dfc3515e24.71538673', 117, 'El Carmen', 14),
(118, 'O60d7dfc3537612.58167217', 118, 'Yayantique', 14),
(119, 'O60d7dfc3557e44.85745144', 119, 'Bolívar', 14),
(120, 'O60d7dfc3579948.19880014', 120, 'Meanguera del Golfo', 14),
(121, 'O60d7dfc3599bf8.96384355', 121, 'Santa Rosa de Lima', 14),
(122, 'O60d7dfc35bae05.58416959', 122, 'Pasaquina', 14),
(123, 'O60d7dfc35dc6f3.36785027', 123, 'ANAMOROS', 14),
(124, 'O60d7dfc35fe9d8.45100900', 124, 'Nueva Esparta', 14),
(125, 'O60d7dfc361ecb1.04832009', 125, 'El Sauce', 14),
(126, 'O60d7dfc363fc10.96594716', 126, 'Concepción de Oriente', 14),
(127, 'O60d7dfc3661932.28420467', 127, 'Polorós', 14),
(128, 'O60d7dfc3683862.75231018', 128, 'Lislique ', 14),
(129, 'O60d7dfc36a3c91.51777660', 129, 'Antiguo Cuscatlán', 4),
(130, 'O60d7dfc36c4a81.82815673', 130, 'Chiltiupán', 4),
(131, 'O60d7dfc36e5885.14512567', 131, 'Ciudad Arce', 4),
(132, 'O60d7dfc3707618.84943249', 132, 'Colón', 4),
(133, 'O60d7dfc37275d6.57028660', 133, 'Comasagua', 4),
(134, 'O60d7dfc3748ec6.64497790', 134, 'Huizúcar', 4),
(135, 'O60d7dfc3769fe8.26506870', 135, 'Jayaque', 4),
(136, 'O60d7dfc378c211.73537977', 136, 'Jicalapa', 4),
(137, 'O60d7dfc37abfe7.41046441', 137, 'La Libertad', 4),
(138, 'O60d7dfc37cd981.84025611', 138, 'Santa Tecla', 4),
(139, 'O60d7dfc37eeaa6.40742695', 139, 'Nuevo Cuscatlán', 4),
(140, 'O60d7dfc3810ae9.99510266', 140, 'San Juan Opico', 4),
(141, 'O60d7dfc3830624.86498702', 141, 'Quezaltepeque', 4),
(142, 'O60d7dfc3852887.91305410', 142, 'Sacacoyo', 4),
(143, 'O60d7dfc3873c49.67812506', 143, 'San José Villanueva', 4),
(144, 'O60d7dfc3895e00.23505192', 144, 'San Matías', 4),
(145, 'O60d7dfc38b5a09.78515040', 145, 'San Pablo Tacachico', 4),
(146, 'O60d7dfc38d7298.62708376', 146, 'Talnique', 4),
(147, 'O60d7dfc38f7f75.58336114', 147, 'Tamanique', 4),
(148, 'O60d7dfc39197d3.03490424', 148, 'Teotepeque', 4),
(149, 'O60d7dfc3939fe4.41459343', 149, 'Tepecoyo', 4),
(150, 'O60d7dfc395ba73.62708260', 150, 'Zaragoza', 4),
(151, 'O60d7dfc397be30.78950971', 151, 'Agua Caliente', 5),
(152, 'O60d7dfc399d815.75347929', 152, 'Arcatao', 5),
(153, 'O60d7dfc39bd3f8.20406863', 153, 'Azacualpa', 5),
(154, 'O60d7dfc39ddd18.69153666', 154, 'Cancasque', 5),
(155, 'O60d7dfc39ffc64.82261181', 155, 'Chalatenango', 5),
(156, 'O60d7dfc3a22984.47913757', 156, 'Citalá', 5),
(157, 'O60d7dfc3a42765.24958312', 157, 'Comapala', 5),
(158, 'O60d7dfc3a64082.93258936', 158, 'Concepción Quezaltepeque', 5),
(159, 'O60d7dfc3a84cb6.68755517', 159, 'Dulce Nombre de María', 5),
(160, 'O60d7dfc3aa5a62.21342185', 160, 'El Carrizal', 5),
(161, 'O60d7dfc3ac7111.48596056', 161, 'El Paraíso', 5),
(162, 'O60d7dfc3aeae72.64518677', 162, 'La Laguna', 5),
(163, 'O60d7dfc3b0d1e2.38062581', 163, 'La Palma', 5),
(164, 'O60d7dfc3b2cf64.22695043', 164, 'La Reina', 5),
(165, 'O60d7dfc3b4dcc0.99908295', 165, 'Las Vueltas', 5),
(166, 'O60d7dfc3b6f150.83167234', 166, 'Nueva Concepción', 5),
(167, 'O60d7dfc3b8f484.69687337', 167, 'Nueva Trinidad', 5),
(168, 'O60d7dfc3bb03f2.62867078', 168, 'Nombre de Jesús', 5),
(169, 'O60d7dfc3bd1b11.65608633', 169, 'Ojos de Agua', 5),
(170, 'O60d7dfc3bf3c68.24834474', 170, 'Potonico', 5),
(171, 'O60d7dfc3c13f60.83075368', 171, 'San Antonio de la Cruz', 5),
(172, 'O60d7dfc3c35252.57276552', 172, 'San Antonio Los Ranchos', 5),
(173, 'O60d7dfc3c56766.69638637', 173, 'San Fernando', 5),
(174, 'O60d7dfc3c77d86.52159609', 174, 'San Francisco Lempa', 5),
(175, 'O60d7dfc3c98993.45305098', 175, 'San Francisco Morazán', 5),
(176, 'O60d7dfc3cb9cf0.78171333', 176, 'San Ignacio', 5),
(177, 'O60d7dfc3cdb4e7.28082916', 177, 'San Isidro Labrador', 5),
(178, 'O60d7dfc3cfd365.84817074', 178, 'Las Flores', 5),
(179, 'O60d7dfc3d1d513.26814426', 179, 'San Luis del Carmen', 5),
(180, 'O60d7dfc3d3eb06.90031067', 180, 'San Miguel de Mercedes', 5),
(181, 'O60d7dfc3d60163.00559891', 181, 'San Rafael', 5),
(182, 'O60d7dfc3d81c67.11904351', 182, 'Santa Rita', 5),
(183, 'O60d7dfc3da1964.19378600', 183, 'Tejutla', 5),
(184, 'O60d7dfc3dc2997.01731085', 184, 'Cojutepeque', 7),
(185, 'O60d7dfc3de36d0.12581578', 185, 'Candelaria', 7),
(186, 'O60d7dfc3e0dae8.67138132', 186, 'El Carmen', 7),
(187, 'O60d7dfc3e26e07.71783365', 187, 'El Rosario', 7),
(188, 'O60d7dfc3e45123.95913436', 188, 'Monte San Juan', 7),
(189, 'O60d7dfc3e4e764.75969883', 189, 'Oratorio de Concepción', 7),
(190, 'O60d7dfc3e71183.79052244', 190, 'San Bartolomé Perulapía', 7),
(191, 'O60d7dfc3e92516.36927699', 191, 'San Cristóbal', 7),
(192, 'O60d7dfc3eb3958.20880153', 192, 'San José Guayabal', 7),
(193, 'O60d7dfc3ed4077.61562735', 193, 'San Pedro Perulapán', 7),
(194, 'O60d7dfc3ef4d69.85877268', 194, 'San Rafael Cedros', 7),
(195, 'O60d7dfc3f162d3.68153420', 195, 'San Ramón', 7),
(196, 'O60d7dfc3f37991.14954567', 196, 'Santa Cruz Analquito', 7),
(197, 'O60d7dfc403c028.60785673', 197, 'Santa Cruz Michapa', 7),
(198, 'O60d7dfc405c965.26691167', 198, 'Suchitoto', 7),
(199, 'O60d7dfc407e237.09820904', 199, 'Tenancingo', 7),
(200, 'O60d7dfc409fd00.64657874', 200, 'Aguilares', 6),
(201, 'O60d7dfc40bf511.69188620', 201, 'Apopa', 6),
(202, 'O60d7dfc40e16e4.08681705', 202, 'Ayutuxtepeque', 6),
(203, 'O60d7dfc41028c6.41648737', 203, 'Cuscatancingo', 6),
(204, 'O60d7dfc4124150.14242223', 204, 'Ciudad Delgado', 6),
(205, 'O60d7dfc41442e4.18896530', 205, 'El Paisnal', 6),
(206, 'O60d7dfc4165d12.94983249', 206, 'Guazapa', 6),
(207, 'O60d7dfc4186fa3.89057486', 207, 'Ilopango', 6),
(208, 'O60d7dfc41a8210.80838029', 208, 'Mejicanos', 6),
(209, 'O60d7dfc41c8763.98075094', 209, 'Nejapa', 6),
(210, 'O60d7dfc41e9592.08907433', 210, 'Panchimalco', 6),
(211, 'O60d7dfc4210d83.14839653', 211, 'Rosario de Mora', 6),
(212, 'O60d7dfc4233190.31069952', 212, 'San Marcos', 6),
(213, 'O60d7dfc4252af3.96762995', 213, 'San Martín', 6),
(214, 'O60d7dfc4273fd4.03494247', 214, 'San Salvador', 6),
(215, 'O60d7dfc4295004.18169269', 215, 'Santiago Texacuangos', 6),
(216, 'O60d7dfc42b6023.89793965', 216, 'Santo Tomás', 6),
(217, 'O60d7dfc42d70f6.09775463', 217, 'Soyapango', 6),
(218, 'O60d7dfc42f79c8.83487142', 218, 'Tonacatepeque', 6),
(219, 'O60d7dfc4318ee7.00375654', 219, 'Zacatecoluca', 8),
(220, 'O60d7dfc4349f57.40470824', 220, 'Cuyultitán', 8),
(221, 'O60d7dfc436a326.29933814', 221, 'El Rosario', 8),
(222, 'O60d7dfc438ba62.95560138', 222, 'Jerusalén', 8),
(223, 'O60d7dfc43acd39.81787740', 223, 'Mercedes La Ceiba', 8),
(224, 'O60d7dfc43cdef2.29972344', 224, 'Olocuilta', 8),
(225, 'O60d7dfc43ef410.13245696', 225, 'Paraíso de Osorio', 8),
(226, 'O60d7dfc44103f4.33430712', 226, 'San Antonio Masahuat', 8),
(227, 'O60d7dfc4431378.51413412', 227, 'San Emigdio', 8),
(228, 'O60d7dfc4453d13.18413410', 228, 'San Francisco Chinameca', 8),
(229, 'O60d7dfc44740b2.44994769', 229, 'San Pedro Masahuat', 8),
(230, 'O60d7dfc44a8b39.79394771', 230, 'San Juan Nonualco', 8),
(231, 'O60d7dfc44c9ef9.33844772', 231, 'San Juan Talpa', 8),
(232, 'O60d7dfc44ebc81.71666187', 232, 'San Juan Tepezontes', 8),
(233, 'O60d7dfc450c4a4.12289423', 233, 'San Luis La Herradura', 8),
(234, 'O60d7dfc452d501.40434926', 234, 'San Luis Talpa', 8),
(235, 'O60d7dfc454e080.50874719', 235, 'San Miguel Tepezontes', 8),
(236, 'O60d7dfc456ffe9.72525533', 236, 'San Pedro Nonualco', 8),
(237, 'O60d7dfc4590855.45143569', 237, 'San Rafael Obrajuelo', 8),
(238, 'O60d7dfc45b17d4.12078345', 238, 'Santa María Ostuma', 8),
(239, 'O60d7dfc45d2ae1.45270102', 239, 'Santiago Nonualco', 8),
(240, 'O60d7dfc45f4338.23499763', 240, 'Tapalhuaca', 8),
(241, 'O60d7dfc4614848.83139884', 241, 'Cinquera', 9),
(242, 'O60d7dfc4635d11.82340768', 242, 'Dolores', 9),
(243, 'O60d7dfc4657d21.64809382', 243, 'Guacotecti', 9),
(244, 'O60d7dfc467a8b0.00397963', 244, 'Ilobasco', 9),
(245, 'O60d7dfc4699ba5.32875481', 245, 'Jutiapa', 9),
(246, 'O60d7dfc46bb247.43992669', 246, 'San Isidro', 9),
(247, 'O60d7dfc46dbd50.24328606', 247, 'Sensuntepeque', 9),
(248, 'O60d7dfc46fcdc6.69550970', 248, 'Tejutepeque', 9),
(249, 'O60d7dfc471c297.81486496', 249, 'Victoria', 9),
(250, 'O60d7dfc473e9a9.73724144', 250, 'Apastepeque', 10),
(251, 'O60d7dfc475f9f8.36297979', 251, 'Guadalupe', 10),
(252, 'O60d7dfc4781209.20142410', 252, 'San Cayetano Istepeque', 10),
(253, 'O60d7dfc47a1327.04883012', 253, 'San Esteban Catarina', 10),
(254, 'O60d7dfc47c2a70.27346841', 254, 'San Ildefonso', 10),
(255, 'O60d7dfc47e3f33.13853201', 255, 'San Lorenzo', 10),
(256, 'O60d7dfc48065b1.14497427', 256, 'San Sebastián', 10),
(257, 'O60d7dfc4827081.84469257', 257, 'San Vicente', 10),
(258, 'O60d7dfc4847b62.15835978', 258, 'Santa Clara', 10),
(259, 'O60d7dfc48681f2.08939028', 259, 'Santo Domingo', 10),
(260, 'O60d7dfc488afb4.72724259', 260, 'Tecoluca', 10),
(261, 'O60d7dfc48ab360.06135938', 261, 'Tepetitán', 10),
(262, 'O60d7dfc48cbac0.35960042', 262, 'Verapaz', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nc_corte`
--

CREATE TABLE `nc_corte` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_nc` int(11) NOT NULL,
  `id_corte` int(11) NOT NULL,
  `n_nc` int(11) NOT NULL,
  `t_nc` double NOT NULL,
  `afecta` varchar(30) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `exento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id` int(11) NOT NULL,
  `iso` char(2) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `numero_doc` varchar(30) NOT NULL,
  `total` float NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `anulada` tinyint(1) NOT NULL DEFAULT 0,
  `id_sucursal` int(11) NOT NULL,
  `finalizada` tinyint(1) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha_factura` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `lugar_entrega` varchar(80) CHARACTER SET utf8 NOT NULL,
  `transporte` varchar(20) NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `observaciones` text CHARACTER SET utf8 NOT NULL,
  `hash` varchar(60) NOT NULL,
  `hora_pedido` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_detalle`
--

CREATE TABLE `pedido_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_pedido_detalle` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_prod_serv` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` float NOT NULL,
  `subtotal` float NOT NULL,
  `combo` tinyint(1) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `tipo_prod_serv` varchar(30) NOT NULL COMMENT 'PRODUCTO o SERVICIO',
  `id_sucursal` int(11) NOT NULL,
  `cant_facturado` float NOT NULL,
  `unidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_prov`
--

CREATE TABLE `pedido_prov` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_pedido_prov` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `numero` varchar(30) NOT NULL,
  `total` float NOT NULL,
  `id_empleado_proceso` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_factura` date NOT NULL,
  `numero_factura` varchar(50) NOT NULL,
  `id_empleado_factura` int(11) NOT NULL,
  `fecha_entrega` date NOT NULL,
  `lugar_entrega` varchar(80) CHARACTER SET utf8 NOT NULL,
  `reservado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_prov_detalle`
--

CREATE TABLE `pedido_prov_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_pedido_detalle` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `cantidad_enviar` decimal(11,4) NOT NULL,
  `precio_venta` decimal(11,4) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `tipo_prod_serv` varchar(30) NOT NULL COMMENT 'PRODUCTO o SERVICIO',
  `id_sucursal` int(11) NOT NULL,
  `cant_facturado` decimal(11,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posicion`
--

CREATE TABLE `posicion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_posicion` int(11) NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `id_estante` int(11) NOT NULL,
  `posicion` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio_aut`
--

CREATE TABLE `precio_aut` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id` int(11) NOT NULL,
  `clave` varchar(6) NOT NULL,
  `aplicado` tinyint(4) NOT NULL,
  `id_sucursal` tinyint(4) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_generado` date NOT NULL,
  `fecha_aplicado` date NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `precio_aut`
--

INSERT INTO `precio_aut` (`id_server`, `unique_id`, `id`, `clave`, `aplicado`, `id_sucursal`, `id_usuario`, `fecha_generado`, `fecha_aplicado`, `precio`) VALUES
(1, 'O60d7dfc492ea99.86298358', 1, 'ca9mj8', 1, 1, 1, '2020-06-23', '2020-06-23', 3),
(2, 'O60d7dfc4938295.10224030', 2, 'y1asif', 1, 1, 9, '2020-10-31', '2020-10-31', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentacion`
--

CREATE TABLE `presentacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `presentacion`
--

INSERT INTO `presentacion` (`id_server`, `unique_id`, `id_sucursal`, `id_presentacion`, `nombre`, `descripcion`) VALUES
(0, 'S62153fa6439479.07076350', 1, 1, 'UNIDAD', 'UNIDAD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentacion_producto`
--

CREATE TABLE `presentacion_producto` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_pp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `descripcion` varchar(20) CHARACTER SET utf8 NOT NULL,
  `unidad` float NOT NULL,
  `costo` decimal(10,4) NOT NULL,
  `costo_s_iva` int(11) NOT NULL,
  `precio` decimal(12,4) NOT NULL,
  `precio1` decimal(12,4) NOT NULL,
  `precio2` decimal(12,4) NOT NULL,
  `precio3` decimal(12,4) NOT NULL,
  `precio4` decimal(12,4) NOT NULL,
  `precio5` decimal(12,4) NOT NULL,
  `precio6` decimal(12,4) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `barcode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `presentacion_producto`
--

INSERT INTO `presentacion_producto` (`id_server`, `unique_id`, `id_pp`, `id_producto`, `id_server_prod`, `id_presentacion`, `descripcion`, `unidad`, `costo`, `costo_s_iva`, `precio`, `precio1`, `precio2`, `precio3`, `precio4`, `precio5`, `precio6`, `activo`, `barcode`) VALUES
(0, 'S6215407d7f2511.99727727', 1, 1, 0, 1, '1X1', 1, '50.0000', 50, '125.0000', '100.0000', '90.0000', '0.0000', '0.0000', '0.0000', '0.0000', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_server` int(11) NOT NULL,
  `unique_id` text COLLATE utf8_spanish_ci NOT NULL,
  `id_producto` int(11) NOT NULL,
  `barcode` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `codart` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(250) CHARACTER SET latin1 NOT NULL,
  `composicion` text COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(100) CHARACTER SET latin1 NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `perecedero` tinyint(1) NOT NULL,
  `exento` tinyint(1) NOT NULL,
  `minimo` int(11) NOT NULL,
  `decimals` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `imagen` varchar(250) CHARACTER SET latin1 NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `costo` float NOT NULL,
  `precio` float NOT NULL,
  `precio_mayoreo` float NOT NULL,
  `color` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_server`, `unique_id`, `id_producto`, `barcode`, `codart`, `descripcion`, `composicion`, `marca`, `estado`, `perecedero`, `exento`, `minimo`, `decimals`, `id_categoria`, `id_proveedor`, `imagen`, `id_sucursal`, `costo`, `precio`, `precio_mayoreo`, `color`) VALUES
(0, 'S6215407d7ea276.90281447', 1, '', '1', 'TABLERO PARA YBR 125 YAMAHA', '', 'YAMAHA', 1, 0, 0, 2, 0, 1, 1, '', 1, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `categoria` int(1) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  `codigoant` int(3) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `municipio` varchar(20) DEFAULT NULL,
  `depto` varchar(12) DEFAULT NULL,
  `pais` varchar(10) DEFAULT NULL,
  `contacto` varchar(40) DEFAULT NULL,
  `nrc` varchar(8) DEFAULT NULL,
  `nit` varchar(17) DEFAULT NULL,
  `dui` varchar(12) DEFAULT NULL,
  `giro` varchar(40) DEFAULT NULL,
  `telefono1` varchar(15) DEFAULT NULL,
  `telefono2` varchar(15) DEFAULT NULL,
  `celular` varchar(15) NOT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ultcompra` date DEFAULT NULL,
  `acumulado` int(1) DEFAULT NULL,
  `saldo` int(1) DEFAULT NULL,
  `percibe` int(1) DEFAULT NULL,
  `retiene` int(1) DEFAULT NULL,
  `retiene10` int(1) DEFAULT NULL,
  `a30` int(1) DEFAULT NULL,
  `a60` int(1) DEFAULT NULL,
  `a90` int(1) DEFAULT NULL,
  `m90` int(1) DEFAULT NULL,
  `vencido` int(1) DEFAULT NULL,
  `pagadas` int(1) DEFAULT NULL,
  `pendientes` decimal(7,2) DEFAULT NULL,
  `total1` decimal(7,2) DEFAULT NULL,
  `nombreche` varchar(45) DEFAULT NULL,
  `viñeta` int(1) DEFAULT NULL,
  `nacionalidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_server`, `unique_id`, `id_sucursal`, `id_proveedor`, `categoria`, `tipo`, `codigoant`, `nombre`, `direccion`, `municipio`, `depto`, `pais`, `contacto`, `nrc`, `nit`, `dui`, `giro`, `telefono1`, `telefono2`, `celular`, `fax`, `email`, `ultcompra`, `acumulado`, `saldo`, `percibe`, `retiene`, `retiene10`, `a30`, `a60`, `a90`, `m90`, `vencido`, `pagadas`, `pendientes`, `total1`, `nombreche`, `viñeta`, `nacionalidad`) VALUES
(0, 'S62153eb4acbc04.59346800', 1, 1, 1, 1, NULL, 'NO DEFINIDO', '', '40', '3', NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 68);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparaciones`
--

CREATE TABLE `reparaciones` (
  `id_reparacion` int(5) NOT NULL,
  `id_factura` int(5) NOT NULL,
  `numero_placa` varchar(8) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_empleado` int(5) NOT NULL,
  `diagnostico_inicial` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_ingreso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `reparaciones`
--

INSERT INTO `reparaciones` (`id_reparacion`, `id_factura`, `numero_placa`, `id_empleado`, `diagnostico_inicial`, `fecha_ingreso`) VALUES
(20, 36, 'M300900', 6, 'No le sirve tablero', '2022-03-15'),
(21, 37, 'M300900', 7, 'Requiere cambio de aceite', '2022-03-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `ruta` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id_server`, `unique_id`, `id`, `descripcion`, `ruta`) VALUES
(1, 'O60d7e007cbb011.48263784', 1, 'server', 'http://pacifico.apps-oss.com/mothership.php'),
(2, 'O60d7e007cd1812.90408669', 2, 'local', 'http://localhost/sistema/slave.php'),
(3, 'O6064ad4f78f928.99852427', 3, 'stock', 'http://pacifico.apps-oss.com/force.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_stock` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `stock` decimal(11,4) NOT NULL,
  `stock_local` decimal(11,4) NOT NULL,
  `precio_unitario` float NOT NULL,
  `costo_unitario` float NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`id_server`, `unique_id`, `id_sucursal`, `id_stock`, `id_producto`, `stock`, `stock_local`, `precio_unitario`, `costo_unitario`, `create_date`, `update_date`) VALUES
(0, 'S6215409184f7f9.83803000', 1, 1, 1, '8.0000', '10.0000', 125, 50, '2022-02-22', '2022-03-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_ubicacion`
--

CREATE TABLE `stock_ubicacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_su` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `id_estante` int(11) NOT NULL,
  `id_posicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `stock_ubicacion`
--

INSERT INTO `stock_ubicacion` (`id_server`, `unique_id`, `id_sucursal`, `id_su`, `id_producto`, `cantidad`, `id_ubicacion`, `id_estante`, `id_posicion`) VALUES
(0, 'S621540918435b1.62269667', 1, 1, 1, '8.0000', 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono1` varchar(20) NOT NULL,
  `telefono2` varchar(20) NOT NULL,
  `casa_matriz` tinyint(1) NOT NULL,
  `iva` float NOT NULL,
  `monto_retencion1` float NOT NULL,
  `monto_retencion10` float NOT NULL,
  `monto_percepcion` float NOT NULL,
  `n_sucursal` int(11) NOT NULL,
  `vigencia_factura` int(11) NOT NULL,
  `vigencia_pedido` int(11) NOT NULL,
  `giro` varchar(100) NOT NULL,
  `nrc` varchar(100) NOT NULL,
  `nit` varchar(100) NOT NULL,
  `razon_social` varchar(150) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `serie_cof` varchar(100) NOT NULL,
  `desde_cof` int(11) NOT NULL,
  `hasta_cof` int(11) NOT NULL,
  `serie_ccf` varchar(100) NOT NULL,
  `desde_ccf` int(11) NOT NULL,
  `hasta_ccf` int(11) NOT NULL,
  `ultima_act` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id_server`, `unique_id`, `id_sucursal`, `descripcion`, `direccion`, `telefono1`, `telefono2`, `casa_matriz`, `iva`, `monto_retencion1`, `monto_retencion10`, `monto_percepcion`, `n_sucursal`, `vigencia_factura`, `vigencia_pedido`, `giro`, `nrc`, `nit`, `razon_social`, `logo`, `serie_cof`, `desde_cof`, `hasta_cof`, `serie_ccf`, `desde_ccf`, `hasta_ccf`, `ultima_act`) VALUES
(1, 'O60d7e01a674126.11597151', 1, 'MOTO STOP', 'SONSONATE', '--', '', 1, 13, 100, 0, 100, 1, 1, 1, '-', '-0', '---0', 'REPARACION DE MOTOCICLETAS', 'img/6215312b6547b_motostop.jpeg', '18NU000F', 1, 5000, '18UN000C', 1, 5000, '0000-00-00'),
(2, 'O60d7e01a674126.11597152', 2, 'AGRO-FERRETERIA EL PACIFICO SERVIDOR EN LINEA', '', '', '', 1, 13, 100, 0, 100, 1, 1, 1, '', '', '', '', '', '18NU000F', 1, 5000, '18UN000C', 1, 5000, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empleado`
--

CREATE TABLE `tipo_empleado` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_tipo_empleado` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_empleado`
--

INSERT INTO `tipo_empleado` (`id_server`, `unique_id`, `id_tipo_empleado`, `descripcion`) VALUES
(1, 'O60d7e01a692f23.65072778', 1, 'Administrador'),
(2, 'O60d7e01a6ab8e3.03454156', 2, 'Vendedor'),
(3, 'O60d7e01a6cd948.12915427', 3, 'Cajero'),
(4, 'O60d7e01a6ee4e4.87490483', 4, 'Bodeguero'),
(5, 'O60d7e01a70edc4.20991700', 5, 'Oficios Varios ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--

CREATE TABLE `tipo_pago` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_tipopago` int(11) NOT NULL,
  `alias_tipopago` char(3) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `inactivo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_pago`
--

INSERT INTO `tipo_pago` (`id_server`, `unique_id`, `id_tipopago`, `alias_tipopago`, `descripcion`, `inactivo`) VALUES
(1, 'O60d7e01a739bd0.28959620', 1, 'CON', 'CONTADO', 0),
(2, 'O60d7e01a7527f1.26409344', 2, 'TAR', 'TARJETA DEBITO/CREDITO', 1),
(3, 'O60d7e01a772b32.72372250', 3, 'CRE', 'CREDITO', 0),
(4, 'O60d7e01a794fe3.89046432', 4, 'CHE', 'CHEQUE', 0),
(5, 'O60d7e01a7b5f40.49169259', 5, 'TRA', 'TRANSFERENCIA', 0),
(6, 'O60d7e01a7d86c1.04610920', 6, 'PEN', 'PENDIENTE', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_proveedor`
--

CREATE TABLE `tipo_proveedor` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_proveedor`
--

INSERT INTO `tipo_proveedor` (`id_server`, `unique_id`, `id_tipo`, `nombre`, `descripcion`) VALUES
(1, 'O60d7e01a7ffd47.94616796', 1, 'Costo', ''),
(2, 'O60d7e01a81a593.01566955', 2, 'Gasto', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `to_corte`
--

CREATE TABLE `to_corte` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `to_corte`
--

INSERT INTO `to_corte` (`id_server`, `unique_id`, `id`, `id_categoria`) VALUES
(1, 'O60d7e01a844a76.63663001', 1, 192),
(2, 'O60d7e01a85b7e9.11502154', 2, 131);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `to_corte_producto`
--

CREATE TABLE `to_corte_producto` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id` int(11) NOT NULL,
  `id_corte` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `to_corte_producto`
--

INSERT INTO `to_corte_producto` (`id_server`, `unique_id`, `id`, `id_corte`, `id_producto`) VALUES
(1, 'O60d7e01a885bb4.71076637', 1, 18, 5005),
(2, 'O60d7e01a89dc60.66155429', 2, 18, 5004),
(3, 'O60d7e01a8bec37.88017233', 3, 18, 5003);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `to_corte_producto_detalle`
--

CREATE TABLE `to_corte_producto_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id` int(11) NOT NULL,
  `id_ref` int(11) NOT NULL,
  `cantidad` decimal(10,4) DEFAULT NULL,
  `stock_anterior` decimal(10,4) DEFAULT NULL,
  `stock_actual` decimal(10,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `to_corte_producto_detalle`
--

INSERT INTO `to_corte_producto_detalle` (`id_server`, `unique_id`, `id`, `id_ref`, `cantidad`, `stock_anterior`, `stock_actual`) VALUES
(1, 'O60d7e01a8eb8c2.33234950', 1, 1, '10.0000', '0.0000', '10.0000'),
(2, 'O60d7e01a9024b4.74295901', 2, 1, '1.0000', '10.0000', '9.0000'),
(3, 'O60d7e01a922ae8.51251059', 3, 2, '10.0000', '0.0000', '10.0000'),
(4, 'O60d7e01a94c9f6.52962326', 4, 3, '10.0000', '0.0000', '10.0000'),
(5, 'O60d7e01a96f644.47343010', 5, 3, '1.0000', '10.0000', '9.0000'),
(6, 'O60d7e01a98ef50.46134464', 6, 3, '1.0000', '9.0000', '8.0000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslado`
--

CREATE TABLE `traslado` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `n_vale` varchar(50) NOT NULL,
  `id_ubicacion_destino` int(11) NOT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_empleado_envia` int(11) NOT NULL,
  `id_empleado_recibe` int(11) NOT NULL,
  `empleado_envia` varchar(250) NOT NULL,
  `empleado_recibe` varchar(250) NOT NULL,
  `total` float NOT NULL,
  `anulada` tinyint(4) NOT NULL,
  `finalizada` tinyint(4) NOT NULL,
  `id_origen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslado_detalle`
--

CREATE TABLE `traslado_detalle` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `id_detalle_traslado` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `unidad` int(11) NOT NULL,
  `costo` float NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `presentacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslado_detalle_g`
--

CREATE TABLE `traslado_detalle_g` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `id_detalle_traslado` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `unidad` int(11) NOT NULL,
  `costo` float NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL,
  `presentacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslado_detalle_recibido`
--

CREATE TABLE `traslado_detalle_recibido` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `id_detalle_traslado_recibido` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `id_traslado_server` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_server_prod` int(11) NOT NULL,
  `cantidad` decimal(11,4) NOT NULL,
  `recibido` decimal(11,4) NOT NULL,
  `unidad` int(11) NOT NULL,
  `id_presentacion` int(11) NOT NULL,
  `id_server_presen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslado_g`
--

CREATE TABLE `traslado_g` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal_origen` int(11) NOT NULL,
  `id_sucursal_destino` int(11) NOT NULL,
  `id_traslado` int(11) NOT NULL,
  `n_vale` varchar(50) NOT NULL,
  `id_ubicacion_destino` int(11) NOT NULL,
  `concepto` varchar(50) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id_empleado_envia` int(11) NOT NULL,
  `id_empleado_recibe` int(11) NOT NULL,
  `empleado_envia` varchar(250) NOT NULL,
  `empleado_recibe` varchar(250) NOT NULL,
  `total` float NOT NULL,
  `anulada` tinyint(4) NOT NULL,
  `finalizada` tinyint(4) NOT NULL,
  `id_origen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_ubicacion` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `bodega` tinyint(1) NOT NULL,
  `borrado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`id_server`, `unique_id`, `id_sucursal`, `id_ubicacion`, `descripcion`, `bodega`, `borrado`) VALUES
(1, 'O60d7e01a9df855.19389310', 1, 1, 'LOCAL DE VENTA', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(250) CHARACTER SET utf8 NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(250) NOT NULL,
  `admin` int(11) NOT NULL,
  `precios` int(11) NOT NULL,
  `latitud_ultima` double NOT NULL,
  `longitud_ultima` double NOT NULL,
  `fecha_tracking` date NOT NULL,
  `hora_tracking` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_server`, `unique_id`, `id_sucursal`, `id_usuario`, `id_empleado`, `nombre`, `usuario`, `password`, `admin`, `precios`, `latitud_ultima`, `longitud_ultima`, `fecha_tracking`, `hora_tracking`) VALUES
(1, 'O60d7e01a9f01f1.82220007', 1, 1, 1, 'administrador', 'admin', 'f90d1250fd96b918b6d474a2e549510c', 1, 1, 0, 0, '0000-00-00', '00:00:00'),
(2, 'O60d7e01aa096f1.67348851', 1, 2, 0, 'FLOR HERNANDEZ', 'caja', 'e10adc3949ba59abbe56e057f20f883e', 0, 4, 0, 0, '0000-00-00', '00:00:00'),
(10, 'O60d7e01aa2a2c6.40254272', 1, 10, 0, 'Encargado', 'encargado', '0901e873b1872d36bff82b1a8aca2633', 1, 4, 0, 0, '0000-00-00', '00:00:00'),
(11, 'O60d7e01aa4afd4.72402023', 1, 11, 8, 'CLARISSA', 'preventa', 'e10adc3949ba59abbe56e057f20f883e', 0, 4, 0, 0, '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_modulo`
--

CREATE TABLE `usuario_modulo` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_mod_user` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_modulo`
--

INSERT INTO `usuario_modulo` (`id_server`, `unique_id`, `id_sucursal`, `id_mod_user`, `id_modulo`, `id_usuario`) VALUES
(1, 'O60d7e01aa81e79.27462908', 0, 1, 43, 47),
(2, 'O60d7e01aa8e6d2.54909326', 0, 2, 44, 47),
(3, 'O60d7e01aaabe66.12781575', 0, 3, 68, 47),
(4, 'O60d7e01aab4113.40416430', 0, 4, 82, 47),
(5, 'O60d7e01aad6410.43570065', 0, 5, 83, 47),
(6, 'O60d7e01aaf7363.69083802', 0, 6, 1, 47),
(7, 'O60d7e01ab192c6.33224829', 0, 7, 2, 47),
(8, 'O60d7e01ab399c1.30191124', 0, 8, 3, 47),
(9, 'O60d7e01ab5af55.82379320', 0, 9, 4, 47),
(10, 'O60d7e01ab7c8b0.88948962', 0, 10, 5, 47),
(11, 'O60d7e01ab9d2d7.50329483', 0, 11, 19, 47),
(12, 'O60d7e01abbe170.09112158', 0, 12, 20, 47),
(13, 'O60d7e01abdfd13.06396827', 0, 13, 21, 47),
(14, 'O60d7e01ac00021.82587385', 0, 14, 22, 47),
(15, 'O60d7e01ac215b0.26171724', 0, 15, 23, 47),
(16, 'O60d7e01ac41cc8.38226839', 0, 16, 45, 47),
(17, 'O60d7e01ac631e6.74390732', 0, 17, 46, 47),
(18, 'O60d7e01ac88d09.79746581', 0, 18, 47, 47),
(19, 'O60d7e01acab007.60579918', 0, 19, 48, 47),
(20, 'O60d7e01acc8933.29892798', 0, 20, 49, 47),
(21, 'O60d7e01acea3c4.91785999', 0, 21, 77, 47),
(22, 'O60d7e01ad0b122.74443140', 0, 22, 78, 47),
(23, 'O60d7e01ad2c536.14145682', 0, 23, 79, 47),
(24, 'O60d7e01ad4ceb0.12023179', 0, 24, 80, 47),
(25, 'O60d7e01ad6f624.68007150', 0, 25, 81, 47),
(26, 'O60d7e01ad91619.08225443', 0, 26, 98, 47),
(27, 'O60d7e01adb1cf0.38155699', 0, 27, 99, 47),
(28, 'O60d7e01add2b36.57242197', 0, 28, 100, 47),
(29, 'O60d7e01adf44c2.48927753', 0, 29, 101, 47),
(30, 'O60d7e01ae15547.31552601', 0, 30, 103, 47),
(31, 'O60d7e01ae36547.03448907', 0, 31, 72, 47),
(32, 'O60d7e01ae571b6.14343919', 0, 32, 73, 47),
(33, 'O60d7e01ae78525.81066723', 0, 33, 74, 47),
(34, 'O60d7e01ae99b67.09708214', 0, 34, 75, 47),
(35, 'O60d7e01aeba0c7.31419221', 0, 35, 76, 47),
(36, 'O60d7e01aeda8e8.55531709', 0, 36, 134, 47),
(37, 'O60d7e01aefc288.10795520', 0, 37, 135, 47),
(38, 'O60d7e01af1da36.26262071', 0, 38, 85, 47),
(39, 'O60d7e01af3edc3.59888791', 0, 39, 86, 47),
(40, 'O60d7e01b01e7b6.03257797', 0, 40, 87, 47),
(41, 'O60d7e01b03f9d4.71278397', 0, 41, 88, 47),
(42, 'O60d7e01b061341.05366681', 0, 42, 89, 47),
(43, 'O60d7e01b081179.08211068', 0, 43, 90, 47),
(44, 'O60d7e01b0a2599.52405647', 0, 44, 91, 47),
(45, 'O60d7e01b0c38b4.94997684', 0, 45, 92, 47),
(46, 'O60d7e01b0e48c8.76888997', 0, 46, 93, 47),
(47, 'O60d7e01b105978.44958494', 0, 47, 94, 47),
(48, 'O60d7e01b126861.95554275', 0, 48, 95, 47),
(49, 'O60d7e01b148258.64688762', 0, 49, 96, 47),
(50, 'O60d7e01b169910.82422585', 0, 50, 97, 47),
(51, 'O60d7e01b18a315.96883577', 0, 51, 137, 47),
(52, 'O60d7e01b1ac428.03805167', 0, 52, 35, 47),
(53, 'O60d7e01b1cd808.84568945', 0, 53, 36, 47),
(54, 'O60d7e01b1eedc7.80694942', 0, 54, 106, 47),
(55, 'O60d7e01b20f8b7.76119790', 0, 55, 107, 47),
(56, 'O60d7e01b230d30.42198368', 0, 56, 108, 47),
(57, 'O60d7e01b251fc3.02268533', 0, 57, 109, 47),
(58, 'O60d7e01b274428.21601892', 0, 58, 110, 47),
(59, 'O60d7e01b294d15.53758409', 0, 59, 118, 47),
(60, 'O60d7e01b2b5579.76988028', 0, 60, 120, 47),
(61, 'O60d7e01b2d6f24.06450868', 0, 61, 37, 47),
(62, 'O60d7e01b2f8820.18040899', 0, 62, 38, 47),
(63, 'O60d7e01b319232.36075946', 0, 63, 50, 47),
(64, 'O60d7e01b33afb9.51943930', 0, 64, 69, 47),
(65, 'O60d7e01b35c358.25007881', 0, 65, 70, 47),
(66, 'O60d7e01b37d5b2.09729285', 0, 66, 71, 47),
(67, 'O60d7e01b39da97.19994671', 0, 67, 84, 47),
(68, 'O60d7e01b3bf974.78525145', 0, 68, 124, 47),
(69, 'O60d7e01b3e0bf7.53144687', 0, 69, 133, 47),
(70, 'O60d7e01b4022b2.88023815', 0, 70, 119, 47),
(71, 'O60d7e01b422a93.14451348', 0, 71, 121, 47),
(72, 'O60d7e01b442d79.05126763', 0, 72, 122, 47),
(73, 'O60d7e01b4647e2.42030728', 0, 73, 123, 47),
(74, 'O60d7e01b486048.65657843', 0, 74, 126, 47),
(75, 'O60d7e01b4a6510.09111604', 0, 75, 128, 47),
(76, 'O60d7e01b4c6ca6.19069425', 0, 76, 129, 47),
(77, 'O60d7e01b4e82a5.11719352', 0, 77, 130, 47),
(78, 'O60d7e01b5094e5.10831508', 0, 78, 138, 47),
(79, 'O60d7e01b529dd7.40612800', 0, 79, 41, 47),
(80, 'O60d7e01b54b172.11352380', 0, 80, 42, 47),
(81, 'O60d7e01b56d2a6.64528492', 0, 81, 111, 47),
(82, 'O60d7e01b58f0c8.81061491', 0, 82, 112, 47),
(83, 'O60d7e01b5af573.99850379', 0, 83, 113, 47),
(84, 'O60d7e01b5d0427.29043851', 0, 84, 114, 47),
(85, 'O60d7e01b5f1a27.55309813', 0, 85, 115, 47),
(86, 'O60d7e01b613228.98771213', 0, 86, 116, 47),
(87, 'O60d7e01b633d99.17264687', 0, 87, 117, 47),
(88, 'O60d7e01b654081.78836814', 0, 88, 127, 47),
(89, 'O60d7e01b675a23.67166301', 0, 89, 132, 47),
(90, 'O60d7e01b697369.52098065', 0, 90, 54, 47),
(91, 'O60d7e01b6b7f95.64948353', 0, 91, 55, 47),
(92, 'O60d7e01b6d8ab5.04768941', 0, 92, 56, 47),
(93, 'O60d7e01b6facc6.91415100', 0, 93, 57, 47),
(94, 'O60d7e01b71c226.56815782', 0, 94, 58, 47),
(95, 'O60d7e01b73bdf1.48558548', 0, 95, 59, 47),
(96, 'O60d7e01b75d694.73191132', 0, 96, 60, 47),
(97, 'O60d7e01b77edc2.70154960', 0, 97, 61, 47),
(98, 'O60d7e01b7a0617.07472127', 0, 98, 62, 47),
(99, 'O60d7e01b7de7f2.11805206', 0, 99, 63, 47),
(100, 'O60d7e01b7e8562.45447670', 0, 100, 64, 47),
(101, 'O60d7e01b809234.86096722', 0, 101, 65, 47),
(102, 'O60d7e01b82a700.31801469', 0, 102, 66, 47),
(103, 'O60d7e01b84c166.67365008', 0, 103, 6, 47),
(104, 'O60d7e01b86cd47.50442046', 0, 104, 7, 47),
(105, 'O60d7e01b88dcf3.52863971', 0, 105, 8, 47),
(106, 'O60d7e01b8b01f4.94807024', 0, 106, 9, 47),
(107, 'O60d7e01b8d1cc3.75565724', 0, 107, 10, 47),
(108, 'O60d7e01b8f2c94.02007615', 0, 108, 11, 47),
(109, 'O60d7e01b913992.89271517', 0, 109, 12, 47),
(110, 'O60d7e01b934b74.69827406', 0, 110, 13, 47),
(111, 'O60d7e01b9567c9.65048651', 0, 111, 14, 47),
(112, 'O60d7e01b977109.72022546', 0, 112, 15, 47),
(113, 'O60d7e01b999353.81199329', 0, 113, 16, 47),
(114, 'O60d7e01b9ba1c4.37628685', 0, 114, 17, 47),
(115, 'O60d7e01b9db6f3.59038858', 0, 115, 18, 47),
(116, 'O60d7e01b9fced0.99757719', 0, 116, 139, 47),
(117, 'O60d7e01ba1dc52.96291513', 0, 117, 24, 47),
(118, 'O60d7e01ba3e960.87199454', 0, 118, 25, 47),
(119, 'O60d7e01ba60453.04934890', 0, 119, 26, 47),
(120, 'O60d7e01ba81295.08769544', 0, 120, 27, 47),
(121, 'O60d7e01baa1b55.95780570', 0, 121, 28, 47),
(122, 'O60d7e01bac3098.41964714', 0, 122, 29, 47),
(123, 'O60d7e01bae51c7.91525717', 0, 123, 30, 47),
(124, 'O60d7e01bb05c01.01253502', 0, 124, 31, 47),
(125, 'O60d7e01bb25d86.21405023', 0, 125, 32, 47),
(126, 'O60d7e01bb48d33.03203242', 0, 126, 33, 47),
(127, 'O60d7e01bb6b6c7.25900610', 0, 127, 34, 47),
(128, 'O60d7e01bb8b494.55571399', 0, 128, 39, 47),
(129, 'O60d7e01bbac4b5.73899159', 0, 129, 40, 47),
(130, 'O60d7e01bbcd5f3.09694886', 0, 130, 136, 47),
(166, 'O60d7e01bbef380.89124738', 0, 166, 35, 6),
(171, 'O60d7e01bc101a9.01399711', 0, 171, 35, 3),
(172, 'O60d7e01bc30eb6.26399115', 0, 172, 106, 3),
(173, 'O60d7e01bc51c66.92437192', 0, 173, 107, 3),
(174, 'O60d7e01bc779c7.34893510', 0, 174, 118, 3),
(175, 'O60d7e01bc97f51.87006705', 0, 175, 35, 4),
(176, 'O60d7e01bcb7b19.37140254', 0, 176, 106, 4),
(177, 'O60d7e01bcd86d5.56335085', 0, 177, 107, 4),
(178, 'O60d7e01bcfae29.42502517', 0, 178, 118, 4),
(179, 'O60d7e01bd1be16.56461084', 0, 179, 35, 5),
(180, 'O60d7e01bd3d3e0.39840927', 0, 180, 106, 5),
(181, 'O60d7e01bd5e1a7.56459157', 0, 181, 107, 5),
(182, 'O60d7e01bd80a94.73869580', 0, 182, 118, 5),
(183, 'O60d7e01bda0099.25601246', 0, 183, 43, 7),
(184, 'O60d7e01bdc10e9.00694767', 0, 184, 44, 7),
(185, 'O60d7e01bde2432.55588652', 0, 185, 68, 7),
(186, 'O60d7e01be039d3.52661761', 0, 186, 82, 7),
(187, 'O60d7e01be240c7.10994331', 0, 187, 83, 7),
(188, 'O60d7e01be45111.06611890', 0, 188, 1, 7),
(189, 'O60d7e01be664f9.90151620', 0, 189, 2, 7),
(190, 'O60d7e01be88131.69765684', 0, 190, 3, 7),
(191, 'O60d7e01bea8b80.63770045', 0, 191, 4, 7),
(192, 'O60d7e01beca9b4.69934894', 0, 192, 5, 7),
(193, 'O60d7e01beebb38.95013641', 0, 193, 19, 7),
(194, 'O60d7e01bf0d6b3.63156299', 0, 194, 20, 7),
(195, 'O60d7e01bf2dfd3.54516148', 0, 195, 21, 7),
(196, 'O60d7e01c00cd09.30304482', 0, 196, 22, 7),
(197, 'O60d7e01c02d721.18837428', 0, 197, 23, 7),
(198, 'O60d7e01c050432.42088907', 0, 198, 45, 7),
(199, 'O60d7e01c070099.90602041', 0, 199, 46, 7),
(200, 'O60d7e01c091ef5.70307797', 0, 200, 47, 7),
(201, 'O60d7e01c0b2f90.45451253', 0, 201, 48, 7),
(202, 'O60d7e01c0d46c2.96697735', 0, 202, 49, 7),
(203, 'O60d7e01c0f52a2.37434652', 0, 203, 77, 7),
(204, 'O60d7e01c116d94.42229087', 0, 204, 78, 7),
(205, 'O60d7e01c137503.87458483', 0, 205, 79, 7),
(206, 'O60d7e01c159606.14659796', 0, 206, 80, 7),
(207, 'O60d7e01c179882.73518125', 0, 207, 81, 7),
(208, 'O60d7e01c19a592.01681222', 0, 208, 98, 7),
(209, 'O60d7e01c1bbb12.82098688', 0, 209, 99, 7),
(210, 'O60d7e01c1dd6a9.59878798', 0, 210, 100, 7),
(211, 'O60d7e01c1fd678.48912567', 0, 211, 101, 7),
(212, 'O60d7e01c21ef58.74292404', 0, 212, 103, 7),
(213, 'O60d7e01c241122.28504519', 0, 213, 72, 7),
(214, 'O60d7e01c263963.79288000', 0, 214, 73, 7),
(215, 'O60d7e01c282f99.16126317', 0, 215, 74, 7),
(216, 'O60d7e01c2a4747.48506892', 0, 216, 75, 7),
(217, 'O60d7e01c2c4e12.67139048', 0, 217, 76, 7),
(218, 'O60d7e01c2e6211.06257352', 0, 218, 134, 7),
(219, 'O60d7e01c306f48.60505030', 0, 219, 135, 7),
(220, 'O60d7e01c3284a3.13017006', 0, 220, 85, 7),
(221, 'O60d7e01c3495d0.00044103', 0, 221, 86, 7),
(222, 'O60d7e01c36b579.51781303', 0, 222, 87, 7),
(223, 'O60d7e01c38b947.27196164', 0, 223, 88, 7),
(224, 'O60d7e01c3ac077.00004488', 0, 224, 89, 7),
(225, 'O60d7e01c3cce69.71797095', 0, 225, 90, 7),
(226, 'O60d7e01c3ee646.07856891', 0, 226, 91, 7),
(227, 'O60d7e01c40ff16.43845212', 0, 227, 92, 7),
(228, 'O60d7e01c4314a4.33030459', 0, 228, 93, 7),
(229, 'O60d7e01c4521b7.18327065', 0, 229, 94, 7),
(230, 'O60d7e01c4746a9.33177613', 0, 230, 95, 7),
(231, 'O60d7e01c493f72.85734113', 0, 231, 96, 7),
(232, 'O60d7e01c4b5049.31851901', 0, 232, 97, 7),
(233, 'O60d7e01c4d63f9.26967271', 0, 233, 137, 7),
(234, 'O60d7e01c4f7625.58246359', 0, 234, 35, 7),
(235, 'O60d7e01c518be1.80897328', 0, 235, 36, 7),
(236, 'O60d7e01c53a719.49022883', 0, 236, 106, 7),
(237, 'O60d7e01c55b537.37880305', 0, 237, 107, 7),
(238, 'O60d7e01c57c881.91136949', 0, 238, 108, 7),
(239, 'O60d7e01c59cca5.04747951', 0, 239, 109, 7),
(240, 'O60d7e01c5bd855.93599179', 0, 240, 110, 7),
(241, 'O60d7e01c5dea54.49258822', 0, 241, 118, 7),
(242, 'O60d7e01c600109.30792117', 0, 242, 120, 7),
(243, 'O60d7e01c620079.63075830', 0, 243, 37, 7),
(244, 'O60d7e01c640f97.39208793', 0, 244, 38, 7),
(245, 'O60d7e01c663c78.62382354', 0, 245, 50, 7),
(246, 'O60d7e01c685628.46607758', 0, 246, 69, 7),
(247, 'O60d7e01c6a4c91.61916953', 0, 247, 70, 7),
(248, 'O60d7e01c6c6279.86693699', 0, 248, 71, 7),
(249, 'O60d7e01c6e7717.82215546', 0, 249, 84, 7),
(250, 'O60d7e01c7085c9.24754161', 0, 250, 124, 7),
(251, 'O60d7e01c729426.18282489', 0, 251, 133, 7),
(252, 'O60d7e01c74ab05.84426068', 0, 252, 119, 7),
(253, 'O60d7e01c76b706.70810762', 0, 253, 121, 7),
(254, 'O60d7e01c78ca94.73172020', 0, 254, 122, 7),
(255, 'O60d7e01c7ad006.30736170', 0, 255, 123, 7),
(256, 'O60d7e01c7ceed9.16313720', 0, 256, 126, 7),
(257, 'O60d7e01c7efdf0.83655967', 0, 257, 128, 7),
(258, 'O60d7e01c811625.67829385', 0, 258, 129, 7),
(259, 'O60d7e01c8325e5.44237202', 0, 259, 130, 7),
(260, 'O60d7e01c853019.49762860', 0, 260, 138, 7),
(261, 'O60d7e01c874594.49828980', 0, 261, 41, 7),
(262, 'O60d7e01c8967d5.52538371', 0, 262, 42, 7),
(263, 'O60d7e01c8b6570.18692636', 0, 263, 111, 7),
(264, 'O60d7e01c8d7bb6.92797629', 0, 264, 112, 7),
(265, 'O60d7e01c8f8d99.35051641', 0, 265, 113, 7),
(266, 'O60d7e01c91a7c0.46204456', 0, 266, 114, 7),
(267, 'O60d7e01c93aa73.81849039', 0, 267, 115, 7),
(268, 'O60d7e01c95c004.23221182', 0, 268, 116, 7),
(269, 'O60d7e01c989b89.07380967', 0, 269, 117, 7),
(270, 'O60d7e01c9a0fd3.72165015', 0, 270, 127, 7),
(271, 'O60d7e01c9c1ec1.12128958', 0, 271, 132, 7),
(272, 'O60d7e01c9e2f78.80954040', 0, 272, 54, 7),
(273, 'O60d7e01ca040d2.36342805', 0, 273, 55, 7),
(274, 'O60d7e01ca25778.85491696', 0, 274, 56, 7),
(275, 'O60d7e01ca67796.09951288', 0, 275, 57, 7),
(276, 'O60d7e01ca88499.85533785', 0, 276, 58, 7),
(277, 'O60d7e01caa95c8.83963767', 0, 277, 59, 7),
(278, 'O60d7e01caccbc2.52280385', 0, 278, 60, 7),
(279, 'O60d7e01caed047.41464198', 0, 279, 61, 7),
(280, 'O60d7e01cb0e0e7.52266275', 0, 280, 62, 7),
(281, 'O60d7e01cb2f414.16544359', 0, 281, 63, 7),
(282, 'O60d7e01cb509d0.78387966', 0, 282, 64, 7),
(283, 'O60d7e01cb706d0.93240665', 0, 283, 65, 7),
(284, 'O60d7e01cb91916.54729614', 0, 284, 66, 7),
(285, 'O60d7e01cbb1c15.07197846', 0, 285, 6, 7),
(286, 'O60d7e01cbd4019.78785421', 0, 286, 7, 7),
(287, 'O60d7e01cbf3a53.35663610', 0, 287, 8, 7),
(288, 'O60d7e01cc14c55.70835720', 0, 288, 9, 7),
(289, 'O60d7e01cc357c9.42528618', 0, 289, 10, 7),
(290, 'O60d7e01cc58c53.48276253', 0, 290, 11, 7),
(291, 'O60d7e01cc7ce34.27540513', 0, 291, 12, 7),
(292, 'O60d7e01cc9dce7.42064793', 0, 292, 13, 7),
(293, 'O60d7e01ccbe315.05355495', 0, 293, 14, 7),
(294, 'O60d7e01ccdf0a0.08053506', 0, 294, 15, 7),
(295, 'O60d7e01ccff131.37571461', 0, 295, 16, 7),
(296, 'O60d7e01cd21960.91727981', 0, 296, 17, 7),
(297, 'O60d7e01cd422e0.59444925', 0, 297, 18, 7),
(298, 'O60d7e01cd63929.56294585', 0, 298, 139, 7),
(299, 'O60d7e01cd853a9.37676948', 0, 299, 24, 7),
(300, 'O60d7e01cda59a0.56621359', 0, 300, 25, 7),
(301, 'O60d7e01cdc7514.98590941', 0, 301, 26, 7),
(302, 'O60d7e01cde77e6.25980808', 0, 302, 27, 7),
(303, 'O60d7e01ce08f23.39784426', 0, 303, 28, 7),
(304, 'O60d7e01ce29c31.84151660', 0, 304, 29, 7),
(305, 'O60d7e01ce4b000.03412433', 0, 305, 30, 7),
(306, 'O60d7e01ce6c254.30525131', 0, 306, 31, 7),
(307, 'O60d7e01ce8db49.06257086', 0, 307, 32, 7),
(308, 'O60d7e01ceadd73.70191362', 0, 308, 33, 7),
(309, 'O60d7e01ceddef5.22214852', 0, 309, 34, 7),
(310, 'O60d7e01cefe8e3.43244661', 0, 310, 39, 7),
(311, 'O60d7e01cf20805.96221607', 0, 311, 40, 7),
(312, 'O60d7e01cf40ec2.78260612', 0, 312, 136, 7),
(313, 'O60d7e01d01f5b7.19134094', 0, 313, 2, 8),
(314, 'O60d7e01d040ce2.37358452', 0, 314, 5, 8),
(315, 'O60d7e01d062b35.28875070', 0, 315, 78, 8),
(316, 'O60d7e01d082816.76675028', 0, 316, 81, 8),
(317, 'O60d7e01d0a4482.44460585', 0, 317, 99, 8),
(318, 'O60d7e01d0c4568.84522308', 0, 318, 100, 8),
(319, 'O60d7e01d0e5eb9.52047308', 0, 319, 101, 8),
(320, 'O60d7e01d106c93.73775497', 0, 320, 103, 8),
(321, 'O60d7e01d149579.49890693', 0, 321, 88, 8),
(322, 'O60d7e01d16a523.85375250', 0, 322, 89, 8),
(323, 'O60d7e01d18c657.30303179', 0, 323, 90, 8),
(324, 'O60d7e01d1ac7d6.15408570', 0, 324, 91, 8),
(325, 'O60d7e01d1cd580.52850314', 0, 325, 35, 8),
(326, 'O60d7e01d1ee600.02648621', 0, 326, 36, 8),
(327, 'O60d7e01d2100a1.04481434', 0, 327, 107, 8),
(328, 'O60d7e01d230733.99137390', 0, 328, 108, 8),
(329, 'O60d7e01d251798.84756372', 0, 329, 110, 8),
(330, 'O60d7e01d2828a7.41689284', 0, 330, 118, 8),
(331, 'O60d7e01d2a4088.58096027', 0, 331, 50, 8),
(494, 'O60d7e01d2c4263.17538043', 0, 494, 1, 9),
(495, 'O60d7e01d2e6444.05056210', 0, 495, 2, 9),
(496, 'O60d7e01d306e79.29089532', 0, 496, 3, 9),
(497, 'O60d7e01d328ea9.10363829', 0, 497, 4, 9),
(498, 'O60d7e01d349492.23471776', 0, 498, 5, 9),
(499, 'O60d7e01d36a539.97933143', 0, 499, 77, 9),
(500, 'O60d7e01d38ae38.89105419', 0, 500, 78, 9),
(501, 'O60d7e01d3ad063.37975985', 0, 501, 79, 9),
(502, 'O60d7e01d3cd858.06586339', 0, 502, 80, 9),
(503, 'O60d7e01d3ee675.07727860', 0, 503, 81, 9),
(504, 'O60d7e01d40fb15.05612743', 0, 504, 36, 9),
(505, 'O60d7e01d431247.74003380', 0, 505, 106, 9),
(506, 'O60d7e01d456798.29489806', 0, 506, 107, 9),
(507, 'O60d7e01d4774f0.59072564', 0, 507, 108, 9),
(508, 'O60d7e01d498775.04422898', 0, 508, 41, 9),
(509, 'O60d7e01d4b9c40.60324732', 0, 509, 42, 9),
(510, 'O60d7e01d4da518.91582712', 0, 510, 111, 9),
(511, 'O60d7e01d4fb876.40737077', 0, 511, 112, 9),
(512, 'O60d7e01d51c8d0.44274076', 0, 512, 113, 9),
(513, 'O60d7e01d53e4d3.18587783', 0, 513, 114, 9),
(514, 'O60d7e01d55de68.31083494', 0, 514, 115, 9),
(515, 'O60d7e01d57e8e6.12595118', 0, 515, 117, 9),
(516, 'O60d7e01d5a0785.27058765', 0, 516, 127, 9),
(517, 'O60d7e01d5c17f3.83400060', 0, 517, 132, 9),
(601, 'O60d7e01d5e2377.26572050', 0, 601, 1, 11),
(602, 'O60d7e01d603f10.93573845', 0, 602, 2, 11),
(603, 'O60d7e01d624da4.01803518', 0, 603, 3, 11),
(604, 'O60d7e01d646313.30935709', 0, 604, 5, 11),
(605, 'O60d7e01d666ab3.05123214', 0, 605, 35, 11),
(631, 'O60d7e01d6878d9.16673497', 0, 631, 43, 10),
(632, 'O60d7e01d6a8c34.99026566', 0, 632, 44, 10),
(633, 'O60d7e01d6ca3d1.44992451', 0, 633, 68, 10),
(634, 'O60d7e01d6eac67.01475043', 0, 634, 82, 10),
(635, 'O60d7e01d70d316.65891294', 0, 635, 83, 10),
(636, 'O60d7e01d72dfc8.98813578', 0, 636, 1, 10),
(637, 'O60d7e01d74f958.17542621', 0, 637, 2, 10),
(638, 'O60d7e01d770335.11169858', 0, 638, 3, 10),
(639, 'O60d7e01d7915d9.05577658', 0, 639, 5, 10),
(640, 'O60d7e01d7b2aa6.73636851', 0, 640, 19, 10),
(641, 'O60d7e01d7d46e0.59841756', 0, 641, 20, 10),
(642, 'O60d7e01d7f3866.27905961', 0, 642, 21, 10),
(643, 'O60d7e01d814ef4.88441308', 0, 643, 22, 10),
(644, 'O60d7e01d836612.71498669', 0, 644, 23, 10),
(645, 'O60d7e01d857522.67235492', 0, 645, 45, 10),
(646, 'O60d7e01d878891.18224632', 0, 646, 46, 10),
(647, 'O60d7e01d899283.08344982', 0, 647, 47, 10),
(648, 'O60d7e01d8bb8d0.77760697', 0, 648, 48, 10),
(649, 'O60d7e01d8dd3d9.81306765', 0, 649, 49, 10),
(650, 'O60d7e01d8fd8f3.36369975', 0, 650, 77, 10),
(651, 'O60d7e01d91f495.65808526', 0, 651, 78, 10),
(652, 'O60d7e01d93fba1.22886189', 0, 652, 79, 10),
(653, 'O60d7e01d962268.37524188', 0, 653, 80, 10),
(654, 'O60d7e01d981a57.77849934', 0, 654, 81, 10),
(655, 'O60d7e01d9a2920.01329224', 0, 655, 37, 10),
(656, 'O60d7e01d9c3d13.50252802', 0, 656, 38, 10),
(657, 'O60d7e01d9e55e4.15580007', 0, 657, 50, 10),
(658, 'O60d7e01da06131.10230070', 0, 658, 69, 10),
(659, 'O60d7e01da27890.59836511', 0, 659, 70, 10),
(660, 'O60d7e01da49910.87133828', 0, 660, 84, 10),
(661, 'O60d7e01da6a4f2.35548954', 0, 661, 133, 10),
(662, 'O60d7e01da8bab0.08221339', 0, 662, 72, 10),
(663, 'O60d7e01daace72.00952952', 0, 663, 73, 10),
(664, 'O60d7e01dacdea1.72071780', 0, 664, 74, 10),
(665, 'O60d7e01daef758.51448697', 0, 665, 75, 10),
(666, 'O60d7e01db0fa33.40309051', 0, 666, 76, 10),
(667, 'O60d7e01db31561.11886805', 0, 667, 134, 10),
(668, 'O60d7e01db521d9.86533087', 0, 668, 152, 10),
(669, 'O60d7e01db743d0.17313992', 0, 669, 92, 10),
(670, 'O60d7e01db94c52.46987476', 0, 670, 93, 10),
(671, 'O60d7e01dbb5730.97746790', 0, 671, 94, 10),
(672, 'O60d7e01dbd6019.15793588', 0, 672, 95, 10),
(673, 'O60d7e01dbf9142.10083070', 0, 673, 96, 10),
(674, 'O60d7e01dc198d8.58973713', 0, 674, 97, 10),
(675, 'O60d7e01dc3a561.71884815', 0, 675, 137, 10),
(676, 'O60d7e01dc5b394.77199097', 0, 676, 41, 10),
(677, 'O60d7e01dc7cb62.75851517', 0, 677, 42, 10),
(678, 'O60d7e01dca03d3.10924921', 0, 678, 111, 10),
(679, 'O60d7e01dcc33d8.59977721', 0, 679, 112, 10),
(680, 'O60d7e01dce2fd1.91980331', 0, 680, 113, 10),
(681, 'O60d7e01dd036b6.52419326', 0, 681, 114, 10),
(682, 'O60d7e01dd25990.18086544', 0, 682, 115, 10),
(683, 'O60d7e01dd459e5.99242990', 0, 683, 116, 10),
(684, 'O60d7e01dd666b2.21022455', 0, 684, 117, 10),
(685, 'O60d7e01dd878e6.82389758', 0, 685, 132, 10),
(686, 'O60d7e01dda97b7.59388107', 0, 686, 6, 10),
(687, 'O60d7e01ddc9fa0.80686648', 0, 687, 7, 10),
(688, 'O60d7e01ddea339.84727228', 0, 688, 8, 10),
(689, 'O60d7e01de0b5b6.02960691', 0, 689, 10, 10),
(690, 'O60d7e01de2c899.88077135', 0, 690, 11, 10),
(691, 'O60d7e01de4d274.34228330', 0, 691, 12, 10),
(692, 'O60d7e01de6e023.81625696', 0, 692, 13, 10),
(693, 'O60d7e01de8f237.05120320', 0, 693, 14, 10),
(694, 'O60d7e01deb1be2.17742170', 0, 694, 15, 10),
(695, 'O60d7e01ded2530.22232371', 0, 695, 16, 10),
(696, 'O60d7e01def2d65.69645875', 0, 696, 17, 10),
(697, 'O60d7e01df144a5.37007303', 0, 697, 35, 10),
(698, 'O60d7e01df358e6.77582867', 0, 698, 36, 10),
(699, 'O60d7e01e013946.41951278', 0, 699, 106, 10),
(700, 'O60d7e01e035243.28714395', 0, 700, 107, 10),
(701, 'O60d7e01e056548.44623904', 0, 701, 108, 10),
(702, 'O60d7e01e078665.47063614', 0, 702, 109, 10),
(703, 'O60d7e01e0992b7.55657123', 0, 703, 110, 10),
(704, 'O60d7e01e0b9f73.24566046', 0, 704, 118, 10),
(705, 'O60d7e01e0da9d6.74044423', 0, 705, 120, 10),
(706, 'O60d7e01e0fc4b2.36551007', 0, 706, 142, 10),
(707, 'O60d7e01e11d5c6.62869257', 0, 707, 143, 10),
(708, 'O60d7e01e13ea12.31626707', 0, 708, 24, 10),
(709, 'O60d7e01e15ffd6.21891125', 0, 709, 25, 10),
(710, 'O60d7e01e181349.82008173', 0, 710, 26, 10),
(711, 'O60d7e01e1a1874.86024455', 0, 711, 27, 10),
(712, 'O60d7e01e1c25d2.88807220', 0, 712, 28, 10),
(713, 'O60d7e01e1e3985.38016790', 0, 713, 29, 10),
(714, 'O60d7e01e205d43.71881115', 0, 714, 30, 10),
(715, 'O60d7e01e225d01.12302031', 0, 715, 31, 10),
(716, 'O60d7e01e247472.54054130', 0, 716, 32, 10),
(717, 'O60d7e01e268cc6.07518181', 0, 717, 33, 10),
(718, 'O60d7e01e28a5e9.28446124', 0, 718, 34, 10),
(719, 'O60d7e01e2aac27.84727825', 0, 719, 39, 10),
(720, 'O60d7e01e2cb797.11694824', 0, 720, 40, 10),
(721, 'O60d7e01e2ed587.47034468', 0, 721, 136, 10),
(722, 'O60d7e01e30f8a2.10581570', 0, 722, 140, 10),
(723, 'O60d7e01e32fc42.44413596', 0, 723, 141, 10),
(724, 'O60d7e01e350fe9.09715477', 0, 724, 119, 10),
(725, 'O60d7e01e371589.56215291', 0, 725, 121, 10),
(726, 'O60d7e01e3937f7.73496815', 0, 726, 122, 10),
(727, 'O60d7e01e3b4420.31497428', 0, 727, 123, 10),
(728, 'O60d7e01e3d65a4.58855595', 0, 728, 126, 10),
(729, 'O60d7e01e3f6f00.46438420', 0, 729, 128, 10),
(730, 'O60d7e01e41a252.28373493', 0, 730, 129, 10),
(731, 'O60d7e01e439216.83947637', 0, 731, 130, 10),
(732, 'O60d7e01e459ed0.60752922', 0, 732, 138, 10),
(733, 'O60d7e01e47b278.16235721', 0, 733, 145, 10),
(734, 'O60d7e01e49cb73.19081012', 0, 734, 146, 10),
(735, 'O60d7e01e4bdfb3.56986674', 0, 735, 147, 10),
(736, 'O60d7e01e4de615.00694919', 0, 736, 148, 10),
(737, 'O60d7e01e4ff2b8.44484213', 0, 737, 149, 10),
(738, 'O60d7e01e521051.06922785', 0, 738, 150, 10),
(739, 'O60d7e01e541971.19440387', 0, 739, 151, 10),
(740, 'O60d7e01e562c82.77940887', 0, 740, 43, 1),
(741, 'O60d7e01e584cb2.09873224', 0, 741, 44, 1),
(742, 'O60d7e01e5a6545.78033279', 0, 742, 68, 1),
(743, 'O60d7e01e5c72d8.50905933', 0, 743, 82, 1),
(744, 'O60d7e01e5e8578.71794309', 0, 744, 83, 1),
(745, 'O60d7e01e608f95.86572486', 0, 745, 1, 1),
(746, 'O60d7e01e62abc8.88998433', 0, 746, 2, 1),
(747, 'O60d7e01e64a8c1.74869812', 0, 747, 3, 1),
(748, 'O60d7e01e66b986.77350311', 0, 748, 5, 1),
(749, 'O60d7e01e68d116.92032793', 0, 749, 19, 1),
(750, 'O60d7e01e6ae945.22671491', 0, 750, 20, 1),
(751, 'O60d7e01e6cef25.04469116', 0, 751, 21, 1),
(752, 'O60d7e01e6efe92.08217578', 0, 752, 22, 1),
(753, 'O60d7e01e710f41.45680115', 0, 753, 23, 1),
(754, 'O60d7e01e7326f4.14885171', 0, 754, 45, 1),
(755, 'O60d7e01e753dc9.62054812', 0, 755, 46, 1),
(756, 'O60d7e01e7cb550.97614941', 0, 756, 47, 1),
(757, 'O60d7e01e7d5200.84862197', 0, 757, 48, 1),
(758, 'O60d7e01e7f6f20.12266818', 0, 758, 49, 1),
(759, 'O60d7e01e817650.65760870', 0, 759, 77, 1),
(760, 'O60d7e01e838889.01972046', 0, 760, 78, 1),
(761, 'O60d7e01e8597c8.32351892', 0, 761, 79, 1),
(762, 'O60d7e01e87b584.53705918', 0, 762, 80, 1),
(763, 'O60d7e01e89ca82.05783667', 0, 763, 81, 1),
(764, 'O60d7e01e8be655.58580453', 0, 764, 37, 1),
(765, 'O60d7e01e8df065.86699780', 0, 765, 38, 1),
(766, 'O60d7e01e9016c5.02129842', 0, 766, 50, 1),
(767, 'O60d7e01e922335.34064656', 0, 767, 69, 1),
(768, 'O60d7e01e943023.41717984', 0, 768, 70, 1),
(769, 'O60d7e01e963699.26210129', 0, 769, 84, 1),
(770, 'O60d7e01e986251.37499381', 0, 770, 133, 1),
(771, 'O60d7e01e9a6668.58372389', 0, 771, 72, 1),
(772, 'O60d7e01e9cdbf7.21342119', 0, 772, 73, 1),
(773, 'O60d7e01e9eec87.00053573', 0, 773, 74, 1),
(774, 'O60d7e01ea10eb8.52763098', 0, 774, 75, 1),
(775, 'O60d7e01ea30af5.10517493', 0, 775, 76, 1),
(776, 'O60d7e01ea53974.75651829', 0, 776, 134, 1),
(777, 'O60d7e01ea73ec6.22935823', 0, 777, 152, 1),
(778, 'O60d7e01ea95b74.05266188', 0, 778, 92, 1),
(779, 'O60d7e01eab61f6.56157330', 0, 779, 93, 1),
(780, 'O60d7e01ead80a2.71366808', 0, 780, 94, 1),
(781, 'O60d7e01eaf8d32.61539977', 0, 781, 95, 1),
(782, 'O60d7e01eb1ac63.93423391', 0, 782, 96, 1),
(783, 'O60d7e01eb3b3a6.51823674', 0, 783, 97, 1),
(784, 'O60d7e01eb5c343.84099604', 0, 784, 137, 1),
(785, 'O60d7e01eb7cc58.37671621', 0, 785, 41, 1),
(786, 'O60d7e01eb9ef37.20834542', 0, 786, 42, 1),
(787, 'O60d7e01ebbefa6.86007742', 0, 787, 111, 1),
(788, 'O60d7e01ebe02b8.16939520', 0, 788, 112, 1),
(789, 'O60d7e01ec00853.79290864', 0, 789, 113, 1),
(790, 'O60d7e01ec24384.95016668', 0, 790, 114, 1),
(791, 'O60d7e01ec44914.97829244', 0, 791, 115, 1),
(792, 'O60d7e01ec65943.79762806', 0, 792, 116, 1),
(793, 'O60d7e01ec8a291.45109588', 0, 793, 117, 1),
(794, 'O60d7e01ecab4f0.00368636', 0, 794, 132, 1),
(795, 'O60d7e01eccb1b8.53439208', 0, 795, 6, 1),
(796, 'O60d7e01ecec776.14932669', 0, 796, 7, 1),
(797, 'O60d7e01ed0cf18.19294266', 0, 797, 8, 1),
(798, 'O60d7e01ed2dae4.37651050', 0, 798, 10, 1),
(799, 'O60d7e01ed4f4a7.97783301', 0, 799, 11, 1),
(800, 'O60d7e01ed70d47.81893340', 0, 800, 12, 1),
(801, 'O60d7e01ed92382.44406113', 0, 801, 13, 1),
(802, 'O60d7e01edb27b7.45453714', 0, 802, 14, 1),
(803, 'O60d7e01edd4723.20285438', 0, 803, 15, 1),
(804, 'O60d7e01edf5c12.04180865', 0, 804, 16, 1),
(805, 'O60d7e01ee174a6.17241028', 0, 805, 17, 1),
(806, 'O60d7e01ee38137.93147961', 0, 806, 35, 1),
(807, 'O60d7e01ee59302.58984811', 0, 807, 36, 1),
(808, 'O60d7e01ee7a375.27187012', 0, 808, 106, 1),
(809, 'O60d7e01ee9b5f9.97753616', 0, 809, 107, 1),
(810, 'O60d7e01eebd421.94921829', 0, 810, 108, 1),
(811, 'O60d7e01eede577.84884856', 0, 811, 109, 1),
(812, 'O60d7e01eeff644.09994354', 0, 812, 110, 1),
(813, 'O60d7e01ef210b1.70384106', 0, 813, 118, 1),
(814, 'O60d7e01ef41ca4.55815137', 0, 814, 120, 1),
(815, 'O60d7e01f020da3.63117913', 0, 815, 142, 1),
(816, 'O60d7e01f0418f1.62839527', 0, 816, 143, 1),
(817, 'O60d7e01f063dd5.16301379', 0, 817, 24, 1),
(818, 'O60d7e01f084bd1.34909264', 0, 818, 25, 1),
(819, 'O60d7e01f0a5831.98110983', 0, 819, 26, 1),
(820, 'O60d7e01f0c69f9.92795468', 0, 820, 27, 1),
(821, 'O60d7e01f0e7f84.26054498', 0, 821, 28, 1),
(822, 'O60d7e01f108ec3.12328913', 0, 822, 29, 1),
(823, 'O60d7e01f12a3b4.21454490', 0, 823, 30, 1),
(824, 'O60d7e01f14b763.35420876', 0, 824, 31, 1),
(825, 'O60d7e01f16c677.30446801', 0, 825, 32, 1),
(826, 'O60d7e01f18d609.18775287', 0, 826, 33, 1),
(827, 'O60d7e01f1adc66.39223806', 0, 827, 34, 1),
(828, 'O60d7e01f1cf388.40336828', 0, 828, 39, 1),
(829, 'O60d7e01f1f07c1.36785578', 0, 829, 40, 1),
(830, 'O60d7e01f2117a5.69439164', 0, 830, 136, 1),
(831, 'O60d7e01f232347.05663042', 0, 831, 140, 1),
(832, 'O60d7e01f253623.75217558', 0, 832, 141, 1),
(833, 'O60d7e01f275bc4.50691909', 0, 833, 119, 1),
(834, 'O60d7e01f295b85.88373239', 0, 834, 121, 1),
(835, 'O60d7e01f2b6b06.44346260', 0, 835, 122, 1),
(836, 'O60d7e01f2d77c9.05496020', 0, 836, 123, 1),
(837, 'O60d7e01f2fab93.26073207', 0, 837, 126, 1),
(838, 'O60d7e01f31b1f2.08353701', 0, 838, 128, 1),
(839, 'O60d7e01f33bc40.67283385', 0, 839, 129, 1),
(840, 'O60d7e01f35d134.85722887', 0, 840, 130, 1),
(841, 'O60d7e01f37e129.07666215', 0, 841, 138, 1),
(842, 'O60d7e01f39eae7.95462623', 0, 842, 145, 1),
(843, 'O60d7e01f3bff69.99902595', 0, 843, 146, 1),
(844, 'O60d7e01f3e12d7.83448406', 0, 844, 147, 1),
(845, 'O60d7e01f402b83.14394668', 0, 845, 148, 1),
(846, 'O60d7e01f423a06.29480665', 0, 846, 149, 1),
(847, 'O60d7e01f4447a8.07999274', 0, 847, 150, 1),
(848, 'O60d7e01f465085.00726124', 0, 848, 151, 1),
(849, 'O60d7e01f488280.04971801', 0, 849, 43, 2),
(850, 'O60d7e01f4a8981.56211281', 0, 850, 44, 2),
(851, 'O60d7e01f4c90f3.91802997', 0, 851, 1, 2),
(852, 'O60d7e01f4ea3c8.55477693', 0, 852, 2, 2),
(853, 'O60d7e01f50ba64.45644020', 0, 853, 3, 2),
(854, 'O60d7e01f52cc55.36555608', 0, 854, 5, 2),
(855, 'O60d7e01f54d984.99491893', 0, 855, 41, 2),
(856, 'O60d7e01f56eca1.13247003', 0, 856, 42, 2),
(857, 'O60d7e01f592460.67709269', 0, 857, 111, 2),
(858, 'O60d7e01f5b2397.91212215', 0, 858, 112, 2),
(859, 'O60d7e01f5d34b4.57911784', 0, 859, 113, 2),
(860, 'O60d7e01f5f3be1.92553281', 0, 860, 114, 2),
(861, 'O60d7e01f6168c7.75176271', 0, 861, 115, 2),
(862, 'O60d7e01f636650.66802811', 0, 862, 117, 2),
(863, 'O60d7e01f657fc1.54118766', 0, 863, 132, 2),
(864, 'O60d7e01f678ca5.72529735', 0, 864, 35, 2),
(865, 'O60d7e01f69b527.44260495', 0, 865, 36, 2),
(866, 'O60d7e01f6bb7a9.77320169', 0, 866, 106, 2),
(867, 'O60d7e01f6dc5f5.72690387', 0, 867, 107, 2),
(868, 'O60d7e01f6fcf25.61340184', 0, 868, 108, 2),
(869, 'O60d7e01f71fa79.30498603', 0, 869, 109, 2),
(870, 'O60d7e01f73f996.89102260', 0, 870, 110, 2),
(871, 'O60d7e01f761e56.26043808', 0, 871, 118, 2),
(872, 'O60d7e01f782310.42404080', 0, 872, 120, 2),
(873, 'O60d7e01f7a5346.71294412', 0, 873, 142, 2),
(874, 'O60d7e01f7c4e69.81048654', 0, 874, 143, 2),
(875, 'O60d7e01f7e5c28.21883272', 0, 875, 148, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voucher`
--

CREATE TABLE `voucher` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_voucher` int(11) NOT NULL,
  `forma_pago` varchar(50) NOT NULL,
  `referencia_pago` varchar(50) NOT NULL,
  `numero_doc` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `monto` float NOT NULL,
  `responsable` varchar(200) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `id_movimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voucher_mov`
--

CREATE TABLE `voucher_mov` (
  `id_server` int(11) NOT NULL,
  `unique_id` text NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `id_mv` int(11) NOT NULL,
  `id_movimiento` int(11) NOT NULL,
  `id_cuenta_pagar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abono_credito`
--
ALTER TABLE `abono_credito`
  ADD PRIMARY KEY (`id_abono_credito`);

--
-- Indices de la tabla `access_conf`
--
ALTER TABLE `access_conf`
  ADD PRIMARY KEY (`id_conf`);

--
-- Indices de la tabla `altclitocli`
--
ALTER TABLE `altclitocli`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `apertura_caja`
--
ALTER TABLE `apertura_caja`
  ADD PRIMARY KEY (`id_apertura`);

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`id_banco`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id_caja`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `categoria_proveedor`
--
ALTER TABLE `categoria_proveedor`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cheque`
--
ALTER TABLE `cheque`
  ADD PRIMARY KEY (`id_cheque`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id_configuracion`);

--
-- Indices de la tabla `config_dir`
--
ALTER TABLE `config_dir`
  ADD PRIMARY KEY (`id_config_dir`);

--
-- Indices de la tabla `config_pos`
--
ALTER TABLE `config_pos`
  ADD PRIMARY KEY (`id_config_pos`);

--
-- Indices de la tabla `consignacion`
--
ALTER TABLE `consignacion`
  ADD PRIMARY KEY (`id_consignacion`);

--
-- Indices de la tabla `consignacion_detalle`
--
ALTER TABLE `consignacion_detalle`
  ADD PRIMARY KEY (`id_consignacion_detalle`),
  ADD KEY `id_consignacion` (`id_consignacion`);

--
-- Indices de la tabla `controlcaja`
--
ALTER TABLE `controlcaja`
  ADD PRIMARY KEY (`id_corte`);

--
-- Indices de la tabla `correlativo`
--
ALTER TABLE `correlativo`
  ADD PRIMARY KEY (`id_numdoc`);

--
-- Indices de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`id_cotizacion`);

--
-- Indices de la tabla `cotizacion_detalle`
--
ALTER TABLE `cotizacion_detalle`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indices de la tabla `credito`
--
ALTER TABLE `credito`
  ADD PRIMARY KEY (`id_credito`);

--
-- Indices de la tabla `cuentas_por_pagar_abonos`
--
ALTER TABLE `cuentas_por_pagar_abonos`
  ADD PRIMARY KEY (`id_abono`);

--
-- Indices de la tabla `cuenta_banco`
--
ALTER TABLE `cuenta_banco`
  ADD PRIMARY KEY (`id_cuenta`);

--
-- Indices de la tabla `cuenta_pagar`
--
ALTER TABLE `cuenta_pagar`
  ADD PRIMARY KEY (`id_cuenta_pagar`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `detalle_apertura`
--
ALTER TABLE `detalle_apertura`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id_det_compra`);

--
-- Indices de la tabla `detalle_voucher`
--
ALTER TABLE `detalle_voucher`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indices de la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  ADD PRIMARY KEY (`id_dev`);

--
-- Indices de la tabla `devoluciones_corte`
--
ALTER TABLE `devoluciones_corte`
  ADD PRIMARY KEY (`id_dev`);

--
-- Indices de la tabla `devoluciones_det`
--
ALTER TABLE `devoluciones_det`
  ADD PRIMARY KEY (`id_dev_det`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`);

--
-- Indices de la tabla `estante`
--
ALTER TABLE `estante`
  ADD PRIMARY KEY (`id_estante`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indices de la tabla `factura_detalle`
--
ALTER TABLE `factura_detalle`
  ADD PRIMARY KEY (`id_factura_detalle`);

--
-- Indices de la tabla `log_cambio_local`
--
ALTER TABLE `log_cambio_local`
  ADD PRIMARY KEY (`id_log_cambio`);

--
-- Indices de la tabla `log_detalle_cambio_local`
--
ALTER TABLE `log_detalle_cambio_local`
  ADD PRIMARY KEY (`id_detalle_cambio`);

--
-- Indices de la tabla `log_update_local`
--
ALTER TABLE `log_update_local`
  ADD PRIMARY KEY (`id_log_cambio`);

--
-- Indices de la tabla `lote`
--
ALTER TABLE `lote`
  ADD PRIMARY KEY (`id_lote`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`id_modulo`);

--
-- Indices de la tabla `movimiento_caja_tipo`
--
ALTER TABLE `movimiento_caja_tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `movimiento_producto`
--
ALTER TABLE `movimiento_producto`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indices de la tabla `movimiento_producto_detalle`
--
ALTER TABLE `movimiento_producto_detalle`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indices de la tabla `movimiento_producto_pendiente`
--
ALTER TABLE `movimiento_producto_pendiente`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indices de la tabla `movimiento_stock_ubicacion`
--
ALTER TABLE `movimiento_stock_ubicacion`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indices de la tabla `mov_caja`
--
ALTER TABLE `mov_caja`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indices de la tabla `mov_cta_banco`
--
ALTER TABLE `mov_cta_banco`
  ADD PRIMARY KEY (`id_movimiento`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_municipio`);

--
-- Indices de la tabla `nc_corte`
--
ALTER TABLE `nc_corte`
  ADD PRIMARY KEY (`id_nc`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD PRIMARY KEY (`id_pedido_detalle`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `pedido_prov`
--
ALTER TABLE `pedido_prov`
  ADD PRIMARY KEY (`id_pedido_prov`);

--
-- Indices de la tabla `pedido_prov_detalle`
--
ALTER TABLE `pedido_prov_detalle`
  ADD PRIMARY KEY (`id_pedido_detalle`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `posicion`
--
ALTER TABLE `posicion`
  ADD PRIMARY KEY (`id_posicion`);

--
-- Indices de la tabla `precio_aut`
--
ALTER TABLE `precio_aut`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  ADD PRIMARY KEY (`id_presentacion`);

--
-- Indices de la tabla `presentacion_producto`
--
ALTER TABLE `presentacion_producto`
  ADD PRIMARY KEY (`id_pp`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  ADD PRIMARY KEY (`id_reparacion`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id_stock`);

--
-- Indices de la tabla `stock_ubicacion`
--
ALTER TABLE `stock_ubicacion`
  ADD PRIMARY KEY (`id_su`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  ADD PRIMARY KEY (`id_tipo_empleado`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`id_tipopago`);

--
-- Indices de la tabla `tipo_proveedor`
--
ALTER TABLE `tipo_proveedor`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `to_corte`
--
ALTER TABLE `to_corte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `to_corte_producto`
--
ALTER TABLE `to_corte_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `to_corte_producto_detalle`
--
ALTER TABLE `to_corte_producto_detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `traslado`
--
ALTER TABLE `traslado`
  ADD PRIMARY KEY (`id_traslado`);

--
-- Indices de la tabla `traslado_detalle`
--
ALTER TABLE `traslado_detalle`
  ADD PRIMARY KEY (`id_detalle_traslado`);

--
-- Indices de la tabla `traslado_detalle_g`
--
ALTER TABLE `traslado_detalle_g`
  ADD PRIMARY KEY (`id_detalle_traslado`);

--
-- Indices de la tabla `traslado_detalle_recibido`
--
ALTER TABLE `traslado_detalle_recibido`
  ADD PRIMARY KEY (`id_detalle_traslado_recibido`);

--
-- Indices de la tabla `traslado_g`
--
ALTER TABLE `traslado_g`
  ADD PRIMARY KEY (`id_traslado`);

--
-- Indices de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  ADD PRIMARY KEY (`id_ubicacion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuario_modulo`
--
ALTER TABLE `usuario_modulo`
  ADD PRIMARY KEY (`id_mod_user`);

--
-- Indices de la tabla `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id_voucher`);

--
-- Indices de la tabla `voucher_mov`
--
ALTER TABLE `voucher_mov`
  ADD PRIMARY KEY (`id_mv`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abono_credito`
--
ALTER TABLE `abono_credito`
  MODIFY `id_abono_credito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `access_conf`
--
ALTER TABLE `access_conf`
  MODIFY `id_conf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `altclitocli`
--
ALTER TABLE `altclitocli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `apertura_caja`
--
ALTER TABLE `apertura_caja`
  MODIFY `id_apertura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `banco`
--
ALTER TABLE `banco`
  MODIFY `id_banco` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id_caja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoria_proveedor`
--
ALTER TABLE `categoria_proveedor`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cheque`
--
ALTER TABLE `cheque`
  MODIFY `id_cheque` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id_configuracion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `config_dir`
--
ALTER TABLE `config_dir`
  MODIFY `id_config_dir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `config_pos`
--
ALTER TABLE `config_pos`
  MODIFY `id_config_pos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `consignacion`
--
ALTER TABLE `consignacion`
  MODIFY `id_consignacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consignacion_detalle`
--
ALTER TABLE `consignacion_detalle`
  MODIFY `id_consignacion_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `controlcaja`
--
ALTER TABLE `controlcaja`
  MODIFY `id_corte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `correlativo`
--
ALTER TABLE `correlativo`
  MODIFY `id_numdoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `id_cotizacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cotizacion_detalle`
--
ALTER TABLE `cotizacion_detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `credito`
--
ALTER TABLE `credito`
  MODIFY `id_credito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuentas_por_pagar_abonos`
--
ALTER TABLE `cuentas_por_pagar_abonos`
  MODIFY `id_abono` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuenta_banco`
--
ALTER TABLE `cuenta_banco`
  MODIFY `id_cuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cuenta_pagar`
--
ALTER TABLE `cuenta_pagar`
  MODIFY `id_cuenta_pagar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_apertura`
--
ALTER TABLE `detalle_apertura`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id_det_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_voucher`
--
ALTER TABLE `detalle_voucher`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  MODIFY `id_dev` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `devoluciones_corte`
--
ALTER TABLE `devoluciones_corte`
  MODIFY `id_dev` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `devoluciones_det`
--
ALTER TABLE `devoluciones_det`
  MODIFY `id_dev_det` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `estante`
--
ALTER TABLE `estante`
  MODIFY `id_estante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `factura_detalle`
--
ALTER TABLE `factura_detalle`
  MODIFY `id_factura_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `log_cambio_local`
--
ALTER TABLE `log_cambio_local`
  MODIFY `id_log_cambio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `log_detalle_cambio_local`
--
ALTER TABLE `log_detalle_cambio_local`
  MODIFY `id_detalle_cambio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `log_update_local`
--
ALTER TABLE `log_update_local`
  MODIFY `id_log_cambio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `lote`
--
ALTER TABLE `lote`
  MODIFY `id_lote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `id_modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT de la tabla `movimiento_caja_tipo`
--
ALTER TABLE `movimiento_caja_tipo`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `movimiento_producto`
--
ALTER TABLE `movimiento_producto`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `movimiento_producto_detalle`
--
ALTER TABLE `movimiento_producto_detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `movimiento_producto_pendiente`
--
ALTER TABLE `movimiento_producto_pendiente`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `movimiento_stock_ubicacion`
--
ALTER TABLE `movimiento_stock_ubicacion`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mov_caja`
--
ALTER TABLE `mov_caja`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mov_cta_banco`
--
ALTER TABLE `mov_cta_banco`
  MODIFY `id_movimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID del municipio', AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT de la tabla `nc_corte`
--
ALTER TABLE `nc_corte`
  MODIFY `id_nc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  MODIFY `id_pedido_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido_prov`
--
ALTER TABLE `pedido_prov`
  MODIFY `id_pedido_prov` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido_prov_detalle`
--
ALTER TABLE `pedido_prov_detalle`
  MODIFY `id_pedido_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posicion`
--
ALTER TABLE `posicion`
  MODIFY `id_posicion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `precio_aut`
--
ALTER TABLE `precio_aut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `presentacion`
--
ALTER TABLE `presentacion`
  MODIFY `id_presentacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `presentacion_producto`
--
ALTER TABLE `presentacion_producto`
  MODIFY `id_pp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  MODIFY `id_reparacion` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `stock_ubicacion`
--
ALTER TABLE `stock_ubicacion`
  MODIFY `id_su` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id_sucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_empleado`
--
ALTER TABLE `tipo_empleado`
  MODIFY `id_tipo_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  MODIFY `id_tipopago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo_proveedor`
--
ALTER TABLE `tipo_proveedor`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `to_corte`
--
ALTER TABLE `to_corte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `to_corte_producto`
--
ALTER TABLE `to_corte_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `to_corte_producto_detalle`
--
ALTER TABLE `to_corte_producto_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `traslado`
--
ALTER TABLE `traslado`
  MODIFY `id_traslado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `traslado_detalle`
--
ALTER TABLE `traslado_detalle`
  MODIFY `id_detalle_traslado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `traslado_detalle_g`
--
ALTER TABLE `traslado_detalle_g`
  MODIFY `id_detalle_traslado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `traslado_detalle_recibido`
--
ALTER TABLE `traslado_detalle_recibido`
  MODIFY `id_detalle_traslado_recibido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `traslado_g`
--
ALTER TABLE `traslado_g`
  MODIFY `id_traslado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ubicacion`
--
ALTER TABLE `ubicacion`
  MODIFY `id_ubicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuario_modulo`
--
ALTER TABLE `usuario_modulo`
  MODIFY `id_mod_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=876;

--
-- AUTO_INCREMENT de la tabla `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id_voucher` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `voucher_mov`
--
ALTER TABLE `voucher_mov`
  MODIFY `id_mv` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
