-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 31 août 2019 à 21:15
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `aaron`
--
CREATE DATABASE IF NOT EXISTS `aaron` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `aaron`;

-- --------------------------------------------------------

--
-- Structure de la table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `first_name`, `last_name`, `email`, `gender`, `comment`) VALUES
(1, 'gdcfhcg', 'hgfcg', 'hfcg', 'Male', 'gjdfuikfjgoyhv vufc8u ilyc ukv g'),
(2, 'gdcfhcg', 'hgfcg', 'hfcg', 'Male', 'gjdfuikfjgoyhv vufc8u ilyc ukv g');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'aaron@gmail.com', 'QWERTYU');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de données :  `agro`
--
CREATE DATABASE IF NOT EXISTS `agro` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `agro`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-01-29 05:12:38', '2019-01-29 05:12:38'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-01-29 05:12:38', '2019-01-29 05:12:38');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'fournisseur',
  `quantity` int(11) NOT NULL,
  `transaction_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id`, `user_id`, `quantity`, `transaction_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 11, 5, 1, 1, '2019-02-02 06:23:04', '2019-02-02 06:23:04'),
(2, 11, 10, 1, 8, '2019-02-04 04:38:49', '2019-02-04 04:38:49'),
(3, 11, 7, 1, 1, '2019-02-05 06:07:04', '2019-02-05 06:07:04');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(57, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(59, 7, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(60, 7, 'avatar', 'image', 'Avatar', 1, 1, 1, 1, 1, 1, '{}', 4),
(61, 7, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(62, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(63, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(64, 7, 'product_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(66, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(67, 9, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 2),
(68, 9, 'amount', 'number', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 3),
(69, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(70, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(71, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 10, 'user_id', 'checkbox', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(73, 10, 'quantity', 'text', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 5),
(74, 10, 'transaction_id', 'checkbox', 'Transaction Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(75, 10, 'product_id', 'checkbox', 'Product Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(76, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(77, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(78, 10, 'commande_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(79, 10, 'commande_belongsto_transaction_relationship', 'relationship', 'transactions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Transaction\",\"table\":\"transactions\",\"type\":\"belongsTo\",\"column\":\"transaction_id\",\"key\":\"id\",\"label\":\"amount\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(80, 10, 'commande_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-01-29 05:12:14', '2019-01-29 05:12:14'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-01-29 05:12:16', '2019-01-29 05:12:16'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-01-29 05:12:16', '2019-01-29 05:12:16'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-01-29 05:12:37', '2019-01-29 05:12:37'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-01-29 05:12:38', '2019-01-29 05:12:38'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-01-29 05:12:40', '2019-01-29 05:12:40'),
(7, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-29 06:37:22', '2019-01-29 06:58:01'),
(9, 'transactions', 'transactions', 'Transaction', 'Transactions', 'voyager-activity', 'App\\Transaction', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-31 13:01:19', '2019-01-31 13:01:19'),
(10, 'commandes', 'commandes', 'Commande', 'Commandes', 'voyager-basket', 'App\\Commande', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-31 13:11:45', '2019-02-01 09:01:51');

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `children` int(11) NOT NULL,
  `task` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `birth`, `gender`, `status`, `children`, `task`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'First employee', 'employee@system.com', '2015-02-10', 'M', 'Maried', 2, 'driver', 'noimage.jpg', '2019-02-10 13:06:11', '2019-02-10 13:06:11'),
(2, 'second employee', 'second@employee.com', '2016-02-11', 'F', 'Single', 0, 'Manager', 'second employee.jpg', '2019-02-11 10:05:13', '2019-02-11 10:05:13');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-01-29 05:12:22', '2019-01-29 05:12:22');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-01-29 05:12:22', '2019-01-29 05:12:22', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-01-29 05:12:22', '2019-01-29 05:12:22', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-01-29 05:12:22', '2019-01-29 05:12:22', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-01-29 05:12:22', '2019-01-29 05:12:22', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-01-29 05:12:22', '2019-01-29 05:12:22', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-01-29 05:12:22', '2019-01-29 05:12:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-01-29 05:12:23', '2019-01-29 05:12:23', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-01-29 05:12:23', '2019-01-29 05:12:23', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-01-29 05:12:23', '2019-01-29 05:12:23', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-01-29 05:12:23', '2019-01-29 05:12:23', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2019-01-29 05:12:37', '2019-01-29 05:12:37', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-01-29 05:12:39', '2019-01-29 05:12:39', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-01-29 05:12:41', '2019-01-29 05:12:41', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-01-29 05:12:45', '2019-01-29 05:12:45', 'voyager.hooks', NULL),
(15, 1, 'Products', '', '_self', NULL, NULL, NULL, 15, '2019-01-29 06:37:23', '2019-01-29 06:37:23', 'voyager.products.index', NULL),
(16, 1, 'Transactions', '', '_self', 'voyager-activity', NULL, NULL, 16, '2019-01-31 13:01:20', '2019-01-31 13:01:20', 'voyager.transactions.index', NULL),
(17, 1, 'Commandes', '', '_self', 'voyager-basket', NULL, NULL, 17, '2019-01-31 13:11:46', '2019-01-31 13:11:46', 'voyager.commandes.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(9, '2016_06_01_000004_create_oauth_clients_table', 1),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(11, '2016_10_21_190000_create_roles_table', 1),
(12, '2016_10_21_190000_create_settings_table', 1),
(13, '2016_11_30_135954_create_permission_table', 1),
(14, '2016_11_30_141208_create_permission_role_table', 1),
(15, '2016_12_26_201236_data_types__add__server_side', 1),
(16, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(17, '2017_01_14_005015_create_translations_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(21, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(22, '2017_08_05_000000_add_group_to_settings_table', 1),
(23, '2017_11_26_013050_add_user_role_relationship', 1),
(24, '2017_11_26_015000_create_user_roles_table', 1),
(25, '2018_03_11_000000_add_user_settings', 1),
(26, '2018_03_14_000000_add_details_to_data_types_table', 1),
(27, '2018_03_16_000000_make_settings_value_nullable', 1),
(28, '2019_01_14_152109_create_products_table', 2),
(29, '2016_01_01_000000_create_pages_table', 3),
(30, '2016_01_01_000000_create_posts_table', 3),
(31, '2016_02_15_204651_create_categories_table', 3),
(32, '2017_04_11_000000_alter_post_nullable_fields_table', 3),
(33, '2019_01_28_070516_create_transactions_table', 4),
(36, '2019_01_29_091914_create_commandes_table', 5),
(37, '2019_02_10_135230_create_employees_table', 6),
(38, '2019_02_10_154657_create_payrolls_table', 7);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('056c9de26d6d4bf308036668e9385bc9b995b4f1b19c5e5b9ca1a99cd57176983ada55331304f246', 13, 1, NULL, '[\"*\"]', 0, '2019-01-30 06:39:43', '2019-01-30 06:39:43', '2020-01-30 08:39:43'),
('0d6ca7f019173984a42f4948e7543261c72d2e4c65c89a7c711be202789ca968daff66b8782c65db', 5, 1, NULL, '[\"*\"]', 0, '2019-01-15 09:55:30', '2019-01-15 09:55:30', '2020-01-15 11:55:30'),
('3444b5484088f18fb48ba01a5cdb345bb5d32ebbbfe841c9120790d1af3ae1807b5fd1e0a760d18a', 5, 1, NULL, '[\"*\"]', 0, '2019-01-19 10:46:49', '2019-01-19 10:46:49', '2020-01-19 12:46:49'),
('3844c8eaa34a5d2d1e17be626b781f84b26ef0088d85e70c79c990bf9c7cba54a1d05f6f18f83565', 14, 1, NULL, '[\"*\"]', 0, '2019-01-30 06:40:56', '2019-01-30 06:40:56', '2020-01-30 08:40:56'),
('42b0f7d13253d9b0f59eb8b981df24013dab98470146c797779b8d749788022e4ab96df1cec24832', 5, 1, NULL, '[\"*\"]', 0, '2019-01-15 10:02:13', '2019-01-15 10:02:13', '2020-01-15 12:02:13'),
('4375383f27ead7d3b1790c881305f820af11d6b0f1bb02f67f6b3c89999951800be6755ba0ffbb32', 16, 1, NULL, '[\"*\"]', 0, '2019-01-30 06:42:40', '2019-01-30 06:42:40', '2020-01-30 08:42:40'),
('53945f36ef53ef835dc7c2038a91affcbc381b2315e3924605ab370092a7f37b0e266f30bb78b5c1', 10, 1, NULL, '[\"*\"]', 0, '2019-01-30 06:28:25', '2019-01-30 06:28:25', '2020-01-30 08:28:25'),
('6345eaf39baab7efd2594e2bf46f8b8ef97bd060656a540703f46023d17c6106e8fe44ef9a72a635', 12, 1, NULL, '[\"*\"]', 0, '2019-01-30 06:32:35', '2019-01-30 06:32:35', '2020-01-30 08:32:35'),
('72e1bad6e6dac811bd83155ce12216c79a1e332b90b7b08523ea0f1caf70edfe14d40410a188b762', 17, 1, NULL, '[\"*\"]', 0, '2019-01-30 06:45:58', '2019-01-30 06:45:58', '2020-01-30 08:45:58'),
('7eab8a2c273852913869d2e791dab7a7290078761b89b38814ece41a995fa03e68ae3ee2b681f6bf', 5, 1, NULL, '[\"*\"]', 0, '2019-01-21 12:43:37', '2019-01-21 12:43:37', '2020-01-21 14:43:37'),
('bcf1bae03faee7a90c9731446d97f6599de02757057eb26b6102dc186ab0e2d2c94d549e7c453204', 15, 1, NULL, '[\"*\"]', 0, '2019-01-30 06:41:52', '2019-01-30 06:41:52', '2020-01-30 08:41:52'),
('c0b01dcae352943f12b074cd6a2eec29bd50a9166f01962e5297469ade965654365aac5680ae1e44', 5, 1, NULL, '[\"*\"]', 0, '2019-01-25 07:51:37', '2019-01-25 07:51:37', '2020-01-25 09:51:37'),
('c474a70eedd276e30253723b219de5a355ac74d044aa32553f020ad11c50242562077733ae989bd2', 11, 1, NULL, '[\"*\"]', 0, '2019-01-30 06:29:38', '2019-01-30 06:29:38', '2020-01-30 08:29:38'),
('e346fcc00f072f3e82e7f5a5d89e6cea91914f5b6c9e6966dd7c08670be89f435137cd42464e9f54', 18, 1, NULL, '[\"*\"]', 0, '2019-01-30 06:47:30', '2019-01-30 06:47:30', '2020-01-30 08:47:30'),
('e5c30b6cda6e1e67f6debcb2e65b325869591fd71b91a92de1a68590db04c38e7d015222f35ef21d', 5, 1, NULL, '[\"*\"]', 0, '2019-01-21 12:43:37', '2019-01-21 12:43:37', '2020-01-21 14:43:37'),
('f3239d5a0d1c36a00048c91817054111eb810ca79e2870ac68db0c9f21a8f2b84ddba6f0162871c4', 5, 1, NULL, '[\"*\"]', 0, '2019-01-21 12:43:42', '2019-01-21 12:43:42', '2020-01-21 14:43:42');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Password Grant Client', 'ffBkz9WlamDx9xC8vTBp84Kf9a2ZMXQHiGtDnOuE', 'http://localhost', 0, 1, 0, '2019-01-12 09:20:19', '2019-01-12 09:20:19');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('06a5fbe6122dc98946c4737b51ab2d3c417a6158894a6bb3f4a3a7f9a5dc696f5b60d7a097a2c165', 'e5c30b6cda6e1e67f6debcb2e65b325869591fd71b91a92de1a68590db04c38e7d015222f35ef21d', 0, '2020-01-21 14:43:39'),
('1046fefe02639d26d4aecc6e5ce8ff061633c0451597142bd5eef0350c29423b550fb507559a3379', 'b8f31c9242ba51d6f1b45d1dba38c31a96d579fe37a7a53e7c87cadfd522f2bb4389f631b38828e1', 0, '2020-01-13 23:57:02'),
('16cae7d965dbeb8b71671371ae02bbbe3fd618fbb83e1ff4ee9b7651930af357916f6d783d114848', '3444b5484088f18fb48ba01a5cdb345bb5d32ebbbfe841c9120790d1af3ae1807b5fd1e0a760d18a', 0, '2020-01-19 12:46:50'),
('1d57ad6fb489fca45dac069da9a523c60304c52a7d7a92178160314359b5d3a264654d59482c4043', '7eab8a2c273852913869d2e791dab7a7290078761b89b38814ece41a995fa03e68ae3ee2b681f6bf', 0, '2020-01-21 14:43:39'),
('1f8add401550695d395e3ca71dbf723479a3d5d18ac035eabb7bd8ad32d0b12fb990182e1563daf4', '056c9de26d6d4bf308036668e9385bc9b995b4f1b19c5e5b9ca1a99cd57176983ada55331304f246', 0, '2020-01-30 08:39:44'),
('4024b5c9f4ddfdffd2cc1d1e6aa7e6a92cc56f53a7f141d73ead67d2d37e5df84af39d69841432b8', '42b0f7d13253d9b0f59eb8b981df24013dab98470146c797779b8d749788022e4ab96df1cec24832', 0, '2020-01-15 12:02:13'),
('57fd268efd479ee3a2f0b59783eec6f3ac850c118169c545f9a564aa6678e442a33e505badf65d1d', '6345eaf39baab7efd2594e2bf46f8b8ef97bd060656a540703f46023d17c6106e8fe44ef9a72a635', 0, '2020-01-30 08:32:35'),
('5b4fa476450347506c169dbe3c5c2db2fd612d392fc0b9f3cefd8f1642fd3ad7005b7d63def450e2', '6021984f7707f4946208d43ae1efe5ea40e9b6622ec69f1b2160d399222fccd748866e466df20272', 0, '2020-01-15 11:27:55'),
('73aff8edde8cb82a0a5070fa8d8ed107d70a589480e7a0dbb480eed311c7022753f3144670177321', '4375383f27ead7d3b1790c881305f820af11d6b0f1bb02f67f6b3c89999951800be6755ba0ffbb32', 0, '2020-01-30 08:42:40'),
('73e54135ff0273e7f497799e5c31e00e2c9f14e67d80bf94dd9a932920940875faa8e748a466ee5a', 'e346fcc00f072f3e82e7f5a5d89e6cea91914f5b6c9e6966dd7c08670be89f435137cd42464e9f54', 0, '2020-01-30 08:47:30'),
('806de2dbbbd293feddaf9ebcc624b85cb7131c08cd1b80e614be97e665057bb5b214c8ebf2c83f62', '0d6ca7f019173984a42f4948e7543261c72d2e4c65c89a7c711be202789ca968daff66b8782c65db', 0, '2020-01-15 11:55:30'),
('97f49cd742e021336ed13f4906fedfb104e01af78ff90211ccc4140c273400e5c07ff46095ed9c29', 'bcf1bae03faee7a90c9731446d97f6599de02757057eb26b6102dc186ab0e2d2c94d549e7c453204', 0, '2020-01-30 08:41:52'),
('9e1d94ce7f5da1e6120c4a8466c1af72c46ac3fc78e03ba949e05df262b342f76f58eeeee13507d4', '72e1bad6e6dac811bd83155ce12216c79a1e332b90b7b08523ea0f1caf70edfe14d40410a188b762', 0, '2020-01-30 08:45:58'),
('a2264452676f7a168f8fef83a38b4785bf09dc046cf570285bd592596d4daf83e0e38a830bd32a89', '3844c8eaa34a5d2d1e17be626b781f84b26ef0088d85e70c79c990bf9c7cba54a1d05f6f18f83565', 0, '2020-01-30 08:40:56'),
('b0403f199b7df9ea182b82b66ace1f1fe281d2814af587e5b2ba3def5a33e2ae8db52e9663c0f231', '1fbb59832155b6124b122a51e8bdfb819d1f0ee630458afceebc5877e397e85546ba1c60a69f79b4', 0, '2020-01-14 11:15:25'),
('c02cf67c283a32fee1a2384bf3d42532850a058504578ad7b59b9a4d069341bf7582ac7830047458', 'c0b01dcae352943f12b074cd6a2eec29bd50a9166f01962e5297469ade965654365aac5680ae1e44', 0, '2020-01-25 09:51:37'),
('c6d220f62456e9b8571b1269d3d7e54ebf411de0abba1770b00e115584bf2771b6cbd3519d480305', '53945f36ef53ef835dc7c2038a91affcbc381b2315e3924605ab370092a7f37b0e266f30bb78b5c1', 0, '2020-01-30 08:28:25'),
('e819b2377ba84f29dc4c52f08cb6075a5b4485221247e60ccdde0f8e5c414e75808a712c352e6cd4', 'f527f20285c4137648ed3741faf45b635ce18a7bf1170111510b9eb73fc01f204f742f79caf8e6de', 0, '2020-01-14 11:17:11'),
('ed9c14dd2e06658ccee2c0f30518a25431053a31d8a27c0c75efd0b366fa141cd9d4b7290fd8fe54', '227f2e851a5b994fa558cd4a5a73b03a64488e9cdad1225018b539c30f7b2539211de12dd46220fd', 0, '2020-01-15 11:24:45'),
('ef115fb347ea55f3749d02ba8d8e090f5d5b692f1db51d63edf37c868f5413288e443a26cfa2f0a1', 'f3239d5a0d1c36a00048c91817054111eb810ca79e2870ac68db0c9f21a8f2b84ddba6f0162871c4', 0, '2020-01-21 14:43:42'),
('f6f0bdcfd5c91314e899238b4c551769021414ba20b89ceb7c698f201289624093469c0f7aab68c3', 'c474a70eedd276e30253723b219de5a355ac74d044aa32553f020ad11c50242562077733ae989bd2', 0, '2020-01-30 08:29:38');

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-01-29 05:12:41', '2019-01-29 05:12:41');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `base` int(11) NOT NULL,
  `transport` int(11) NOT NULL,
  `accomodation` int(11) NOT NULL,
  `child_allowance` int(11) NOT NULL,
  `spouse_allowance` int(11) NOT NULL,
  `others` int(11) NOT NULL,
  `assurance` int(11) NOT NULL,
  `taxes` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `payrolls`
--

INSERT INTO `payrolls` (`id`, `employee_id`, `base`, `transport`, `accomodation`, `child_allowance`, `spouse_allowance`, `others`, `assurance`, `taxes`, `created_at`, `updated_at`) VALUES
(1, 1, 100, 70, 55, 12, 20, 17, 13, 7, '2019-02-10 15:12:46', '2019-02-11 09:04:24'),
(2, 2, 90, 20, 10, 19, 11, 29, 7, 3, '2019-02-11 10:11:26', '2019-02-11 10:14:44');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(2, 'browse_bread', NULL, '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(3, 'browse_database', NULL, '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(4, 'browse_media', NULL, '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(5, 'browse_compass', NULL, '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(6, 'browse_menus', 'menus', '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(7, 'read_menus', 'menus', '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(8, 'edit_menus', 'menus', '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(9, 'add_menus', 'menus', '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(10, 'delete_menus', 'menus', '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(11, 'browse_roles', 'roles', '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(12, 'read_roles', 'roles', '2019-01-29 05:12:24', '2019-01-29 05:12:24'),
(13, 'edit_roles', 'roles', '2019-01-29 05:12:25', '2019-01-29 05:12:25'),
(14, 'add_roles', 'roles', '2019-01-29 05:12:25', '2019-01-29 05:12:25'),
(15, 'delete_roles', 'roles', '2019-01-29 05:12:25', '2019-01-29 05:12:25'),
(16, 'browse_users', 'users', '2019-01-29 05:12:25', '2019-01-29 05:12:25'),
(17, 'read_users', 'users', '2019-01-29 05:12:25', '2019-01-29 05:12:25'),
(18, 'edit_users', 'users', '2019-01-29 05:12:25', '2019-01-29 05:12:25'),
(19, 'add_users', 'users', '2019-01-29 05:12:25', '2019-01-29 05:12:25'),
(20, 'delete_users', 'users', '2019-01-29 05:12:25', '2019-01-29 05:12:25'),
(21, 'browse_settings', 'settings', '2019-01-29 05:12:25', '2019-01-29 05:12:25'),
(22, 'read_settings', 'settings', '2019-01-29 05:12:25', '2019-01-29 05:12:25'),
(23, 'edit_settings', 'settings', '2019-01-29 05:12:25', '2019-01-29 05:12:25'),
(24, 'add_settings', 'settings', '2019-01-29 05:12:26', '2019-01-29 05:12:26'),
(25, 'delete_settings', 'settings', '2019-01-29 05:12:26', '2019-01-29 05:12:26'),
(26, 'browse_categories', 'categories', '2019-01-29 05:12:37', '2019-01-29 05:12:37'),
(27, 'read_categories', 'categories', '2019-01-29 05:12:37', '2019-01-29 05:12:37'),
(28, 'edit_categories', 'categories', '2019-01-29 05:12:37', '2019-01-29 05:12:37'),
(29, 'add_categories', 'categories', '2019-01-29 05:12:38', '2019-01-29 05:12:38'),
(30, 'delete_categories', 'categories', '2019-01-29 05:12:38', '2019-01-29 05:12:38'),
(31, 'browse_posts', 'posts', '2019-01-29 05:12:39', '2019-01-29 05:12:39'),
(32, 'read_posts', 'posts', '2019-01-29 05:12:40', '2019-01-29 05:12:40'),
(33, 'edit_posts', 'posts', '2019-01-29 05:12:40', '2019-01-29 05:12:40'),
(34, 'add_posts', 'posts', '2019-01-29 05:12:40', '2019-01-29 05:12:40'),
(35, 'delete_posts', 'posts', '2019-01-29 05:12:40', '2019-01-29 05:12:40'),
(36, 'browse_pages', 'pages', '2019-01-29 05:12:41', '2019-01-29 05:12:41'),
(37, 'read_pages', 'pages', '2019-01-29 05:12:41', '2019-01-29 05:12:41'),
(38, 'edit_pages', 'pages', '2019-01-29 05:12:41', '2019-01-29 05:12:41'),
(39, 'add_pages', 'pages', '2019-01-29 05:12:41', '2019-01-29 05:12:41'),
(40, 'delete_pages', 'pages', '2019-01-29 05:12:41', '2019-01-29 05:12:41'),
(41, 'browse_hooks', NULL, '2019-01-29 05:12:45', '2019-01-29 05:12:45'),
(42, 'browse_products', 'products', '2019-01-29 06:37:23', '2019-01-29 06:37:23'),
(43, 'read_products', 'products', '2019-01-29 06:37:23', '2019-01-29 06:37:23'),
(44, 'edit_products', 'products', '2019-01-29 06:37:23', '2019-01-29 06:37:23'),
(45, 'add_products', 'products', '2019-01-29 06:37:23', '2019-01-29 06:37:23'),
(46, 'delete_products', 'products', '2019-01-29 06:37:23', '2019-01-29 06:37:23'),
(47, 'browse_transactions', 'transactions', '2019-01-31 13:01:20', '2019-01-31 13:01:20'),
(48, 'read_transactions', 'transactions', '2019-01-31 13:01:20', '2019-01-31 13:01:20'),
(49, 'edit_transactions', 'transactions', '2019-01-31 13:01:20', '2019-01-31 13:01:20'),
(50, 'add_transactions', 'transactions', '2019-01-31 13:01:20', '2019-01-31 13:01:20'),
(51, 'delete_transactions', 'transactions', '2019-01-31 13:01:20', '2019-01-31 13:01:20'),
(52, 'browse_commandes', 'commandes', '2019-01-31 13:11:46', '2019-01-31 13:11:46'),
(53, 'read_commandes', 'commandes', '2019-01-31 13:11:46', '2019-01-31 13:11:46'),
(54, 'edit_commandes', 'commandes', '2019-01-31 13:11:46', '2019-01-31 13:11:46'),
(55, 'add_commandes', 'commandes', '2019-01-31 13:11:46', '2019-01-31 13:11:46'),
(56, 'delete_commandes', 'commandes', '2019-01-31 13:11:46', '2019-01-31 13:11:46');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 2),
(42, 3),
(42, 4),
(43, 1),
(43, 2),
(43, 3),
(43, 4),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-29 05:12:40', '2019-01-29 05:12:40'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-29 05:12:40', '2019-01-29 05:12:40'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-29 05:12:40', '2019-01-29 05:12:40'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-29 05:12:40', '2019-01-29 05:12:40');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `user_id`, `avatar`, `description`, `created_at`, `updated_at`) VALUES
(1, 'test 2 edité', 5, 'images/products/photo.png', 'Le complexe scolaire Mama Yetu est situé dans la commune urbaine de Karisimbi, quartier MURARA, \navenue Bunia derrière l\'ISIG (Institut Supérieur d\'Informatique et de Gestion). Son emplacement \néloigné des allés principaux lui confère un calme particulier. Il est loge dans une concession \nde 60m sur 40m', NULL, '2019-01-25 12:06:12'),
(3, 'post', 5, '/images/products/postlevel 2.jpg', 'from postman', '2019-01-19 10:55:50', '2019-01-19 10:55:50'),
(5, 'test from phobe', 5, 'public/images/products/testfromphobe.png', 'test from phobe', '2019-01-21 08:34:02', '2019-01-21 08:34:03'),
(6, 'produit', 5, 'images/products/description.png', 'description', '2019-01-21 08:52:00', '2019-01-21 08:52:01'),
(7, 'post', 5, 'images/products/descriptionduproduitapartirdelapplication.png', 'from postman', '2019-01-21 12:45:44', '2019-01-25 09:58:42'),
(8, 'new ptoduct', 5, 'images/products/thisisthedescriptiontobecontinued.jpg', 'this is the description, to be continued', '2019-01-25 12:08:38', '2019-01-25 12:08:39');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-01-29 05:12:23', '2019-01-29 05:12:23'),
(2, 'prod user', 'Producteur', '2019-01-29 05:12:23', '2019-01-30 05:43:48'),
(3, 'seller user', 'Revendeur', '2019-01-30 05:45:13', '2019-01-30 05:45:13'),
(4, 'buy user', 'Acheteur', '2019-01-30 05:46:28', '2019-01-30 05:46:28');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Agro', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Promotion des agriculteurs et ecoulement des produits agricoles', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\January2019\\v1LzPp2Bfz7YFP4uPrz3.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `transactions`
--

INSERT INTO `transactions` (`id`, `code`, `amount`, `created_at`, `updated_at`) VALUES
(1, '2838-HBVS_839', '25', '2019-01-31 13:02:50', '2019-01-31 13:02:50');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-01-29 05:12:41', '2019-01-29 05:12:41'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-01-29 05:12:42', '2019-01-29 05:12:42'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-01-29 05:12:42', '2019-01-29 05:12:42'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-01-29 05:12:42', '2019-01-29 05:12:42'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-01-29 05:12:42', '2019-01-29 05:12:42'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-01-29 05:12:42', '2019-01-29 05:12:42'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-01-29 05:12:42', '2019-01-29 05:12:42'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-01-29 05:12:42', '2019-01-29 05:12:42'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-01-29 05:12:42', '2019-01-29 05:12:42'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-01-29 05:12:42', '2019-01-29 05:12:42'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-01-29 05:12:43', '2019-01-29 05:12:43'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-01-29 05:12:43', '2019-01-29 05:12:43'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-01-29 05:12:43', '2019-01-29 05:12:43'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-01-29 05:12:43', '2019-01-29 05:12:43'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-01-29 05:12:43', '2019-01-29 05:12:43'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-01-29 05:12:43', '2019-01-29 05:12:43'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-01-29 05:12:43', '2019-01-29 05:12:43'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-01-29 05:12:43', '2019-01-29 05:12:43'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-01-29 05:12:43', '2019-01-29 05:12:43'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-01-29 05:12:43', '2019-01-29 05:12:43'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-01-29 05:12:43', '2019-01-29 05:12:43'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-01-29 05:12:44', '2019-01-29 05:12:44'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-01-29 05:12:44', '2019-01-29 05:12:44'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-01-29 05:12:44', '2019-01-29 05:12:44'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-01-29 05:12:44', '2019-01-29 05:12:44'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-01-29 05:12:44', '2019-01-29 05:12:44'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-01-29 05:12:44', '2019-01-29 05:12:44'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-01-29 05:12:44', '2019-01-29 05:12:44'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-01-29 05:12:44', '2019-01-29 05:12:44'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-01-29 05:12:44', '2019-01-29 05:12:44');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(5, 2, 'nickson', 'vendeur@test.fr', 'users/default.png', NULL, '$2y$10$pGTTEkZpQeKep3ldJE3u5efh4e6NyglXa78ONCy9ZC8CQx4ejQBjG', NULL, '{\"locale\":\"en\"}', '2019-01-13 21:56:56', '2019-01-30 05:52:20'),
(8, 2, 'dfgh', 'qdf@xc.v', 'users/default.png', NULL, '$2y$10$tyUC.C/1qtt8Osf4HtV5B.TmTVt8.SBg3FUm0vDlyO7daKOSMRWta', NULL, '{\"locale\":\"en\"}', '2019-01-14 09:17:11', '2019-01-30 05:51:42'),
(9, 1, 'alain', 'admin@agro.dev', 'users/default.png', NULL, '$2y$10$QVyYlvU8KJJaJ9wHbeM0g.DPPW.RX48erdpn9aagQ0CEjbHNcw/Mu', NULL, NULL, '2019-01-29 05:15:30', '2019-01-29 05:15:30'),
(11, 3, 'alain burindi', 'testvendeur@gmail.com', 'users/default.png', NULL, '$2y$10$Qiqc97en0m5FVs4qyKDrhut7o6rY7Y2ciTOuHZblueDgerSKbfnK.', NULL, '{\"locale\":\"en\"}', '2019-01-30 06:29:38', '2019-01-30 06:49:46');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commandes_user_id_foreign` (`user_id`),
  ADD KEY `commandes_transaction_id_foreign` (`transaction_id`),
  ADD KEY `commandes_product_id_foreign` (`product_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payrolls_employee_id_foreign` (`employee_id`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `commandes_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `commandes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `payrolls`
--
ALTER TABLE `payrolls`
  ADD CONSTRAINT `payrolls_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Base de données :  `attend`
--
CREATE DATABASE IF NOT EXISTS `attend` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `attend`;

-- --------------------------------------------------------

--
-- Structure de la table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `attendances`
--

INSERT INTO `attendances` (`id`, `student_id`, `course_id`, `created_at`, `updated_at`) VALUES
(24, 2, 2, '2018-11-12 04:48:09', '2018-11-12 04:48:09'),
(25, 3, 2, '2018-11-12 04:48:09', '2018-11-12 04:48:09'),
(26, 1, 2, '2018-11-12 04:48:09', '2018-11-12 04:48:09'),
(27, 2, 2, '2018-11-13 07:55:50', '2018-11-13 07:55:50'),
(28, 1, 2, '2018-11-13 07:55:50', '2018-11-13 07:55:50'),
(29, 2, 2, '2018-11-23 12:25:25', '2018-11-23 12:25:25'),
(30, 3, 2, '2018-11-23 12:25:25', '2018-11-23 12:25:25'),
(31, 4, 2, '2018-11-23 12:25:25', '2018-11-23 12:25:25'),
(32, 1, 2, '2018-11-23 12:25:25', '2018-11-23 12:25:25'),
(33, 2, 2, '2018-11-26 08:28:15', '2018-11-26 08:28:15'),
(34, 1, 2, '2018-11-26 08:28:15', '2018-11-26 08:28:15');

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`id`, `name`, `code`, `status`, `description`, `class_id`, `created_at`, `updated_at`) VALUES
(1, 'Course 1', 'CSC342', 2, 'this is the description of the selected course in test mode, we hope that you will enjoy it and wish success to all. may god bless you', 1, '2018-10-31 05:55:22', '2018-11-07 06:47:39'),
(2, 'Course 2', 'CSC453', 1, 'this is the description of the selected course in test mode, we hope that you will enjoy it and wish success to all. may god bless you', 1, '2018-10-31 06:06:36', '2018-11-07 06:47:39');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(36, 6, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(37, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(38, 6, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(39, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(40, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(42, 6, 'department_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attendances\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(51, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(53, 11, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 4),
(54, 11, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, '{}', 5),
(55, 11, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 6),
(56, 11, 'class_id', 'text', 'Class Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(57, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(58, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(59, 11, 'course_belongsto_t_class_relationship', 'relationship', 't_classes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\T_Class\",\"table\":\"t_classes\",\"type\":\"belongsTo\",\"column\":\"class_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attendances\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(75, 15, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 15, 'matricule', 'text', 'Matricule', 1, 1, 1, 1, 1, 1, '{}', 2),
(77, 15, 't_class_id', 'text', 'T Class Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(78, 15, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(79, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(80, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(81, 15, 'student_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attendances\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(82, 15, 'student_belongsto_t_class_relationship', 'relationship', 't_classes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\T_Class\",\"table\":\"t_classes\",\"type\":\"belongsTo\",\"column\":\"t_class_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"departments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(83, 17, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 17, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(85, 17, 'department_id', 'text', 'Department Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(86, 17, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(87, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(88, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(89, 17, 't_class_belongsto_department_relationship', 'relationship', 'departments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Department\",\"table\":\"departments\",\"type\":\"belongsTo\",\"column\":\"department_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attendances\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(90, 17, 't_class_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attendances\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(91, 18, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 18, 'student_id', 'text', 'Student Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(93, 18, 'course_id', 'text', 'Course Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(94, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(95, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(96, 18, 'attendance_belongsto_student_relationship', 'relationship', 'students', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Student\",\"table\":\"students\",\"type\":\"belongsTo\",\"column\":\"student_id\",\"key\":\"id\",\"label\":\"matricule\",\"pivot_table\":\"attendances\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(97, 18, 'attendance_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attendances\",\"pivot\":\"0\",\"taggable\":null}', 7);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-11-29 10:24:48', '2018-11-29 10:24:48'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-11-29 10:24:48', '2018-11-29 10:24:48'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-11-29 10:24:49', '2018-11-29 10:24:49'),
(6, 'departments', 'departments', 'Department', 'Departments', 'voyager-company', 'App\\Department', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-07 05:34:15', '2018-12-07 12:57:39'),
(11, 'courses', 'courses', 'Course', 'Courses', 'voyager-documentation', 'App\\Course', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-07 06:48:04', '2018-12-07 13:03:00'),
(15, 'students', 'students', 'Student', 'Students', 'voyager-people', 'App\\Student', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-07 07:14:48', '2018-12-07 13:05:11'),
(17, 't_classes', 'classes', 'Class', 'Classes', NULL, 'App\\T_Class', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-07 07:28:31', '2018-12-07 07:33:25'),
(18, 'attendances', 'attendances', 'Attendance', 'Attendances', 'voyager-activity', 'App\\Attendance', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-12-07 12:48:26', '2018-12-07 12:54:15');

-- --------------------------------------------------------

--
-- Structure de la table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `departments`
--

INSERT INTO `departments` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'Computer Science', 11, '2018-10-30 01:38:10', '2018-10-30 01:42:24'),
(6, 'Economic and Business Studies', 17, '2018-11-08 04:58:00', '2018-11-08 04:58:00');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-11-29 10:24:52', '2018-11-29 10:24:52');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-11-29 10:24:52', '2018-11-29 10:24:52', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-11-29 10:24:52', '2018-11-29 10:24:52', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-11-29 10:24:52', '2018-11-29 10:24:52', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-11-29 10:24:52', '2018-11-29 10:24:52', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-11-29 10:24:52', '2018-11-29 10:24:52', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-11-29 10:24:52', '2018-11-29 10:24:52', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-11-29 10:24:52', '2018-11-29 10:24:52', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-11-29 10:24:52', '2018-11-29 10:24:52', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-11-29 10:24:53', '2018-11-29 10:24:53', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-11-29 10:24:53', '2018-11-29 10:24:53', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2018-11-29 10:24:58', '2018-11-29 10:24:58', 'voyager.hooks', NULL),
(14, 1, 'Departments', '', '_self', 'voyager-company', '#000000', NULL, 17, '2018-12-07 05:34:16', '2018-12-07 12:56:47', 'voyager.departments.index', 'null'),
(16, 1, 'Classes', '', '_self', 'voyager-study', NULL, NULL, 18, '2018-12-07 06:43:44', '2018-12-07 06:43:44', 'voyager.classes.index', NULL),
(17, 1, 'Courses', '', '_self', 'voyager-documentation', '#000000', NULL, 19, '2018-12-07 06:48:04', '2018-12-07 13:02:20', 'voyager.courses.index', 'null'),
(19, 1, 'Students', '', '_self', 'voyager-people', '#000000', NULL, 20, '2018-12-07 07:11:25', '2018-12-07 13:04:32', 'voyager.students.index', 'null'),
(21, 1, 'Attendances', '', '_self', 'voyager-activity', '#000000', NULL, 21, '2018-12-07 12:48:27', '2018-12-07 13:05:59', 'voyager.attendances.index', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(11, '2018_07_31_025124_create_representators_table', 2),
(12, '2018_07_31_095106_create_representators_table', 3),
(13, '2018_08_01_125003_create_user_infos_table', 4),
(14, '2018_07_22_093822_create_students_table', 5),
(15, '2018_07_23_224125_create_departments_table', 5),
(16, '2018_10_18_105256_create_classes_table', 6),
(17, '2018_10_18_161150_create_courses_table', 7),
(18, '2018_10_18_162711_create_attendances_table', 7),
(19, '2016_01_01_000000_add_voyager_user_fields', 8),
(20, '2016_01_01_000000_create_data_types_table', 8),
(21, '2016_05_19_173453_create_menu_table', 8),
(22, '2016_10_21_190000_create_roles_table', 8),
(23, '2016_10_21_190000_create_settings_table', 8),
(24, '2016_11_30_135954_create_permission_table', 8),
(25, '2016_11_30_141208_create_permission_role_table', 8),
(26, '2016_12_26_201236_data_types__add__server_side', 8),
(27, '2017_01_13_000000_add_route_to_menu_items_table', 8),
(28, '2017_01_14_005015_create_translations_table', 8),
(29, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 8),
(30, '2017_03_06_000000_add_controller_to_data_types_table', 8),
(31, '2017_04_21_000000_add_order_to_data_rows_table', 8),
(32, '2017_07_05_210000_add_policyname_to_data_types_table', 8),
(33, '2017_08_05_000000_add_group_to_settings_table', 8),
(34, '2017_11_26_013050_add_user_role_relationship', 8),
(35, '2017_11_26_015000_create_user_roles_table', 8),
(36, '2018_03_11_000000_add_user_settings', 8),
(37, '2018_03_14_000000_add_details_to_data_types_table', 8),
(38, '2018_03_16_000000_make_settings_value_nullable', 8);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('06f803f7990a2f6174908d523e48cae4431715be891f96a058f1ef44c64a1a79516d3997b3787c92', 13, 3, NULL, '[\"*\"]', 0, '2019-02-01 11:05:01', '2019-02-01 11:05:01', '2019-02-01 13:24:53'),
('14ddfe7e9b317fbdc6a16d1d284401a144e7a5e011ad2cf554c9f330a1f95ea4157b88239e69b63b', 13, 3, NULL, '[\"*\"]', 0, '2018-11-23 12:21:38', '2018-11-23 12:21:38', '2018-11-23 14:41:31'),
('1ea5da524a88006a543d3a5f39aeef2fc8252529a8d4621f3a189693aed33ac1091981acdce1f5db', 13, 3, NULL, '[\"*\"]', 0, '2018-11-23 12:21:38', '2018-11-23 12:21:38', '2018-11-23 14:41:31'),
('347a30567c49ba129a1b43964e379905ef45f5a16b7b5f0ab3c1d96e1ad9912878477993e1f71f2e', 13, 3, NULL, '[\"*\"]', 0, '2018-11-14 11:00:18', '2018-11-14 11:00:18', '2018-11-14 13:20:09'),
('4ad3061f44b74df696b4d83867245828b7b370389eb8b790e5f14117a096d8ab34b6d0993bca6d23', 14, 3, NULL, '[\"*\"]', 0, '2018-11-17 03:38:13', '2018-11-17 03:38:13', '2018-11-17 05:58:12'),
('83903c28a2090bc179dead455a1e39792e017e79184251c3e6081dba34c1f0e4049093342ae6a220', 13, 3, NULL, '[\"*\"]', 0, '2018-12-10 10:42:48', '2018-12-10 10:42:48', '2018-12-10 13:02:46'),
('8882df11819e09642e201aadbe1335b4b2e8443041c21c6d8d024da582de2e7af868263f7343226b', 13, 3, NULL, '[\"*\"]', 0, '2018-11-14 10:24:01', '2018-11-14 10:24:01', '2018-11-14 12:44:01'),
('905ede3f481e588ed2c6f2fca0f89f5e7ac80460532fa2777fb62701a0a5bbbb4a5a51c6ceef2512', 13, 3, NULL, '[\"*\"]', 0, '2018-11-14 10:23:27', '2018-11-14 10:23:27', '2018-11-14 12:43:24'),
('92c7ac48654042b83fb2be22c467cd5b09488bbe272e50fc92bb821c6f72c217e4384a68cbb3e9e6', 13, 3, NULL, '[\"*\"]', 0, '2018-12-10 11:19:15', '2018-12-10 11:19:15', '2018-12-10 13:39:13'),
('b71ff06d45ef3dd5535200b63aeb575cac36fb203f749e63bf7cb6a5b4c764dfe4c060af480dd68a', 13, 3, NULL, '[\"*\"]', 0, '2018-12-10 10:58:20', '2018-12-10 10:58:20', '2018-12-10 13:18:20'),
('b8a295168961eda0bfc3daf57f8acf08864a7ac0dd9ce9f047a698311f18090ea0c59296da863931', 13, 3, NULL, '[\"*\"]', 0, '2019-02-01 11:05:16', '2019-02-01 11:05:16', '2019-02-01 13:25:15'),
('b9d93dbce996338217a60762d0e35fee7e27538fdd311db7f2bfb7c885589521572b861901cd35b1', 13, 3, NULL, '[\"*\"]', 0, '2018-11-26 08:26:32', '2018-11-26 08:26:32', '2018-11-26 10:46:31'),
('d8f69d1ca8e9d2984b8dbba0fd2ea462891ca8e18d9c067b874ec2f9b0e034f4386ebd83b22931ad', 13, 3, NULL, '[\"*\"]', 0, '2018-11-14 11:00:18', '2018-11-14 11:00:18', '2018-11-14 13:20:09'),
('dc27a2d1f3271a8f290007794789ae9eea9c97977770436f8030be363d106f3ef6494719b84c555e', 13, 3, NULL, '[\"*\"]', 0, '2018-11-23 12:21:59', '2018-11-23 12:21:59', '2018-11-23 14:41:59'),
('e96f10783f346e3e67cd6d50bc12235d0a873420e3209a3ee995d924d308a77251175c9eabeae083', 13, 3, NULL, '[\"*\"]', 0, '2018-11-14 11:00:18', '2018-11-14 11:00:18', '2018-11-14 13:20:18'),
('ef2a05287fff744bb76c690bf82d8b58f0d56c814f0d34f79fdbb3796794d1bd7b1dc20a2536e4b1', 13, 3, NULL, '[\"*\"]', 0, '2018-11-14 10:23:27', '2018-11-14 10:23:27', '2018-11-14 12:43:21'),
('f759916ee64a79aebd01e0838795bb66a6eb398912f642e065440c9b83953a5087dad9d723e6ec34', 13, 3, NULL, '[\"*\"]', 0, '2019-01-09 11:55:22', '2019-01-09 11:55:22', '2019-01-09 14:15:21');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Password Grant Client', 'hPQfv4DqHp5BqZb3BpTc7qCCSNAlbDbFQO0w2k0N', 'http://localhost', 0, 1, 0, '2018-07-30 23:58:47', '2018-07-30 23:58:47'),
(2, NULL, 'alain', 'Gshu8JsILxWnwBJia5aTpjtVxCSsdVS3bv864Iwg', 'http://localhost/auth/callback', 0, 0, 0, '2018-08-01 08:39:21', '2018-08-01 08:39:21'),
(3, NULL, 'alain', '3MA0REAqO08XkBoJ2jiSekYmtJrfQnzPobw6CG0K', 'http://localhost', 0, 1, 0, '2018-08-01 08:45:29', '2018-08-01 08:45:29');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('03d041306cc31df3adc2fc20b2e7b34e9ec5edb21ca564b7b899747a0687e4a36bca141520ee7d0d', '2ced367898df7fc1dbfb801101321d7bbc87b8c8a9ac62153f9f87e22da65a1705254bf0e36ca834', 0, '2018-12-08 08:54:13'),
('04b4327ecd990353de1619df16c52702d4688403e12569ddb7a5f863866a73174ca9fa87c4be8782', 'a41086f821ae8b424d1cd0c02c753c7ed1dcc6fe5f8f95037f40f693ee4bbfc51f52033dab79789c', 0, '2018-12-14 11:37:35'),
('06a8bd3294e3d3e4bc85bf7371ac2d5befe156db50e6c7d1c617b448b454820f3ee7f17c0947c264', 'cc9a03a276378114f6e4aae2a0f682802da3df79d29ff3df556a8c58b84b8e31e3be493aa9e96e89', 0, '2018-12-03 11:52:52'),
('0fa2924e54673719e5cd19e84dee377779a29efa03cdc1a4c5380702694ee12084898228321ed7e7', 'f0249d46d3ac6357db993253b8e649cd8ce0fdec486f8cd0507ea1ec2df8891b70427eaf7e050654', 0, '2018-09-03 10:01:41'),
('10820d3c3918e65d8b9c4e2452b638237bac1ad9b96d442420225db34020d8ab80e179248b8871c7', '27e31db974eceb048f03d67a923a773894a56b11c26a61cc3d349f0df11eb671db7cd135374da484', 0, '2018-12-03 12:27:29'),
('11ffd4c02055a09cbfffc56b8ce53c14639d60fc2148998a5b9534c91f27fad91c505691e2e02cfe', '2a59f925f13c9444cff148af914553a05295738b0007c943b7425f3a6dd01c36dc36aae362b9532a', 1, '2018-12-10 11:51:09'),
('146fc3b4b062441d89fa1f2186bbc757a62a65d2033b9f67e3f4ade1699a6736e0117183b7597606', '76b17089299fa4b8e3401248703e5e6a102151ca090b3a97d414819461686a3b3639a2317df2f68c', 0, '2018-12-13 09:50:56'),
('147c5fb12cb6f14bc86112190f7da00d9d33054a692e2b7b6728700c69b007dca67e0741dda59cd2', '324061b6bf9481bd6586c79d896b67acf762b90ec38f7edada862a623b10194ac00f4799b297c5d0', 1, '2018-12-09 09:52:17'),
('166811e02e770cdf5b5282f6d86dbc3514174b25fd03f8eadda2dcda2dd20a039addd3a76cd6d34e', '0d935c6349c3f3e81e3fa36f159b5529a8eea5b6d8b392268c23229db3d84f860d3385cc5a425ab2', 1, '2018-12-09 11:12:43'),
('16912c470fb534f6c292655b8aa6ff4245f4905488ddc53f8dfa374d331cc6a3eb434c3520ad0409', '6535cdcc40a953679423fd741bbd2e925ee1503944fd6bfbf826cb5a62fab502ac903a3677e2289c', 0, '2018-12-02 11:43:01'),
('173f7708013a4ce3d75d484657ea4a24ae7119e8c6a3f17df1c30a6e1fe75fedb2ea8faa3667ab58', 'b6ef31f9ef61faea33c3f20b643d9bffa801766ac7421cc9c16ac7ffa33af3dfc729a566475039ec', 1, '2018-12-03 08:42:39'),
('183e7b7c87a5795029f835f428b4181503ac74be23faa4d94985a2b1b7442ae2b659ec817effff3b', 'd6a97f024eb5e74021e4c84cb83c3deebcecaf317d62ea263288b093ded9ab965bd7b0ca79728bda', 0, '2018-12-13 11:03:15'),
('1949b1eb6820a21bdbd95fe6385e96207eb0f3b4fef711ff03ca4ef6b8d806726509754db4a7546b', '4fce351ca4fa1df507c8a5d71cfb6159a0a98842d3cb6f9e387fad49210c782bc067f732ca76f4c7', 0, '2018-12-13 10:26:13'),
('1bd3ce0a443b3ee0624e1e3335b0e8f3906a214e020f30f0a373487ffa9b64e339dcff02f6025c68', '23aa6dfca9764d75c745398ac68c34cd75e0b9b0658d398c0fa8249ff32b5212fadf0ac61238da47', 0, '2018-09-15 23:17:48'),
('1eddb16bddfdf27c8aaefe5955ebf323f99e626012e6e7764bf835dbcba27670e222e4da5ab40cf3', '093d2996b72116dbc2d9e6ca30b3a423c55393e2e7747d3d31c598ef86bc6f3a340abd0a2ae9b890', 0, '2018-12-08 10:19:05'),
('1f610b76b63d560e7477d9e4adddbcbad0272cd13e9f6a8ea24127fa00685b295c210111bef3a01e', '9f12419c088f16a288abd68cc86323af772fda82aa6fc1b325030f800d28314219a2704f0b8882fb', 0, '2018-11-11 13:29:41'),
('220ac32abfe0bf29082609da155183a40b64dbe12d7188e140e276b8a5b1576d7f2d3b0cf79570e1', 'da9428e83b1789f1a009877394ff4c6bb687a3381c99db479a55f75ccd0d5ffb1bf5228bbfac864f', 1, '2018-12-09 13:17:51'),
('225aabdbade528a314d6cceb86efc63ef6daf5576e98d6b3d7367f22dfed0da730f7eec6261368a5', 'ff0c20a4124b760fdc196ff52e6efeb6e808d50b5878b181bd8b51ea3b454a0d1e523acca1d688a5', 1, '2018-12-10 13:07:23'),
('28be885aa24581120eb4b05272944ac38d4281bee20062ceaef8f78273f15d514d638529a5559cab', 'd0fb7bcd5aa8359c501f01be85f92e4cba68a654479323958c2a2f92f59f85e8092fc0111c40cb62', 0, '2018-12-02 12:37:33'),
('2b4ab3284339c456bdd34cfb3e68940e9a8757b85009162d423c44cf7b9cf6fc9569644177de9b24', 'd8f69d1ca8e9d2984b8dbba0fd2ea462891ca8e18d9c067b874ec2f9b0e034f4386ebd83b22931ad', 0, '2018-12-14 13:00:10'),
('2cc53dfe22c5e4bc22aeb625a96dd623801e746cc9ae353c28cc0dcc8204141e303549da186aa9e8', '793c4414deb3446c38e863df1060130f16b072745def0ee16111bad7fccd08f83caf971ac7cd338e', 0, '2018-11-11 12:27:26'),
('2e47aafa5094e304588fca0a1e8a8a910ebd3acfd73fe8ea4bd9d69f56d364d5301386f0e64d1fb1', 'e2be711166ec3750c45f2b3a4fba519d4df46162d5802c9e0995c105d2cbbf84c2e3e05f864f5d2d', 0, '2018-12-09 14:43:20'),
('2f03d36995f3c3dbd84e4853c1f33ffbd51a825b11de2bf5285dd155b552ef06a1b37f2a61efe61f', 'be05b88316c146a848295915943e273681fd607f8682d3f8554a32aa6810772ec3c86fd2b8a985d2', 0, '2018-12-10 12:29:24'),
('2fba3d63a270c457e0346f148e51c283dbbd51c083f14570083eb112d99bd56d2463dc96132e48b5', 'bbe67feb2d1a0f7f3226e0fb680879fa0f7be8fbf326504f9d573993c9e1e009c325e81d6287487d', 0, '2018-12-08 10:43:20'),
('317f33a7ca1a76a32127457fa1e103a63182b9100b73e16385a06e69b2236fab655b50da1cb311a0', '2bc9293c425e0c57a9f63f7f439c57d1405bc9f6bdd66232bc0e20d2f802a437c979863b598647ce', 0, '2018-09-16 08:23:20'),
('32dbdd0374dc2fec8f1a24949c0555ed7ee1191467aca9f703d8ccd2d21328bd2772feeea6b3673a', '26b8ea0d40dbf1e40bcef5cc25f76ea97d6a5974b5e20edeca1291071f4f4b3f8627b170a7910d6d', 0, '2018-12-13 10:26:14'),
('33b09b9da14b9f4c383b02f3ecd096cd1d705504da201293daa763ef1247718dba8936ecbac40436', 'e0503827b13eb525c2b00bcd1c4ceedce1234b7b06c3ae74c8d41913a2f05b5a99251ee8efaa9ca8', 0, '2018-12-03 11:11:23'),
('34f7ad4f1a9cfb157b18bf391d6dfb9ad1b3ae3ba34df1f91db2da9186e2b93be1b90439df5f335c', '7704cbd44f8716667a161049855867510436f32c5636fce39162a931690f42477077651dc77be61d', 0, '2018-11-15 11:42:36'),
('358ff5ab569dd1da3605802453d8953257f4fd120a9bdbd199e82a4e708582bbcc34d503cc80afe0', 'db12187d99933addd4db1b1eee961959a0b12d269720f2042f010baf43812cb72793a282485b5a17', 0, '2018-09-03 10:06:49'),
('35c4856c9779c0f50d7ba574ce260c4ea972c7b5c24813d56d9b6c569a76c4f45ad5bdeadc03b69c', 'ef2a05287fff744bb76c690bf82d8b58f0d56c814f0d34f79fdbb3796794d1bd7b1dc20a2536e4b1', 0, '2018-12-14 12:23:21'),
('374eff4797310fd4da00df7b17436f72e1171708e1ab4ef56e6df86be4c90787754bf9397b098319', 'c1f67e96a62b27bcae36e8b19528be2f757412b9b65b1140b708d4bde0b64e403a07bbdb2417882f', 0, '2018-12-13 10:24:51'),
('388ca8d9e5ad74b556c4611621d13a4416d84266bf2509b0d97d32ac2fe28f9ba460a8fdce3939c6', '4ad3061f44b74df696b4d83867245828b7b370389eb8b790e5f14117a096d8ab34b6d0993bca6d23', 0, '2018-12-17 05:38:13'),
('3a22fdf708a0e2e345bf274cff055c7069dc2748d1c834f529f0aa77651002bf74b9fff07c7bebcd', '06f803f7990a2f6174908d523e48cae4431715be891f96a058f1ef44c64a1a79516d3997b3787c92', 0, '2019-03-03 13:04:55'),
('3c9b192d5820a6f15c8f60d4f1e46976900fe429df6bddb5d4d92331bf782698ae8904ff3ffec77c', 'bb116b0d965eaae93b1d745d5289285ab60c5aefa08ae2326db566a1698c88c23b8c8bd111d4a732', 0, '2018-12-13 08:00:29'),
('3d8cf943a0342a6b7f2195ffd3936eab5347365b99ac6fe655550147627d4c852b371a71aa9df6b7', 'e76f1636b5b750ced58cc011e8162a327f5a1f86e92c2968b018d84cbec048ebf0baf5013115e5f8', 0, '2018-12-13 11:03:29'),
('3e030ab0034d289e9a5608c24ccfc35513cfeceb711c6e37e7c6d5b9464b01094195d56153e5395e', '10592d09bc99599c872ebe28e89e7de3e57f5b4b6e00d819924f66597334ad2e4c2e5bbccaeab359', 0, '2018-09-03 08:13:17'),
('3e85e7e8c3fb3b1adf693af4913d852cabf30669a6a4f01c8c7fae7e022e3f3791577a2479e33cbc', 'e735f7fb3f7d5f8f40a18f0a2e2cdf35f158821aa9136d9e428df700bc349787f20049c86ef67491', 0, '2018-12-08 11:35:26'),
('416bbff5f159c76f50fb75e2130a6b0dfbd6317a1b7ca3038123fc6a60dea0e7bdcfd23d4b50176f', '1612cd977f008126730e4b3f21fad6219de603b50dc39ef43707e18e11e8ccae7f8bb56e29f6b0ba', 0, '2018-12-10 13:49:44'),
('41b036aa3cfcdade9d463ea67a9a536f79ab973608df4fce87d69e132a82c1d00991f8bdf55f58db', 'eae5aef44e2e62b9aa68de66998885cbe39a0be6ab858babb9ebd0d5960fa60303004a5459adcd5c', 0, '2018-09-15 23:25:06'),
('4289fbbba13a139922966057bb05b1ce6fe3c1da7c1d0e4e69e8b711406b72c7c4a9babe2684faf2', '8882df11819e09642e201aadbe1335b4b2e8443041c21c6d8d024da582de2e7af868263f7343226b', 0, '2018-12-14 12:24:01'),
('45574e25fe49a2dce5b2b34c5ccd0d6efb2db998bd893300d8f41730177c524fe448e9bab55db2f6', 'dc366e0519f6fb6608bdad337a2ba77b5affd4bf66a71d7848933ed97773d97655c14b3cb8c48cbe', 0, '2018-09-15 23:46:41'),
('46e7d713af5ae0ccf970c58f11e81cb388a47e5abab9bcd3d287b2d5ee767f5e4df5629e48ad2d1b', '933610f478490926d66183b0cf13968820721ccd123927119e91ad917500e18530f649186c4901d5', 0, '2018-12-08 10:19:15'),
('4a573817f11cb6fa447a32e29dd71fbc9fdf7ce10be7d17f6d13e56942948eb401d7bfedfdadf85d', '4a5246d513722ccf43f354f4c44da5fb9014de952967da4fec78a238b6523ce8a2c1e116b73b18c1', 0, '2018-09-15 23:41:29'),
('4dbe92aacffbd0d60af64aa891c6a9fe1e9d529b7272d9dd0e83269059778b8729ad6ad5e6f8656d', '5a7f3cf665832f7202d70de76e71baacd5c874b6c525fd427f25582443c37e699adc462629044c3d', 0, '2018-12-10 13:55:19'),
('4ee6369860ee8ac03d7e6375c6c7bc4c7eb1959e45de6ab9439172900805edc3fceb3656e4d08123', '0b14d0bb46188503f8fe4642a83ec6af0cb0e25d65d2cdd551192bad923b1641eeee1123c6a44610', 0, '2018-12-14 10:17:42'),
('51c4b3ccc30ad05376eee25da81f11bd1150d3b9102aceaef95a55a10b9f3bcf541ae93ba7c6d9bf', '3dedbbf8666de4b95973ca98003ca5c5944fbe7b3af67116cbb2cee770b63eaed7f106e5a34dbe70', 0, '2018-12-13 10:24:58'),
('543ac33356829af18ae9b9f62f979ba1f2a17f75eb18e545fb9e20ccc89b8e4c46830d56172cf77e', 'e07756437503675936cfa26ba580fa8a12b942ec4cda99c8a67360f57ff6e1899a558fc50bcd3c9a', 0, '2018-12-06 11:44:31'),
('544255d98efb14df26f4a603ced61eed50d13fd7d4c9cbcc80e4a2880751f45fb3ebb5dfe5bc2df5', '0b374421890b0aee6336766d8dae60faa76665855a63d666041bc413492dcb308a50c240ef0858af', 0, '2018-12-08 09:25:09'),
('55381c538be7a3279454425cd8ef3ca4070a8ad67829bf5c66cdedec4d72f8ca3185a7bf145f1a8a', 'a357fa56062068f574917e9accc5e0f0c5b4459c629024db266b81d04274d2089f2d11111cbfa792', 1, '2018-12-03 08:21:45'),
('5626284a875f7c67a5b1a8c37cbf442906262cf2e1e3e42477b89d75893cbc6e432e0b5afe308aab', '03594a80061d18104b3e67895c7827501b5509e1cb124d3ddd484112e73f2aa68fa7d659e80ae827', 0, '2018-12-02 12:41:01'),
('582622c06a72b3fecb2b406e4b2bab74fb4959fdd2c41459d3036c87fa431de3e3bf295c45f0c173', '2a784a2dbe784e0661357f46a69e211e8f18daebd3acf1cb230eff978cd5135983532232a02c4f05', 0, '2018-12-05 10:16:16'),
('5997c09fa5f3a4f73d32b5d5cf7a3102289875827e105b3457288c7e238b255eef94291356e65644', 'e77a061a3df2af2a4c0224489e72450593d531a9af239647c2c3c6b90a76772990d4f97d7d6e5c9d', 0, '2018-12-02 12:13:15'),
('5bf37fb3f1f6d76ea419390f3a8bb1f5cafd58719485513ac9997088ce9e65c9645201d8d1c01e7b', '83e12328711246a548f26110129774434929eb84ea6a589a06ab6a60decdd6929577eabdb742ed49', 0, '2018-12-03 10:16:01'),
('5ea73a5e117601dc564e28b8ce03955e7e27195dd28332b2d17ae2c397d0097a04add67fd3063cf5', '8ab47289fa34a966b8fcda1ff52b570e4f044fb04f597faecd2802b053c50bf175e98ba38e50265c', 0, '2018-12-10 12:29:16'),
('6fbedf11f529bdb5fcd371c79425f30e4204b6c1880d5a514260b1c461a19e0ce4bc0eb14c6735d3', 'da469b5bc6558c731af65cca69b59aef7252546d99c4df7b65a6befa063be79054f47c4bdb73d2b6', 0, '2018-12-13 10:24:40'),
('722a1f403f63ae0d4e4e8a8bd089c1530f4dbb92166741eaf520dcc20b846e1299cb78d12ac18a90', 'd3646e0b3eb1dcd65e91f4fa239e04985205b890bc9ffb7d8986bb8c087665e40fb4785f13959232', 0, '2018-09-16 00:27:36'),
('73bcffe27a3d3e2f76e18847a925433fe970fe5607ecf98af022855edde9bf6472cc16f3e448ef58', '6aec7023ff69654cfc2771d5c1c6411f0a28bef8c5914199b0b605bfa3d21d5811242f962278fed0', 0, '2018-09-15 23:17:56'),
('760e79d2c9e5823c60e4ae2f641e16ab158bce54be1791baf6a44c1b755ac9f61a635c48fd166676', 'e96f10783f346e3e67cd6d50bc12235d0a873420e3209a3ee995d924d308a77251175c9eabeae083', 0, '2018-12-14 13:00:18'),
('80d9c4ec007aa9e19dec8785a784e407d407c60d1ba6c4f90f0e72dca396000461cea02c24a7dbc2', '5055975e9c3ab786f790dc5ca255340b267153a95a60848f886d7eed3439e84239b1fcaa8481ccac', 0, '2018-12-09 14:21:37'),
('81966d70e1d750cd6274f9096331540dfef8b9943a33654d6a9e077c9d6d765ffc29fa24f176db3b', '9ab26aeabbb462eca9f139e33382416352dcf901e6e3aa8ec208f35dbb884ffe1e6043ad27cdb4ca', 0, '2018-09-16 12:17:40'),
('8224eb382262c9d00fec995e20d7f7b06d68bd485aa445989500a531ef3ce77bf4a8e04dc108414a', '32cb0fd84da2db030c77f3191e07a53243bc479d509887d4d9253229614966df8c2a70bc61965092', 0, '2018-11-11 13:08:18'),
('840deaa08fce44d5afcf6db905cfdb6711f43d02d65fcf8b7b646fd6ec52e0d5d4ae75c6ef0b1395', '5a81743010d8c1342b102f7f51807566924f2080a7ec622177d6a3dd9c4bffc2f8141293209a53f1', 0, '2018-12-08 11:35:18'),
('84b78678d000f0af849d0f268f9cea5dc21a2cab149bef912b04849d8b67c70da47f45bef2d834d3', '8b0b5dfd8404829b855c1d4c9ca059e881cecefd13b38ec7d78492726befe64666b689b06d912a6c', 0, '2018-12-02 13:27:49'),
('852499092b8b358b89cc4df2b7712394e5bed516fa063de5f39c1626e27a293f4dae66a3e8651644', '9b90e20b50739ec64b01ceced453dabfd6380b699fc0f79b354423545e75193f9241c4fbb7c41e08', 0, '2018-12-13 11:03:15'),
('8ac85ca81d775f1369428c83332c01f247c3a8d717b9378c80812a492373a839981c6d45bd70cc1a', '905ede3f481e588ed2c6f2fca0f89f5e7ac80460532fa2777fb62701a0a5bbbb4a5a51c6ceef2512', 0, '2018-12-14 12:23:24'),
('8af8a84f3f08f00c1196a364982a9f5068a413f339f567ab1b979e8b96e0743ba9a1133814f165d1', 'e9a715f194f1933a4c9dfe278be1af228eec3396a619a91d805e422ed54d835e402ef5eebac391d2', 0, '2018-09-16 09:09:30'),
('8d0b491607c0dd43a8ac10312b48690b8c036180c514bb1df3a8cb638631a96510aee183a6b538ab', '1519d36f0664469b926983a36ac5aa7ab135ae85f0fe25f5251f0000bdf22644ee8f39e7282c4b4b', 0, '2018-12-14 11:37:30'),
('8e5c6dec384a650f7536acac57819655f9c1e7de4fc725ffb2d681482982c9c459dd34916c8621b9', '942a038745bf24cdae1fb4526e7ce0312a924743e11deb7a872b77415ecbe3e2ff55b2e09a078e5a', 1, '2018-12-09 12:07:53'),
('8eed48b4095845bab2b145bb76c69132a8645f96c2cf77119ff5ea851a1e540f7606a32319c781df', '50263bc7d8fcb05375c9b536fe332b869e9dab51f7e6d774c456fb4ff2a508365960d68286b6482f', 0, '2018-12-14 11:37:18'),
('8f424332e9cb37fa2732d1c0bfc015247063d2f3eecddcfc05196262e59ae01f22b993b0aba7dbb3', '92c7ac48654042b83fb2be22c467cd5b09488bbe272e50fc92bb821c6f72c217e4384a68cbb3e9e6', 0, '2019-01-09 13:19:14'),
('8fe50f97ce3b49cd482c3f5745b56d7598954d9e1c32ec3b53fcb3f4ee7d434e94f679ef4ef3d4fe', 'a7dea5e5448c1045747df56231da66a21bd13dc31586f04462e425015011200cce7ee369b1722d20', 1, '2018-12-09 14:49:59'),
('902d33c7456ae9248a7a3e217b8fa6ef683c942244dfd1d48cd3661e47be5735c4c67f092f8170b5', '83903c28a2090bc179dead455a1e39792e017e79184251c3e6081dba34c1f0e4049093342ae6a220', 0, '2019-01-09 12:42:47'),
('91b80519438291062090bedd1026adb83bf647a581be1cc89ad9321bfbe55bc305be710393f7e678', 'dd0cc542b454aacbcf0a9a4b1f7492e8f928406a46741f98aadabcf21015d4bdcbcb70b29440a816', 0, '2018-09-15 23:58:10'),
('91d02a10a81e96a88f5c853e14a7d7cf402648ab3771a70d483a3007936cbc9dade52f72396d6fc9', 'ca35140ddf873c733ac0b85c7caf02be5f32c24861eaab252551ac7a9efc219304a8c88392dc5668', 0, '2018-09-15 23:17:48'),
('941f4973e9667fc6f5c0bd7a1f819e1cec331bf7232ba3688e7b518c49a0f737cb6cbd8ccb8be20d', 'f933b26be6ba0f2f1780475e82bb9397407970b365e7242af82d258a1ad04779dc85a67a8b461afd', 0, '2018-12-14 10:17:43'),
('9656583b05724918f37718219895afad6257db217032101b3117d684f964b5f1525a01232bf696db', 'b1d0661ef08b5f2161ad4f22249b529fd1eae5fc41180fd2a3cda519cb1cae5258167752242f6cc0', 0, '2018-09-03 08:01:46'),
('965cacd636b6c530dfceb9ef6a3e362a27aac6d6ede6875131bda0bc7118b110305fd54439edc58a', 'c5b7a6f983478a448efc3087aaa8956c402a727bbbb9e5d5962d311b855ddf8848a5afdeaf5632e5', 0, '2018-12-02 11:40:56'),
('97711cd72da17f0595b42bcde3d0e5fa11cf074f6df17de32d4ea4b83a7aaeed54a1bedaf2ee49ee', 'e239a0da1b000333e9aba3c9a46d3819d702aa1724aa5dc297c2b5ab47fba8429ddc1a0fe3c58315', 0, '2018-12-14 10:17:31'),
('9d4f63158e9a013f1e0e1ce5884f70cc22af9a4e8d6b69b105a19db807609e5dfa421679f94fcbcd', '00ff00bc87e8a4cba1fb77f1d55b5280270816578be491bd8c837a9fb21fd7449fb350430a5ff25d', 0, '2018-12-13 10:26:14'),
('9d6be378c33ebb349a41ea5ef3b8e7e358fb89394275f5e47350226e38822eb4888942e1acf4b21e', 'b9d93dbce996338217a60762d0e35fee7e27538fdd311db7f2bfb7c885589521572b861901cd35b1', 0, '2018-12-26 10:26:32'),
('a41cd848b08a5a16393318df9fa4abacf70c5873598f99188b9b5d3e3543b29f6c5faa9187cfe07c', '4ec9338a52bf6fc43da02960f0d9c7f2f5de7f8cd0b93bb17652200be29bd03e8ee75758e5496660', 0, '2018-12-06 09:52:36'),
('a936f8515d11e8587ce13b3f325c66119347f80321f146e86b4c85f0e8a9cc2985a8feefaca68234', 'ba9aa63e43a234662d422e08016a6e597c1029f7088c2b69e0cce6119079b3884851c95d7d03a5ae', 1, '2018-12-09 10:50:42'),
('ad12c4a6f37040d728e53e876fc9b3bd9511ce6df235d2b3108967b4bc30176727f760330b004a3a', 'b71ff06d45ef3dd5535200b63aeb575cac36fb203f749e63bf7cb6a5b4c764dfe4c060af480dd68a', 0, '2019-01-09 12:58:21'),
('ad9f83bf0ee188203538ac0106e3080cca3ed6730d348d98f5078306b4a0283bcfe2dd0ff4b1ba48', '4c65c83bffcd6a03fff62fc806848522406c6bd5782b1c5f7c86879b8d5be6724be63cd1ab9da91c', 0, '2018-12-08 07:35:48'),
('ae30f9b3283de78f8b34d89859af763d1e9b6024f1eecad01b6496f7c605f677f758e7e6b674e906', '347a30567c49ba129a1b43964e379905ef45f5a16b7b5f0ab3c1d96e1ad9912878477993e1f71f2e', 0, '2018-12-14 13:00:10'),
('b1c5fa54f01b1e5f9a374ec8be9aebe1b46c6701dee6e48a7caf16d9e17c866499e896e51bf06b6e', '83c73595f1878831de5a531afe0f352f9cefd79f3f3a636e545dd6d4e9f76d04a3ed453d4876443c', 0, '2018-09-15 23:17:55'),
('b267f958a1cf00dcf46dc5d8ed8d43d1a76265aaeaf64ec3d03a2c100b1a8daf6efc1889da3ebcc5', '7b4f9df0921f3c76668f48eac1a736de56b264de041f3cf3ce0cc09a4cad36273cabf9406c0df8e1', 0, '2018-12-07 08:54:55'),
('b2b747ba71348c1b418722bac8b66d211630e653db1c9b8d8a07c7f00be261cff11d8ea5cda053cc', 'fb2aadbc115982360e60acc2ebf9f0ddbff18436a38328abb8f73f072b52d2a2d492cc4774f58115', 0, '2018-12-02 12:14:08'),
('b2de8a5b64ac674e00dee1b75e2b57d041ef97817eb9c7b33e094bbb6eb20c4fc405e0b933f2c896', 'd2f0889241272221fce80bb23e4c68d09b263b06cc081bd09625ffe9632fc09ce964a04406fb2f08', 0, '2018-10-14 06:35:09'),
('b41fb2ec2be2a54e5727fd55d6072ff566c8b322cf3f549cfa2329218a06ce8c8090c7095424196d', '220459a59970ce2b6214ad551a103c74b84694c01a87c17202c13dfc4baa2b0079ae7c25dc77a96a', 0, '2018-12-08 07:35:58'),
('b4ea2b1b8953ba51f5642398e4931031be2bb343a9bcaa117d5424021c06414393b35e213b317b5c', '5d0a52c71169066fd9c7a8caefa6cb95c53ad000c14f35746990d9a9fb2ffbecdd19ea895119bbdb', 0, '2018-09-16 00:19:59'),
('be060447c0504c9192622888544447e0d304dff7a206da519e06ffda4c3734fc976dca39484616b9', '1ea5da524a88006a543d3a5f39aeef2fc8252529a8d4621f3a189693aed33ac1091981acdce1f5db', 0, '2018-12-23 14:21:32'),
('c159162a328068520a2ff4f1923fc6d31b2c145f0db610d40ba7043461f903c3c625de7a1c94c4f5', '79960e60d18d590be684a1f4af45a909d6272cab08e06f51d4ebc96a414fce712b23e12b24218114', 0, '2018-12-13 07:50:58'),
('c1decd6db661dfdff2c82b3479fbc8d423527884e6d528141a6138dd571527b3d4604274f937ce77', '0399189600c822f509ae9d89683f2be94a2c4f85c86470328839a5d64401c4af58e243da230de180', 0, '2018-12-02 12:12:24'),
('c25324624880180f7d9d0ff381b74e062ae0a5ff55505a09d12c6518b7bd6d172f949be8c40ccf09', 'b8a295168961eda0bfc3daf57f8acf08864a7ac0dd9ce9f047a698311f18090ea0c59296da863931', 0, '2019-03-03 13:05:15'),
('c3f2418c03583387ac38ae362d36fece22194421bb588081dfe766af5a6dee3f08bfe4920cebd4d3', 'c8890f61cbbe4675d23f1cac52a91ee8d45a68e17c0036a35e0e70e0167aa9701d9375454e25ff6f', 0, '2018-12-08 08:09:41'),
('c51912b63dab2e52df0c4f932689f7be19defe98dcf6508caabfae69f69dc0fffe3ac5faca134d87', '4048e5d9c2225462aaa4e50373f37eaf0e850fafd8e286312caf3b4fe88eb76fdc2d11491f1ff89a', 0, '2018-09-16 08:23:10'),
('c75a6d5a1554be24d4ed223a2fc969c0b8ad5ce6b548c2afad39f61a522b671905bb35b7719e1a26', 'a38e1e39df1f10144b59d92e97c49201b05295ed1d19bea4b3c0baa5715b06398018790ca9dec59c', 0, '2018-12-09 09:31:10'),
('c76dd984e657c13a6608df8181f05e47152f56bc29cbd4641ce4c5c62454d67c561976e8c5e53a11', '52a8665ac4f6d35f444f05a85a06766cbde189e09966dc18705101aa80e0e5a70c2a658bf62333e5', 0, '2018-10-14 06:36:15'),
('c83b0447aa4fc9442ac06398635b8c0370ee5925c3fd62cd6a63d50d123c242d569316d9f3f610d1', 'd3846a0721e5b9072fda0b355f357a8062dbcf6cda997bb8ab701a91ae9880abd0b950e924431bb2', 0, '2018-12-06 10:14:02'),
('c8e43b5d08cbb43705a0309a607773cca4ed8f65226b810e7beb41fe3981af61040a73c0ba091835', '9e13849f25b0f1e0f327f6d3577563c8178417f1694875912a28e9a9cfe6f0d5b4a6156f120755ab', 1, '2018-12-07 07:31:10'),
('cc578cdc7b5e981e36e4cf61913308a416e80937a5a590d50e37a6a0b64c14cdbc3c30671a8f4479', 'eb6e6ea217a1f473d6297b0e661ffdd4913aef018cc8faef6cec059b67cf3af1fa005bffb24ba0ce', 0, '2018-09-03 09:24:35'),
('cd53208b10bd417f608553856a8999e83971658dccc7649ee9bdaf518a9471b4d1d9799d7e8ba131', 'f759916ee64a79aebd01e0838795bb66a6eb398912f642e065440c9b83953a5087dad9d723e6ec34', 0, '2019-02-08 13:55:22'),
('d06b4ced0767ca5b670435264715a062482a05d467cd4a91658b3f9961e16d7c688e69fff612e3d1', 'ffa537cb915054d930674b34aa2a503560fb5a5b504f610e9eb2311b5bb8e0168c5d8a54a4cf6a95', 0, '2018-12-06 11:07:46'),
('d459add1da09a3c6863dfe059d5ed4a073f99d5ba633cacd061aa7fa3c2256b25160dbef19d14e85', '091d9d0a47c8aa40de800a4f426423cb060dd8d36ce29acdb0ef3957f6eca2da56579cc7209c911b', 0, '2018-12-05 10:59:05'),
('d5cd2478039d41c93187e143318c91bf7bf7f7e8e4d013166d745a668d727181edefd548d99041c2', 'f6808472d02b188e62230ed94b252458d70a545e2c5e184cfe23846dafe58f4e95ce52fc8fa85a2f', 0, '2018-12-05 10:37:52'),
('d7cb06c0691aac1c72de1241938ca7d23d2ad8959b508f10ed7551f43ade690c837465d3cd76ff4b', '5a4cacb162d889b70fa2bdc04f0f69ef35b61b03db6112d53f1a9a002a20a68fad82e4fb1a6ad6e2', 0, '2018-12-12 06:41:09'),
('d886aea0ff3254d281e227f1513bf62376f38fb1e0544f74ccc3ad89bc651184ca57d4abb16cdc27', 'c018409ea0e7f7fc7a4f0de1c2d71eac309b0a87b84b77f736dc31b76cf517c055663315268c95b5', 0, '2018-12-09 12:57:18'),
('d8c4ea9b5fcef3228de0cddff1a1e687a09612d4cccd6a2b94ff1a5468cd215aeb569dc5dbd53099', '666da28812b665d2d3ae2783cd12905b1a5800d201629c707094cc2c91f999230f782cee96fe45e8', 0, '2018-12-02 13:04:38'),
('d8f1df02164d3a963d21f5c73590c191c7c4baf498a3456d6c7635e07721490135605a2228666fab', '68da76ac67a3b9900de033ad41b34f39aac66452ae01dc6e03fe39028500d2f773b27b8d5c0c4b41', 0, '2018-09-03 10:01:34'),
('d960f73a8e6b791b4e64554519529ae2ce436d4c083ece8b07907828b97f87f93a39287e902804b6', 'aa3c706716ab5c5f69c782b35921109dbd88ecf713bcc274cac5a70c917c577fb16b972fa603042e', 1, '2018-12-09 12:37:41'),
('d9b9f75ae72831d853b387b31571f2d36403f325c2938edc9046e5a7d42b6058d59fd5a5d370203b', 'dc27a2d1f3271a8f290007794789ae9eea9c97977770436f8030be363d106f3ef6494719b84c555e', 0, '2018-12-23 14:21:59'),
('da06c8ec3cfd35f37abeefac513de760cd8f43985ca766b6f730248b2ad76b8e5363fab438e1247d', 'b6f4bc8adcce3421d508cdecd7736db44f2ef6b952e8f803210e54b8c620bf4cd68e2b1339dd8c56', 0, '2018-12-03 11:53:00'),
('db13638cc97a8e4331dba75f9ed5007463efbf3c2148d2ed6a1455ba02ef911d0280c92d29b4cc3e', '2e3bd4e8b7fdab2299ea93663b6502cbae32ec04db97c7d6ce0242d480d468c5715047ac0b1395ae', 0, '2018-12-10 12:54:25'),
('db77d382490836f29737e3ed429d51afbd29a0d212f045ab8da9573e712b0a82b5a8e0c7fc184a92', 'f0dbe9d16bc92ca58a1c4d6c85eab1fe8f6ad4bd6ae1421619093c9d673d21c04b43daf827bc8871', 0, '2018-10-14 06:35:21'),
('dcf1adb573299ec6e83584529c41b06c26699daaa650aa7d47e13e0e378d52ed813082064507291a', '5459218630dde5b9120e5f51d6d948c645f43819e9308d4014fe236cf4ac090de30f88cec3859369', 0, '2018-12-14 10:28:26'),
('dd7723cba41c677efa4c483bcd82c2f64465762d57f73243006249c460f062e0f50c6091b2df23db', '94de1293cf7e1341f512d10280f0d0d86df2549ade4edee2d144cae07e9ba82a729e879467c8f0e1', 0, '2018-12-10 13:28:32'),
('de27e9fc55698ae970ee1967480143438b078c589ac647db76e115a96bd74b503f90ca91aec7a837', 'b0b7433f617ecd13062682503b36ab665b18842b3564b323f077fed299edc9e995e2891dfe4ade1f', 0, '2018-09-03 08:42:13'),
('e0c84dd022f3b56e07656cc4c8aee04c144512cf07dcc2cb7c58eab1d0fff5a081ad9e966a80e266', 'b637b83e0cefa36ff11c1368dc6a4202924f28c0ac5d357efb37fce25ffcf0ab279f90da53b3ae78', 0, '2018-12-13 10:27:47'),
('e15971a85789de5004e8ddc6b0766bbadac955cc72eba0afe1276959f98ae1efe7ca2e2919075c58', '6517a7673ba24b4d47b22d99feedda7a208573237c303e4830cfa1e88c75641b4e1a5a3383c1fc4c', 0, '2018-09-03 08:13:20'),
('e2187e0946d60b8605e06c4b1e3f653f6154e562b1e94b19f7da97e88228ffdec8726c05d1193d96', '3a139d18ee4620de07b1fca6b30be5b5e77dbb194401eedf8c918503afcec516a5ca190c030c7fd7', 0, '2018-12-08 08:09:49'),
('e21dacfcb9a6f702c152a2d4246ac69c0f88beb6b2147e077547521a2d87c956b79b2a9f80b38c5d', '109dee5f3b00c5462725eb00418e8a7dfd78fd32cc63ad6df6762d7541a1c2c4863139bfa74e5496', 0, '2018-09-15 23:17:48'),
('e3d2c65305ed1b3647dde3afc02369041d6661d17d64182de04862e383d35c7dc714b007b167d24c', 'dddcb6355f30ae49cf80a16f56c9e0e5d967ce5635bde112e227fb75d630019739be8fa3c81a9305', 0, '2018-12-09 11:37:41'),
('e636ecd48ada8262a36f37d4ba7dcc21d534462e748f0ae33f53ae4b6eb88a9e0dab4dd3c70cb49c', '00fdbc218ec0f6fd3b0195aaa51bfa125f8c10871085dc6dbfb54138ae7418247bf03a03ea4f5621', 1, '2018-12-09 09:43:24'),
('ee0c0a35289c831aac21762d5e4d895fd7f0e6ee4b3a1ce033c061bd9e2ba51801b98317a08d2404', '76d5d6e3e382abf2a6e7916855ba1bccc2c9dbef4dce5342c3743a8b7eb819e8a42a0043a6a241ce', 0, '2018-12-08 12:42:31'),
('eeb14c141f3a8c92d3efc8321ca401062ba74cf8764a4df146605ac10929defeae76136cdfe056a7', 'ebfc99dde85063dd4a886378fd70dbd526889985145a0e70818368ed30d6b0e1d34fcab21432563f', 0, '2018-12-09 08:44:38'),
('f36c38fbfb96cc42eda2111a03f87b64da816cd93a13ba038227ae42d56bb882e042fec534f12fb9', '3613ccef5158d4a7c0773e6773229c0a0a61d4632c9890a34a7775ddcea93927b6aecb041205afc6', 0, '2018-09-03 09:06:34'),
('f41740c24c8a84cd27f1bc56dbfac9ac5ea9c2d8bcb575b30dc40ddb00c65ccbfe8690ce2a596ad5', 'fb02e8ebfd1c335ca9e80e9b5eaa799309723809009fc3a2816e6e5aec86fdca6d5704d7ce27cfd6', 0, '2018-12-03 09:31:44'),
('f50b69b08bc6fe382bcc309e94ea3d7ae521d3c5bf4a672c451dbcfd303ba9b4e99b0dac81969315', 'a9112edc10e78face8b3d48e9e6bac90a5968b0c22ceed301b460ef364ecfbdb2d86ff17346a72ca', 1, '2018-12-09 11:35:27'),
('fce684b0354f65b86648e26669a5d794724fe9ab8be8e1aecde2b5b464b3453d15f39877dd629c5f', '18c277c89a0ce2f63edd6c5e79a081b4485e3504324560eaae55d0f27fb4f6a5f258b6fcc80758c7', 0, '2018-12-14 08:56:38'),
('ff827026972d6f146f99ce0c9f50b6eb7578aeb70149bba00660910cb9fc8178ce4dac9ecac0833d', '14ddfe7e9b317fbdc6a16d1d284401a144e7a5e011ad2cf554c9f330a1f95ea4157b88239e69b63b', 0, '2018-12-23 14:21:31');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('alain@gmail.com', '$2y$10$nX9ost5FcsiM.x1X18Cd/eqLP363NQQz0jykVunga7yKCfunH7pe2', '2018-08-30 15:49:11'),
('juvenal@attend.dev', '$2y$10$5VB4TYpARrtZzyoPK8G9Le/fGg1UZcYmmJGtrM0u5IBmbj0ilFmyu', '2018-10-27 15:46:24');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-11-29 10:24:53', '2018-11-29 10:24:53'),
(2, 'browse_bread', NULL, '2018-11-29 10:24:53', '2018-11-29 10:24:53'),
(3, 'browse_database', NULL, '2018-11-29 10:24:53', '2018-11-29 10:24:53'),
(4, 'browse_media', NULL, '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(5, 'browse_compass', NULL, '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(6, 'browse_menus', 'menus', '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(7, 'read_menus', 'menus', '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(8, 'edit_menus', 'menus', '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(9, 'add_menus', 'menus', '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(10, 'delete_menus', 'menus', '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(11, 'browse_roles', 'roles', '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(12, 'read_roles', 'roles', '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(13, 'edit_roles', 'roles', '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(14, 'add_roles', 'roles', '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(15, 'delete_roles', 'roles', '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(16, 'browse_users', 'users', '2018-11-29 10:24:54', '2018-11-29 10:24:54'),
(17, 'read_users', 'users', '2018-11-29 10:24:55', '2018-11-29 10:24:55'),
(18, 'edit_users', 'users', '2018-11-29 10:24:55', '2018-11-29 10:24:55'),
(19, 'add_users', 'users', '2018-11-29 10:24:55', '2018-11-29 10:24:55'),
(20, 'delete_users', 'users', '2018-11-29 10:24:55', '2018-11-29 10:24:55'),
(21, 'browse_settings', 'settings', '2018-11-29 10:24:55', '2018-11-29 10:24:55'),
(22, 'read_settings', 'settings', '2018-11-29 10:24:55', '2018-11-29 10:24:55'),
(23, 'edit_settings', 'settings', '2018-11-29 10:24:55', '2018-11-29 10:24:55'),
(24, 'add_settings', 'settings', '2018-11-29 10:24:55', '2018-11-29 10:24:55'),
(25, 'delete_settings', 'settings', '2018-11-29 10:24:55', '2018-11-29 10:24:55'),
(26, 'browse_hooks', NULL, '2018-11-29 10:24:58', '2018-11-29 10:24:58'),
(32, 'browse_classes', 'classes', '2018-12-07 05:32:43', '2018-12-07 05:32:43'),
(33, 'read_classes', 'classes', '2018-12-07 05:32:43', '2018-12-07 05:32:43'),
(34, 'edit_classes', 'classes', '2018-12-07 05:32:43', '2018-12-07 05:32:43'),
(35, 'add_classes', 'classes', '2018-12-07 05:32:43', '2018-12-07 05:32:43'),
(36, 'delete_classes', 'classes', '2018-12-07 05:32:43', '2018-12-07 05:32:43'),
(37, 'browse_departments', 'departments', '2018-12-07 05:34:15', '2018-12-07 05:34:15'),
(38, 'read_departments', 'departments', '2018-12-07 05:34:15', '2018-12-07 05:34:15'),
(39, 'edit_departments', 'departments', '2018-12-07 05:34:15', '2018-12-07 05:34:15'),
(40, 'add_departments', 'departments', '2018-12-07 05:34:15', '2018-12-07 05:34:15'),
(41, 'delete_departments', 'departments', '2018-12-07 05:34:15', '2018-12-07 05:34:15'),
(52, 'browse_courses', 'courses', '2018-12-07 06:48:04', '2018-12-07 06:48:04'),
(53, 'read_courses', 'courses', '2018-12-07 06:48:04', '2018-12-07 06:48:04'),
(54, 'edit_courses', 'courses', '2018-12-07 06:48:04', '2018-12-07 06:48:04'),
(55, 'add_courses', 'courses', '2018-12-07 06:48:04', '2018-12-07 06:48:04'),
(56, 'delete_courses', 'courses', '2018-12-07 06:48:04', '2018-12-07 06:48:04'),
(57, 'browse_students', 'students', '2018-12-07 07:04:25', '2018-12-07 07:04:25'),
(58, 'read_students', 'students', '2018-12-07 07:04:25', '2018-12-07 07:04:25'),
(59, 'edit_students', 'students', '2018-12-07 07:04:25', '2018-12-07 07:04:25'),
(60, 'add_students', 'students', '2018-12-07 07:04:25', '2018-12-07 07:04:25'),
(61, 'delete_students', 'students', '2018-12-07 07:04:25', '2018-12-07 07:04:25'),
(62, 'browse_t_classes', 't_classes', '2018-12-07 07:28:32', '2018-12-07 07:28:32'),
(63, 'read_t_classes', 't_classes', '2018-12-07 07:28:32', '2018-12-07 07:28:32'),
(64, 'edit_t_classes', 't_classes', '2018-12-07 07:28:32', '2018-12-07 07:28:32'),
(65, 'add_t_classes', 't_classes', '2018-12-07 07:28:32', '2018-12-07 07:28:32'),
(66, 'delete_t_classes', 't_classes', '2018-12-07 07:28:32', '2018-12-07 07:28:32'),
(67, 'browse_attendances', 'attendances', '2018-12-07 12:48:27', '2018-12-07 12:48:27'),
(68, 'read_attendances', 'attendances', '2018-12-07 12:48:27', '2018-12-07 12:48:27'),
(69, 'edit_attendances', 'attendances', '2018-12-07 12:48:27', '2018-12-07 12:48:27'),
(70, 'add_attendances', 'attendances', '2018-12-07 12:48:27', '2018-12-07 12:48:27'),
(71, 'delete_attendances', 'attendances', '2018-12-07 12:48:27', '2018-12-07 12:48:27');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(52, 1),
(52, 2),
(52, 3),
(53, 1),
(53, 2),
(53, 3),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(57, 3),
(58, 1),
(58, 2),
(58, 3),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(63, 3),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(67, 3),
(68, 1),
(68, 2),
(68, 3),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(70, 3),
(71, 1),
(71, 2);

-- --------------------------------------------------------

--
-- Structure de la table `representators`
--

CREATE TABLE `representators` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-11-29 10:24:53', '2018-11-29 10:24:53'),
(2, 'hod', 'Head Of Department', '2018-12-10 06:43:21', '2018-12-10 06:43:21'),
(3, 'cp', 'Class Representative', '2018-12-10 06:38:27', '2018-12-10 06:41:21'),
(4, 'user', 'Normal User', '2018-11-29 10:24:53', '2018-11-29 10:24:53');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `matricule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_class_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `matricule`, `t_class_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '20180001', 1, 13, '2018-10-30 10:14:29', '2018-10-30 10:14:29'),
(2, '20180002', 1, 14, '2018-10-31 04:29:33', '2018-10-31 04:29:33'),
(3, '20180003', 1, 15, '2018-10-31 04:30:25', '2018-11-05 08:36:26'),
(4, '20180004', 1, 16, '2018-10-31 04:30:54', '2018-11-01 09:07:08'),
(5, '20180005', 3, 18, '2018-11-08 05:10:03', '2018-11-08 05:10:03'),
(6, '20180006', 3, 19, '2018-11-08 05:12:44', '2018-11-08 05:12:44'),
(7, '20180007', 3, 20, '2018-11-08 05:13:55', '2018-11-08 05:13:55'),
(8, '20180008', 3, 21, '2018-11-08 05:14:45', '2018-11-08 05:14:45'),
(9, '20180009', 2, 22, '2018-11-08 05:15:57', '2018-11-08 05:15:57'),
(10, '20180010', 2, 23, '2018-11-08 05:17:12', '2018-11-08 05:17:12'),
(11, '20180011', 2, 24, '2018-11-08 05:17:46', '2018-11-08 05:17:46'),
(12, '20180012', 2, 25, '2018-11-08 05:18:08', '2018-11-08 05:18:08'),
(13, '20180013', 4, 26, '2018-11-08 05:18:38', '2018-11-08 05:18:38'),
(14, '20180014', 4, 27, '2018-11-08 05:19:09', '2018-11-08 05:19:09'),
(15, '20180015', 4, 28, '2018-11-08 05:19:28', '2018-11-08 05:19:28'),
(16, '20180016', 4, 29, '2018-11-08 05:19:49', '2018-11-08 05:19:49'),
(18, '20180017', 3, 33, '2018-12-10 07:53:56', '2018-12-10 07:53:56'),
(19, '20180018', 1, 34, '2018-12-10 08:06:00', '2018-12-10 08:06:00');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_classes`
--

CREATE TABLE `t_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `t_classes`
--

INSERT INTO `t_classes` (`id`, `name`, `department_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Year 1', 5, 13, '2018-10-30 08:02:58', '2018-10-31 05:05:14'),
(2, 'Year 2', 5, NULL, '2018-11-08 05:00:42', '2018-11-08 05:00:42'),
(3, 'Year 1 Finance', 6, 18, '2018-11-08 05:07:04', '2018-11-08 09:42:12'),
(4, 'Year 2 Finance', 6, NULL, '2018-11-08 05:07:46', '2018-11-08 05:07:46');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ability` int(1) NOT NULL DEFAULT '4',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `ability`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'alino 66', 'alain@gmail.com', 'users\\December2018\\Cpm0YJ2V9syZkUQDNUpw.jpg', '$2y$10$TQk9IrXM.kwwzQhXExwyE.fU4rupQho2o8YZT6zO2WJvm7uvQFkDi', 1, '2SVp8SzeSpF6K2QneePotnkR8ZoAATosys2lbaOPg7wFDfbF1ddzYe50ZMUy', '{\"locale\":\"en\"}', '2018-07-27 12:08:03', '2018-12-10 08:48:05'),
(2, 3, 'Alain Burindi', 'alain@test.fr', 'users/default.png', '$2y$10$mgn3eaBMz5AHym79sBG/5.oOvRlHFQTLNEuCQfhb9yjRTAtkcypay', 3, NULL, NULL, '2018-08-01 09:39:18', '2018-08-01 09:39:18'),
(11, 2, 'Marcelin Second', 'marcelin@attend.dev', 'users/default.png', '$2y$10$fAuxo2p2Ww6kxSUneIzJgets4vgZEgLOcVfO1bBaO0fod7cwUYuOy', 2, 'sJVfLIxIPHfqw3Bs4NgmVZI6g1BI8qe0hEaK2QFaUpOQ7nSUzewuJu8TwIQE', NULL, '2018-10-30 01:42:24', '2018-10-30 01:42:24'),
(13, 3, 'Bachibwera Hamuli Jeanpaul', '20180001@attend.dev', 'users/default.png', '$2y$10$8XsQUsMnMo/TzKv.JLW4uucfxntKbCr3BM2SUtYSoPqpWJms8vEeq', 3, '1yynNTfWVkHqMeXsPk7vOwNEjhnKlCjvgGoQxssFvrqmhgccoHY76D3DqaXv', NULL, '2018-10-30 10:14:29', '2018-10-31 05:01:48'),
(14, 4, 'jeanisse burinidi kavena', '20180002@attend.dev', 'users/default.png', '$2y$10$RxyKwi0kGefHlJLY0vbqRulyPDkMYwMnrYF4RLkxaNmTHgPR/lf8e', 4, NULL, NULL, '2018-10-31 04:29:32', '2018-10-31 05:05:14'),
(15, 4, 'david burindi kavena', '20180003@attend.dev', 'users/default.png', '$2y$10$I89t6TcPMyyIoHBNzDNOSOO.Yh8qSX4l2a/fvszS3eK0.PJFiB.Zi', 4, NULL, NULL, '2018-10-31 04:30:25', '2018-10-31 09:42:14'),
(16, 4, 'hkhvdf djgvv khgv', '20180004@attend.dev', 'users/default.png', '$2y$10$8HTHL45Y4LUzxFtmIo6S2uYc3R.XNlIf8d0z9UChtD/UwLCGUWHvu', 4, NULL, NULL, '2018-10-31 04:30:54', '2018-10-31 04:30:54'),
(17, 4, 'Example Will Continue', 'ebshod@attend.dev', 'users/default.png', '$2y$10$bWX2EHaxNC39itv7vqj7FuHRwpKmzkOqGbnmQll2IrV7fMzXdSF6O', 4, NULL, NULL, '2018-11-08 04:58:00', '2018-11-08 04:58:00'),
(18, 4, 'jhgfh jhgdf jhfg', '20180005@attend.dev', 'users/default.png', '$2y$10$3Bz63gt5ykQU4tSia8t6Vu95GuCS1nyssrIWBE5WS9zzktCc3d60q', 3, NULL, '{\"locale\":\"en\"}', '2018-11-08 05:10:03', '2018-12-10 07:04:52'),
(19, 4, 'kjfr kurfhroh fihrphifdf', '20180006@attend.dev', 'users/default.png', '$2y$10$hUQEKDXjTtmq6LZBL4Q9LOuszIz.pcUnxAHFdmrXDb8TddC8fDkFu', 4, NULL, NULL, '2018-11-08 05:12:44', '2018-11-08 05:12:44'),
(20, 4, 'khfv dhfberl kfhrl', '20180007@attend.dev', 'users/default.png', '$2y$10$CYCR4bhFqJT/STP..aTa6ubOecLCxZEexPLMYZ.aSkroOUg0kK/jm', 4, NULL, NULL, '2018-11-08 05:13:55', '2018-11-08 05:13:55'),
(21, 4, 'kgvfi jhvbfd vfbhvk', '20180008@attend.dev', 'users/default.png', '$2y$10$YQbxlsAbkjcQ.TEILXscleYtPLd72IUyo6.ltWFHYdLkyKeNtzq1q', 4, NULL, NULL, '2018-11-08 05:14:45', '2018-11-08 05:14:45'),
(22, 4, 'gtfduk rydtuofy uygipik', '20180009@attend.dev', 'users/default.png', '$2y$10$tmL18qBHP5LExEV1YOdS1eLtl2r9c2ECAm41P.h5hnqMuIxASnGk6', 4, NULL, NULL, '2018-11-08 05:15:57', '2018-11-08 05:15:57'),
(23, 4, 'yufgou jghvbfer jhfyve', '20180010@attend.dev', 'users/default.png', '$2y$10$HH5siSZryZSN9uHt3VXl9u256kzjKpnrFGqbpDtLuixBIEX6ZGtYa', 4, NULL, NULL, '2018-11-08 05:17:12', '2018-11-08 05:17:12'),
(24, 4, 'hgfir hdgf dhgfgw', '20180011@attend.dev', 'users/default.png', '$2y$10$lEtGliUjJsEDtB8OWS40nu20gLMXzjvOfeix5b///UAHba4amCesG', 4, NULL, NULL, '2018-11-08 05:17:45', '2018-11-08 05:17:45'),
(25, 4, 'ehfwf dbjvef jhgfw', '20180012@attend.dev', 'users/default.png', '$2y$10$EV6Lf2Ww8FiXEWGbxCyUT.EiD61XousMtcYLwyb9i6NGmcX9OHWvq', 4, NULL, NULL, '2018-11-08 05:18:08', '2018-11-08 05:18:08'),
(26, 4, 'cnvhdfjlw vjhwg jhvf', '20180013@attend.dev', 'users/default.png', '$2y$10$uokQ0yIxFa6qx0n.1/m3U.KS8CdfEN9IIIeXSf3tXUbIkU4uP2aoK', 4, NULL, NULL, '2018-11-08 05:18:38', '2018-11-08 05:18:38'),
(27, 4, 'nvhefbk jhvbe jfvh', '20180014@attend.dev', 'users/default.png', '$2y$10$mGll6DeGQ3HiokV9tqWQkON50He2uUeedcanupbvk9f4lLicd97Te', 4, NULL, NULL, '2018-11-08 05:19:09', '2018-11-08 05:19:09'),
(28, 4, 'jhvgdf jhcbv vhjbfj', '20180015@attend.dev', 'users/default.png', '$2y$10$5dtlivRPzKWrEHhRwo1Y4.U4OoTnOMoevMtLvCqfl//ekAcI6dtQO', 4, NULL, NULL, '2018-11-08 05:19:28', '2018-11-08 05:19:28'),
(29, 4, 'fjvhef viuhyfold dvuoehif', '20180016@attend.dev', 'users/default.png', '$2y$10$ti9XW/ZjArsJ9w0wQvr4ZOep4tIPL5EszgUhqJvK8TwWkU9RpuUhq', 4, 'nskfg7PVZYtMV1yRj33c4szSaBgsy85hWmNz5IME8OXkvd69EYNHZWCz1mX4', NULL, '2018-11-08 05:19:49', '2018-11-08 05:19:49'),
(33, 4, 'texts hgdvc jygdc', '20180017@attend.dev', 'users/default.png', '$2y$10$06zARQNgPb5FLHcDtOIGEOZ0277319CvpKYit/Q/myFSOVdgeN5zi', 4, NULL, NULL, '2018-12-10 07:53:56', '2018-12-10 07:53:56'),
(34, 4, 'hhhh gghghh hhjhj', '20180018@attend.dev', '/images/class_1/20180018.jpg', '$2y$10$z3xxEXfTpqVf46x.CajMfuR99yzHK3YTyWsZNBJMoVjx0g1SbVUSG', 4, NULL, NULL, '2018-12-10 08:05:59', '2018-12-10 08:05:59');

-- --------------------------------------------------------

--
-- Structure de la table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_infos`
--

INSERT INTO `user_infos` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Title', 'My first content', 2, '2018-08-01 11:01:50', '2018-08-01 11:01:50'),
(2, 'fff', 'body bod', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_student_id_foreign` (`student_id`),
  ADD KEY `attendances_course_id_foreign` (`course_id`);

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_code_unique` (`code`),
  ADD KEY `courses_class_id_foreign` (`class_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_user_id_foreign` (`user_id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `representators`
--
ALTER TABLE `representators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `representators_student_id_unique` (`student_id`),
  ADD UNIQUE KEY `representators_email_unique` (`email`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `t_classes`
--
ALTER TABLE `t_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classes_department_id_foreign` (`department_id`),
  ADD KEY `classes_user_id_foreign` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_infos_user_id_foreign` (`user_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `representators`
--
ALTER TABLE `representators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_classes`
--
ALTER TABLE `t_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `t_classes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `t_classes`
--
ALTER TABLE `t_classes`
  ADD CONSTRAINT `classes_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `classes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_infos`
--
ALTER TABLE `user_infos`
  ADD CONSTRAINT `user_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Base de données :  `fat`
--
CREATE DATABASE IF NOT EXISTS `fat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fat`;
--
-- Base de données :  `flight`
--
CREATE DATABASE IF NOT EXISTS `flight` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `flight`;

-- --------------------------------------------------------

--
-- Structure de la table `flights`
--

CREATE TABLE `flights` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `departure` time NOT NULL,
  `class` varchar(30) NOT NULL,
  `charges` int(11) NOT NULL,
  `seats` varchar(15) NOT NULL,
  `destination` varchar(40) NOT NULL,
  `arrival` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `flights`
--

INSERT INTO `flights` (`id`, `name`, `source`, `departure`, `class`, `charges`, `seats`, `destination`, `arrival`) VALUES
(201720120, 'Rwanda Airways', 'Kinshasa', '20:30:25', 'Business', 60, 'B', 'Kigali', '23:31:00'),
(201720205, 'Rwanda Airways', 'Kigali', '20:30:25', 'Business', 60, 'B', 'Kigali', '23:31:00'),
(201720299, 'CAA', 'Kinshasa', '08:10:20', 'Ecomics', 30, 'F', 'Goma', '11:30:54');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES
(1, 'alain', '1234'),
(2, 'admin', '1234'),
(3, 'irene', '1234');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201720300;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de données :  `jp`
--
CREATE DATABASE IF NOT EXISTS `jp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jp`;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sector_id` int(11) NOT NULL,
  `compteur_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de données :  `kivupaint`
--
CREATE DATABASE IF NOT EXISTS `kivupaint` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kivupaint`;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unity_id` int(11) DEFAULT NULL,
  `price` decimal(4,2) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `creted_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `unity_id`, `price`, `detail`, `creted_at`) VALUES
(1, 'Peinture Lavable', 1, '5.00', 'if you’re painting new, dry plaster or porous surfaces, seal the surface by adding a coat of paint diluted with up to 40% of clean cold water. If the surface to be painted has any ‘sheen’ thoroughly abrade ', '2019-04-25 11:42:08'),
(2, 'tuff', 2, '2.00', 'ghvipubef ihbvef ifbv fidfyvb dfvidfbvefiv fj vdifvudivefve', '2019-04-29 14:09:23');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `unities`
--

CREATE TABLE `unities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `creted_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `unities`
--

INSERT INTO `unities` (`id`, `name`, `creted_at`) VALUES
(1, 'Litre', '2019-04-17 15:20:53'),
(2, 'Kilogramme', '2019-04-29 14:06:07');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `password`, `role_id`) VALUES
(1, 'alain', 'alainburindi62@gmail.com', 'users/default.png', '$2b$10$PxJWcbeMd5C6055p2.5y/OCuS6IStgFtc1wkRpE9T1arPvO8sY47O', NULL),
(2, 'future', 'future@kivu.paint', 'users/default.png', '$2b$10$WRj22.yoi/tseG53nU784eW.W6pP0q8q71oCwkQ5ziPOgfI78ncWC', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unity_id` (`unity_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `unities`
--
ALTER TABLE `unities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `unities`
--
ALTER TABLE `unities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`unity_id`) REFERENCES `unities` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
--
-- Base de données :  `linda`
--
CREATE DATABASE IF NOT EXISTS `linda` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `linda`;

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `fee` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `contact_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `roll_number`, `name`, `email`, `course`, `fee`, `paid`, `dob`, `address`, `city`, `state`, `country`, `contact_number`) VALUES
(1, 5432, 'linda', 'jhdvbs', 'jkvbhf', 233, 23, '2019-15-04', 'jgvcip vi fvifuvgi', 'jhvgicuyvg', 'hgdvcu', 'jhdgfi', 'jhdgfo'),
(2, 534786, 'ghidlu', 'jdsbh', 'jhbfdl', 322, 123, '2019-53-01', 'jhbfol', 'jhbf', 'jbvf ', 'dkjfgn', 'dkhfgjl'),
(3, 53474, 'ghidlu', 'jdsbh', 'jhbfdl', 321, 123, '2019-44-08', 'jhbfol', 'jhbf', 'jbvf ', 'dkjfgn', 'dkhfgjl'),
(4, 213141, 'hgssxj', 'ffgg@gg,com', 'courts', 334, 12, '2019-54-04', 'vfcsjgvdlussc dhcvkdd', 'hgsfdk', 'hsgdfk', 'sghdv', '5423');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'linda@gmail.com', '1234');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de données :  `lsapp`
--
CREATE DATABASE IF NOT EXISTS `lsapp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lsapp`;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
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
-- Index pour les tables déchargées
--

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données :  `nodelivre`
--
CREATE DATABASE IF NOT EXISTS `nodelivre` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nodelivre`;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `content`, `created_at`) VALUES
(1, 'first', '2019-02-16 13:20:08'),
(2, 'dhgvd', '2019-02-16 13:20:38'),
(3, 'jgdcfhwd', '2019-02-16 13:21:31'),
(4, 'hdgfh', '2019-02-16 13:24:02'),
(5, 'gcfh', '2019-02-16 13:25:07'),
(6, 'encore', '2019-02-16 15:25:34'),
(7, 'encore', '0000-00-00 00:00:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Base de données :  `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Déchargement des données de la table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"nodelivre\",\"table\":\"messages\"},{\"db\":\"attend\",\"table\":\"users\"},{\"db\":\"yetu\",\"table\":\"events\"},{\"db\":\"attend\",\"table\":\"students\"},{\"db\":\"attend\",\"table\":\"oauth_access_tokens\"},{\"db\":\"attend\",\"table\":\"oauth_refresh_tokens\"},{\"db\":\"attend\",\"table\":\"departments\"},{\"db\":\"attend\",\"table\":\"user_infos\"},{\"db\":\"attend\",\"table\":\"oauth_auth_codes\"},{\"db\":\"attend\",\"table\":\"oauth_personal_access_clients\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-02-11 12:16:18', '{\"collation_connection\":\"utf8mb4_unicode_ci\",\"lang\":\"fr\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données :  `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Structure de la table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `day` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `class_year` varchar(5) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `class_cp_id` int(11) DEFAULT NULL,
  `class_cpa_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `class`
--

INSERT INTO `class` (`id`, `class_year`, `department_id`, `class_cp_id`, `class_cpa_id`) VALUES
(1, 'year ', 1, NULL, NULL),
(2, 'year ', 1, 201620031, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `course`
--

INSERT INTO `course` (`id`, `code`, `name`, `status`, `class_id`) VALUES
(1, 'csc29', 'c programming', 1, 2),
(2, 'csc34', 'algorithme', 0, 2),
(3, 'csc424', 'networking', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(30) NOT NULL,
  `faculty` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `faculty`) VALUES
(1, 'comp sc', '');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `student_pic` varchar(30) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_pic`, `class_id`) VALUES
(20162066, 'HHHH Lyadunga Damien', '', 2),
(201620031, 'Burindi Muhindo Alain', '', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id_fk` (`student_id`),
  ADD KEY `course_id_fk` (`course_id`);

--
-- Index pour la table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_dep_id` (`department_id`),
  ADD KEY `class_cp_id` (`class_cp_id`),
  ADD KEY `class_cpa_id` (`class_cpa_id`);

--
-- Index pour la table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_code_index` (`code`),
  ADD KEY `course_class_id` (`class_id`);

--
-- Index pour la table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `class_id` (`class_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `course_id_fk` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Contraintes pour la table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_cp_id` FOREIGN KEY (`class_cp_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `class_cpa_id` FOREIGN KEY (`class_cpa_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `class_dep_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Contraintes pour la table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_class_id` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`);

--
-- Contraintes pour la table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `class_id` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`);
--
-- Base de données :  `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de données :  `ulk_attend`
--
CREATE DATABASE IF NOT EXISTS `ulk_attend` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ulk_attend`;

-- --------------------------------------------------------

--
-- Structure de la table `class_years`
--

CREATE TABLE `class_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `class_years`
--

INSERT INTO `class_years` (`id`, `class_year`, `created_at`, `updated_at`, `department_id`) VALUES
(1, 'year one', '2018-07-22 08:32:39', '2018-07-22 08:32:39', 1),
(2, 'year two', '2018-07-22 08:38:39', '2018-07-22 08:38:39', 1),
(3, 'year three', '2018-07-22 08:32:53', '2018-07-22 08:33:20', 1),
(4, 'year one', '2018-07-27 00:40:56', '2018-07-27 00:40:56', 2),
(5, 'year two', '2018-07-27 00:41:33', '2018-07-27 00:41:33', 2),
(6, 'year three', '2018-07-27 00:41:59', '2018-07-27 00:41:59', 2);

-- --------------------------------------------------------

--
-- Structure de la table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `created_at`, `updated_at`) VALUES
(1, 'Computer Science', NULL, NULL),
(2, 'Finance', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_18_204342_create_posts_table', 1),
(4, '2018_07_22_093822_create_students_table', 1),
(5, '2018_07_22_102209_create_class_years_table', 1),
(6, '2018_07_23_224125_create_departments_table', 2),
(7, '2018_07_23_230838_add_dep_id_to_users', 3),
(8, '2018_07_23_231056_add_class_id_to_students', 3),
(9, '2018_07_23_231140_add_dep_id_to_class', 3),
(10, '2018_07_27_032930_add_s_pic', 4),
(11, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(12, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(14, '2016_06_01_000004_create_oauth_clients_table', 5),
(15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Ulk Attendance Personal Access Client', 'akW5MHFfhiSoRdPdLEfVEEQIi1aLy24uw41jCvH0', 'http://localhost', 1, 0, 0, '2018-07-27 09:30:05', '2018-07-27 09:30:05'),
(2, NULL, 'Ulk Attendance Password Grant Client', 'dKMBIt5ZdxCiQFaaTr9zDeiIqungiMRxjHxSlXKY', 'http://localhost', 0, 1, 0, '2018-07-27 09:30:06', '2018-07-27 09:30:06');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-07-27 09:30:06', '2018-07-27 09:30:06');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('alain@gmail.com', '$2y$10$2S9EgkSuei/XY/AWeLvqkOnjBLeCV5P2x.HBzyE8EBzm4RioaFGAi', '2018-07-23 11:29:04');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `student_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `student_id`, `student_name`, `created_at`, `updated_at`, `class_id`, `student_pic`) VALUES
(7, '201620031', 'Burndi Muhindo Alain', '2018-07-27 02:05:02', '2018-07-27 11:14:51', 2, '201620031.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `department_id`) VALUES
(1, 'burindi muhindo', 'alain@gmail.com', '$2y$10$jtboFSU1IXPeLJp0EZ2lNuc.BOuHfpz8FJc52dlBtkcDyAnCOFRR2', 'Pjd7qwXwDNZFQJ2XkajQuzQgk79oFYWwvpw3wv25QP35rSQbK1b4LYhC0BYr', '2018-07-23 11:25:06', '2018-07-23 11:25:06', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `class_years`
--
ALTER TABLE `class_years`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `class_years`
--
ALTER TABLE `class_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de données :  `yetu`
--
CREATE DATABASE IF NOT EXISTS `yetu` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `yetu`;

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maxima` smallint(6) NOT NULL,
  `t__class_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`id`, `name`, `maxima`, `t__class_id`, `created_at`, `updated_at`) VALUES
(1, 'Educ. Civ. & Morale', 10, 1, '2018-09-04 09:02:37', '2018-09-04 09:02:37'),
(2, 'Education a la Vie', 10, 1, '2018-09-04 09:04:34', '2018-09-04 09:04:34'),
(3, 'Informatique', 10, 1, '2018-09-04 09:05:15', '2018-09-04 09:05:15'),
(4, 'Anglais', 20, 1, '2018-09-04 09:05:46', '2018-09-04 09:05:46'),
(5, 'Dessin', 20, 1, '2018-09-04 09:06:07', '2018-09-04 09:06:07'),
(6, 'Educ. Physique', 20, 1, '2018-09-04 09:06:50', '2018-09-04 09:06:50'),
(7, 'Musique', 20, 1, '2018-09-04 09:07:10', '2018-09-04 09:07:10'),
(8, 'Geographie', 30, 1, '2018-09-04 09:07:35', '2018-09-04 09:07:35'),
(9, 'Histoire', 30, 1, '2018-09-04 09:08:00', '2018-09-04 09:08:00'),
(12, 'Sciences', 30, 1, '2018-09-18 10:43:37', '2018-09-18 10:43:37'),
(13, 'Technologie', 30, 1, '2018-09-18 10:45:21', '2018-09-18 10:45:21'),
(14, 'Francais', 60, 1, '2018-09-18 10:45:51', '2018-09-18 10:45:51'),
(15, 'Mathematique', 60, 1, '2018-09-18 10:47:11', '2018-09-18 10:47:11'),
(16, 'Educ. Civ. & Morale', 10, 2, '2018-09-18 10:49:38', '2018-09-18 10:49:38'),
(17, 'Education a la Vie', 10, 2, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(18, 'Informatique', 10, 2, '2018-09-18 10:52:14', '2018-09-18 10:52:14'),
(19, 'Anglais', 20, 2, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(20, 'Dessin', 20, 2, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(22, 'Educ. Physique', 20, 2, '2018-09-18 11:12:18', '2018-09-18 11:12:18'),
(23, 'Musique', 20, 2, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(24, 'Geographie', 30, 2, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(25, 'Histoire', 30, 2, '2018-09-18 11:13:05', '2018-09-18 11:13:05'),
(26, 'Sciences', 30, 2, '2018-09-18 11:15:02', '2018-09-18 11:15:02'),
(27, 'Technologie', 30, 2, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(28, 'Francais', 40, 2, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(29, 'Mathematique', 40, 2, '2018-09-18 11:16:14', '2018-09-18 11:16:14');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'student_id', 'text', 'Student Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(25, 4, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, NULL, 3),
(26, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(27, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(28, 4, 'payment_belongsto_student_relationship', 'relationship', 'students', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Student\",\"table\":\"students\",\"type\":\"belongsTo\",\"column\":\"student_id\",\"key\":\"id\",\"label\":\"matricule\",\"pivot_table\":\"courses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-11-23 13:10:37', '2018-11-23 13:10:37'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-11-23 13:10:37', '2018-11-23 13:10:37'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-11-23 13:10:37', '2018-11-23 13:10:37'),
(4, 'payments', 'payments', 'Payment', 'Payments', 'voyager-documentation', 'App\\Payment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2019-02-08 08:16:53', '2019-02-08 08:19:22');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `event_name`, `event_description`, `event_pic`, `created_at`, `updated_at`) VALUES
(1, 'first', 'for testing', '09.gif', '2018-08-27 20:26:00', '2018-10-09 07:47:02'),
(2, 'test 2', 'le test continu, a modifier', '09.png', '2018-10-09 07:38:40', '2018-10-09 07:52:21');

-- --------------------------------------------------------

--
-- Structure de la table `inscriptions`
--

CREATE TABLE `inscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `naissance` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `inscriptions`
--

INSERT INTO `inscriptions` (`id`, `nom`, `section`, `sexe`, `naissance`, `created_at`, `updated_at`) VALUES
(1, 'burindi muhindo alain', 'Sociale', 'M', '2018-09-12', '2018-09-11 19:43:05', '2018-09-11 19:43:05'),
(2, 'hhdfdf dhfd dhkfks', 'Primmaire', 'M', '2018-09-21', '2018-09-11 19:44:16', '2018-09-11 19:44:16'),
(3, 'hkddjas djfh sdjhbfk', 'Commerciale', 'F', '2018-09-27', '2018-09-11 19:45:14', '2018-09-11 19:45:14'),
(4, 'JEAN PAUL HAMULI BISHIKWABO', 'Sociale', 'M', '1997-02-08', '2018-10-03 09:08:02', '2018-10-03 09:08:02');

-- --------------------------------------------------------

--
-- Structure de la table `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `t__class_id` int(10) UNSIGNED DEFAULT NULL,
  `courses_id` int(10) UNSIGNED DEFAULT NULL,
  `periode_1` int(3) DEFAULT '0',
  `periode_2` int(3) DEFAULT '0',
  `exam_1` int(3) DEFAULT '0',
  `periode_3` int(3) DEFAULT '0',
  `periode_4` int(3) DEFAULT '0',
  `exam_2` int(3) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `marks`
--

INSERT INTO `marks` (`id`, `student_id`, `t__class_id`, `courses_id`, `periode_1`, `periode_2`, `exam_1`, `periode_3`, `periode_4`, `exam_2`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 5, 0, 0, 0, 0, 0, '2018-09-18 08:13:41', '2018-09-18 08:13:41'),
(2, 1, 1, 2, 7, 0, 0, 0, 0, 0, '2018-09-18 08:13:41', '2018-09-18 08:13:41'),
(3, 1, 1, 3, 8, 0, 0, 0, 0, 0, '2018-09-18 08:13:41', '2018-09-18 08:13:41'),
(4, 1, 1, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:41', '2018-09-18 08:13:41'),
(5, 1, 1, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:41', '2018-09-18 08:13:41'),
(6, 1, 1, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:41', '2018-09-18 08:13:41'),
(7, 1, 1, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(8, 1, 1, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(9, 1, 1, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(10, 2, 1, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(11, 2, 1, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(12, 2, 1, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(13, 2, 1, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(14, 2, 1, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(15, 2, 1, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(16, 2, 1, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(17, 2, 1, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(18, 2, 1, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(19, 3, 1, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(20, 3, 1, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(21, 3, 1, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(22, 3, 1, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(23, 3, 1, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(24, 3, 1, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(25, 3, 1, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(26, 3, 1, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(27, 3, 1, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(28, 4, 1, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(29, 4, 1, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(30, 4, 1, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(31, 4, 1, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(32, 4, 1, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:42', '2018-09-18 08:13:42'),
(33, 4, 1, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(34, 4, 1, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(35, 4, 1, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(36, 4, 1, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(37, 5, 1, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(38, 5, 1, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(39, 5, 1, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(40, 5, 1, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(41, 5, 1, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(42, 5, 1, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(43, 5, 1, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(44, 5, 1, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(45, 5, 1, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(46, 6, 1, 1, 5, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(47, 6, 1, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(48, 6, 1, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(49, 6, 1, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(50, 6, 1, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(51, 6, 1, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(52, 6, 1, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(53, 6, 1, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(54, 6, 1, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 08:13:43', '2018-09-18 08:13:43'),
(55, 1, 1, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 10:43:38', '2018-09-18 10:43:38'),
(56, 2, 1, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 10:43:38', '2018-09-18 10:43:38'),
(57, 3, 1, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 10:43:38', '2018-09-18 10:43:38'),
(58, 4, 1, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 10:43:38', '2018-09-18 10:43:38'),
(59, 5, 1, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 10:43:38', '2018-09-18 10:43:38'),
(60, 6, 1, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 10:43:38', '2018-09-18 10:43:38'),
(61, 1, 1, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:21', '2018-09-18 10:45:21'),
(62, 2, 1, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:21', '2018-09-18 10:45:21'),
(63, 3, 1, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:21', '2018-09-18 10:45:21'),
(64, 4, 1, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:22', '2018-09-18 10:45:22'),
(65, 5, 1, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:22', '2018-09-18 10:45:22'),
(66, 6, 1, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:22', '2018-09-18 10:45:22'),
(67, 1, 1, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:52', '2018-09-18 10:45:52'),
(68, 2, 1, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:52', '2018-09-18 10:45:52'),
(69, 3, 1, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:52', '2018-09-18 10:45:52'),
(70, 4, 1, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:52', '2018-09-18 10:45:52'),
(71, 5, 1, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:52', '2018-09-18 10:45:52'),
(72, 6, 1, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 10:45:52', '2018-09-18 10:45:52'),
(73, 1, 1, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 10:47:11', '2018-09-18 10:47:11'),
(74, 2, 1, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 10:47:11', '2018-09-18 10:47:11'),
(75, 3, 1, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 10:47:11', '2018-09-18 10:47:11'),
(76, 4, 1, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 10:47:11', '2018-09-18 10:47:11'),
(77, 5, 1, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 10:47:12', '2018-09-18 10:47:12'),
(78, 6, 1, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 10:47:12', '2018-09-18 10:47:12'),
(79, 7, 2, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 10:49:39', '2018-09-18 10:49:39'),
(80, 8, 2, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 10:49:39', '2018-09-18 10:49:39'),
(81, 9, 2, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 10:49:39', '2018-09-18 10:49:39'),
(82, 10, 2, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 10:49:39', '2018-09-18 10:49:39'),
(83, 11, 2, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 10:49:39', '2018-09-18 10:49:39'),
(84, 12, 2, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 10:49:39', '2018-09-18 10:49:39'),
(85, 13, 2, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 10:49:39', '2018-09-18 10:49:39'),
(86, 14, 2, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 10:49:39', '2018-09-18 10:49:39'),
(87, 15, 2, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 10:49:39', '2018-09-18 10:49:39'),
(88, 18, 2, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 10:49:39', '2018-09-18 10:49:39'),
(89, 19, 2, 1, 0, 0, 0, 0, 0, 0, '2018-09-18 10:49:39', '2018-09-18 10:49:39'),
(90, 7, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(91, 8, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(92, 9, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(93, 10, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(94, 11, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(95, 12, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(96, 13, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(97, 14, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(98, 15, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(99, 18, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(100, 19, 2, 2, 0, 0, 0, 0, 0, 0, '2018-09-18 10:51:57', '2018-09-18 10:51:57'),
(101, 7, 2, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 10:52:14', '2018-09-18 10:52:14'),
(102, 8, 2, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 10:52:14', '2018-09-18 10:52:14'),
(103, 9, 2, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 10:52:14', '2018-09-18 10:52:14'),
(104, 10, 2, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 10:52:14', '2018-09-18 10:52:14'),
(105, 11, 2, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 10:52:14', '2018-09-18 10:52:14'),
(106, 12, 2, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 10:52:14', '2018-09-18 10:52:14'),
(107, 13, 2, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 10:52:14', '2018-09-18 10:52:14'),
(108, 14, 2, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 10:52:14', '2018-09-18 10:52:14'),
(109, 15, 2, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 10:52:14', '2018-09-18 10:52:14'),
(110, 18, 2, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 10:52:15', '2018-09-18 10:52:15'),
(111, 19, 2, 3, 0, 0, 0, 0, 0, 0, '2018-09-18 10:52:15', '2018-09-18 10:52:15'),
(112, 7, 2, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(113, 8, 2, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(114, 9, 2, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(115, 10, 2, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(116, 11, 2, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(117, 12, 2, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(118, 13, 2, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(119, 14, 2, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(120, 15, 2, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(121, 18, 2, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(122, 19, 2, 4, 0, 0, 0, 0, 0, 0, '2018-09-18 10:53:29', '2018-09-18 10:53:29'),
(123, 7, 2, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(124, 8, 2, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(125, 9, 2, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(126, 10, 2, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(127, 11, 2, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(128, 12, 2, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(129, 13, 2, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(130, 14, 2, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(131, 15, 2, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(132, 18, 2, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(133, 19, 2, 5, 0, 0, 0, 0, 0, 0, '2018-09-18 10:54:35', '2018-09-18 10:54:35'),
(134, 7, 2, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:18', '2018-09-18 11:12:18'),
(135, 8, 2, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:18', '2018-09-18 11:12:18'),
(136, 9, 2, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:18', '2018-09-18 11:12:18'),
(137, 10, 2, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:18', '2018-09-18 11:12:18'),
(138, 11, 2, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:18', '2018-09-18 11:12:18'),
(139, 12, 2, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:18', '2018-09-18 11:12:18'),
(140, 13, 2, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:19', '2018-09-18 11:12:19'),
(141, 14, 2, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:19', '2018-09-18 11:12:19'),
(142, 15, 2, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:19', '2018-09-18 11:12:19'),
(143, 18, 2, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:19', '2018-09-18 11:12:19'),
(144, 19, 2, 6, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:19', '2018-09-18 11:12:19'),
(145, 7, 2, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(146, 8, 2, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(147, 9, 2, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(148, 10, 2, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(149, 11, 2, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(150, 12, 2, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(151, 13, 2, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(152, 14, 2, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(153, 15, 2, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(154, 18, 2, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(155, 19, 2, 7, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:32', '2018-09-18 11:12:32'),
(156, 7, 2, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(157, 8, 2, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(158, 9, 2, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(159, 10, 2, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(160, 11, 2, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(161, 12, 2, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(162, 13, 2, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(163, 14, 2, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(164, 15, 2, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(165, 18, 2, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(166, 19, 2, 8, 0, 0, 0, 0, 0, 0, '2018-09-18 11:12:52', '2018-09-18 11:12:52'),
(167, 7, 2, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 11:13:06', '2018-09-18 11:13:06'),
(168, 8, 2, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 11:13:06', '2018-09-18 11:13:06'),
(169, 9, 2, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 11:13:06', '2018-09-18 11:13:06'),
(170, 10, 2, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 11:13:06', '2018-09-18 11:13:06'),
(171, 11, 2, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 11:13:06', '2018-09-18 11:13:06'),
(172, 12, 2, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 11:13:06', '2018-09-18 11:13:06'),
(173, 13, 2, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 11:13:06', '2018-09-18 11:13:06'),
(174, 14, 2, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 11:13:06', '2018-09-18 11:13:06'),
(175, 15, 2, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 11:13:06', '2018-09-18 11:13:06'),
(176, 18, 2, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 11:13:06', '2018-09-18 11:13:06'),
(177, 19, 2, 9, 0, 0, 0, 0, 0, 0, '2018-09-18 11:13:06', '2018-09-18 11:13:06'),
(178, 7, 2, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:02', '2018-09-18 11:15:02'),
(179, 8, 2, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:02', '2018-09-18 11:15:02'),
(180, 9, 2, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:02', '2018-09-18 11:15:02'),
(181, 10, 2, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:02', '2018-09-18 11:15:02'),
(182, 11, 2, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:02', '2018-09-18 11:15:02'),
(183, 12, 2, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:03', '2018-09-18 11:15:03'),
(184, 13, 2, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:03', '2018-09-18 11:15:03'),
(185, 14, 2, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:03', '2018-09-18 11:15:03'),
(186, 15, 2, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:03', '2018-09-18 11:15:03'),
(187, 18, 2, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:03', '2018-09-18 11:15:03'),
(188, 19, 2, 12, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:03', '2018-09-18 11:15:03'),
(189, 7, 2, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(190, 8, 2, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(191, 9, 2, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(192, 10, 2, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(193, 11, 2, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(194, 12, 2, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(195, 13, 2, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(196, 14, 2, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(197, 15, 2, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(198, 18, 2, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(199, 19, 2, 13, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:18', '2018-09-18 11:15:18'),
(200, 7, 2, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(201, 8, 2, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(202, 9, 2, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(203, 10, 2, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(204, 11, 2, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(205, 12, 2, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(206, 13, 2, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(207, 14, 2, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(208, 15, 2, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(209, 18, 2, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(210, 19, 2, 14, 0, 0, 0, 0, 0, 0, '2018-09-18 11:15:59', '2018-09-18 11:15:59'),
(211, 7, 2, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 11:16:14', '2018-09-18 11:16:14'),
(212, 8, 2, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 11:16:14', '2018-09-18 11:16:14'),
(213, 9, 2, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 11:16:14', '2018-09-18 11:16:14'),
(214, 10, 2, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 11:16:14', '2018-09-18 11:16:14'),
(215, 11, 2, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 11:16:14', '2018-09-18 11:16:14'),
(216, 12, 2, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 11:16:14', '2018-09-18 11:16:14'),
(217, 13, 2, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 11:16:14', '2018-09-18 11:16:14'),
(218, 14, 2, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 11:16:14', '2018-09-18 11:16:14'),
(219, 15, 2, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 11:16:14', '2018-09-18 11:16:14'),
(220, 18, 2, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 11:16:14', '2018-09-18 11:16:14'),
(221, 19, 2, 15, 0, 0, 0, 0, 0, 0, '2018-09-18 11:16:14', '2018-09-18 11:16:14');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-11-23 13:10:39', '2018-11-23 13:10:39');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-11-23 13:10:39', '2018-11-23 13:10:39', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-11-23 13:10:39', '2018-11-23 13:10:39', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-11-23 13:10:39', '2018-11-23 13:10:39', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-11-23 13:10:40', '2018-11-23 13:10:40', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-11-23 13:10:40', '2018-11-23 13:10:40', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-11-23 13:10:40', '2018-11-23 13:10:40', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-11-23 13:10:40', '2018-11-23 13:10:40', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-11-23 13:10:40', '2018-11-23 13:10:40', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-11-23 13:10:40', '2018-11-23 13:10:40', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-11-23 13:10:40', '2018-11-23 13:10:40', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2018-11-23 13:10:45', '2018-11-23 13:10:45', 'voyager.hooks', NULL),
(12, 1, 'Payments', '', '_self', 'voyager-documentation', NULL, NULL, 15, '2019-02-08 08:16:54', '2019-02-08 08:16:54', 'voyager.payments.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_27_195444_create_events_table', 2),
(4, '2018_09_02_113811_create_t__classes_table', 3),
(6, '2018_09_03_172701_create_t__classes_table', 5),
(7, '2018_09_03_165735_create_courses_table', 6),
(8, '2018_09_04_195859_create_marks_table', 7),
(9, '2018_09_04_200205_create_students_table', 7),
(11, '2018_09_06_111851_create_students_table', 9),
(12, '2018_09_06_111150_create_marks_table', 10),
(14, '2014_10_12_000000_create_users_table', 11),
(15, '2018_09_08_114917_create_professors_table', 12),
(16, '2018_09_11_204854_create_inscriptions_table', 13),
(17, '2016_01_01_000000_add_voyager_user_fields', 14),
(18, '2016_01_01_000000_create_data_types_table', 14),
(19, '2016_05_19_173453_create_menu_table', 14),
(20, '2016_10_21_190000_create_roles_table', 14),
(21, '2016_10_21_190000_create_settings_table', 14),
(22, '2016_11_30_135954_create_permission_table', 14),
(23, '2016_11_30_141208_create_permission_role_table', 14),
(24, '2016_12_26_201236_data_types__add__server_side', 14),
(25, '2017_01_13_000000_add_route_to_menu_items_table', 14),
(26, '2017_01_14_005015_create_translations_table', 14),
(27, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 14),
(28, '2017_03_06_000000_add_controller_to_data_types_table', 14),
(29, '2017_04_21_000000_add_order_to_data_rows_table', 14),
(30, '2017_07_05_210000_add_policyname_to_data_types_table', 14),
(31, '2017_08_05_000000_add_group_to_settings_table', 14),
(32, '2017_11_26_013050_add_user_role_relationship', 14),
(33, '2017_11_26_015000_create_user_roles_table', 14),
(34, '2018_03_11_000000_add_user_settings', 14),
(35, '2018_03_14_000000_add_details_to_data_types_table', 14),
(36, '2018_03_16_000000_make_settings_value_nullable', 14),
(38, '2019_02_08_071933_create_payments_table', 15);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `payments`
--

INSERT INTO `payments` (`id`, `student_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 15, 10, '2019-02-08 06:18:04', '2019-02-08 07:16:18'),
(2, 2, 39, '2019-02-08 07:47:19', '2019-02-08 07:47:19'),
(3, 2, 39, '2019-02-08 09:11:37', '2019-02-08 09:11:37'),
(4, 1, 20, '2019-02-08 09:13:04', '2019-02-08 09:13:04');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-11-23 13:10:40', '2018-11-23 13:10:40'),
(2, 'browse_bread', NULL, '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(3, 'browse_database', NULL, '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(4, 'browse_media', NULL, '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(5, 'browse_compass', NULL, '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(6, 'browse_menus', 'menus', '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(7, 'read_menus', 'menus', '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(8, 'edit_menus', 'menus', '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(9, 'add_menus', 'menus', '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(10, 'delete_menus', 'menus', '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(11, 'browse_roles', 'roles', '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(12, 'read_roles', 'roles', '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(13, 'edit_roles', 'roles', '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(14, 'add_roles', 'roles', '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(15, 'delete_roles', 'roles', '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(16, 'browse_users', 'users', '2018-11-23 13:10:41', '2018-11-23 13:10:41'),
(17, 'read_users', 'users', '2018-11-23 13:10:42', '2018-11-23 13:10:42'),
(18, 'edit_users', 'users', '2018-11-23 13:10:42', '2018-11-23 13:10:42'),
(19, 'add_users', 'users', '2018-11-23 13:10:42', '2018-11-23 13:10:42'),
(20, 'delete_users', 'users', '2018-11-23 13:10:42', '2018-11-23 13:10:42'),
(21, 'browse_settings', 'settings', '2018-11-23 13:10:42', '2018-11-23 13:10:42'),
(22, 'read_settings', 'settings', '2018-11-23 13:10:42', '2018-11-23 13:10:42'),
(23, 'edit_settings', 'settings', '2018-11-23 13:10:42', '2018-11-23 13:10:42'),
(24, 'add_settings', 'settings', '2018-11-23 13:10:42', '2018-11-23 13:10:42'),
(25, 'delete_settings', 'settings', '2018-11-23 13:10:42', '2018-11-23 13:10:42'),
(26, 'browse_hooks', NULL, '2018-11-23 13:10:45', '2018-11-23 13:10:45'),
(27, 'browse_payments', 'payments', '2019-02-08 08:16:54', '2019-02-08 08:16:54'),
(28, 'read_payments', 'payments', '2019-02-08 08:16:54', '2019-02-08 08:16:54'),
(29, 'edit_payments', 'payments', '2019-02-08 08:16:54', '2019-02-08 08:16:54'),
(30, 'add_payments', 'payments', '2019-02-08 08:16:54', '2019-02-08 08:16:54'),
(31, 'delete_payments', 'payments', '2019-02-08 08:16:54', '2019-02-08 08:16:54');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1);

-- --------------------------------------------------------

--
-- Structure de la table `professors`
--

CREATE TABLE `professors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `professors`
--

INSERT INTO `professors` (`id`, `name`, `tel`, `user_id`, `picture`, `created_at`, `updated_at`) VALUES
(1, 'inconnu', 'inconnu', NULL, 'noimage.jpg', '2018-09-08 10:43:26', '2018-09-08 10:43:26'),
(2, 'guillain', '+243994415090', 29, 'noimage.jpg', '2018-09-08 12:05:29', '2018-09-08 12:05:29');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-11-23 13:10:40', '2018-11-23 13:10:40'),
(2, 'user', 'Normal User', '2018-11-23 13:10:40', '2018-11-23 13:10:40');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `matricule` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `naissance` date NOT NULL,
  `sexe` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'noimage.jpg',
  `t__class_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `matricule`, `user_id`, `naissance`, `sexe`, `picture`, `t__class_id`, `created_at`, `updated_at`) VALUES
(1, '20180001', 2, '2018-09-28', 'M', 'noimage.png', 1, '2018-09-10 05:39:21', '2018-09-10 05:39:21'),
(2, '20180002', 3, '2018-09-21', 'M', 'noimage.png', 1, '2018-09-10 07:30:34', '2018-09-10 07:30:34'),
(3, '20180003', 4, '2018-09-06', 'F', 'noimage.png', 1, '2018-09-10 07:31:08', '2018-09-10 07:31:08'),
(4, '20180004', 5, '2018-09-06', 'F', 'noimage.png', 1, '2018-09-10 07:31:57', '2018-09-10 07:31:57'),
(5, '20180005', 6, '2018-09-04', 'F', 'noimage.png', 1, '2018-09-10 07:32:50', '2018-09-10 07:32:50'),
(6, '20180006', 7, '2018-09-07', 'F', 'noimage.png', 1, '2018-09-10 07:34:14', '2018-09-10 07:34:14'),
(7, '20180007', 8, '2018-09-01', 'F', 'noimage.png', 2, '2018-09-10 07:43:46', '2018-09-10 07:43:46'),
(8, '20180008', 9, '2018-09-20', 'F', 'noimage.png', 2, '2018-09-10 07:44:27', '2018-09-10 07:44:27'),
(9, '20180009', 10, '2018-09-06', 'M', 'noimage.png', 2, '2018-09-10 07:44:53', '2018-09-10 07:44:53'),
(10, '20180010', 11, '2018-09-06', 'M', 'noimage.png', 2, '2018-09-10 07:45:24', '2018-09-10 07:45:24'),
(11, '20180011', 12, '2018-09-10', 'M', 'noimage.png', 2, '2018-09-10 07:45:54', '2018-09-10 07:45:54'),
(12, '20180012', 13, '2018-09-18', 'M', 'noimage.png', 2, '2018-09-10 07:46:16', '2018-09-10 07:46:16'),
(13, '20180013', 14, '2018-09-13', 'F', 'noimage.png', 2, '2018-09-10 07:46:40', '2018-09-10 07:46:40'),
(14, '20180014', 15, '2019-04-10', 'F', 'noimage.png', 2, '2018-09-10 07:47:30', '2018-09-10 07:47:30'),
(15, '20180015', 16, '1998-12-23', 'M', 'noimage.png', 2, '2018-09-10 07:48:51', '2018-09-10 07:48:51'),
(16, '20180016', 17, '2018-09-30', 'F', 'noimage.png', 3, '2018-09-10 07:49:29', '2018-09-10 07:49:29'),
(17, '20180017', 18, '2018-10-05', 'M', 'noimage.png', 3, '2018-09-10 07:50:03', '2018-09-10 07:50:03'),
(18, '20180018', 19, '2018-09-04', 'F', 'noimage.png', 2, '2018-09-10 07:50:34', '2018-09-10 07:50:34'),
(19, '20180019', 20, '2018-09-28', 'F', 'noimage.png', 2, '2018-09-10 07:51:04', '2018-09-10 07:51:04'),
(20, '20180020', 21, '2018-09-20', 'M', 'noimage.png', 4, '2018-09-10 07:51:39', '2018-09-10 07:51:39'),
(21, '20180021', 22, '2018-02-08', 'F', 'noimage.png', 4, '2018-09-10 07:52:09', '2018-09-10 07:52:09'),
(22, '20180022', 23, '2018-09-15', 'F', 'noimage.png', 3, '2018-09-10 07:53:55', '2018-09-10 07:53:55'),
(23, '20180023', 24, '2018-05-08', 'M', 'noimage.png', 3, '2018-09-10 07:54:39', '2018-09-10 07:54:39'),
(24, '20180024', 25, '2018-09-03', 'F', 'noimage.png', 3, '2018-09-10 07:55:16', '2018-09-10 07:55:16'),
(25, '20180025', 26, '2018-09-08', 'M', 'noimage.png', 4, '2018-09-10 07:56:03', '2018-09-10 07:56:03'),
(26, '20180026', 27, '2018-08-31', 'F', 'noimage.png', 4, '2018-09-10 07:56:25', '2018-09-10 07:56:25'),
(27, '20180027', 28, '2018-09-27', 'F', 'noimage.png', 3, '2018-09-10 07:57:11', '2018-09-10 07:57:11');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t__classes`
--

CREATE TABLE `t__classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` smallint(6) NOT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulaire` int(10) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `t__classes`
--

INSERT INTO `t__classes` (`id`, `name`, `option`, `titulaire`, `created_at`, `updated_at`) VALUES
(1, 1, 'C.O', 2, '2018-09-03 15:54:04', '2018-09-03 15:54:04'),
(2, 2, 'C.O', 1, '2018-09-03 15:55:32', '2018-09-03 15:55:32'),
(3, 3, 'H.T.S', 1, '2018-09-03 15:55:42', '2018-09-03 15:55:42'),
(4, 4, 'H.T.S', 1, '2018-09-03 15:55:52', '2018-09-03 15:55:52');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ability` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `ability`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'alain burindi', 'alain@gmail.com', 'users/default.png', '$2y$10$a1KKcw0vyiiXl8GIyjbfjOdTISW0jAQTgf5toPZYM.u2P4zxzBNiS', '1', 'GqPweF385OKgFK6z9IX9M2R2TclZKx8u8v6TOSNUosqXpMEI7IJzoJAW6IAn', '{\"locale\":\"en\"}', '2018-09-08 13:23:18', '2019-08-31 06:08:22'),
(2, NULL, 'burindi kavena david', '20180001@mamayetu.cs', 'users/default.png', '$2y$10$IkL7kA8Qcwft9PIzOGd4G.Jp3vr3oYb1/uKZJlYukfN/EXnzaKIFm', '3', 'gU5A4JG4uZo6OMJ7QPzFIb7DgDf0WSINDXcvPl3IZCoDfalTiSCEkWcoJyYq', NULL, '2018-09-10 05:39:21', '2018-09-10 05:39:21'),
(3, NULL, 'burindi kavena jeanisse', '20180002@mamayetu.cs', 'users/default.png', '$2y$10$R3Ro9ux/331qqEYnLbOIG.ZPgsxtpLoVHChbfT9JsBa6BB01ZnqUy', '3', NULL, NULL, '2018-09-10 07:30:34', '2018-09-10 07:30:34'),
(4, NULL, 'gfig kjvv yugfor', '20180003@mamayetu.cs', 'users/default.png', '$2y$10$S6I6fJlUFltlyBPRQTg99OEPp6/BR3cvdMrdestDr2q/GgoriQFcq', '3', NULL, NULL, '2018-09-10 07:31:08', '2018-09-10 07:31:08'),
(5, NULL, 'dgfhdh jhoeihf khgfwe', '20180004@mamayetu.cs', 'users/default.png', '$2y$10$YFYSQY97Q8d/qFSTzmly6OueMwUdcdebHa2n3P3.YH1zHACpV8nxi', '3', NULL, NULL, '2018-09-10 07:31:57', '2018-09-10 07:31:57'),
(6, NULL, 'hfgviu ukekld euytr', '20180005@mamayetu.cs', 'users/default.png', '$2y$10$e7bj6TEt0qHj3ApN8WoXxu/utS36lsk2yaIh7aVhWgEYoxB9Wr3SO', '3', NULL, NULL, '2018-09-10 07:32:50', '2018-09-10 07:32:50'),
(7, NULL, 'djhgfdk hjgdf jgdffe', '20180006@mamayetu.cs', 'users/default.png', '$2y$10$cEODU75pxmKpHZRb8LSKXuBFFr6bIxZVFS7eYhzCL2CPTkgXUWfUa', '3', NULL, NULL, '2018-09-10 07:34:14', '2018-09-10 07:34:14'),
(8, NULL, 'hduftiug jygou hdduyj', '20180007@mamayetu.cs', 'users/default.png', '$2y$10$8ljKO0mycJRu8AGXlfTwVOCwMV27.tfGRBpGkRvAhfpvK.Tw/eK4e', '3', NULL, NULL, '2018-09-10 07:43:46', '2018-09-10 07:43:46'),
(9, NULL, 'dgsyht grdy grfxfhk', '20180008@mamayetu.cs', 'users/default.png', '$2y$10$E6B98Z0s.f6/iRQdx1MT4.c9JUhkRp1t0USBe/.r/xaQkCgs/4Ci6', '3', NULL, NULL, '2018-09-10 07:44:27', '2018-09-10 07:44:27'),
(10, NULL, 'dsuy gfilk tri7ytf', '20180009@mamayetu.cs', 'users/default.png', '$2y$10$83rm19JmElu9akt1sdwohOY80K5uD6pnBE7wtMrRanZ2E5e3v7JmK', '3', NULL, NULL, '2018-09-10 07:44:53', '2018-09-10 07:44:53'),
(11, NULL, 'bfccdkyu hgku hgfkuj', '20180010@mamayetu.cs', 'users/default.png', '$2y$10$Bw0x2j3S30hvd2xM9N4Z9uIoxVo6nV/XwKJzZ.4izeO2Wj4lIHBLu', '3', NULL, NULL, '2018-09-10 07:45:24', '2018-09-10 07:45:24'),
(12, NULL, 'cxhjm bfxhk gfhk', '20180011@mamayetu.cs', 'users/default.png', '$2y$10$YD8tZ3n9CIQPNYZVYWoHPeyXt5WtH/dnzuVwrFxJ8p3EAvVoaffsu', '3', NULL, NULL, '2018-09-10 07:45:54', '2018-09-10 07:45:54'),
(13, NULL, 'hgckjk ljhob hdiutk', '20180012@mamayetu.cs', 'users/default.png', '$2y$10$clWfU4Mhc62V3fQbZ3Rxj.3HGqSm3TW7976qaDoTxfsm.vMK2HBM.', '3', NULL, NULL, '2018-09-10 07:46:16', '2018-09-10 07:46:16'),
(14, NULL, 'jglijhbkh jhli yigpou', '20180013@mamayetu.cs', 'users/default.png', '$2y$10$zfB/SWt6k4P7.a.zA1nqieo5lMX5ssWjwmHX1lifW04MGIYfprNZq', '3', NULL, NULL, '2018-09-10 07:46:40', '2018-09-10 07:46:40'),
(15, NULL, 'cgxjhg hfyfdc fdukfj', '20180014@mamayetu.cs', 'users/default.png', '$2y$10$wvrQguiHhD.1CYbuI5o6e.W8eGw2oXvN5FNlsBeU9RqbLh0FI6IIe', '3', NULL, NULL, '2018-09-10 07:47:30', '2018-09-10 07:47:30'),
(16, NULL, 'jhfvf jhfg fhglf', '20180015@mamayetu.cs', 'users/default.png', '$2y$10$vBOjmf6FZSMvJA6.7TuWbOjng/LcfnmxNmoQZTIKqA8it87EgpEXa', '3', NULL, NULL, '2018-09-10 07:48:51', '2018-09-10 07:48:51'),
(17, NULL, 'gugrt kugfhgl oiutp', '20180016@mamayetu.cs', 'users/default.png', '$2y$10$ec.syk9wTRocLwUMrH9BgOTlR1qhjJJrd59dVLDQADp7D9eCzMDdK', '3', NULL, NULL, '2018-09-10 07:49:29', '2018-09-10 07:49:29'),
(18, NULL, 'rkgg fliygsdhk hfgf', '20180017@mamayetu.cs', 'users/default.png', '$2y$10$3QRg1KrO7svRmjywN0Gsz.Lf42uiXyBt8RvijeUq7l2i/gkw7vk8q', '3', NULL, NULL, '2018-09-10 07:50:03', '2018-09-10 07:50:03'),
(19, NULL, 'rebg fngbl kfuhb', '20180018@mamayetu.cs', 'users/default.png', '$2y$10$s/Xd2oPa4AMadW3AkegoyuQ9LqQ2qqubycQnJryvsYsw/bGUMKhyq', '3', NULL, NULL, '2018-09-10 07:50:34', '2018-09-10 07:50:34'),
(20, NULL, 'khfvkfj kiuhf khbj', '20180019@mamayetu.cs', 'users/default.png', '$2y$10$.wYZrMyZS0qKZIkeiqAiR.v1KhydCgdTfnhYt11iLDWCEHFe3xSRC', '3', NULL, NULL, '2018-09-10 07:51:04', '2018-09-10 07:51:04'),
(21, NULL, 'kufgg jhgf djgfk', '20180020@mamayetu.cs', 'users/default.png', '$2y$10$Rlk2Y.Vd5R1MhsoCyOkZgerxbLT6xgd26FXXxeok9gMDfeWhB/26i', '3', NULL, NULL, '2018-09-10 07:51:39', '2018-09-10 07:51:39'),
(22, NULL, 'jbbvkjf nhvkf;hb khv', '20180021@mamayetu.cs', 'users/default.png', '$2y$10$fsvL7jNo1.bZa07RDCzeeuO.hQSsi2a69DwLMXNE/i3gDyduL8YF6', '3', NULL, NULL, '2018-09-10 07:52:09', '2018-09-10 07:52:09'),
(23, NULL, 'jhf jlyhgfor jlhgovfr', '20180022@mamayetu.cs', 'users/default.png', '$2y$10$qwzwnMnYBnxBrSRdrwSDxu5VOblSaSKdYV/PiDKbkfSZbXUwmByZW', '3', NULL, NULL, '2018-09-10 07:53:55', '2018-09-10 07:53:55'),
(24, NULL, 'utfgyi jhbkfk jhhvf', '20180023@mamayetu.cs', 'users/default.png', '$2y$10$3CB2eIpE1mWP5efW2d8dxO1Dhd1BteUSce.KoLAK5FUxZnPgVhMQC', '3', NULL, NULL, '2018-09-10 07:54:39', '2018-09-10 07:54:39'),
(25, NULL, 'jff dkhf djhfg', '20180024@mamayetu.cs', 'users/default.png', '$2y$10$5GdEqCcRxhNW0wcqdqZmRuk/5LPTkOmnkjuE.pfCXv7BA5O9krX5G', '3', NULL, NULL, '2018-09-10 07:55:16', '2018-09-10 07:55:16'),
(26, NULL, 'jcgvh ehgfdk hkdhdw', '20180025@mamayetu.cs', 'users/default.png', '$2y$10$Q6ZD5VQNYBI9G8wuUaeCRuU8onqzvRUBPiyxoVZLcCSIdOZbLtrl.', '3', NULL, NULL, '2018-09-10 07:56:03', '2018-09-10 07:56:03'),
(27, NULL, 'mhvgv khbf ifhl', '20180026@mamayetu.cs', 'users/default.png', '$2y$10$FZnw9uf7kzJf0NEU6fmpyukQ81/oQR5MB4LrFlhGFrbEoKk3O26xG', '3', NULL, NULL, '2018-09-10 07:56:25', '2018-09-10 07:56:25'),
(28, NULL, 'jhfghrl jhgr ygfhr', '20180027@mamayetu.cs', 'users/default.png', '$2y$10$rn0uqTcFP7KW9UBXrMLds.Pmrn41TyV6bUhNDPhV.7inydMiGGxPO', '3', NULL, NULL, '2018-09-10 07:57:11', '2018-09-10 07:57:11'),
(29, NULL, 'guillain', 'guillain@mamayetu.cs', 'users/default.png', '$2y$10$38vDA7JC4OKKZo5enSFAzOTGgCB0izlr4VfjcBIqz7Cb5jh9isq/.', '2', 'ohigFRHthwKUOZsmirKFYihEj9LHC1aHM0wlQTlnfGdjHqMIG3ZmXvCbTqJf', NULL, '2018-09-11 20:19:04', '2018-09-11 20:19:04'),
(30, NULL, 'Alain', 'alainburindi62@gmail.com', 'users/default.png', '$2y$10$R.35WjpFOtRiAjZiwtBHCeHRVdhlOh8vUnFo7DBWYAeFUOrXiOLbK', '1', NULL, NULL, '2018-11-01 09:37:31', '2018-11-01 09:37:31');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_class_id_foreign` (`t__class_id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_student_id_foreign` (`student_id`),
  ADD KEY `marks_class_id_foreign` (`t__class_id`),
  ADD KEY `c_id_fk` (`courses_id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_u_fk` (`user_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricule` (`matricule`),
  ADD UNIQUE KEY `matricule_2` (`matricule`),
  ADD KEY `students_class_id_foreign` (`t__class_id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `t__classes`
--
ALTER TABLE `t__classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `titulaire_id_f` (`titulaire`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `professors`
--
ALTER TABLE `professors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t__classes`
--
ALTER TABLE `t__classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_class_id_foreign` FOREIGN KEY (`t__class_id`) REFERENCES `t__classes` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `c_id_fk` FOREIGN KEY (`courses_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `marks_class_id_foreign` FOREIGN KEY (`t__class_id`) REFERENCES `t__classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `professors`
--
ALTER TABLE `professors`
  ADD CONSTRAINT `p_u_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`t__class_id`) REFERENCES `t__classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `t__classes`
--
ALTER TABLE `t__classes`
  ADD CONSTRAINT `titulaire_id_f` FOREIGN KEY (`titulaire`) REFERENCES `professors` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
