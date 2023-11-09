-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2023 a las 13:27:48
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"votacion_db\",\"table\":\"regiones\"},{\"db\":\"votacion_db\",\"table\":\"comunas\"},{\"db\":\"votacion_db\",\"table\":\"candidatos\"},{\"db\":\"votacion_db\",\"table\":\"registro_votos\"},{\"db\":\"votacion_db\",\"table\":\"option_user\"},{\"db\":\"data_chile\",\"table\":\"comunas\"},{\"db\":\"data_chile\",\"table\":\"regiones\"},{\"db\":\"chile\",\"table\":\"comunas\"},{\"db\":\"chile\",\"table\":\"regiones\"},{\"db\":\"chile\",\"table\":\"Regiones\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'votacion_db', 'registro_votos', '{\"sorted_col\":\"`registro_votos`.`ID_User` ASC\"}', '2023-11-09 03:57:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-11-09 12:25:41', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de datos: `votacion_db`
--
CREATE DATABASE IF NOT EXISTS `votacion_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `votacion_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `ID_Candidato` int(11) NOT NULL,
  `Nombre_Candidato` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`ID_Candidato`, `Nombre_Candidato`) VALUES
(1, 'Candidato-1'),
(2, 'Candidato-2'),
(3, 'Candidato-3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `ID_Comuna` int(11) NOT NULL,
  `Nombre_Comuna` varchar(255) DEFAULT NULL,
  `ID_Region` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`ID_Comuna`, `Nombre_Comuna`, `ID_Region`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'Putre', 1),
