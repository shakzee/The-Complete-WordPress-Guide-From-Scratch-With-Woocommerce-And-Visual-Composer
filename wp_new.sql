-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2019 at 09:08 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `skz_commentmeta`
--

CREATE TABLE `skz_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_comments`
--

CREATE TABLE `skz_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_comments`
--

INSERT INTO `skz_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-02 10:13:25', '2018-06-02 10:13:25', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'shakzeewp', 'shakzee171@gmail.com', '', '::1', '2018-06-02 10:41:16', '2018-06-02 10:41:16', 'Here is my comment', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '', 0, 1),
(3, 2, 'shakzeewp', 'shakzee171@gmail.com', '', '::1', '2018-06-02 16:53:44', '2018-06-02 16:53:44', 'Here is my comment', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '', 0, 1),
(5, 2, 'dfddf', 'ss@htomail.com', 'http://kk', '::1', '2018-06-02 16:58:25', '2018-06-02 16:58:25', 'http://localhost/wordpress/sample-page/', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `skz_evf_entries`
--

CREATE TABLE `skz_evf_entries` (
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_device` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `referer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_evf_entrymeta`
--

CREATE TABLE `skz_evf_entrymeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_evf_sessions`
--

CREATE TABLE `skz_evf_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_links`
--

CREATE TABLE `skz_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_options`
--

CREATE TABLE `skz_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_options`
--

