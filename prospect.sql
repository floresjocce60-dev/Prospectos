-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2025 a las 18:05:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prospect`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumno` int(11) NOT NULL,
  `id_prospecto` int(11) DEFAULT NULL,
  `fecha_inscripcion` date NOT NULL,
  `curso_actual` varchar(255) NOT NULL,
  `estado_actividad` enum('activo','baja') NOT NULL,
  `numero_matricula` varchar(20) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `razon_baja` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nombre_curso` varchar(255) NOT NULL,
  `codigo_curso` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nombre_curso`, `codigo_curso`) VALUES
(1, 'NA', '01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_cambios`
--

CREATE TABLE `historial_cambios` (
  `id_historial` int(11) NOT NULL,
  `tabla_afectada` varchar(50) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `accion` varchar(10) DEFAULT NULL,
  `datos_anteriores` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `datos_nuevos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `fecha_cambio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_cambios`
--

INSERT INTO `historial_cambios` (`id_historial`, `tabla_afectada`, `usuario`, `accion`, `datos_anteriores`, `datos_nuevos`, `fecha_cambio`) VALUES
(1, 'cursos', 'Administrador', 'INSERT', NULL, '{\"id_curso\":1,\"nombre_curso\":\"ingles\",\"codigo_curso\":\"01\"}', '2025-08-08 03:48:40'),
(2, 'prospectos', 'Administrador', 'INSERT', NULL, '{\"id_prospecto\":\"\",\"numero_telefonico\":\"521111111111\",\"fecha_contacto\":\"2025-08-15\",\"tipo_red_social\":\"Facebook\",\"curso_interes\":\"ingles\",\"dia\":\"Martes y jueves\",\"horario_preferencia\":\"Nocturno\",\"tomo_demostracion\":\"Sí\",\"estado_proceso\":\"no interesado\",\"pais_origen\":\"Colombia\",\"estado\":\"\",\"observaciones\":\"a\"}', '2025-08-08 13:21:17'),
(3, 'prospectos', 'Administrador', 'INSERT', NULL, '{\"id_prospecto\":\"\",\"numero_telefonico\":\"\",\"fecha_contacto\":\"\",\"tipo_red_social\":\"NA\",\"curso_interes\":\"ingles\",\"dia\":\"a\",\"horario_preferencia\":\"NA\",\"tomo_demostracion\":\"NA\",\"estado_proceso\":\"ignora mensajes\",\"pais_origen\":\"Colombia\",\"estado\":\"\",\"observaciones\":\"\"}', '2025-08-08 13:34:33'),
(4, 'prospectos', 'Administrador', 'INSERT', NULL, '{\"id_prospecto\":\"\",\"numero_telefonico\":\"\",\"fecha_contacto\":\"\",\"tipo_red_social\":\"NA\",\"curso_interes\":\"ingles\",\"dia\":\"\",\"horario_preferencia\":\"NA\",\"tomo_demostracion\":\"NA\",\"estado_proceso\":\"ignora mensajes\",\"pais_origen\":\"\",\"estado\":\"\",\"observaciones\":\"\"}', '2025-08-08 13:35:31'),
(5, 'prospectos', 'Administrador', 'INSERT', NULL, '{\"id_prospecto\":\"\",\"numero_telefonico\":\"521111111111\",\"fecha_contacto\":\"2025-08-07\",\"tipo_red_social\":\"TikTok\",\"curso_interes\":\"ingles\",\"dia\":\"a\",\"horario_preferencia\":\"Vespertino\",\"tomo_demostracion\":\"No\",\"estado_proceso\":\"pendiente de pago\",\"pais_origen\":\"México\",\"estado\":\"Baja California\",\"observaciones\":\"a\"}', '2025-08-08 13:37:10'),
(6, 'prospectos', 'Administrador', 'DELETE', '{\"id_prospecto\":1,\"numero_telefonico\":\"521111111111\",\"fecha_contacto\":\"2025-08-15T06:00:00.000Z\",\"tipo_red_social\":\"Facebook\",\"curso_interes\":\"ingles\",\"dia\":\"Martes y jueves\",\"horario_preferencia\":\"Nocturno\",\"tomo_demostracion\":\"Sí\",\"estado_proceso\":\"no interesado\",\"pais_origen\":\"Colombia\",\"estado\":null,\"observaciones\":\"a\"}', NULL, '2025-08-08 13:41:48'),
(7, 'prospectos', 'Administrador', 'DELETE', '{\"id_prospecto\":4,\"numero_telefonico\":\"521111111111\",\"fecha_contacto\":\"2025-08-07T06:00:00.000Z\",\"tipo_red_social\":\"TikTok\",\"curso_interes\":\"ingles\",\"dia\":\"a\",\"horario_preferencia\":\"Vespertino\",\"tomo_demostracion\":\"No\",\"estado_proceso\":\"pendiente de pago\",\"pais_origen\":\"México\",\"estado\":\"Baja California\",\"observaciones\":\"a\"}', NULL, '2025-08-08 14:02:57'),
(8, 'prospectos', 'Administrador', 'DELETE', '{\"id_prospecto\":2,\"numero_telefonico\":\"\",\"fecha_contacto\":\"1899-11-30T06:36:36.000Z\",\"tipo_red_social\":\"NA\",\"curso_interes\":\"ingles\",\"dia\":\"a\",\"horario_preferencia\":\"NA\",\"tomo_demostracion\":\"NA\",\"estado_proceso\":\"ignora mensajes\",\"pais_origen\":\"Colombia\",\"estado\":null,\"observaciones\":\"\"}', NULL, '2025-08-08 14:03:11'),
(9, 'prospectos', 'Administrador', 'INSERT', NULL, '{\"id_prospecto\":\"\",\"numero_telefonico\":\"\",\"fecha_contacto\":\"\",\"tipo_red_social\":\"NA\",\"curso_interes\":\"ingles\",\"dia\":\"\",\"horario_preferencia\":\"NA\",\"tomo_demostracion\":\"NA\",\"estado_proceso\":\"ignora mensajes\",\"pais_origen\":\"\",\"estado\":\"\",\"observaciones\":\"\"}', '2025-08-08 14:14:41'),
(10, 'prospectos', 'Administrador', 'DELETE', '{\"id_prospecto\":3,\"numero_telefonico\":\"\",\"fecha_contacto\":\"1899-11-30T06:36:36.000Z\",\"tipo_red_social\":\"NA\",\"curso_interes\":\"ingles\",\"dia\":\"\",\"horario_preferencia\":\"NA\",\"tomo_demostracion\":\"NA\",\"estado_proceso\":\"ignora mensajes\",\"pais_origen\":\"\",\"estado\":null,\"observaciones\":\"\"}', NULL, '2025-08-08 14:14:58'),
(11, 'prospectos', 'Administrador', 'DELETE', '{\"id_prospecto\":8,\"numero_telefonico\":\"\",\"fecha_contacto\":\"1899-11-30T06:36:36.000Z\",\"tipo_red_social\":\"NA\",\"curso_interes\":\"ingles\",\"dia\":\"\",\"horario_preferencia\":\"NA\",\"tomo_demostracion\":\"NA\",\"estado_proceso\":\"ignora mensajes\",\"pais_origen\":\"\",\"estado\":null,\"observaciones\":\"\"}', NULL, '2025-08-08 14:15:02'),
(12, 'prospectos', 'Administrador', 'DELETE', '{\"id_prospecto\":5,\"numero_telefonico\":null,\"fecha_contacto\":null,\"tipo_red_social\":null,\"curso_interes\":null,\"dia\":null,\"horario_preferencia\":null,\"tomo_demostracion\":null,\"estado_proceso\":\"ignora mensajes\",\"pais_origen\":null,\"estado\":null,\"observaciones\":null}', NULL, '2025-08-08 14:15:06'),
(13, 'prospectos', 'Administrador', 'DELETE', '{\"id_prospecto\":6,\"numero_telefonico\":null,\"fecha_contacto\":null,\"tipo_red_social\":null,\"curso_interes\":null,\"dia\":null,\"horario_preferencia\":null,\"tomo_demostracion\":null,\"estado_proceso\":\"ignora mensajes\",\"pais_origen\":null,\"estado\":null,\"observaciones\":null}', NULL, '2025-08-08 14:15:09'),
(14, 'prospectos', 'Administrador', 'DELETE', '{\"id_prospecto\":7,\"numero_telefonico\":null,\"fecha_contacto\":null,\"tipo_red_social\":null,\"curso_interes\":null,\"dia\":null,\"horario_preferencia\":null,\"tomo_demostracion\":null,\"estado_proceso\":\"ignora mensajes\",\"pais_origen\":null,\"estado\":null,\"observaciones\":null}', NULL, '2025-08-08 14:15:14'),
(15, 'cursos', 'Administrador', 'UPDATE', '{\"id_curso\":1,\"nombre_curso\":\"ingles\",\"codigo_curso\":\"01\"}', '{\"nombre_curso\":\"NA\"}', '2025-08-08 14:15:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_intentos`
--

CREATE TABLE `login_intentos` (
  `id` int(11) NOT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `exito` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login_intentos`
--

INSERT INTO `login_intentos` (`id`, `correo`, `ip`, `fecha`, `exito`) VALUES
(1, 'admin@gmail.com', '::1', '2025-08-06 23:16:50', 1),
(2, 'admin@gmail.com', '::1', '2025-08-07 21:48:31', 1),
(3, 'admin@gmail.com', '::1', '2025-08-08 07:15:14', 1),
(4, 'admin@gmail.com', '::1', '2025-08-08 07:41:41', 1),
(5, 'admin@gmail.com', '::1', '2025-08-08 08:01:55', 1),
(6, 'admin@gmail.com', '::1', '2025-08-08 16:05:18', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id_notificacion` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `numero` varchar(15) NOT NULL,
  `mensaje` text NOT NULL,
  `plantilla_id` int(11) DEFAULT NULL,
  `fecha_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantillas`
--

CREATE TABLE `plantillas` (
  `id` int(11) NOT NULL,
  `link_promocion` varchar(255) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospectos`
--

CREATE TABLE `prospectos` (
  `id_prospecto` int(11) NOT NULL,
  `numero_telefonico` varchar(15) DEFAULT NULL,
  `fecha_contacto` date DEFAULT NULL,
  `tipo_red_social` enum('Facebook','Instagram','Messenger','TikTok','Recomendados','WhatsApp','Página Web','X','NA') DEFAULT 'Facebook',
  `curso_interes` varchar(250) DEFAULT NULL,
  `dia` varchar(20) DEFAULT NULL,
  `horario_preferencia` enum('Matutino','Vespertino','Nocturno','NA') DEFAULT 'Matutino',
  `tomo_demostracion` enum('Sí','No','NA') DEFAULT 'No',
  `estado_proceso` enum('inscrito','pendiente de pago','interesado','pendiente de respuesta','ignora mensajes','no interesado') NOT NULL,
  `pais_origen` varchar(255) DEFAULT 'México',
  `estado` varchar(100) DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes_sociales`
--

CREATE TABLE `redes_sociales` (
  `id_red_social` int(11) NOT NULL,
  `tipo_red_social` varchar(50) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `nombre_alumno` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `apellido_materno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tokens_bloqueados`
--

CREATE TABLE `tokens_bloqueados` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `fecha_expiracion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `imagen_perfil` blob DEFAULT NULL,
  `rol` enum('administrador','lector','moderador') DEFAULT 'lector',
  `fecha_creacion` datetime DEFAULT current_timestamp(),
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido_paterno`, `apellido_materno`, `correo`, `contraseña`, `imagen_perfil`, `rol`, `fecha_creacion`, `reset_token`, `reset_token_expires`) VALUES
(1, 'Administrador', '', NULL, 'admin@gmail.com', '$2a$10$orrNQ0HZHcD/j4UK1XBx2OcO7sqeDraqDgm.oeU7Lm6HcuG5UNqaK', NULL, 'administrador', '2025-08-06 17:11:32', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumno`),
  ADD KEY `id_prospecto` (`id_prospecto`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`),
  ADD UNIQUE KEY `nombre_curso` (`nombre_curso`),
  ADD UNIQUE KEY `codigo_curso` (`codigo_curso`);

--
-- Indices de la tabla `historial_cambios`
--
ALTER TABLE `historial_cambios`
  ADD PRIMARY KEY (`id_historial`);

--
-- Indices de la tabla `login_intentos`
--
ALTER TABLE `login_intentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id_notificacion`);

--
-- Indices de la tabla `plantillas`
--
ALTER TABLE `plantillas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prospectos`
--
ALTER TABLE `prospectos`
  ADD PRIMARY KEY (`id_prospecto`);

--
-- Indices de la tabla `redes_sociales`
--
ALTER TABLE `redes_sociales`
  ADD PRIMARY KEY (`id_red_social`);

--
-- Indices de la tabla `tokens_bloqueados`
--
ALTER TABLE `tokens_bloqueados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `historial_cambios`
--
ALTER TABLE `historial_cambios`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `login_intentos`
--
ALTER TABLE `login_intentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id_notificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plantillas`
--
ALTER TABLE `plantillas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prospectos`
--
ALTER TABLE `prospectos`
  MODIFY `id_prospecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `redes_sociales`
--
ALTER TABLE `redes_sociales`
  MODIFY `id_red_social` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tokens_bloqueados`
--
ALTER TABLE `tokens_bloqueados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_prospecto`) REFERENCES `prospectos` (`id_prospecto`);

DELIMITER $$
--
-- Eventos
--
CREATE DEFINER=`root`@`localhost` EVENT `delete_old_login_intentos` ON SCHEDULE EVERY 1 MONTH STARTS '2025-03-25 15:57:48' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM login_intentos
  WHERE fecha < DATE_FORMAT(NOW(), '%Y-%m-01')$$

CREATE DEFINER=`root`@`localhost` EVENT `delete_expired_tokens` ON SCHEDULE EVERY 2 MONTH STARTS '2025-03-25 16:00:08' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM tokens_bloqueados
  WHERE fecha_expiracion < NOW()$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