(4, 'General Lagos', 1),
(5, 'Iquique', 2),
(6, 'Alto Hospicio', 2),
(7, 'Pozo Almonte', 2),
(8, 'Camiña', 2),
(9, 'Colchane', 2),
(10, 'Huara', 2),
(11, 'Pica', 2),
(12, 'Antofagasta', 3),
(13, 'Mejillones', 3),
(14, 'Sierra Gorda', 3),
(15, 'Taltal', 3),
(16, 'Calama', 3),
(17, 'Ollagüe', 3),
(18, 'San Pedro de Atacama', 3),
(19, 'Tocopilla', 3),
(20, 'María Elena', 3),
(21, 'Copiapó', 4),
(22, 'Caldera', 4),
(23, 'Tierra Amarilla', 4),
(24, 'Chañaral', 4),
(25, 'Diego de Almagro', 4),
(26, 'Vallenar', 4),
(27, 'Alto del Carmen', 4),
(28, 'Freirina', 4),
(29, 'Huasco', 4),
(30, 'La Serena', 5),
(31, 'Coquimbo', 5),
(32, 'Andacollo', 5),
(33, 'La Higuera', 5),
(34, 'Paiguano', 5),
(35, 'Vicuña', 5),
(36, 'Illapel', 5),
(37, 'Canela', 5),
(38, 'Los Vilos', 5),
(39, 'Salamanca', 5),
(40, 'Ovalle', 5),
(41, 'Combarbalá', 5),
(42, 'Monte Patria', 5),
(43, 'Punitaqui', 5),
(44, 'Río Hurtado', 5),
(45, 'Valparaíso', 6),
(46, 'Casablanca', 6),
(47, 'Concón', 6),
(48, 'Juan Fernández', 6),
(49, 'Puchuncaví', 6),
(50, 'Quintero', 6),
(51, 'Viña del Mar', 6),
(52, 'Isla de Pascua', 6),
(53, 'Los Andes', 6),
(54, 'Calle Larga', 6),
(55, 'Rinconada', 6),
(56, 'San Esteban', 6),
(57, 'La Ligua', 6),
(58, 'Cabildo', 6),
(59, 'Papudo', 6),
(60, 'Petorca', 6),
(61, 'Zapallar', 6),
(62, 'Quillota', 6),
(63, 'Calera', 6),
(64, 'Hijuelas', 6),
(65, 'La Cruz', 6),
(66, 'Nogales', 6),
(67, 'San Antonio', 6),
(68, 'Algarrobo', 6),
(69, 'Cartagena', 6),
(70, 'El Quisco', 6),
(71, 'El Tabo', 6),
(72, 'Santo Domingo', 6),
(73, 'San Felipe', 6),
(74, 'Catemu', 6),
(75, 'Llaillay', 6),
(76, 'Panquehue', 6),
(77, 'Putaendo', 6),
(78, 'Santa María', 6),
(79, 'Quilpué', 6),
(80, 'Limache', 6),
(81, 'Olmué', 6),
(82, 'Villa Alemana', 6),
(83, 'Rancagua', 7),
(84, 'Codegua', 7),
(85, 'Coinco', 7),
(86, 'Coltauco', 7),
(87, 'Doñihue', 7),
(88, 'Graneros', 7),
(89, 'Las Cabras', 7),
(90, 'Machalí', 7),
(91, 'Malloa', 7),
(92, 'Mostazal', 7),
(93, 'Olivar', 7),
(94, 'Peumo', 7),
(95, 'Pichidegua', 7),
(96, 'Quinta de Tilcoco', 7),
(97, 'Rengo', 7),
(98, 'Requínoa', 7),
(99, 'San Vicente', 7),
(100, 'Pichilemu', 7),
(101, 'La Estrella', 7),
(102, 'Litueche', 7),
(103, 'Marchihue', 7),
(104, 'Navidad', 7),
(105, 'Paredones', 7),
(106, 'San Fernando', 7),
(107, 'Chépica', 7),
(108, 'Chimbarongo', 7),
(109, 'Lolol', 7),
(110, 'Nancagua', 7),
(111, 'Palmilla', 7),
(112, 'Peralillo', 7),
(113, 'Placilla', 7),
(114, 'Pumanque', 7),
(115, 'Santa Cruz', 7),
(116, 'Talca', 8),
(117, 'Constitución', 8),
(118, 'Curepto', 8),
(119, 'Empedrado', 8),
(120, 'Maule', 8),
(121, 'Pelarco', 8),
(122, 'Pencahue', 8),
(123, 'Río Claro', 8),
(124, 'San Clemente', 8),
(125, 'San Rafael', 8),
(126, 'Cauquenes', 8),
(127, 'Chanco', 8),
(128, 'Pelluhue', 8),
(129, 'Curicó', 8),
(130, 'Hualañé', 8),
(131, 'Licantén', 8),
(132, 'Molina', 8),
(133, 'Rauco', 8),
(134, 'Romeral', 8),
(135, 'Sagrada Familia', 8),
(136, 'Teno', 8),
(137, 'Vichuquén', 8),
(138, 'Linares', 8),
(139, 'Colbún', 8),
(140, 'Longaví', 8),
(141, 'Parral', 8),
(142, 'Retiro', 8),
(143, 'San Javier', 8),
(144, 'Villa Alegre', 8),
(145, 'Yerbas Buenas', 8),
(146, 'Cobquecura', 9),
(147, 'Coelemu', 9),
(148, 'Ninhue', 9),
(149, 'Portezuelo', 9),
(150, 'Quirihue', 9),
(151, 'Ránquil', 9),
(152, 'Treguaco', 9),
(153, 'Bulnes', 9),
(154, 'Chillán Viejo', 9),
(155, 'Chillán', 9),
(156, 'El Carmen', 9),
(157, 'Pemuco', 9),
(158, 'Pinto', 9),
(159, 'Quillón', 9),
(160, 'San Ignacio', 9),
(161, 'Yungay', 9),
(162, 'Coihueco', 9),
(163, 'Ñiquén', 9),
(164, 'San Carlos', 9),
(165, 'San Fabián', 9),
(166, 'San Nicolás', 9),
(167, 'Concepción', 10),
(168, 'Coronel', 10),
(169, 'Chiguayante', 10),
(170, 'Florida', 10),
(171, 'Hualqui', 10),
(172, 'Lota', 10),
(173, 'Penco', 10),
(174, 'San Pedro de la Paz', 10),
(175, 'Santa Juana', 10),
(176, 'Talcahuano', 10),
(177, 'Tomé', 10),
(178, 'Hualpén', 10),
(179, 'Lebu', 10),
(180, 'Arauco', 10),
(181, 'Cañete', 10),
(182, 'Contulmo', 10),
(183, 'Curanilahue', 10),
(184, 'Los Álamos', 10),
(185, 'Tirúa', 10),
(186, 'Los Ángeles', 10),
(187, 'Antuco', 10),
(188, 'Cabrero', 10),
(189, 'Laja', 10),
(190, 'Mulchén', 10),
(191, 'Nacimiento', 10),
(192, 'Negrete', 10),
(193, 'Quilaco', 10),
(194, 'Quilleco', 10),
(195, 'San Rosendo', 10),
(196, 'Santa Bárbara', 10),
(197, 'Tucapel', 10),
(198, 'Yumbel', 10),
(199, 'Alto Biobío', 10),
(200, 'Temuco', 11),
(201, 'Carahue', 11),
(202, 'Cunco', 11),
(203, 'Curarrehue', 11),
(204, 'Freire', 11),
(205, 'Galvarino', 11),
(206, 'Gorbea', 11),
(207, 'Lautaro', 11),
(208, 'Loncoche', 11),
(209, 'Melipeuco', 11),
(210, 'Nueva Imperial', 11),
(211, 'Padre las Casas', 11),
(212, 'Perquenco', 11),
(213, 'Pitrufquén', 11),
(214, 'Pucón', 11),
(215, 'Saavedra', 11),
(216, 'Teodoro Schmidt', 11),
(217, 'Toltén', 11),
(218, 'Vilcún', 11),
(219, 'Villarrica', 11),
(220, 'Cholchol', 11),
(221, 'Angol', 11),
(222, 'Collipulli', 11),
(223, 'Curacautín', 11),
(224, 'Ercilla', 11),
(225, 'Lonquimay', 11),
(226, 'Los Sauces', 11),
(227, 'Lumaco', 11),
(228, 'Purén', 11),
(229, 'Renaico', 11),
(230, 'Traiguén', 11),
(231, 'Victoria', 11),
(232, 'Valdivia', 12),
(233, 'Corral', 12),
(234, 'Lanco', 12),
(235, 'Los Lagos', 12),
(236, 'Máfil', 12),
(237, 'Mariquina', 12),
(238, 'Paillaco', 12),
(239, 'Panguipulli', 12),
(240, 'La Unión', 12),
(241, 'Futrono', 12),
(242, 'Lago Ranco', 12),
(243, 'Río Bueno', 12),
(244, 'Puerto Montt', 13),
(245, 'Calbuco', 13),
(246, 'Cochamó', 13),
(247, 'Fresia', 13),
(248, 'Frutillar', 13),
(249, 'Los Muermos', 13),
(250, 'Llanquihue', 13),
(251, 'Maullín', 13),
(252, 'Puerto Varas', 13),
(253, 'Castro', 13),
(254, 'Ancud', 13),
(255, 'Chonchi', 13),
(256, 'Curaco de Vélez', 13),
(257, 'Dalcahue', 13),
(258, 'Puqueldón', 13),
(259, 'Queilén', 13),
(260, 'Quellón', 13),
(261, 'Quemchi', 13),
(262, 'Quinchao', 13),
(263, 'Osorno', 13),
(264, 'Puerto Octay', 13),
(265, 'Purranque', 13),
(266, 'Puyehue', 13),
(267, 'Río Negro', 13),
(268, 'San Juan de la Costa', 13),
(269, 'San Pablo', 13),
(270, 'Chaitén', 13),
(271, 'Futaleufú', 13),
(272, 'Hualaihué', 13),
(273, 'Palena', 13),
(274, 'Coihaique', 14),
(275, 'Lago Verde', 14),
(276, 'Aisén', 14),
(277, 'Cisnes', 14),
(278, 'Guaitecas', 14),
(279, 'Cochrane', 14),
(280, 'O’Higgins', 14),
(281, 'Tortel', 14),
(282, 'Chile Chico', 14),
(283, 'Río Ibáñez', 14),
(284, 'Punta Arenas', 15),
(285, 'Laguna Blanca', 15),
(286, 'Río Verde', 15),
(287, 'San Gregorio', 15),
(288, 'Cabo de Hornos (Ex Navarino)', 15),
(289, 'Antártica', 15),
(290, 'Porvenir', 15),
(291, 'Primavera', 15),
(292, 'Timaukel', 15),
(293, 'Natales', 15),
(294, 'Torres del Paine', 15),
(295, 'Cerrillos', 16),
(296, 'Cerro Navia', 16),
(297, 'Conchalí', 16),
(298, 'El Bosque', 16),
(299, 'Estación Central', 16),
(300, 'Huechuraba', 16),
(301, 'Independencia', 16),
(302, 'La Cisterna', 16),
(303, 'La Florida', 16),
(304, 'La Granja', 16),
(305, 'La Pintana', 16),
(306, 'La Reina', 16),
(307, 'Las Condes', 16),
(308, 'Lo Barnechea', 16),
(309, 'Lo Espejo', 16),
(310, 'Lo Prado', 16),
(311, 'Macul', 16),
(312, 'Maipú', 16),
(313, 'Ñuñoa', 16),
(314, 'Pedro Aguirre Cerda', 16),
(315, 'Peñalolén', 16),
(316, 'Providencia', 16),
(317, 'Pudahuel', 16),
(318, 'Quilicura', 16),
(319, 'Quinta Normal', 16),
(320, 'Recoleta', 16),
(321, 'Renca', 16),
(322, 'Santiago', 16),
(323, 'San Joaquín', 16),
(324, 'San Miguel', 16),
(325, 'San Ramón', 16),
(326, 'Vitacura', 16),
(327, 'Puente Alto', 16),
(328, 'Pirque', 16),
(329, 'San José de Maipo', 16),
(330, 'Colina', 16),
(331, 'Lampa', 16),
(332, 'Tiltil', 16),
(333, 'San Bernardo', 16),
(334, 'Buin', 16),
(335, 'Calera de Tango', 16),
(336, 'Paine', 16),
(337, 'Melipilla', 16),
(338, 'Alhué', 16),
(339, 'Curacaví', 16),
(340, 'María Pinto', 16),
(341, 'San Pedro', 16),
(342, 'Talagante', 16),
(343, 'El Monte', 16),
(344, 'Isla de Maipo', 16),
(345, 'Padre Hurtado', 16),
(346, 'Peñaflor', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `ID_Region` int(11) NOT NULL,
  `Nombre_Region` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`ID_Region`, `Nombre_Region`) VALUES
