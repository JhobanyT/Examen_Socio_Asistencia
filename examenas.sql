-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2021 a las 21:27:52
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examenas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Socio', 7, 'add_socio'),
(26, 'Can change Socio', 7, 'change_socio'),
(27, 'Can delete Socio', 7, 'delete_socio'),
(28, 'Can view Socio', 7, 'view_socio'),
(29, 'Can add Asistencia', 8, 'add_asistencia'),
(30, 'Can change Asistencia', 8, 'change_asistencia'),
(31, 'Can delete Asistencia', 8, 'delete_asistencia'),
(32, 'Can view Asistencia', 8, 'view_asistencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$gyCFD8mSm7JeHUlPDq6Ngq$n1CtOQLpk1RwNweHjh8byU4DKeHpRgJIMrOr8fazsUI=', '2021-11-10 04:28:20.087930', 1, 'jhobany', '', '', 'jhobany.ticona@upeu.edu.pe', 1, 1, '2021-11-09 20:53:10.096887');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `completo_asistencia`
--

CREATE TABLE `completo_asistencia` (
  `id` bigint(20) NOT NULL,
  `treunion` varchar(20) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `fecha_inicio` datetime(6) NOT NULL,
  `fecha_salida` datetime(6) NOT NULL,
  `created` date NOT NULL,
  `updated` date NOT NULL,
  `socio_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `completo_asistencia`
--

INSERT INTO `completo_asistencia` (`id`, `treunion`, `descripcion`, `fecha_inicio`, `fecha_salida`, `created`, `updated`, `socio_id`) VALUES
(1, 'Padron', 'Esta asamblea es necesaria para mejorar la organización en tal lugar', '2021-11-10 12:24:00.000000', '2021-11-10 13:24:00.000000', '2021-11-09', '2021-11-10', 6),
(5, 'Asamblea', 'nuevos', '2021-11-10 12:05:00.000000', '2021-11-10 13:03:00.000000', '2021-11-10', '2021-11-10', 10),
(6, 'Asamblea', 'nuevos', '2021-11-02 14:17:00.000000', '2021-11-02 15:17:00.000000', '2021-11-10', '2021-11-10', 9),
(9, 'Asamblea', 'Hilux', '2021-11-10 13:33:00.000000', '2021-11-10 13:33:00.000000', '2021-11-10', '2021-11-10', 4),
(10, 'Asamblea', 'Presentacion de nuevos Socios', '2021-11-10 13:05:00.000000', '2021-11-10 15:05:00.000000', '2021-11-10', '2021-11-10', 1),
(11, 'Asamblea', 'holaaa', '2021-11-10 13:59:00.000000', '2021-11-10 15:00:00.000000', '2021-11-10', '2021-11-10', 8),
(12, 'Faena', 'trabajo en las afueras de la asociación, especificamente en la omunidad yllpa', '2021-11-11 14:24:00.000000', '2021-11-11 16:23:00.000000', '2021-11-10', '2021-11-10', 1),
(13, 'Faena', 'Se necesita acordar el nuevo presidente de la asociación', '2021-11-10 14:55:00.000000', '2021-11-10 16:55:00.000000', '2021-11-10', '2021-11-10', 10),
(14, 'Asamblea', 'Se cita a una asamblea extraodinaria donde se tratara.................................', '2021-11-17 15:30:00.000000', '2021-11-17 17:30:00.000000', '2021-11-10', '2021-11-10', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `completo_socio`
--

CREATE TABLE `completo_socio` (
  `id` bigint(20) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `estado_socio` varchar(15) NOT NULL,
  `categoria` varchar(25) NOT NULL,
  `distrito` varchar(30) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `created` date NOT NULL,
  `updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `completo_socio`
--

INSERT INTO `completo_socio` (`id`, `nombres`, `apellidos`, `estado_socio`, `categoria`, `distrito`, `dni`, `email`, `direccion`, `celular`, `fecha_nacimiento`, `created`, `updated`) VALUES
(1, 'Jhobany', 'Ticona', 'Activo', 'Principiante', 'Cabanillas', '76026496', 'jhobany.ticona@upeu.edu.pe', 'Cinc.Cancollani', '983452544', '2000-07-20', '2021-11-09', '2021-11-10'),
(3, 'Etdu Gonzalo', 'Ticona', 'Inactivo', 'Avanzado', 'Cabanillas', '76026496', 'jhobany.ticona@upeu.edu.pe', 'Cinc.Cancollani', '983452544', '2000-07-06', '2021-11-09', '2021-11-10'),
(4, 'Julio', 'Ticona', 'Activo', 'Intermedio', 'Azangaro', '76026496', 'jhobany.ticona@upeu.edu.pe', 'Cinc.Cancollani', '983452544', '2021-11-15', '2021-11-10', '2021-11-10'),
(6, 'Jhonatan', 'Ticona', 'Inactivo', 'Avanzado', 'Cabanillas', '56565686', 'jhobany.ticona@upeu.edu.pe', 'Cinc.Cancollani', '980987645', '2021-11-04', '2021-11-10', '2021-11-10'),
(8, 'Juan', 'Peres', 'Activo', 'Principiante', 'San Miguel', '74562234', 'Juan@upeu.edu.pe', 'jr.la mar n°456', '980987645', '2021-11-20', '2021-11-10', '2021-11-10'),
(9, 'Alba', 'Matinez', 'Activo', 'Principiante', 'Mages', '75452334', 'Alba@gmail.com', 'AV.Altomayo', '980987645', '2004-08-01', '2021-11-10', '2021-11-10'),
(10, 'Magaly Esmeralda', 'Chipana Pandia', 'Activo', 'Intermedio', 'Miraflores', '74562234', 'Magaly@gmail.com', 'Av. Triunfo 456', '980987643', '2001-11-02', '2021-11-10', '2021-11-10'),
(11, 'Milagros', 'Chipana', 'Activo', 'Principiante', 'San Miguel', '75452334', 'milagros.chipana@upeu.edu.pe', 'av. venezuela', '910133785', '2001-11-08', '2021-11-10', '2021-11-10'),
(12, 'Alan', 'Pacompia Yucra', 'Activo', 'Intermedio', 'puno', '75452334', 'Alan@gamil.com', 'Cinc.Cancollani', '983452544', '2004-11-02', '2021-11-10', '2021-11-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-11-10 04:28:49.167895', '2', 'Padron', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-11-10 13:10:23.246288', '3', 'Etdu Gonzalo', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 7, 1),
(3, '2021-11-10 13:10:28.701353', '1', 'Jhobany', 2, '[{\"changed\": {\"fields\": [\"Categoria\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'completo', 'asistencia'),
(7, 'completo', 'socio'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-09 20:51:47.046961'),
(2, 'auth', '0001_initial', '2021-11-09 20:52:01.096626'),
(3, 'admin', '0001_initial', '2021-11-09 20:52:06.132859'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-09 20:52:06.300765'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-09 20:52:06.362730'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-09 20:52:07.091309'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-09 20:52:08.275629'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-09 20:52:08.411549'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-09 20:52:08.469516'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-09 20:52:09.862714'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-09 20:52:10.005634'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-09 20:52:10.195538'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-09 20:52:10.364429'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-09 20:52:10.500621'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-09 20:52:10.885451'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-09 20:52:10.980400'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-09 20:52:11.152137'),
(18, 'completo', '0001_initial', '2021-11-09 20:52:13.633790'),
(19, 'sessions', '0001_initial', '2021-11-09 20:52:14.887961'),
(20, 'completo', '0002_rename_descripción_asistencia_descripcion', '2021-11-10 02:05:56.322576');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ckcnfte3eeh0abnarlda5rmjlmgzelb', '.eJxVjEEOwiAQRe_C2pAZpCAu3XuGZoYBqRpISrsy3l2bdKHb_977LzXSupRx7WkeJ1FnherwuzHFR6obkDvVW9Ox1WWeWG-K3mnX1ybpedndv4NCvXxrJ96RCAAMiXMMPrvgBhsckCAaw9EGm4WtYY6BhQCCYY9yPCXEbNT7A-6MOCI:1mkY8V:NXFKsNMUtDb5v6A4wy7dRqxQsF1R321Y_2KwABnEn80', '2021-11-23 20:54:31.956468'),
('wp2yi0hip89f6qvuj9w7r1u3i0onzoka', '.eJxVjEEOwiAQRe_C2pAZpCAu3XuGZoYBqRpISrsy3l2bdKHb_977LzXSupRx7WkeJ1FnherwuzHFR6obkDvVW9Ox1WWeWG-K3mnX1ybpedndv4NCvXxrJ96RCAAMiXMMPrvgBhsckCAaw9EGm4WtYY6BhQCCYY9yPCXEbNT7A-6MOCI:1mkfDg:6YvA9Qz7wsVHmJHUIJxqSi7smSyhF9TLsEA_xXdNZEY', '2021-11-24 04:28:20.174336');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `completo_asistencia`
--
ALTER TABLE `completo_asistencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `completo_asistencia_socio_id_09535222_fk_completo_socio_id` (`socio_id`);

--
-- Indices de la tabla `completo_socio`
--
ALTER TABLE `completo_socio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `completo_asistencia`
--
ALTER TABLE `completo_asistencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `completo_socio`
--
ALTER TABLE `completo_socio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `completo_asistencia`
--
ALTER TABLE `completo_asistencia`
  ADD CONSTRAINT `completo_asistencia_socio_id_09535222_fk_completo_socio_id` FOREIGN KEY (`socio_id`) REFERENCES `completo_socio` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
