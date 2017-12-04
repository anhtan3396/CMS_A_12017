-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2017 at 01:30 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-13 01:59:35', '2017-11-13 01:59:35', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=159 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:82/wordpress/', 'yes'),
(2, 'home', 'http://localhost:82/wordpress/', 'yes'),
(3, 'blogname', 'WordPress Training 4.8.3', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:74:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:6:{i:1512352776;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1512352778;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1512352779;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1512352794;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1512433641;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(113, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.8.3";s:12:"last_checked";i:1512346297;}', 'no'),
(114, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1512346297;}', 'no'),
(117, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1512346768;}', 'no'),
(119, 'can_compress_scripts', '1', 'no'),
(123, 'WPLANG', '', 'yes'),
(128, '_site_transient_timeout_theme_roots', '1512348097', 'no'),
(129, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(131, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1512389408', 'no'),
(132, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(157, '_transient_is_multi_author', '1', 'yes'),
(158, '_transient_twentyseventeen_categories', '1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=95 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 7, '_wp_attached_file', '2017/12/espresso.jpg'),
(3, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2017/12/espresso.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"espresso-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"espresso-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"espresso-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"espresso-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"espresso-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 7, '_starter_content_theme', 'twentyseventeen'),
(5, 7, '_customize_draft_post_name', 'espresso'),
(6, 8, '_wp_attached_file', '2017/12/sandwich.jpg'),
(7, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2017/12/sandwich.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"sandwich-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"sandwich-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"sandwich-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"sandwich-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"sandwich-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(8, 8, '_starter_content_theme', 'twentyseventeen'),
(9, 8, '_customize_draft_post_name', 'sandwich'),
(10, 9, '_wp_attached_file', '2017/12/coffee.jpg'),
(11, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:18:"2017/12/coffee.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"coffee-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"coffee-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"coffee-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"coffee-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"coffee-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 9, '_starter_content_theme', 'twentyseventeen'),
(13, 9, '_customize_draft_post_name', 'coffee'),
(14, 10, '_customize_draft_post_name', 'home'),
(15, 11, '_thumbnail_id', '8'),
(16, 11, '_customize_draft_post_name', 'about'),
(17, 12, '_thumbnail_id', '7'),
(18, 12, '_customize_draft_post_name', 'contact'),
(19, 13, '_thumbnail_id', '9'),
(20, 13, '_customize_draft_post_name', 'blog'),
(21, 14, '_thumbnail_id', '7'),
(22, 14, '_customize_draft_post_name', 'a-homepage-section'),
(23, 17, '_edit_lock', '1512347116:6'),
(24, 17, '_edit_last', '6'),
(25, 19, '_edit_lock', '1512347123:6'),
(26, 19, '_edit_last', '6'),
(27, 21, '_edit_lock', '1512347129:6'),
(28, 21, '_edit_last', '6'),
(29, 23, '_edit_lock', '1512347134:6'),
(30, 23, '_edit_last', '6'),
(31, 25, '_edit_lock', '1512347141:6'),
(32, 25, '_edit_last', '6'),
(33, 27, '_edit_lock', '1512347147:6'),
(34, 27, '_edit_last', '6'),
(35, 29, '_edit_lock', '1512347152:6'),
(36, 29, '_edit_last', '6'),
(37, 31, '_edit_lock', '1512347157:6'),
(38, 31, '_edit_last', '6'),
(39, 33, '_edit_lock', '1512347162:6'),
(40, 33, '_edit_last', '6'),
(41, 35, '_edit_lock', '1512347168:6'),
(42, 35, '_edit_last', '6'),
(43, 37, '_edit_lock', '1512347173:6'),
(44, 37, '_edit_last', '6'),
(45, 39, '_edit_lock', '1512347199:6'),
(46, 39, '_edit_last', '6'),
(47, 41, '_edit_lock', '1512347216:6'),
(48, 41, '_edit_last', '6'),
(51, 43, '_edit_lock', '1512347222:6'),
(52, 43, '_edit_last', '6'),
(55, 45, '_edit_lock', '1512347227:6'),
(56, 45, '_edit_last', '6'),
(59, 47, '_edit_lock', '1512347233:6'),
(60, 47, '_edit_last', '6'),
(63, 49, '_edit_lock', '1512347238:6'),
(64, 49, '_edit_last', '6'),
(67, 51, '_edit_lock', '1512347243:6'),
(68, 51, '_edit_last', '6'),
(71, 53, '_edit_lock', '1512347248:6'),
(72, 53, '_edit_last', '6'),
(75, 55, '_edit_lock', '1512347254:6'),
(76, 55, '_edit_last', '6'),
(79, 57, '_edit_lock', '1512347259:6'),
(80, 57, '_edit_last', '6'),
(83, 59, '_edit_lock', '1512347264:6'),
(84, 59, '_edit_last', '6'),
(87, 61, '_edit_lock', '1512347270:6'),
(88, 61, '_edit_last', '6'),
(91, 63, '_edit_lock', '1512347277:6'),
(92, 63, '_edit_last', '6');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=65 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-13 01:59:35', '2017-11-13 01:59:35', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-11-13 01:59:35', '2017-11-13 01:59:35', '', 0, 'http://localhost:82/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-13 01:59:35', '2017-11-13 01:59:35', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:82/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-11-13 01:59:35', '2017-11-13 01:59:35', '', 0, 'http://localhost:82/wordpress/?page_id=2', 0, 'page', '', 0),
(5, 7, '2017-12-04 00:10:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 00:10:02', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=5', 0, 'post', '', 0),
(6, 9, '2017-12-04 00:18:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 00:18:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=6', 0, 'post', '', 0),
(7, 7, '2017-12-04 00:19:34', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-04 00:19:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/wp-content/uploads/2017/12/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 7, '2017-12-04 00:19:34', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-04 00:19:32', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/wp-content/uploads/2017/12/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 7, '2017-12-04 00:19:34', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-04 00:19:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/wp-content/uploads/2017/12/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 7, '2017-12-04 00:19:34', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-04 00:19:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 7, '2017-12-04 00:19:34', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-04 00:19:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 7, '2017-12-04 00:19:34', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-04 00:19:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 7, '2017-12-04 00:19:34', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-04 00:19:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 7, '2017-12-04 00:19:34', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-04 00:19:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=14', 0, 'page', '', 0),
(15, 7, '2017-12-04 00:19:34', '0000-00-00 00:00:00', '{\n    "widget_text[2]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "c999bf81464b2517887f6a1ff20085e7"\n        },\n        "type": "option",\n        "user_id": 7\n    },\n    "widget_search[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "da853f028b3c2f1d576fc01b6665c07d"\n        },\n        "type": "option",\n        "user_id": 7\n    },\n    "widget_text[3]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "fb4546591def8c8ed69afaaab56a9a94"\n        },\n        "type": "option",\n        "user_id": 7\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "starter_content": true,\n        "value": [\n            "text-2",\n            "search-3",\n            "text-3"\n        ],\n        "type": "option",\n        "user_id": 7\n    },\n    "widget_text[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "Find Us",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "c999bf81464b2517887f6a1ff20085e7"\n        },\n        "type": "option",\n        "user_id": 7\n    },\n    "sidebars_widgets[sidebar-2]": {\n        "starter_content": true,\n        "value": [\n            "text-4"\n        ],\n        "type": "option",\n        "user_id": 7\n    },\n    "widget_text[5]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",\n            "title": "About This Site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "fb4546591def8c8ed69afaaab56a9a94"\n        },\n        "type": "option",\n        "user_id": 7\n    },\n    "widget_search[4]": {\n        "starter_content": true,\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",\n            "title": "Search",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "da853f028b3c2f1d576fc01b6665c07d"\n        },\n        "type": "option",\n        "user_id": 7\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "starter_content": true,\n        "value": [\n            "text-5",\n            "search-4"\n        ],\n        "type": "option",\n        "user_id": 7\n    },\n    "nav_menus_created_posts": {\n        "starter_content": true,\n        "value": [\n            7,\n            8,\n            9,\n            10,\n            11,\n            12,\n            13,\n            14\n        ],\n        "type": "option",\n        "user_id": 7\n    },\n    "nav_menu[-1]": {\n        "starter_content": true,\n        "value": {\n            "name": "Top Menu"\n        },\n        "type": "nav_menu",\n        "user_id": 7\n    },\n    "nav_menu_item[-1]": {\n        "starter_content": true,\n        "value": {\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost:82/wordpress/",\n            "position": 0,\n            "nav_menu_term_id": -1,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 7\n    },\n    "nav_menu_item[-2]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 11,\n            "position": 1,\n            "nav_menu_term_id": -1,\n            "title": "About"\n        },\n        "type": "nav_menu_item",\n        "user_id": 7\n    },\n    "nav_menu_item[-3]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 13,\n            "position": 2,\n            "nav_menu_term_id": -1,\n            "title": "Blog"\n        },\n        "type": "nav_menu_item",\n        "user_id": 7\n    },\n    "nav_menu_item[-4]": {\n        "starter_content": true,\n        "value": {\n            "type": "post_type",\n            "object": "page",\n            "object_id": 12,\n            "position": 3,\n            "nav_menu_term_id": -1,\n            "title": "Contact"\n        },\n        "type": "nav_menu_item",\n        "user_id": 7\n    },\n    "twentyseventeen::nav_menu_locations[top]": {\n        "starter_content": true,\n        "value": -1,\n        "type": "theme_mod",\n        "user_id": 7\n    },\n    "nav_menu[-5]": {\n        "starter_content": true,\n        "value": {\n            "name": "Social Links Menu"\n        },\n        "type": "nav_menu",\n        "user_id": 7\n    },\n    "nav_menu_item[-5]": {\n        "starter_content": true,\n        "value": {\n            "title": "Yelp",\n            "url": "https://www.yelp.com",\n            "position": 0,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 7\n    },\n    "nav_menu_item[-6]": {\n        "starter_content": true,\n        "value": {\n            "title": "Facebook",\n            "url": "https://www.facebook.com/wordpress",\n            "position": 1,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 7\n    },\n    "nav_menu_item[-7]": {\n        "starter_content": true,\n        "value": {\n            "title": "Twitter",\n            "url": "https://twitter.com/wordpress",\n            "position": 2,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 7\n    },\n    "nav_menu_item[-8]": {\n        "starter_content": true,\n        "value": {\n            "title": "Instagram",\n            "url": "https://www.instagram.com/explore/tags/wordcamp/",\n            "position": 3,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 7\n    },\n    "nav_menu_item[-9]": {\n        "starter_content": true,\n        "value": {\n            "title": "Email",\n            "url": "mailto:wordpress@example.com",\n            "position": 4,\n            "nav_menu_term_id": -5,\n            "object_id": 0\n        },\n        "type": "nav_menu_item",\n        "user_id": 7\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "starter_content": true,\n        "value": -5,\n        "type": "theme_mod",\n        "user_id": 7\n    },\n    "show_on_front": {\n        "starter_content": true,\n        "value": "page",\n        "type": "option",\n        "user_id": 7\n    },\n    "page_on_front": {\n        "starter_content": true,\n        "value": 10,\n        "type": "option",\n        "user_id": 7\n    },\n    "page_for_posts": {\n        "starter_content": true,\n        "value": 13,\n        "type": "option",\n        "user_id": 7\n    },\n    "twentyseventeen::panel_1": {\n        "starter_content": true,\n        "value": 14,\n        "type": "theme_mod",\n        "user_id": 7\n    },\n    "twentyseventeen::panel_2": {\n        "starter_content": true,\n        "value": 11,\n        "type": "theme_mod",\n        "user_id": 7\n    },\n    "twentyseventeen::panel_3": {\n        "starter_content": true,\n        "value": 13,\n        "type": "theme_mod",\n        "user_id": 7\n    },\n    "twentyseventeen::panel_4": {\n        "starter_content": true,\n        "value": 12,\n        "type": "theme_mod",\n        "user_id": 7\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '179617b8-a8ea-41d8-9c36-54fc8413dd52', '', '', '2017-12-04 00:19:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=15', 0, 'customize_changeset', '', 0),
(16, 8, '2017-12-04 00:20:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-04 00:20:39', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=16', 0, 'post', '', 0),
(17, 6, '2017-12-04 00:27:37', '2017-12-04 00:27:37', 'qweqweqweqwe', 'Page 1', '', 'publish', 'closed', 'closed', '', 'page-1', '', '', '2017-12-04 00:27:37', '2017-12-04 00:27:37', '', 0, 'http://localhost:82/wordpress/?page_id=17', 0, 'page', '', 0),
(18, 6, '2017-12-04 00:27:37', '2017-12-04 00:27:37', 'qweqweqweqwe', 'Page 1', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-12-04 00:27:37', '2017-12-04 00:27:37', '', 17, 'http://localhost:82/wordpress/index.php/2017/12/04/17-revision-v1/', 0, 'revision', '', 0),
(19, 6, '2017-12-04 00:27:45', '2017-12-04 00:27:45', 'Page', 'Page 2', '', 'publish', 'closed', 'closed', '', 'page-2', '', '', '2017-12-04 00:27:45', '2017-12-04 00:27:45', '', 0, 'http://localhost:82/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 6, '2017-12-04 00:27:45', '2017-12-04 00:27:45', 'Page', 'Page 2', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-12-04 00:27:45', '2017-12-04 00:27:45', '', 19, 'http://localhost:82/wordpress/index.php/2017/12/04/19-revision-v1/', 0, 'revision', '', 0),
(21, 6, '2017-12-04 00:27:52', '2017-12-04 00:27:52', 'Page', 'Page 3', '', 'publish', 'closed', 'closed', '', 'page-3', '', '', '2017-12-04 00:27:52', '2017-12-04 00:27:52', '', 0, 'http://localhost:82/wordpress/?page_id=21', 0, 'page', '', 0),
(22, 6, '2017-12-04 00:27:52', '2017-12-04 00:27:52', 'Page', 'Page 3', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-12-04 00:27:52', '2017-12-04 00:27:52', '', 21, 'http://localhost:82/wordpress/index.php/2017/12/04/21-revision-v1/', 0, 'revision', '', 0),
(23, 6, '2017-12-04 00:27:57', '2017-12-04 00:27:57', 'Page', 'Page 4', '', 'publish', 'closed', 'closed', '', 'page-4', '', '', '2017-12-04 00:27:57', '2017-12-04 00:27:57', '', 0, 'http://localhost:82/wordpress/?page_id=23', 0, 'page', '', 0),
(24, 6, '2017-12-04 00:27:57', '2017-12-04 00:27:57', 'Page', 'Page 4', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-12-04 00:27:57', '2017-12-04 00:27:57', '', 23, 'http://localhost:82/wordpress/index.php/2017/12/04/23-revision-v1/', 0, 'revision', '', 0),
(25, 6, '2017-12-04 00:28:03', '2017-12-04 00:28:03', 'Page', 'Page 5', '', 'publish', 'closed', 'closed', '', 'page-5', '', '', '2017-12-04 00:28:03', '2017-12-04 00:28:03', '', 0, 'http://localhost:82/wordpress/?page_id=25', 0, 'page', '', 0),
(26, 6, '2017-12-04 00:28:03', '2017-12-04 00:28:03', 'Page', 'Page 5', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-12-04 00:28:03', '2017-12-04 00:28:03', '', 25, 'http://localhost:82/wordpress/index.php/2017/12/04/25-revision-v1/', 0, 'revision', '', 0),
(27, 6, '2017-12-04 00:28:09', '2017-12-04 00:28:09', 'Page', 'Page 6', '', 'publish', 'closed', 'closed', '', 'page-6', '', '', '2017-12-04 00:28:09', '2017-12-04 00:28:09', '', 0, 'http://localhost:82/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 6, '2017-12-04 00:28:09', '2017-12-04 00:28:09', 'Page', 'Page 6', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-12-04 00:28:09', '2017-12-04 00:28:09', '', 27, 'http://localhost:82/wordpress/index.php/2017/12/04/27-revision-v1/', 0, 'revision', '', 0),
(29, 6, '2017-12-04 00:28:15', '2017-12-04 00:28:15', 'Page', 'Page 7', '', 'publish', 'closed', 'closed', '', 'page-7', '', '', '2017-12-04 00:28:15', '2017-12-04 00:28:15', '', 0, 'http://localhost:82/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 6, '2017-12-04 00:28:15', '2017-12-04 00:28:15', 'Page', 'Page 7', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-12-04 00:28:15', '2017-12-04 00:28:15', '', 29, 'http://localhost:82/wordpress/index.php/2017/12/04/29-revision-v1/', 0, 'revision', '', 0),
(31, 6, '2017-12-04 00:28:21', '2017-12-04 00:28:21', 'Page', 'Page 8', '', 'publish', 'closed', 'closed', '', 'page-8', '', '', '2017-12-04 00:28:21', '2017-12-04 00:28:21', '', 0, 'http://localhost:82/wordpress/?page_id=31', 0, 'page', '', 0),
(32, 6, '2017-12-04 00:28:21', '2017-12-04 00:28:21', 'Page', 'Page 8', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-12-04 00:28:21', '2017-12-04 00:28:21', '', 31, 'http://localhost:82/wordpress/index.php/2017/12/04/31-revision-v1/', 0, 'revision', '', 0),
(33, 6, '2017-12-04 00:28:26', '2017-12-04 00:28:26', 'Page', 'Page 9', '', 'publish', 'closed', 'closed', '', 'page-9', '', '', '2017-12-04 00:28:26', '2017-12-04 00:28:26', '', 0, 'http://localhost:82/wordpress/?page_id=33', 0, 'page', '', 0),
(34, 6, '2017-12-04 00:28:26', '2017-12-04 00:28:26', 'Page', 'Page 9', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-12-04 00:28:26', '2017-12-04 00:28:26', '', 33, 'http://localhost:82/wordpress/index.php/2017/12/04/33-revision-v1/', 0, 'revision', '', 0),
(35, 6, '2017-12-04 00:28:31', '2017-12-04 00:28:31', 'Page', 'Page 10', '', 'publish', 'closed', 'closed', '', 'page-10', '', '', '2017-12-04 00:28:31', '2017-12-04 00:28:31', '', 0, 'http://localhost:82/wordpress/?page_id=35', 0, 'page', '', 0),
(36, 6, '2017-12-04 00:28:31', '2017-12-04 00:28:31', 'Page', 'Page 10', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-12-04 00:28:31', '2017-12-04 00:28:31', '', 35, 'http://localhost:82/wordpress/index.php/2017/12/04/35-revision-v1/', 0, 'revision', '', 0),
(37, 6, '2017-12-04 00:28:36', '2017-12-04 00:28:36', 'Page', 'Page 11', '', 'publish', 'closed', 'closed', '', 'page-11', '', '', '2017-12-04 00:28:36', '2017-12-04 00:28:36', '', 0, 'http://localhost:82/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 6, '2017-12-04 00:28:36', '2017-12-04 00:28:36', 'Page', 'Page 11', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-04 00:28:36', '2017-12-04 00:28:36', '', 37, 'http://localhost:82/wordpress/index.php/2017/12/04/37-revision-v1/', 0, 'revision', '', 0),
(39, 6, '2017-12-04 00:28:42', '2017-12-04 00:28:42', 'Page', 'Page 13', '', 'publish', 'closed', 'closed', '', 'page-13', '', '', '2017-12-04 00:28:42', '2017-12-04 00:28:42', '', 0, 'http://localhost:82/wordpress/?page_id=39', 0, 'page', '', 0),
(40, 6, '2017-12-04 00:28:42', '2017-12-04 00:28:42', 'Page', 'Page 13', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-12-04 00:28:42', '2017-12-04 00:28:42', '', 39, 'http://localhost:82/wordpress/index.php/2017/12/04/39-revision-v1/', 0, 'revision', '', 0),
(41, 6, '2017-12-04 00:29:18', '2017-12-04 00:29:18', 'Post', 'Post 1', '', 'publish', 'open', 'open', '', 'post-1', '', '', '2017-12-04 00:29:18', '2017-12-04 00:29:18', '', 0, 'http://localhost:82/wordpress/?p=41', 0, 'post', '', 0),
(42, 6, '2017-12-04 00:29:18', '2017-12-04 00:29:18', 'Post', 'Post 1', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-12-04 00:29:18', '2017-12-04 00:29:18', '', 41, 'http://localhost:82/wordpress/index.php/2017/12/04/41-revision-v1/', 0, 'revision', '', 0),
(43, 6, '2017-12-04 00:29:24', '2017-12-04 00:29:24', 'Post', 'Post 2', '', 'publish', 'open', 'open', '', 'post-2', '', '', '2017-12-04 00:29:24', '2017-12-04 00:29:24', '', 0, 'http://localhost:82/wordpress/?p=43', 0, 'post', '', 0),
(44, 6, '2017-12-04 00:29:24', '2017-12-04 00:29:24', 'Post', 'Post 2', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-12-04 00:29:24', '2017-12-04 00:29:24', '', 43, 'http://localhost:82/wordpress/index.php/2017/12/04/43-revision-v1/', 0, 'revision', '', 0),
(45, 6, '2017-12-04 00:29:30', '2017-12-04 00:29:30', 'Post', 'Post 3', '', 'publish', 'open', 'open', '', 'post-3', '', '', '2017-12-04 00:29:30', '2017-12-04 00:29:30', '', 0, 'http://localhost:82/wordpress/?p=45', 0, 'post', '', 0),
(46, 6, '2017-12-04 00:29:30', '2017-12-04 00:29:30', 'Post', 'Post 3', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2017-12-04 00:29:30', '2017-12-04 00:29:30', '', 45, 'http://localhost:82/wordpress/index.php/2017/12/04/45-revision-v1/', 0, 'revision', '', 0),
(47, 6, '2017-12-04 00:29:36', '2017-12-04 00:29:36', 'Post', 'Post 4', '', 'publish', 'open', 'open', '', 'post-4', '', '', '2017-12-04 00:29:36', '2017-12-04 00:29:36', '', 0, 'http://localhost:82/wordpress/?p=47', 0, 'post', '', 0),
(48, 6, '2017-12-04 00:29:36', '2017-12-04 00:29:36', 'Post', 'Post 4', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2017-12-04 00:29:36', '2017-12-04 00:29:36', '', 47, 'http://localhost:82/wordpress/index.php/2017/12/04/47-revision-v1/', 0, 'revision', '', 0),
(49, 6, '2017-12-04 00:29:41', '2017-12-04 00:29:41', 'Post', 'Post 5', '', 'publish', 'open', 'open', '', 'post-5', '', '', '2017-12-04 00:29:41', '2017-12-04 00:29:41', '', 0, 'http://localhost:82/wordpress/?p=49', 0, 'post', '', 0),
(50, 6, '2017-12-04 00:29:41', '2017-12-04 00:29:41', 'Post', 'Post 5', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-12-04 00:29:41', '2017-12-04 00:29:41', '', 49, 'http://localhost:82/wordpress/index.php/2017/12/04/49-revision-v1/', 0, 'revision', '', 0),
(51, 6, '2017-12-04 00:29:46', '2017-12-04 00:29:46', 'Post', 'Post 6', '', 'publish', 'open', 'open', '', 'post-6', '', '', '2017-12-04 00:29:46', '2017-12-04 00:29:46', '', 0, 'http://localhost:82/wordpress/?p=51', 0, 'post', '', 0),
(52, 6, '2017-12-04 00:29:46', '2017-12-04 00:29:46', 'Post', 'Post 6', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-12-04 00:29:46', '2017-12-04 00:29:46', '', 51, 'http://localhost:82/wordpress/index.php/2017/12/04/51-revision-v1/', 0, 'revision', '', 0),
(53, 6, '2017-12-04 00:29:51', '2017-12-04 00:29:51', 'Post', 'Post 7', '', 'publish', 'open', 'open', '', 'post-7', '', '', '2017-12-04 00:29:51', '2017-12-04 00:29:51', '', 0, 'http://localhost:82/wordpress/?p=53', 0, 'post', '', 0),
(54, 6, '2017-12-04 00:29:51', '2017-12-04 00:29:51', 'Post', 'Post 7', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2017-12-04 00:29:51', '2017-12-04 00:29:51', '', 53, 'http://localhost:82/wordpress/index.php/2017/12/04/53-revision-v1/', 0, 'revision', '', 0),
(55, 6, '2017-12-04 00:29:56', '2017-12-04 00:29:56', 'Post', 'Post 8', '', 'publish', 'open', 'open', '', 'post-8', '', '', '2017-12-04 00:29:56', '2017-12-04 00:29:56', '', 0, 'http://localhost:82/wordpress/?p=55', 0, 'post', '', 0),
(56, 6, '2017-12-04 00:29:56', '2017-12-04 00:29:56', 'Post', 'Post 8', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-12-04 00:29:56', '2017-12-04 00:29:56', '', 55, 'http://localhost:82/wordpress/index.php/2017/12/04/55-revision-v1/', 0, 'revision', '', 0),
(57, 6, '2017-12-04 00:30:02', '2017-12-04 00:30:02', 'Post', 'Post 9', '', 'publish', 'open', 'open', '', 'post-9', '', '', '2017-12-04 00:30:02', '2017-12-04 00:30:02', '', 0, 'http://localhost:82/wordpress/?p=57', 0, 'post', '', 0),
(58, 6, '2017-12-04 00:30:02', '2017-12-04 00:30:02', 'Post', 'Post 9', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-12-04 00:30:02', '2017-12-04 00:30:02', '', 57, 'http://localhost:82/wordpress/index.php/2017/12/04/57-revision-v1/', 0, 'revision', '', 0),
(59, 6, '2017-12-04 00:30:07', '2017-12-04 00:30:07', 'Post', 'Post 10', '', 'publish', 'open', 'open', '', 'post-10', '', '', '2017-12-04 00:30:07', '2017-12-04 00:30:07', '', 0, 'http://localhost:82/wordpress/?p=59', 0, 'post', '', 0),
(60, 6, '2017-12-04 00:30:07', '2017-12-04 00:30:07', 'Post', 'Post 10', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2017-12-04 00:30:07', '2017-12-04 00:30:07', '', 59, 'http://localhost:82/wordpress/index.php/2017/12/04/59-revision-v1/', 0, 'revision', '', 0),
(61, 6, '2017-12-04 00:30:13', '2017-12-04 00:30:13', 'Post', 'Post 11', '', 'publish', 'open', 'open', '', 'post-11', '', '', '2017-12-04 00:30:13', '2017-12-04 00:30:13', '', 0, 'http://localhost:82/wordpress/?p=61', 0, 'post', '', 0),
(62, 6, '2017-12-04 00:30:13', '2017-12-04 00:30:13', 'Post', 'Post 11', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-12-04 00:30:13', '2017-12-04 00:30:13', '', 61, 'http://localhost:82/wordpress/index.php/2017/12/04/61-revision-v1/', 0, 'revision', '', 0),
(63, 6, '2017-12-04 00:30:20', '2017-12-04 00:30:20', 'Post', 'Post 12', '', 'publish', 'open', 'open', '', 'post-12', '', '', '2017-12-04 00:30:20', '2017-12-04 00:30:20', '', 0, 'http://localhost:82/wordpress/?p=63', 0, 'post', '', 0),
(64, 6, '2017-12-04 00:30:20', '2017-12-04 00:30:20', 'Post', 'Post 12', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-12-04 00:30:20', '2017-12-04 00:30:20', '', 63, 'http://localhost:82/wordpress/index.php/2017/12/04/63-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(41, 1, 0),
(43, 1, 0),
(45, 1, 0),
(47, 1, 0),
(49, 1, 0),
(51, 1, 0),
(53, 1, 0),
(55, 1, 0),
(57, 1, 0),
(59, 1, 0),
(61, 1, 0),
(63, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=130 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'session_tokens', 'a:2:{s:64:"fa67a037d1f5e0b35cbc552e97e5e0dcc185ac39b9061795dc116ee11c763742";a:4:{s:10:"expiration";i:1510712685;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510539885;}s:64:"9d37009e9512e9fd59752211a54384fcfc617f8da0e14b685d37d0226949c9d6";a:4:{s:10:"expiration";i:1510714861;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1510542061;}}'),
(70, 6, 'nickname', 'tanla'),
(71, 6, 'first_name', 'Le'),
(72, 6, 'last_name', 'Anh Tan'),
(73, 6, 'description', ''),
(74, 6, 'rich_editing', 'true'),
(75, 6, 'comment_shortcuts', 'false'),
(76, 6, 'admin_color', 'fresh'),
(77, 6, 'use_ssl', '0'),
(78, 6, 'show_admin_bar_front', 'true'),
(79, 6, 'locale', ''),
(80, 6, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(81, 6, 'wp_user_level', '10'),
(82, 6, 'dismissed_wp_pointers', ''),
(83, 6, 'session_tokens', 'a:1:{s:64:"b18dfad0222bf1b1a9a54fc259dbf00cfeea428a2f95c10f5713f750440db226";a:4:{s:10:"expiration";i:1512520013;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1512347213;}}'),
(84, 6, 'wp_dashboard_quick_press_last_post_id', '4'),
(85, 7, 'nickname', 'hienvtn'),
(86, 7, 'first_name', 'Vo'),
(87, 7, 'last_name', 'Thi Ngoc Hien'),
(88, 7, 'description', ''),
(89, 7, 'rich_editing', 'true'),
(90, 7, 'comment_shortcuts', 'false'),
(91, 7, 'admin_color', 'fresh'),
(92, 7, 'use_ssl', '0'),
(93, 7, 'show_admin_bar_front', 'true'),
(94, 7, 'locale', ''),
(95, 7, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(96, 7, 'wp_user_level', '10'),
(97, 7, 'dismissed_wp_pointers', ''),
(98, 8, 'nickname', 'phuongdh'),
(99, 8, 'first_name', 'Dao'),
(100, 8, 'last_name', 'Hoai Phuong'),
(101, 8, 'description', ''),
(102, 8, 'rich_editing', 'true'),
(103, 8, 'comment_shortcuts', 'false'),
(104, 8, 'admin_color', 'fresh'),
(105, 8, 'use_ssl', '0'),
(106, 8, 'show_admin_bar_front', 'true'),
(107, 8, 'locale', ''),
(108, 8, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(109, 8, 'wp_user_level', '10'),
(110, 8, 'dismissed_wp_pointers', ''),
(111, 9, 'nickname', 'tonnqda'),
(112, 9, 'first_name', 'Nguyen'),
(113, 9, 'last_name', 'Quy Duc An Ton'),
(114, 9, 'description', ''),
(115, 9, 'rich_editing', 'true'),
(116, 9, 'comment_shortcuts', 'false'),
(117, 9, 'admin_color', 'fresh'),
(118, 9, 'use_ssl', '0'),
(119, 9, 'show_admin_bar_front', 'true'),
(120, 9, 'locale', ''),
(121, 9, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(122, 9, 'wp_user_level', '10'),
(123, 9, 'dismissed_wp_pointers', ''),
(124, 7, 'session_tokens', 'a:1:{s:64:"c2e652dea060433e636301b9098176e89e1cf13d2012710339c6c227dbf466f1";a:4:{s:10:"expiration";i:1512519000;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1512346200;}}'),
(125, 7, 'wp_dashboard_quick_press_last_post_id', '5'),
(126, 9, 'session_tokens', 'a:1:{s:64:"66ebf51b66f3ebb53d66e8ef538714dd2e7053c3be5b1a5da8d593ad8ac5a516";a:4:{s:10:"expiration";i:1512519505;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1512346705;}}'),
(127, 9, 'wp_dashboard_quick_press_last_post_id', '6'),
(128, 8, 'session_tokens', 'a:1:{s:64:"c54d06807576dee8ea363b7b3a758403f617f73aeb20c903c803ce8117c09b44";a:4:{s:10:"expiration";i:1512519638;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1512346838;}}'),
(129, 8, 'wp_dashboard_quick_press_last_post_id', '16');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BoklXYYRG4M3cars9cYsOu9rehi0ce0', 'admin', 'admin@gmail.com', '', '2017-11-13 01:59:35', '', 0, 'admin'),
(6, 'tanla', '$P$B46B729fTEsKKF0wiUVKJKMb2cqepJ/', 'tanla', 'anhtan3396@gmail.com', 'http://anhtan3396.pe.hu', '2017-11-13 03:31:26', '1510543887:$P$Bk8Vu7qH7q1qyxXuFFW8INwiSjyw7P.', 0, 'Le Anh Tan'),
(7, 'hienvtn', '$P$B4Eeqx9sE4JNpYIsmZrzN/4e2axj8W.', 'hienvtn', 'ngochiensunflowers@gmail.com', '', '2017-11-13 03:32:35', '1510543956:$P$B10HnPrwRXFhh4MlDZ01fQBeatq8Hg1', 0, 'Vo Thi Ngoc Hien'),
(8, 'phuongdh', '$P$BKO4W9pUdB4VkrbX8l021qMRlGDiGM.', 'phuongdh', 'hoaiphuong2527@gmail.com', '', '2017-11-13 03:33:02', '1510543984:$P$BwVQ5DFUEt52FQziBmWRyuXhM0f4My/', 0, 'Dao Hoai Phuong'),
(9, 'tonnqda', '$P$BJB3jmceuTfATGei.6x4dvprl5tPCH0', 'tonnqda', 'tonannguyen071097@gmail.com', '', '2017-11-13 03:33:33', '1510544014:$P$B6EddCq7ztVXqMPikPTIZ79ufCZ1di0', 0, 'Nguyen Quy Duc An Ton');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