(1, 'Arica y Parinacota'),
(2, 'Tarapacá'),
(3, 'Antofagasta'),
(4, 'Atacama'),
(5, 'Coquimbo'),
(6, 'Valparaíso'),
(7, 'Región del Libertador Gral. Bernardo O’Higgins'),
(8, 'Región del Maule'),
(9, 'Región de Ñuble'),
(10, 'Región del Biobío'),
(11, 'Región de la Araucanía'),
(12, 'Región de Los Ríos'),
(13, 'Región de Los Lagos'),
(14, 'Región Aisén del Gral. Carlos Ibáñez del Campo'),
(15, 'Región de Magallanes y de la Antártica Chilena'),
(16, 'Región Metropolitana de Santiago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_votos`
--

CREATE TABLE `registro_votos` (
  `ID_User` int(11) NOT NULL,
  `Nombre_Apellido` varchar(20) NOT NULL,
  `Alias` varchar(20) NOT NULL,
  `Rut` varchar(20) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Region` varchar(60) NOT NULL,
  `Comuna` varchar(60) NOT NULL,
  `Voto` varchar(60) NOT NULL,
  `opcion_web` tinyint(1) DEFAULT NULL,
  `opcion_tv` tinyint(1) DEFAULT NULL,
  `opcion_redes_sociales` tinyint(1) DEFAULT NULL,
  `opcion_amigos` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`ID_Candidato`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`ID_Comuna`),
  ADD KEY `ID_Region` (`ID_Region`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`ID_Region`);

--
-- Indices de la tabla `registro_votos`
--
ALTER TABLE `registro_votos`
  ADD PRIMARY KEY (`ID_User`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `ID_Candidato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `ID_Comuna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `ID_Region` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `registro_votos`
--
ALTER TABLE `registro_votos`
  MODIFY `ID_User` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`ID_Region`) REFERENCES `regiones` (`ID_Region`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
