-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jan 2023 pada 19.01
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metaverse_event`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activities`
--

INSERT INTO `activities` (`id`, `name`, `slug`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Berinteraksi dengan temanmu', 'berinteraksi-dengan-temanmu', '<div>Nikmati keasikan suasana di Sorak Sorai bersama temanmu! Selain kalian bisa hangout, kalian juga bisa berinteraksi antara satu sama lain dengan mudah dan membuat diri kalian lebih dekat loh! Tidak hanya itu saja, kalian juga bisa mendapatkan teman-teman baru di Sorak Sorai!&nbsp;</div>', 'post-images/xSxiaL8xtdo3L3caQaGGSP7BBetPg3kp8Bi37BMX.png', '2022-10-10 03:13:54', '2022-10-10 03:13:54'),
(2, 'Makanan dan Minuman Virtual', 'makanan-dan-minuman-virtual', '<div>Kamu takut kelaparan selama mengikuti acara? Tidak usah khawatir, Sorak Sorai juga menyediakan berbagai booth yang menjual makanan dan minuman! Kamu bebas melakukan eksplorasi terhadap berbagai booth yang ada dan tinggal memilih makanan favoritmu! Proses pembeliannya juga mudah banget, hanya memerlukan beberapa kali klik dan tunggu makanan favoritmu di Rumah!&nbsp;</div>', 'post-images/q2BZ8oz0ISFvnIVnHEbJH4fqkRpDMC9FSmUK9sKF.png', '2022-10-10 03:14:36', '2023-01-30 08:33:48'),
(3, 'Konser Virtual', 'konser-virtual', '<div>Ayo rasakan pengalaman ikut konser virtual di Sorak Sorai! Kapan lagi kan kamu bisa vibing menonton konser dari artis favoritmu tampil di atas panggung yang unik dan anti-mainstream! Oh ya, setelah selesai konser, juga tersedia meet and greet secara santai loh dengan idola kamu!&nbsp;</div>', 'post-images/NMAUgdPfAsxDDujBQvc9q43y1kGixuYvYZrmpNUJ.png', '2022-10-10 03:15:16', '2022-10-10 03:15:16'),
(4, 'Aktivitas Seru', 'aktivitas-seru', '<div>Ada banyak banget berbagai aktivitas seru di Sorak Sorai! Dari mulai menghabiskan waktu bersama teman, bermain berbagai games yang unik, melakukan eksplorasi ke pulau-pulau yang anti-mainstream, dan lainnya! Bukan hanya itu saja, kamu juga bisa membuat custom karakter kamu dan menampilkan OOTD kamu di Sorak Sorai loh!&nbsp;</div>', 'post-images/jAFSRnutGtx25OFgrMU6CGi7SBPxcwldMukxHVfq.png', '2022-10-10 03:15:53', '2022-10-10 03:15:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`) VALUES
(1, 'Pakaian', 'pakaian'),
(2, 'Alat Tulis dan Kantor', 'alat-tulis-dan-kantor'),
(3, 'Kebutuhan Rumah', 'kebutuhan-rumah'),
(4, 'Mini Souvenir', 'mini-souvenir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Gallery 1', 'post-images/pW3poatPTo2ldfwEGhcnzw0VuVJJbpAAfRGW6mbT.png', '2022-10-10 03:17:05', '2022-10-10 03:17:05'),
(3, 'Gallery 2', 'post-images/OMqSXQ2XuU1roShLi0RczRO663qubsujjfUji8DN.png', '2022-10-10 03:17:19', '2022-10-10 03:17:19'),
(4, 'Gallery 3', 'post-images/RR2cnP46oK9zlxpsZmvzAU7VWmMJmQEk9gJAyH2C.png', '2022-10-10 03:17:32', '2022-10-10 03:17:32'),
(5, 'Gallery 4', 'post-images/bdziPYwJIKJG6eB8NT3LwjK2PsFFBk1Ay6nYocX7.png', '2022-10-10 03:17:50', '2022-10-10 03:17:50'),
(6, 'Gallery 5', 'post-images/ERgLHsVv3A0YfzDDUcj1UglJQuF4nG2No6DWQHaD.png', '2022-10-10 03:18:05', '2022-10-10 03:18:05'),
(7, 'Gallery 6', 'post-images/WYCunJYbCBkPb2oYPFdsQVKbYGGGcGfeCRlRBsIw.png', '2022-10-10 03:18:21', '2022-10-10 03:18:21'),
(8, 'Gallery 7', 'post-images/xkFPRj5e72JNvBM9JHZJ4ITuFw2MrCi6xzHIpWLx.png', '2022-10-10 03:18:34', '2022-10-10 03:18:34'),
(9, 'Gallery 8', 'post-images/HdAIiBLxjAZWW0GYib2fstDapkjwSbj7TX0RqJaN.png', '2022-10-10 03:18:48', '2022-10-10 03:18:48'),
(10, 'Gallery 9', 'post-images/OA4QfTmu3LPwrtIWX8sFpEBOznsuBAqZSN5blc7b.png', '2022-10-10 03:19:35', '2022-10-10 03:19:35'),
(11, 'Gallery 10', 'post-images/T9Fj2hKXGPlfeT9IVcsCN5zsiNF5dYXxZKxOBPNi.png', '2022-10-10 03:20:09', '2022-10-10 03:20:09'),
(13, 'Gallery 11', 'post-images/neggR0SFBCTf1BQ5UvB6DazBmfyBcfDHkJQWQ7XL.png', '2022-10-10 03:21:15', '2022-10-10 03:21:15'),
(14, 'Gallery 12', 'post-images/FXPKRO0E8HWFNTIpBHsQ7KEKuVhUX3jQWi04KA9A.png', '2022-10-10 03:21:43', '2022-10-10 03:21:43'),
(15, 'Gallery 13', 'post-images/CUtRHd2YxkFYoZamQ7J3KAlDqCVxlvkITgma4szX.png', '2022-10-10 03:22:13', '2022-10-10 03:22:13'),
(16, 'Gallery 14', 'post-images/PnKPgDLuKsJ3pA4pyFYmOqlk9VH1QpRaSeVDYRBh.png', '2022-10-10 03:22:36', '2022-10-10 03:22:36'),
(17, 'Gallery 15', 'post-images/qaBEgztKqkaCsLry8eqPB8U9sOtxKayJTTGl9yqJ.png', '2022-10-10 03:23:34', '2022-10-10 03:23:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lineups`
--

CREATE TABLE `lineups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `starttime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endtime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availableScheduleDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dueDateSchedule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lineups`
--

INSERT INTO `lineups` (`id`, `name`, `slug`, `schedule_id`, `date`, `starttime`, `endtime`, `availableScheduleDate`, `dueDateSchedule`, `status`, `information`, `image`, `published_at`, `created_at`, `updated_at`) VALUES
(5, 'Afgan', 'afgan', 5, '2023-10-22', '18:00', '20:00', '2023-10-22 18:00:00', '2023-10-22 20:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.</div>', 'post-images/AvS6hrkusuG8m7LLHHnOaUkPIHAZD63yp6pFbfPd.jpg', '2023-01-08 16:10:49', '2022-10-10 02:21:05', '2023-01-08 16:10:49'),
(6, 'Arsy ft Tiara', 'arsy-ft-tiara', 5, '2023-10-22', '21:00', '23:00', '2023-10-22 21:00:00', '2023-10-22 23:00:00', 'available', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/Q0k40IwtDhqqsvscFsRTCZejmXn2SBxzXqi3ZxIE.jpg', '2023-01-08 16:11:04', '2022-10-10 02:22:47', '2023-01-08 16:11:04'),
(7, 'Denny Caknan', 'denny-caknan', 5, '2023-10-23', '18:00', '23:00', '2023-10-23 18:00:00', '2023-10-23 23:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/lF61FwT83URwumJDbKw8rErzGLs4rbGyHUd0UajS.jpg', '2023-01-08 16:11:19', '2022-10-10 02:24:06', '2023-01-08 16:11:19'),
(8, 'D\'masiv', 'dmasiv', 7, '2023-12-01', '20:00', '22:00', '2023-12-01 20:00:00', '2023-12-01 22:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/M429id1iZiuZiRScVWnxpRggvD5N8kodydcqBEPV.jpg', '2023-01-08 16:11:36', '2022-10-10 02:26:13', '2023-01-08 16:11:36'),
(9, 'Fiersa Besari', 'fiersa-besari', 7, '2023-12-02', '20:00', '23:00', '2023-12-02 20:00:00', '2023-12-02 23:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/T6bdqLuMpiu5rpruh5btOfnawjn8ER7wo0mseWaj.jpg', '2023-01-08 16:11:50', '2022-10-10 02:27:26', '2023-01-08 16:11:50'),
(10, 'Hivi!', 'hivi', 6, '2023-11-01', '19:00', '21:00', '2023-11-01 19:00:00', '2023-11-01 21:00:00', 'available', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/qsb9TjncjglTqjVUN4eMTKTZFwUyZrgqZEMxD1bL.jpg', '2023-01-08 16:12:06', '2022-10-10 02:29:23', '2023-01-08 16:12:06'),
(11, 'Isyana Sarasvati', 'isyana-sarasvati', 6, '2023-11-01', '21:00', '23:00', '2023-11-01 21:00:00', '2023-11-01 23:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/QeoWKOIHZLv6rvynusc4Xhwef7VUoSXQoyP4ujwO.jpg', '2023-01-08 16:12:23', '2022-10-10 02:30:58', '2023-01-08 16:12:23'),
(12, 'Juicy Luicy', 'juicy-luicy', 10, '2023-03-15', '16:00', '20:00', '2023-03-15 16:00:00', '2023-03-15 20:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/xPwA5JWiGg7cngXUlLZLInrMo85GxWyTZ5HiJuMC.jpg', '2022-10-10 09:33:52', '2022-10-10 02:33:52', '2022-10-10 02:33:52'),
(13, 'Kahitna', 'kahitna', 10, '2023-03-16', '16:00', '20:00', '2023-03-16 16:00:00', '2023-03-16 20:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/zumBokdHSCsbMzeuBfSZtQGRxGjgWcp3PbVTWqmR.jpg', '2022-10-10 09:35:12', '2022-10-10 02:35:12', '2022-10-10 02:35:12'),
(14, 'Maliq & D\'essentials', 'maliq-dessentials', 10, '2023-03-17', '16:00', '20:00', '2023-03-17 16:00:00', '2023-03-17 20:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/pXh3j9oq5Pp58FzKI5D7tqvOj6sg4wuODqqyuIOI.jpg', '2022-10-10 09:36:58', '2022-10-10 02:36:58', '2022-10-10 02:36:58'),
(15, 'Nadin Amizah', 'nadin-amizah', 8, '2023-12-31', '16:00', '18:00', '2023-12-31 16:00:00', '2023-12-31 18:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/J7mtFVosOixDubdNjJGidkJ0vIvF0Ols8jVifeTG.jpg', '2023-01-08 16:13:04', '2022-10-10 02:39:38', '2023-01-08 16:13:04'),
(16, 'Padi Reborn', 'padi-reborn', 8, '2023-12-31', '19:00', '22:00', '2023-12-31 19:00:00', '2023-12-31 22:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/SrNdjA3EKhQ1YrL4J6WptHCFO3N6WGawLhKPV4Mv.jpg', '2023-01-08 16:13:43', '2022-10-10 02:40:57', '2023-01-08 16:13:43'),
(17, 'RAN', 'ran', 8, '2023-12-31', '23:00', '01:00', '2023-12-31 23:00:00', '2023-12-31 01:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/PvzEuwiqVLm7yKja3HUa5SmWak3O3GlXV824yySy.jpg', '2023-01-30 15:25:43', '2022-10-10 02:42:06', '2023-01-30 08:25:43'),
(18, 'Rizky Febian', 'rizky-febian', 9, '2023-02-28', '16:00', '19:00', '2023-02-28 16:00:00', '2023-02-28 19:00:00', 'available', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/UDBkPJf9kOxWFuZWV5VLnN4VlMfWNAq24a10F7s1.jpg', '2023-01-08 16:16:09', '2022-10-10 02:44:22', '2023-01-08 16:16:09'),
(19, 'Soegi Bornean', 'soegi-bornean', 9, '2023-02-28', '20:00', '23:00', '2023-02-28 20:00:00', '2023-02-28 23:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/jC9csBaNzZX4CDLabhUw4QVMio8S2lbGeRtwEKN0.jpg', '2023-01-08 16:17:35', '2022-10-10 02:45:41', '2023-01-08 16:17:35'),
(20, 'Tulus', 'tulus', 9, '2023-03-02', '17:00', '23:00', '2023-03-02 17:00:00', '2023-03-02 23:00:00', 'available', '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus. Quisque blandit tempus lorem ac tincidunt.&nbsp;</div>', 'post-images/jmzuli0Pc9y4zJsAxbcmLo4IeTJ0iL8Nfua6IG75.jpg', '2023-01-08 16:17:55', '2022-10-10 02:46:33', '2023-01-08 16:17:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `media`
--

INSERT INTO `media` (`id`, `name`, `link`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Brilio', 'https://www.brilio.net/', 'post-images/0FdEnibTHI2RMCoj0813H6ER8IUU7SRj13fsFDxd.png', '2022-10-10 03:03:37', '2022-10-10 06:46:08'),
(3, 'CXO Media', 'https://www.cxomedia.id/', 'post-images/EAJc8bW4XvsSO3PaAfoTftTA42p8Ubhffv6eSNM8.png', '2022-10-10 03:04:16', '2022-10-10 06:45:45'),
(4, 'Gen FM', 'https://gen987fm.com/streaming', 'post-images/EPWmGw9d09noljfjV5GIZjwgeM7Bd6BLoAjqxKCn.png', '2022-10-10 03:04:48', '2022-10-10 06:45:24'),
(5, 'Indozone', 'https://www.indozone.id/', 'post-images/Yw9oZKM8kx4FY3GXb6yoyKk681pfIW3WEuLdJlGa.png', '2022-10-10 03:05:18', '2022-10-10 06:45:09'),
(6, 'Inews', 'https://www.inews.id/', 'post-images/NcX5gaJ5MypV9DeVIaC0xKC2aL4lOWqTSbtZgtC6.png', '2022-10-10 03:05:47', '2022-10-10 06:44:48'),
(7, 'Kapan Lagi', 'https://www.kapanlagi.com/', 'post-images/rWyM0LnCsEWHf3VxgjBaOFFBQMMhQMNHuGUNrIx3.png', '2022-10-10 03:06:11', '2022-10-10 06:44:31'),
(8, 'Liputan 6', 'https://www.liputan6.com/', 'post-images/BPqOhFUZVCWSOIbNv06qs4K89jwroVgT5AxKO3Wc.png', '2022-10-10 03:06:43', '2022-10-10 06:44:11'),
(9, 'Medcom', 'https://www.medcom.id/', 'post-images/bUZSQOF8WAfj8LHjzqlLyVLmoKjRJriObIRlmcMX.png', '2022-10-10 03:07:11', '2022-10-10 06:43:53'),
(10, 'Mousaik', 'https://www.instagram.com/mousaik/?hl=id', 'post-images/NUejRlZhNgYWZzvbDocyAgBFogKNjSu8zYooWd8K.png', '2022-10-10 03:08:00', '2022-10-10 06:43:38'),
(11, 'Oke Zone', 'https://www.okezone.com/', 'post-images/BY7uob8dlfhAJh2bdFfZ8SDIb4NBHtUHdozcMEe9.png', '2022-10-10 03:08:27', '2022-10-10 06:43:23'),
(12, 'Popmama', 'https://www.popmama.com/', 'post-images/oSsg3WeLTq25yS2mZSKaEW9hPpy1frU4RNgLhVkG.png', '2022-10-10 03:08:50', '2022-10-10 06:43:09'),
(14, 'Viva', 'https://www.viva.co.id/', 'post-images/ypYBiYa0V6UfZ5RJWrPRNhyqihu90jCDHzORRx4U.png', '2023-01-30 08:32:50', '2023-01-30 08:32:50');

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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_06_13_032549_create_roles_table', 1),
(4, '2022_06_13_033100_create_categories_table', 1),
(5, '2022_06_13_033653_create_galleries_table', 1),
(6, '2022_06_13_034158_create_schedules_table', 1),
(7, '2022_06_13_035050_create_orders_table', 1),
(8, '2022_06_20_022903_create_activities_table', 1),
(9, '2022_06_20_023441_create_lineups_table', 1),
(10, '2022_06_20_024246_create_media_table', 1),
(11, '2022_06_20_030101_create_posts_table', 1),
(12, '2022_06_20_033337_create_sponsors_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gross_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `status`, `user_id`, `number`, `uname`, `email`, `schedule_id`, `transaction_id`, `order_id`, `gross_amount`, `payment_type`, `payment_code`, `pdf_url`, `created_at`, `updated_at`) VALUES
(6, 'settlement', 10, 'Sorak Boy', 'sorakboy', 'sorakboy@gmail.com', 9, 'b901d8d7-d560-4f43-afab-f076c283d3f7', '684561945', '300000.00', 'bank_transfer', NULL, 'https://app.sandbox.midtrans.com/snap/v1/transactions/1764f0ed-8929-41ed-94ab-acfb59897c75/pdf', '2023-01-30 08:53:03', '2023-01-30 08:53:03'),
(8, 'pending', 12, 'Sorai Girl', 'soraigirl', 'soraigirl@gmail.com', 10, 'b492eb72-658b-4856-affb-75ab3f5f4b70', '1032850653', '200000.00', 'bank_transfer', NULL, 'https://app.sandbox.midtrans.com/snap/v1/transactions/3b80ad37-f0a6-46e2-b605-1f1068cfef21/pdf', '2023-01-30 10:03:48', '2023-01-30 10:03:48'),
(9, 'pending', 12, 'Sorai Girl', 'soraigirl', 'soraigirl@gmail.com', 5, '08b7de00-7a83-43ad-b149-580fa651ee1c', '1035442164', '200000.00', 'echannel', NULL, 'https://app.sandbox.midtrans.com/snap/v1/transactions/31af9bee-3a98-48ae-9b8f-2168d3ccd215/pdf', '2023-01-30 10:23:43', '2023-01-30 10:23:43'),
(10, 'pending', 11, 'Dimas', 'dimas', 'dimas@gmail.com', 5, '5468713f-652a-4b25-9e48-742e8949b124', '433680631', '200000.00', 'bank_transfer', NULL, 'https://app.sandbox.midtrans.com/snap/v1/transactions/e313d076-62e0-424e-b386-b707e8b54a0f/pdf', '2023-01-30 10:25:49', '2023-01-30 10:25:49'),
(11, 'pending', 11, 'Dimas', 'dimas', 'dimas@gmail.com', 7, 'e63a2a16-f69b-4980-aba4-44df7e6c8196', '1602536923', '150000.00', 'bank_transfer', NULL, 'https://app.sandbox.midtrans.com/snap/v1/transactions/ab94dcb6-9e39-448e-b655-a4f9c47f17a1/pdf', '2023-01-30 10:28:37', '2023-01-30 10:28:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopeelink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `body`, `image`, `image2`, `image3`, `shopeelink`, `user_id`, `categories_id`, `published_at`, `created_at`, `updated_at`) VALUES
(5, 'Kaos Jumbo Wanita Little Boy Fit XXXL', 'kaos-jumbo-wanita-little-boy-fit-xxxl', 33311, '<div>Bahan spandex Halus<br>Fit XXXL Max BB 90kg<br>Ld 116cm<br>PJ 70cm<br>Variasi sablon berkualitas<br>Jangan tergiur harga lebih murah ya<br>Bahan kita lebih tebal dari toko sebelah .</div>', 'post-images/Kiyd2YsQxmWO3NVOOcLk8006QKex4Ve5lHBTi95B.jpg', 'post-images/9mPf3TFzPkLzQdiWrjQpRL65Sere4hvZP1gimYQa.jpg', 'post-images/yyR5q5hfagnN6eDBVrow7rvIK84Hr1xz8IH3mUhg.jpg', 'https://shopee.co.id/MAXY-DRESS-PREMIUM-GAMIS-SABRINA-by-HANA-i.366096478.17144709700?sp_atk=8c068622-7f70-45e1-9e87-b7dbd0626fa3', 5, 1, NULL, '2022-10-18 10:49:38', '2022-10-18 10:49:38'),
(6, 'Kaos Wanita Little Girl', 'kaos-jumbo-wanita-little-girl-xxxl', 32289, '<div>Bahan spandex soft<br>Size benar2 jumbo<br>Fit to XXXL Max BB 90kg<br>Ld 116 cm<br>PJ 70 cm<br>Sablon besar berkualitas<br>Real pict digeser aja ya fotonya&nbsp;</div>', 'post-images/QrR51W5u32oaWESNGKqu6pe6ZK5NOgC9yOYm1oBx.jpg', 'post-images/rzrv3oCR2MqCn2EBDmzaPd2Dl1CHqScFZAPAd7aV.jpg', 'post-images/YkPdWMVxXWHxCQNPPgPeORzGNKdHP3A2guDTdEs4.jpg', 'https://shopee.co.id/MAXY-DRESS-PREMIUM-GAMIS-SABRINA-by-HANA-i.366096478.17144709700?sp_atk=8c068622-7f70-45e1-9e87-b7dbd0626fa3', 5, 1, NULL, '2022-10-18 10:51:59', '2022-10-19 09:10:33'),
(7, 'Kaos Jumbo Mickey Fit XXXL', 'kaos-jumbo-mickey-fit-xxxl', 31247, '<div>Bahan spandex<br>fit to XXXL Max BB 90kg<br>Ld 116 cm<br>Pj 70 cm<br>Bahan lebih tebal dari toko sebelah .</div>', 'post-images/spzet1Jf11kITorsI4N1wS0v3YOhOWIz2CTYvgAd.jpg', 'post-images/SuC4JQuq92BtLNNxWOpm5Vf9OpY3eZ1cmwDiLJoY.jpg', 'post-images/cfz12klbqyWfHQmzMY311iV0xek5AzuJTaWk0RN8.jpg', 'https://shopee.co.id/MAXY-DRESS-PREMIUM-GAMIS-SABRINA-by-HANA-i.366096478.17144709700?sp_atk=8c068622-7f70-45e1-9e87-b7dbd0626fa3', 5, 1, NULL, '2022-10-18 10:54:13', '2022-10-18 10:54:13'),
(8, 'kaos wanita jumbo bordir Cha*nnel', 'kaos-wanita-jumbo-bordir-channel', 41645, '<div>Bahan spandex<br>Fit XL<br>Ld 110cm<br>PJ 67cm .</div>', 'post-images/0ROBONNXuKnTLuvoe1SRJNfqEig09kekLqI8UGen.jpg', 'post-images/0HdhSVDYpbN8qR5Xsgr0E14HQ6OdAIA5UW0Fzr9e.jpg', 'post-images/rHUoOzYm7dRxaq8OexvEzfmYlkiKDKCFN15E4a8r.jpg', 'https://shopee.co.id/MAXY-DRESS-PREMIUM-GAMIS-SABRINA-by-HANA-i.366096478.17144709700?sp_atk=8c068622-7f70-45e1-9e87-b7dbd0626fa3', 5, 1, NULL, '2022-10-18 10:56:43', '2022-10-18 10:56:43'),
(9, 'Kaos Oversize Three Butterfly', 'kaos-oversize-three-butterfly', 33718, '<div>Bahan spandex soft<br>Fit XL<br>Ld 110cm<br>Pj 67cm .</div>', 'post-images/wKZ20xZLQyJTtVRhyMZm6XQme8lPdWi73RVAMpct.jpg', 'post-images/cz0UNdEHihrDN3lCmBhpfIqq02SLsfwre8gZrBbh.jpg', 'post-images/e4IhNHy7ANGSJ0RoFAJJoSOhMpwrr4YvEqsCuaY4.jpg', 'https://shopee.co.id/MAXY-DRESS-PREMIUM-GAMIS-SABRINA-by-HANA-i.366096478.17144709700?sp_atk=8c068622-7f70-45e1-9e87-b7dbd0626fa3', 5, 1, NULL, '2022-10-18 10:58:39', '2022-10-18 10:58:39'),
(10, 'Jam Tangan Digital Analog G-Shock 2395', 'jam-tangan-digital-analog-g-shock-2395', 92714, '<div>&nbsp;JAM TANGAN PRIA ANTI AIR GS 2395 SPESIFIKASI PRODUK :&nbsp;<br>- Display : Analog Digital&nbsp;<br>- Genre : Men&nbsp;<br>- Mesin : Baterai&nbsp;<br>- Strap : Rubber&nbsp;<br>- Diameter : 4.8 cm&nbsp;<br>FITUR : Calender Light Alarm Stopwatch&nbsp;<br>BONUS : - Packing Jam DiJamin Aman Rapi Di Lapis Dgn Plastik Warp Dan Bubble Warp.&nbsp;<br>Peraturan Toko</div>', 'post-images/dYUwY0irlo2StM1Emzs0FqvbTb4aIKJvEi8vpl1S.jpg', 'post-images/Tz6qNuhwpVdlFCKPWSNOIVWzRKMOxcYlK0OrdUmJ.jpg', 'post-images/sTaZb7pv9Zuy88n2BdlENaTQNyq104hVxIf9Gyet.jpg', 'https://shopee.co.id/MAXY-DRESS-PREMIUM-GAMIS-SABRINA-by-HANA-i.366096478.17144709700?sp_atk=8c068622-7f70-45e1-9e87-b7dbd0626fa3', 5, 2, NULL, '2022-10-18 11:01:45', '2022-10-18 11:01:45'),
(11, 'Jam Tangan Pria Gshock Monster GX56 Kingkong', 'jam-tangan-pria-gshock-monster-gx56-kingkong', 61285, '<div>Deskripsi Produk<br>DETAIL PRODUK :<br>- Brand : Casio<br>- Display : Digital<br>- Kualitas : Super<br>- Bahan : Rubber<br>- Power : Batrai<br>- Diametar Lingkaran : 5 &amp; 4<br>FITUR<br>- Light<br>- Alarm<br>- Stopwatch<br>- Tgl,Bulan,Hari,DualTime<br>SETTING DIGITAL<br>- 12/24-hour format<br>- 1/1000 sec Stopwatch<br><br>Free : Batrai Cadangan&nbsp;</div>', 'post-images/L1Ib3E63jnroHM4qimn09lhNi9SJ2C0dBPXm62Hy.jpg', 'post-images/VsTVFRFG12ucBHFSDzrChn9W3H62EXNFmTOjr3UB.jpg', 'post-images/JvJywxr7iRauda2QbU94NtZtQ1WlAMZTSfe20Rcc.jpg', 'https://shopee.co.id/MAXY-DRESS-PREMIUM-GAMIS-SABRINA-by-HANA-i.366096478.17144709700?sp_atk=8c068622-7f70-45e1-9e87-b7dbd0626fa3', 5, 2, NULL, '2022-10-18 11:04:16', '2022-10-18 11:04:16'),
(12, 'Jam tangan pria Skmei 1260 All varian', 'jam-tangan-pria-skmei-1260-all-varian', 107000, '<div>SPESIFIKASI JAM TANGAN SKMEI : 1260 diameter<br><br>-BAHAN : stainless steel<br>-DISPLAY :&nbsp; DIGITAL/ANALOG<br>-MESIN : BATERAI<br>-DIAMETER : 4,9CM<br>-KUALITAS : SUPER ORIGINAL<br>-FiTUR : TIME skmei<br>-FREE : -BATRAI CADANGAN<br>jam tangan pria SKMEI sport analog/digital 1260 original arloji yang di produksi oleh SKMEI</div>', 'post-images/UWFttQe9NJB1nw4AHC2R5UjLr7m07cFe5WTrmLwm.jpg', 'post-images/awv703V6XKLNdqYkWM7kINP5ynkR8LJj52TrvSAX.jpg', 'post-images/LTD87QJStcldjXsOVZxSGAhF8g002t84lPAYEkvb.jpg', 'https://shopee.co.id/MAXY-DRESS-PREMIUM-GAMIS-SABRINA-by-HANA-i.366096478.17144709700?sp_atk=8c068622-7f70-45e1-9e87-b7dbd0626fa3', 5, 2, NULL, '2022-10-18 11:07:50', '2022-10-18 11:07:50'),
(13, 'Jam Tangan Wanita Briston Tali Kanvas', 'jam-tangan-wanita-briston-tali-kanvas', 35383, '<div>~Deskripsi Produk~<br>Brand : Briston&nbsp;<br>Kualitas : semi super<br>Display : analog chrono off tgl on<br>Diameter : 3.6cm&nbsp;<br>Tali : kanvas</div>', 'post-images/mYRfsvVSjAb8feqa8t7eiENCQFxee7aT1aE8TZ3z.jpg', 'post-images/4bQoBoQMCBkR3H8mnN3wGimcTXBQGetBhczN1w4P.jpg', 'post-images/y87Uuh9sTCrySo0I6iRu0Z0VFQqpBkf0cbOHOSsf.jpg', 'https://shopee.co.id/MAXY-DRESS-PREMIUM-GAMIS-SABRINA-by-HANA-i.366096478.17144709700?sp_atk=8c068622-7f70-45e1-9e87-b7dbd0626fa3', 5, 2, NULL, '2022-10-18 11:09:43', '2022-10-18 11:09:43'),
(14, 'Jam Tangan Pria SKMEI 1155 Sporty', 'jam-tangan-pria-skmei-1155-sporty', 89900, '<div>📌Merek : SKMEI<br>📌Type SK-1155<br>📌Model : Sport<br>📌Display : Dual Time&nbsp; (Analog &amp; Digital)<br>📌Bahan : Rubber<br>📌Diameter : 5cm<br>📌Tombol Setting Digital &amp; Tombol Lampu<br>📌Fitur : Lampu , Stopwatch , Alarm , Tanggal-Hari-Bulan , 24jam<br>📌Aman Untuk Cuci Tangan , Hujan &amp; Mandi&nbsp;<br>📌tanpa kotak jam (kotak jam d\'jual terpisah, silahkan cari produk d\'kolom pencarian dengan kata kunci \"BOX JAM\")</div>', 'post-images/LKFeeiMN6YICbJZA4gP5PBwe2xxsimZ2VyyIkEsk.jpg', 'post-images/lS65Wx3doQ8Kst7QujxMFY0LT8YA9CYPGKNWtusG.jpg', 'post-images/w86mFB82QqJjJISExss2KKCExKZITLQkx6GbYagO.jpg', 'https://shopee.co.id/MAXY-DRESS-PREMIUM-GAMIS-SABRINA-by-HANA-i.366096478.17144709700?sp_atk=8c068622-7f70-45e1-9e87-b7dbd0626fa3', 5, 2, NULL, '2022-10-18 11:13:08', '2022-10-18 11:13:08'),
(15, 'Lightstick handmade High Quality', 'lightstick-handmade-high-quality', 30000, '<div>&nbsp;Keterangan :&nbsp;<br>- Panjang Lightstick kurang lebih 14cm<br>- Memakai baterai A3<br>- Banyaknya baterai yang diperlukan untuk LS adalah 3 buah<br>- SUDAH TERMASUK BUBBLE WRAP + DUS<br>- SUDAH TERMASUK BATERAI<br>- Free gantungan tali (JIKA STOCK TERSEDIA)<br>- Free sticker (JIKA STOCK TERSEDIA)&nbsp;</div>', 'post-images/OEyvBLIpWR7H6FSfYjzk9jSz46emDQKdxlcGJsye.jpg', 'post-images/ba1XuOOI0b6bQMyNPHLwwC18idqnXoZYbcc92ixc.jpg', 'post-images/SGi7v525nlUnuEhMjfhS7ZgSWxz32C1MrSgUUS8k.jpg', 'https://shopee.co.id/PALING-MURAH-MERIAH!!!!-Lightstick-Lightstick-handmade-High-Quality-i.261367891.3969251007?sp_atk=7145ea3b-4e14-417e-83d3-b613fdb4a24b&xptdk=7145ea3b-4e14-417e-83d3-b613fdb4a24b', 5, 4, NULL, '2022-10-19 02:35:08', '2022-10-19 02:35:08'),
(16, 'Green Laser Pointer 303', 'green-laser-pointer-303', 49777, '<div>&nbsp;Spesifikasi:<br>* Laser Pointer<br>* Compact &amp; Portable Design<br>* Aluminium Body<br>* 1000mw<br>* Jarak 2km<br>* Panjang 16cm<br>* Lebar 2,2cm<br>* Daya Mengunakan Baterai Cas 18650 3.7V<br>* Panjang Gelombang : 532nm<br>* Sinar Fokus &amp; Mode Motif Variasi<br>* Reachargeable<br>* Lock Function<br>* Baterai dipasang dengan cara kutub positif menghadap ke belakang.&nbsp;</div>', 'post-images/YFlaPPqOLS8LLzuz9djqf5wOamgh4qs5TmykVW5G.jpg', 'post-images/OwffnX2kJ80ihJtUaSMyc06pD3VFFApX2zWAvsTm.jpg', 'post-images/H50c69L7N45zmKZtKvNkwAFainSTefq1fdWx3xwV.jpg', 'https://shopee.co.id/Green-Laser-Pointer-303-Laser-Hijau-Laser-Kunci-Keamanan%E2%AD%90-panda99-%E2%AD%90-i.202896851.7650308536?sp_atk=7264b346-38c4-4f58-9b1e-42e08dd0ca2e&xptdk=7264b346-38c4-4f58-9b1e-42e08dd0ca2e', 5, 4, NULL, '2022-10-19 02:36:29', '2022-10-19 02:36:29'),
(17, 'Gantungan Kunci Dinosaurus Lucu', 'gantungan-kunci-dinosaurus-lucu', 12888, '<div>&nbsp;100% brand new and high quality<br>Product : Gantungan Kunci Karakter<br>Pendant Height: 4-6 cm<br>Bahan : Acrylic + PVC<br>Packing List：<br>1×Keychain</div>', 'post-images/oOOu8r0xttop9BEhJElKVMxih9NqsM333uupm02l.jpg', 'post-images/GNVsIiLDT2pGDwlYrcYZCyAZhFYsmf9WjITUDUuz.jpg', 'post-images/eNW31mRNnG79YJ1br3D1OSELwQlTUEgBIotZFzpR.jpg', 'https://shopee.co.id/Gantungan-Kunci-Dinosaurus-Lucu-Keychain-Karakter-Gantungan-Kunci-Import-i.311369325.8787692273?sp_atk=13469cb8-56a8-4e3c-8aab-c30f4ec49fb6&xptdk=13469cb8-56a8-4e3c-8aab-c30f4ec49fb6', 5, 4, NULL, '2022-10-19 02:38:25', '2022-10-19 02:38:25'),
(18, 'Gantungan Kunci Astronot', 'gantungan-kunci-astronot', 16900, '<div>&nbsp;Tampil sporty, trendy dan eksklusif<br><br>Ini adalah gantungan kunci sempurna untuk kunci anda.<br><br>Terbuat dari bahan poliester yang lembut dan tidak hanya terlihat bagus sebagai pendamping kunci anda, tapi juga tidak akan menggores permukaan kendaraan kesayangan anda.<br><br>Tapi tunngu dulu, ini bukan saja digunakan untuk kendaraan anda, melainkan dapat anda pasangkan pada setiap kunci yang anda miliki dirumah ataupun ditempat kerja anda, juga pada tas, maupun pada peralatan anda.<br><br>Dikerjakan oleh tenaga terampil sehingga menghasilkan produk yang epik, berkualitas dan membanggakan.<br><br>Diproses menggunakan teknologi transfer printing terbaru, dimana hasil cetak yang memukau, tidak mudah pudar dan awet untuk waktu yang cukup lama.&nbsp;</div>', 'post-images/7sHU6pAUnAXvxbRbcVTdrr2H6VDtPkcNpj0pwQuT.jpg', 'post-images/YBlfXHQGPFoWRVetWAmitzn7Orionxee0qnWhf4Q.jpg', 'post-images/znCFRkISfiKVQ3c3s5LHxoUnyAgiv0dAOXyUeHdy.jpg', 'https://shopee.co.id/Gantungan-Kunci-Astronot-Gantungan-Tas-Karakter-Lucu-Import-Keychain-Kaws-258-i.772087100.18234385128?sp_atk=1d7fbe7d-3522-43b6-af8a-13addd50270a&xptdk=1d7fbe7d-3522-43b6-af8a-13addd50270a', 5, 4, NULL, '2022-10-19 02:40:31', '2022-10-19 02:40:31'),
(19, 'Lembar Stiker Viral Waterproof Motif Kartun', 'lembar-stiker-viral-waterproof-motif-kartun', 35000, '<div>READY STOCK!!!<br>1 Box 100 Lembar Stiker Motif Kartun Korea Lucu Anti Air Dekorasi Handbook Scrapbook<br><br>NOTE :<br>UNTUK PEMESANAN SILAHKAN KLIK VARIASI MOTIF YANG TERTERA PADA ETALASE PRODUK YA KAK.<br>Bahan: PET<br>Ukuran Kotak: 185*185*20 mm<br>Ukuran: 80*80mm<br>Paket Termasuk: 100 Lembar/BOX&nbsp;</div>', 'post-images/SwoSbRBX54irThs136eDDh5YDAxnSaOjXfJhFEI2.jpg', 'post-images/AZVvIYNalQgTLi3HeGAG2gPhIIAQixArSeuzHKUc.jpg', 'post-images/njeBPPrcS4oW4Z95JpQSuacXfVK08Ty9cXdLOFWi.jpg', 'https://shopee.co.id/100-Lembar-Stiker-Viral-Waterproof-Motif-Kartun-Korea-Lucu-Anti-Air-Dekorasi-Handbook-Scrapbook-DIY-i.183912824.19647644278?sp_atk=d85f5ee4-87c5-4bad-bc5c-7b0c0f8474b2&xptdk=d85f5ee4-87c5-4bad-bc5c-7b0c0f8474b2', 5, 4, NULL, '2022-10-19 07:11:48', '2022-10-19 07:11:48'),
(20, 'IKEA KNALLA Payung panjang hitam', 'ikea-knalla-payung-panjang-hitam', 119000, '<div>&nbsp;Artikel no<br>702.812.66<br>Kain: 100% poliester (min. 90% didaur ulang)<br>Rangka: Baja<br>Pegangan: Plastik EVA<br>Instruksi perawatan<br>Jangan dicuci.<br>Jangan gunakan pemutih.<br>Tidak jatuh kering.<br>Jangan diseterika.<br>Jangan cuci kering.<br>Bersihkan dengan air hangat.<br>Usap bersih dengan kain kering.<br>Panjangnya:	80 cm<br>Diameter:	105 cm<br>Artikel no:	702.812.66<br>Paket:	1<br>Panjangnya:	80 cm<br>Lebar:	<br>Tinggi:	<br>Berat Kotor:	0,33 kg<br>Berat Bersih:	0,33 kg<br>Volume per paket:	0,7 liter&nbsp;</div>', 'post-images/sldcjhgCd3AV4wG7Y00pwu5H8SBG31Vz7UdkZSFr.jpg', 'post-images/53pfp0IRWKWJEEtPgc2Pg8raJmBmxomY4GUSUkej.jpg', 'post-images/IQpZXZeYex6nqY2oFyS6ur62q6mbfYziuULsi2uR.jpg', 'https://shopee.co.id/-IKEA-KNALLA-Payung-panjang-hitam-i.794793505.20134999986?sp_atk=7e76d700-401f-490c-85fd-5bb72cfc0b53&xptdk=7e76d700-401f-490c-85fd-5bb72cfc0b53', 5, 3, NULL, '2022-10-19 07:14:56', '2022-10-19 07:14:56'),
(21, 'Piring /mangkok/gelas/set sendok ikea', 'piring-mangkokgelasset-sendok-ikea', 24000, '<div>&nbsp;Warna : pastel<br>Piring<br>Tinggi : 5 cm<br>Diameter : 19 cm<br>Bahan : BPA free<br>Gelas<br>Diameter 8 cm, Tinggi 17 cm<br>Volume = 230 ml&nbsp;</div>', 'post-images/grsqnvLH5AtJuM1pOW4n9jXCGVYOwwe3173Xgzmg.jpg', 'post-images/SpoxvuoZ2RqrUQbwS0FvYXSDCQ1YTwVdtxC3c9ZK.jpg', 'post-images/8MXFpRYrk0dD7DUL1uiF9ZMhWWGhDoulSGcHLxEz.jpg', 'https://shopee.co.id/Piring-mangkok-gelas-set-sendok-ikea-i.18870803.1311874473?sp_atk=eee60cf1-0f0b-45ec-aa5d-0f73f137a038&xptdk=eee60cf1-0f0b-45ec-aa5d-0f73f137a038', 5, 3, NULL, '2022-10-19 07:17:46', '2022-10-19 07:17:46'),
(22, 'IKEYA Stoples Tupperware Set wadah Bekal', 'ikeya-stoples-tupperware-set-wadah-bekal-aneka-ukuran-1set-isi-17pcs-orange-ikeya', 89000, '<div>&nbsp;Ike Stoples Tupperware Set wadah Bekal Aneka Ukuran (1Set Isi 17Pcs)_Orange OriKea<br><br>IKEAPRUTA<br><br>Tempat makanan, set isi 17, transparan<br><br>Note<br>Stok Ready dan siap kirim &nbsp;</div>', 'post-images/eX6JOvhnlSBEZE4vDbqnEHtgazV6xdicwb0m30SO.jpg', 'post-images/iCL1AT8f1GuAeiipaZrNrbF0S1w7YYa2fi19YKuM.jpg', 'post-images/S934H0eDAJK2ENKJDsJP2JIbGGkgqqJSUcDOAlSP.jpg', 'https://shopee.co.id/IKEYA-Stoples-Tupperware-Set-wadah-Bekal-Aneka-Ukuran-(1Set-Isi-17Pcs)_Orange-IKEYA-i.75461595.17678900188?sp_atk=171f6aec-a8b0-4589-aaaa-66934571e7e4&xptdk=171f6aec-a8b0-4589-aaaa-66934571e7e4', 5, 3, NULL, '2022-10-19 07:23:06', '2022-10-19 07:38:41'),
(23, 'STABILO BOSS HIGHLIGHTER ORIGINAL MURAH!!', 'stabilo-boss-highlighter-original-murah', 7200, '<div>&nbsp;Stabilo Yang Digunakan Banyak Orang Untuk Highlight Buku Atau Kata Kata Penting<br><br>Merek: Stabilo Boss<br>Warna: Kuning , Orange , Pink , Biru, Hijau, Merah, Ungu<br>1 Pak isi 10 Pcs&nbsp;</div>', 'post-images/DIDE6hOOgyVOrd1C7V00ausTSGK2uQF5uYb0vOIa.jpg', 'post-images/ZlWXoHACrYrwVeXkJoeJ5s4FEeGIIcvffC7thKOo.jpg', 'post-images/94DEze3xPl8FwuDmzOjmtNTm6GJ3uZ2d7fCHdgKh.jpg', 'https://shopee.co.id/STABILO-BOSS-HIGHLIGHTER-ORIGINAL-MURAH!!-i.208885296.4315957472?sp_atk=e694f944-2891-4f32-aed9-16a0bff35324&xptdk=e694f944-2891-4f32-aed9-16a0bff35324', 5, 2, NULL, '2022-10-19 07:26:49', '2022-10-19 07:26:49'),
(24, 'Fancy Bottle 500ml / Botol Minum Tupperware', 'fancy-bottle-500ml-botol-minum-tupperware-original-termurah', 80000, '<div>&nbsp;Botol minum ukuran 500ml hadir dengan pilihan warna yang seru untuk menemani aktivitasmu. Botol minum super kedap cairan dan udara sehingga menjaga kualitas air dan mencegahnya bocor dalam posisi apapun terutama saat dibawa-bawa.&nbsp;</div>', 'post-images/InxZJgvp5LobTr3EJRsPOEzMRfMtrdNGc3KhezIE.jpg', 'post-images/GtPntharEyY9XENlZWrA9ACc3OLKhc41gTuhvqHF.jpg', 'post-images/QRM9vvDf1WWjUyjKyrVqP7mwOqj2IIzBb6nG1YG0.jpg', 'https://shopee.co.id/Fancy-Bottle-500ml-Botol-Minum-Tupperware-Original-Termurah!-i.17693022.9964443534?sp_atk=34d1e647-7063-4ae2-9de9-522888ff9686&xptdk=34d1e647-7063-4ae2-9de9-522888ff9686', 5, 3, NULL, '2022-10-19 07:36:41', '2022-10-19 07:38:04'),
(25, 'STABILO liner 308FW Ballpoint', 'stabilo-liner-308fw-ballpoint-pulpen-pen', 10800, '<div>&nbsp;STABILO liner 308FW Ballpoint<br><br>CLICKS INTO PLACE FROM THE START<br><br>⭐ Pulpen dengan mekanisme klik<br>⭐ Tinta sangat halus<br>⭐ Comfortable grip-zone<br>⭐ Mata pena berbentuk jarum (0.38 mm) -&gt; tulisan lebih rapi<br>⭐ Terdapat klip -&gt; mudah di bawa-bawa<br>⭐ Tersedia dalam 3 warna tinta : Hitam, Biru, Merah<br><br>&nbsp;</div>', 'post-images/vbAaLIh8CNwLsW2NaWdgzRUQOnYIctWdIGjI29Of.jpg', 'post-images/aqypV9cDuqKWxDWjRGwbugpRFUSCkYh0AAJwrcDt.jpg', 'post-images/gat4NbjfIu2Dl2aHLiTI5j57k26wWtZCMODSsQG8.jpg', 'https://shopee.co.id/STABILO-liner-308FW-Ballpoint-Pulpen-Pen-i.145518269.17275106620?sp_atk=60087e83-ccdf-417c-baf0-c51f7e06126f&xptdk=60087e83-ccdf-417c-baf0-c51f7e06126f', 5, 2, NULL, '2022-10-19 08:11:07', '2022-10-19 09:10:04'),
(26, 'Sticky Notes Rainbow Cyber', 'stickiii-sticky-notes-rainbow-cyber', 7460, '<div>&nbsp;&gt; Kertas nyaman ditulis.<br>&gt; Perekat ekstra kuat<br>&gt; Dapat melekat di berbagai permukaan kering.<br>&gt; Bisa dilepas dan ditempel berulang kali<br>&gt; Menggunakan lem ramah lingkungan (water based)<br>&gt; Diproduksi dari pabrik ramah lingkungan bersertifikat ISO 14001 Environmental Management System<br><br>Sticky Notes Stickiii<br>Ukuran 3x5 inch<br>Isi 100 lembar/pak&nbsp;</div>', 'post-images/0mWCqS0BmbD1CTTP5tmp47T9ohz8XEHxYExCa1C3.jpg', 'post-images/6WgzNuiSK4p3wQQPV6e6T6hY7X94NAprdxfNXoqs.jpg', 'post-images/dM4HQ62W3QHPd9gr3sfnCSX95YkFIP8H8vwRfFlo.jpg', 'https://shopee.co.id/Stickiii-Sticky-Notes-Rainbow-Cyber-i.146923465.3186097542?sp_atk=ebbe30b6-576f-4199-890a-0c4d5d2d1cc5&xptdk=ebbe30b6-576f-4199-890a-0c4d5d2d1cc5', 5, 2, NULL, '2022-10-19 08:28:20', '2022-10-19 09:09:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `enddate` date DEFAULT NULL,
  `starttime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endtime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availableScheduleDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dueDateSchedule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vip` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `schedules`
--

INSERT INTO `schedules` (`id`, `name`, `price`, `description`, `image`, `date`, `enddate`, `starttime`, `endtime`, `availableScheduleDate`, `dueDateSchedule`, `status`, `vip`, `user_id`, `author`, `created_at`, `updated_at`) VALUES
(5, 'Konser Metaverse', 200000, '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tempor odio dolor, eget volutpat odio congue ac. Donec ac consequat magna. Aliquam non erat vel ante mattis elementum eu et neque. Aliquam laoreet, ante sed pellentesque varius, est lectus ornare mi, vitae sollicitudin turpis odio interdum eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;&nbsp;</div>', 'post-images/MMBheginSf9Gl4YA2tFjLLQ0w7AvbwJyjNEjYjKw.png', '2023-10-22', '2023-10-23', '17:00', '23:00', '2022-10-22 17:00:00', '2023-10-23 23:00:00', 'available', 0, 1, 'Super Admin', '2022-10-08 03:41:59', '2022-10-08 03:43:03'),
(6, 'Konser Festival Raya', 350000, '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tempor odio dolor, eget volutpat odio congue ac. Donec ac consequat magna. Aliquam non erat vel ante mattis elementum eu et neque. Aliquam laoreet, ante sed pellentesque varius, est lectus ornare mi, vitae sollicitudin turpis odio interdum eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;&nbsp;</div>', 'post-images/NyF3zQCLf3PakNpfNrInhYxyr10VX1kvt3yY0OPP.png', '2023-11-01', '2023-11-01', '18:00', '23:00', '2023-11-01 18:00:00', '2023-11-01 23:00:00', 'available', 1, 1, 'Super Admin', '2022-10-08 04:06:00', '2022-10-08 04:59:55'),
(7, 'Festival Jajanan Metaverse', 150000, '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tempor odio dolor, eget volutpat odio congue ac. Donec ac consequat magna. Aliquam non erat vel ante mattis elementum eu et neque. Aliquam laoreet, ante sed pellentesque varius, est lectus ornare mi, vitae sollicitudin turpis odio interdum eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;&nbsp;</div>', 'post-images/7I3ECYI27Vpj8En5ziDPiiPOlpd5jWm4ZIc9WG4U.png', '2023-12-01', '2023-12-02', '19:00', '22:00', '2023-12-01 19:00:00', '2023-12-02 22:00:00', 'available', 0, 1, 'Super Admin', '2022-10-08 04:08:38', '2022-10-08 05:02:19'),
(8, 'Gemerlap Tahun Baruan', 400000, '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tempor odio dolor, eget volutpat odio congue ac. Donec ac consequat magna. Aliquam non erat vel ante mattis elementum eu et neque. Aliquam laoreet, ante sed pellentesque varius, est lectus ornare mi, vitae sollicitudin turpis odio interdum eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;&nbsp;</div>', 'post-images/tPRDKBya2m6IUSvNYLJuGwmOPy3xO7rSNCVtJk9r.png', '2023-12-30', '2023-12-31', '15:00', '01:00', '2023-12-30 15:00:00', '2023-12-31 01:00:00', 'available', 1, 1, 'Super Admin', '2022-10-08 04:10:44', '2022-10-11 02:46:56'),
(9, 'Konser Raya', 300000, '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tempor odio dolor, eget volutpat odio congue ac. Donec ac consequat magna. Aliquam non erat vel ante mattis elementum eu et neque. Aliquam laoreet, ante sed pellentesque varius, est lectus ornare mi, vitae sollicitudin turpis odio interdum eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;&nbsp;</div>', 'post-images/qA3agG200SBGYKWRnezGI06yK53hWBFhwiKcN72s.png', '2023-02-28', '2023-03-02', '15:00', '23:00', '2023-02-28 15:00:00', '2023-03-02 23:00:00', 'available', 1, 1, 'Super Admin', '2022-10-08 05:01:52', '2023-01-08 16:16:49'),
(10, 'Jazz Festival', 200000, '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi elementum, massa eget iaculis placerat, ipsum nunc pulvinar dui, sed euismod nisl neque egestas ante. Quisque venenatis eu sem non varius. Phasellus cursus semper placerat. Pellentesque lacinia, felis sit amet interdum feugiat, neque dolor vulputate dolor, eget convallis lacus turpis id risus.</div>', 'post-images/wSwbjuWJ7o91agez8JRke1LURYOCFGdu3ZnpPgOD.png', '2023-03-15', '2023-03-17', '16:00', '23:00', '2023-03-15 16:00:00', '2023-03-17 23:00:00', 'available', 0, 1, 'Super Admin', '2022-10-10 02:18:08', '2023-01-30 08:28:27'),
(11, 'Event Metaverse Konser', 250000, '<div>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ut justo non lectus facilisis vehicula. Integer semper lorem vitae ligula imperdiet, et porta justo eleifend. Vivamus lobortis libero maximus, maximus neque eget, lobortis orci. In ullamcorper justo quis orci finibus, eu tincidunt justo tincidunt.&nbsp;</div>', 'post-images/hW3ueigzDe4b93BWM30NJdV9v4pqz1WWXLrzIvIY.png', '2023-12-30', '2023-12-31', '20:00', '02:00', '2023-12-30 20:00:00', '2023-12-31 02:00:00', 'deleted', 1, 5, 'Admin', '2022-10-11 02:13:05', '2022-10-11 02:49:00'),
(12, 'Event Gue Banget', 150000, '<div>Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum&nbsp;</div>', 'post-images/FUWH7p7LCVIASt5pT0vTGShlVSHuXEKSsbDbzuNm.png', '2023-11-05', '2023-11-05', '07:25', '08:26', '2023-11-05 07:25:00', '2023-11-05 08:26:00', 'soon', 1, 5, 'Admin', '2022-10-28 19:20:37', '2023-01-30 08:27:55'),
(13, 'Event Banget', 200000, '<div>soraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.comsoraksorai.in-math.com</div>', 'post-images/R3V0ruaF2bvREWkj0t2uDncSRGkODP5ZZAuGvYTu.jpg', '2023-11-05', '2023-11-05', '08:28', '09:28', '2023-11-05 08:28:00', '2023-11-05 09:28:00', 'soon', 0, 5, 'Admin', '2022-10-28 19:22:05', '2023-01-30 08:27:07'),
(14, 'Pesta Pora Cup', 89900, '<div>Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum&nbsp;</div>', 'post-images/MDe1WlEr10IB8sRz4Ab0bFZaB6IR8IumWeue6ha2.png', '2023-11-01', '2023-11-01', '03:30', '04:30', '2023-11-01 03:30:00', '2023-11-01 04:30:00', 'soon', 0, 5, 'Admin', '2022-10-28 19:30:25', '2023-01-30 08:27:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sponsors`
--

INSERT INTO `sponsors` (`id`, `name`, `link`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Asus', 'https://www.asus.com/id/', 'post-images/UJXWA8jVswWHu8rAl2hIXENx5JsleDd0GDX2ewvZ.png', '2022-10-10 02:50:35', '2022-10-10 02:50:35'),
(4, 'BCA', 'https://www.bca.co.id/', 'post-images/PUgPtEvFF4zlal3MYw58GIndjFn7Y7fJTw35WCEx.png', '2022-10-10 02:51:05', '2022-10-10 02:51:05'),
(5, 'Doritos', 'https://www.doritos.com/', 'post-images/HphNgjRj2g7Kk4sW7ZmQyOHA94gsACm4llGPbFyl.png', '2022-10-10 02:51:33', '2022-10-10 02:51:33'),
(6, 'Gojek', 'https://www.gojek.com/id-id/driver/', 'post-images/FRptCCixXNExCMkHAC1sk2OBzYbmhcZklfZSaEqL.png', '2022-10-10 02:52:15', '2022-10-10 02:52:15'),
(7, 'HnM', 'https://id.hm.com/', 'post-images/xVQoTRCSGAhGncUQwp6Ky9tpqApGjtu1oFcYhZmv.png', '2022-10-10 02:53:15', '2022-10-10 02:53:15'),
(8, 'Mozilla Hubs', 'https://hubs.mozilla.com/', 'post-images/PEOPCerLHycIs9imZhzpmmKn9vDUiHsgRYZiQKNn.png', '2022-10-10 02:53:44', '2022-10-10 02:53:44'),
(9, 'IKEA', 'https://www.ikea.co.id/in', 'post-images/S4VL0xmwUxV7ArvOESB5imVeopIZmOU1RSL5q30r.png', '2022-10-10 02:54:11', '2022-10-10 02:54:11'),
(10, 'Ilitho', 'https://www.ilitho.co.id/', 'post-images/N4KFC3l4BUvpqtTNkFuHKtvTzQwxJQnHD5ret3Ju.png', '2022-10-10 02:54:36', '2022-10-10 02:54:36'),
(11, 'Mizone', 'https://mizone.co.id/', 'post-images/Pz0SuBhwrxCkB1kIX9POcduPuHrS2s1BCbl5ne3d.png', '2022-10-10 02:54:58', '2022-10-10 02:54:58'),
(12, 'Ms Glow', 'https://msglowid.com/', 'post-images/EMLj0HtlGwL3IrDqaxQzzaKQPukhzHaJEAzxPPcO.png', '2022-10-10 02:55:23', '2022-10-10 02:55:23'),
(13, 'Panasonic', 'https://www.panasonic.com/id/', 'post-images/dacZoHqtOeZ0oIHOVbziZ5l5WXAI5zMFY6jFT9MP.png', '2022-10-10 02:55:49', '2022-10-10 02:55:49'),
(14, 'RPM', 'https://readyplayer.me/', 'post-images/hgfCgHIJNls5cKipB2Sb9Pu3WmzVkApE1Nj6x1IG.png', '2022-10-10 02:56:18', '2022-10-10 02:56:18'),
(15, 'Mie Sedaap', 'https://wingscorp.com/brand-detail/mie-sedaap/', 'post-images/qDGutjcWJVovAKPEQ817pju4BSP4DnmrltIA590t.png', '2022-10-10 02:57:09', '2022-10-10 02:57:18'),
(16, 'Shopee', 'https://shopee.co.id/', 'post-images/Dr6XHf6G22INWsz5lX2uZK1mmsEnoqymWYGAFnM3.png', '2022-10-10 02:57:57', '2022-10-10 02:57:57'),
(17, 'Sinar Dunia', 'https://sidu.id/', 'post-images/0Z3iX70Y1wqEI8cealWbfWaCd8Nf7pS37fm77EkU.png', '2022-10-10 02:58:24', '2022-10-10 02:58:24'),
(18, 'Stabilo', 'https://www.stabilo.com/', 'post-images/MXIAOvU1NbzgCG2HLTA0leTuNOMccKEdohH5ExRO.png', '2022-10-10 02:58:50', '2022-10-10 02:58:50'),
(19, 'Suzuki', 'https://www.suzuki.co.id/', 'post-images/MERUqcKYr2t89dn46W1Hy91n6PX0PnTmSVeQjIgf.png', '2022-10-10 02:59:13', '2022-10-10 02:59:13'),
(20, 'Teh Pucuk', 'https://www.tehpucukharum.com/', 'post-images/iJF0OMiusM9ZBZFN8Df7XkBoxF3QtPPD55KXo1cn.png', '2022-10-10 02:59:41', '2022-10-10 02:59:41'),
(21, 'Tokopedia', 'https://www.tokopedia.com/', 'post-images/YXfQrjNcJ4EaPSpiE408ts1ybFuDDApP3GT6EQzX.png', '2022-10-10 03:00:16', '2022-10-10 03:00:16'),
(22, 'Tupperware', 'https://www.tupperware.co.id/', 'post-images/9cHQca5CstLGgA8jYwqJFQC2sLRq6TjnoLqQD7uA.png', '2022-10-10 03:00:46', '2022-10-10 03:00:46'),
(23, 'Wonderful Indonesia', 'https://www.indonesia.travel/id/id/home', 'post-images/MrqdGrZ6s7vJ0UPyiTwQlK5vrVhlWHc1rTwqcZ9L.png', '2022-10-10 03:01:33', '2022-10-10 03:01:33'),
(24, 'XL', 'https://www.xl.co.id/', 'post-images/ynXiFPZKoh5CZ0SAtDjopde18QUuaFaABTGesp00.png', '2022-10-10 03:01:57', '2022-10-10 03:01:57'),
(25, 'ZARA', 'https://www.zara.com/id/', 'post-images/xdGhvpVJTFG6wA2BynzPefqFIH52ukkq8IJ0MZrw.png', '2022-10-10 03:02:22', '2022-10-10 03:02:22'),
(26, 'ACE Hardware', 'https://acehardware.co.id/', 'post-images/EsbN34S6tzOY9Yr6ySwFP9VjvGtFDdrEjcmt4w0i.png', '2023-01-30 08:31:34', '2023-01-30 08:31:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `password`, `photo`, `avatar`, `admin_id`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Admin', 'superadmin', 'superadmin@gmail.com', '$2y$10$yyZ8YL7.IM/IGWGiHU1FOOVC7D3gVaxNkN69auzSTF2//BvyNMnia', 'default.png', NULL, NULL, NULL, NULL, '2022-10-08 03:06:31', '2022-10-08 03:06:31'),
(5, 1, 'Admin', 'admin', 'admin@gmail.com', '$2y$10$C4gCxP5/SCdZqZwBSbnrf.3roaHLIhbdXoVjYgdnRcEFmgnW0Dhr6', 'default.png', NULL, NULL, NULL, NULL, '2022-10-11 01:01:32', '2022-10-11 01:01:32'),
(10, 2, 'Sorak Boy', 'sorakboy', 'sorakboy@gmail.com', '$2y$10$C7BiVHjQJLSTAYF2TSj5deT0V.OWk5KUISnn8/lmo6cMTok5jt31.', 'default.png', NULL, NULL, NULL, NULL, '2023-01-30 08:46:41', '2023-01-30 08:46:41'),
(11, 2, 'Dimas', 'dimas', 'dimas@gmail.com', '$2y$10$Z4./E1eDcolQJH76LuJBUO5FKooS4JOHXskud3UG9g.miaswcJ5o2', 'default.png', NULL, NULL, NULL, NULL, '2023-01-30 09:54:57', '2023-01-30 09:54:57'),
(12, 2, 'Sorai Girl', 'soraigirl', 'soraigirl@gmail.com', '$2y$10$enn2Ra2W89DY71L65n8KaeVLNwygz1En11eS3a9BU51b3FIue.YDy', 'default.png', NULL, NULL, NULL, NULL, '2023-01-30 09:55:33', '2023-01-30 09:55:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `activities_slug_unique` (`slug`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lineups`
--
ALTER TABLE `lineups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lineups_slug_unique` (`slug`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `lineups`
--
ALTER TABLE `lineups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
