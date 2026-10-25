-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 06:18 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lav_sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `belajar`
--

CREATE TABLE `belajar` (
  `id_belajar` int(11) NOT NULL,
  `nama_belajar` varchar(255) NOT NULL,
  `deskripsi_belajar` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `belajar`
--

INSERT INTO `belajar` (`id_belajar`, `nama_belajar`, `deskripsi_belajar`, `created_at`, `updated_at`) VALUES
(1, 'Mengenal belajar huruf', 'Disini kita akan mengenal huruf', '2024-06-10', '2024-06-17'),
(2, 'Mengenal Angka', 'Mari Mengenal Angka', '2024-06-10', '2024-06-10'),
(3, 'Mengenal Warna', 'Mari Mengenal Warna', '2024-06-10', '2024-06-10'),
(14, 'Mengenal Anggota Tubuh 1', 'Mari mengenal anggota tubuh dengan gambar', '2024-06-18', '2024-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(9, 'O-', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(10, 'O+', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(11, 'A+', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(12, 'A-', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(13, 'B+', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(14, 'B-', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(15, 'AB+', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(16, 'AB-', '2024-06-08 02:35:49', '2024-06-08 02:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_copies` int(11) DEFAULT NULL,
  `issued_copies` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `returned` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_types`
--

CREATE TABLE `class_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_types`
--

INSERT INTO `class_types` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(7, 'Creche', 'C', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dorms`
--

CREATE TABLE `dorms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dorms`
--

INSERT INTO `dorms` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(6, 'Faith Hostel', NULL, NULL, NULL),
(7, 'Peace Hostel', NULL, NULL, NULL),
(8, 'Grace Hostel', NULL, NULL, NULL),
(9, 'Success Hostel', NULL, NULL, NULL),
(10, 'Trust Hostel', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term` tinyint(4) NOT NULL,
  `year` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `term`, `year`, `created_at`, `updated_at`) VALUES
(1, 'Latihan', 1, '2024-2025', '2024-05-12 07:38:44', '2024-05-12 07:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `exam_records`
--

CREATE TABLE `exam_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `total` int(11) DEFAULT NULL,
  `ave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_ave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `af` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_type_id` int(10) UNSIGNED DEFAULT NULL,
  `mark_from` tinyint(4) NOT NULL,
  `mark_to` tinyint(4) NOT NULL,
  `remark` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `class_type_id`, `mark_from`, `mark_to`, `remark`, `created_at`, `updated_at`) VALUES
(7, 'A', NULL, 70, 100, 'Excellent', NULL, NULL),
(8, 'B', NULL, 60, 69, 'Very Good', NULL, NULL),
(9, 'C', NULL, 50, 59, 'Good', NULL, NULL),
(10, 'D', NULL, 45, 49, 'Pass', NULL, NULL),
(11, 'E', NULL, 40, 44, 'Poor', NULL, NULL),
(12, 'F', NULL, 0, 39, 'Fail', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `id_anak` int(11) NOT NULL,
  `balasan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `komentar`, `id_anak`, `balasan`, `created_at`, `updated_at`) VALUES
(1, 'cc kurang', 1, NULL, '2024-06-07 17:25:40', '2024-06-07 17:26:39'),
(2, 'dd', 1, NULL, '2024-06-07 17:25:40', '2024-06-07 17:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `lgas`
--

CREATE TABLE `lgas` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `t1` int(11) DEFAULT NULL,
  `t2` int(11) DEFAULT NULL,
  `t3` int(11) DEFAULT NULL,
  `t4` int(11) DEFAULT NULL,
  `tca` int(11) DEFAULT NULL,
  `exm` int(11) DEFAULT NULL,
  `tex1` int(11) DEFAULT NULL,
  `tex2` int(11) DEFAULT NULL,
  `tex3` int(11) DEFAULT NULL,
  `sub_pos` tinyint(4) DEFAULT NULL,
  `cum` int(11) DEFAULT NULL,
  `cum_ave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_id` int(10) UNSIGNED DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2013_09_20_121733_create_blood_groups_table', 1),
(2, '2013_09_22_124750_create_states_table', 1),
(3, '2013_09_22_124806_create_lgas_table', 1),
(4, '2013_09_26_121148_create_nationalities_table', 1),
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_09_20_100249_create_user_types_table', 1),
(8, '2018_09_20_150906_create_class_types_table', 1),
(9, '2018_09_22_073005_create_my_classes_table', 1),
(10, '2018_09_22_073526_create_sections_table', 1),
(11, '2018_09_22_080555_create_settings_table', 1),
(12, '2018_09_22_081302_create_subjects_table', 1),
(13, '2018_09_22_151514_create_student_records_table', 1),
(14, '2018_09_26_124241_create_dorms_table', 1),
(15, '2018_10_04_224910_create_exams_table', 1),
(16, '2018_10_06_224846_create_marks_table', 1),
(17, '2018_10_06_224944_create_grades_table', 1),
(18, '2018_10_06_225007_create_pins_table', 1),
(19, '2018_10_18_205550_create_skills_table', 1),
(20, '2018_10_18_205842_create_exam_records_table', 1),
(21, '2018_10_31_191358_create_books_table', 1),
(22, '2018_10_31_192540_create_book_requests_table', 1),
(23, '2018_11_01_132115_create_staff_records_table', 1),
(24, '2018_11_03_210758_create_payments_table', 1),
(25, '2018_11_03_210817_create_payment_records_table', 1),
(26, '2018_11_06_083707_create_receipts_table', 1),
(27, '2018_11_27_180401_create_time_tables_table', 1),
(28, '2019_09_22_142514_create_fks', 1),
(29, '2019_09_26_132227_create_promotions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_classes`
--

CREATE TABLE `my_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_type_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_classes`
--

INSERT INTO `my_classes` (`id`, `name`, `class_type_id`, `created_at`, `updated_at`) VALUES
(13, 'Kelas A', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(2, 'Albanian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(3, 'Algerian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(4, 'American', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(5, 'Andorran', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(6, 'Angolan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(7, 'Antiguans', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(8, 'Argentinean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(9, 'Armenian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(10, 'Australian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(11, 'Austrian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(12, 'Azerbaijani', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(13, 'Bahamian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(14, 'Bahraini', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(15, 'Bangladeshi', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(16, 'Barbadian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(17, 'Barbudans', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(18, 'Batswana', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(19, 'Belarusian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(20, 'Belgian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(21, 'Belizean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(22, 'Beninese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(23, 'Bhutanese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(24, 'Bolivian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(25, 'Bosnian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(26, 'Brazilian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(27, 'British', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(28, 'Bruneian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(29, 'Bulgarian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(30, 'Burkinabe', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(31, 'Burmese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(32, 'Burundian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(33, 'Cambodian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(34, 'Cameroonian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(35, 'Canadian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(36, 'Cape Verdean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(37, 'Central African', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(38, 'Chadian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(39, 'Chilean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(40, 'Chinese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(41, 'Colombian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(42, 'Comoran', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(43, 'Congolese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(44, 'Costa Rican', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(45, 'Croatian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(46, 'Cuban', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(47, 'Cypriot', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(48, 'Czech', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(49, 'Danish', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(50, 'Djibouti', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(51, 'Dominican', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(52, 'Dutch', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(53, 'East Timorese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(54, 'Ecuadorean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(55, 'Egyptian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(56, 'Emirian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(57, 'Equatorial Guinean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(58, 'Eritrean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(59, 'Estonian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(60, 'Ethiopian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(61, 'Fijian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(62, 'Filipino', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(63, 'Finnish', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(64, 'French', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(65, 'Gabonese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(66, 'Gambian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(67, 'Georgian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(68, 'German', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(69, 'Ghanaian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(70, 'Greek', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(71, 'Grenadian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(72, 'Guatemalan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(73, 'Guinea-Bissauan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(74, 'Guinean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(75, 'Guyanese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(76, 'Haitian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(77, 'Herzegovinian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(78, 'Honduran', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(79, 'Hungarian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(80, 'I-Kiribati', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(81, 'Icelander', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(82, 'Indian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(83, 'Indonesian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(84, 'Iranian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(85, 'Iraqi', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(86, 'Irish', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(87, 'Israeli', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(88, 'Italian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(89, 'Ivorian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(90, 'Jamaican', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(91, 'Japanese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(92, 'Jordanian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(93, 'Kazakhstani', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(94, 'Kenyan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(95, 'Kittian and Nevisian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(96, 'Kuwaiti', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(97, 'Kyrgyz', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(98, 'Laotian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(99, 'Latvian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(100, 'Lebanese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(101, 'Liberian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(102, 'Libyan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(103, 'Liechtensteiner', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(104, 'Lithuanian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(105, 'Luxembourger', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(106, 'Macedonian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(107, 'Malagasy', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(108, 'Malawian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(109, 'Malaysian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(110, 'Maldivan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(111, 'Malian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(112, 'Maltese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(113, 'Marshallese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(114, 'Mauritanian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(115, 'Mauritian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(116, 'Mexican', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(117, 'Micronesian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(118, 'Moldovan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(119, 'Monacan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(120, 'Mongolian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(121, 'Moroccan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(122, 'Mosotho', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(123, 'Motswana', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(124, 'Mozambican', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(125, 'Namibian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(126, 'Nauruan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(127, 'Nepalese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(128, 'New Zealander', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(129, 'Nicaraguan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(130, 'Nigerian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(131, 'Nigerien', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(132, 'North Korean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(133, 'Northern Irish', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(134, 'Norwegian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(135, 'Omani', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(136, 'Pakistani', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(137, 'Palauan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(138, 'Panamanian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(139, 'Papua New Guinean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(140, 'Paraguayan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(141, 'Peruvian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(142, 'Polish', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(143, 'Portuguese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(144, 'Qatari', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(145, 'Romanian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(146, 'Russian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(147, 'Rwandan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(148, 'Saint Lucian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(149, 'Salvadoran', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(150, 'Samoan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(151, 'San Marinese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(152, 'Sao Tomean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(153, 'Saudi', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(154, 'Scottish', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(155, 'Senegalese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(156, 'Serbian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(157, 'Seychellois', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(158, 'Sierra Leonean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(159, 'Singaporean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(160, 'Slovakian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(161, 'Slovenian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(162, 'Solomon Islander', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(163, 'Somali', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(164, 'South African', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(165, 'South Korean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(166, 'Spanish', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(167, 'Sri Lankan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(168, 'Sudanese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(169, 'Surinamer', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(170, 'Swazi', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(171, 'Swedish', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(172, 'Swiss', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(173, 'Syrian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(174, 'Taiwanese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(175, 'Tajik', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(176, 'Tanzanian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(177, 'Thai', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(178, 'Togolese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(179, 'Tongan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(180, 'Trinidadian/Tobagonian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(181, 'Tunisian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(182, 'Turkish', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(183, 'Tuvaluan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(184, 'Ugandan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(185, 'Ukrainian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(186, 'Uruguayan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(187, 'Uzbekistani', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(188, 'Venezuelan', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(189, 'Vietnamese', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(190, 'Welsh', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(191, 'Yemenite', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(192, 'Zambian', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(193, 'Zimbabwean', '2024-05-01 20:21:01', '2024-05-01 20:21:01'),
(194, 'Afghan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(195, 'Albanian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(196, 'Algerian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(197, 'American', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(198, 'Andorran', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(199, 'Angolan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(200, 'Antiguans', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(201, 'Argentinean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(202, 'Armenian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(203, 'Australian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(204, 'Austrian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(205, 'Azerbaijani', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(206, 'Bahamian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(207, 'Bahraini', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(208, 'Bangladeshi', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(209, 'Barbadian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(210, 'Barbudans', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(211, 'Batswana', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(212, 'Belarusian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(213, 'Belgian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(214, 'Belizean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(215, 'Beninese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(216, 'Bhutanese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(217, 'Bolivian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(218, 'Bosnian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(219, 'Brazilian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(220, 'British', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(221, 'Bruneian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(222, 'Bulgarian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(223, 'Burkinabe', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(224, 'Burmese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(225, 'Burundian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(226, 'Cambodian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(227, 'Cameroonian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(228, 'Canadian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(229, 'Cape Verdean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(230, 'Central African', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(231, 'Chadian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(232, 'Chilean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(233, 'Chinese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(234, 'Colombian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(235, 'Comoran', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(236, 'Congolese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(237, 'Costa Rican', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(238, 'Croatian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(239, 'Cuban', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(240, 'Cypriot', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(241, 'Czech', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(242, 'Danish', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(243, 'Djibouti', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(244, 'Dominican', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(245, 'Dutch', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(246, 'East Timorese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(247, 'Ecuadorean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(248, 'Egyptian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(249, 'Emirian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(250, 'Equatorial Guinean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(251, 'Eritrean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(252, 'Estonian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(253, 'Ethiopian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(254, 'Fijian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(255, 'Filipino', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(256, 'Finnish', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(257, 'French', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(258, 'Gabonese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(259, 'Gambian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(260, 'Georgian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(261, 'German', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(262, 'Ghanaian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(263, 'Greek', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(264, 'Grenadian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(265, 'Guatemalan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(266, 'Guinea-Bissauan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(267, 'Guinean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(268, 'Guyanese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(269, 'Haitian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(270, 'Herzegovinian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(271, 'Honduran', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(272, 'Hungarian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(273, 'I-Kiribati', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(274, 'Icelander', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(275, 'Indian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(276, 'Indonesian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(277, 'Iranian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(278, 'Iraqi', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(279, 'Irish', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(280, 'Israeli', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(281, 'Italian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(282, 'Ivorian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(283, 'Jamaican', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(284, 'Japanese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(285, 'Jordanian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(286, 'Kazakhstani', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(287, 'Kenyan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(288, 'Kittian and Nevisian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(289, 'Kuwaiti', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(290, 'Kyrgyz', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(291, 'Laotian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(292, 'Latvian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(293, 'Lebanese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(294, 'Liberian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(295, 'Libyan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(296, 'Liechtensteiner', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(297, 'Lithuanian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(298, 'Luxembourger', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(299, 'Macedonian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(300, 'Malagasy', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(301, 'Malawian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(302, 'Malaysian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(303, 'Maldivan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(304, 'Malian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(305, 'Maltese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(306, 'Marshallese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(307, 'Mauritanian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(308, 'Mauritian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(309, 'Mexican', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(310, 'Micronesian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(311, 'Moldovan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(312, 'Monacan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(313, 'Mongolian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(314, 'Moroccan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(315, 'Mosotho', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(316, 'Motswana', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(317, 'Mozambican', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(318, 'Namibian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(319, 'Nauruan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(320, 'Nepalese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(321, 'New Zealander', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(322, 'Nicaraguan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(323, 'Nigerian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(324, 'Nigerien', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(325, 'North Korean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(326, 'Northern Irish', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(327, 'Norwegian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(328, 'Omani', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(329, 'Pakistani', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(330, 'Palauan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(331, 'Panamanian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(332, 'Papua New Guinean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(333, 'Paraguayan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(334, 'Peruvian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(335, 'Polish', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(336, 'Portuguese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(337, 'Qatari', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(338, 'Romanian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(339, 'Russian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(340, 'Rwandan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(341, 'Saint Lucian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(342, 'Salvadoran', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(343, 'Samoan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(344, 'San Marinese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(345, 'Sao Tomean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(346, 'Saudi', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(347, 'Scottish', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(348, 'Senegalese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(349, 'Serbian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(350, 'Seychellois', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(351, 'Sierra Leonean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(352, 'Singaporean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(353, 'Slovakian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(354, 'Slovenian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(355, 'Solomon Islander', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(356, 'Somali', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(357, 'South African', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(358, 'South Korean', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(359, 'Spanish', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(360, 'Sri Lankan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(361, 'Sudanese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(362, 'Surinamer', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(363, 'Swazi', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(364, 'Swedish', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(365, 'Swiss', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(366, 'Syrian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(367, 'Taiwanese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(368, 'Tajik', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(369, 'Tanzanian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(370, 'Thai', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(371, 'Togolese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(372, 'Tongan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(373, 'Trinidadian/Tobagonian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(374, 'Tunisian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(375, 'Turkish', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(376, 'Tuvaluan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(377, 'Ugandan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(378, 'Ukrainian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(379, 'Uruguayan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(380, 'Uzbekistani', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(381, 'Venezuelan', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(382, 'Vietnamese', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(383, 'Welsh', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(384, 'Yemenite', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(385, 'Zambian', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(386, 'Zimbabwean', '2024-06-08 02:35:49', '2024-06-08 02:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `nama_materi` varchar(255) NOT NULL,
  `nilai_materi` int(11) NOT NULL,
  `nilai_latihan` int(11) DEFAULT NULL,
  `deskripsi_nilai` varchar(255) NOT NULL,
  `id_anak` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nama_materi`, `nilai_materi`, `nilai_latihan`, `deskripsi_nilai`, `id_anak`, `created_at`, `updated_at`) VALUES
(2, 'Mengenal Angka', 80, 90, 'sangat bagus sekali', 8, '2024-06-07', '2024-06-17'),
(8, 'Mengenal Angka', 50, 50, 'mohon ditingkatkan kembali', 7, '2024-06-10', '2024-06-18'),
(18, 'Mengenal Angka', 78, 30, 'perbaiki lagi untuk kedepadannya', 14, '2024-06-18', '2024-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('danu@gmail.com', '$2y$10$U/vqdLGYOEP.YDzqml6I6uafDJlKLNajAa1wCAXNSrYn84ouB9h76', '2024-06-05 01:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `ref_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `my_class_id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_records`
--

CREATE TABLE `payment_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `ref_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amt_paid` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pins`
--

CREATE TABLE `pins` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `times_used` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `from_class` int(10) UNSIGNED NOT NULL,
  `from_section` int(10) UNSIGNED NOT NULL,
  `to_class` int(10) UNSIGNED NOT NULL,
  `to_section` int(10) UNSIGNED NOT NULL,
  `grad` tinyint(4) NOT NULL,
  `from_session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(10) UNSIGNED NOT NULL,
  `pr_id` int(10) UNSIGNED NOT NULL,
  `amt_paid` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'current_session', '2024-2025', NULL, '2024-05-19 19:37:21'),
(2, 'system_title', 'EXWO', NULL, '2024-05-19 19:37:21'),
(3, 'system_name', 'EXPLORING WONDERLAND', NULL, '2024-05-19 19:37:21'),
(4, 'term_ends', '12/21/2024', NULL, '2024-05-19 19:37:21'),
(5, 'term_begins', '07/01/2024', NULL, '2024-05-19 19:37:21'),
(6, 'phone', '0123456789', NULL, '2024-05-19 19:37:21'),
(7, 'address', 'Jl. Batukapur Subang Jawa Barat', NULL, '2024-05-19 19:37:21'),
(8, 'system_email', 'mutibarokah@gmail.com', NULL, '2024-05-19 19:37:21'),
(9, 'alt_email', '', NULL, NULL),
(10, 'email_host', '', NULL, NULL),
(11, 'email_pass', '', NULL, NULL),
(12, 'lock_exam', '0', NULL, '2024-05-19 19:37:21'),
(13, 'logo', 'http://127.0.0.1:8000/storage/uploads//logo.png', NULL, '2024-05-04 10:51:59'),
(14, 'next_term_fees_j', '20000', NULL, '2024-05-19 19:37:21'),
(15, 'next_term_fees_pn', '25000', NULL, '2024-05-19 19:37:21'),
(16, 'next_term_fees_p', '25000', NULL, '2024-05-19 19:37:21'),
(17, 'next_term_fees_n', '25600', NULL, '2024-05-19 19:37:21'),
(18, 'next_term_fees_s', '15600', NULL, '2024-05-19 19:37:21'),
(19, 'next_term_fees_c', '1600', NULL, '2024-05-19 19:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `skill_type`, `class_type`, `created_at`, `updated_at`) VALUES
(1, 'PUNCTUALITY', 'AF', NULL, NULL, NULL),
(2, 'NEATNESS', 'AF', NULL, NULL, NULL),
(3, 'HONESTY', 'AF', NULL, NULL, NULL),
(4, 'RELIABILITY', 'AF', NULL, NULL, NULL),
(5, 'RELATIONSHIP WITH OTHERS', 'AF', NULL, NULL, NULL),
(6, 'POLITENESS', 'AF', NULL, NULL, NULL),
(7, 'ALERTNESS', 'AF', NULL, NULL, NULL),
(8, 'HANDWRITING', 'PS', NULL, NULL, NULL),
(9, 'GAMES & SPORTS', 'PS', NULL, NULL, NULL),
(10, 'DRAWING & ARTS', 'PS', NULL, NULL, NULL),
(11, 'PAINTING', 'PS', NULL, NULL, NULL),
(12, 'CONSTRUCTION', 'PS', NULL, NULL, NULL),
(13, 'MUSICAL SKILLS', 'PS', NULL, NULL, NULL),
(14, 'FLEXIBILITY', 'PS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_records`
--

CREATE TABLE `staff_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(38, 'Abia', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(39, 'Adamawa', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(40, 'Akwa Ibom', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(41, 'Anambra', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(42, 'Bauchi', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(43, 'Bayelsa', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(44, 'Benue', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(45, 'Borno', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(46, 'Cross River', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(47, 'Delta', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(48, 'Ebonyi', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(49, 'Edo', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(50, 'Ekiti', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(51, 'Enugu', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(52, 'FCT', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(53, 'Gombe', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(54, 'Imo', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(55, 'Jigawa', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(56, 'Kaduna', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(57, 'Kano', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(58, 'Katsina', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(59, 'Kebbi', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(60, 'Kogi', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(61, 'Kwara', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(62, 'Lagos', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(63, 'Nasarawa', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(64, 'Niger', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(65, 'Ogun', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(66, 'Ondo', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(67, 'Osun', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(68, 'Oyo', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(69, 'Plateau', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(70, 'Rivers', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(71, 'Sokoto', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(72, 'Taraba', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(73, 'Yobe', '2024-06-08 02:35:49', '2024-06-08 02:35:49'),
(74, 'Zamfara', '2024-06-08 02:35:49', '2024-06-08 02:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `nisn` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `id_orangtua` int(11) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL,
  `year_admitted` year(4) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `nisn`, `nama`, `alamat`, `jenis_kelamin`, `id_orangtua`, `kelas`, `tgl_lahir`, `year_admitted`, `photo`, `created_at`, `updated_at`) VALUES
(7, '0043234876', 'Abdullah Ghazy', 'Kalijati, Subang', 'Laki-laki', 68, 'Kelas A', '01/01/2019', 2017, 'photos/mHX7xAXJEyDzlW7pihF65kbhzgKtyA77aYuvlnGk.jpg', '2024-06-08 02:19:20', '2024-06-17 18:03:58'),
(8, '333333333', 'Maulana Y', 'Cikondang', 'Laki-laki', 4, 'Kelas A', '05/28/2024', 2020, 'photos/FkwLZDvUdHPhTY2U2EA1fFKITqiJ2AaEpzFow86F.jpg', '2024-06-08 18:25:14', '2024-06-17 10:25:54'),
(14, '0123456789', 'Laura Cinta', 'Cibogo No 100 Subang', 'Perempuan', 75, 'Kelas A', '04/16/2024', 2024, 'photos/4oQLf9UsamuTsq4YBzZSjMLZEcYkiAXpe1h6UpN0.png', '2024-06-18 01:01:40', '2024-06-18 10:10:57'),
(15, '6677884455', 'Rina Noviana', 'Batukapur Subang', 'Perempuan', 73, 'Kelas A', '11/01/2019', 2024, 'photos/BLztuz2DWjwzDBEjkp4pIkD1yD3q7C6QH5sxNPSY.png', '2024-06-18 09:37:52', '2024-06-18 09:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `student_records`
--

CREATE TABLE `student_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `adm_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_parent_id` int(10) UNSIGNED DEFAULT NULL,
  `dorm_id` int(10) UNSIGNED DEFAULT NULL,
  `dorm_room_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `year_admitted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grad` tinyint(4) NOT NULL DEFAULT 0,
  `grad_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `nip` int(18) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telepon` varchar(13) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(10) UNSIGNED NOT NULL,
  `ttr_id` int(10) UNSIGNED NOT NULL,
  `hour_from` tinyint(4) NOT NULL,
  `min_from` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meridian_from` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour_to` tinyint(4) NOT NULL,
  `min_to` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meridian_to` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp_from` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp_to` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_tables`
--

CREATE TABLE `time_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `ttr_id` int(10) UNSIGNED NOT NULL,
  `ts_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_num` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_table_records`
--

CREATE TABLE `time_table_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `year` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` int(11) NOT NULL,
  `ulasan` varchar(255) NOT NULL,
  `balasan` text DEFAULT NULL,
  `id_anak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id_ulasan`, `ulasan`, `balasan`, `id_anak`) VALUES
(17, 'Sangat baik pekembangan minggu sekarang', 'Baik atas sarannya bu guru', 8),
(18, 'Untuk minggu pertama ini harus ditingkatkan lagi', 'Baik bu guru, terima kasih atas sarannya', 15),
(21, 'Perkembangan minggu ini cukup baik', 'Terimakasih atas masukkannya bu guru', 7),
(24, 'Ini ulasan untuk laura 100', 'Ini merupakan kolom komentar balasan', 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://localhost/global_assets/images/user.png',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_id` int(10) UNSIGNED DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `lga_id` int(10) UNSIGNED DEFAULT NULL,
  `nal_id` int(10) UNSIGNED DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `code`, `username`, `user_type`, `dob`, `gender`, `photo`, `phone`, `phone2`, `bg_id`, `state_id`, `lga_id`, `nal_id`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'CJ Inspired', 'cj@cj.com', 'CHNS9BWF9Z', 'cj', 'super_admin', NULL, NULL, 'http://127.0.0.1:8000/storage/uploads/super_admin/CHNS9BWF9Z/photo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Jl. Otista Subang 001', NULL, '$2y$10$jeds.TtfEjLleUuKQq3SIO31wKWa/EGLFYpmSDTXxF2nLfPoDis.O', 'E6nyJ1EwBRD0thfqghvpIOH6wQAFsWkTjiYTKroNX6yfVpD2Kb8oc7LyM9vU', NULL, '2024-05-19 19:36:04'),
(2, 'Administrator', 'admin@gmail.com', 'YQEHSOY7XJ', 'admin', 'admin', NULL, 'Male', 'http://127.0.0.1:8000/storage/uploads/admin/YQEHSOY7XJ/photo.png', '(+62) 852 2131 5865', NULL, NULL, NULL, NULL, 83, 'Jl. Kertawigenda Subang Jawa Barat', NULL, '$2y$10$us0z26Bs7xOkW8xt0Lp8U.65oy7/M/bsx9tDTdYDJOvrsWoTHB8W.', '3k1RTdCDfwc1spkI3ev9k2Z9mKpq6Psf7brJui3aX2Bt2Pm9CCjLE3p8DJYC', NULL, '2024-06-05 00:02:23'),
(3, 'Susi Hilma', 'susihilma@gmail.com', 'XIZDUHVGFY', 'teacher', 'teacher', NULL, 'Female', 'http://localhost/global_assets/images/user.png', '089564354625', NULL, NULL, NULL, NULL, NULL, 'Jl. Kertawigenda Subang', NULL, '$2y$10$VAmWWTOXE2m8oxWy/S3TQekfV8VaQf3TezsSi2gj4bAmVxBwKCqHq', 'o9ZEMKiJ48qovBkvNq1Ft8vS788NGiiax6YiTAPQnN40krl1Tz5ZHIQxBcA7', NULL, '2024-06-10 15:33:13'),
(4, 'Noviana', 'noviana@gmail.com', 'MZA8LBU2UV', 'parent', 'parent', NULL, 'Female', 'http://localhost/global_assets/images/user.png', '086745327434', NULL, NULL, NULL, NULL, NULL, 'Subang Jawa Barat', NULL, '$2y$10$7GdLSZ4/KPMaTY/8D/iI5.MUcSe/NzvxQ3UC87bXAXe4clpZFXys2', 'aKSGXpWMVxnA1okqq4E3j3Mt4iCEkTtscaqaiDQYTvIgqRBhieGFus8opO2s', NULL, '2024-05-20 00:29:57'),
(59, 'Asep Udin', 'asepudin@gmail.com', 'QLACQLE5BR', 'asepudin', 'parent', NULL, 'Male', 'http://127.0.0.1:8000/global_assets/images/user.png', '085642432256', '687364872', NULL, NULL, NULL, NULL, 'Lembang Jawa Barat', NULL, '$2y$10$d8qWGdkQNVkkRcpnmSeFyOzv6uNeMkc4NypYBJlzpOgVtQOqWqic2', NULL, '2024-05-19 22:23:30', '2024-06-18 09:25:20'),
(68, 'Dikdik Tri Andhika', 'dikdik@gmail.com', '2HG0ROGV91', 'dikdik', 'parent', NULL, 'Male', 'http://127.0.0.1:8000/global_assets/images/user.png', '087536254723', NULL, NULL, NULL, NULL, NULL, 'Cicadas Dangdeur', NULL, '$2y$10$rsimg535Z51OITVGuo4BAeVtMbARzIC0uxUCfLaKtLgnCeGXdCEq6', NULL, '2024-06-07 11:10:13', '2024-06-18 09:01:39'),
(73, 'Andika Pratama', 'andika25052004@gmail.com', 'MVARWZFJ5D', 'andika2004', 'parent', NULL, 'Male', 'http://127.0.0.1:8000/global_assets/images/user.png', '085221315865', NULL, NULL, NULL, NULL, NULL, 'Karanganyar Subang', NULL, '$2y$10$vYNVAm/5k0/BjL.LTkqKX.2zj6jltsfeHzX0SK8/O1Q2xkzVxmaB2', NULL, '2024-06-13 08:37:31', '2024-06-13 08:37:31'),
(74, 'Ridwan Hendrawan', 'ridwan@gmail.com', 'QTZSJQL2NJ', 'ridwanhendrawan', 'parent', NULL, 'Male', 'http://127.0.0.1:8000/global_assets/images/user.png', '089654345213', NULL, NULL, NULL, NULL, NULL, 'Blok Sukahayu Subang Jawa Barat', NULL, '$2y$10$k3o6GTvg4ak8A.fT8pPpKOncPjhRS7UdMNEFJlMo8.5gIqH7XuuAK', NULL, '2024-06-16 21:27:31', '2024-06-16 21:28:06'),
(75, 'Firda Salsabila', 'firda11@gmail.com', 'OI9UDHEW7K', 'firdasalsabila', 'parent', NULL, 'Female', 'http://127.0.0.1:8000/global_assets/images/user.png', '087345627341', NULL, NULL, NULL, NULL, NULL, 'Cibogo, Subang', NULL, '$2y$10$fmOqGxRe0GfH1/G4mUKZiOf29b97lBC8009KJJkwAMS5fYCIPcZJG', NULL, '2024-06-18 00:59:59', '2024-06-18 00:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `title`, `name`, `level`, `created_at`, `updated_at`) VALUES
(1, 'parent', 'Parent', '4', NULL, NULL),
(2, 'teacher', 'Teacher', '3', NULL, NULL),
(3, 'admin', 'Admin', '2', NULL, NULL),
(4, 'super_admin', 'Super Admin', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `belajar`
--
ALTER TABLE `belajar`
  ADD PRIMARY KEY (`id_belajar`);

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_my_class_id_foreign` (`my_class_id`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_requests_book_id_foreign` (`book_id`),
  ADD KEY `book_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `class_types`
--
ALTER TABLE `class_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dorms`
--
ALTER TABLE `dorms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dorms_name_unique` (`name`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_term_year_unique` (`term`,`year`);

--
-- Indexes for table `exam_records`
--
ALTER TABLE `exam_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_records_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_records_my_class_id_foreign` (`my_class_id`),
  ADD KEY `exam_records_student_id_foreign` (`student_id`),
  ADD KEY `exam_records_section_id_foreign` (`section_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grades_name_class_type_id_remark_unique` (`name`,`class_type_id`,`remark`),
  ADD KEY `grades_class_type_id_foreign` (`class_type_id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgas`
--
ALTER TABLE `lgas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lgas_state_id_foreign` (`state_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_student_id_foreign` (`student_id`),
  ADD KEY `marks_my_class_id_foreign` (`my_class_id`),
  ADD KEY `marks_section_id_foreign` (`section_id`),
  ADD KEY `marks_subject_id_foreign` (`subject_id`),
  ADD KEY `marks_exam_id_foreign` (`exam_id`),
  ADD KEY `marks_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_classes`
--
ALTER TABLE `my_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_classes_class_type_id_name_unique` (`class_type_id`,`name`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_ref_no_unique` (`ref_no`),
  ADD KEY `payments_my_class_id_foreign` (`my_class_id`);

--
-- Indexes for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_records_ref_no_unique` (`ref_no`),
  ADD KEY `payment_records_payment_id_foreign` (`payment_id`),
  ADD KEY `payment_records_student_id_foreign` (`student_id`);

--
-- Indexes for table `pins`
--
ALTER TABLE `pins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pins_code_unique` (`code`),
  ADD KEY `pins_user_id_foreign` (`user_id`),
  ADD KEY `pins_student_id_foreign` (`student_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_student_id_foreign` (`student_id`),
  ADD KEY `promotions_from_class_foreign` (`from_class`),
  ADD KEY `promotions_from_section_foreign` (`from_section`),
  ADD KEY `promotions_to_section_foreign` (`to_section`),
  ADD KEY `promotions_to_class_foreign` (`to_class`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipts_pr_id_foreign` (`pr_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_name_my_class_id_unique` (`name`,`my_class_id`),
  ADD KEY `sections_my_class_id_foreign` (`my_class_id`),
  ADD KEY `sections_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_records`
--
ALTER TABLE `staff_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_records_code_unique` (`code`),
  ADD KEY `staff_records_user_id_foreign` (`user_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_records`
--
ALTER TABLE `student_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_records_adm_no_unique` (`adm_no`),
  ADD KEY `student_records_user_id_foreign` (`user_id`),
  ADD KEY `student_records_my_class_id_foreign` (`my_class_id`),
  ADD KEY `student_records_section_id_foreign` (`section_id`),
  ADD KEY `student_records_my_parent_id_foreign` (`my_parent_id`),
  ADD KEY `student_records_dorm_id_foreign` (`dorm_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_my_class_id_name_unique` (`my_class_id`,`name`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_slots_timestamp_from_timestamp_to_ttr_id_unique` (`timestamp_from`,`timestamp_to`,`ttr_id`),
  ADD KEY `time_slots_ttr_id_foreign` (`ttr_id`);

--
-- Indexes for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_tables_ttr_id_ts_id_day_unique` (`ttr_id`,`ts_id`,`day`),
  ADD UNIQUE KEY `time_tables_ttr_id_ts_id_exam_date_unique` (`ttr_id`,`ts_id`,`exam_date`),
  ADD KEY `time_tables_ts_id_foreign` (`ts_id`),
  ADD KEY `time_tables_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `time_table_records`
--
ALTER TABLE `time_table_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_table_records_name_unique` (`name`),
  ADD UNIQUE KEY `time_table_records_my_class_id_exam_id_year_unique` (`my_class_id`,`exam_id`,`year`),
  ADD KEY `time_table_records_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_code_unique` (`code`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_state_id_foreign` (`state_id`),
  ADD KEY `users_lga_id_foreign` (`lga_id`),
  ADD KEY `users_bg_id_foreign` (`bg_id`),
  ADD KEY `users_nal_id_foreign` (`nal_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `belajar`
--
ALTER TABLE `belajar`
  MODIFY `id_belajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_types`
--
ALTER TABLE `class_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dorms`
--
ALTER TABLE `dorms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_records`
--
ALTER TABLE `exam_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lgas`
--
ALTER TABLE `lgas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=776;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `my_classes`
--
ALTER TABLE `my_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_records`
--
ALTER TABLE `payment_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pins`
--
ALTER TABLE `pins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `staff_records`
--
ALTER TABLE `staff_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `student_records`
--
ALTER TABLE `student_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_tables`
--
ALTER TABLE `time_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_table_records`
--
ALTER TABLE `time_table_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id_ulasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD CONSTRAINT `book_requests_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_records`
--
ALTER TABLE `exam_records`
  ADD CONSTRAINT `exam_records_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_class_type_id_foreign` FOREIGN KEY (`class_type_id`) REFERENCES `class_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lgas`
--
ALTER TABLE `lgas`
  ADD CONSTRAINT `lgas_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marks_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `my_classes`
--
ALTER TABLE `my_classes`
  ADD CONSTRAINT `my_classes_class_type_id_foreign` FOREIGN KEY (`class_type_id`) REFERENCES `class_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD CONSTRAINT `payment_records_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pins`
--
ALTER TABLE `pins`
  ADD CONSTRAINT `pins_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_from_class_foreign` FOREIGN KEY (`from_class`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_from_section_foreign` FOREIGN KEY (`from_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_to_class_foreign` FOREIGN KEY (`to_class`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_to_section_foreign` FOREIGN KEY (`to_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_pr_id_foreign` FOREIGN KEY (`pr_id`) REFERENCES `payment_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `staff_records`
--
ALTER TABLE `staff_records`
  ADD CONSTRAINT `staff_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_records`
--
ALTER TABLE `student_records`
  ADD CONSTRAINT `student_records_dorm_id_foreign` FOREIGN KEY (`dorm_id`) REFERENCES `dorms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_my_parent_id_foreign` FOREIGN KEY (`my_parent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_records_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD CONSTRAINT `time_slots_ttr_id_foreign` FOREIGN KEY (`ttr_id`) REFERENCES `time_table_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD CONSTRAINT `time_tables_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_tables_ts_id_foreign` FOREIGN KEY (`ts_id`) REFERENCES `time_slots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_tables_ttr_id_foreign` FOREIGN KEY (`ttr_id`) REFERENCES `time_table_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_table_records`
--
ALTER TABLE `time_table_records`
  ADD CONSTRAINT `time_table_records_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_table_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_bg_id_foreign` FOREIGN KEY (`bg_id`) REFERENCES `blood_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_lga_id_foreign` FOREIGN KEY (`lga_id`) REFERENCES `lgas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_nal_id_foreign` FOREIGN KEY (`nal_id`) REFERENCES `nationalities` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
