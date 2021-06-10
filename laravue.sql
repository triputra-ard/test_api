-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Mar 2021 pada 04.32
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravue`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00b2ae77aeafc7a4a5aa14dbe37d335490f99bdece92d65d26c59f567c6feb86fd383860e5040724', 23, 1, 'access_token', '[]', 0, '2021-03-07 03:36:38', '2021-03-07 03:36:38', '2022-03-07 10:36:38'),
('06fd54159569a05797d72cb0bcb88036b7893134a8e33ebbbba717f00aa2a6a64b38c46a3aababd6', 10, 1, 'access_token', '[]', 0, '2021-03-04 01:53:00', '2021-03-04 01:53:00', '2022-03-04 08:53:00'),
('08c2a5e38744a6b4c1d132fdb8e260a50461571e680f36a0dfcf4a83c8cf6912ce4e39863cf950c9', 4, 1, 'access_token', '[]', 0, '2021-03-04 03:00:50', '2021-03-04 03:00:50', '2022-03-04 10:00:50'),
('0961c4abd6d405a152e0f1c43f6cf2fec147d00a122a89362a54a78e831314aa0efc1824a83db858', 4, 1, 'access_token', '[]', 0, '2021-03-04 19:24:49', '2021-03-04 19:24:49', '2022-03-05 02:24:49'),
('10761ede7d993a2186be54d248f4680364f7a95989f9ada5dd66fcd702cf254b146ed8f6bf32a404', 13, 1, 'access_token', '[]', 0, '2021-03-04 19:57:40', '2021-03-04 19:57:40', '2022-03-05 02:57:40'),
('1b472abad1fba359a4435f75d2a57c49818d05b26367fade0a5049b63c389f85ef06a6d72e057a69', 12, 1, 'access_token', '[]', 0, '2021-03-04 19:56:20', '2021-03-04 19:56:20', '2022-03-05 02:56:20'),
('1e66e1fb6ada529d5b192c3625be7a2aa63b12a3f5db713440a220d486effdaf6f2695e28f43d653', 15, 1, 'access_token', '[]', 0, '2021-03-04 20:06:32', '2021-03-04 20:06:32', '2022-03-05 03:06:32'),
('219d7b0646cbd6120c8acc1b877d8ff6c3d94f79fe032e412d26f77ecc57eadf1b059ca4c7e039bb', 8, 1, 'access_token', '[]', 0, '2021-03-04 01:10:10', '2021-03-04 01:10:10', '2022-03-04 08:10:10'),
('231388273c345033cb316287d59cc6a9155916f2d915f04387d47e95abf1d6aaa09d6b078444d64c', 16, 1, 'access_token', '[]', 0, '2021-03-04 21:05:20', '2021-03-04 21:05:20', '2022-03-05 04:05:20'),
('2b2d5d125e57920557111003361c95f86ebb6f804b9622323c4cdf1e43cdaeb2340df58ae18c9371', 4, 1, 'access_token', '[]', 1, '2021-03-02 23:53:04', '2021-03-02 23:53:04', '2022-03-03 06:53:04'),
('30397e8f42158943fe554f7e6d6f2af83c6153959ed3bdb9859695eae8766e62a8fb2779bce5b0d5', 9, 1, 'access_token', '[]', 0, '2021-03-04 01:15:14', '2021-03-04 01:15:14', '2022-03-04 08:15:14'),
('3052016be0e7a14b53c632b4328bd3c9bf708b5cfd8a0cc4d2bd51411cd655aa79ada271a36daf3d', 4, 1, 'access_token', '[]', 0, '2021-03-04 02:41:48', '2021-03-04 02:41:48', '2022-03-04 09:41:48'),
('37896fc7bae7a1ac15a93acdeb43654fe082f8d295e076311a5e142c00a9bc9c56a9de89c87f49b1', 23, 1, 'access_token', '[]', 0, '2021-03-07 02:55:14', '2021-03-07 02:55:14', '2022-03-07 09:55:14'),
('3936bc92b281975cccfc3788687e4c2498ee361e6dad11966a9bf4050e23fa8cf3485b3c30d49e85', 23, 1, 'access_token', '[]', 0, '2021-03-07 03:06:53', '2021-03-07 03:06:53', '2022-03-07 10:06:53'),
('48a3c4cb3ca91bef289906cd4b9c170b7c2185e0096046a281f16f1c862a1f986cb249c75a1228df', 4, 1, 'access_token', '[]', 0, '2021-03-04 19:22:49', '2021-03-04 19:22:49', '2022-03-05 02:22:49'),
('4b56e942a8e2085cd871f4c8b39cd8644060ac855964f15d32f77b438ef3a9288355f30c64070fe9', 17, 1, 'access_token', '[]', 0, '2021-03-04 21:07:49', '2021-03-04 21:07:49', '2022-03-05 04:07:49'),
('4f6d5988f2e5fdc460b8d537e87a751f2fa0f2d9975ff9d81652f2302c8c465348d0940ecd5a79d2', 4, 1, 'access_token', '[]', 0, '2021-03-02 23:48:22', '2021-03-02 23:48:22', '2022-03-03 06:48:22'),
('5355daf226f393213a0774c716b8a319295e8f59abaf52cbdc7e3e1d42e4fad431b41bd07bd377bb', 4, 1, 'access_token', '[]', 0, '2021-03-02 23:50:01', '2021-03-02 23:50:01', '2022-03-03 06:50:01'),
('583b9deb0c7fd7df791af950f41199d11071ba38122b0788b22ca0c64b3f807a9a9507c5879edfcd', 4, 1, 'access_token', '[]', 0, '2021-03-04 21:50:03', '2021-03-04 21:50:03', '2022-03-05 04:50:03'),
('5b4a4b4cbea08e476dc7e5274ff840487ebc39e9febb73c2b306e6a01c8507ee638ed93b065bf783', 22, 1, 'access_token', '[]', 0, '2021-03-04 21:47:43', '2021-03-04 21:47:43', '2022-03-05 04:47:43'),
('67f7850a0fb4bb896b4036ab97e655fb64f4062cfd2a17cf7a87f24e303ac58183918b0d15bd04ae', 23, 1, 'access_token', '[]', 0, '2021-03-07 03:10:59', '2021-03-07 03:10:59', '2022-03-07 10:10:59'),
('6bb0beebec748ab94e1e45f775f63a1b8f9c485eed256759d7d5c47815c449a661508352d62ea423', 4, 1, 'access_token', '[]', 0, '2021-03-02 23:51:43', '2021-03-02 23:51:43', '2022-03-03 06:51:43'),
('70e4cf06b89c8e0a86d8030355550a21584d595bb92fa06d015fb2b88719c57f3ed6c245955af759', 20, 1, 'access_token', '[]', 0, '2021-03-04 21:13:05', '2021-03-04 21:13:05', '2022-03-05 04:13:05'),
('727411a0409f4bc8dcb6a5724db241fd475f880f10cd976cc4b7df2f7a33586703b41811d0e28324', 19, 1, 'access_token', '[]', 0, '2021-03-04 21:09:20', '2021-03-04 21:09:20', '2022-03-05 04:09:20'),
('74caf6dd0576b49c11ba891f79232fe9e0f766529e4203b80f9bcb0bd97429f9cfd2afd92ed62f0b', 4, 1, 'access_token', '[]', 0, '2021-03-04 19:19:14', '2021-03-04 19:19:14', '2022-03-05 02:19:14'),
('7a0e81bfca458375e800ea30d9bf5c1723d474e1f99383d45467d678e7e0ed8b103a77380ba50b1d', 4, 1, 'access_token', '[]', 0, '2021-03-04 19:29:09', '2021-03-04 19:29:09', '2022-03-05 02:29:09'),
('8745c0c47499f03f848ee5e73a20dd321140e92669a430bfdc007ca3f8104aa5c600a9dc2780530e', 4, 1, 'access_token', '[]', 0, '2021-03-04 19:38:56', '2021-03-04 19:38:56', '2022-03-05 02:38:56'),
('8b5c3a79c469c7e23a01519092e04e610362d93f1d6a77bfed2b54acfad259788c510fa0aae24f04', 3, 1, 'access_token', '[]', 0, '2021-03-02 21:45:53', '2021-03-02 21:45:53', '2022-03-03 04:45:53'),
('8ee70dd904f7f94c0689a18be28f6db2c1044ed677e896f6694be543b033bf2073895e8608af22db', 23, 1, 'access_token', '[]', 0, '2021-03-07 03:38:28', '2021-03-07 03:38:28', '2022-03-07 10:38:28'),
('92d3c29e56a5c5e416a9d6826632d8f82a5ca234c562ccd4ba646d58885de260b125414863354ab2', 23, 1, 'access_token', '[]', 0, '2021-03-07 03:26:30', '2021-03-07 03:26:30', '2022-03-07 10:26:30'),
('95849b5e37074d1b6db3416539a5f0052d30676fa3588d4be68827eba33c60cfb2e56769fa72481b', 4, 1, 'access_token', '[]', 0, '2021-03-04 03:01:44', '2021-03-04 03:01:44', '2022-03-04 10:01:44'),
('96311a3687b498125fcf2e4136433ae9e864ace3272fd3ac919a7bd0dcaf981da1fb0e84a8b889c2', 23, 1, 'access_token', '[]', 1, '2021-03-07 04:13:18', '2021-03-07 04:13:18', '2022-03-07 11:13:18'),
('971ae4f0e56e9677cd7def30e6fe02e0a048e1e96565efc960e759d97d5ef062fec4bb72f2abfb6e', 23, 1, 'access_token', '[]', 0, '2021-03-07 03:14:47', '2021-03-07 03:14:47', '2022-03-07 10:14:47'),
('9b0cd9c2e62f2239b6455c45b47065d44b9e763104a36c885e93a3ed87dc2ace09e1afc92de15ee5', 5, 1, 'access_token', '[]', 0, '2021-03-03 23:55:39', '2021-03-03 23:55:39', '2022-03-04 06:55:39'),
('9c3e6b2e9b77a795bdfd2975c9332c37a7a5cfafc8dfcaa4474333f70ee6c205348f162945a8590e', 14, 1, 'access_token', '[]', 0, '2021-03-04 20:00:50', '2021-03-04 20:00:50', '2022-03-05 03:00:50'),
('a46cc3dbb1cd7ef1c45f768e287f2fbb67512b9f54885338a34d3fd6ed4c30e7b0ea341c637374d1', 23, 1, 'access_token', '[]', 0, '2021-03-07 04:06:32', '2021-03-07 04:06:32', '2022-03-07 11:06:32'),
('abba33a4a7bddb9e76be636c91bee58b6ff5fb28fc5b153a54f8bca4e0ab086717bcc2c8b74da85a', 18, 1, 'access_token', '[]', 0, '2021-03-04 21:08:30', '2021-03-04 21:08:30', '2022-03-05 04:08:30'),
('b0f55382797f5be54500c6ffd5954118b21b446af43eae499b0324d5e779fa633a4ad76defa064b5', 4, 1, 'access_token', '[]', 0, '2021-03-04 20:25:48', '2021-03-04 20:25:48', '2022-03-05 03:25:48'),
('b14b5b0542e203a115ce127252f804ee29b8fcef17dbe1d07b4f8701478e6ae2568ac662e7b35d39', 4, 1, 'access_token', '[]', 0, '2021-03-04 19:37:26', '2021-03-04 19:37:26', '2022-03-05 02:37:26'),
('b1b210fed83e3116be7ef19955435026349a218a6480551aface581499cd513b2e26c4daf5eacdc8', 4, 1, 'access_token', '[]', 0, '2021-03-07 02:52:07', '2021-03-07 02:52:07', '2022-03-07 09:52:07'),
('b2444ee87a0e46b7532a436cf9ec3da9be6d2f0716492df99ccfbd118314dc56fa863701bf48bdad', 4, 1, 'access_token', '[]', 0, '2021-03-04 03:32:32', '2021-03-04 03:32:32', '2022-03-04 10:32:32'),
('b7d8f3e34366e27215305d61ed03d2aa3aaf1905a7890d61b0d7378fbf410018c64b4bbcb7d79e87', 4, 1, 'access_token', '[]', 0, '2021-03-07 02:40:01', '2021-03-07 02:40:01', '2022-03-07 09:40:01'),
('c0b11a4f9fcb95037dccd586cfc1f7857c632585580667c0e4b513a700440aecdb897c5ad2ab4804', 23, 1, 'access_token', '[]', 0, '2021-03-07 02:54:58', '2021-03-07 02:54:58', '2022-03-07 09:54:58'),
('cca5d3566894b42f5fe58f03838a2b9ed30a55817a8490787ea9c031445a1c3a3e512749da5be4c4', 21, 1, 'access_token', '[]', 0, '2021-03-04 21:46:54', '2021-03-04 21:46:54', '2022-03-05 04:46:54'),
('daa241f5be1d733f0899101339f00403fafb2e852b3b0c781db8de280284aa735bc4128c09b37c31', 4, 1, 'access_token', '[]', 0, '2021-03-02 23:47:17', '2021-03-02 23:47:17', '2022-03-03 06:47:17'),
('e2c3cbbe0881fb896a7146c8c970e7d36c26cd98b35b26765baffed700b5fb9e5dde8218858bdf7f', 4, 1, 'access_token', '[]', 0, '2021-03-07 02:38:49', '2021-03-07 02:38:49', '2022-03-07 09:38:49'),
('f0266b0bcd7bd48150ab58fa486a5ecda23db3c6a9fd84c7239120663c623bbaddfc9bb9cd53e8f7', 4, 1, 'access_token', '[]', 0, '2021-03-07 02:47:49', '2021-03-07 02:47:49', '2022-03-07 09:47:49'),
('f2e871faf6b7ab68c56df0ab3c51bc9605edc9adea4b555f143f779e7f69967e51742975901eb22a', 4, 1, 'access_token', '[]', 0, '2021-03-04 19:34:53', '2021-03-04 19:34:53', '2022-03-05 02:34:53'),
('f4fdade6765e516f1d7da258085291ff71d878047b5ae89429a0d670c0d63aabebd0fee70cb58a20', 11, 1, 'access_token', '[]', 0, '2021-03-04 19:54:30', '2021-03-04 19:54:30', '2022-03-05 02:54:30'),
('f6ed92d52b548526ac830f1ce622d0d1ce1fdc0e531fe0d74d5f61ff9198b672426d891a767993fa', 7, 1, 'access_token', '[]', 0, '2021-03-04 01:08:55', '2021-03-04 01:08:55', '2022-03-04 08:08:55'),
('fde0835f34444e060ecb688d2a9e6aea31aa0d7f9d2a0c9afa6e0bd31a3a793c70679e67b149d24c', 6, 1, 'access_token', '[]', 0, '2021-03-04 01:08:23', '2021-03-04 01:08:23', '2022-03-04 08:08:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'qZlPaZ7QytbZylRQ41h2c43WhhTxZhpwX05aUkOL', NULL, 'http://localhost', 1, 0, 0, '2021-03-02 19:42:50', '2021-03-02 19:42:50'),
(2, NULL, 'Laravel Password Grant Client', 'h8fffwZW0mNL3Y8UFUHSxzPvVa3cQFw5gKA9UcBz', 'users', 'http://localhost', 0, 1, 0, '2021-03-02 19:42:50', '2021-03-02 19:42:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-02 19:42:50', '2021-03-02 19:42:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Tri', 'tri@mail.com', NULL, '$2y$10$x01vELoyB28OtQTAvFXgM.S0Hxo7aD5eGWyOMUvxv1Z2xSRjX1dpC', NULL, '2021-03-02 23:47:15', '2021-03-02 23:47:15'),
(22, 'Tri Putra', 'tri@mail.id', NULL, '$2y$10$rHEs1ZqcF75MTpDh0V43mO79NIiTvHfnEmHxOF2E9hA2c3cq8oP8u', NULL, '2021-03-04 21:47:43', '2021-03-04 21:47:43'),
(23, 'Tri Putra Ardiyansah', 'tri@ard.com', NULL, '$2y$10$Abk5gjsoxcwsfe3dq/sSQuv0IL6xYeNP3B72hDF16ma7oscOp2D6C', NULL, '2021-03-07 02:54:58', '2021-03-07 02:54:58');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