INSERT INTO `skz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'shakzee', 'yes'),
(4, 'blogdescription', 'Programming for everyone', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shakzee171@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:31:\"everest-forms/everest-forms.php\";i:1;s:53:\"themegrill-demo-importer/themegrill-demo-importer.php\";i:2;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:64:\"C:\\xampp\\htdocs\\wordpress/wp-content/plugins/akismet/akismet.php\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'colormag', 'yes'),
(41, 'stylesheet', 'colormag', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:8:\"About Us\";s:4:\"text\";s:366:\"<img class=\"alignnone size-medium wp-image-122\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/shakzeelogo-300x300.png\" alt=\"\" width=\"300\" height=\"300\" />\r\n\r\nWe love WordPress and we are here to provide you with professional looking WordPress themes so that you can take your website one step ahead. We focus on simplicity, elegant design and clean code.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:71:\"Contains all features of free version and many new additional features.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '72', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '131', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'skz_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:133:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"manage_everest_forms\";b:1;s:17:\"edit_everest_form\";b:1;s:22:\"duplicate_everest_form\";b:1;s:17:\"read_everest_form\";b:1;s:19:\"delete_everest_form\";b:1;s:18:\"edit_everest_forms\";b:1;s:25:\"edit_others_everest_forms\";b:1;s:21:\"publish_everest_forms\";b:1;s:26:\"read_private_everest_forms\";b:1;s:20:\"delete_everest_forms\";b:1;s:28:\"delete_private_everest_forms\";b:1;s:30:\"delete_published_everest_forms\";b:1;s:27:\"delete_others_everest_forms\";b:1;s:26:\"edit_private_everest_forms\";b:1;s:28:\"edit_published_everest_forms\";b:1;s:25:\"manage_everest_form_terms\";b:1;s:23:\"edit_everest_form_terms\";b:1;s:25:\"delete_everest_form_terms\";b:1;s:25:\"assign_everest_form_terms\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:18:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:41:\"colormag_featured_posts_vertical_widget-5\";}s:22:\"colormag_right_sidebar\";a:1:{i:0;s:12:\"categories-2\";}s:21:\"colormag_left_sidebar\";a:1:{i:0;s:10:\"calendar-7\";}s:23:\"colormag_header_sidebar\";a:0:{}s:31:\"colormag_front_page_slider_area\";a:1:{i:0;s:39:\"colormag_featured_posts_slider_widget-2\";}s:38:\"colormag_front_page_area_beside_slider\";a:1:{i:0;s:35:\"colormag_highlighted_posts_widget-2\";}s:39:\"colormag_front_page_content_top_section\";a:1:{i:0;s:32:\"colormag_featured_posts_widget-2\";}s:47:\"colormag_front_page_content_middle_left_section\";a:1:{i:0;s:41:\"colormag_featured_posts_vertical_widget-3\";}s:48:\"colormag_front_page_content_middle_right_section\";a:1:{i:0;s:41:\"colormag_featured_posts_vertical_widget-4\";}s:42:\"colormag_front_page_content_bottom_section\";a:1:{i:0;s:32:\"colormag_featured_posts_widget-3\";}s:29:\"colormag_contact_page_sidebar\";a:0:{}s:31:\"colormag_error_404_page_sidebar\";a:0:{}s:47:\"colormag_advertisement_above_the_footer_sidebar\";a:1:{i:0;s:6:\"text-2\";}s:27:\"colormag_footer_sidebar_one\";a:1:{i:0;s:10:\"nav_menu-2\";}s:27:\"colormag_footer_sidebar_two\";a:1:{i:0;s:10:\"nav_menu-4\";}s:29:\"colormag_footer_sidebar_three\";a:1:{i:0;s:6:\"text-3\";}s:28:\"colormag_footer_sidebar_four\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{i:7;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:3:{i:2;a:2:{s:5:\"title\";s:14:\"Premium Themes\";s:8:\"nav_menu\";i:13;}i:4;a:2:{s:5:\"title\";s:16:\"More Free Themes\";s:8:\"nav_menu\";i:14;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:14:{i:1529839283;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1529850073;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1529860873;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1529863053;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1529884800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1530576000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}i:1566803605;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1566805345;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1566814405;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1566814423;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566814705;a:1:{s:30:\"everest_forms_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1566814934;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1566818473;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528020881;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:12:\"categories-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:12;}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(142, 'recently_activated', 'a:7:{s:53:\"themegrill-demo-importer/themegrill-demo-importer.php\";i:1528020919;s:31:\"everest-forms/everest-forms.php\";i:1528020915;s:35:\"unite-gallery-lite/unitegallery.php\";i:1527963403;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1527963372;s:24:\"wordpress-seo/wp-seo.php\";i:1527963368;s:19:\"akismet/akismet.php\";i:1527936335;s:9:\"hello.php\";i:1527936335;}', 'yes'),
(156, 'current_theme', 'ColorMag', 'yes'),
(157, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:12;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528020214;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:12:\"categories-2\";}}}}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(164, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(212, '_transient_twentyfifteen_categories', '2', 'yes'),
(213, 'theme_mods_twentysixteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527960048;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(214, '_transient_twentysixteen_categories', '2', 'yes'),
(219, 'theme_mods_verso-lite', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527960344;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"top-banner-info\";a:0:{}s:7:\"top-bar\";a:0:{}s:12:\"top-bar-info\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:16:\"footer-sidebar-3\";a:0:{}s:16:\"footer-sidebar-4\";a:0:{}}}}', 'yes'),
(226, 'theme_mods_magazine-newspaper', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1527960584;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"right-sidebar-2\";a:0:{}s:8:\"footer-1\";a:0:{}}}}', 'yes'),
(229, 'theme_mods_corporate-education', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:12;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528024381;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:12:\"categories-2\";}s:36:\"corporate-education-optional-sidebar\";a:1:{i:0;s:10:\"calendar-7\";}s:13:\"header-widget\";a:0:{}s:38:\"corporate-education-footer-widget-area\";a:1:{i:0;s:6:\"text-2\";}s:40:\"corporate-education-footer-widget-area-2\";a:1:{i:0;s:10:\"nav_menu-2\";}s:40:\"corporate-education-footer-widget-area-3\";a:1:{i:0;s:10:\"nav_menu-4\";}s:40:\"corporate-education-footer-widget-area-4\";a:1:{i:0;s:6:\"text-3\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(230, 'widget_corporate_education_social_link', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(231, 'widget_corporate_education_latest_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(232, 'widget_custom_info_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(234, 'theme_mods_magazine-blog', 'a:13:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:12;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528020241;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:12:\"categories-2\";}s:15:\"right-sidebar-2\";a:0:{}s:8:\"footer-1\";a:0:{}}}s:11:\"custom_logo\";i:123;s:16:\"background_color\";s:6:\"ffffff\";s:16:\"facebook_textbox\";s:40:\"https://www.facebook.com/shakzeeofficial\";s:15:\"twitter_textbox\";s:40:\"https://www.facebook.com/shakzeeofficial\";s:18:\"googleplus_textbox\";s:40:\"https://www.facebook.com/shakzeeofficial\";s:15:\"youtube_textbox\";s:40:\"https://www.facebook.com/shakzeeofficial\";s:16:\"linkedin_textbox\";s:40:\"https://www.facebook.com/shakzeeofficial\";s:17:\"instagram_textbox\";s:40:\"https://www.facebook.com/shakzeeofficial\";s:11:\"show_author\";b:1;}', 'yes'),
(243, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(263, 'widget_unitegallery-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'wpseo', 'a:19:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:5:\"7.5.3\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1527962253;}', 'yes'),
(271, 'wpseo_titles', 'a:65:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;}', 'yes'),
(272, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(273, 'wpseo_flush_rewrite', '1', 'yes'),
(279, 'rewrite_rules', 'a:154:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=72&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(284, 'WPLANG', '', 'yes'),
(285, 'new_admin_email', 'shakzee171@gmail.com', 'yes'),
(288, '_transient_corporate_education_categories', '2', 'yes'),
(297, 'theme_mods_colormag', 'a:43:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:12;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528024347;s:4:\"data\";a:17:{s:19:\"wp_inactive_widgets\";a:0:{}s:22:\"colormag_right_sidebar\";a:2:{i:0;s:41:\"colormag_featured_posts_vertical_widget-5\";i:1;s:12:\"categories-2\";}s:21:\"colormag_left_sidebar\";a:1:{i:0;s:10:\"calendar-7\";}s:23:\"colormag_header_sidebar\";a:0:{}s:31:\"colormag_front_page_slider_area\";a:1:{i:0;s:39:\"colormag_featured_posts_slider_widget-2\";}s:38:\"colormag_front_page_area_beside_slider\";a:1:{i:0;s:35:\"colormag_highlighted_posts_widget-2\";}s:39:\"colormag_front_page_content_top_section\";a:1:{i:0;s:32:\"colormag_featured_posts_widget-2\";}s:47:\"colormag_front_page_content_middle_left_section\";a:1:{i:0;s:41:\"colormag_featured_posts_vertical_widget-3\";}s:48:\"colormag_front_page_content_middle_right_section\";a:1:{i:0;s:41:\"colormag_featured_posts_vertical_widget-4\";}s:42:\"colormag_front_page_content_bottom_section\";a:1:{i:0;s:32:\"colormag_featured_posts_widget-3\";}s:29:\"colormag_contact_page_sidebar\";a:0:{}s:31:\"colormag_error_404_page_sidebar\";a:0:{}s:47:\"colormag_advertisement_above_the_footer_sidebar\";a:0:{}s:27:\"colormag_footer_sidebar_one\";a:1:{i:0;s:6:\"text-2\";}s:27:\"colormag_footer_sidebar_two\";a:1:{i:0;s:10:\"nav_menu-2\";}s:29:\"colormag_footer_sidebar_three\";a:1:{i:0;s:10:\"nav_menu-4\";}s:28:\"colormag_footer_sidebar_four\";a:1:{i:0;s:6:\"text-3\";}}}s:11:\"custom_logo\";i:132;s:16:\"background_color\";s:6:\"ffffff\";s:21:\"external_header_video\";s:0:\"\";s:12:\"header_image\";s:71:\"http://localhost/wordpress/wp-content/uploads/2018/06/cropped-img-3.jpg\";s:16:\"background_image\";s:0:\"\";s:17:\"background_preset\";s:7:\"default\";s:15:\"background_size\";s:4:\"auto\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_attachment\";s:6:\"scroll\";s:30:\"colormag_header_logo_placement\";s:16:\"header_text_only\";s:22:\"colormag_breaking_news\";i:1;s:30:\"colormag_header_image_position\";s:12:\"position_two\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:134;s:3:\"url\";s:71:\"http://localhost/wordpress/wp-content/uploads/2018/06/cropped-img-3.jpg\";s:13:\"thumbnail_url\";s:71:\"http://localhost/wordpress/wp-content/uploads/2018/06/cropped-img-3.jpg\";s:6:\"height\";i:120;s:5:\"width\";i:420;}s:44:\"colormag_main_total_header_area_display_type\";s:8:\"type_one\";s:26:\"colormag_home_icon_display\";i:1;s:28:\"colormag_primary_sticky_menu\";i:1;s:28:\"colormag_search_icon_in_menu\";i:1;s:28:\"colormag_random_post_in_menu\";i:1;s:24:\"colormag_responsive_menu\";i:1;s:24:\"colormag_hide_blog_front\";i:1;s:22:\"colormag_primary_color\";s:7:\"#dd9933\";s:29:\"colormag_social_link_activate\";i:1;s:24:\"colormag_social_facebook\";s:25:\"https://www.facebook.com/\";s:33:\"colormag_social_facebook_checkbox\";i:1;s:23:\"colormag_social_twitter\";s:25:\"https://www.facebook.com/\";s:32:\"colormag_social_twitter_checkbox\";i:1;s:26:\"colormag_social_googleplus\";s:25:\"https://www.facebook.com/\";s:35:\"colormag_social_googleplus_checkbox\";i:1;s:25:\"colormag_social_instagram\";s:25:\"https://www.facebook.com/\";s:34:\"colormag_social_instagram_checkbox\";i:1;s:34:\"colormag_social_pinterest_checkbox\";i:1;s:23:\"colormag_social_youtube\";s:25:\"https://www.facebook.com/\";s:32:\"colormag_social_youtube_checkbox\";i:1;s:40:\"colormag_main_footer_layout_display_type\";s:8:\"type_one\";s:31:\"colormag_related_posts_activate\";i:1;s:29:\"colormag_featured_image_popup\";i:1;s:28:\"colormag_featured_image_show\";s:0:\"\";s:40:\"colormag_featured_image_single_page_show\";i:1;s:23:\"colormag_default_layout\";s:13:\"right_sidebar\";}', 'yes'),
(298, 'widget_colormag_featured_posts_slider_widget', 'a:2:{i:2;a:3:{s:6:\"number\";i:4;s:4:\"type\";s:8:\"category\";s:8:\"category\";s:2:\"17\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'widget_colormag_highlighted_posts_widget', 'a:2:{i:2;a:3:{s:6:\"number\";i:4;s:4:\"type\";s:8:\"category\";s:8:\"category\";s:2:\"17\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_colormag_featured_posts_widget', 'a:3:{i:2;a:5:{s:5:\"title\";s:6:\"Health\";s:4:\"text\";s:0:\"\";s:6:\"number\";i:4;s:4:\"type\";s:8:\"category\";s:8:\"category\";s:2:\"17\";}i:3;a:5:{s:5:\"title\";s:10:\"Technology\";s:4:\"text\";s:0:\"\";s:6:\"number\";i:4;s:4:\"type\";s:8:\"category\";s:8:\"category\";s:2:\"20\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_colormag_featured_posts_vertical_widget', 'a:4:{i:3;a:5:{s:5:\"title\";s:7:\"Fashion\";s:4:\"text\";s:0:\"\";s:6:\"number\";i:4;s:4:\"type\";s:8:\"category\";s:8:\"category\";s:2:\"20\";}i:4;a:5:{s:5:\"title\";s:6:\"SPORTS\";s:4:\"text\";s:0:\"\";s:6:\"number\";i:4;s:4:\"type\";s:8:\"category\";s:8:\"category\";s:2:\"17\";}i:5;a:5:{s:5:\"title\";s:4:\"News\";s:4:\"text\";s:0:\"\";s:6:\"number\";i:4;s:4:\"type\";s:8:\"category\";s:8:\"category\";s:2:\"18\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_colormag_728x90_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(303, 'widget_colormag_300x250_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'widget_colormag_125x125_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(306, 'colormag_admin_notice_welcome', '1', 'yes'),
(313, 'everest_forms_disable_user_details', 'no', 'yes'),
(314, 'evf_recaptcha_site_key', '', 'yes'),
(315, 'evf_recaptcha_site_secret', '', 'yes'),
(316, 'evf_required_validation', 'This field is required.', 'yes'),
(317, 'evf_url_validation', 'Please enter a valid URL.', 'yes'),
(318, 'evf_email_validation', 'Please enter a valid email address.', 'yes'),
(319, 'evf_number_validation', 'Please enter a valid number.', 'yes'),
(320, 'evf_recaptcha_validation', 'Invalid reCaptcha Code.', 'yes'),
(321, 'evf_default_form_page_id', '121', 'yes'),
(328, 'everest_forms_admin_notices', 'a:0:{}', 'yes'),
(372, 'everest_forms_version', '1.1.7', 'yes');
INSERT INTO `skz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(373, 'everest_forms_db_version', '1.1.7', 'yes'),
(392, 'category_children', 'a:0:{}', 'yes'),
(409, 'woocommerce_store_address', 'addres New London', 'yes'),
(410, 'woocommerce_store_address_2', '', 'yes'),
(411, 'woocommerce_store_city', 'London', 'yes'),
(412, 'woocommerce_default_country', 'GB', 'yes'),
(413, 'woocommerce_store_postcode', '71000', 'yes'),
(414, 'woocommerce_allowed_countries', 'all', 'yes'),
(415, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(416, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(417, 'woocommerce_ship_to_countries', '', 'yes'),
(418, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(419, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(420, 'woocommerce_calc_taxes', 'no', 'yes'),
(421, 'woocommerce_enable_coupons', 'yes', 'yes'),
(422, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(423, 'woocommerce_currency', 'GBP', 'yes'),
(424, 'woocommerce_currency_pos', 'left', 'yes'),
(425, 'woocommerce_price_thousand_sep', ',', 'yes'),
(426, 'woocommerce_price_decimal_sep', '.', 'yes'),
(427, 'woocommerce_price_num_decimals', '2', 'yes'),
(428, 'woocommerce_shop_page_id', '', 'yes'),
(429, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(430, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(431, 'woocommerce_weight_unit', 'kg', 'yes'),
(432, 'woocommerce_dimension_unit', 'cm', 'yes'),
(433, 'woocommerce_enable_reviews', 'yes', 'yes'),
(434, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(435, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(436, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(437, 'woocommerce_review_rating_required', 'yes', 'no'),
(438, 'woocommerce_manage_stock', 'yes', 'yes'),
(439, 'woocommerce_hold_stock_minutes', '60', 'no'),
(440, 'woocommerce_notify_low_stock', 'yes', 'no'),
(441, 'woocommerce_notify_no_stock', 'yes', 'no'),
(442, 'woocommerce_stock_email_recipient', 'shakzee171@gmail.com', 'no'),
(443, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(444, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(445, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(446, 'woocommerce_stock_format', '', 'yes'),
(447, 'woocommerce_file_download_method', 'force', 'no'),
(448, 'woocommerce_downloads_require_login', 'no', 'no'),
(449, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(450, 'woocommerce_prices_include_tax', 'no', 'yes'),
(451, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(452, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(453, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(454, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(455, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(456, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(457, 'woocommerce_price_display_suffix', '', 'yes'),
(458, 'woocommerce_tax_total_display', 'itemized', 'no'),
(459, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(460, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(461, 'woocommerce_ship_to_destination', 'billing', 'no'),
(462, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(463, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(464, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(465, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(466, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(467, 'woocommerce_registration_generate_username', 'yes', 'no'),
(468, 'woocommerce_registration_generate_password', 'yes', 'no'),
(469, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(470, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(471, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(472, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(473, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(474, 'woocommerce_trash_pending_orders', '', 'no'),
(475, 'woocommerce_trash_failed_orders', '', 'no'),
(476, 'woocommerce_trash_cancelled_orders', '', 'no'),
(477, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(478, 'woocommerce_email_from_name', 'shakzee', 'no'),
(479, 'woocommerce_email_from_address', 'shakzee171@gmail.com', 'no'),
(480, 'woocommerce_email_header_image', '', 'no'),
(481, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(482, 'woocommerce_email_base_color', '#96588a', 'no'),
(483, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(484, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(485, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(486, 'woocommerce_cart_page_id', '', 'yes'),
(487, 'woocommerce_checkout_page_id', '', 'yes'),
(488, 'woocommerce_myaccount_page_id', '', 'yes'),
(489, 'woocommerce_terms_page_id', '', 'no'),
(490, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(491, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(492, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(493, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(494, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(495, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(496, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(497, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(498, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(499, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(500, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(501, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(502, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(503, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(504, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(505, 'woocommerce_api_enabled', 'no', 'yes'),
(506, 'woocommerce_single_image_width', '600', 'yes'),
(507, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(508, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(509, 'woocommerce_demo_store', 'no', 'no'),
(510, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(511, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(512, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(513, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(514, 'product_cat_children', 'a:0:{}', 'yes'),
(515, 'default_product_cat', '37', 'yes'),
(516, 'woocommerce_version', '3.4.1', 'yes'),
(517, 'woocommerce_db_version', '3.4.1', 'yes'),
(518, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(519, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(520, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(521, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(522, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(523, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(524, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(525, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(526, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(527, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(528, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(529, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(530, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(531, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(534, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:4;s:3:\"all\";i:4;s:9:\"moderated\";s:1:\"1\";s:8:\"approved\";s:1:\"3\";s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(535, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(541, '_transient_shipping-transient-version', '1528024985', 'yes'),
(544, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:20:\"shakzee171@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:20:\"shakzee171@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(545, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:16:\"Cash on delivery\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(546, 'woocommerce_cheque_settings', 'a:4:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:14:\"Check payments\";s:11:\"description\";s:98:\"Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.\";s:12:\"instructions\";s:0:\"\";}', 'yes'),
(547, 'woocommerce_bacs_settings', 'a:11:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:20:\"Direct bank transfer\";s:11:\"description\";s:176:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}', 'yes'),
(548, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(549, '_transient_product_query-transient-version', '1528025108', 'yes'),
(585, '_transient_timeout_external_ip_address_::1', '1567406545', 'no'),
(586, '_transient_external_ip_address_::1', '27.96.95.218', 'no'),
(588, '_site_transient_timeout_theme_roots', '1566803549', 'no'),
(589, '_site_transient_theme_roots', 'a:8:{s:8:\"colormag\";s:7:\"/themes\";s:19:\"corporate-education\";s:7:\"/themes\";s:13:\"magazine-blog\";s:7:\"/themes\";s:18:\"magazine-newspaper\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:10:\"verso-lite\";s:7:\"/themes\";}', 'no'),
(591, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1566801780;s:15:\"version_checked\";s:6:\"4.9.10\";s:12:\"translations\";a:0:{}}', 'no'),
(592, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1566801781;s:7:\"checked\";a:8:{s:8:\"colormag\";s:5:\"1.2.9\";s:19:\"corporate-education\";s:5:\"1.0.0\";s:13:\"magazine-blog\";s:5:\"1.0.1\";s:18:\"magazine-newspaper\";s:5:\"2.0.6\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";s:10:\"verso-lite\";s:5:\"1.2.2\";}s:8:\"response\";a:6:{s:8:\"colormag\";a:6:{s:5:\"theme\";s:8:\"colormag\";s:11:\"new_version\";s:5:\"1.4.2\";s:3:\"url\";s:38:\"https://wordpress.org/themes/colormag/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/colormag.1.4.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:19:\"corporate-education\";a:6:{s:5:\"theme\";s:19:\"corporate-education\";s:11:\"new_version\";s:5:\"1.0.4\";s:3:\"url\";s:49:\"https://wordpress.org/themes/corporate-education/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/theme/corporate-education.1.0.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";b:0;}s:18:\"magazine-newspaper\";a:6:{s:5:\"theme\";s:18:\"magazine-newspaper\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:48:\"https://wordpress.org/themes/magazine-newspaper/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/theme/magazine-newspaper.2.1.0.zip\";s:8:\"requires\";s:3:\"4.5\";s:12:\"requires_php\";b:0;}s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(593, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1566801785;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:47:\"application-passwords/application-passwords.php\";s:7:\"0.1-dev\";s:31:\"everest-forms/everest-forms.php\";s:5:\"1.1.7\";s:9:\"hello.php\";s:3:\"1.6\";s:53:\"themegrill-demo-importer/themegrill-demo-importer.php\";s:5:\"1.4.3\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.1\";}s:8:\"response\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"application-passwords/application-passwords.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/application-passwords\";s:4:\"slug\";s:21:\"application-passwords\";s:6:\"plugin\";s:47:\"application-passwords/application-passwords.php\";s:11:\"new_version\";s:5:\"0.1.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/application-passwords/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/application-passwords.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:74:\"https://ps.w.org/application-passwords/assets/icon-256x256.png?rev=2125188\";s:2:\"1x\";s:66:\"https://ps.w.org/application-passwords/assets/icon.svg?rev=2125188\";s:3:\"svg\";s:66:\"https://ps.w.org/application-passwords/assets/icon.svg?rev=2125188\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"everest-forms/everest-forms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/everest-forms\";s:4:\"slug\";s:13:\"everest-forms\";s:6:\"plugin\";s:31:\"everest-forms/everest-forms.php\";s:11:\"new_version\";s:5:\"1.5.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/everest-forms/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/everest-forms.1.5.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/everest-forms/assets/icon-128x128.png?rev=2123602\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/everest-forms/assets/banner-772x250.png?rev=2123602\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:53:\"themegrill-demo-importer/themegrill-demo-importer.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/themegrill-demo-importer\";s:4:\"slug\";s:24:\"themegrill-demo-importer\";s:6:\"plugin\";s:53:\"themegrill-demo-importer/themegrill-demo-importer.php\";s:11:\"new_version\";s:5:\"1.5.9\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/themegrill-demo-importer/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/themegrill-demo-importer.1.5.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/themegrill-demo-importer/assets/icon-256x256.png?rev=1928438\";s:2:\"1x\";s:77:\"https://ps.w.org/themegrill-demo-importer/assets/icon-128x128.png?rev=1928438\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/themegrill-demo-importer/assets/banner-1544x500.png?rev=1928438\";s:2:\"1x\";s:79:\"https://ps.w.org/themegrill-demo-importer/assets/banner-772x250.png?rev=1928438\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.7.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(594, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"shakzee171@gmail.com\";s:7:\"version\";s:6:\"4.9.10\";s:9:\"timestamp\";i:1566801783;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `skz_postmeta`
--

CREATE TABLE `skz_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_postmeta`
--

INSERT INTO `skz_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_wp_attached_file', '2018/06/1.jpg'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:960;s:4:\"file\";s:13:\"2018/06/1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 8, '_wp_attached_file', '2018/06/2.jpg'),
(8, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:960;s:4:\"file\";s:13:\"2018/06/2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 9, '_wp_attached_file', '2018/06/3.jpg'),
(10, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:960;s:4:\"file\";s:13:\"2018/06/3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 10, '_wp_attached_file', '2018/06/4.jpg'),
(12, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:607;s:6:\"height\";i:720;s:4:\"file\";s:13:\"2018/06/4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-253x300.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 11, '_wp_attached_file', '2018/06/5.jpg'),
(14, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:960;s:4:\"file\";s:13:\"2018/06/5.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 12, '_wp_attached_file', '2018/06/bootstrap.gif'),
(16, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:21:\"2018/06/bootstrap.gif\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bootstrap-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bootstrap-300x200.gif\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"bootstrap-768x512.gif\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/gif\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"bootstrap-1024x683.gif\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:9:\"image/gif\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"bootstrap-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 13, '_wp_attached_file', '2018/06/bootstrap.jpg'),
(18, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:422;s:4:\"file\";s:21:\"2018/06/bootstrap.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bootstrap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bootstrap-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"bootstrap-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 14, '_wp_attached_file', '2018/06/codeigniter-fast-track-1024x683.png'),
(20, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:43:\"2018/06/codeigniter-fast-track-1024x683.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"codeigniter-fast-track-1024x683-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"codeigniter-fast-track-1024x683-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"codeigniter-fast-track-1024x683-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"codeigniter-fast-track-1024x683-1024x683.png\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:43:\"codeigniter-fast-track-1024x683-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 15, '_wp_attached_file', '2018/06/composer.png'),
(22, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:356;s:4:\"file\";s:20:\"2018/06/composer.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"composer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"composer-244x300.png\";s:5:\"width\";i:244;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"composer-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 16, '_wp_attached_file', '2018/06/gl1.png'),
(24, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1125;s:6:\"height\";i:617;s:4:\"file\";s:15:\"2018/06/gl1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"gl1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"gl1-300x165.png\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"gl1-768x421.png\";s:5:\"width\";i:768;s:6:\"height\";i:421;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"gl1-1024x562.png\";s:5:\"width\";i:1024;s:6:\"height\";i:562;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"gl1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 17, '_wp_attached_file', '2018/06/laravel-in-urdu.png'),
(26, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:27:\"2018/06/laravel-in-urdu.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"laravel-in-urdu-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"laravel-in-urdu-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"laravel-in-urdu-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"laravel-in-urdu-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:27:\"laravel-in-urdu-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 23, '_wp_attached_file', '2018/06/Laravel-Course-in-English-1024x683.png'),
(36, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:46:\"2018/06/Laravel-Course-in-English-1024x683.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"Laravel-Course-in-English-1024x683-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"Laravel-Course-in-English-1024x683-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"Laravel-Course-in-English-1024x683-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"Laravel-Course-in-English-1024x683-1024x683.png\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:46:\"Laravel-Course-in-English-1024x683-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 24, '_wp_attached_file', '2018/06/login.jpg'),
(38, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:851;s:6:\"height\";i:450;s:4:\"file\";s:17:\"2018/06/login.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"login-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"login-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"login-768x406.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:406;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:17:\"login-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 25, '_wp_attached_file', '2018/06/php-to-php7English.jpg'),
(40, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:422;s:4:\"file\";s:30:\"2018/06/php-to-php7English.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"php-to-php7English-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"php-to-php7English-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:30:\"php-to-php7English-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 26, '_wp_attached_file', '2018/06/ssl.png'),
(42, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:724;s:6:\"height\";i:412;s:4:\"file\";s:15:\"2018/06/ssl.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ssl-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"ssl-300x171.png\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:15:\"ssl-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 27, '_wp_attached_file', '2018/06/Wordpress-in-English-1024x683.png'),
(44, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:41:\"2018/06/Wordpress-in-English-1024x683.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"Wordpress-in-English-1024x683-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"Wordpress-in-English-1024x683-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"Wordpress-in-English-1024x683-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"Wordpress-in-English-1024x683-1024x683.png\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:41:\"Wordpress-in-English-1024x683-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 1, '_edit_lock', '1527937789:1'),
(53, 33, '_edit_last', '1'),
(54, 33, '_edit_lock', '1527939840:1'),
(57, 35, '_wp_attached_file', '2018/06/17507737.jpg'),
(58, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:1080;s:4:\"file\";s:20:\"2018/06/17507737.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"17507737-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"17507737-194x300.jpg\";s:5:\"width\";i:194;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"17507737-664x1024.jpg\";s:5:\"width\";i:664;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"17507737-700x510.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 33, '_thumbnail_id', '27'),
(95, 54, '_wp_attached_file', '2018/06/47-images-in-bootstrap.mp4'),
(96, 54, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:22452610;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:316;s:16:\"length_formatted\";s:4:\"5:16\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1445375074;}'),
(97, 55, '_wp_attached_file', '2018/06/seopowersuite-jre-x64.zip'),
(98, 56, '_wp_attached_file', '2018/06/site-1.jpg'),
(99, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:754;s:6:\"height\";i:329;s:4:\"file\";s:18:\"2018/06/site-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"site-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"site-1-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(100, 57, '_wp_attached_file', '2018/06/site.jpg'),
(101, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:754;s:6:\"height\";i:329;s:4:\"file\";s:16:\"2018/06/site.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"site-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"site-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(102, 58, '_wp_attached_file', '2018/06/skzwp17may2018.zip'),
(103, 59, '_wp_attached_file', '2018/06/Untitled-design.png'),
(104, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:820;s:6:\"height\";i:312;s:4:\"file\";s:27:\"2018/06/Untitled-design.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Untitled-design-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Untitled-design-300x114.png\";s:5:\"width\";i:300;s:6:\"height\";i:114;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Untitled-design-768x292.png\";s:5:\"width\";i:768;s:6:\"height\";i:292;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 60, '_wp_attached_file', '2018/06/WeChat-Image_20180212011011.jpg'),
(106, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:1080;s:4:\"file\";s:39:\"2018/06/WeChat-Image_20180212011011.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"WeChat-Image_20180212011011-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"WeChat-Image_20180212011011-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"WeChat-Image_20180212011011-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"WeChat-Image_20180212011011-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:39:\"WeChat-Image_20180212011011-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 61, '_wp_attached_file', '2018/06/wordpress-4.9.4.zip'),
(108, 62, '_wp_attached_file', '2018/06/Assignment4Shakzee-Copy.docx'),
(109, 63, '_wp_attached_file', '2018/06/bill-Copy.jpg'),
(110, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:1024;s:4:\"file\";s:21:\"2018/06/bill-Copy.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"bill-Copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"bill-Copy-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"bill-Copy-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"bill-Copy-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"bill-Copy-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 64, '_wp_attached_file', '2018/06/bill2-Copy.png'),
(112, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:960;s:4:\"file\";s:22:\"2018/06/bill2-Copy.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"bill2-Copy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"bill2-Copy-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"bill2-Copy-720x510.png\";s:5:\"width\";i:720;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 65, '_wp_attached_file', '2018/06/3rd_assignment-Copy.docx'),
(114, 66, '_wp_attached_file', '2018/06/47-images-in-bootstrap-Copy.mp4'),
(115, 66, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:22452610;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:316;s:16:\"length_formatted\";s:4:\"5:16\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1445375074;}'),
(116, 67, '_wp_attached_file', '2018/06/1540570_6e82_2-Copy.jpg'),
(117, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:422;s:4:\"file\";s:31:\"2018/06/1540570_6e82_2-Copy.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"1540570_6e82_2-Copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"1540570_6e82_2-Copy-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 68, '_wp_attached_file', '2018/06/1626890_6130_4-Copy.jpg'),
(119, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:422;s:4:\"file\";s:31:\"2018/06/1626890_6130_4-Copy.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"1626890_6130_4-Copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"1626890_6130_4-Copy-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 69, '_wp_attached_file', '2018/06/Assignment-Copy.docx'),
(123, 33, 'enclosure', 'http://localhost/wordpress/wp-content/uploads/2018/06/47-images-in-bootstrap-Copy.mp4\r\n22452610\r\nvideo/mp4\r\n'),
(135, 3, '_edit_lock', '1527943291:1'),
(136, 2, '_edit_lock', '1527958404:1'),
(137, 72, '_edit_last', '1'),
(138, 72, '_edit_lock', '1528023463:1'),
(139, 76, '_edit_last', '1'),
(140, 76, '_edit_lock', '1527943411:1'),
(141, 78, '_edit_last', '1'),
(142, 78, '_edit_lock', '1527943453:1'),
(143, 2, '_edit_last', '1'),
(144, 81, '_edit_lock', '1527959024:2'),
(145, 81, '_edit_last', '2'),
(146, 83, '_edit_lock', '1527959072:1'),
(147, 83, '_edit_last', '2'),
(155, 88, '_edit_lock', '1527959317:1'),
(156, 88, '_edit_last', '2'),
(157, 90, '_edit_lock', '1527959416:2'),
(158, 90, '_edit_last', '2'),
(161, 92, '_edit_lock', '1527959459:2'),
(162, 92, '_edit_last', '2'),
(165, 95, '_menu_item_type', 'custom'),
(166, 95, '_menu_item_menu_item_parent', '0'),
(167, 95, '_menu_item_object_id', '95'),
(168, 95, '_menu_item_object', 'custom'),
(169, 95, '_menu_item_target', ''),
(170, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(171, 95, '_menu_item_xfn', ''),
(172, 95, '_menu_item_url', 'http://localhost/wordpress/'),
(173, 95, '_menu_item_orphaned', '1527961310'),
(174, 96, '_menu_item_type', 'post_type'),
(175, 96, '_menu_item_menu_item_parent', '0'),
(176, 96, '_menu_item_object_id', '92'),
(177, 96, '_menu_item_object', 'page'),
(178, 96, '_menu_item_target', ''),
(179, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(180, 96, '_menu_item_xfn', ''),
(181, 96, '_menu_item_url', ''),
(182, 96, '_menu_item_orphaned', '1527961310'),
(183, 97, '_menu_item_type', 'post_type'),
(184, 97, '_menu_item_menu_item_parent', '0'),
(185, 97, '_menu_item_object_id', '72'),
(186, 97, '_menu_item_object', 'page'),
(187, 97, '_menu_item_target', ''),
(188, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(189, 97, '_menu_item_xfn', ''),
(190, 97, '_menu_item_url', ''),
(191, 97, '_menu_item_orphaned', '1527961310'),
(192, 98, '_menu_item_type', 'post_type'),
(193, 98, '_menu_item_menu_item_parent', '0'),
(194, 98, '_menu_item_object_id', '76'),
(195, 98, '_menu_item_object', 'page'),
(196, 98, '_menu_item_target', ''),
(197, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(198, 98, '_menu_item_xfn', ''),
(199, 98, '_menu_item_url', ''),
(200, 98, '_menu_item_orphaned', '1527961310'),
(201, 99, '_menu_item_type', 'post_type'),
(202, 99, '_menu_item_menu_item_parent', '0'),
(203, 99, '_menu_item_object_id', '78'),
(204, 99, '_menu_item_object', 'page'),
(205, 99, '_menu_item_target', ''),
(206, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(207, 99, '_menu_item_xfn', ''),
(208, 99, '_menu_item_url', ''),
(209, 99, '_menu_item_orphaned', '1527961310'),
(210, 100, '_menu_item_type', 'post_type'),
(211, 100, '_menu_item_menu_item_parent', '0'),
(212, 100, '_menu_item_object_id', '2'),
(213, 100, '_menu_item_object', 'page'),
(214, 100, '_menu_item_target', ''),
(215, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(216, 100, '_menu_item_xfn', ''),
(217, 100, '_menu_item_url', ''),
(218, 100, '_menu_item_orphaned', '1527961310'),
(282, 108, '_menu_item_type', 'post_type'),
(283, 108, '_menu_item_menu_item_parent', '0'),
(284, 108, '_menu_item_object_id', '76'),
(285, 108, '_menu_item_object', 'page'),
(286, 108, '_menu_item_target', ''),
(287, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 108, '_menu_item_xfn', ''),
(289, 108, '_menu_item_url', ''),
(290, 108, '_menu_item_orphaned', '1527961499'),
(291, 109, '_menu_item_type', 'post_type'),
(292, 109, '_menu_item_menu_item_parent', '0'),
(293, 109, '_menu_item_object_id', '78'),
(294, 109, '_menu_item_object', 'page'),
(295, 109, '_menu_item_target', ''),
(296, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(297, 109, '_menu_item_xfn', ''),
(298, 109, '_menu_item_url', ''),
(299, 109, '_menu_item_orphaned', '1527961499'),
(318, 112, '_edit_lock', '1527963149:1'),
(319, 112, '_edit_last', '1'),
(320, 112, 'corporate-education-sidebar-position', ''),
(321, 112, 'corporate-education-selected-sidebar', 'sidebar-1'),
(322, 112, 'corporate-education-header-image', 'show-both'),
(323, 114, '_menu_item_type', 'post_type'),
(324, 114, '_menu_item_menu_item_parent', '0'),
(325, 114, '_menu_item_object_id', '112'),
(326, 114, '_menu_item_object', 'page'),
(327, 114, '_menu_item_target', ''),
(328, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(329, 114, '_menu_item_xfn', ''),
(330, 114, '_menu_item_url', ''),
(347, 117, '_edit_last', '1'),
(348, 117, 'corporate-education-sidebar-position', ''),
(349, 117, 'corporate-education-selected-sidebar', 'sidebar-1'),
(350, 117, 'corporate-education-header-image', 'show-both'),
(351, 117, '_edit_lock', '1527962442:1'),
(354, 112, '_yoast_wpseo_post_image_cache', 'a:0:{}'),
(355, 90, '_yoast_wpseo_post_image_cache', 'a:0:{}'),
(356, 1, '_yoast_wpseo_post_image_cache', 'a:0:{}'),
(357, 122, '_wp_attached_file', '2018/06/shakzeelogo.png'),
(358, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:23:\"2018/06/shakzeelogo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"shakzeelogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"shakzeelogo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"magazine-newspaper-banner\";a:4:{s:4:\"file\";s:23:\"shakzeelogo-512x401.png\";s:5:\"width\";i:512;s:6:\"height\";i:401;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 123, '_wp_attached_file', '2018/06/cropped-shakzeelogo.png'),
(360, 123, '_wp_attachment_context', 'custom-logo'),
(361, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:90;s:6:\"height\";i:90;s:4:\"file\";s:31:\"2018/06/cropped-shakzeelogo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(365, 125, '_wp_attached_file', '2018/06/cropped-shakzeelogo-1.png'),
(366, 125, '_wp_attachment_context', 'custom-logo'),
(367, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2018/06/cropped-shakzeelogo-1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-1-392x272.png\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-1-390x205.png\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:32:\"cropped-shakzeelogo-1-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"colormag-featured-image\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-1-512x445.png\";s:5:\"width\";i:512;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(371, 128, '_wp_attached_file', '2018/06/img.jpg'),
(372, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:420;s:6:\"height\";i:120;s:4:\"file\";s:15:\"2018/06/img.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"img-150x120.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"img-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:15:\"img-392x120.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:15:\"img-390x120.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:14:\"img-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(373, 129, '_wp_attached_file', '2018/06/cropped-img-2.jpg'),
(374, 129, '_wp_attachment_context', 'custom-header'),
(375, 129, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:420;s:6:\"height\";i:120;s:4:\"file\";s:25:\"2018/06/cropped-img-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-img-2-150x120.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-img-2-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:25:\"cropped-img-2-392x120.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:25:\"cropped-img-2-390x120.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:24:\"cropped-img-2-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:128;}'),
(382, 131, '_wp_attached_file', '2018/06/cropped-shakzeelogo-2.png'),
(383, 131, '_wp_attachment_context', 'site-icon'),
(384, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2018/06/cropped-shakzeelogo-2.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-2-392x272.png\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-2-390x205.png\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:32:\"cropped-shakzeelogo-2-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"colormag-featured-image\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-2-512x445.png\";s:5:\"width\";i:512;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-2-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-2-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-2-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:31:\"cropped-shakzeelogo-2-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(385, 132, '_wp_attached_file', '2018/06/cropped-shakzeelogo-3.png'),
(386, 132, '_wp_attachment_context', 'custom-logo'),
(387, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2018/06/cropped-shakzeelogo-3.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-3-392x272.png\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-3-390x205.png\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:32:\"cropped-shakzeelogo-3-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"colormag-featured-image\";a:4:{s:4:\"file\";s:33:\"cropped-shakzeelogo-3-512x445.png\";s:5:\"width\";i:512;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 128, '_wp_attachment_is_custom_background', 'colormag'),
(392, 134, '_wp_attached_file', '2018/06/cropped-img-3.jpg'),
(393, 134, '_wp_attachment_context', 'custom-header'),
(394, 134, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:420;s:6:\"height\";i:120;s:4:\"file\";s:25:\"2018/06/cropped-img-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-img-3-150x120.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-img-3-300x86.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:25:\"cropped-img-3-392x120.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:25:\"cropped-img-3-390x120.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:24:\"cropped-img-3-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:128;}'),
(395, 134, '_wp_attachment_custom_header_last_used_colormag', '1528021451'),
(396, 134, '_wp_attachment_is_custom_header', 'colormag'),
(406, 138, '_menu_item_type', 'custom'),
(407, 138, '_menu_item_menu_item_parent', '0'),
(408, 138, '_menu_item_object_id', '138'),
(409, 138, '_menu_item_object', 'custom'),
(410, 138, '_menu_item_target', ''),
(411, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(412, 138, '_menu_item_xfn', ''),
(413, 138, '_menu_item_url', 'http://localhost/wordpress/'),
(415, 139, '_menu_item_type', 'custom'),
(416, 139, '_menu_item_menu_item_parent', '0'),
(417, 139, '_menu_item_object_id', '139'),
(418, 139, '_menu_item_object', 'custom'),
(419, 139, '_menu_item_target', ''),
(420, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(421, 139, '_menu_item_xfn', ''),
(422, 139, '_menu_item_url', 'http://localhost/wordpress/'),
(424, 140, '_menu_item_type', 'custom'),
(425, 140, '_menu_item_menu_item_parent', '0'),
(426, 140, '_menu_item_object_id', '140'),
(427, 140, '_menu_item_object', 'custom'),
(428, 140, '_menu_item_target', ''),
(429, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(430, 140, '_menu_item_xfn', ''),
(431, 140, '_menu_item_url', 'http://localhost/wordpress/'),
(433, 141, '_menu_item_type', 'post_type'),
(434, 141, '_menu_item_menu_item_parent', '0'),
(435, 141, '_menu_item_object_id', '117'),
(436, 141, '_menu_item_object', 'page'),
(437, 141, '_menu_item_target', ''),
(438, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(439, 141, '_menu_item_xfn', ''),
(440, 141, '_menu_item_url', ''),
(442, 142, '_menu_item_type', 'post_type'),
(443, 142, '_menu_item_menu_item_parent', '0'),
(444, 142, '_menu_item_object_id', '112'),
(445, 142, '_menu_item_object', 'page'),
(446, 142, '_menu_item_target', ''),
(447, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(448, 142, '_menu_item_xfn', ''),
(449, 142, '_menu_item_url', ''),
(451, 143, '_menu_item_type', 'post_type'),
(452, 143, '_menu_item_menu_item_parent', '0'),
(453, 143, '_menu_item_object_id', '72'),
(454, 143, '_menu_item_object', 'page'),
(455, 143, '_menu_item_target', ''),
(456, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(457, 143, '_menu_item_xfn', ''),
(458, 143, '_menu_item_url', ''),
(460, 144, '_menu_item_type', 'post_type'),
(461, 144, '_menu_item_menu_item_parent', '0'),
(462, 144, '_menu_item_object_id', '2'),
(463, 144, '_menu_item_object', 'page'),
(464, 144, '_menu_item_target', ''),
(465, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(466, 144, '_menu_item_xfn', ''),
(467, 144, '_menu_item_url', ''),
(471, 146, '_edit_lock', '1528022402:1'),
(472, 147, '_wp_attached_file', '2018/06/coffee-563797_1280-800x445.jpg');
INSERT INTO `skz_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(473, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:38:\"2018/06/coffee-563797_1280-800x445.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"coffee-563797_1280-800x445-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"coffee-563797_1280-800x445-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"coffee-563797_1280-800x445-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:38:\"coffee-563797_1280-800x445-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:38:\"coffee-563797_1280-800x445-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:37:\"coffee-563797_1280-800x445-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(474, 146, '_edit_last', '1'),
(475, 146, 'colormag_page_layout', 'default_layout'),
(476, 146, '_thumbnail_id', '147'),
(479, 149, '_edit_lock', '1528022457:1'),
(480, 149, '_edit_last', '1'),
(481, 150, '_wp_attached_file', '2018/06/mosquito-542156_1280-800x445.jpg'),
(482, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:40:\"2018/06/mosquito-542156_1280-800x445.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"mosquito-542156_1280-800x445-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"mosquito-542156_1280-800x445-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"mosquito-542156_1280-800x445-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:40:\"mosquito-542156_1280-800x445-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:40:\"mosquito-542156_1280-800x445-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:39:\"mosquito-542156_1280-800x445-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(483, 149, 'colormag_page_layout', 'default_layout'),
(484, 149, '_thumbnail_id', '150'),
(487, 152, '_edit_lock', '1528022489:1'),
(488, 153, '_wp_attached_file', '2018/06/solar-eclipse-152834_1280-800x445.png'),
(489, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:45:\"2018/06/solar-eclipse-152834_1280-800x445.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"solar-eclipse-152834_1280-800x445-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"solar-eclipse-152834_1280-800x445-300x167.png\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"solar-eclipse-152834_1280-800x445-768x427.png\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:45:\"solar-eclipse-152834_1280-800x445-392x272.png\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:45:\"solar-eclipse-152834_1280-800x445-390x205.png\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:44:\"solar-eclipse-152834_1280-800x445-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(490, 152, '_edit_last', '1'),
(491, 152, 'colormag_page_layout', 'default_layout'),
(492, 152, '_thumbnail_id', '153'),
(495, 155, '_edit_lock', '1528022514:1'),
(496, 155, '_edit_last', '1'),
(497, 156, '_wp_attached_file', '2018/06/yummy-333666_1280-800x445.jpg'),
(498, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:37:\"2018/06/yummy-333666_1280-800x445.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"yummy-333666_1280-800x445-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"yummy-333666_1280-800x445-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"yummy-333666_1280-800x445-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:37:\"yummy-333666_1280-800x445-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:37:\"yummy-333666_1280-800x445-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:36:\"yummy-333666_1280-800x445-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(499, 155, 'colormag_page_layout', 'default_layout'),
(500, 155, '_thumbnail_id', '156'),
(503, 158, '_edit_lock', '1528022611:1'),
(504, 158, '_edit_last', '1'),
(505, 159, '_wp_attached_file', '2018/06/relay-race-655353_1280-800x445.jpg'),
(506, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:42:\"2018/06/relay-race-655353_1280-800x445.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"relay-race-655353_1280-800x445-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"relay-race-655353_1280-800x445-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"relay-race-655353_1280-800x445-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:42:\"relay-race-655353_1280-800x445-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:42:\"relay-race-655353_1280-800x445-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:41:\"relay-race-655353_1280-800x445-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(507, 158, 'colormag_page_layout', 'default_layout'),
(508, 158, '_thumbnail_id', '159'),
(519, 72, 'colormag_page_layout', 'default_layout'),
(520, 72, '_wp_page_template', 'default'),
(525, 168, '_edit_lock', '1528023739:1'),
(526, 168, '_edit_last', '1'),
(527, 169, '_wp_attached_file', '2018/06/model-600225_1280-800x445.jpg'),
(528, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:37:\"2018/06/model-600225_1280-800x445.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"model-600225_1280-800x445-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"model-600225_1280-800x445-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"model-600225_1280-800x445-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:37:\"model-600225_1280-800x445-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:37:\"model-600225_1280-800x445-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:36:\"model-600225_1280-800x445-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(529, 168, 'colormag_page_layout', 'default_layout'),
(530, 168, '_thumbnail_id', '169'),
(533, 171, '_edit_lock', '1528023789:1'),
(534, 171, '_edit_last', '1'),
(535, 172, '_wp_attached_file', '2018/06/beauty-666605_1920-800x445.jpg'),
(536, 172, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:38:\"2018/06/beauty-666605_1920-800x445.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"beauty-666605_1920-800x445-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"beauty-666605_1920-800x445-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"beauty-666605_1920-800x445-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:38:\"beauty-666605_1920-800x445-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:38:\"beauty-666605_1920-800x445-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:37:\"beauty-666605_1920-800x445-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(537, 171, 'colormag_page_layout', 'default_layout'),
(538, 171, '_thumbnail_id', '172'),
(541, 174, '_edit_lock', '1528023831:1'),
(542, 174, '_edit_last', '1'),
(543, 175, '_wp_attached_file', '2018/06/window-213496_1280-800x445.jpg'),
(544, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:38:\"2018/06/window-213496_1280-800x445.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"window-213496_1280-800x445-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"window-213496_1280-800x445-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"window-213496_1280-800x445-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:38:\"window-213496_1280-800x445-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:38:\"window-213496_1280-800x445-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:37:\"window-213496_1280-800x445-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(545, 174, 'colormag_page_layout', 'default_layout'),
(546, 174, '_thumbnail_id', '175'),
(549, 177, '_edit_lock', '1528024350:1'),
(550, 177, '_edit_last', '1'),
(551, 178, '_wp_attached_file', '2018/06/relaxed-498245_1280-800x445.jpg'),
(552, 178, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:39:\"2018/06/relaxed-498245_1280-800x445.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"relaxed-498245_1280-800x445-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"relaxed-498245_1280-800x445-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"relaxed-498245_1280-800x445-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:39:\"relaxed-498245_1280-800x445-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:39:\"relaxed-498245_1280-800x445-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:38:\"relaxed-498245_1280-800x445-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(553, 179, '_menu_item_type', 'taxonomy'),
(554, 179, '_menu_item_menu_item_parent', '0'),
(555, 179, '_menu_item_object_id', '17'),
(556, 179, '_menu_item_object', 'category'),
(557, 179, '_menu_item_target', ''),
(558, 179, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(559, 179, '_menu_item_xfn', ''),
(560, 179, '_menu_item_url', ''),
(561, 179, '_menu_item_orphaned', '1528024237'),
(562, 180, '_menu_item_type', 'taxonomy'),
(563, 180, '_menu_item_menu_item_parent', '0'),
(564, 180, '_menu_item_object_id', '18'),
(565, 180, '_menu_item_object', 'category'),
(566, 180, '_menu_item_target', ''),
(567, 180, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(568, 180, '_menu_item_xfn', ''),
(569, 180, '_menu_item_url', ''),
(570, 180, '_menu_item_orphaned', '1528024237'),
(571, 181, '_menu_item_type', 'taxonomy'),
(572, 181, '_menu_item_menu_item_parent', '0'),
(573, 181, '_menu_item_object_id', '20'),
(574, 181, '_menu_item_object', 'category'),
(575, 181, '_menu_item_target', ''),
(576, 181, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(577, 181, '_menu_item_xfn', ''),
(578, 181, '_menu_item_url', ''),
(579, 181, '_menu_item_orphaned', '1528024237'),
(580, 182, '_menu_item_type', 'taxonomy'),
(581, 182, '_menu_item_menu_item_parent', '0'),
(582, 182, '_menu_item_object_id', '22'),
(583, 182, '_menu_item_object', 'category'),
(584, 182, '_menu_item_target', ''),
(585, 182, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(586, 182, '_menu_item_xfn', ''),
(587, 182, '_menu_item_url', ''),
(588, 182, '_menu_item_orphaned', '1528024237'),
(589, 183, '_menu_item_type', 'taxonomy'),
(590, 183, '_menu_item_menu_item_parent', '0'),
(591, 183, '_menu_item_object_id', '17'),
(592, 183, '_menu_item_object', 'category'),
(593, 183, '_menu_item_target', ''),
(594, 183, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(595, 183, '_menu_item_xfn', ''),
(596, 183, '_menu_item_url', ''),
(598, 184, '_menu_item_type', 'taxonomy'),
(599, 184, '_menu_item_menu_item_parent', '0'),
(600, 184, '_menu_item_object_id', '18'),
(601, 184, '_menu_item_object', 'category'),
(602, 184, '_menu_item_target', ''),
(603, 184, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(604, 184, '_menu_item_xfn', ''),
(605, 184, '_menu_item_url', ''),
(607, 185, '_menu_item_type', 'taxonomy'),
(608, 185, '_menu_item_menu_item_parent', '0'),
(609, 185, '_menu_item_object_id', '20'),
(610, 185, '_menu_item_object', 'category'),
(611, 185, '_menu_item_target', ''),
(612, 185, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(613, 185, '_menu_item_xfn', ''),
(614, 185, '_menu_item_url', ''),
(616, 186, '_menu_item_type', 'taxonomy'),
(617, 186, '_menu_item_menu_item_parent', '0'),
(618, 186, '_menu_item_object_id', '22'),
(619, 186, '_menu_item_object', 'category'),
(620, 186, '_menu_item_target', ''),
(621, 186, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(622, 186, '_menu_item_xfn', ''),
(623, 186, '_menu_item_url', ''),
(625, 187, '_menu_item_type', 'taxonomy'),
(626, 187, '_menu_item_menu_item_parent', '186'),
(627, 187, '_menu_item_object_id', '17'),
(628, 187, '_menu_item_object', 'category'),
(629, 187, '_menu_item_target', ''),
(630, 187, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(631, 187, '_menu_item_xfn', ''),
(632, 187, '_menu_item_url', ''),
(634, 188, '_menu_item_type', 'taxonomy'),
(635, 188, '_menu_item_menu_item_parent', '186'),
(636, 188, '_menu_item_object_id', '18'),
(637, 188, '_menu_item_object', 'category'),
(638, 188, '_menu_item_target', ''),
(639, 188, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(640, 188, '_menu_item_xfn', ''),
(641, 188, '_menu_item_url', ''),
(643, 189, '_menu_item_type', 'taxonomy'),
(644, 189, '_menu_item_menu_item_parent', '186'),
(645, 189, '_menu_item_object_id', '20'),
(646, 189, '_menu_item_object', 'category'),
(647, 189, '_menu_item_target', ''),
(648, 189, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(649, 189, '_menu_item_xfn', ''),
(650, 189, '_menu_item_url', ''),
(652, 190, '_menu_item_type', 'taxonomy'),
(653, 190, '_menu_item_menu_item_parent', '186'),
(654, 190, '_menu_item_object_id', '22'),
(655, 190, '_menu_item_object', 'category'),
(656, 190, '_menu_item_target', ''),
(657, 190, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(658, 190, '_menu_item_xfn', ''),
(659, 190, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `skz_posts`
--

CREATE TABLE `skz_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_posts`
--

INSERT INTO `skz_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-02 10:13:25', '2018-06-02 10:13:25', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-02 10:13:25', '2018-06-02 10:13:25', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 2),
(2, 1, '2018-06-02 10:13:25', '2018-06-02 10:13:25', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'closed', '', 'sample-page', '', '', '2018-06-02 16:53:24', '2018-06-02 16:53:24', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 1),
(3, 1, '2018-06-02 10:13:25', '2018-06-02 10:13:25', '<h2>Who we are</h2><p>Our website address is: http://localhost/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-06-02 10:13:25', '2018-06-02 10:13:25', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(7, 1, '2018-06-02 10:23:18', '2018-06-02 10:23:18', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-06-02 10:23:18', '2018-06-02 10:23:18', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-06-02 10:23:18', '2018-06-02 10:23:18', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-06-02 10:23:18', '2018-06-02 10:23:18', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-06-02 10:23:19', '2018-06-02 10:23:19', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-06-02 10:23:19', '2018-06-02 10:23:19', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-06-02 10:23:19', '2018-06-02 10:23:19', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-06-02 10:23:19', '2018-06-02 10:23:19', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-06-02 10:23:20', '2018-06-02 10:23:20', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2018-06-02 10:23:20', '2018-06-02 10:23:20', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-06-02 10:23:20', '2018-06-02 10:23:20', '', 'bootstrap', '', 'inherit', 'open', 'closed', '', 'bootstrap', '', '', '2018-06-02 10:23:20', '2018-06-02 10:23:20', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/bootstrap.gif', 0, 'attachment', 'image/gif', 0),
(13, 1, '2018-06-02 10:23:21', '2018-06-02 10:23:21', '', 'bootstrap', '', 'inherit', 'open', 'closed', '', 'bootstrap-2', '', '', '2018-06-02 10:23:21', '2018-06-02 10:23:21', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/bootstrap.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-06-02 10:23:21', '2018-06-02 10:23:21', '', 'codeigniter-fast-track-1024x683', '', 'inherit', 'open', 'closed', '', 'codeigniter-fast-track-1024x683', '', '', '2018-06-02 10:23:21', '2018-06-02 10:23:21', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/codeigniter-fast-track-1024x683.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2018-06-02 10:23:22', '2018-06-02 10:23:22', '', 'composer', '', 'inherit', 'open', 'closed', '', 'composer', '', '', '2018-06-02 10:23:22', '2018-06-02 10:23:22', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/composer.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2018-06-02 10:23:23', '2018-06-02 10:23:23', '', 'gl1', '', 'inherit', 'open', 'closed', '', 'gl1', '', '', '2018-06-02 10:23:23', '2018-06-02 10:23:23', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/gl1.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2018-06-02 10:23:23', '2018-06-02 10:23:23', '', 'laravel in urdu', '', 'inherit', 'open', 'closed', '', 'laravel-in-urdu', '', '', '2018-06-02 10:23:23', '2018-06-02 10:23:23', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/laravel-in-urdu.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2018-06-02 10:39:54', '2018-06-02 10:39:54', '', 'Laravel-Course-in-English-1024x683', '', 'inherit', 'open', 'closed', '', 'laravel-course-in-english-1024x683', '', '', '2018-06-02 10:39:54', '2018-06-02 10:39:54', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/Laravel-Course-in-English-1024x683.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2018-06-02 10:39:56', '2018-06-02 10:39:56', '', 'login', '', 'inherit', 'open', 'closed', '', 'login', '', '', '2018-06-02 10:39:56', '2018-06-02 10:39:56', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/login.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-06-02 10:39:56', '2018-06-02 10:39:56', '', 'php-to-php7English', '', 'inherit', 'open', 'closed', '', 'php-to-php7english', '', '', '2018-06-02 10:39:56', '2018-06-02 10:39:56', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/php-to-php7English.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-06-02 10:39:57', '2018-06-02 10:39:57', '', 'ssl', '', 'inherit', 'open', 'closed', '', 'ssl', '', '', '2018-06-02 10:39:57', '2018-06-02 10:39:57', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/ssl.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2018-06-02 10:39:57', '2018-06-02 10:39:57', '', 'Wordpress-in-English-1024x683', '', 'inherit', 'open', 'closed', '', 'wordpress-in-english-1024x683', '', '', '2018-06-02 10:39:57', '2018-06-02 10:39:57', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/Wordpress-in-English-1024x683.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2018-06-02 11:08:46', '2018-06-02 11:08:46', 'this is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about php webmail and also codeigniter\r\n\r\n[video width=\"1280\" height=\"720\" mp4=\"http://localhost/wordpress/wp-content/uploads/2018/06/47-images-in-bootstrap-Copy.mp4\"][/video]\r\n\r\n<img class=\"alignnone size-medium wp-image-67\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/1540570_6e82_2-Copy-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /> <img class=\"alignnone size-medium wp-image-68\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/1626890_6130_4-Copy-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /> <img class=\"alignnone size-medium wp-image-60\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/WeChat-Image_20180212011011-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" /> <img class=\"alignnone size-medium wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Untitled-design-300x114.png\" alt=\"\" width=\"300\" height=\"114\" /> <img class=\"alignnone size-medium wp-image-57\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/site-300x131.jpg\" alt=\"\" width=\"300\" height=\"131\" />', 'this is new post we talking about php and wordpress', '', 'publish', 'open', 'open', '', 'this-is-new-post-we-talking-about-php-and-wordpress', '', '', '2018-06-02 11:44:14', '2018-06-02 11:44:14', '', 0, 'http://localhost/wordpress/?p=33', 0, 'post', '', 0),
(34, 1, '2018-06-02 11:08:46', '2018-06-02 11:08:46', 'this is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about php webmail and also codeigniter', 'this is new post we talking about php and wordpress', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-02 11:08:46', '2018-06-02 11:08:46', '', 33, 'http://localhost/wordpress/2018/06/02/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-06-02 11:09:23', '2018-06-02 11:09:23', '', '17507737', '', 'inherit', 'open', 'closed', '', '17507737', '', '', '2018-06-02 11:09:23', '2018-06-02 11:09:23', '', 33, 'http://localhost/wordpress/wp-content/uploads/2018/06/17507737.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-06-02 11:42:07', '2018-06-02 11:42:07', '', '47-images in bootstrap', '', 'inherit', 'open', 'closed', '', '47-images-in-bootstrap', '', '', '2018-06-02 11:42:07', '2018-06-02 11:42:07', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/47-images-in-bootstrap.mp4', 0, 'attachment', 'video/mp4', 0),
(55, 1, '2018-06-02 11:42:41', '2018-06-02 11:42:41', '', 'seopowersuite-jre-x64', '', 'inherit', 'open', 'closed', '', 'seopowersuite-jre-x64', '', '', '2018-06-02 11:42:41', '2018-06-02 11:42:41', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/seopowersuite-jre-x64.zip', 0, 'attachment', 'application/zip', 0),
(56, 1, '2018-06-02 11:42:41', '2018-06-02 11:42:41', '', 'site (1)', '', 'inherit', 'open', 'closed', '', 'site-1', '', '', '2018-06-02 11:42:41', '2018-06-02 11:42:41', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/site-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-06-02 11:42:42', '2018-06-02 11:42:42', '', 'site', '', 'inherit', 'open', 'closed', '', 'site', '', '', '2018-06-02 11:44:10', '2018-06-02 11:44:10', '', 33, 'http://localhost/wordpress/wp-content/uploads/2018/06/site.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-06-02 11:42:47', '2018-06-02 11:42:47', '', 'skzwp17may2018', '', 'inherit', 'open', 'closed', '', 'skzwp17may2018', '', '', '2018-06-02 11:42:47', '2018-06-02 11:42:47', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/skzwp17may2018.zip', 0, 'attachment', 'application/zip', 0),
(59, 1, '2018-06-02 11:42:48', '2018-06-02 11:42:48', '', 'Untitled design', '', 'inherit', 'open', 'closed', '', 'untitled-design', '', '', '2018-06-02 11:44:10', '2018-06-02 11:44:10', '', 33, 'http://localhost/wordpress/wp-content/uploads/2018/06/Untitled-design.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2018-06-02 11:42:49', '2018-06-02 11:42:49', '', 'WeChat Image_20180212011011', '', 'inherit', 'open', 'closed', '', 'wechat-image_20180212011011', '', '', '2018-06-02 11:44:10', '2018-06-02 11:44:10', '', 33, 'http://localhost/wordpress/wp-content/uploads/2018/06/WeChat-Image_20180212011011.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-06-02 11:42:50', '2018-06-02 11:42:50', '', 'wordpress-4.9.4', '', 'inherit', 'open', 'closed', '', 'wordpress-4-9-4', '', '', '2018-06-02 11:42:50', '2018-06-02 11:42:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/wordpress-4.9.4.zip', 0, 'attachment', 'application/zip', 0),
(62, 1, '2018-06-02 11:42:50', '2018-06-02 11:42:50', '', 'Assignment4Shakzee - Copy', '', 'inherit', 'open', 'closed', '', 'assignment4shakzee-copy', '', '', '2018-06-02 11:42:50', '2018-06-02 11:42:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/Assignment4Shakzee-Copy.docx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0),
(63, 1, '2018-06-02 11:42:51', '2018-06-02 11:42:51', '', 'bill - Copy', '', 'inherit', 'open', 'closed', '', 'bill-copy', '', '', '2018-06-02 11:42:51', '2018-06-02 11:42:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/bill-Copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-06-02 11:42:52', '2018-06-02 11:42:52', '', 'bill2 - Copy', '', 'inherit', 'open', 'closed', '', 'bill2-copy', '', '', '2018-06-02 11:42:52', '2018-06-02 11:42:52', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/bill2-Copy.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2018-06-02 11:42:53', '2018-06-02 11:42:53', '', '3rd_assignment - Copy', '', 'inherit', 'open', 'closed', '', '3rd_assignment-copy', '', '', '2018-06-02 11:42:53', '2018-06-02 11:42:53', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/3rd_assignment-Copy.docx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0),
(66, 1, '2018-06-02 11:42:54', '2018-06-02 11:42:54', '', '47-images in bootstrap - Copy', '', 'inherit', 'open', 'closed', '', '47-images-in-bootstrap-copy', '', '', '2018-06-02 11:43:24', '2018-06-02 11:43:24', '', 33, 'http://localhost/wordpress/wp-content/uploads/2018/06/47-images-in-bootstrap-Copy.mp4', 0, 'attachment', 'video/mp4', 0),
(67, 1, '2018-06-02 11:42:54', '2018-06-02 11:42:54', '', '1540570_6e82_2 - Copy', '', 'inherit', 'open', 'closed', '', '1540570_6e82_2-copy', '', '', '2018-06-02 11:44:10', '2018-06-02 11:44:10', '', 33, 'http://localhost/wordpress/wp-content/uploads/2018/06/1540570_6e82_2-Copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-06-02 11:42:55', '2018-06-02 11:42:55', '', '1626890_6130_4 - Copy', '', 'inherit', 'open', 'closed', '', '1626890_6130_4-copy', '', '', '2018-06-02 11:44:10', '2018-06-02 11:44:10', '', 33, 'http://localhost/wordpress/wp-content/uploads/2018/06/1626890_6130_4-Copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-06-02 11:42:55', '2018-06-02 11:42:55', '', 'Assignment - Copy', '', 'inherit', 'open', 'closed', '', 'assignment-copy', '', '', '2018-06-02 11:42:55', '2018-06-02 11:42:55', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/Assignment-Copy.docx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0),
(70, 1, '2018-06-02 11:43:39', '2018-06-02 11:43:39', 'this is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about php webmail and also codeigniter\r\n\r\n[video width=\"1280\" height=\"720\" mp4=\"http://localhost/wordpress/wp-content/uploads/2018/06/47-images-in-bootstrap-Copy.mp4\"][/video]', 'this is new post we talking about php and wordpress', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-02 11:43:39', '2018-06-02 11:43:39', '', 33, 'http://localhost/wordpress/2018/06/02/33-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-06-02 11:44:14', '2018-06-02 11:44:14', 'this is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about phpthis is new post we talking about php webmail and also codeigniter\r\n\r\n[video width=\"1280\" height=\"720\" mp4=\"http://localhost/wordpress/wp-content/uploads/2018/06/47-images-in-bootstrap-Copy.mp4\"][/video]\r\n\r\n<img class=\"alignnone size-medium wp-image-67\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/1540570_6e82_2-Copy-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /> <img class=\"alignnone size-medium wp-image-68\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/1626890_6130_4-Copy-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" /> <img class=\"alignnone size-medium wp-image-60\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/WeChat-Image_20180212011011-300x225.jpg\" alt=\"\" width=\"300\" height=\"225\" /> <img class=\"alignnone size-medium wp-image-59\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/Untitled-design-300x114.png\" alt=\"\" width=\"300\" height=\"114\" /> <img class=\"alignnone size-medium wp-image-57\" src=\"http://localhost/wordpress/wp-content/uploads/2018/06/site-300x131.jpg\" alt=\"\" width=\"300\" height=\"131\" />', 'this is new post we talking about php and wordpress', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-06-02 11:44:14', '2018-06-02 11:44:14', '', 33, 'http://localhost/wordpress/2018/06/02/33-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-06-02 12:44:43', '2018-06-02 12:44:43', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-06-03 10:59:02', '2018-06-03 10:59:02', '', 0, 'http://localhost/wordpress/?page_id=72', 0, 'page', '', 0),
(73, 1, '2018-06-02 12:44:36', '2018-06-02 12:44:36', 'content home page', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-06-02 12:44:36', '2018-06-02 12:44:36', '', 72, 'http://localhost/wordpress/2018/06/02/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-06-02 12:45:22', '2018-06-02 12:45:22', 'content home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home pagecontent home page\n\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2018-06-02 12:45:22', '2018-06-02 12:45:22', '', 72, 'http://localhost/wordpress/2018/06/02/72-autosave-v1/', 0, 'revision', '', 0),
(75, 1, '2018-06-02 12:45:27', '2018-06-02 12:45:27', 'Home page', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-06-02 12:45:27', '2018-06-02 12:45:27', '', 72, 'http://localhost/wordpress/2018/06/02/72-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-06-02 12:45:54', '2018-06-02 12:45:54', 'Inner home page', 'inner Home', '', 'publish', 'closed', 'closed', '', 'inner-home', '', '', '2018-06-02 12:45:54', '2018-06-02 12:45:54', '', 72, 'http://localhost/wordpress/?page_id=76', 0, 'page', '', 0),
(77, 1, '2018-06-02 12:45:54', '2018-06-02 12:45:54', 'Inner home page', 'inner Home', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-06-02 12:45:54', '2018-06-02 12:45:54', '', 76, 'http://localhost/wordpress/2018/06/02/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-06-02 12:46:36', '2018-06-02 12:46:36', 'Another inner home page', 'another inner', '', 'publish', 'closed', 'closed', '', 'another-inner', '', '', '2018-06-02 12:46:36', '2018-06-02 12:46:36', '', 76, 'http://localhost/wordpress/?page_id=78', 0, 'page', '', 0),
(79, 1, '2018-06-02 12:46:36', '2018-06-02 12:46:36', 'Another inner home page', 'another inner', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-06-02 12:46:36', '2018-06-02 12:46:36', '', 78, 'http://localhost/wordpress/2018/06/02/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-06-02 16:53:24', '2018-06-02 16:53:24', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-02 16:53:24', '2018-06-02 16:53:24', '', 2, 'http://localhost/wordpress/2018/06/02/2-revision-v1/', 0, 'revision', '', 0),
(81, 2, '2018-06-02 17:03:13', '0000-00-00 00:00:00', 'dfdfdfdf', 'dfdfdf', '', 'pending', 'open', 'open', '', '', '', '', '2018-06-02 17:03:13', '2018-06-02 17:03:13', '', 0, 'http://localhost/wordpress/?p=81', 0, 'post', '', 0),
(82, 2, '2018-06-02 17:03:13', '2018-06-02 17:03:13', 'dfdfdfdf', 'dfdfdf', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-06-02 17:03:13', '2018-06-02 17:03:13', '', 81, 'http://localhost/wordpress/2018/06/02/81-revision-v1/', 0, 'revision', '', 0),
(83, 2, '2018-06-02 17:03:55', '2018-06-02 17:03:55', 'fdfdfdf', 'dfdfd', '', 'publish', 'open', 'open', '', 'dfdfd', '', '', '2018-06-02 17:03:55', '2018-06-02 17:03:55', '', 0, 'http://localhost/wordpress/?p=83', 0, 'post', '', 0),
(84, 2, '2018-06-02 17:03:55', '2018-06-02 17:03:55', 'fdfdfdf', 'dfdfd', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-06-02 17:03:55', '2018-06-02 17:03:55', '', 83, 'http://localhost/wordpress/2018/06/02/83-revision-v1/', 0, 'revision', '', 0),
(88, 2, '2018-06-02 17:10:23', '0000-00-00 00:00:00', 'ldflkdlkfdfdfj', 'fdldflkdfdlfkdfkl', '', 'pending', 'open', 'open', '', '', '', '', '2018-06-02 17:10:23', '2018-06-02 17:10:23', '', 0, 'http://localhost/wordpress/?p=88', 0, 'post', '', 0),
(89, 2, '2018-06-02 17:10:23', '2018-06-02 17:10:23', 'ldflkdlkfdfdfj', 'fdldflkdfdlfkdfkl', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-06-02 17:10:23', '2018-06-02 17:10:23', '', 88, 'http://localhost/wordpress/2018/06/02/88-revision-v1/', 0, 'revision', '', 0),
(90, 2, '2018-06-02 17:12:37', '2018-06-02 17:12:37', 'dfddfdf', 'dfdfdfddf', '', 'publish', 'open', 'open', '', 'dfdfdfddf', '', '', '2018-06-02 17:12:37', '2018-06-02 17:12:37', '', 0, 'http://localhost/wordpress/?p=90', 0, 'post', '', 0),
(91, 2, '2018-06-02 17:12:37', '2018-06-02 17:12:37', 'dfddfdf', 'dfdfdfddf', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-06-02 17:12:37', '2018-06-02 17:12:37', '', 90, 'http://localhost/wordpress/2018/06/02/90-revision-v1/', 0, 'revision', '', 0),
(92, 2, '2018-06-02 17:13:18', '2018-06-02 17:13:18', 'dfdfdffd', 'dfdfdf', '', 'publish', 'closed', 'closed', '', 'dfdfdf', '', '', '2018-06-02 17:13:18', '2018-06-02 17:13:18', '', 0, 'http://localhost/wordpress/?page_id=92', 0, 'page', '', 0),
(93, 2, '2018-06-02 17:13:18', '2018-06-02 17:13:18', 'dfdfdffd', 'dfdfdf', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-06-02 17:13:18', '2018-06-02 17:13:18', '', 92, 'http://localhost/wordpress/2018/06/02/92-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-06-02 17:41:50', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-02 17:41:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=95', 1, 'nav_menu_item', '', 0),
(96, 1, '2018-06-02 17:41:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-02 17:41:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=96', 1, 'nav_menu_item', '', 0),
(97, 1, '2018-06-02 17:41:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-02 17:41:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=97', 1, 'nav_menu_item', '', 0),
(98, 1, '2018-06-02 17:41:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-02 17:41:50', '0000-00-00 00:00:00', '', 72, 'http://localhost/wordpress/?p=98', 1, 'nav_menu_item', '', 0),
(99, 1, '2018-06-02 17:41:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-02 17:41:50', '0000-00-00 00:00:00', '', 76, 'http://localhost/wordpress/?p=99', 1, 'nav_menu_item', '', 0),
(100, 1, '2018-06-02 17:41:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-02 17:41:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=100', 1, 'nav_menu_item', '', 0),
(108, 1, '2018-06-02 17:44:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-02 17:44:59', '0000-00-00 00:00:00', '', 72, 'http://localhost/wordpress/?p=108', 1, 'nav_menu_item', '', 0),
(109, 1, '2018-06-02 17:44:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-02 17:44:59', '0000-00-00 00:00:00', '', 76, 'http://localhost/wordpress/?p=109', 1, 'nav_menu_item', '', 0),
(112, 1, '2018-06-02 17:47:13', '2018-06-02 17:47:13', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-06-02 17:47:13', '2018-06-02 17:47:13', '', 0, 'http://localhost/wordpress/?page_id=112', 0, 'page', '', 0),
(113, 1, '2018-06-02 17:47:13', '2018-06-02 17:47:13', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-06-02 17:47:13', '2018-06-02 17:47:13', '', 112, 'http://localhost/wordpress/2018/06/02/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-06-02 17:47:32', '2018-06-02 17:47:32', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2018-06-03 11:11:46', '2018-06-03 11:11:46', '', 0, 'http://localhost/wordpress/?p=114', 1, 'nav_menu_item', '', 0),
(117, 1, '2018-06-02 17:54:00', '2018-06-02 17:54:00', '[unitegallery shakzee]', 'Gallary', '', 'publish', 'closed', 'closed', '', 'gallary', '', '', '2018-06-02 17:55:28', '2018-06-02 17:55:28', '', 0, 'http://localhost/wordpress/?page_id=117', 0, 'page', '', 0),
(118, 1, '2018-06-02 17:54:00', '2018-06-02 17:54:00', '', 'Gallary', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-06-02 17:54:00', '2018-06-02 17:54:00', '', 117, 'http://localhost/wordpress/2018/06/02/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-06-02 17:55:28', '2018-06-02 17:55:28', '[unitegallery shakzee]', 'Gallary', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2018-06-02 17:55:28', '2018-06-02 17:55:28', '', 117, 'http://localhost/wordpress/2018/06/02/117-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-06-02 18:16:26', '2018-06-02 18:16:26', '{\"id\":121,\"form_field_id\":\"1\",\"form_fields\":{\"name\":{\"id\":\"name\",\"type\":\"text\",\"label\":\"Name\",\"meta-key\":\"name\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"css\":\"\"},\"email\":{\"id\":\"email\",\"type\":\"email\",\"label\":\"Email\",\"meta-key\":\"email\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},\"subject\":{\"id\":\"subject\",\"type\":\"text\",\"label\":\"Subject\",\"meta-key\":\"subject\",\"description\":\"\",\"required\":\"1\",\"placeholder\":\"\",\"css\":\"\"},\"message\":{\"id\":\"message\",\"type\":\"textarea\",\"label\":\"Message\",\"meta-key\":\"message\",\"description\":\"\",\"placeholder\":\"\",\"css\":\"\"}},\"settings\":{\"form_title\":\"Contact Form\",\"form_desc\":\"\",\"successful_form_submission_message\":\"Thanks for contacting us! We will be in touch with you shortly.\",\"redirect_to\":\"0\",\"custom_page\":\"2\",\"external_url\":\"\",\"layout_class\":\"default\",\"form_class\":\"\",\"submit_button_text\":\"Submit\",\"email\":{\"evf_to_email\":\"shakzee171@gmail.com\",\"evf_from_name\":\"shakzeewp\",\"evf_from_email\":\"shakzee171@gmail.com\",\"evf_email_subject\":\"New Form Entry\",\"evf_email_message\":\"{all_fields}\"}},\"structure\":{\"row_1\":{\"grid_1\":[\"name\",\"email\",\"subject\",\"message\"]}}}', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2018-06-02 18:16:26', '2018-06-02 18:16:26', '', 0, 'http://localhost/wordpress/?post_type=everest_form&#038;p=121', 0, 'everest_form', '', 0),
(122, 1, '2018-06-03 09:54:08', '2018-06-03 09:54:08', '', 'shakzeelogo', '', 'inherit', 'open', 'closed', '', 'shakzeelogo', '', '', '2018-06-03 09:54:08', '2018-06-03 09:54:08', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/shakzeelogo.png', 0, 'attachment', 'image/png', 0),
(123, 1, '2018-06-03 09:54:15', '2018-06-03 09:54:15', 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-shakzeelogo.png', 'cropped-shakzeelogo.png', '', 'inherit', 'open', 'closed', '', 'cropped-shakzeelogo-png', '', '', '2018-06-03 09:54:15', '2018-06-03 09:54:15', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-shakzeelogo.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2018-06-03 09:58:20', '2018-06-03 09:58:20', 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-shakzeelogo-1.png', 'cropped-shakzeelogo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-shakzeelogo-1-png', '', '', '2018-06-03 09:58:20', '2018-06-03 09:58:20', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-shakzeelogo-1.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2018-06-03 10:00:14', '2018-06-03 10:00:14', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2018-06-03 10:00:14', '2018-06-03 10:00:14', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/img.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2018-06-03 10:20:39', '2018-06-03 10:20:39', '', 'cropped-img-2.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-img-jpg', '', '', '2018-06-03 10:20:39', '2018-06-03 10:20:39', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2018-06-03 10:06:22', '2018-06-03 10:06:22', 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-shakzeelogo-2.png', 'cropped-shakzeelogo-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-shakzeelogo-2-png', '', '', '2018-06-03 10:06:22', '2018-06-03 10:06:22', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-shakzeelogo-2.png', 0, 'attachment', 'image/png', 0),
(132, 1, '2018-06-03 10:06:40', '2018-06-03 10:06:40', 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-shakzeelogo-3.png', 'cropped-shakzeelogo-3.png', '', 'inherit', 'open', 'closed', '', 'cropped-shakzeelogo-3-png', '', '', '2018-06-03 10:06:40', '2018-06-03 10:06:40', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-shakzeelogo-3.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2018-06-03 10:20:56', '2018-06-03 10:20:56', '', 'cropped-img-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-img-3-jpg', '', '', '2018-06-03 10:20:56', '2018-06-03 10:20:56', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/cropped-img-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2018-06-03 10:30:09', '2018-06-03 10:30:09', '', 'Test1', '', 'publish', 'closed', 'closed', '', 'test1', '', '', '2018-06-03 10:30:09', '2018-06-03 10:30:09', '', 0, 'http://localhost/wordpress/?p=138', 1, 'nav_menu_item', '', 0),
(139, 1, '2018-06-03 10:30:09', '2018-06-03 10:30:09', '', 'text2', '', 'publish', 'closed', 'closed', '', 'text2', '', '', '2018-06-03 10:30:09', '2018-06-03 10:30:09', '', 0, 'http://localhost/wordpress/?p=139', 2, 'nav_menu_item', '', 0),
(140, 1, '2018-06-03 10:30:09', '2018-06-03 10:30:09', '', 'text3', '', 'publish', 'closed', 'closed', '', 'text3', '', '', '2018-06-03 10:30:09', '2018-06-03 10:30:09', '', 0, 'http://localhost/wordpress/?p=140', 3, 'nav_menu_item', '', 0),
(141, 1, '2018-06-03 10:30:34', '2018-06-03 10:30:34', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2018-06-03 10:30:34', '2018-06-03 10:30:34', '', 0, 'http://localhost/wordpress/?p=141', 1, 'nav_menu_item', '', 0),
(142, 1, '2018-06-03 10:30:34', '2018-06-03 10:30:34', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2018-06-03 10:30:34', '2018-06-03 10:30:34', '', 0, 'http://localhost/wordpress/?p=142', 2, 'nav_menu_item', '', 0),
(143, 1, '2018-06-03 10:30:34', '2018-06-03 10:30:34', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2018-06-03 10:30:34', '2018-06-03 10:30:34', '', 0, 'http://localhost/wordpress/?p=143', 3, 'nav_menu_item', '', 0),
(144, 1, '2018-06-03 10:30:34', '2018-06-03 10:30:34', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2018-06-03 10:30:34', '2018-06-03 10:30:34', '', 0, 'http://localhost/wordpress/?p=144', 4, 'nav_menu_item', '', 0),
(146, 1, '2018-06-03 10:42:13', '2018-06-03 10:42:13', 'Vivamus vestibulum ut magna vitae facilisis. Maecenas laoreet lobortis tristique. Aenean accumsan malesuada convallis. Suspendisse egestas luctus nisl, sit amet suscipit sapien pretium sed. Nam porta magna id lacinia efficitur. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque molestie nulla ut tortor hendrerit ultricies sed quis ipsum. Proin in leo nec diam fringilla viverra malesuada sed turpis. Curabitur quis est nisl.', 'Coffee is health food: Myth or fact?', '', 'publish', 'open', 'open', '', 'coffee-is-health-food-myth-or-fact', '', '', '2018-06-03 10:42:13', '2018-06-03 10:42:13', '', 0, 'http://localhost/wordpress/?p=146', 0, 'post', '', 0),
(147, 1, '2018-06-03 10:41:11', '2018-06-03 10:41:11', '', 'coffee-563797_1280-800x445', '', 'inherit', 'open', 'closed', '', 'coffee-563797_1280-800x445', '', '', '2018-06-03 10:41:11', '2018-06-03 10:41:11', '', 146, 'http://localhost/wordpress/wp-content/uploads/2018/06/coffee-563797_1280-800x445.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2018-06-03 10:42:13', '2018-06-03 10:42:13', 'Vivamus vestibulum ut magna vitae facilisis. Maecenas laoreet lobortis tristique. Aenean accumsan malesuada convallis. Suspendisse egestas luctus nisl, sit amet suscipit sapien pretium sed. Nam porta magna id lacinia efficitur. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque molestie nulla ut tortor hendrerit ultricies sed quis ipsum. Proin in leo nec diam fringilla viverra malesuada sed turpis. Curabitur quis est nisl.', 'Coffee is health food: Myth or fact?', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2018-06-03 10:42:13', '2018-06-03 10:42:13', '', 146, 'http://localhost/wordpress/146-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2018-06-03 10:43:14', '2018-06-03 10:43:14', 'Donec a suscipit erat, ac venenatis velit. Sed vitae tortor pellentesque, dictum quam ut, porttitor ligula. Aliquam sit amet mattis mauris. Donec non dui sodales, tincidunt ante id, ullamcorper ex. Curabitur nec ullamcorper justo. Cras ut massa faucibus, tincidunt urna ut, lobortis mauris. Vestibulum sodales rutrum suscipit.', 'Mosquito-borne diseases has threaten World', '', 'publish', 'open', 'open', '', 'mosquito-borne-diseases-has-threaten-world', '', '', '2018-06-03 10:43:14', '2018-06-03 10:43:14', '', 0, 'http://localhost/wordpress/?p=149', 0, 'post', '', 0),
(150, 1, '2018-06-03 10:42:43', '2018-06-03 10:42:43', '', 'mosquito-542156_1280-800x445', '', 'inherit', 'open', 'closed', '', 'mosquito-542156_1280-800x445', '', '', '2018-06-03 10:42:43', '2018-06-03 10:42:43', '', 149, 'http://localhost/wordpress/wp-content/uploads/2018/06/mosquito-542156_1280-800x445.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2018-06-03 10:43:14', '2018-06-03 10:43:14', 'Donec a suscipit erat, ac venenatis velit. Sed vitae tortor pellentesque, dictum quam ut, porttitor ligula. Aliquam sit amet mattis mauris. Donec non dui sodales, tincidunt ante id, ullamcorper ex. Curabitur nec ullamcorper justo. Cras ut massa faucibus, tincidunt urna ut, lobortis mauris. Vestibulum sodales rutrum suscipit.', 'Mosquito-borne diseases has threaten World', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2018-06-03 10:43:14', '2018-06-03 10:43:14', '', 149, 'http://localhost/wordpress/149-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2018-06-03 10:43:46', '2018-06-03 10:43:46', 'In lobortis malesuada neque, a maximus leo interdum nec. Mauris sodales tempus sem non accumsan. Sed congue turpis risus, quis aliquet justo ullamcorper ut. Donec id velit ligula. Nunc gravida, quam vel tempus lobortis, mauris dolor sodales urna, nec lacinia turpis lorem et mi. Fusce dictum nunc metus, vel maximus leo ultricies vitae. Proin eu nibh sem.', 'Solar eclipse: Eye health warning', '', 'publish', 'open', 'open', '', 'solar-eclipse-eye-health-warning', '', '', '2018-06-03 10:43:46', '2018-06-03 10:43:46', '', 0, 'http://localhost/wordpress/?p=152', 0, 'post', '', 0),
(153, 1, '2018-06-03 10:43:37', '2018-06-03 10:43:37', '', 'solar-eclipse-152834_1280-800x445', '', 'inherit', 'open', 'closed', '', 'solar-eclipse-152834_1280-800x445', '', '', '2018-06-03 10:43:37', '2018-06-03 10:43:37', '', 152, 'http://localhost/wordpress/wp-content/uploads/2018/06/solar-eclipse-152834_1280-800x445.png', 0, 'attachment', 'image/png', 0),
(154, 1, '2018-06-03 10:43:46', '2018-06-03 10:43:46', 'In lobortis malesuada neque, a maximus leo interdum nec. Mauris sodales tempus sem non accumsan. Sed congue turpis risus, quis aliquet justo ullamcorper ut. Donec id velit ligula. Nunc gravida, quam vel tempus lobortis, mauris dolor sodales urna, nec lacinia turpis lorem et mi. Fusce dictum nunc metus, vel maximus leo ultricies vitae. Proin eu nibh sem.', 'Solar eclipse: Eye health warning', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2018-06-03 10:43:46', '2018-06-03 10:43:46', '', 152, 'http://localhost/wordpress/152-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2018-06-03 10:44:12', '2018-06-03 10:44:12', 'Fusce non nunc mi. Integer placerat nulla id quam varius dapibus. Nulla sit amet tellus et purus lobortis efficitur. Vivamus tempus posuere ipsum in suscipit. Quisque pulvinar fringilla cursus. Morbi malesuada laoreet dui, vitae consequat arcu vehicula vel. Fusce vel turpis non ante mollis bibendum a ac risus. Morbi ornare ipsum sit amet enim rhoncus, sed eleifend felis tristique. Mauris sed sollicitudin libero. In nec lacus quis erat rhoncus molestie.', 'Get more nutrition in every bite', '', 'publish', 'open', 'open', '', 'get-more-nutrition-in-every-bite', '', '', '2018-06-03 10:44:12', '2018-06-03 10:44:12', '', 0, 'http://localhost/wordpress/?p=155', 0, 'post', '', 0),
(156, 1, '2018-06-03 10:44:07', '2018-06-03 10:44:07', '', 'yummy-333666_1280-800x445', '', 'inherit', 'open', 'closed', '', 'yummy-333666_1280-800x445', '', '', '2018-06-03 10:44:07', '2018-06-03 10:44:07', '', 155, 'http://localhost/wordpress/wp-content/uploads/2018/06/yummy-333666_1280-800x445.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2018-06-03 10:44:12', '2018-06-03 10:44:12', 'Fusce non nunc mi. Integer placerat nulla id quam varius dapibus. Nulla sit amet tellus et purus lobortis efficitur. Vivamus tempus posuere ipsum in suscipit. Quisque pulvinar fringilla cursus. Morbi malesuada laoreet dui, vitae consequat arcu vehicula vel. Fusce vel turpis non ante mollis bibendum a ac risus. Morbi ornare ipsum sit amet enim rhoncus, sed eleifend felis tristique. Mauris sed sollicitudin libero. In nec lacus quis erat rhoncus molestie.', 'Get more nutrition in every bite', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2018-06-03 10:44:12', '2018-06-03 10:44:12', '', 155, 'http://localhost/wordpress/155-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2018-06-03 10:44:51', '2018-06-03 10:44:51', 'The young team of Franziska Hildebrand, Franziska Preuss, Vanessa Hinz and Dahlmeier clocked 1 hour, 11 minutes, 54.6 seconds to beat France by just over 1 minute. Italy took bronze, 1:06.1 behind.\r\n\r\nGermany missed six targets overall, avoiding any laps around the penalty loop.\r\n\r\nMaria Dorin Habert of France, who has two individual gold medals at these worlds, passed Russia and France on the last leg and to take her team from fourth to second.', 'Women’s Relay Competition', '', 'publish', 'open', 'open', '', 'womens-relay-competition', '', '', '2018-06-03 10:44:51', '2018-06-03 10:44:51', '', 0, 'http://localhost/wordpress/?p=158', 0, 'post', '', 0),
(159, 1, '2018-06-03 10:44:47', '2018-06-03 10:44:47', '', 'relay-race-655353_1280-800x445', '', 'inherit', 'open', 'closed', '', 'relay-race-655353_1280-800x445', '', '', '2018-06-03 10:44:47', '2018-06-03 10:44:47', '', 158, 'http://localhost/wordpress/wp-content/uploads/2018/06/relay-race-655353_1280-800x445.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2018-06-03 10:44:51', '2018-06-03 10:44:51', 'The young team of Franziska Hildebrand, Franziska Preuss, Vanessa Hinz and Dahlmeier clocked 1 hour, 11 minutes, 54.6 seconds to beat France by just over 1 minute. Italy took bronze, 1:06.1 behind.\r\n\r\nGermany missed six targets overall, avoiding any laps around the penalty loop.\r\n\r\nMaria Dorin Habert of France, who has two individual gold medals at these worlds, passed Russia and France on the last leg and to take her team from fourth to second.', 'Women’s Relay Competition', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2018-06-03 10:44:51', '2018-06-03 10:44:51', '', 158, 'http://localhost/wordpress/158-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2018-06-03 10:59:02', '2018-06-03 10:59:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-06-03 10:59:02', '2018-06-03 10:59:02', '', 72, 'http://localhost/wordpress/72-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2018-06-03 11:04:37', '2018-06-03 11:04:37', 'For Joesendra, this is only her second fashion week showing, following her presentation at a Fashion World on this January. It was meant to be about getting back out there and doing it on its own over Street Market in New York and London, as well as IT Hong Kong, approached her about orders.', 'Looks from the Roswana, 2015', '', 'publish', 'open', 'open', '', 'looks-from-the-roswana-2015', '', '', '2018-06-03 11:04:37', '2018-06-03 11:04:37', '', 0, 'http://localhost/wordpress/?p=168', 0, 'post', '', 0);
INSERT INTO `skz_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(169, 1, '2018-06-03 11:04:29', '2018-06-03 11:04:29', '', 'model-600225_1280-800x445', '', 'inherit', 'open', 'closed', '', 'model-600225_1280-800x445', '', '', '2018-06-03 11:04:29', '2018-06-03 11:04:29', '', 168, 'http://localhost/wordpress/wp-content/uploads/2018/06/model-600225_1280-800x445.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 1, '2018-06-03 11:04:37', '2018-06-03 11:04:37', 'For Joesendra, this is only her second fashion week showing, following her presentation at a Fashion World on this January. It was meant to be about getting back out there and doing it on its own over Street Market in New York and London, as well as IT Hong Kong, approached her about orders.', 'Looks from the Roswana, 2015', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2018-06-03 11:04:37', '2018-06-03 11:04:37', '', 168, 'http://localhost/wordpress/168-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2018-06-03 11:05:23', '2018-06-03 11:05:23', 'Bear claw cake cake apple pie candy muffin. Dessert croissant soufflé cheesecake dessert croissant dragée candy canes candy canes. Wafer wafer oat cake pudding marzipan. Apple pie soufflé cake marshmallow. Fruitcake tiramisu dessert chupa chups ice cream gingerbread. Jelly caramels carrot cake biscuit jujubes soufflé muffin. Gummi bears bear claw jelly beans liquorice. Marzipan bonbon candy canes gummi bears jelly-o soufflé. Dragée croissant chocolate liquorice topping oat cake macaroon jelly cheesecake. Sugar plum tiramisu gummi bears dessert halvah icing. Pastry donut sweet roll. Danish tiramisu oat cake sweet.', 'Color your Hair', '', 'publish', 'open', 'open', '', 'color-your-hair', '', '', '2018-06-03 11:05:23', '2018-06-03 11:05:23', '', 0, 'http://localhost/wordpress/?p=171', 0, 'post', '', 0),
(172, 1, '2018-06-03 11:05:15', '2018-06-03 11:05:15', '', 'beauty-666605_1920-800x445', '', 'inherit', 'open', 'closed', '', 'beauty-666605_1920-800x445', '', '', '2018-06-03 11:05:15', '2018-06-03 11:05:15', '', 171, 'http://localhost/wordpress/wp-content/uploads/2018/06/beauty-666605_1920-800x445.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2018-06-03 11:05:23', '2018-06-03 11:05:23', 'Bear claw cake cake apple pie candy muffin. Dessert croissant soufflé cheesecake dessert croissant dragée candy canes candy canes. Wafer wafer oat cake pudding marzipan. Apple pie soufflé cake marshmallow. Fruitcake tiramisu dessert chupa chups ice cream gingerbread. Jelly caramels carrot cake biscuit jujubes soufflé muffin. Gummi bears bear claw jelly beans liquorice. Marzipan bonbon candy canes gummi bears jelly-o soufflé. Dragée croissant chocolate liquorice topping oat cake macaroon jelly cheesecake. Sugar plum tiramisu gummi bears dessert halvah icing. Pastry donut sweet roll. Danish tiramisu oat cake sweet.', 'Color your Hair', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2018-06-03 11:05:23', '2018-06-03 11:05:23', '', 171, 'http://localhost/wordpress/171-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2018-06-03 11:06:08', '2018-06-03 11:06:08', 'Phasellus at ligula consequat purus dignissim sodales non ac nisi. Vestibulum vehicula erat in purus vestibulum facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla dolor quis enim pulvinar, sit amet dictum lacus ultricies. Donec sed justo efficitur, pulvinar elit in, dignissim nibh. Nulla porttitor tortor et mi auctor condimentum. Aliquam sodales ac quam in pharetra.', 'New Styling Collections', '', 'publish', 'open', 'open', '', 'new-styling-collections', '', '', '2018-06-03 11:06:08', '2018-06-03 11:06:08', '', 0, 'http://localhost/wordpress/?p=174', 0, 'post', '', 0),
(175, 1, '2018-06-03 11:06:04', '2018-06-03 11:06:04', '', 'window-213496_1280-800x445', '', 'inherit', 'open', 'closed', '', 'window-213496_1280-800x445', '', '', '2018-06-03 11:06:04', '2018-06-03 11:06:04', '', 174, 'http://localhost/wordpress/wp-content/uploads/2018/06/window-213496_1280-800x445.jpg', 0, 'attachment', 'image/jpeg', 0),
(176, 1, '2018-06-03 11:06:08', '2018-06-03 11:06:08', 'Phasellus at ligula consequat purus dignissim sodales non ac nisi. Vestibulum vehicula erat in purus vestibulum facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fringilla dolor quis enim pulvinar, sit amet dictum lacus ultricies. Donec sed justo efficitur, pulvinar elit in, dignissim nibh. Nulla porttitor tortor et mi auctor condimentum. Aliquam sodales ac quam in pharetra.', 'New Styling Collections', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2018-06-03 11:06:08', '2018-06-03 11:06:08', '', 174, 'http://localhost/wordpress/174-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2018-06-03 11:06:36', '0000-00-00 00:00:00', 'Consectetur adipiscing elit. Aenean lectus nisi, convallis a tortor vitae, congue luctus velit. Vivamus faucibus massa non ultrices molestie. Aliquam erat volutpat. Nulla eget sem nisi. Suspendisse vel dui lorem. Mauris tristique ullamcorper rhoncus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis sem at ex euismod mattis nec eu neque.', 'Consectetur adipiscing', '', 'draft', 'open', 'open', '', '', '', '', '2018-06-03 11:06:36', '2018-06-03 11:06:36', '', 0, 'http://localhost/wordpress/?p=177', 0, 'post', '', 0),
(178, 1, '2018-06-03 11:06:33', '2018-06-03 11:06:33', '', 'relaxed-498245_1280-800x445', '', 'inherit', 'open', 'closed', '', 'relaxed-498245_1280-800x445', '', '', '2018-06-03 11:06:33', '2018-06-03 11:06:33', '', 177, 'http://localhost/wordpress/wp-content/uploads/2018/06/relaxed-498245_1280-800x445.jpg', 0, 'attachment', 'image/jpeg', 0),
(179, 1, '2018-06-03 11:10:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-03 11:10:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=179', 1, 'nav_menu_item', '', 0),
(180, 1, '2018-06-03 11:10:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-03 11:10:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=180', 1, 'nav_menu_item', '', 0),
(181, 1, '2018-06-03 11:10:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-03 11:10:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=181', 1, 'nav_menu_item', '', 0),
(182, 1, '2018-06-03 11:10:37', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-03 11:10:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=182', 1, 'nav_menu_item', '', 0),
(183, 1, '2018-06-03 11:11:13', '2018-06-03 11:11:13', ' ', '', '', 'publish', 'closed', 'closed', '', '183', '', '', '2018-06-03 11:11:46', '2018-06-03 11:11:46', '', 0, 'http://localhost/wordpress/?p=183', 2, 'nav_menu_item', '', 0),
(184, 1, '2018-06-03 11:11:13', '2018-06-03 11:11:13', ' ', '', '', 'publish', 'closed', 'closed', '', '184', '', '', '2018-06-03 11:11:47', '2018-06-03 11:11:47', '', 0, 'http://localhost/wordpress/?p=184', 3, 'nav_menu_item', '', 0),
(185, 1, '2018-06-03 11:11:13', '2018-06-03 11:11:13', ' ', '', '', 'publish', 'closed', 'closed', '', '185', '', '', '2018-06-03 11:11:47', '2018-06-03 11:11:47', '', 0, 'http://localhost/wordpress/?p=185', 4, 'nav_menu_item', '', 0),
(186, 1, '2018-06-03 11:11:13', '2018-06-03 11:11:13', ' ', '', '', 'publish', 'closed', 'closed', '', '186', '', '', '2018-06-03 11:11:47', '2018-06-03 11:11:47', '', 0, 'http://localhost/wordpress/?p=186', 5, 'nav_menu_item', '', 0),
(187, 1, '2018-06-03 11:11:46', '2018-06-03 11:11:46', ' ', '', '', 'publish', 'closed', 'closed', '', '187', '', '', '2018-06-03 11:11:47', '2018-06-03 11:11:47', '', 0, 'http://localhost/wordpress/?p=187', 6, 'nav_menu_item', '', 0),
(188, 1, '2018-06-03 11:11:46', '2018-06-03 11:11:46', ' ', '', '', 'publish', 'closed', 'closed', '', '188', '', '', '2018-06-03 11:11:47', '2018-06-03 11:11:47', '', 0, 'http://localhost/wordpress/?p=188', 7, 'nav_menu_item', '', 0),
(189, 1, '2018-06-03 11:11:46', '2018-06-03 11:11:46', ' ', '', '', 'publish', 'closed', 'closed', '', '189', '', '', '2018-06-03 11:11:47', '2018-06-03 11:11:47', '', 0, 'http://localhost/wordpress/?p=189', 8, 'nav_menu_item', '', 0),
(190, 1, '2018-06-03 11:11:46', '2018-06-03 11:11:46', ' ', '', '', 'publish', 'closed', 'closed', '', '190', '', '', '2018-06-03 11:11:47', '2018-06-03 11:11:47', '', 0, 'http://localhost/wordpress/?p=190', 9, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `skz_termmeta`
--

CREATE TABLE `skz_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_terms`
--

CREATE TABLE `skz_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_terms`
--

INSERT INTO `skz_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(6, 'PHP', 'php', 0),
(7, 'wordpress', 'wordpress', 0),
(8, 'webmail', 'webmail', 0),
(9, 'codeigniter', 'codeigniter', 0),
(10, 'my tagname here', 'my-slug-herre', 0),
(12, 'MenuBar', 'menubar', 0),
(13, 'footer 1', 'footer-1', 0),
(14, 'footer 2', 'footer-2', 0),
(15, 'Drink', 'drink', 0),
(16, 'Food', 'food', 0),
(17, 'Health', 'health', 0),
(18, 'News', 'news', 0),
(19, 'sport', 'sport', 0),
(20, 'fashion', 'fashion', 0),
(21, 'female', 'female', 0),
(22, 'style', 'style', 0),
(23, 'general', 'general', 0),
(24, 'simple', 'simple', 0),
(25, 'grouped', 'grouped', 0),
(26, 'variable', 'variable', 0),
(27, 'external', 'external', 0),
(28, 'exclude-from-search', 'exclude-from-search', 0),
(29, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(30, 'featured', 'featured', 0),
(31, 'outofstock', 'outofstock', 0),
(32, 'rated-1', 'rated-1', 0),
(33, 'rated-2', 'rated-2', 0),
(34, 'rated-3', 'rated-3', 0),
(35, 'rated-4', 'rated-4', 0),
(36, 'rated-5', 'rated-5', 0),
(37, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `skz_term_relationships`
--

CREATE TABLE `skz_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_term_relationships`
--

INSERT INTO `skz_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(33, 6, 0),
(33, 7, 0),
(33, 8, 0),
(33, 9, 0),
(33, 10, 0),
(81, 1, 0),
(83, 1, 0),
(88, 1, 0),
(90, 1, 0),
(114, 12, 0),
(138, 13, 0),
(139, 13, 0),
(140, 13, 0),
(141, 14, 0),
(142, 14, 0),
(143, 14, 0),
(144, 14, 0),
(146, 15, 0),
(146, 16, 0),
(146, 17, 0),
(149, 17, 0),
(149, 18, 0),
(152, 17, 0),
(152, 18, 0),
(155, 1, 0),
(158, 17, 0),
(158, 19, 0),
(168, 20, 0),
(168, 21, 0),
(168, 22, 0),
(171, 20, 0),
(171, 23, 0),
(174, 18, 0),
(174, 20, 0),
(174, 22, 0),
(177, 20, 0),
(183, 12, 0),
(184, 12, 0),
(185, 12, 0),
(186, 12, 0),
(187, 12, 0),
(188, 12, 0),
(189, 12, 0),
(190, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `skz_term_taxonomy`
--

CREATE TABLE `skz_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_term_taxonomy`
--

INSERT INTO `skz_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(12, 12, 'nav_menu', '', 0, 9),
(13, 13, 'nav_menu', '', 0, 3),
(14, 14, 'nav_menu', '', 0, 4),
(15, 15, 'category', '', 0, 1),
(16, 16, 'category', '', 0, 1),
(17, 17, 'category', '', 0, 4),
(18, 18, 'category', '', 0, 3),
(19, 19, 'category', '', 0, 1),
(20, 20, 'category', '', 0, 3),
(21, 21, 'category', '', 0, 1),
(22, 22, 'category', '', 0, 2),
(23, 23, 'category', '', 0, 1),
(24, 24, 'product_type', '', 0, 0),
(25, 25, 'product_type', '', 0, 0),
(26, 26, 'product_type', '', 0, 0),
(27, 27, 'product_type', '', 0, 0),
(28, 28, 'product_visibility', '', 0, 0),
(29, 29, 'product_visibility', '', 0, 0),
(30, 30, 'product_visibility', '', 0, 0),
(31, 31, 'product_visibility', '', 0, 0),
(32, 32, 'product_visibility', '', 0, 0),
(33, 33, 'product_visibility', '', 0, 0),
(34, 34, 'product_visibility', '', 0, 0),
(35, 35, 'product_visibility', '', 0, 0),
(36, 36, 'product_visibility', '', 0, 0),
(37, 37, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `skz_unitegallery_categories`
--

CREATE TABLE `skz_unitegallery_categories` (
  `id` int(9) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinytext COLLATE utf8mb4_unicode_ci,
  `parent_id` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_unitegallery_categories`
--

INSERT INTO `skz_unitegallery_categories` (`id`, `title`, `alias`, `ordering`, `params`, `type`, `parent_id`) VALUES
(1, 'Shakzee', NULL, 1, '', NULL, NULL),
(2, 'New Category', NULL, 2, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skz_unitegallery_galleries`
--

CREATE TABLE `skz_unitegallery_galleries` (
  `id` int(9) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8mb4_unicode_ci,
  `ordering` int(11) NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_unitegallery_galleries`
--

INSERT INTO `skz_unitegallery_galleries` (`id`, `type`, `title`, `alias`, `ordering`, `params`) VALUES
(1, 'ug-default', 'Shakzee', 'shakzee', 1, '{\"title\":\"Shakzee\",\"alias\":\"shakzee\",\"category\":\"1\",\"full_width\":\"false\",\"gallery_width\":\"900\",\"gallery_height\":\"400\",\"categories\":1}');

-- --------------------------------------------------------

--
-- Table structure for table `skz_unitegallery_items`
--

CREATE TABLE `skz_unitegallery_items` (
  `id` int(9) NOT NULL,
  `published` int(2) NOT NULL,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8mb4_unicode_ci,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_image` tinytext COLLATE utf8mb4_unicode_ci,
  `url_thumb` tinytext COLLATE utf8mb4_unicode_ci,
  `ordering` int(11) NOT NULL,
  `catid` int(9) NOT NULL,
  `imageid` int(9) DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `contentid` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_unitegallery_items`
--

INSERT INTO `skz_unitegallery_items` (`id`, `published`, `title`, `alias`, `type`, `url_image`, `url_thumb`, `ordering`, `catid`, `imageid`, `params`, `content`, `contentid`, `parent_id`) VALUES
(1, 1, '1540570_6e82_2 - Copy', NULL, 'image', 'wp-content/uploads/2018/06/1540570_6e82_2-Copy.jpg', 'wp-content/uploads/2018/06/1540570_6e82_2-Copy-300x169.jpg', 1, 1, 67, '[]', NULL, NULL, NULL),
(2, 1, '1626890_6130_4 - Copy', NULL, 'image', 'wp-content/uploads/2018/06/1626890_6130_4-Copy.jpg', 'wp-content/uploads/2018/06/1626890_6130_4-Copy-300x169.jpg', 2, 1, 68, '[]', NULL, NULL, NULL),
(3, 1, 'laravel in urdu', NULL, 'image', 'wp-content/uploads/2018/06/laravel-in-urdu.png', 'wp-content/uploads/2018/06/laravel-in-urdu-300x169.png', 3, 1, 17, '[]', NULL, NULL, NULL),
(4, 1, 'codeigniter-fast-track-1024x683', NULL, 'image', 'wp-content/uploads/2018/06/codeigniter-fast-track-1024x683.png', 'wp-content/uploads/2018/06/codeigniter-fast-track-1024x683-300x200.png', 4, 1, 14, '[]', NULL, NULL, NULL),
(5, 1, 'bootstrap', NULL, 'image', 'wp-content/uploads/2018/06/bootstrap.jpg', 'wp-content/uploads/2018/06/bootstrap-300x169.jpg', 5, 1, 13, '[]', NULL, NULL, NULL),
(6, 1, '1540570_6e82_2 - Copy', NULL, 'image', 'wp-content/uploads/2018/06/1540570_6e82_2-Copy.jpg', 'wp-content/uploads/2018/06/1540570_6e82_2-Copy-300x169.jpg', 1, 2, 67, '[]', NULL, NULL, NULL),
(7, 1, '1626890_6130_4 - Copy', NULL, 'image', 'wp-content/uploads/2018/06/1626890_6130_4-Copy.jpg', 'wp-content/uploads/2018/06/1626890_6130_4-Copy-300x169.jpg', 2, 2, 68, '[]', NULL, NULL, NULL),
(8, 1, 'laravel in urdu', NULL, 'image', 'wp-content/uploads/2018/06/laravel-in-urdu.png', 'wp-content/uploads/2018/06/laravel-in-urdu-300x169.png', 3, 2, 17, '[]', NULL, NULL, NULL),
(9, 1, 'codeigniter-fast-track-1024x683', NULL, 'image', 'wp-content/uploads/2018/06/codeigniter-fast-track-1024x683.png', 'wp-content/uploads/2018/06/codeigniter-fast-track-1024x683-300x200.png', 4, 2, 14, '[]', NULL, NULL, NULL),
(10, 1, 'bootstrap', NULL, 'image', 'wp-content/uploads/2018/06/bootstrap.jpg', 'wp-content/uploads/2018/06/bootstrap-300x169.jpg', 5, 2, 13, '[]', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skz_usermeta`
--

CREATE TABLE `skz_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_usermeta`
--

INSERT INTO `skz_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'shakzeewp'),
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
(12, 1, 'skz_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'skz_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"bf0c0a88dafe2b0e6d1fecff5806aa7222445010948e35a78a97f4c24f9900cb\";a:4:{s:10:\"expiration\";i:1529992669;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36\";s:5:\"login\";i:1529819869;}}'),
(17, 1, 'skz_dashboard_quick_press_last_post_id', '192'),
(18, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_primary,dashboard_quick_press\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(19, 1, 'skz_user-settings', 'libraryContent=browse&mfold=o'),
(20, 1, 'skz_user-settings-time', '1527935904'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(23, 1, 'skz_media_library_mode', 'grid'),
(24, 2, 'nickname', 'john'),
(25, 2, 'first_name', 'john'),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'skz_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(36, 2, 'skz_user_level', '10'),
(37, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(40, 2, 'skz_user-settings', 'mfold=o'),
(41, 2, 'skz_user-settings-time', '1527958975'),
(42, 2, 'skz_dashboard_quick_press_last_post_id', '87'),
(43, 2, 'session_tokens', 'a:1:{s:64:\"534499ca81dee673abdd0df48403f9e9008b30b927179c1162ee6783c98e9e3f\";a:4:{s:10:\"expiration\";i:1529168941;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0\";s:5:\"login\";i:1527959341;}}'),
(44, 1, 'nav_menu_recently_edited', '12'),
(46, 2, '_yoast_wpseo_profile_updated', '1527963299'),
(47, 1, '_yoast_wpseo_profile_updated', '1527963299'),
(48, 1, 'closedpostboxes_post', 'a:0:{}'),
(49, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(50, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(51, 1, 'wc_last_active', '1529798400');

-- --------------------------------------------------------

--
-- Table structure for table `skz_users`
--

CREATE TABLE `skz_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skz_users`
--

INSERT INTO `skz_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'shakzeewp', '$P$BxzELFYXNw0zd1a80ZRHcEvSjJdslQ0', 'shakzeewp', 'shakzee171@gmail.com', '', '2018-06-02 10:13:25', '', 0, 'shakzeewp'),
(2, 'john', '$P$BflgI7LhwsglYKZRx97dpi6Sifsv0B/', 'john', 'john@hotmail.com', '', '2018-06-02 16:54:30', '1527958472:$P$Bm8vvVfcKT2ui/FfsWcrApo1X80For/', 0, 'john');

-- --------------------------------------------------------

--
-- Table structure for table `skz_wc_download_log`
--

CREATE TABLE `skz_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_wc_webhooks`
--

CREATE TABLE `skz_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_api_keys`
--

CREATE TABLE `skz_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_attribute_taxonomies`
--

CREATE TABLE `skz_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `skz_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_log`
--

CREATE TABLE `skz_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_order_itemmeta`
--

CREATE TABLE `skz_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_order_items`
--

CREATE TABLE `skz_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_payment_tokenmeta`
--

CREATE TABLE `skz_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_payment_tokens`
--

CREATE TABLE `skz_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_sessions`
--

CREATE TABLE `skz_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_shipping_zones`
--

CREATE TABLE `skz_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_shipping_zone_locations`
--

CREATE TABLE `skz_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_shipping_zone_methods`
--

CREATE TABLE `skz_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_tax_rates`
--

CREATE TABLE `skz_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_woocommerce_tax_rate_locations`
--

CREATE TABLE `skz_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_yoast_seo_links`
--

CREATE TABLE `skz_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skz_yoast_seo_meta`
--

CREATE TABLE `skz_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `skz_commentmeta`
--
ALTER TABLE `skz_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `skz_comments`
--
ALTER TABLE `skz_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `skz_evf_entries`
--
ALTER TABLE `skz_evf_entries`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `skz_evf_entrymeta`
--
ALTER TABLE `skz_evf_entrymeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `skz_evf_sessions`
--
ALTER TABLE `skz_evf_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `skz_links`
--
ALTER TABLE `skz_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `skz_options`
--
ALTER TABLE `skz_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `skz_postmeta`
--
ALTER TABLE `skz_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `skz_posts`
--
ALTER TABLE `skz_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `skz_termmeta`
--
ALTER TABLE `skz_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `skz_terms`
--
ALTER TABLE `skz_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `skz_term_relationships`
--
ALTER TABLE `skz_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `skz_term_taxonomy`
--
ALTER TABLE `skz_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `skz_unitegallery_categories`
--
ALTER TABLE `skz_unitegallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skz_unitegallery_galleries`
--
ALTER TABLE `skz_unitegallery_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skz_unitegallery_items`
--
ALTER TABLE `skz_unitegallery_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skz_usermeta`
--
ALTER TABLE `skz_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `skz_users`
--
ALTER TABLE `skz_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `skz_wc_download_log`
--
ALTER TABLE `skz_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `skz_wc_webhooks`
--
ALTER TABLE `skz_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `skz_woocommerce_api_keys`
--
ALTER TABLE `skz_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `skz_woocommerce_attribute_taxonomies`
--
ALTER TABLE `skz_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `skz_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `skz_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `skz_woocommerce_log`
--
ALTER TABLE `skz_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `skz_woocommerce_order_itemmeta`
--
ALTER TABLE `skz_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `skz_woocommerce_order_items`
--
ALTER TABLE `skz_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `skz_woocommerce_payment_tokenmeta`
--
ALTER TABLE `skz_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `skz_woocommerce_payment_tokens`
--
ALTER TABLE `skz_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `skz_woocommerce_sessions`
--
ALTER TABLE `skz_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `skz_woocommerce_shipping_zones`
--
ALTER TABLE `skz_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `skz_woocommerce_shipping_zone_locations`
--
ALTER TABLE `skz_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `skz_woocommerce_shipping_zone_methods`
--
ALTER TABLE `skz_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `skz_woocommerce_tax_rates`
--
ALTER TABLE `skz_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `skz_woocommerce_tax_rate_locations`
--
ALTER TABLE `skz_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `skz_yoast_seo_links`
--
ALTER TABLE `skz_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `skz_yoast_seo_meta`
--
ALTER TABLE `skz_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `skz_commentmeta`
--
ALTER TABLE `skz_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_comments`
--
ALTER TABLE `skz_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `skz_evf_entries`
--
ALTER TABLE `skz_evf_entries`
  MODIFY `entry_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_evf_entrymeta`
--
ALTER TABLE `skz_evf_entrymeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_evf_sessions`
--
ALTER TABLE `skz_evf_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_links`
--
ALTER TABLE `skz_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_options`
--
ALTER TABLE `skz_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=598;

--
-- AUTO_INCREMENT for table `skz_postmeta`
--
ALTER TABLE `skz_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;

--
-- AUTO_INCREMENT for table `skz_posts`
--
ALTER TABLE `skz_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `skz_termmeta`
--
ALTER TABLE `skz_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_terms`
--
ALTER TABLE `skz_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `skz_term_taxonomy`
--
ALTER TABLE `skz_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `skz_unitegallery_categories`
--
ALTER TABLE `skz_unitegallery_categories`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skz_unitegallery_galleries`
--
ALTER TABLE `skz_unitegallery_galleries`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skz_unitegallery_items`
--
ALTER TABLE `skz_unitegallery_items`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `skz_usermeta`
--
ALTER TABLE `skz_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `skz_users`
--
ALTER TABLE `skz_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skz_wc_download_log`
--
ALTER TABLE `skz_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_wc_webhooks`
--
ALTER TABLE `skz_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_api_keys`
--
ALTER TABLE `skz_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_attribute_taxonomies`
--
ALTER TABLE `skz_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `skz_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_log`
--
ALTER TABLE `skz_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_order_itemmeta`
--
ALTER TABLE `skz_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_order_items`
--
ALTER TABLE `skz_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_payment_tokenmeta`
--
ALTER TABLE `skz_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_payment_tokens`
--
ALTER TABLE `skz_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_sessions`
--
ALTER TABLE `skz_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skz_woocommerce_shipping_zones`
--
ALTER TABLE `skz_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_shipping_zone_locations`
--
ALTER TABLE `skz_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_shipping_zone_methods`
--
ALTER TABLE `skz_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_tax_rates`
--
ALTER TABLE `skz_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_woocommerce_tax_rate_locations`
--
ALTER TABLE `skz_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skz_yoast_seo_links`
--
ALTER TABLE `skz_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `skz_wc_download_log`
--
ALTER TABLE `skz_wc_download_log`
  ADD CONSTRAINT `skz_wc_download_log_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `skz_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
