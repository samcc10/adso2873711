-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-08-2025 a las 14:14:38
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
-- Base de datos: `larapets`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adoptions`
--

CREATE TABLE `adoptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `adoptions`
--

INSERT INTO `adoptions` (`id`, `user_id`, `pet_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2025-06-06 21:46:50', '2025-06-06 21:46:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_adsadsadsad@adsads.com|127.0.0.1', 'i:1;', 1750435818),
('laravel_cache_adsadsadsad@adsads.com|127.0.0.1:timer', 'i:1750435818;', 1750435818),
('laravel_cache_adsadsda@adrfadsa.com|127.0.0.1', 'i:1;', 1750436267),
('laravel_cache_adsadsda@adrfadsa.com|127.0.0.1:timer', 'i:1750436267;', 1750436267),
('laravel_cache_chancha@mail.com|127.0.0.1', 'i:1;', 1750437930),
('laravel_cache_chancha@mail.com|127.0.0.1:timer', 'i:1750437930;', 1750437930),
('laravel_cache_jhonw@mail.com|127.0.0.1', 'i:1;', 1750435840),
('laravel_cache_jhonw@mail.com|127.0.0.1:timer', 'i:1750435840;', 1750435840);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_30_130431_create_pets_table', 1),
(5, '2025_05_30_130442_create_adoptions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pets`
--

CREATE TABLE `pets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'no-image.webp',
  `kind` varchar(255) NOT NULL,
  `weight` double NOT NULL,
  `age` int(11) NOT NULL,
  `breed` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pets`
--

INSERT INTO `pets` (`id`, `name`, `image`, `kind`, `weight`, `age`, `breed`, `location`, `description`, `active`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Firulais', 'no-image.webp', 'Dog', 8.5, 3, 'Shiba Inu', 'Tokyo', 'Very charming dog.', 1, 0, '2025-06-06 21:46:50', '2025-06-06 21:46:50'),
(2, 'Killer', 'no-image.webp', 'Dog', 5, 4, 'German Shepherd', 'Berlin', 'Its a good boy.', 1, 1, '2025-06-06 21:46:50', '2025-06-06 21:46:50'),
(3, 'Michi', 'no-image.webp', 'Cat', 1.5, 7, 'Persa', 'Abu Dhabi', 'Only chicken food.', 1, 0, '2025-06-06 21:46:50', '2025-06-06 21:46:50'),
(4, 'Chanchi', 'no-image.webp', 'Pig', 15.8, 2, 'Mini', 'New York', 'All kind of food.', 1, 0, '2025-06-06 21:46:50', '2025-06-06 21:46:50'),
(5, 'Cooper-22', 'no-image.webp', 'Pig', 35, 8, 'SkyBlue', 'Annieshire', 'Placeat necessitatibus praesentium soluta aut saepe sint vitae corrupti ea.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(6, 'Winston-21', 'no-image.webp', 'Mouse', 20, 15, 'SlateBlue', 'North Jacklynland', 'Quam non saepe voluptatum rem cum mollitia praesentium.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(7, 'Bruno-24', 'no-image.webp', 'Dog', 1, 6, 'DarkKhaki', 'Conroyberg', 'Ut accusantium rerum eos aut totam aut facilis.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(8, 'Sophie-18', 'no-image.webp', 'Dog', 33, 12, 'DarkGreen', 'South Coby', 'Qui voluptatem eligendi libero debitis sit suscipit facere omnis.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(9, 'Lilly-92', 'no-image.webp', 'Cat', 31, 4, 'SeaShell', 'North Jarenchester', 'Voluptates nihil qui sapiente aut quo dignissimos repellat aut natus ut reprehenderit qui.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(10, 'Tucker-66', 'no-image.webp', 'Dog', 58, 8, 'OliveDrab', 'Timothyhaven', 'Sed fugiat veritatis quia unde ab recusandae expedita sunt est.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(11, 'Willow-59', 'no-image.webp', 'Dog', 26, 2, 'SkyBlue', 'West Angeline', 'Labore velit maiores molestiae eos ut non quia neque excepturi.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(12, 'Otis-94', 'no-image.webp', 'Dog', 8, 18, 'Tan', 'South Pearlinebury', 'Doloremque qui porro sint eum eligendi debitis.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(13, 'Olive-59', 'no-image.webp', 'Pig', 63, 16, 'LightSlateGray', 'Margarettemouth', 'Maiores et aperiam vitae vero voluptate aut harum aut dolor dolores.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(14, 'Penny-32', 'no-image.webp', 'Cat', 34, 17, 'DarkSeaGreen', 'Dionbury', 'Consectetur inventore non mollitia qui dolores reprehenderit quo corrupti alias consectetur rerum error ut.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(15, 'Layla-93', 'no-image.webp', 'Bird', 12, 4, 'Wheat', 'New Natalie', 'Delectus labore et velit sunt et est alias ex dolore aut est.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(16, 'Mia-63', 'no-image.webp', 'Dog', 22, 8, 'Yellow', 'Andersonmouth', 'Et non fugit consequatur exercitationem saepe aperiam dolorem quos placeat quae vitae.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(17, 'Olive-65', 'no-image.webp', 'Cat', 46, 13, 'LightBlue', 'East Barrett', 'Reprehenderit vero qui quasi voluptatum qui qui est eligendi rerum voluptas numquam corporis sunt.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(18, 'Layla-69', 'no-image.webp', 'Dog', 47, 18, 'Azure', 'Alexchester', 'Pariatur id qui adipisci commodi aut explicabo.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(19, 'Jax-54', 'no-image.webp', 'Cat', 58, 18, 'Chocolate', 'Konopelskiport', 'Numquam vero culpa molestiae maxime veniam aliquam eius soluta asperiores tempore velit nihil.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(20, 'Buddy-41', 'no-image.webp', 'Cat', 38, 5, 'Chocolate', 'Mayertberg', 'Libero error nulla magni incidunt itaque ea quia corrupti itaque.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(21, 'Hazel-24', 'no-image.webp', 'Cat', 77, 14, 'OrangeRed', 'Port Brionnachester', 'Voluptatem dolor velit nobis dolores natus illum et ullam dolores exercitationem ullam corporis.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(22, 'Beau-81', 'no-image.webp', 'Pig', 16, 13, 'YellowGreen', 'Creminport', 'Aut vel sint maxime et maiores iure aut eos quia omnis voluptatem corporis rerum.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(23, 'Dixie-81', 'no-image.webp', 'Dog', 54, 8, 'DarkCyan', 'Lake Melynahaven', 'Incidunt accusamus sit eum facere molestiae provident et accusantium quia.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(24, 'Gracie-37', 'no-image.webp', 'Dog', 69, 9, 'DimGrey', 'Lake Estherport', 'Nostrum reprehenderit voluptas iste ullam dolore quae velit unde hic eaque quod.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(25, 'Maya-04', 'no-image.webp', 'Dog', 10, 4, 'CadetBlue', 'Lockmanside', 'Est omnis fugiat similique in et velit.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(26, 'Cash-23', 'no-image.webp', 'Cat', 4, 15, 'Black', 'North Sammy', 'Pariatur perferendis doloribus nesciunt voluptas sunt facere dolor aut corporis dolores laudantium optio.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(27, 'Oreo-79', 'no-image.webp', 'Pig', 38, 12, 'LightSkyBlue', 'East Jay', 'Dignissimos consequatur unde amet et quam hic.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(28, 'Scout-12', 'no-image.webp', 'Pig', 63, 3, 'LightPink', 'Breannaton', 'Quo et consectetur atque voluptates qui amet ullam.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(29, 'Bentley-76', 'no-image.webp', 'Dog', 57, 12, 'Tan', 'Port Ericafurt', 'Ut voluptatem dolorem qui perspiciatis alias odit.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(30, 'Ellie-18', 'no-image.webp', 'Cat', 80, 15, 'Orchid', 'Damariston', 'Temporibus vel quia odio non illum dolor molestiae voluptatem quasi.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(31, 'Maggie-22', 'no-image.webp', 'Dog', 51, 5, 'Gold', 'West Carolanneborough', 'At quia et hic consequatur sunt commodi aut aut autem voluptatem magnam nihil.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(32, 'Ivy-81', 'no-image.webp', 'Pig', 66, 10, 'Purple', 'Callieview', 'Culpa sed voluptas aut necessitatibus asperiores odio animi ut deleniti a.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(33, 'Winston-83', 'no-image.webp', 'Dog', 24, 2, 'Darkorange', 'South Claudia', 'Veniam ea et debitis dolorum aperiam eius ut velit dolorum minus.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(34, 'Piper-76', 'no-image.webp', 'Bird', 21, 13, 'Thistle', 'Majorview', 'Et et id hic perspiciatis necessitatibus doloremque eveniet.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(35, 'Duke-22', 'no-image.webp', 'Cat', 25, 5, 'DarkOliveGreen', 'Port Claudiamouth', 'Recusandae sit quo quo ea repudiandae eaque eos voluptates sit similique.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(36, 'Cooper-95', 'no-image.webp', 'Pig', 3, 6, 'MediumPurple', 'Garthhaven', 'Dolorem doloribus eaque explicabo ea culpa error impedit quisquam qui et.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(37, 'Murphy-02', 'no-image.webp', 'Dog', 11, 14, 'AliceBlue', 'South Kianna', 'Amet accusamus doloremque natus tempore cumque quo voluptatem nisi excepturi aut dolorem sed.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(38, 'Gunner-89', 'no-image.webp', 'Pig', 60, 14, 'Snow', 'North Janickchester', 'Explicabo cumque omnis commodi aut quia officia aut nihil ut iste aut pariatur voluptatem.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(39, 'Bruce-79', 'no-image.webp', 'Cat', 11, 17, 'Magenta', 'South Tarafort', 'Unde vero voluptatibus fugiat dolores molestias quis qui quidem debitis aliquid est.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(40, 'Sugar-49', 'no-image.webp', 'Bird', 64, 16, 'ForestGreen', 'Port Wilma', 'Error ad dolores odio similique et repellat rerum.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(41, 'Ellie-51', 'no-image.webp', 'Dog', 44, 15, 'LightSteelBlue', 'Goodwinshire', 'Quis sed excepturi aliquid ullam sit consequatur quis delectus dolorem.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(42, 'Daisy-88', 'no-image.webp', 'Dog', 20, 4, 'Silver', 'South Delilah', 'Minus et et autem eum sint commodi odio sequi voluptatem temporibus maxime est.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(43, 'Sasha-99', 'no-image.webp', 'Cat', 14, 18, 'RosyBrown', 'South Makenna', 'Quos et sapiente rerum ut dicta eos et asperiores et.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(44, 'Gunner-87', 'no-image.webp', 'Mouse', 40, 10, 'GhostWhite', 'Port Russelton', 'Et officiis ex mollitia delectus iure est vitae repellat rerum.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(45, 'Sammy-61', 'no-image.webp', 'Pig', 4, 15, 'DarkBlue', 'Port Caesar', 'Natus perspiciatis dolores quibusdam voluptates ea molestiae eos.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(46, 'Marley-65', 'no-image.webp', 'Cat', 39, 15, 'DarkGoldenRod', 'Steuberfort', 'Similique voluptatem ex repellendus impedit enim sunt sunt blanditiis eos mollitia ut.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(47, 'Ace-93', 'no-image.webp', 'Pig', 27, 3, 'Sienna', 'Port Sid', 'Illum consectetur qui fugit velit consectetur et est est amet sint quidem perspiciatis.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(48, 'Lola-71', 'no-image.webp', 'Dog', 20, 5, 'SpringGreen', 'East Erwin', 'Aperiam accusantium rem sed est et ex soluta aperiam eum.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(49, 'Lilly-98', 'no-image.webp', 'Cat', 79, 16, 'LawnGreen', 'Lake Juliannehaven', 'Fuga laboriosam numquam quisquam voluptates quidem voluptatem repellat deleniti qui quod.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(50, 'Simba-30', 'no-image.webp', 'Mouse', 32, 17, 'Gainsboro', 'South Winfieldville', 'Ex vel aspernatur dolore quae nobis qui quia illum ipsa distinctio ipsam velit voluptatem.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(51, 'Gunner-98', 'no-image.webp', 'Cat', 63, 16, 'Linen', 'Lake Owen', 'Eius voluptatem ducimus quibusdam tempore dolorem expedita architecto consequatur saepe.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(52, 'Apollo-03', 'no-image.webp', 'Bird', 40, 3, 'MediumSpringGreen', 'East Fay', 'Assumenda sint velit molestiae quasi omnis ea.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(53, 'Harper-32', 'no-image.webp', 'Pig', 39, 12, 'Aqua', 'Jeremyfurt', 'Ut quos vero in et omnis et ut sunt veniam aperiam perferendis accusantium.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(54, 'Holly-25', 'no-image.webp', 'Bird', 41, 4, 'AliceBlue', 'Olsonmouth', 'Fugiat doloribus consequatur ab corrupti cupiditate sit.', 1, 0, '2025-06-06 21:49:14', '2025-06-06 21:49:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('52IXASM61yCHXSuwwRowqkpTvTTvHTsungsRCM9g', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVDlXRENGQjBnalFnZ2dPZU1DbDRuckFueFBybzE2ZU9WRjl1d2V0eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1754482467),
('dZtIaelLGPqEpbLiVSIs0x4GkQq2tC5rff74smOA', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia1BFRHZyeEJXd3ZHaHJaS2o0aHlEaEE2aU16T2NwYVNudU5oOXJvdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1750436879),
('gOtRcmgwuMJafpf0goV8R2zUrTPhCsTDVxhgQlMZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVcxWHRQOW9udjFTNDdRcE5TM1pwVjlxQVBJekVmbHEwWENEMTQ5MCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1750437881),
('OO4d4lNvHov1W8LnuG7qkmldrFzjaxO91H8tDdCO', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1RoZUxORFhIbHI0TmVGdnpzamMwTlh6clJIUWpsVzFzMzRCeTZQNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1750436952);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document` bigint(20) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'no-photo.webp',
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `role` varchar(255) NOT NULL DEFAULT 'Customer',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `document`, `fullname`, `gender`, `birthdate`, `photo`, `phone`, `email`, `email_verified_at`, `password`, `active`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 75000001, 'John Wick', 'Male', '1964-09-12', 'john.png', '3000000001', 'jonhw@mail.com', NULL, '$2y$12$eun9PFjRdbMpKGmCrQVMNe24XkOGhkgvnjKkAQZ9OAN7UE9.5lHoS', 1, 'Admin', NULL, '2025-06-06 21:46:50', '2025-06-06 21:46:50'),
(2, 75000002, 'Lara Croft', 'Female', '1992-02-14', 'no-photo.webp', '3000000002', 'larac@mail.com', NULL, '$2y$12$rZ3XnYgfMCUFvkuICvfRmO9z5e8bJBMjGpnvDGvkizrVc6YmyrbQ.', 1, 'Customer', NULL, '2025-06-06 21:46:50', NULL),
(3, 75292310, 'Dillan Zemlak', 'Male', '1994-11-30', '75292310.png', '3201125228', 'dillan035@email.com', '2025-06-06 21:46:53', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'vBXmdx748N', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(4, 75469417, 'Zoey Barton', 'Female', '2003-06-02', '75469417.png', '3204938485', 'zoey320@email.com', '2025-06-06 21:46:55', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'kAWjydWqX8', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(5, 75419322, 'Ardith Maggio', 'Female', '1993-09-30', '75419322.png', '3202403716', 'ardith227@email.com', '2025-06-06 21:46:58', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'raztQY46l1', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(6, 75068996, 'Abagail Mraz', 'Female', '1983-04-15', '75068996.png', '3202702896', 'abagail773@email.com', '2025-06-06 21:47:00', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'bkRdan03Py', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(7, 75103062, 'Dortha Abbott', 'Female', '1993-12-15', '75103062.png', '3206867893', 'dortha882@email.com', '2025-06-06 21:47:02', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'ZCoEL2FpJG', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(8, 75818518, 'Guiseppe Goldner', 'Male', '1979-01-03', '75818518.png', '3201003797', 'guiseppe716@email.com', '2025-06-06 21:47:05', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'c1x4uSaGW0', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(9, 75325691, 'Leo Bechtelar', 'Male', '2006-01-31', '75325691.png', '3207853591', 'leo118@email.com', '2025-06-06 21:47:07', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'wQ6NKvjYaH', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(10, 75967428, 'Kitty Kohler', 'Female', '1990-09-22', '75967428.png', '3201738820', 'kitty366@email.com', '2025-06-06 21:47:10', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'EkVC2yXN1q', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(11, 75380165, 'Destiny Langworth', 'Female', '1977-04-22', '75380165.png', '3202902360', 'destiny843@email.com', '2025-06-06 21:47:17', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'DxctZvUF8K', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(12, 75948679, 'Lorna Rutherford', 'Female', '1992-03-31', '75948679.png', '3203484388', 'lorna042@email.com', '2025-06-06 21:47:19', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'KmNRpQSQxr', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(13, 75478317, 'Kory Shields', 'Male', '2006-01-22', '75478317.png', '3204680213', 'kory120@email.com', '2025-06-06 21:47:21', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'LvO7TBysTd', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(14, 75524470, 'Alfonso Grimes', 'Male', '2004-05-21', '75524470.png', '3202532294', 'alfonso933@email.com', '2025-06-06 21:47:23', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'vEZfRdoa4t', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(15, 75531152, 'Amaya Abernathy', 'Female', '1980-12-17', '75531152.png', '3203120437', 'amaya115@email.com', '2025-06-06 21:47:26', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'kQMxxTqSbw', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(16, 75064961, 'Alessandro Auer', 'Male', '1997-01-10', '75064961.png', '3206502159', 'alessandro771@email.com', '2025-06-06 21:47:29', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'P9LCO6FVYx', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(17, 75484687, 'Eusebio Zulauf', 'Male', '1994-10-26', '75484687.png', '3202059804', 'eusebio497@email.com', '2025-06-06 21:47:44', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'kHke0OXz5f', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(18, 75426000, 'Terry Kub', 'Male', '1979-03-29', '75426000.png', '3209203543', 'terry153@email.com', '2025-06-06 21:47:47', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'Jah6rMq4sf', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(19, 75963436, 'Ladarius Keeling', 'Male', '2004-06-16', '75963436.png', '3206890512', 'ladarius917@email.com', '2025-06-06 21:47:49', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'YlqGLK1b3m', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(20, 75188450, 'Hassan Wyman', 'Male', '2003-07-19', '75188450.png', '3209314206', 'hassan755@email.com', '2025-06-06 21:47:51', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'je3KpnNTtj', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(21, 75016273, 'Demarco Morar', 'Male', '1994-09-13', '75016273.png', '3207204126', 'demarco600@email.com', '2025-06-06 21:47:54', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'RhXzF7Nyyx', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(22, 75020545, 'Sallie Buckridge', 'Female', '1984-07-13', '75020545.png', '3201531159', 'sallie176@email.com', '2025-06-06 21:47:57', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'YrdNDWomBD', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(23, 75360367, 'Merritt Kiehn', 'Male', '2000-06-27', '75360367.png', '3206552581', 'merritt489@email.com', '2025-06-06 21:48:01', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'bkWJWEgpmH', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(24, 75178448, 'Mercedes Greenholt', 'Female', '2001-07-29', '75178448.png', '3204087414', 'mercedes999@email.com', '2025-06-06 21:48:04', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'YNp1iD2HM6', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(25, 75789148, 'Ken Zieme', 'Male', '2006-09-30', '75789148.png', '3207847656', 'ken637@email.com', '2025-06-06 21:48:08', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'PySrHoHsjX', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(26, 75504871, 'Rhea Koelpin', 'Female', '1984-02-07', '75504871.png', '3203858939', 'rhea415@email.com', '2025-06-06 21:48:10', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'UjpWKKUHyx', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(27, 75065598, 'Jared Pagac', 'Male', '1988-09-01', '75065598.png', '3206970376', 'jared369@email.com', '2025-06-06 21:48:12', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'KoaUjBSy0K', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(28, 75433803, 'Jamey Lehner', 'Male', '2005-06-12', '75433803.png', '3201147450', 'jamey992@email.com', '2025-06-06 21:48:15', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'fqUL8Mlkvu', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(29, 75353921, 'Kiara Smith', 'Female', '1984-10-17', '75353921.png', '3209910397', 'kiara146@email.com', '2025-06-06 21:48:17', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'XQBmUVaZ27', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(30, 75799549, 'Sandrine Reilly', 'Female', '1990-10-20', '75799549.png', '3209043532', 'sandrine623@email.com', '2025-06-06 21:48:19', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'KtNweznn7X', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(31, 75914346, 'Jannie Vandervort', 'Female', '1986-06-10', '75914346.png', '3208926021', 'jannie675@email.com', '2025-06-06 21:48:21', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'TY5hISr6XP', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(32, 75539708, 'Blaze Wuckert', 'Male', '1994-06-10', '75539708.png', '3204602192', 'blaze501@email.com', '2025-06-06 21:48:23', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'bmukOl2gKj', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(33, 75792622, 'Lila Mosciski', 'Female', '2001-06-09', '75792622.png', '3208477419', 'lila763@email.com', '2025-06-06 21:48:25', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', '00tt82C6Ey', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(34, 75429559, 'Tod Robel', 'Male', '1983-03-21', '75429559.png', '3205764598', 'tod816@email.com', '2025-06-06 21:48:27', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', '5jjNSRdN6s', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(35, 75330204, 'Justus Yost', 'Male', '2003-02-20', '75330204.png', '3207220286', 'justus881@email.com', '2025-06-06 21:48:29', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'ralVsG0N1X', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(36, 75031144, 'Alene Friesen', 'Female', '2003-09-25', '75031144.png', '3202602419', 'alene999@email.com', '2025-06-06 21:48:31', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'Us9PpmOy6p', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(37, 75581606, 'Stanford Altenwerth', 'Male', '1996-08-05', '75581606.png', '3201902153', 'stanford443@email.com', '2025-06-06 21:48:35', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'ODGhqUP8za', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(38, 75063033, 'Pearlie Hansen', 'Female', '1986-01-19', '75063033.png', '3205180133', 'pearlie055@email.com', '2025-06-06 21:48:37', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'JwzkVm9K7A', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(39, 75273660, 'Dayna Howe', 'Female', '1990-09-28', '75273660.png', '3207128207', 'dayna000@email.com', '2025-06-06 21:48:39', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'QwGZCI3V9P', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(40, 75318293, 'Jeanne Herman', 'Female', '2004-08-02', '75318293.png', '3208239061', 'jeanne213@email.com', '2025-06-06 21:48:41', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'a6IT8d2q6c', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(41, 75992350, 'Alivia Paucek', 'Female', '1991-07-06', '75992350.png', '3204685717', 'alivia676@email.com', '2025-06-06 21:48:43', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'Sj3msRAr4V', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(42, 75982888, 'Kylie Boyer', 'Female', '1992-11-27', '75982888.png', '3205958499', 'kylie122@email.com', '2025-06-06 21:48:46', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'GhpH94bJhV', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(43, 75059897, 'Casimer Krajcik', 'Male', '1986-04-19', '75059897.png', '3201272603', 'casimer264@email.com', '2025-06-06 21:48:48', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'IknU0j6ODV', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(44, 75471939, 'Shany Flatley', 'Female', '1999-01-25', '75471939.png', '3201414813', 'shany325@email.com', '2025-06-06 21:48:51', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'QZdvjhBpZT', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(45, 75343773, 'Darien Okuneva', 'Male', '1990-04-08', '75343773.png', '3208479968', 'darien205@email.com', '2025-06-06 21:48:53', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', '46E0q39BJD', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(46, 75411495, 'Chance Jerde', 'Male', '1985-11-01', '75411495.png', '3207969274', 'chance029@email.com', '2025-06-06 21:48:55', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'hH8DTCutB5', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(47, 75113013, 'Missouri Hermiston', 'Female', '1999-10-01', '75113013.png', '3207264571', 'missouri606@email.com', '2025-06-06 21:48:57', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'AO0Nxac5vp', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(48, 75230951, 'Edna Pagac', 'Female', '1996-08-23', '75230951.png', '3202126050', 'edna035@email.com', '2025-06-06 21:49:01', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'qs3nYkIk5c', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(49, 75204758, 'Clara Keeling', 'Female', '2003-03-23', '75204758.png', '3203906921', 'clara005@email.com', '2025-06-06 21:49:03', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'zOrEIpscyf', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(50, 75961025, 'Audrey Parker', 'Female', '2001-11-24', '75961025.png', '3202718732', 'audrey575@email.com', '2025-06-06 21:49:06', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'wOIydx91pH', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(51, 75884316, 'Rafaela Connelly', 'Female', '1996-10-13', '75884316.png', '3204342706', 'rafaela070@email.com', '2025-06-06 21:49:09', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'ySVpVdKHba', '2025-06-06 21:49:14', '2025-06-06 21:49:14'),
(52, 75968316, 'Kassandra Ortiz', 'Female', '2007-08-30', '75968316.png', '3200914631', 'kassandra297@email.com', '2025-06-06 21:49:14', '$2y$12$N11q7k7WMM5SPbWsTYllluot0p9HsJJj8F6ojFC4P9A2O6zjqIV7C', 1, 'Customer', 'wnrXte9twV', '2025-06-06 21:49:14', '2025-06-06 21:49:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adoptions_user_id_foreign` (`user_id`),
  ADD KEY `adoptions_pet_id_foreign` (`pet_id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pets_name_unique` (`name`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_document_unique` (`document`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pets`
--
ALTER TABLE `pets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adoptions`
--
ALTER TABLE `adoptions`
  ADD CONSTRAINT `adoptions_pet_id_foreign` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`),
  ADD CONSTRAINT `adoptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
