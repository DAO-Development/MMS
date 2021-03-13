-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 13 2021 г., 19:15
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-06 20:24:06', '2021-03-06 17:24:06', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/mms/wordpress', 'yes'),
(2, 'home', 'http://localhost/mms/wordpress', 'yes'),
(3, 'blogname', 'Mio Massage Studio', 'yes'),
(4, 'blogdescription', 'Студия массажа №1 в Москве', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'polya.bagrowa@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:128:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"promotions/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"promotions/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"promotions/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"promotions/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"promotions/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"promotions/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"promotions/([^/]+)/embed/?$\";s:43:\"index.php?promotions=$matches[1]&embed=true\";s:31:\"promotions/([^/]+)/trackback/?$\";s:37:\"index.php?promotions=$matches[1]&tb=1\";s:39:\"promotions/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?promotions=$matches[1]&paged=$matches[2]\";s:46:\"promotions/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?promotions=$matches[1]&cpage=$matches[2]\";s:35:\"promotions/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?promotions=$matches[1]&page=$matches[2]\";s:27:\"promotions/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"promotions/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"promotions/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"promotions/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"promotions/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"promotions/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mms', 'yes'),
(41, 'stylesheet', 'mms', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1630603446', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '1', 'yes'),
(101, 'WPLANG', 'ru_RU', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:7:{i:1615659847;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1615699447;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1615700200;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1615742647;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1615742681;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1615742682;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1615052921;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(138, 'can_compress_scripts', '1', 'no'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(154, 'current_theme', 'Mio Massage Studio', 'yes'),
(155, 'theme_mods_mms', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(158, 'category_children', 'a:0:{}', 'yes'),
(177, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(181, '_transient_health-check-site-status-result', '{\"good\":\"13\",\"recommended\":\"7\",\"critical\":\"0\"}', 'yes'),
(185, 'new_admin_email', 'polya.bagrowa@gmail.com', 'yes'),
(219, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1615656339;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(220, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"polya.bagrowa@gmail.com\";s:7:\"version\";s:3:\"5.7\";s:9:\"timestamp\";i:1615397790;}', 'no'),
(222, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(225, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1615656341;s:7:\"checked\";a:3:{s:3:\"mms\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(258, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1615656341;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(259, 'acf_version', '5.9.5', 'yes'),
(297, '_site_transient_timeout_theme_roots', '1615656422', 'no'),
(298, '_site_transient_theme_roots', 'a:3:{s:3:\"mms\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2021/03/MMS.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1968;s:6:\"height\";i:1838;s:4:\"file\";s:15:\"2021/03/MMS.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"MMS-300x280.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"MMS-1024x956.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:956;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"MMS-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"MMS-768x717.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:717;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"MMS-1536x1435.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1435;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:2:\"KK\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_wp_attachment_image_alt', 'logo'),
(6, 6, '_wp_attached_file', '2021/03/cropped-MMS.jpg'),
(7, 6, '_wp_attachment_context', 'site-icon'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:23:\"2021/03/cropped-MMS.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cropped-MMS-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-MMS-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:23:\"cropped-MMS-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:23:\"cropped-MMS-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:23:\"cropped-MMS-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:21:\"cropped-MMS-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 7, '_wp_attached_file', '2021/03/cropped-MMS-1.jpg'),
(10, 7, '_wp_attachment_context', 'custom-logo'),
(11, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1841;s:6:\"height\";i:1837;s:4:\"file\";s:25:\"2021/03/cropped-MMS-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-MMS-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"cropped-MMS-1-1024x1022.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1022;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-MMS-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"cropped-MMS-1-768x766.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:766;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:27:\"cropped-MMS-1-1536x1533.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1533;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 12, '_menu_item_type', 'post_type'),
(42, 12, '_menu_item_menu_item_parent', '0'),
(43, 12, '_menu_item_object_id', '2'),
(44, 12, '_menu_item_object', 'page'),
(45, 12, '_menu_item_target', ''),
(46, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 12, '_menu_item_xfn', ''),
(48, 12, '_menu_item_url', ''),
(50, 13, '_menu_item_type', 'post_type'),
(51, 13, '_menu_item_menu_item_parent', '0'),
(52, 13, '_menu_item_object_id', '2'),
(53, 13, '_menu_item_object', 'page'),
(54, 13, '_menu_item_target', ''),
(55, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 13, '_menu_item_xfn', ''),
(57, 13, '_menu_item_url', ''),
(59, 14, '_menu_item_type', 'post_type'),
(60, 14, '_menu_item_menu_item_parent', '0'),
(61, 14, '_menu_item_object_id', '2'),
(62, 14, '_menu_item_object', 'page'),
(63, 14, '_menu_item_target', ''),
(64, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 14, '_menu_item_xfn', ''),
(66, 14, '_menu_item_url', ''),
(68, 15, '_menu_item_type', 'post_type'),
(69, 15, '_menu_item_menu_item_parent', '0'),
(70, 15, '_menu_item_object_id', '2'),
(71, 15, '_menu_item_object', 'page'),
(72, 15, '_menu_item_target', ''),
(73, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 15, '_menu_item_xfn', ''),
(75, 15, '_menu_item_url', ''),
(77, 16, '_menu_item_type', 'post_type'),
(78, 16, '_menu_item_menu_item_parent', '0'),
(79, 16, '_menu_item_object_id', '2'),
(80, 16, '_menu_item_object', 'page'),
(81, 16, '_menu_item_target', ''),
(82, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 16, '_menu_item_xfn', ''),
(84, 16, '_menu_item_url', ''),
(88, 2, '_edit_lock', '1615452882:1'),
(89, 17, '_edit_lock', '1615455100:1'),
(90, 18, '_edit_lock', '1615469631:1'),
(94, 20, '_edit_lock', '1615459733:1'),
(100, 23, '_edit_lock', '1615470055:1'),
(106, 26, '_wp_attached_file', '2021/03/lpg-massage2.png'),
(107, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:356;s:6:\"height\";i:503;s:4:\"file\";s:24:\"2021/03/lpg-massage2.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"lpg-massage2-212x300.png\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"lpg-massage2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"promotions\";a:4:{s:4:\"file\";s:24:\"lpg-massage2-350x500.png\";s:5:\"width\";i:350;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 20, '_thumbnail_id', '26'),
(110, 27, '_edit_lock', '1615535384:1'),
(111, 28, '_wp_attached_file', '2021/03/neck-massage.png'),
(112, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:300;s:4:\"file\";s:24:\"2021/03/neck-massage.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"neck-massage-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"neck-massage-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"promotions\";a:4:{s:4:\"file\";s:24:\"neck-massage-350x300.png\";s:5:\"width\";i:350;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 27, '_thumbnail_id', '28'),
(114, 29, '_edit_last', '1'),
(115, 29, '_edit_lock', '1615565626:1'),
(116, 27, '_edit_last', '1'),
(117, 27, 'cost', '950'),
(118, 27, '_cost', 'field_604a0901e2cd2'),
(119, 27, 'duration', '20'),
(120, 27, '_duration', 'field_604a0964e2cd3'),
(121, 27, 'cost_1_areas', ''),
(122, 27, '_cost_1_areas', 'field_604a09f7f821a'),
(123, 27, 'cost_2_areas', ''),
(124, 27, '_cost_2_areas', 'field_604a0a017af6c'),
(125, 27, 'cost_3_areas', ''),
(126, 27, '_cost_3_areas', 'field_604a0a2f7af6d'),
(127, 36, '_wp_attached_file', '2021/03/hand-massage2-1.png'),
(128, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:358;s:6:\"height\";i:505;s:4:\"file\";s:27:\"2021/03/hand-massage2-1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"hand-massage2-1-213x300.png\";s:5:\"width\";i:213;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"hand-massage2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"promotions\";a:4:{s:4:\"file\";s:27:\"hand-massage2-1-347x490.png\";s:5:\"width\";i:347;s:6:\"height\";i:490;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 18, '_thumbnail_id', '36'),
(133, 38, '_wp_attached_file', '2021/03/sertificate-1.png'),
(134, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:504;s:4:\"file\";s:25:\"2021/03/sertificate-1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"sertificate-1-214x300.png\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"sertificate-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"promotions\";a:4:{s:4:\"file\";s:25:\"sertificate-1-350x490.png\";s:5:\"width\";i:350;s:6:\"height\";i:490;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 23, '_thumbnail_id', '38'),
(136, 39, '_edit_lock', '1615534669:1'),
(137, 39, '_thumbnail_id', '28'),
(138, 39, '_edit_last', '1'),
(139, 39, 'cost', '2000'),
(140, 39, '_cost', 'field_604a0901e2cd2'),
(141, 39, 'duration', '0'),
(142, 39, '_duration', 'field_604a0964e2cd3'),
(143, 39, 'cost_1_areas', ''),
(144, 39, '_cost_1_areas', 'field_604a09f7f821a'),
(145, 39, 'cost_2_areas', ''),
(146, 39, '_cost_2_areas', 'field_604a0a017af6c'),
(147, 39, 'cost_3_areas', ''),
(148, 39, '_cost_3_areas', 'field_604a0a2f7af6d'),
(149, 40, '_edit_lock', '1615569376:1'),
(150, 40, '_thumbnail_id', '28'),
(151, 40, '_edit_last', '1'),
(152, 40, 'cost', '0'),
(153, 40, '_cost', 'field_604a0901e2cd2'),
(154, 40, 'duration', '0'),
(155, 40, '_duration', 'field_604a0964e2cd3'),
(156, 40, 'cost_1_areas', ''),
(157, 40, '_cost_1_areas', 'field_604a09f7f821a'),
(158, 40, 'cost_2_areas', ''),
(159, 40, '_cost_2_areas', 'field_604a0a017af6c'),
(160, 40, 'cost_3_areas', ''),
(161, 40, '_cost_3_areas', 'field_604a0a2f7af6d'),
(162, 40, 'min_cost', '2300'),
(163, 40, '_min_cost', 'field_604b1581fded2'),
(164, 40, 'max_cost', '3500'),
(165, 40, '_max_cost', 'field_604a0901e2cd2'),
(166, 40, 'min_duration', '60'),
(167, 40, '_min_duration', 'field_604a0964e2cd3'),
(168, 40, 'max_duration', '90'),
(169, 40, '_max_duration', 'field_604b15d840cf9'),
(170, 39, 'min_cost', '1500'),
(171, 39, '_min_cost', 'field_604b1581fded2'),
(172, 39, 'max_cost', '2000'),
(173, 39, '_max_cost', 'field_604a0901e2cd2'),
(174, 39, 'min_duration', '30'),
(175, 39, '_min_duration', 'field_604a0964e2cd3'),
(176, 39, 'max_duration', '45'),
(177, 39, '_max_duration', 'field_604b15d840cf9'),
(178, 27, 'min_cost', ''),
(179, 27, '_min_cost', 'field_604b1581fded2'),
(180, 27, 'max_cost', '950'),
(181, 27, '_max_cost', 'field_604a0901e2cd2'),
(182, 27, 'min_duration', ''),
(183, 27, '_min_duration', 'field_604a0964e2cd3'),
(184, 27, 'max_duration', '20'),
(185, 27, '_max_duration', 'field_604b15d840cf9'),
(186, 43, '_edit_lock', '1615570912:1'),
(187, 43, '_edit_last', '1'),
(188, 43, 'min_cost', '1350'),
(189, 43, '_min_cost', 'field_604b1581fded2'),
(190, 43, 'max_cost', '2800'),
(191, 43, '_max_cost', 'field_604a0901e2cd2'),
(192, 43, 'cost_1_areas', ''),
(193, 43, '_cost_1_areas', 'field_604a09f7f821a'),
(194, 43, 'cost_2_areas', ''),
(195, 43, '_cost_2_areas', 'field_604a0a017af6c'),
(196, 43, 'cost_3_areas', ''),
(197, 43, '_cost_3_areas', 'field_604a0a2f7af6d'),
(198, 43, 'min_duration', '30'),
(199, 43, '_min_duration', 'field_604a0964e2cd3'),
(200, 43, 'max_duration', '90'),
(201, 43, '_max_duration', 'field_604b15d840cf9'),
(202, 44, '_wp_attached_file', '2021/03/correction.png'),
(203, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:300;s:4:\"file\";s:22:\"2021/03/correction.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"correction-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"correction-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"promotions\";a:4:{s:4:\"file\";s:22:\"correction-350x292.png\";s:5:\"width\";i:350;s:6:\"height\";i:292;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 43, '_thumbnail_id', '44'),
(205, 46, '_edit_last', '1'),
(206, 46, '_edit_lock', '1615654475:1'),
(207, 52, '_edit_lock', '1615655531:1'),
(208, 53, '_wp_attached_file', '2021/03/specialist3.png'),
(209, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:294;s:6:\"height\";i:188;s:4:\"file\";s:23:\"2021/03/specialist3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"specialist3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 55, '_wp_attached_file', '2021/03/specialist2.png'),
(213, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:294;s:6:\"height\";i:184;s:4:\"file\";s:23:\"2021/03/specialist2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"specialist2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 52, '_edit_last', '1'),
(216, 52, 'last_name', 'Бутко'),
(217, 52, '_last_name', 'field_604cb37a3bed2'),
(218, 52, 'first_name', 'Игорь'),
(219, 52, '_first_name', 'field_604cb3173bed0'),
(220, 52, 'middle_name', 'Васильевич'),
(221, 52, '_middle_name', 'field_604cb34e3bed1'),
(222, 52, 'experience', '2010'),
(223, 52, '_experience', 'field_604cb3b63bed3'),
(224, 52, 'description', 'Опытный работник с большим стажем. Работает в компании 10 лет'),
(225, 52, '_description', 'field_604cb4053bed4'),
(226, 56, '_edit_lock', '1615640025:1'),
(227, 56, '_thumbnail_id', '55'),
(228, 56, '_edit_last', '1'),
(229, 56, 'last_name', 'Артёмов'),
(230, 56, '_last_name', 'field_604cb37a3bed2'),
(231, 56, 'first_name', 'Николай'),
(232, 56, '_first_name', 'field_604cb3173bed0'),
(233, 56, 'middle_name', 'Ленидович'),
(234, 56, '_middle_name', 'field_604cb34e3bed1'),
(235, 56, 'experience', '2015'),
(236, 56, '_experience', 'field_604cb3b63bed3'),
(237, 56, 'description', 'Опытный работник с большим стажем. Работает в компании 6 лет'),
(238, 56, '_description', 'field_604cb4053bed4'),
(239, 57, '_edit_lock', '1615640239:1'),
(240, 57, '_thumbnail_id', '53'),
(241, 57, '_edit_last', '1'),
(242, 57, 'last_name', 'Мамонов'),
(243, 57, '_last_name', 'field_604cb37a3bed2'),
(244, 57, 'first_name', 'Дмитрий'),
(245, 57, '_first_name', 'field_604cb3173bed0'),
(246, 57, 'middle_name', 'Андреевич'),
(247, 57, '_middle_name', 'field_604cb34e3bed1'),
(248, 57, 'experience', '2018'),
(249, 57, '_experience', 'field_604cb3b63bed3'),
(250, 57, 'description', 'Опытный работник с большим стажем. Работает в компании 3 года'),
(251, 57, '_description', 'field_604cb4053bed4'),
(252, 58, '_wp_attached_file', '2021/03/specialist1.png'),
(253, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:291;s:6:\"height\";i:183;s:4:\"file\";s:23:\"2021/03/specialist1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"specialist1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(254, 52, '_thumbnail_id', '58'),
(255, 59, '_edit_lock', '1615655591:1'),
(256, 59, '_thumbnail_id', '55'),
(257, 59, '_edit_last', '1'),
(258, 59, 'last_name', 'Иванов'),
(259, 59, '_last_name', 'field_604cb37a3bed2'),
(260, 59, 'first_name', 'Иван'),
(261, 59, '_first_name', 'field_604cb3173bed0'),
(262, 59, 'middle_name', ''),
(263, 59, '_middle_name', 'field_604cb34e3bed1'),
(264, 59, 'experience', '2018'),
(265, 59, '_experience', 'field_604cb3b63bed3'),
(266, 59, 'description', 'Опытный работник с большим стажем. Работает в компании 3 года'),
(267, 59, '_description', 'field_604cb4053bed4');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-03-06 20:24:06', '2021-03-06 17:24:06', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2021-03-06 20:24:06', '2021-03-06 17:24:06', '', 0, 'http://localhost/mms/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-03-06 20:24:06', '2021-03-06 17:24:06', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/mms/wordpress/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-03-06 20:24:06', '2021-03-06 17:24:06', '', 0, 'http://localhost/mms/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-06 20:24:06', '2021-03-06 17:24:06', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://localhost/mms/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-03-06 20:24:06', '2021-03-06 17:24:06', '', 0, 'http://localhost/mms/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-03-07 19:40:49', '2021-03-07 16:40:49', '', 'MMS', '', 'inherit', 'open', 'closed', '', 'mms', '', '', '2021-03-07 19:41:15', '2021-03-07 16:41:15', '', 0, 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/MMS.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2021-03-07 19:41:24', '2021-03-07 16:41:24', 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/cropped-MMS.jpg', 'cropped-MMS.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-mms-jpg', '', '', '2021-03-07 19:41:24', '2021-03-07 16:41:24', '', 0, 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/cropped-MMS.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2021-03-07 19:42:04', '2021-03-07 16:42:04', 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/cropped-MMS-1.jpg', 'cropped-MMS-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-mms-1-jpg', '', '', '2021-03-07 19:42:04', '2021-03-07 16:42:04', '', 0, 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/cropped-MMS-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2021-03-07 19:45:41', '0000-00-00 00:00:00', '{\n    \"site_icon\": {\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-07 16:42:13\"\n    },\n    \"mms::custom_logo\": {\n        \"value\": 7,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-07 16:42:13\"\n    }\n}', '', '', 'draft', 'closed', 'closed', '', '88bc3925-9ed4-4870-9536-901f99c34701', '', '', '2021-03-07 19:45:41', '2021-03-07 16:45:41', '', 0, 'http://localhost/mms/wordpress/?p=8', 0, 'customize_changeset', '', 0),
(12, 1, '2021-03-07 20:14:47', '2021-03-07 17:14:47', '', 'О нас', '', 'publish', 'closed', 'closed', '', '12', '', '', '2021-03-07 20:34:47', '2021-03-07 17:34:47', '', 0, 'http://localhost/mms/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2021-03-07 20:34:19', '2021-03-07 17:34:19', '', 'Услуги', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8', '', '', '2021-03-07 20:34:47', '2021-03-07 17:34:47', '', 0, 'http://localhost/mms/wordpress/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2021-03-07 20:34:19', '2021-03-07 17:34:19', '', 'Специалисты', '', 'publish', 'closed', 'closed', '', '14', '', '', '2021-03-07 20:34:47', '2021-03-07 17:34:47', '', 0, 'http://localhost/mms/wordpress/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2021-03-07 20:34:19', '2021-03-07 17:34:19', '', 'Акции и сертификаты', '', 'publish', 'closed', 'closed', '', '15', '', '', '2021-03-07 20:34:47', '2021-03-07 17:34:47', '', 0, 'http://localhost/mms/wordpress/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2021-03-07 20:34:19', '2021-03-07 17:34:19', '', 'Массаж на выезд', '', 'publish', 'closed', 'closed', '', '16', '', '', '2021-03-07 20:34:47', '2021-03-07 17:34:47', '', 0, 'http://localhost/mms/wordpress/?p=16', 5, 'nav_menu_item', '', 0),
(17, 1, '2021-03-11 12:33:53', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-11 12:33:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/mms/wordpress/?post_type=promotions&p=17', 0, 'promotions', '', 0),
(18, 1, '2021-03-11 12:36:08', '2021-03-11 09:36:08', '<!-- wp:paragraph -->\n<p>Специальная цена на ручной массаж</p>\n<!-- /wp:paragraph -->', 'Ручной массаж', '', 'publish', 'closed', 'closed', '', '%d1%80%d1%83%d1%87%d0%bd%d0%be%d0%b9-%d0%bc%d0%b0%d1%81%d1%81%d0%b0%d0%b6', '', '', '2021-03-11 16:36:15', '2021-03-11 13:36:15', '', 0, 'http://localhost/mms/wordpress/?post_type=promotions&#038;p=18', 0, 'promotions', '', 0),
(20, 1, '2021-03-11 12:41:27', '2021-03-11 09:41:27', '', 'LPG массаж', '', 'publish', 'closed', 'closed', '', 'lpg-%d0%bc%d0%b0%d1%81%d1%81%d0%b0%d0%b6', '', '', '2021-03-11 13:51:15', '2021-03-11 10:51:15', '', 0, 'http://localhost/mms/wordpress/?post_type=promotions&#038;p=20', 0, 'promotions', '', 0),
(23, 1, '2021-03-11 12:41:54', '2021-03-11 09:41:54', '', 'Подарочный сертификат', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%be%d0%b4%d0%b0%d1%80%d0%be%d1%87%d0%bd%d1%8b%d0%b9-%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82', '', '', '2021-03-11 16:43:15', '2021-03-11 13:43:15', '', 0, 'http://localhost/mms/wordpress/?post_type=promotions&#038;p=23', 0, 'promotions', '', 0),
(26, 1, '2021-03-11 13:50:58', '2021-03-11 10:50:58', '', 'lpg-massage2', '', 'inherit', 'open', 'closed', '', 'lpg-massage2', '', '', '2021-03-11 13:50:58', '2021-03-11 10:50:58', '', 20, 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/lpg-massage2.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2021-03-11 14:40:47', '2021-03-11 11:40:47', '<!-- wp:list -->\n<ul><li>Массаж мышцы шейно-плечевого пояса</li></ul>\n<!-- /wp:list -->', 'Массаж шейно-воротниковой зоны', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d1%81%d1%81%d0%b0%d0%b6-%d1%88%d0%b5%d0%b9%d0%bd%d0%be-%d0%b2%d0%be%d1%80%d0%be%d1%82%d0%bd%d0%b8%d0%ba%d0%be%d0%b2%d0%be%d0%b9-%d0%b7%d0%be%d0%bd%d1%8b', '', '', '2021-03-12 10:38:16', '2021-03-12 07:38:16', '', 0, 'http://localhost/mms/wordpress/?post_type=services&#038;p=27', 0, 'services', '', 0),
(28, 1, '2021-03-11 14:42:06', '2021-03-11 11:42:06', '', 'neck-massage', '', 'inherit', 'open', 'closed', '', 'neck-massage', '', '', '2021-03-11 14:42:06', '2021-03-11 11:42:06', '', 27, 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/neck-massage.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2021-03-11 15:15:43', '2021-03-11 12:15:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"services\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Для услуг', '%d0%b4%d0%bb%d1%8f-%d1%83%d1%81%d0%bb%d1%83%d0%b3', 'publish', 'closed', 'closed', '', 'group_604a08dfe659c', '', '', '2021-03-12 10:36:03', '2021-03-12 07:36:03', '', 0, 'http://localhost/mms/wordpress/?post_type=acf-field-group&#038;p=29', 0, 'acf-field-group', '', 0),
(30, 1, '2021-03-11 15:15:43', '2021-03-11 12:15:43', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:144:\"Введите максимальную стоимость, ели существует диапазон, или стоимость услуги\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:10000;s:4:\"step\";s:0:\"\";}', 'Максимальная стоимость', 'max_cost', 'publish', 'closed', 'closed', '', 'field_604a0901e2cd2', '', '', '2021-03-12 10:34:53', '2021-03-12 07:34:53', '', 29, 'http://localhost/mms/wordpress/?post_type=acf-field&#038;p=30', 1, 'acf-field', '', 0),
(31, 1, '2021-03-11 15:15:43', '2021-03-11 12:15:43', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:147:\"Введите минимальную длительность процедуры в минутах, если существует диапазон\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:240;s:4:\"step\";s:0:\"\";}', 'Минимальная длительность', 'min_duration', 'publish', 'closed', 'closed', '', 'field_604a0964e2cd3', '', '', '2021-03-12 10:36:03', '2021-03-12 07:36:03', '', 29, 'http://localhost/mms/wordpress/?post_type=acf-field&#038;p=31', 5, 'acf-field', '', 0),
(32, 1, '2021-03-11 15:15:57', '2021-03-11 12:15:57', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:51:\"Введите стоимость для 1 зоны\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:10000;s:4:\"step\";s:0:\"\";}', 'Стоимость 1 зоны', 'cost_1_areas', 'publish', 'closed', 'closed', '', 'field_604a09f7f821a', '', '', '2021-03-12 10:19:23', '2021-03-12 07:19:23', '', 29, 'http://localhost/mms/wordpress/?post_type=acf-field&#038;p=32', 2, 'acf-field', '', 0),
(33, 1, '2021-03-11 15:17:43', '2021-03-11 12:17:43', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:62:\"Введите стоимость услуги для 2 зон\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:10000;s:4:\"step\";s:0:\"\";}', 'Стоимость 2 зон', 'cost_2_areas', 'publish', 'closed', 'closed', '', 'field_604a0a017af6c', '', '', '2021-03-12 10:19:23', '2021-03-12 07:19:23', '', 29, 'http://localhost/mms/wordpress/?post_type=acf-field&#038;p=33', 3, 'acf-field', '', 0),
(34, 1, '2021-03-11 15:17:43', '2021-03-11 12:17:43', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:62:\"Введите стоимость услуги для 3 зон\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:10000;s:4:\"step\";s:0:\"\";}', 'Стоимость 3 зон', 'cost_3_areas', 'publish', 'closed', 'closed', '', 'field_604a0a2f7af6d', '', '', '2021-03-12 10:19:23', '2021-03-12 07:19:23', '', 29, 'http://localhost/mms/wordpress/?post_type=acf-field&#038;p=34', 4, 'acf-field', '', 0),
(36, 1, '2021-03-11 16:36:00', '2021-03-11 13:36:00', '', 'hand-massage2', '', 'inherit', 'open', 'closed', '', 'hand-massage2-2', '', '', '2021-03-11 16:36:00', '2021-03-11 13:36:00', '', 18, 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/hand-massage2-1.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2021-03-11 16:42:48', '2021-03-11 13:42:48', '', 'sertificate', '', 'inherit', 'open', 'closed', '', 'sertificate-2', '', '', '2021-03-11 16:42:48', '2021-03-11 13:42:48', '', 23, 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/sertificate-1.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2021-03-11 16:46:28', '2021-03-11 13:46:28', '<!-- wp:list -->\n<ul><li>Классический массаж спины</li><li>Оздоровительный массаж спины</li><li>Спортивный массаж спины</li></ul>\n<!-- /wp:list -->', 'Массаж спины', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d1%81%d1%81%d0%b0%d0%b6-%d1%81%d0%bf%d0%b8%d0%bd%d1%8b', '', '', '2021-03-12 10:37:17', '2021-03-12 07:37:17', '', 0, 'http://localhost/mms/wordpress/?post_type=services&#038;p=39', 0, 'services', '', 0),
(40, 1, '2021-03-11 16:47:46', '2021-03-11 13:47:46', '<!-- wp:list -->\n<ul><li>Релаксирующий массаж</li><li>Классический массаж</li><li>Оздоровительный массаж</li><li>Спортивный массаж</li><li>СПА-массаж</li></ul>\n<!-- /wp:list -->', 'Массаж всего тела', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d1%81%d1%81%d0%b0%d0%b6-%d0%b2%d1%81%d0%b5%d0%b3%d0%be-%d1%82%d0%b5%d0%bb%d0%b0', '', '', '2021-03-12 10:36:42', '2021-03-12 07:36:42', '', 0, 'http://localhost/mms/wordpress/?post_type=services&#038;p=40', 0, 'services', '', 0),
(41, 1, '2021-03-12 10:18:16', '2021-03-12 07:18:16', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:123:\"Введите минимальную стоимость на услугу, если существует диапазон.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:10000;s:4:\"step\";s:0:\"\";}', 'Минимальная стоимость', 'min_cost', 'publish', 'closed', 'closed', '', 'field_604b1581fded2', '', '', '2021-03-12 10:34:53', '2021-03-12 07:34:53', '', 29, 'http://localhost/mms/wordpress/?post_type=acf-field&#038;p=41', 0, 'acf-field', '', 0),
(42, 1, '2021-03-12 10:19:23', '2021-03-12 07:19:23', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:181:\"Введите максимальную длительность в минутах, если существует диапазон или длительность процедуры\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:10000;s:4:\"step\";s:0:\"\";}', 'Максимальная длительность', 'max_duration', 'publish', 'closed', 'closed', '', 'field_604b15d840cf9', '', '', '2021-03-12 10:36:03', '2021-03-12 07:36:03', '', 29, 'http://localhost/mms/wordpress/?post_type=acf-field&#038;p=42', 6, 'acf-field', '', 0),
(43, 1, '2021-03-12 20:39:36', '2021-03-12 17:39:36', '<!-- wp:list -->\n<ul><li>Антицеллюлитный массаж</li><li>Моделирующий массаж</li><li>Лимфодренажный массаж</li><li>LPG массаж</li><li>Креольский массаж</li></ul>\n<!-- /wp:list -->', 'Коррекция фигуры', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d1%80%d1%80%d0%b5%d0%ba%d1%86%d0%b8%d1%8f-%d1%84%d0%b8%d0%b3%d1%83%d1%80%d1%8b', '', '', '2021-03-12 20:41:51', '2021-03-12 17:41:51', '', 0, 'http://localhost/mms/wordpress/?post_type=services&#038;p=43', 0, 'services', '', 0),
(44, 1, '2021-03-12 20:41:41', '2021-03-12 17:41:41', '', 'correction', '', 'inherit', 'open', 'closed', '', 'correction', '', '', '2021-03-12 20:41:41', '2021-03-12 17:41:41', '', 43, 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/correction.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2021-03-13 15:41:47', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-13 15:41:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/mms/wordpress/?post_type=acf-field-group&p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2021-03-13 15:48:00', '2021-03-13 12:48:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"specialists\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Для специалистов', '%d0%b4%d0%bb%d1%8f-%d1%81%d0%bf%d0%b5%d1%86%d0%b8%d0%b0%d0%bb%d0%b8%d1%81%d1%82%d0%be%d0%b2', 'publish', 'closed', 'closed', '', 'group_604cb30d45092', '', '', '2021-03-13 17:11:27', '2021-03-13 14:11:27', '', 0, 'http://localhost/mms/wordpress/?post_type=acf-field-group&#038;p=46', 0, 'acf-field-group', '', 0),
(47, 1, '2021-03-13 15:48:00', '2021-03-13 12:48:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:52:\"Введите фамилию специалиста\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Фамилия', 'last_name', 'publish', 'closed', 'closed', '', 'field_604cb37a3bed2', '', '', '2021-03-13 15:48:00', '2021-03-13 12:48:00', '', 46, 'http://localhost/mms/wordpress/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(48, 1, '2021-03-13 15:48:00', '2021-03-13 12:48:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:44:\"Введите имя специалиста\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Имя', 'first_name', 'publish', 'closed', 'closed', '', 'field_604cb3173bed0', '', '', '2021-03-13 15:48:00', '2021-03-13 12:48:00', '', 46, 'http://localhost/mms/wordpress/?post_type=acf-field&p=48', 1, 'acf-field', '', 0),
(49, 1, '2021-03-13 15:48:00', '2021-03-13 12:48:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:76:\"Введите отчество специалиста при наличии\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Отчество', 'middle_name', 'publish', 'closed', 'closed', '', 'field_604cb34e3bed1', '', '', '2021-03-13 15:48:00', '2021-03-13 12:48:00', '', 46, 'http://localhost/mms/wordpress/?post_type=acf-field&p=49', 2, 'acf-field', '', 0),
(50, 1, '2021-03-13 15:48:00', '2021-03-13 12:48:00', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:114:\"С какого года специалист ведет профессиональную деятельность\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Стаж', 'experience', 'publish', 'closed', 'closed', '', 'field_604cb3b63bed3', '', '', '2021-03-13 17:11:27', '2021-03-13 14:11:27', '', 46, 'http://localhost/mms/wordpress/?post_type=acf-field&#038;p=50', 3, 'acf-field', '', 0),
(51, 1, '2021-03-13 15:48:00', '2021-03-13 12:48:00', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:57:\"Введите информацию о работнике\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:110:\"Опытный работник с большим стажем. Работает в компании Х лет\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:0:\"\";}', 'Описание', 'description', 'publish', 'closed', 'closed', '', 'field_604cb4053bed4', '', '', '2021-03-13 15:48:00', '2021-03-13 12:48:00', '', 46, 'http://localhost/mms/wordpress/?post_type=acf-field&p=51', 4, 'acf-field', '', 0),
(52, 1, '2021-03-13 15:52:17', '2021-03-13 12:52:17', '', 'Бутко Игорь Васильевич', '', 'publish', 'closed', 'closed', '', '%d0%b1%d1%83%d1%82%d0%ba%d0%be-%d0%b8%d0%b3%d0%be%d1%80%d1%8c-%d0%b2%d0%b0%d1%81%d0%b8%d0%bb%d1%8c%d0%b5%d0%b2%d0%b8%d1%87', '', '', '2021-03-13 19:57:30', '2021-03-13 16:57:30', '', 0, 'http://localhost/mms/wordpress/?post_type=specialists&#038;p=52', 0, 'specialists', '', 0),
(53, 1, '2021-03-13 15:51:30', '2021-03-13 12:51:30', '', 'specialist3', '', 'inherit', 'open', 'closed', '', 'specialist3', '', '', '2021-03-13 15:51:30', '2021-03-13 12:51:30', '', 52, 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/specialist3.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2021-03-13 15:51:31', '2021-03-13 12:51:31', '', 'specialist2', '', 'inherit', 'open', 'closed', '', 'specialist2', '', '', '2021-03-13 15:51:31', '2021-03-13 12:51:31', '', 52, 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/specialist2.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2021-03-13 15:53:44', '2021-03-13 12:53:44', '', 'Артёмов Николай Леонидович', '', 'publish', 'closed', 'closed', '', '%d0%b0%d1%80%d1%82%d1%91%d0%bc%d0%be%d0%b2-%d0%bd%d0%b8%d0%ba%d0%be%d0%bb%d0%b0%d0%b9-%d0%bb%d0%b5%d0%be%d0%bd%d0%b8%d0%b4%d0%be%d0%b2%d0%b8%d1%87', '', '', '2021-03-13 15:53:45', '2021-03-13 12:53:45', '', 0, 'http://localhost/mms/wordpress/?post_type=specialists&#038;p=56', 0, 'specialists', '', 0),
(57, 1, '2021-03-13 15:55:00', '2021-03-13 12:55:00', '', 'Мамонов Дмитрий Андреевич', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d0%bc%d0%be%d0%bd%d0%be%d0%b2-%d0%b4%d0%bc%d0%b8%d1%82%d1%80%d0%b8%d0%b9-%d0%b0%d0%bd%d0%b4%d1%80%d0%b5%d0%b5%d0%b2%d0%b8%d1%87', '', '', '2021-03-13 15:57:18', '2021-03-13 12:57:18', '', 0, 'http://localhost/mms/wordpress/?post_type=specialists&#038;p=57', 0, 'specialists', '', 0),
(58, 1, '2021-03-13 19:57:25', '2021-03-13 16:57:25', '', 'specialist1', '', 'inherit', 'open', 'closed', '', 'specialist1', '', '', '2021-03-13 19:57:25', '2021-03-13 16:57:25', '', 52, 'http://localhost/mms/wordpress/wp-content/uploads/2021/03/specialist1.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2021-03-13 20:13:10', '2021-03-13 17:13:10', '', 'Иванов Иван Иванович', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2-%d0%b8%d0%b2%d0%b0%d0%bd-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2%d0%b8%d1%87', '', '', '2021-03-13 20:13:10', '2021-03-13 17:13:10', '', 0, 'http://localhost/mms/wordpress/?post_type=specialists&#038;p=59', 0, 'specialists', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"cb2c68f8cfdcf2c1e2b325a2a5ccf20f3f447dd1b02ba92c69974f2280d90582\";a:4:{s:10:\"expiration\";i:1616261081;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36\";s:5:\"login\";i:1615051481;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1615135502'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'closedpostboxes_', 'a:1:{i:0;s:23:\"acf-group_604a08dfe659c\";}'),
(24, 1, 'metaboxhidden_', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BZUBlvJH2jTi3Au7I1epg.taITlFXJ.', 'admin', 'polya.bagrowa@gmail.com', 'http://localhost/mms/wordpress', '2021-03-06 17:24:06', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
