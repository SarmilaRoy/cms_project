-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2022 at 12:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2a$05$9dndPCmel6.zNEKfe7xmg.fNYb/Yqk7DYIby82ZQDPsdVQHP0cgI6', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'sarmila', 'sarmila@gmail.com', 'text message', '2022-07-04 02:19:58', '2022-07-04 02:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(26, '2014_10_12_000000_create_users_table', 1),
(27, '2014_10_12_100000_create_password_resets_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2022_06_15_150709_create_admin_table', 1),
(31, '2022_06_16_065824_create_pages_table', 2),
(32, '2022_06_30_115800_create_posts_table', 3),
(33, '2022_06_30_181717_add_description_to_posts', 3),
(34, '2022_07_04_075802_create_contacts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `section_title`, `data`, `created_at`, `updated_at`) VALUES
(1, 'home', 'second_title', 'Welcome to New Vision', '2022-06-16 07:54:34', '2022-07-03 11:48:42'),
(2, 'home', 'second_text', 'Aliquam purus arcu, congue a gravida ac, facilisis vel erat. Maecenas pretium sem.', '2022-06-16 07:54:34', '2022-06-16 09:02:45'),
(3, 'home', 'third_icon', NULL, '2022-06-16 07:55:31', '2022-06-16 09:02:45'),
(4, 'home', 'third_title', 'TEMPLATE USAGE', '2022-06-16 07:55:31', '2022-06-16 09:02:46'),
(5, 'home', 'third_text', 'You can feel free to edit and use New Vision template for your commercial websites. Title color is #333', '2022-06-16 07:55:31', '2022-06-16 09:02:46'),
(6, 'home', 'forth_icon', NULL, '2022-06-16 07:55:32', '2022-07-03 11:15:35'),
(7, 'home', 'forth_title', 'Featured Carousel Items', '2022-06-16 07:55:32', '2022-07-03 11:48:42'),
(8, 'home', 'banner_image', '03072022165686853433.jpg', '2022-06-16 09:02:46', '2022-07-03 11:15:35'),
(9, 'our_company', 'second_title', 'About our Company', '2022-07-03 09:41:04', '2022-07-04 04:11:58'),
(10, 'our_company', 'third_title', 'Our Background and Environment', '2022-07-03 09:41:04', '2022-07-04 04:11:58'),
(11, 'our_company', 'forth_title', 'Ours Team Member', '2022-07-03 09:41:04', '2022-07-04 04:11:58'),
(12, 'our_company', 'banner_image', '04072022165692951821.jpg', '2022-07-03 09:56:56', '2022-07-04 04:11:58'),
(13, 'services', 'second_title', 'Our Digital Services', '2022-07-04 04:31:07', '2022-07-04 04:31:07'),
(14, 'services', 'third_title', 'Our unique approaches for you', '2022-07-04 04:31:07', '2022-07-04 04:31:07'),
(15, 'services', 'forth_title', 'Our Strategic Partners', '2022-07-04 04:31:07', '2022-07-04 04:31:07'),
(16, 'services', 'banner_image', '04072022165693066760.jpg', '2022-07-04 04:31:07', '2022-07-04 04:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `page_title`, `section_title`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(9, 'home', 'second_section', 'BEST COLLECTION', 'Aliquam purus arcu, congue a gravida ac, facilisis vel erat. Maecenas pretium sem.', '04072022165691674115.jpg', '2022-07-04 00:39:01', '2022-07-04 00:43:01'),
(10, 'home', 'second_section', 'NEW DESIGN FOR YOUR WEBSITE', 'Aliquam purus arcu, congue a gravida ac, facilisis vel erat. Maecenas pretium sem at nisl malesuada, quis.', '04072022165691693597.jpg', '2022-07-04 00:42:15', '2022-07-04 00:43:12'),
(11, 'home', 'second_section', 'MOST UNIQUE IDEA EVER MADE', 'Aliquam purus arcu, congue a gravida ac, facilisis vel erat. Maecenas. Hover #09F', '04072022165691704661.jpg', '2022-07-04 00:44:06', '2022-07-04 00:44:06'),
(12, 'home', 'second_section', 'SIMPLE TOUCH', 'Please tell your friends about TemplateMo website. Thank you. Title / Text #666', '04072022165691708323.jpg', '2022-07-04 00:44:44', '2022-07-04 00:44:44'),
(13, 'home', 'third_section', 'TEMPLATE USAGE', 'You can feel free to edit and use New Vision template for your commercial websites. Title color is #333', '04072022165691749984.PNG', '2022-07-04 00:51:39', '2022-07-04 00:51:39'),
(14, 'home', 'third_section', 'NEW VISION', 'New Vision comes with 4 different HTML pages and provided free of charge by TemplateMo. You can add more pages if you need. Text color is #666', '04072022165691759274.PNG', '2022-07-04 00:53:12', '2022-07-04 00:53:12'),
(15, 'home', 'third_section', 'DOWNLOAD SITES', 'Do not re-distribute our template ZIP file on your website. Or contact us first. Button color is #C99', '04072022165691762141.PNG', '2022-07-04 00:53:41', '2022-07-04 00:53:41'),
(16, 'home', 'slider', 'cat post', 'BEST HTML Template', '04072022165691979983.jpg', '2022-07-04 01:29:59', '2022-07-04 01:29:59'),
(17, 'home', 'slider', 'Bird Post', 'TOP CSS Theme', '04072022165691988530.jpg', '2022-07-04 01:31:25', '2022-07-04 01:31:25'),
(18, 'home', 'slider', 'Flower Post', 'BEST HTML Template', '04072022165691994257.jpg', '2022-07-04 01:32:23', '2022-07-04 01:32:23'),
(19, 'home', 'slider', 'Forest Post', 'GREAT WEB THEME', '04072022165691999987.jpg', '2022-07-04 01:33:19', '2022-07-04 01:33:19'),
(20, 'home', 'slider', 'Deer', 'BEST HTML Collection', '04072022165692010973.jpg', '2022-07-04 01:35:09', '2022-07-04 01:35:09'),
(21, 'home', 'slider', 'Flower Post', 'Max CSS Layout', '04072022165692020924.jpg', '2022-07-04 01:36:49', '2022-07-04 01:36:49'),
(22, 'home', 'slider', 'Mushroom', 'BEST HTML Template', '04072022165692030056.jpg', '2022-07-04 01:38:20', '2022-07-04 01:38:20'),
(23, 'home', 'slider', 'Orange', 'BEST CSS Template', '04072022165692033888.jpg', '2022-07-04 01:38:58', '2022-07-04 01:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
