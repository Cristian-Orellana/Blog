-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2020 a las 01:49:54
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Manga', 'manga', 'Tipo de revista japonesa', '2020-03-03 02:37:04', '2020-03-03 02:37:04'),
(2, 'Comics', 'comics', 'Una historieta o cómic es una serie de dibujos que constituyen un relato, con o sin texto,​ así como al medio de comunicación en su conjunto.', '2020-03-03 02:38:13', '2020-03-03 02:38:13'),
(3, 'Libro', 'libro', 'Un libro (del latín liber, libri) es una obra impresa, manuscrita o pintada en una serie de hojas de papel, pergamino, vitela u otro material, unidas por un lado (es decir, encuadernadas) y protegidas con tapas, también llamadas cubiertas. Un libro puede tratar sobre cualquier tema.', '2020-03-03 02:38:59', '2020-03-03 02:38:59'),
(4, 'Manhwa', 'manhwa', 'Manhwa es el término general coreano utilizado para denominar las tiras cómicas e historietas. Fuera de Corea del Sur, el término se refiere exclusivamente a las tiras cómicas surcoreanas, uno de los principales países en la producción de historietas.', '2020-03-03 02:40:06', '2020-03-03 02:40:06'),
(5, 'Anime', 'anime', 'Anime es un término que engloba a la animación tradicional o por computadora de procedencia japonesa.', '2020-03-03 02:40:55', '2020-03-03 02:40:55'),
(6, 'Película', 'pelicula', 'Una película es una serie de imágenes fijas que, cuando se proyectan en una pantalla de forma consecutiva en rápida sucesión, crean la ilusión óptica de imágenes en movimiento. El término normalmente se usa como sinónimo de obra cinematográfica,1​ es decir, una historia (ficticia o documental), registrada en un soporte (película flexible o contenedor digital) que se graba y lee mediante un mecanismo continuo o intermitente de sucesión de imágenes. Estas películas cinematográficas también reciben el nombre de film2​ o filme.', '2020-03-03 02:41:52', '2020-03-03 02:41:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_28_131701_create_products_table', 1),
(4, '2017_10_04_194937_create_categories_table', 2),
(5, '2017_10_04_195006_create_posts_table', 2),
(6, '2017_10_04_195030_create_tags_table', 2),
(7, '2017_10_04_195057_create_post_tag_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `file` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `name`, `slug`, `excerpt`, `body`, `status`, `file`, `created_at`, `updated_at`) VALUES
(1, 43, 5, 'Psycho Pass', 'psycho-pass', 'Psycho-Pass es una serie de anime policíaca ambientada en un futuro Japón distópico producida por Production IG. Comenzó a transmitirse en el bloque noitaminA de la cadena de televisión Fuji TV a partir del 11 de octubre de 2012 terminando en marzo de 2013. Mitsuhisa Ishikawa, el presidente y CEO de Production I.G, confirmó en el panel del estudio en la Anime Expo de 2013 que había una segunda temporada de Psycho-Pass en proceso, la cual se estrenó el 9 de octubre de 2014.', '<p>&nbsp;</p><p>Argumento:</p><p>En un futuro pr&oacute;ximo, es posible medir de forma instant&aacute;nea el estado mental de una persona, la personalidad y la probabilidad de que dicha persona vaya a cometer delitos gracias a un esc&aacute;ner psico-som&aacute;tico que realiza un escaneo de las funciones del cerebro y de las dem&aacute;s funciones biol&oacute;gicas y qu&iacute;micas del cuerpo, determinando el&nbsp;<em>Psycho-Pass</em>, un n&uacute;mero asociado a un color en cada persona. Cuando esta probabilidad, medida como el &iacute;ndice de &quot;Coeficiente de Criminalidad&quot;, es demasiado alta, es decir, posee un color muy oscuro y un n&uacute;mero muy elevado, los individuos son perseguidos y detenidos con fuerza letal, si es necesario. Esta tarea es realizada por un equipo especial de potenciales delincuentes llamados Ejecutores, que son supervisados por oficiales de la polic&iacute;a conocidos como Inspectores. Los inspectores deben asegurarse de que los ejecutores en ejercicio cumplan con sus funciones dentro de los l&iacute;mites de la ley. Los ejecutores e inspectores emplean armas especiales llamadas &quot;dominadores&quot; dise&ntilde;adas para disparar s&oacute;lo contra aquellos con un coeficiente de criminalidad mayor de lo normal.</p><p>La historia sigue a una Unidad de la Divisi&oacute;n de la Oficina de Seguridad P&uacute;blica e Investigaci&oacute;n Criminal, el equivalente a la polic&iacute;a del tiempo actual, directamente responsable y administradora del trabajo de Inspectores y Ejecutores.</p><p>En Psycho-Pass se da a tratar el tema filos&oacute;fico muy a menudo, desde la perspectiva del principal antagonista como desde el mismo sistema que rige la sociedad.</p>', 'PUBLISHED', 'http://localhost/blog/public/image/3ET6IJAWMfLTLHR7DYZveltkXXbXBZ1YjDj3j3QM.jpeg', '2020-03-03 02:47:34', '2020-03-03 02:48:14'),
(2, 43, 6, 'Parasite', 'parasite', 'Parásitos (en hangul, 기생충; romanización revisada del coreano, Gisaengchung) es una película surcoreana de drama, suspenso y humor negro del año 2019, dirigida por Bong Joon-ho y protagonizada por Song Kang-ho, Lee Sun-kyun, Cho Yeo-jeong, Choi Woo-shik y Park So-dam.', '<p>Argumento:</p><p>La familia Kim, compuesta por el padre Kim Ki-taek, la madre Chung-sook, el hijo Ki-woo y la hija Ki-jeong, viven en un peque&ntilde;o apartamento en el semis&oacute;tano, trabajan en empleos temporales mal remunerados y luchan para llegar a fin de mes. El amigo de Ki-woo, Min-hyuk, que se est&aacute; preparando para estudiar en el extranjero, le regala a la familia Kim una piedra de erudito (<a href=\"https://es.wikipedia.org/wiki/Gongshi\">Gongshi</a>) que se supone les traer&aacute; riqueza. Min-hyuk le sugiere a Ki-woo hacerse pasar por estudiante universitario para obtener su trabajo como tutor de ingl&eacute;s de la hija adolescente de la rica familia Park, Da-hye.</p>', 'PUBLISHED', 'http://localhost/blog/public/image/tvb40H8ewMzzkQY1ZnmIJOU1i7uCcUppFwopQVjg.jpeg', '2020-03-03 02:54:46', '2020-03-03 02:54:46'),
(3, 43, 6, 'Once Upon a Time in Hollywood', 'once-upon-a-time-in-hollywood', 'Once Upon a Time in Hollywood (Érase una vez en Hollywood, en España, y Había una vez en Hollywood, en Hispanoamérica) es una película estadounidense de crimen y misterio de 2019, dirigida y escrita por Quentin Tarantino. La cinta fue protagonizada por Leonardo DiCaprio, Brad Pitt, Margot Robbie y otros que interpretan a grandes artistas de la época dorada de Hollywood.', '<p>Argumento:</p><p>En febrero de 1969, el actor de Hollywood Rick Dalton, protagonista de la serie de televisi&oacute;n western&nbsp;<em>Bounty Law</em>, teme que por ya no ser tan joven su carrera haya terminado. El agente de casting Marvin Schwarzs le aconseja que haga&nbsp;<a href=\"https://es.wikipedia.org/wiki/Spaghetti_western\">spaghetti westerns</a>, que Dalton siente que est&aacute;n por debajo de &eacute;l. El amigo y doble de Dalton, Cliff Booth, un&nbsp;<a href=\"https://es.wikipedia.org/wiki/Veterano\">veterano</a>&nbsp;de guerra que vive en un remolque con su&nbsp;<a href=\"https://es.wikipedia.org/wiki/American_Pitbull_Terrier\">pit bull</a>, Brandy, conduce para Dalton porque el alcoholismo de Dalton ha resultado en m&uacute;ltiples infracciones de tr&aacute;fico. Booth lucha por encontrar trabajo debido a los rumores de que &eacute;l asesin&oacute; a su esposa. La actriz&nbsp;<a href=\"https://es.wikipedia.org/wiki/Sharon_Tate\">Sharon Tate</a>&nbsp;y su esposo, el director&nbsp;<a href=\"https://es.wikipedia.org/wiki/Roman_Polanski\">Roman Polanski</a>, se mudan al&nbsp;<a href=\"https://es.wikipedia.org/wiki/10050_Cielo_Drive\">lado de Dalton</a>, quien sue&ntilde;a con hacerse amigo de ellos para restaurar su estatus. Esa noche, Tate y Polanski asisten a una fiesta llena de celebridades en la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Mansi%C3%B3n_Playboy\">Mansi&oacute;n Playboy</a>.</p>', 'PUBLISHED', 'http://localhost/blog/public/image/aZoWk3DMA9K7IHp24EC0QxuBTSTcNMob2rPPltcT.jpeg', '2020-03-03 02:57:28', '2020-03-03 02:57:29'),
(4, 43, 6, 'Joker', 'joker', 'Joker (conocida como Guasón en Hispanoamérica) es una película de suspenso y drama psicológico estadounidense de 2019 distribuida por Warner Bros. y basada en el Joker, personaje de DC Comics. Es la primera de una serie de películas basadas en DC separadas del universo extendido de DC (DCEU) compartido. La película fue dirigida por Todd Phillips a partir de un guion escrito junto con Scott Silver. Está protagonizada por Joaquin Phoenix como el personaje principal, acompañado por Robert De Niro, Zazie Beetz y Frances Conroy, entre otros. En 27 de octubre se convirtió en la película clasificación R, más taquillera superando a Deadpool.3​ Mientras que para el 15 de noviembre, se convirtió en la primera película de clasificación R en superar los 1000 millones en taquilla.4​', '<p>Argumento:</p><p>En 1981, el&nbsp;<a href=\"https://es.wikipedia.org/wiki/Payaso\">payaso de fiesta</a>&nbsp;y el aspirante a&nbsp;<a href=\"https://es.wikipedia.org/wiki/Comedia_en_vivo\">comediante</a>&nbsp;Arthur Fleck vive con su madre, Penny, en&nbsp;<a href=\"https://es.wikipedia.org/wiki/Gotham_City\">Gotham City</a>. Gotham est&aacute; plagado de delincuencia y desempleo, dejando segmentos de la poblaci&oacute;n privados de sus derechos y empobrecidos. Arthur sufre de un trastorno m&eacute;dico que lo hace re&iacute;r en momentos inapropiados; &eacute;l depende de los servicios sociales para la medicaci&oacute;n. Despu&eacute;s de que una banda de delincuentes ataca a Arthur en un callej&oacute;n, su compa&ntilde;ero de trabajo, Randall, le da un arma para protegerse. Arthur conoce a su vecina, la madre soltera Sophie Dumond, y la invita a su pr&oacute;xima rutina de comedia en vivo en un club nocturno.</p><p>Mientras se entretiene en un hospital infantil, la pistola de Arthur se cae de su bolsillo. Randall le miente a la gerencia que Arthur compr&oacute; el arma &eacute;l mismo y Arthur es despedido. En el metro, todav&iacute;a con su maquillaje de payaso, Arthur es golpeado por tres borrachos empresarios de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Empresas_Wayne\">Empresas Wayne</a>; dispara a dos en defensa propia y ejecuta el tercero. Los asesinatos son condenados por el candidato multimillonario a la alcald&iacute;a&nbsp;<a href=\"https://es.wikipedia.org/wiki/Thomas_Wayne\">Thomas Wayne</a>, quien llama a los envidiosos de las personas m&aacute;s exitosas &quot;payasos&quot;. Comienzan las manifestaciones contra los ricos de Gotham, con manifestantes vistiendo m&aacute;scaras de payaso a imagen de Arthur. Los fondos cortan el programa de servicio social, dejando a Arthur sin su medicaci&oacute;n.</p>', 'PUBLISHED', 'http://localhost/blog/public/image/aGOJQkSkgCWqwQLPqJzps8lvm5AcX0wqUd0QPRph.jpeg', '2020-03-03 03:00:22', '2020-03-03 03:00:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 1, 6, NULL, NULL),
(4, 1, 10, NULL, NULL),
(5, 2, 4, NULL, NULL),
(6, 2, 9, NULL, NULL),
(7, 2, 6, NULL, NULL),
(8, 3, 5, NULL, NULL),
(9, 3, 4, NULL, NULL),
(10, 4, 9, NULL, NULL),
(11, 4, 2, NULL, NULL),
(12, 4, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Horror', 'horror', '2020-03-03 02:42:07', '2020-03-03 02:42:07'),
(2, 'Gore', 'gore', '2020-03-03 02:42:16', '2020-03-03 02:42:16'),
(3, 'Misterio', 'misterio', '2020-03-03 02:42:25', '2020-03-03 02:42:25'),
(4, 'Comedia', 'comedia', '2020-03-03 02:42:37', '2020-03-03 02:42:37'),
(5, 'Acción', 'accion', '2020-03-03 02:42:47', '2020-03-03 02:42:47'),
(6, 'Suspenso', 'suspenso', '2020-03-03 02:43:06', '2020-03-03 02:43:06'),
(7, 'Aventura', 'aventura', '2020-03-03 02:43:24', '2020-03-03 02:43:24'),
(8, 'Desnudos', 'desnudos', '2020-03-03 02:43:44', '2020-03-03 02:43:44'),
(9, 'Drama', 'drama', '2020-03-03 02:44:00', '2020-03-03 02:44:00'),
(10, 'Ciencia Ficción', 'ciencia-ficcion', '2020-03-03 02:50:07', '2020-03-03 02:50:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Lina O\'Keefe IV', 'lauryn58@example.org', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'NXYomVmUuu', '2020-03-03 02:04:26', '2020-03-03 02:04:26'),
(2, 'Trace McCullough', 'rosie46@example.com', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'QSNONMr5lb', '2020-03-03 02:04:26', '2020-03-03 02:04:26'),
(3, 'Ms. Ariane Monahan', 'ella71@example.org', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'gbB44C5Wj1', '2020-03-03 02:04:26', '2020-03-03 02:04:26'),
(4, 'Prof. Alvah Rau', 'jude.emmerich@example.com', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'aWfIFgZC10', '2020-03-03 02:04:26', '2020-03-03 02:04:26'),
(5, 'Dr. Nakia Hackett V', 'jessika.renner@example.org', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'jMo3TsHngF', '2020-03-03 02:04:26', '2020-03-03 02:04:26'),
(6, 'Edythe Sauer', 'herminia85@example.net', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'M3zU2aQHBz', '2020-03-03 02:04:27', '2020-03-03 02:04:27'),
(7, 'Ms. Brittany Stoltenberg IV', 'pansy65@example.net', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'SIS7Nk1tJS', '2020-03-03 02:04:27', '2020-03-03 02:04:27'),
(8, 'Abigayle Bode', 'zbartell@example.net', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'Xl2XoxuPMl', '2020-03-03 02:04:27', '2020-03-03 02:04:27'),
(9, 'Jaylin Schoen II', 'jones.breanne@example.com', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'sR7UZ923ig', '2020-03-03 02:04:27', '2020-03-03 02:04:27'),
(10, 'Dr. Marshall King', 'apowlowski@example.com', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'PMR8AGkpWH', '2020-03-03 02:04:27', '2020-03-03 02:04:27'),
(11, 'Armand Olson', 'judge54@example.net', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'NfuumaJVEJ', '2020-03-03 02:04:27', '2020-03-03 02:04:27'),
(12, 'Edgar Hagenes', 'noe.von@example.org', '$2y$10$NI6Ebvu8rBd0lZnwXAUqP.TUAbCyb6fUkHftCUu8OlRXeSYv6vISu', 'x8DW6ZNpuF', '2020-03-03 02:04:27', '2020-03-03 02:04:27'),
(13, 'Aidan Schaefer', 'conroy.amy@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', '9R93MkKqXw', '2020-03-03 02:34:40', '2020-03-03 02:34:40'),
(14, 'Dr. Zackary Goyette', 'orval.nikolaus@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'LeYtjNVo3J', '2020-03-03 02:34:40', '2020-03-03 02:34:40'),
(15, 'Prof. Arlo Wolff Jr.', 'junior.smith@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'a1vePwInA4', '2020-03-03 02:34:40', '2020-03-03 02:34:40'),
(16, 'Dell Jones', 'osatterfield@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'gdZzKQWtXh', '2020-03-03 02:34:40', '2020-03-03 02:34:40'),
(17, 'Axel Upton', 'jaskolski.manuel@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', '782b4OTKwN', '2020-03-03 02:34:40', '2020-03-03 02:34:40'),
(18, 'Aliza Daugherty', 'kcruickshank@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'eAxn8t2lA6', '2020-03-03 02:34:40', '2020-03-03 02:34:40'),
(19, 'Miss Mylene Rowe', 'moises91@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'KfzAj7Giji', '2020-03-03 02:34:40', '2020-03-03 02:34:40'),
(20, 'Cooper Ruecker DDS', 'nicholas.gaylord@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'u7frECIyvq', '2020-03-03 02:34:40', '2020-03-03 02:34:40'),
(21, 'Katelin Cremin', 'fritz.kassulke@example.com', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'vatNLPCKeT', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(22, 'Stephania Dickinson', 'magdalen.treutel@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'BzISDURST8', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(23, 'Krystal Kessler DDS', 'anibal.powlowski@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'KkzGRyW1tr', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(24, 'Annetta Williamson', 'sister.botsford@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'wQ3lXIQiGY', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(25, 'Duncan Wintheiser', 'emmanuelle62@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', '2qqNPrwOHR', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(26, 'Mrs. Nyah Schimmel', 'lynch.sebastian@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'Jk5f9deTGt', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(27, 'Jake Rice', 'ikuphal@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'VdYtPshIhu', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(28, 'Griffin Donnelly', 'esperanza.harber@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'oDtwWQjFQU', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(29, 'Dr. Erik Pfeffer', 'moore.sonia@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', '0NpgCyHf0T', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(30, 'Luigi Roob MD', 'rpacocha@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'WR9J6vE11D', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(31, 'Cristobal Kozey IV', 'colten33@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'rnnJT4oa5f', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(32, 'Kara Spencer', 'scot.mosciski@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'B85HjFhhgK', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(33, 'Dr. Chelsie Schoen', 'kcarter@example.com', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'iCrju6LqUR', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(34, 'Barton Corkery', 'bartholome00@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'hhFdPKtRF2', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(35, 'Tamara O\'Reilly', 'carter.mallory@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', '68NdD7At0f', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(36, 'Andres Kuhn', 'meghan.hyatt@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', '4qjrBDIgwG', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(37, 'Erling O\'Reilly', 'belle.carroll@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'xXjjLqhUxu', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(38, 'Lori Hudson', 'kelli62@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'HbRK0dgZqB', '2020-03-03 02:34:41', '2020-03-03 02:34:41'),
(39, 'Mrs. Agustina Wiza', 'bledner@example.org', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', '2GY1dN1FCz', '2020-03-03 02:34:42', '2020-03-03 02:34:42'),
(40, 'Prof. Katherine Bechtelar', 'kkemmer@example.net', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', '0ofuVoeLNq', '2020-03-03 02:34:42', '2020-03-03 02:34:42'),
(41, 'Berneice Leffler', 'waelchi.bridget@example.com', '$2y$10$pUzWv2eEl47zueWyW/BLZOdQJvdBrjIByPmL4LUeeeX7J5qsoaG0W', 'jzy1fsm4Uj', '2020-03-03 02:34:42', '2020-03-03 02:34:42'),
(42, 'Italo Morales', 'i@italomoralesf.com', '$2y$10$vQ7i1tzcnbTqpjPBOPdYcO.zMn1.O5YbW4WKLqVgeIONEhnZ/8eM.', NULL, '2020-03-03 02:34:42', '2020-03-03 02:34:42'),
(43, 'Cristian Orellana', 'cristianootj@gmail.com', '$2y$10$l5ZZLD8szKEOnInY9eqSc.NHyqv7LN7849vZ6Mgx6PDD/hh/.f1ya', NULL, '2020-03-03 02:35:59', '2020-03-03 02:35:59');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
