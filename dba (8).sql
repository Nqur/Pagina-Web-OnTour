-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2022 a las 03:12:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dba`
--
CREATE DATABASE IF NOT EXISTS `dba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`) VALUES
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(7, 'apoderado'),
(8, 'ejecutivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(109, 8, 1),
(110, 8, 2),
(111, 8, 3),
(112, 8, 4),
(113, 8, 5),
(114, 8, 6),
(115, 8, 7),
(116, 8, 8),
(117, 8, 9),
(118, 8, 10),
(119, 8, 11),
(120, 8, 12),
(121, 8, 13),
(122, 8, 14),
(123, 8, 15),
(124, 8, 16),
(125, 8, 17),
(126, 8, 18),
(127, 8, 19),
(128, 8, 20),
(129, 8, 21),
(130, 8, 22),
(131, 8, 23),
(132, 8, 24),
(133, 8, 25),
(134, 8, 26),
(135, 8, 27),
(136, 8, 28),
(137, 8, 29),
(138, 8, 30),
(139, 8, 31),
(140, 8, 32),
(141, 8, 33),
(142, 8, 34),
(143, 8, 35),
(144, 8, 36);

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
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add apoderado', 8, 'add_apoderado'),
(30, 'Can change apoderado', 8, 'change_apoderado'),
(31, 'Can delete apoderado', 8, 'delete_apoderado'),
(32, 'Can view apoderado', 8, 'view_apoderado'),
(33, 'Can add curso', 9, 'add_curso'),
(34, 'Can change curso', 9, 'change_curso'),
(35, 'Can delete curso', 9, 'delete_curso'),
(36, 'Can view curso', 9, 'view_curso');

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
(1, 'pbkdf2_sha256$320000$LEvACXr1HDfVy3PgqT5eGv$c7/8IEpfgovecE70dmDisZ/RaA3K13+3mD6Kpi72kNk=', '2022-07-12 01:06:38.313413', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2022-07-12 00:31:16.000000'),
(8, 'pbkdf2_sha256$320000$PX4cOCjjYEWC8kehoxmprM$+3VJBUJN6phZ5qW86W/4jUuABEEE1i53rnstEAcWwiY=', '2022-07-12 01:06:28.007570', 0, 'pepe', '', '', '', 0, 1, '2022-07-12 00:48:21.262397');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(6, 1, 8),
(3, 8, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36);

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
(1, '2022-07-12 00:32:43.662670', '1', 'apoderado', 1, '[{\"added\": {}}]', 4, 1),
(2, '2022-07-12 00:32:49.964499', '2', 'ejecutivo', 1, '[{\"added\": {}}]', 4, 1),
(3, '2022-07-12 00:33:45.783991', '2', 'ejecutivo', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 4, 1),
(4, '2022-07-12 00:34:13.083728', '1', 'apoderado', 2, '[]', 4, 1),
(5, '2022-07-12 00:35:05.468046', '1', 'apoderado', 3, '', 4, 1),
(6, '2022-07-12 00:35:09.778270', '2', 'ejecutivo', 3, '', 4, 1),
(7, '2022-07-12 00:35:33.737449', '3', 'apoderado', 1, '[{\"added\": {}}]', 4, 1),
(8, '2022-07-12 00:35:47.037977', '4', 'ejecutivo', 1, '[{\"added\": {}}]', 4, 1),
(9, '2022-07-12 00:36:03.844406', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(10, '2022-07-12 00:37:58.320209', '3', 'apoderado', 3, '', 4, 1),
(11, '2022-07-12 00:37:58.323172', '4', 'ejecutivo', 3, '', 4, 1),
(12, '2022-07-12 00:39:02.933831', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 5, 1),
(13, '2022-07-12 00:45:38.746287', '5', 'apoderado', 1, '[{\"added\": {}}]', 4, 1),
(14, '2022-07-12 00:45:48.875183', '6', 'ejecutivo', 1, '[{\"added\": {}}]', 4, 1),
(15, '2022-07-12 00:45:59.900833', '7', 'pepetapia', 1, '[{\"added\": {}}]', 5, 1),
(16, '2022-07-12 00:46:16.049867', '7', 'pepetapia', 3, '', 5, 1),
(17, '2022-07-12 00:47:51.581541', '5', 'apoderado', 3, '', 4, 1),
(18, '2022-07-12 00:47:51.589281', '6', 'ejecutivo', 3, '', 4, 1),
(19, '2022-07-12 00:47:57.401434', '7', 'apoderado', 1, '[{\"added\": {}}]', 4, 1),
(20, '2022-07-12 00:48:05.557103', '8', 'ejecutivo', 1, '[{\"added\": {}}]', 4, 1),
(21, '2022-07-12 00:48:21.518663', '8', 'pepe', 1, '[{\"added\": {}}]', 5, 1),
(22, '2022-07-12 00:49:56.010745', '1', 'Apoderado object (1)', 1, '[{\"added\": {}}]', 8, 1),
(23, '2022-07-12 00:50:14.892604', '1', 'Curso object (1)', 1, '[{\"added\": {}}]', 9, 1),
(24, '2022-07-12 00:52:25.305003', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(25, '2022-07-12 01:00:51.965209', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(26, '2022-07-12 01:01:13.866633', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(27, '2022-07-12 01:02:53.237694', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(28, '2022-07-12 01:06:09.357768', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1);

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
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(8, 'app', 'apoderado'),
(9, 'app', 'curso'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2022-07-12 00:29:21.431487'),
(2, 'auth', '0001_initial', '2022-07-12 00:29:21.877053'),
(3, 'admin', '0001_initial', '2022-07-12 00:29:21.979079'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-07-12 00:29:21.989754'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-12 00:29:21.998729'),
(6, 'admin_interface', '0001_initial', '2022-07-12 00:29:22.016797'),
(7, 'admin_interface', '0002_add_related_modal', '2022-07-12 00:29:22.072338'),
(8, 'admin_interface', '0003_add_logo_color', '2022-07-12 00:29:22.095282'),
(9, 'admin_interface', '0004_rename_title_color', '2022-07-12 00:29:22.108243'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2022-07-12 00:29:22.125200'),
(11, 'admin_interface', '0006_bytes_to_str', '2022-07-12 00:29:22.185037'),
(12, 'admin_interface', '0007_add_favicon', '2022-07-12 00:29:22.220183'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2022-07-12 00:29:22.250458'),
(14, 'admin_interface', '0009_add_enviroment', '2022-07-12 00:29:22.284561'),
(15, 'admin_interface', '0010_add_localization', '2022-07-12 00:29:22.303511'),
(16, 'admin_interface', '0011_add_environment_options', '2022-07-12 00:29:22.360845'),
(17, 'admin_interface', '0012_update_verbose_names', '2022-07-12 00:29:22.369754'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2022-07-12 00:29:22.388584'),
(19, 'admin_interface', '0014_name_unique', '2022-07-12 00:29:22.412736'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2022-07-12 00:29:22.468744'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2022-07-12 00:29:22.496697'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2022-07-12 00:29:22.503900'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2022-07-12 00:29:22.526705'),
(24, 'admin_interface', '0019_add_form_sticky', '2022-07-12 00:29:22.559683'),
(25, 'admin_interface', '0020_module_selected_colors', '2022-07-12 00:29:22.603322'),
(26, 'admin_interface', '0021_file_extension_validator', '2022-07-12 00:29:22.613601'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2022-07-12 00:29:22.647642'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2022-07-12 00:29:22.666575'),
(29, 'admin_interface', '0024_remove_theme_css', '2022-07-12 00:29:22.679972'),
(30, 'app', '0001_initial', '2022-07-12 00:29:22.711990'),
(31, 'contenttypes', '0002_remove_content_type_name', '2022-07-12 00:29:22.763917'),
(32, 'auth', '0002_alter_permission_name_max_length', '2022-07-12 00:29:22.812606'),
(33, 'auth', '0003_alter_user_email_max_length', '2022-07-12 00:29:22.831556'),
(34, 'auth', '0004_alter_user_username_opts', '2022-07-12 00:29:22.853742'),
(35, 'auth', '0005_alter_user_last_login_null', '2022-07-12 00:29:22.892882'),
(36, 'auth', '0006_require_contenttypes_0002', '2022-07-12 00:29:22.897846'),
(37, 'auth', '0007_alter_validators_add_error_messages', '2022-07-12 00:29:22.908644'),
(38, 'auth', '0008_alter_user_username_max_length', '2022-07-12 00:29:22.923609'),
(39, 'auth', '0009_alter_user_last_name_max_length', '2022-07-12 00:29:22.942219'),
(40, 'auth', '0010_alter_group_name_max_length', '2022-07-12 00:29:22.961168'),
(41, 'auth', '0011_update_proxy_permissions', '2022-07-12 00:29:22.974134'),
(42, 'auth', '0012_alter_user_first_name_max_length', '2022-07-12 00:29:22.991161'),
(43, 'sessions', '0001_initial', '2022-07-12 00:29:23.026141');

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
('6lqbi9ajs8p38d3wr2z4fwzgbtj1plmp', '.eJxVjMsOwiAQAP-FsyE8l61H734DWWCVqqFJaU_GfzckPeh1ZjJvEWnfatw7r3Eu4iy0OP2yRPnJbYjyoHZfZF7ats5JjkQetsvrUvh1Odq_QaVex9ZgmUiZjJ7QWgQX0GiTgTUrD4yB0QYFbCfw2oDzLkCGGyXwxVktPl-mpDY1:1oB4MI:1wUFyA4Ta_DnV4pSiMrdxsQLIu_DxzoEW36ZAcx1Vok', '2022-07-26 01:06:38.319891');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

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
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
