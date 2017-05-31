-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2017 at 05:59 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `globalapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `sending_email` varchar(64) NOT NULL,
  `receiving_email` varchar(64) NOT NULL,
  `contact_email` varchar(64) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `address` varchar(500) NOT NULL,
  `google_address` varchar(500) NOT NULL,
  `facebook` varchar(128) NOT NULL,
  `google` varchar(128) NOT NULL,
  `twitter` varchar(128) NOT NULL,
  `linkedin` varchar(128) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `name`, `username`, `password`, `sending_email`, `receiving_email`, `contact_email`, `phone`, `address`, `google_address`, `facebook`, `google`, `twitter`, `linkedin`, `time_stamp`) VALUES
(1, 'Global Care Pharmacy ', 'gmsuser', 'd91bf25b8bc306a951b70be0fba568de', 'noreply@globalcare.com.pk', 'order@globalcare.com.pk', 'care@globalcare.com.pk', '+92 0514848934-36', 'Building #D-135, D Block, Backside Midway Shopping Mall, 6th Road, Rawalpindi-Pakistan.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d212556.72703187473!2d72.92471355145727!3d33.65200886455249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38dfbfa17c956c1d%3A0xb6380dbc6614a792!2sIslamabad+Capital+Territory%2C+Pakistan!5e0!3m2!1sen!2s!4v1481059274695\" width=\"300\" height=\"350\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'https://www.facebook.com/globalcareonline', 'http://plus.google.com/', 'https://twitter.com/GlobalCareP', 'https://www.linkedin.com/', '2017-03-05 08:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_price` decimal(10,0) NOT NULL,
  `total_price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `post_date` date NOT NULL,
  `post_time` time NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcart`
--

INSERT INTO `tblcart` (`id`, `order_id`, `product_id`, `unit_price`, `total_price`, `quantity`, `post_date`, `post_time`, `status`) VALUES
(1, 55, 23, '210', '210', 1, '2017-03-15', '10:54:16', 1),
(2, 56, 21, '120', '120', 1, '2017-03-16', '06:58:19', 1),
(3, 57, 21, '120', '360', 3, '2017-03-16', '07:15:08', 1),
(4, 57, 23, '0', '0', 1, '2017-03-16', '07:21:00', 0),
(5, 57, 22, '0', '0', 1, '2017-03-16', '07:21:25', 0),
(6, 57, 22, '0', '0', 1, '2017-03-16', '07:32:06', 0),
(7, 57, 23, '0', '0', 2, '2017-03-16', '07:33:31', 0),
(8, 57, 23, '210', '210', 1, '2017-03-16', '07:36:41', 0),
(9, 57, 23, '210', '210', 1, '2017-03-16', '07:36:58', 1),
(10, 58, 23, '210', '630', 3, '2017-03-16', '04:43:10', 1),
(11, 58, 22, '60', '240', 4, '2017-03-16', '04:43:27', 1),
(12, 59, 23, '210', '630', 3, '2017-03-16', '05:27:06', 1),
(13, 59, 21, '120', '600', 5, '2017-03-16', '05:27:15', 1),
(14, 60, 21, '120', '240', 2, '2017-03-17', '12:34:27', 1),
(15, 60, 22, '60', '60', 1, '2017-03-17', '12:35:04', 1),
(16, 61, 23, '210', '1050', 5, '2017-03-22', '12:29:18', 1),
(17, 61, 21, '120', '360', 3, '2017-03-22', '12:29:38', 1),
(18, 62, 38, '650', '650', 1, '2017-03-22', '11:12:23', 1),
(19, 63, 21, '120', '120', 1, '2017-03-22', '11:14:41', 1),
(20, 63, 38, '650', '650', 1, '2017-03-22', '11:15:19', 1),
(21, 63, 23, '210', '210', 1, '2017-03-22', '11:15:32', 1),
(22, 64, 23, '210', '210', 1, '2017-03-22', '11:18:58', 1),
(23, 65, 45, '364', '364', 1, '2017-03-27', '03:22:48', 1),
(24, 65, 71, '62', '62', 1, '2017-03-27', '03:24:18', 1),
(25, 66, 21, '120', '120', 1, '2017-03-27', '03:31:49', 0),
(26, 66, 22, '60', '60', 1, '2017-03-27', '03:40:13', 0),
(27, 68, 90, '76', '380', 5, '2017-03-28', '10:24:08', 0),
(28, 69, 38, '650', '650', 1, '2017-03-28', '02:14:54', 1),
(29, 70, 23, '210', '210', 1, '2017-03-29', '09:34:14', 1),
(30, 71, 21, '120', '120', 1, '2017-03-29', '01:42:06', 0),
(31, 72, 301, '1', '10', 10, '2017-03-29', '03:56:29', 0),
(32, 72, 207, '265', '530', 2, '2017-03-29', '03:57:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcompanies`
--

CREATE TABLE `tblcompanies` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `details` varchar(500) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `photo` varchar(128) NOT NULL,
  `post_date` date NOT NULL,
  `post_time` time NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompanies`
--

INSERT INTO `tblcompanies` (`id`, `title`, `details`, `slug`, `photo`, `post_date`, `post_time`, `status`) VALUES
(1, 'Glaxosmithkline', 'testing', 'glaxosmithkline-1', 'gms_1490123761_1.png', '2017-03-22', '12:16:01', 127),
(2, '', '', '', '', '0000-00-00', '00:00:00', 127),
(3, 'Glaxosmithkline', '', 'glaxosmithkline-3', 'gms_1490123839_3.png', '2017-03-29', '06:46:37', 0),
(4, '', '', '', '', '0000-00-00', '00:00:00', 127),
(5, '', '', '', '', '0000-00-00', '00:00:00', 127),
(6, '', '', '', '', '0000-00-00', '00:00:00', 127),
(7, 'Abbott Laboratories (Pakistan) Ltd.', 'Since 1948, Abbott has been dedicated to helping people in Pakistan live healthier lives through a diverse range of science-based nutritional products, diagnostic tools, pharmaceuticals and diabetes devices.\r\nADVANCING HEALTH AND WELLNESS IN PAKISTAN\r\nAbbott in Pakistan reflects our dedication to manufacturing the highest-quality products and finding lasting solutions to unique local health challenges. We have more than 1,400 employees at our home office and manufacturing facilities in Karachi; ', 'abbott-laboratories-(pakistan)-ltd--7', 'gms_1490795128_7.gif', '2017-03-29', '06:45:28', 1),
(8, '', '', '', '', '0000-00-00', '00:00:00', 127),
(9, '', '', '', '', '0000-00-00', '00:00:00', 127),
(10, '', '', '', '', '0000-00-00', '00:00:00', 127),
(11, '', '', '', '', '0000-00-00', '00:00:00', 127),
(12, '', '', '', '', '0000-00-00', '00:00:00', 127),
(13, '', '', '', '', '0000-00-00', '00:00:00', 127),
(14, 'Allergan', 'Leading Growth Pharma\r\nAllergan plc (NYSE: AGN), headquartered in Dublin, Ireland, is a bold, global pharmaceutical company and a leader in a new industry model â€“ Growth Pharma.  Allergan is focused on developing, manufacturing and commercializing branded pharmaceuticals, devices and biologic products for patients around the world.\r\n\r\nAllergan markets a portfolio of leading brands and best-in-class products for the central nervous system, eye care, medical aesthetics and dermatology, gastroent', 'allergan-14', 'gms_1490795167_14.gif', '2017-03-29', '06:46:07', 1),
(15, 'AGP (Private LTD)', 'AGP began its commercial operations in 1989 as an independent pharmaceutical manufacturing company in Karachi, Pakistan. It has steadily grown through manufacturing and marketing products under licensing arrangements with many companies of international repute and also through manufacturing and marketing its own brands. Today, it is one of the largest pharmaceutical companies in Pakistan, providing a broad range of pharmaceutical services. The determination to upgrade the  pharmaceutical resourc', 'agp-(private-ltd)-15', 'gms_1490795176_15.gif', '2017-03-29', '06:46:16', 1),
(16, 'Alcon', 'Mission and Values\r\nAlcon has one mission: to provide innovative products that enhance quality of life by helping people see better.\r\nCommitment to Patients\r\nAlcon is helping people see the world better through advanced surgical, pharmaceutical and vision care products.\r\nOur Business Focus\r\nAlcon\'s leadership is grounded in cutting-edge innovation and breakthrough technology, transforming the way we treat eye diseases and conditions.\r\nExecutive Leadership Team\r\nThe Alcon leadership team drives u', 'alcon-16', 'gms_1490795229_16.gif', '2017-03-29', '06:47:09', 1),
(17, 'Barret Hodgson', '', 'barret-hodgson-17', 'gms_1490795258_17.gif', '2017-03-29', '06:47:38', 1),
(18, 'Bayer', 'Bayer is a Life Science company with a more than 150-year history and core competencies in the areas of health care and agriculture. With our innovative products, we are contributing to finding solutions to some of the major challenges of our time.\r\nBayer group\r\nAn analysis by well-known branding agency Interbrand in 2015 valued the Bayer brand at â‚¬6.3 billion.\r\nA growing and aging world population requires an adequate supply of food and improved medical care. Our research and development acti', 'bayer-18', 'gms_1490795261_18.gif', '2017-03-29', '06:47:41', 1),
(19, '', '', '', '', '0000-00-00', '00:00:00', 127),
(20, 'Bristol Mayer Squibb', 'Bristol-Myers Squibb is a global BioPharma company firmly focused on its mission to discover, develop and deliver innovative medicines to patients with serious diseases.\r\nAround the world, our medicines help millions of people in their fight against such diseases as cancer, cardiovascular disease, hepatitis B and hepatitis C, HIV/AIDS and, rheumatoid arthritis.\r\nAt Bristol-Myers Squibb, our BioPharma strategy uniquely combines the reach and resources of a major pharma company with the entreprene', 'bristol-mayer-squibb-20', 'gms_1490795280_20.gif', '2017-03-29', '06:48:00', 1),
(21, 'Bosch', '', 'bosch-21', 'gms_1490796727_21.gif', '2017-03-29', '07:12:07', 1),
(22, 'Lilly', '', 'lilly-22', 'gms_1490797396_22.gif', '2017-03-29', '07:23:16', 1),
(23, 'Getz Pharma', '', 'getz-pharma-23', 'gms_1490797402_23.gif', '2017-03-29', '07:23:22', 1),
(24, 'Hilton Pharma', '', 'hilton-pharma-24', 'gms_1490797413_24.gif', '2017-03-29', '07:23:33', 1),
(25, 'Highnoon Labortries Limited', '', 'highnoon-labortries-limited-25', 'gms_1490797432_25.gif', '2017-03-29', '07:23:52', 1),
(26, 'Johnson And Johnson', '', 'johnson-and-johnson-26', 'gms_1490797450_26.gif', '2017-03-29', '07:24:10', 1),
(27, 'Macter', '', 'macter-27', 'gms_1490608166_27.gif', '2017-03-27', '02:49:26', 1),
(28, 'Merck', '', 'merck-28', 'gms_1490608135_28.gif', '2017-03-27', '02:48:55', 1),
(29, 'Martin Dow', '', 'martin-dow-29', 'gms_1490608105_29.gif', '2017-03-27', '02:48:25', 1),
(30, 'Platinum Pharmaceutical Pvt Limited', '', 'platinum-pharmaceutical-pvt-limited-30', 'gms_1490608073_30.gif', '2017-03-27', '02:47:53', 1),
(31, 'Pfizer', '', 'pfizer-31', 'gms_1490608044_31.gif', '2017-03-27', '02:47:24', 1),
(32, 'Roche', '', 'roche-32', 'gms_1490608014_32.gif', '2017-03-27', '02:46:54', 1),
(33, 'Reckitt Benckiser', '', 'reckitt-benckiser-33', 'gms_1490607384_33.gif', '2017-03-27', '02:36:24', 1),
(34, 'Sandoz', '', 'sandoz-34', 'gms_1490607356_34.gif', '2017-03-27', '02:35:56', 1),
(35, 'Acti Med Pharma Pvt Limited', '', 'acti-med-pharma-pvt-limited-35', 'gms_1490607323_35.gif', '2017-03-27', '02:35:23', 1),
(36, 'AG & C', '', 'ag-&-c-36', 'gms_1490607284_36.gif', '2017-03-27', '02:34:44', 1),
(37, 'AJM Pharma', '', 'ajm-pharma-37', 'gms_1490607248_37.gif', '2017-03-27', '02:34:08', 1),
(38, 'Adamjee', '', 'adamjee-38', 'gms_1490607196_38.gif', '2017-03-27', '02:33:16', 1),
(39, 'Amson Vaccine And Pharma', '', 'amson-vaccine-and-pharma-39', 'gms_1490607149_39.gif', '2017-03-27', '02:32:29', 1),
(40, 'ATCO Laboratries Ltd', '', 'atco-laboratries-ltd-40', 'gms_1490607114_40.gif', '2017-03-27', '02:31:54', 1),
(41, 'Akhai', '', 'akhai-41', 'gms_1490607081_41.gif', '2017-03-27', '02:31:21', 1),
(42, 'Alina', '', 'alina-42', 'gms_1490607051_42.gif', '2017-03-27', '02:30:51', 1),
(43, 'Bosch', '', 'bosch-43', 'gms_1490607012_43.gif', '2017-03-27', '02:30:12', 1),
(44, 'Brookes', '', 'brookes-44', 'gms_1490606979_44.gif', '2017-03-27', '02:29:39', 1),
(45, 'CCL Pharmaceuticals', '', 'ccl-pharmaceuticals-45', 'gms_1490606916_45.gif', '2017-03-27', '02:28:36', 1),
(46, 'Cirin', '', 'cirin-46', 'gms_1490606888_46.gif', '2017-03-27', '02:28:08', 1),
(47, 'Medipak Limited', '', 'medipak-limited-47', 'gms_1490606421_47.gif', '2017-03-27', '02:20:21', 1),
(48, 'Epla', '', 'epla-48', 'gms_1490606333_48.gif', '2017-03-27', '02:18:53', 1),
(49, 'Efroze', '', 'efroze-49', 'gms_1490606295_49.gif', '2017-03-27', '02:18:15', 1),
(50, 'Ferozsons Laboratories Ltd', '', 'ferozsons-laboratories-ltd-50', 'gms_1490606256_50.gif', '2017-03-27', '02:17:36', 1),
(51, 'Fynk Pvt Ltd', '', 'fynk-pvt-ltd-51', 'gms_1490606210_51.gif', '2017-03-27', '02:16:50', 1),
(52, 'Genix Pharma Pvt Ltd', '', 'genix-pharma-pvt-ltd-52', 'gms_1490606170_52.gif', '2017-03-27', '02:16:10', 1),
(53, 'Geofman', '', 'geofman-53', 'gms_1490606102_53.gif', '2017-03-27', '02:15:02', 1),
(54, 'Global Pharmaceuticals', '', 'global-pharmaceuticals-54', 'gms_1490606068_54.gif', '2017-03-27', '02:14:28', 1),
(55, 'Nabiqasim Industries', '', 'nabiqasim-industries-55', 'gms_1490606024_55.gif', '2017-03-27', '02:13:44', 1),
(56, 'Pearl Pharmaceuticals', '', 'pearl-pharmaceuticals-56', 'gms_1490605978_56.gif', '2017-03-27', '02:12:58', 1),
(57, 'Pharmvo', '', 'pharmvo-57', 'gms_1490605937_57.gif', '2017-03-27', '02:12:17', 1),
(58, 'Stiefel', '', 'stiefel-58', 'gms_1490605899_58.gif', '2017-03-27', '02:11:39', 1),
(59, 'Searle', '', 'searle-59', 'gms_1490605863_59.gif', '2017-03-27', '02:11:03', 1),
(60, 'Sanofi Aventis', '', 'sanofi-aventis-60', 'gms_1490605815_60.gif', '2017-03-27', '02:10:15', 1),
(61, 'Sami Pharmaceuticals', '', 'sami-pharmaceuticals-61', 'gms_1490605771_61.gif', '2017-03-27', '02:09:31', 1),
(62, 'Wyeth', '', 'wyeth-62', 'gms_1490605720_62.gif', '2017-03-27', '02:08:40', 1),
(63, 'Shrooq', '', 'shrooq-63', 'gms_1490605639_63.gif', '2017-03-27', '02:07:30', 1),
(64, 'Shaigan', '', 'shaigan-64', 'gms_1490605610_64.gif', '2017-03-27', '02:06:50', 1),
(65, 'Stanley', '', 'stanley-65', 'gms_1490605543_65.gif', '2017-03-27', '02:05:43', 1),
(66, 'Tagma', '', 'tagma-66', 'gms_1490605503_66.gif', '2017-03-27', '02:05:03', 1),
(67, 'Unexo', '', 'unexo-67', 'gms_1490605463_67.gif', '2017-03-27', '02:04:23', 1),
(68, 'Hoora Pharma', '', 'hoora-pharma-68', 'gms_1490605426_68.gif', '2017-03-27', '02:03:46', 1),
(69, 'Hakimsons', '', 'hakimsons-69', 'gms_1490605387_69.gif', '2017-03-27', '02:03:07', 1),
(70, '', '', '', '', '0000-00-00', '00:00:00', 127),
(71, 'Irza', '', 'irza-71', 'gms_1490605303_71.gif', '2017-03-27', '02:01:43', 1),
(72, 'Howards', '', 'howards-72', 'gms_1490605245_72.gif', '2017-03-27', '02:00:45', 1),
(73, 'MAPLE Pharma', '', 'maple-pharma-73', 'gms_1490605173_73.gif', '2017-03-27', '01:59:33', 1),
(74, 'Mass Pharma', '', 'mass-pharma-74', 'gms_1490608888_74.gif', '2017-03-27', '03:01:28', 1),
(75, 'Munawar Pharma', '', 'munawar-pharma-75', 'gms_1490608917_75.gif', '2017-03-27', '03:01:57', 1),
(76, '', '', '', '', '0000-00-00', '00:00:00', 127),
(77, '', '', '', '', '0000-00-00', '00:00:00', 127),
(78, 'WILSON PHARMACEUTICALS', '', 'wilson-pharmaceuticals-78', '', '2017-03-28', '11:00:57', 1),
(79, 'Biolabs', '', 'biolabs-79', '', '2017-03-28', '11:27:23', 1),
(80, '', '', '', '', '0000-00-00', '00:00:00', 127),
(81, 'CRYSTOLITE Pharmaceuticals', '', 'crystolite-pharmaceuticals-81', '', '2017-03-28', '05:54:15', 1),
(82, 'zafa pharma', '', 'zafa-pharma-82', '', '2017-03-28', '11:43:27', 1),
(83, 'saffron pharma', '', 'saffron-pharma-83', '', '2017-03-28', '11:57:29', 1),
(84, 'stiefel', '', 'stiefel-84', '', '2017-03-28', '04:04:18', 1),
(85, '', '', '', '', '0000-00-00', '00:00:00', 127),
(86, 'Kohinoor Industries. ', '', 'kohinoor-industries--86', '', '2017-03-28', '04:30:49', 1),
(87, 'Bayer Schering Pharma ', '', 'bayer-schering-pharma-87', '', '2017-03-28', '04:48:07', 1),
(88, '', '', '', '', '0000-00-00', '00:00:00', 127),
(89, 'Derma Techno Pakistan.', '', 'derma-techno-pakistan--89', '', '2017-03-28', '07:00:39', 1),
(90, '', '', '', '', '0000-00-00', '00:00:00', 127),
(91, 'Coris Dermatology', '', 'coris-dermatology-91', '', '2017-03-28', '08:01:35', 1),
(92, 'Servier', '', 'servier-92', '', '2017-03-29', '03:36:48', 1),
(93, '', '', '', '', '0000-00-00', '00:00:00', 0),
(94, 'Werrick Pharmaceuticals. ', '', 'werrick-pharmaceuticals--94', '', '2017-03-29', '10:03:00', 1),
(95, 'helix pharma', '', 'helix-pharma-95', '', '2017-03-30', '10:35:50', 1),
(96, '', '', '', '', '0000-00-00', '00:00:00', 0),
(97, '', '', '', '', '0000-00-00', '00:00:00', 0),
(98, 'indus pharma', '', 'indus-pharma-98', '', '2017-03-30', '10:57:44', 1),
(99, '', '', '', '', '0000-00-00', '00:00:00', 0),
(100, 'webros pharma', '', 'webros-pharma-100', '', '2017-03-30', '11:14:54', 1),
(101, '', '', '', '', '0000-00-00', '00:00:00', 127),
(102, '', '', '', '', '0000-00-00', '00:00:00', 0),
(103, '', '', '', '', '0000-00-00', '00:00:00', 0),
(104, 'webros pharma', '', 'webros-pharma-104', '', '2017-03-30', '11:16:57', 1),
(105, '', '', '', '', '0000-00-00', '00:00:00', 0),
(106, '', '', '', '', '0000-00-00', '00:00:00', 0),
(107, 'Asian Continental', '', 'asian-continental-107', '', '2017-04-04', '11:27:36', 1),
(108, 'Asian Continental', '', 'asian-continental-108', '', '2017-04-04', '11:27:54', 1),
(109, '', '', '', '', '0000-00-00', '00:00:00', 0),
(110, '', '', '', '', '0000-00-00', '00:00:00', 0),
(111, '', '', '', '', '0000-00-00', '00:00:00', 0),
(112, 'highnoon Labortaries ', '', 'highnoon-labortaries-112', '', '2017-04-04', '01:32:37', 1),
(113, 'Schazoo zaka pharma', '', 'schazoo-zaka-pharma-113', '', '2017-04-04', '01:38:54', 1),
(114, 'tri-gen pharma', '', 'tri-gen-pharma-114', '', '2017-04-04', '01:42:38', 1),
(115, 'chas a mendoza', '', 'chas-a-mendoza-115', '', '2017-04-04', '01:45:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontacts`
--

CREATE TABLE `tblcontacts` (
  `id` int(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `purpose` varchar(64) NOT NULL,
  `message` longtext NOT NULL,
  `ip` varchar(50) NOT NULL,
  `post_date` date NOT NULL,
  `post_time` time NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontacts`
--

INSERT INTO `tblcontacts` (`id`, `name`, `email`, `purpose`, `message`, `ip`, `post_date`, `post_time`, `time_stamp`, `status`) VALUES
(1, 'Iftikhar', 'mriffipcr @gmail.com', 'General', 'do you have a vigaron dey capsule.', '141.0.12.10', '2017-02-21', '11:26:18', '2017-02-21 06:57:36', 1),
(2, 'Salim Shaikh', 'sshaikh.pk@gmail.com', 'General', 'What price you are charging for    APIDRA', '39.41.93.90', '2017-03-28', '04:29:11', '2017-03-28 11:32:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfaqs`
--

CREATE TABLE `tblfaqs` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` varchar(500) NOT NULL,
  `display_order` int(11) NOT NULL,
  `post_date` date NOT NULL,
  `post_time` time NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfaqs`
--

INSERT INTO `tblfaqs` (`id`, `title`, `description`, `display_order`, `post_date`, `post_time`, `status`) VALUES
(31, 'About prescriptions', '<p class=\"MsoNormal\" style=\"text-align: justify; \"><span style=\"line-height: 115%;\" times=\"\" new=\"\" roman\",serif\"=\"\">If you order a medicine that can only be prescribed by\r\na qualified medical practitioner, then you need to have that prescription ready\r\nat the time of placing of order. You can either upload while placing the order\r\nif you have it ready or you can e-mail it later with your order ID to\r\norder@globalcare.com.pk.com&nbsp;<span style=\"font-size: 12pt;\"><o:p></o:p></span></span></p>', 9, '2017-02-06', '09:26:34', 1),
(30, 'How can I edit or cancel my order?', '<p class=\"MsoNormal\"><span style=\"line-height: 115%;\" times=\"\" new=\"\" roman\",serif\"=\"\">This can only be done before the order has been\r\nshipped, For order cancelation please Visit:&nbsp;</span><a href=\"http://www.globalcare.com.pk/returns-cancellations/\">http://www.globalcare.com.pk/returns-cancellations/</a></p>', 8, '2017-02-06', '09:28:39', 1),
(29, 'Payment options available', '<p class=\"MsoNormal\"><span style=\"line-height: 115%;\" times=\"\" new=\"\" roman\",serif\"=\"\">We currently take payments in Cash. Cash could be\r\nhanded over at the time our service partner hands over the order to you.<span style=\"font-size: 12pt;\"><o:p></o:p></span></span></p>', 7, '2017-02-06', '09:28:17', 1),
(28, 'If my order does not get serviced?', '<p class=\"MsoNormal\"><span style=\"line-height: 115%;\" times=\"\" new=\"\" roman\",serif\"=\"\">We struggle hard to service all our orders. Conversely,\r\nin case we cannot, we will refund the cost of the medicines.<span style=\"font-size: 12pt;\"><o:p></o:p></span></span></p>', 6, '2017-02-06', '09:27:58', 1),
(27, 'What if I am not at home when the products are delivered?', '<p class=\"MsoNormal\"><span style=\"line-height: 115%;\" times=\"\" new=\"\" roman\",serif\"=\"\">In case you are not at home, please nominate a person or someone close by who can receive the order. Ensure that they have\r\nthe payable amount.<span style=\"font-size: 12pt;\"><o:p></o:p></span></span></p>', 4, '2017-02-06', '09:26:46', 1),
(22, 'Delivery Charges', '<p class=\"MsoNormal\"><span style=\"line-height: 115%;\" times=\"\" new=\"\" roman\",serif\"=\"\">Delivery is <b><font color=\"#ff0000\">FREE</font></b> for Orders ABOVE 500 Rupees. Our\r\nDelivery charges are 30 Rupees for orders below 500.</span></p>', 3, '2017-03-30', '04:38:18', 1),
(26, 'Service days and time', '<p class=\"MsoNormal\"><span style=\"line-height: 115%;\" times=\"\" new=\"\" roman\",serif\"=\"\">You can order 24-7 through our website. We service\r\norder 6 days a week (Except Sunday). In case of any delay, our agent will\r\ninform you on a priority basis. You can contact us on: +92 0514848934-36 (between\r\n9am and 7pm).<span style=\"font-size: 12pt;\"><o:p></o:p></span></span></p>', 5, '2017-02-06', '09:27:20', 1),
(20, 'How to order', '<p><span style=\"line-height: 115%;\" times=\"\" new=\"\" roman\",serif\"=\"\">You can order medicines by e-mail \"order@globalcare.com.pk, WhatsApp <font color=\"#003163\"><b>03111761222</b></font> and place\r\none directly on www.globalcare.com.pk</span></p>', 1, '2017-02-06', '09:24:38', 1),
(21, 'Delivery', '<p class=\"MsoNormal\"><span style=\"line-height: 115%;\" times=\"\" new=\"\" roman\",serif\"=\"\">Home delivery service for <font color=\"#ff0000\"><b>1</b></font> to <font color=\"#ff0000\"><b>2</b></font> hours for Islamabad and Rawalpindi. We also deliver medicines across Pakistan\r\nthrough Courier Services.&nbsp;<span style=\"font-size: 12pt;\"><o:p></o:p></span></span></p>', 2, '2017-02-06', '09:25:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbljobs`
--

CREATE TABLE `tbljobs` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` longtext NOT NULL,
  `display_order` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tracking_id` int(11) NOT NULL,
  `hash` varchar(128) NOT NULL,
  `smg_prescription` varchar(64) NOT NULL,
  `smg_name` varchar(64) NOT NULL,
  `smg_email` varchar(64) NOT NULL,
  `smg_phone` varchar(32) NOT NULL,
  `smg_address` varchar(512) NOT NULL,
  `smg_terms` tinyint(4) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `post_date` date NOT NULL,
  `post_time` time NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `type`, `amount`, `product_id`, `tracking_id`, `hash`, `smg_prescription`, `smg_name`, `smg_email`, `smg_phone`, `smg_address`, `smg_terms`, `ip`, `post_date`, `post_time`, `time_stamp`, `status`) VALUES
(1, 0, '0', 0, 54311, '6aab1270668d8cac7cef2566a1c5f569', '6aab1270668d8cac7cef2566a1c5f569.png', 'Eshan', 'beingfaisalwaheed@gmail.com', '03485055095', 'Hsjsjs', 1, '203.124.29.183', '2016-12-16', '10:50:00', '2016-12-17 05:40:01', 5),
(2, 0, '0', 0, 54311, '872488f88d1b2db54d55bc8bba2fad1b', '6aab1270668d8cac7cef2566a1c5f569.png', 'Eshan', 'beingfaisalwaheed@gmail.com', '03485055095', 'Hsjsjs', 1, '203.124.29.183', '2016-12-16', '10:50:44', '2016-12-17 05:39:58', 5),
(3, 0, '0', 0, 65533, '621461af90cadfdaf0e8d4cc25129f91', '621461af90cadfdaf0e8d4cc25129f91.jpg', 'Ahmad Bashir', 'khawajaahmadlone@gmail.com', '03432000012', 'Lone CNG, GT Road, Sultanpur Havelian', 1, '39.54.42.15', '2016-12-17', '12:48:08', '2016-12-17 05:39:55', 5),
(4, 0, '0', 0, 65533, 'f9a40a4780f5e1306c46f1c8daecee3b', '621461af90cadfdaf0e8d4cc25129f91.jpg', 'Ahmad Bashir', 'khawajaahmadlone@gmail.com', '03432000012', 'Lone CNG, GT Road, Sultanpur Havelian', 1, '39.54.42.15', '2016-12-17', '12:50:33', '2016-12-17 05:39:52', 5),
(5, 0, '0', 0, 0, '99c5e07b4d5de9d18c350cdf64c5aa3d', '', 'Saboor Bhi', 'beingfaisalwaheed@gmail.com', '03485055095', 'Shshshsh', 1, '203.124.29.183', '2016-12-17', '09:20:14', '2016-12-17 05:39:50', 5),
(6, 0, '0', 0, 75006, 'cd00692c3bfe59267d5ecfac5310286c', 'cd00692c3bfe59267d5ecfac5310286c.jpg', 'Faisal Khan', 'beingfaisalwaheed@gmail.com', '03229929947', 'abc', 1, '119.159.150.57', '2016-12-17', '10:40:41', '2016-12-17 05:41:56', 5),
(7, 0, '0', 0, 75006, '59c33016884a62116be975a9bb8257e3', 'cd00692c3bfe59267d5ecfac5310286c.jpg', 'Faisal Khan', 'beingfaisalwaheed@gmail.com', '03229929947', 'abc', 1, '119.159.150.57', '2016-12-17', '10:40:58', '2016-12-17 05:41:52', 5),
(8, 0, '0', 0, 28258, 'ed3d2c21991e3bef5e069713af9fa6ca', 'ed3d2c21991e3bef5e069713af9fa6ca.jpg', 'arfa', 'beingfaisalwaheed@gmail.com', '03229929947', 'dasdadadad', 1, '119.159.150.57', '2016-12-17', '03:35:26', '2016-12-19 04:19:47', 5),
(9, 0, '0', 0, 28258, '6da9003b743b65f4c0ccd295cc484e57', 'ed3d2c21991e3bef5e069713af9fa6ca.jpg', 'arfa', 'beingfaisalwaheed@gmail.com', '03229929947', 'dasdadadad', 1, '119.159.150.57', '2016-12-17', '03:36:07', '2016-12-19 04:19:44', 5),
(10, 0, '0', 0, 474010, '647bba344396e7c8170902bcf2e15551', '647bba344396e7c8170902bcf2e15551.jpg', 'Bilal Shab', 'beingfaisalwaheed@gmail.com', '03229929947', 'sadada', 1, '119.159.150.57', '2016-12-19', '04:26:31', '2016-12-22 11:24:08', 5),
(11, 0, '0', 0, 474010, '32b30a250abd6331e03a2a1f16466346', '647bba344396e7c8170902bcf2e15551.jpg', 'Bilal Shab', 'beingfaisalwaheed@gmail.com', '03229929947', 'sadada', 1, '119.159.150.57', '2016-12-19', '04:26:58', '2016-12-22 11:24:05', 5),
(12, 0, '0', 0, 373712, 'ce78d1da254c0843eb23951ae077ff5f', 'ce78d1da254c0843eb23951ae077ff5f.jpg', 'Faisal Khan', 'faisslwaheed22@live.com', '03229929947', 'sadsadsadad', 1, '119.159.150.57', '2016-12-19', '06:02:37', '2016-12-22 11:24:00', 5),
(13, 0, '0', 0, 474010, '42e7aaa88b48137a16a1acd04ed91125', '647bba344396e7c8170902bcf2e15551.jpg', 'Bilal Shab', 'beingfaisalwaheed@gmail.com', '03229929947', 'sadada', 1, '119.159.150.57', '2016-12-19', '06:03:26', '2016-12-22 11:23:54', 5),
(14, 0, '0', 0, 261514, 'c51ce410c124a10e0db5e4b97fc2af39', 'c51ce410c124a10e0db5e4b97fc2af39.jpg', 'Ihsan', 'beingfaisalwaheed@gmail.com', '03229929947', 'asdsadsa', 1, '119.159.150.57', '2016-12-21', '02:20:53', '2016-12-22 11:23:45', 5),
(15, 0, '0', 0, 261514, 'e5841df2166dd424a57127423d276bbe', 'c51ce410c124a10e0db5e4b97fc2af39.jpg', 'Ihsan', 'beingfaisalwaheed@gmail.com', '03229929947', 'asdsadsa', 1, '119.159.150.57', '2016-12-21', '02:21:43', '2016-12-22 11:23:42', 5),
(16, 0, '0', 0, 474010, '66808e327dc79d135ba18e051673d906', '647bba344396e7c8170902bcf2e15551.jpg', 'Bilal Shab', 'beingfaisalwaheed@gmail.com', '03229929947', 'sadada', 1, '119.159.150.57', '2016-12-22', '03:38:55', '2016-12-22 11:23:39', 5),
(17, 0, '0', 0, 592417, '362e80d4df43b03ae6d3f8540cd63626', '362e80d4df43b03ae6d3f8540cd63626.jpg', 'Nasir', 'nkiani71@gmail.com', '03125118439', 'asdaasdadadasd', 1, '119.159.150.57', '2016-12-23', '09:23:52', '2016-12-27 06:03:24', 5),
(18, 0, '0', 0, 592417, '94c7bb58efc3b337800875b5d382a072', '362e80d4df43b03ae6d3f8540cd63626.jpg', 'Nasir', 'nkiani71@gmail.com', '03125118439', 'asdaasdadadasd', 1, '119.159.150.57', '2016-12-23', '09:28:21', '2016-12-27 06:03:19', 5),
(19, 0, '0', 0, 0, '9cfdf10e8fc047a44b08ed031e1f0ed1', '', 'Nagina banaras', 'nageena_banaras@hotmail.com', '03328912357', 'CB 34 GULSHAN IQBAL KARACHI', 1, '39.44.246.41', '2017-01-05', '11:33:23', '2017-01-05 11:24:48', 5),
(20, 0, '0', 7, 351420, 'abd815286ba1007abfbb8415b83ae2cf', '', 'Ahmad Lone', 'khawajaahmadlone@gmail.com', '03432000012', 'imperial college of technology, havelian and i need 40 tablets', 1, '39.54.226.78', '2017-01-07', '09:58:08', '2017-01-23 06:39:09', 5),
(21, 0, '0', 0, 247821, '2a38a4a9316c49e5a833517c45d31070', '2a38a4a9316c49e5a833517c45d31070.jpg', 'Test', 'sfsultan@gmail.com', '03334566778', 'Gsjjsjs', 1, '39.54.227.117', '2017-01-08', '05:29:05', '2017-01-23 06:33:21', 5),
(22, 0, '0', 0, 247821, '73278a4a86960eeb576a8fd4c9ec6997', '2a38a4a9316c49e5a833517c45d31070.jpg', 'Test', 'sfsultan@gmail.com', '03334566778', 'Gsjjsjs', 1, '39.54.227.117', '2017-01-08', '05:30:06', '2017-01-23 06:33:28', 5),
(23, 0, '0', 0, 247821, '63dc7ed1010d3c3b8269faf0ba7491d4', '2a38a4a9316c49e5a833517c45d31070.jpg', 'Test', 'sfsultan@gmail.com', '03334566778', 'Gsjjsjs', 1, '202.142.174.130', '2017-01-09', '09:34:56', '2017-01-23 06:33:18', 5),
(24, 0, '0', 7, 333524, 'c2626d850c80ea07e7511bbae4c76f4b', '', 'Faisal', 'beingfaisalwaheed@gmail.com', '03229929947', 'sdsadsa', 1, '119.159.150.57', '2017-01-13', '11:41:25', '2017-01-23 06:39:01', 5),
(25, 0, '0', 0, 91125, '3df1d4b96d8976ff5986393e8767f5b2', '3df1d4b96d8976ff5986393e8767f5b2.jpg', 'Amir', 'quiteamir@gmail.com', '03145248562', 'abc', 1, '119.159.150.57', '2017-01-23', '01:02:45', '2017-01-28 07:03:56', 5),
(26, 0, '0', 0, 156926, 'e7f8a7fb0b77bcb3b283af5be021448f', 'e7f8a7fb0b77bcb3b283af5be021448f.jpg', 'Ahmed', 'beingfaisalwaheed@gmail.com', '03229929947', 'BabBB', 1, '103.255.7.31', '2017-02-04', '06:29:47', '2017-02-06 04:23:53', 5),
(27, 0, '0', 0, 963827, '68ce199ec2c5517597ce0a4d89620f55', '68ce199ec2c5517597ce0a4d89620f55.jpg', 'Ahmad Bashir', 'khawajaahmadlone@gmail.com', '03432000012', 'testing', 1, '39.54.223.227', '2017-02-04', '07:24:54', '2017-02-06 04:23:50', 5),
(28, 0, '0', 0, 205428, '5705e1164a8394aace6018e27d20d237', '5705e1164a8394aace6018e27d20d237.jpg', 'Ahmed', 'beingfaisalwaheed@gmail.com', '03229929947', 'Ghh', 1, '39.54.223.227', '2017-02-04', '07:27:40', '2017-02-06 04:23:48', 5),
(29, 0, '0', 0, 205428, 'e0c641195b27425bb056ac56f8953d24', '5705e1164a8394aace6018e27d20d237.jpg', 'Ahmed', 'beingfaisalwaheed@gmail.com', '03229929947', 'Ghh', 1, '39.54.223.227', '2017-02-04', '07:29:11', '2017-02-06 04:23:46', 5),
(30, 0, '0', 0, 698930, '10a7cdd970fe135cf4f7bb55c0e3b59f', '10a7cdd970fe135cf4f7bb55c0e3b59f.png', 'Global Care Pharmacy', 'beingfaisalwaheed@gmail.com', '92 0514848934-6', 'vdvdv', 1, '119.159.150.57', '2017-02-06', '09:31:23', '2017-02-06 04:31:58', 5),
(31, 0, '0', 0, 272531, 'eba0dc302bcd9a273f8bbb72be3a687b', 'eba0dc302bcd9a273f8bbb72be3a687b.jpg', 'Global Care Pharmacy', 'beingfaisalwaheed@gmail.com', '92 0514848934-6', '221011', 1, '119.159.150.57', '2017-02-07', '11:27:11', '2017-02-07 06:28:23', 5),
(32, 0, '0', 0, 923132, '9232fe81225bcaef853ae32870a2b0fe', '9232fe81225bcaef853ae32870a2b0fe.png', 'Global Care Pharmacy', 'beingfaisalwaheed@gmail.com', '92 0514848934-6', 'sadfsadfwsds', 1, '119.159.150.57', '2017-02-07', '02:44:49', '2017-02-08 10:12:18', 5),
(33, 0, '0', 0, 771733, '182be0c5cdcd5072bb1864cdee4d3d6e', '182be0c5cdcd5072bb1864cdee4d3d6e.jpg', 'faisal', 'beingfaisalwaheed@gmail.com', '03229929947', 'building d 135 rawalpindi', 1, '119.159.150.57', '2017-02-09', '04:28:13', '2017-02-10 04:48:14', 5),
(34, 0, '0', 0, 926034, '5ef059938ba799aaa845e1c2e8a762bd', '5ef059938ba799aaa845e1c2e8a762bd.jpg', 'Global Care Pharmacy', 'beingfaisalwaheed@gmail.com', '92 0514848934-6', '111212121', 1, '119.159.150.57', '2017-02-11', '12:52:38', '2017-02-11 12:02:01', 5),
(35, 0, '0', 0, 262335, '9f53d83ec0691550f7d2507d57f4f5a2', '', 'Ahmad Bashir', 'khawajaahmadlone@gmail.com', '03432000012', 'test address', 1, '39.54.7.244', '2017-02-12', '12:33:38', '2017-02-12 06:59:18', 5),
(36, 0, '0', 0, 510636, '0584ce565c824b7b7f50282d9a19945b', '', 'Ahmad Bashir', 'khawajaahmadlone@gmail.com', '03432000012', 'havelian', 1, '39.54.7.244', '2017-02-12', '12:36:56', '2017-02-12 06:59:14', 5),
(37, 0, '0', 0, 22837, '3b3dbaf68507998acd6a5a5254ab2d76', '', 'Ahmad Bashir', 'khawajaahmadlone@gmail.com', '03432000012', 'dfs', 1, '39.54.7.244', '2017-02-12', '12:40:20', '2017-02-12 06:59:11', 5),
(38, 0, '0', 0, 139138, 'a532400ed62e772b9dc0b86f46e583ff', '', 'Global Care Pharmacy', 'beingfaisalwaheed@gmail.com', '92 0514848934-6', '2551', 1, '119.159.150.57', '2017-02-12', '02:30:54', '2017-02-12 09:31:29', 5),
(39, 0, '0', 0, 660639, '58e4d44e550d0f7ee0a23d6b02d9b0db', '', 'Mohammad Azam', 'azam.shabeer@hotmail.com', '03008347377', 'House   467 street   4 model town Humak Islamabad', 1, '115.186.136.199', '2017-02-22', '11:52:38', '2017-02-22 07:21:23', 2),
(40, 0, '0', 0, 660639, '0e01938fc48a2cfb5f2217fbfb00722d', '', 'Mohammad Azam', 'azam.shabeer@hotmail.com', '03008347377', 'House   467 street   4 model town Humak Islamabad', 1, '115.186.136.199', '2017-02-22', '12:13:36', '2017-02-22 07:21:15', 5),
(41, 0, '0', 0, 660639, '13fe9d84310e77f13a6d184dbf1232f3', '', 'Mohammad Azam', 'azam.shabeer@hotmail.com', '03008347377', 'House   467 street   4 model town Humak Islamabad', 1, '115.186.136.199', '2017-02-22', '12:14:08', '2017-02-22 07:21:11', 5),
(42, 0, '0', 0, 493642, 'a597e50502f5ff68e3e25b9114205d4a', '', 'waqar', 'waqar.cancer.1984@gmail.com', '03455887710', 'd180 6th road rawalpindi', 1, '103.255.7.47', '2017-02-22', '09:34:22', '2017-02-23 06:15:40', 2),
(43, 0, '0', 0, 172343, '371bce7dc83817b7893bcdeed13799b5', '', 'Global Care Pharmacy', 'beingfaisalwaheed@gmail.com', '92 0514848934-6', 'xfasdfa', 1, '119.159.150.57', '2017-02-23', '12:59:46', '2017-02-23 08:00:44', 5),
(44, 0, '0', 0, 667244, 'd82c8d1619ad8176d665453cfb2e55f0', '', 'Raheel', 'cmaraheel@gmail.com', '03478713201', 'Lahori Chicken Samosa Point, Ayub Chowk, Faisalabad road, Jhang Saddar', 1, '202.69.15.110', '2017-02-23', '04:38:04', '2017-02-23 12:06:33', 5),
(45, 0, '0', 0, 677345, '8e296a067a37563370ded05f5a3bf3ec', '', 'Raheel', 'cmaraheel@gmail.com', '03478713201', 'Lahori Chicken Samosa Point, Ayub Chowk, Faisalabad road, Jhang Saddar', 1, '202.69.15.110', '2017-02-23', '04:39:46', '2017-03-13 10:10:32', 2),
(46, 0, '0', 0, 68346, '3cec07e9ba5f5bb252d13f5f431e4bbb', '', 'ABC', 'beingfaisalwaheed@gmail.com', '0312815916739', 'Abc', 1, '119.159.150.57', '2017-02-28', '03:13:25', '2017-02-28 10:15:24', 5),
(47, 0, '0', 0, 208647, '210f760a89db30aa72ca258a3483cc7f', '', 'Customer', 'beingfaisalwaheed@gmail.com', '92 0514848934-36', 'House No 36, Street 2, Islamabad', 1, '119.159.150.57', '2017-02-28', '06:05:11', '2017-02-28 13:11:25', 5),
(48, 0, '0', 0, 150948, '8f14e45fceea167a5a36dedd4bea2543', '', 'Customer', 'customer@gmail.com', '03211234567', 'House No 25, Street 2, Sector G10 3 iSLAMABAD', 1, '119.159.150.57', '2017-02-28', '06:19:49', '2017-02-28 13:28:16', 5),
(49, 0, '0', 0, 978849, '67d16d00201083a2b118dd5128dd6f59', '', 'ABC', 'beingfaisalwaheed@gmail.com', '03125845439', 'Blue area Islamabad', 1, '119.159.150.57', '2017-03-01', '05:11:49', '2017-03-01 12:14:26', 5),
(50, 0, '0', 0, 97550, 'c3992e9a68c5ae12bd18488bc579b30d', '', 'Habib', 'habinslm29@gmail.com', '03335551148', 'Lakki', 1, '103.255.6.97', '2017-03-03', '04:28:54', '2017-03-04 09:38:43', 5),
(51, 0, '0', 0, 786851, 'c15da1f2b5e5ed6e6837a3802f0d1593', '', 'saud', 'sauood8@gmail.com', '03335606691', 'house 132 street 5 tika khan town baharakaho islamabad', 1, '43.245.11.216', '2017-03-03', '11:28:09', '2017-03-04 05:58:08', 5),
(52, 0, '0', 0, 954052, 'ec8ce6abb3e952a85b8551ba726a1227', '', 'saud', 'sauood8@gmail.com', '03335606691', 'house 132 street 5 tika khan town baharakaho islamabad', 1, '43.245.11.216', '2017-03-03', '11:28:40', '2017-03-07 09:58:12', 5),
(53, 0, '0', 0, 536953, 'edfbe1afcf9246bb0d40eb4d8027d90f', '', 'Usama Munir', 'Umunir344@gmail.com', '03035380437', 'Dhoke Banaras Millatabad Rawalpindi', 1, '202.69.15.237', '2017-03-05', '12:55:48', '2017-03-10 12:09:38', 2),
(54, 0, '0', 0, 181754, '0c74b7f78409a4022a2c4c5a5ca3ee19', '', 'Raheel Hussain', 'cmaraheel@gmail.com', '03457940473', 'Lahori Chicken Samosa Point, Faisalabad road, Ayub Chowk, Jhang Saddar.', 1, '202.69.15.224', '2017-03-10', '04:26:53', '2017-03-10 12:09:07', 5),
(55, 1, '0', 0, 768555, '97e8527feaf77a97fc38f34216141515', '', '', '', '', '', 0, '39.54.210.2', '2017-03-15', '10:54:16', '2017-03-16 09:12:28', 5),
(56, 1, '0', 0, 445856, '47d1e990583c9c67424d369f3414728e', '', '', '', '', '', 0, '39.54.110.47', '2017-03-16', '06:58:19', '2017-03-16 09:12:25', 5),
(57, 1, '0', 0, 313457, 'b2f627fff19fda463cb386442eac2b3d', '', '', '', '', '', 0, '39.54.110.47', '2017-03-16', '07:15:08', '2017-03-16 09:12:22', 5),
(58, 1, '0', 0, 723158, '6faa8040da20ef399b63a72d0e4ab575', '', 'Ahmad Bashir', 'khawajaahmadlone@gmail.com', '03432000012', 'test', 1, '39.54.152.158', '2017-03-16', '05:15:55', '2017-03-16 12:40:18', 5),
(59, 1, '1230', 0, 144659, 'd947bf06a885db0d477d707121934ff8', '', 'Ahmad Bashir', 'khawajaahmadlone@gmail.com', '03432000012', 'sdf', 1, '', '2017-03-16', '05:30:02', '2017-03-16 12:40:14', 5),
(60, 1, '300', 0, 377860, '5ef059938ba799aaa845e1c2e8a762bd', '', 'Nazia Sherif', 'beingfaisalwaheed@gmail.com', '03229929947', 'asdasdsadasdasdasdasdsad', 1, '', '2017-03-17', '12:35:54', '2017-03-17 10:25:12', 5),
(61, 1, '1410', 0, 994661, '1534b76d325a8f591b52d302e7181331', '', 'Ahmad Bashir', 'khawajaahmadlone@gmail.com', '03432000012', 'testing', 1, '', '2017-03-22', '12:30:08', '2017-03-22 06:37:56', 5),
(62, 1, '650', 0, 893462, '3dd48ab31d016ffcbf3314df2b3cb9ce', '', 'Nazia Sherif', 'beingfaisalwaheed@gmail.com', '03125845439', 'adasd', 1, '', '2017-03-22', '11:12:45', '2017-03-22 06:31:41', 5),
(63, 1, '980', 0, 510763, 'e5841df2166dd424a57127423d276bbe', '', 'Nazia Sherif', 'beingfaisalwaheed@gmail.com', '03125845439', 'sdfsdfsdf', 1, '', '2017-03-22', '11:16:08', '2017-03-22 06:31:32', 5),
(64, 1, '0', 0, 702264, 'd93ed5b6db83be78efb0d05ae420158e', '', '', '', '', '', 0, '119.159.150.57', '2017-03-22', '11:18:58', '2017-03-22 06:31:28', 5),
(65, 1, '426', 0, 229865, 'ac1dd209cbcc5e5d1c6e28598e8cbbe8', '', 'Nazia Sherif', 'faisalmahro3@gmail.com', '03125845439', 'asdasd', 1, '', '2017-03-27', '03:25:58', '2017-03-27 10:26:37', 5),
(66, 1, '0', 0, 368166, '5807a685d1a9ab3b599035bc566ce2b9', '', '', '', '', '', 0, '119.159.150.57', '2017-03-27', '03:31:49', '2017-03-27 10:35:37', 5),
(67, 0, '0', 0, 233867, '5c572eca050594c7bc3c36e7e8ab9550', '', 'Customer 1', 'customer@globalcare.com.pk', '03111761222', 'abc', 1, '119.159.150.57', '2017-03-27', '07:41:40', '2017-03-28 05:17:33', 5),
(68, 1, '0', 0, 90268, 'db8e1af0cb3aca1ae2d0018624204529', '', '', '', '', '', 0, '119.159.150.57', '2017-03-28', '10:24:08', '2017-03-28 05:25:14', 5),
(69, 1, '0', 0, 297569, 'cfbce4c1d7c425baf21d6b6f2babe6be', '', '', '', '', '', 0, '119.159.150.57', '2017-03-28', '02:14:54', '2017-03-28 09:22:10', 5),
(70, 1, '0', 0, 561870, 'da8ce53cf0240070ce6c69c48cd588ee', '', '', '', '', '', 0, '39.54.2.154', '2017-03-29', '09:34:14', '2017-03-29 05:19:56', 5),
(71, 1, '0', 0, 512471, 'e820a45f1dfc7b95282d10b6087e11c0', '', '', '', '', '', 0, '119.159.150.57', '2017-03-29', '01:42:06', '2017-03-29 08:42:40', 5),
(72, 1, '0', 0, 724372, '217eedd1ba8c592db97d0dbe54c7adfc', '', '', '', '', '', 0, '119.159.150.57', '2017-03-29', '03:56:29', '2017-03-29 10:57:42', 5),
(73, 0, '0', 0, 966373, 'c81e728d9d4c2f636f067f89cc14862c', '', 'Barnypok', '', '44374382630', 'of7scf http   www.LnAJ7K8QSpkiStk3sLL0hQP6MO2wQ8gO.com', 0, '5.188.211.26', '2017-04-02', '05:52:30', '2017-04-03 04:48:56', 5),
(74, 0, '0', 0, 392774, 'd1f491a404d6854880943e5c3cd9ca25', '', 'Muhammad Saleem  Akbar', 'saleemkhan6881@gmail.com', '03007349269', 'Mohlla bukhari wala street no.2 govt college for women Muzaffar GARH', 1, '182.186.101.63', '2017-04-04', '05:21:10', '2017-04-04 13:25:50', 2),
(75, 0, '0', 0, 825075, '069d3bb002acd8d7dd095917f9efe4cb', '', 'Muhammad Saleem  Akbar', 'saleemkhan6881@gmail.com', '03007349269', 'Mohlla bukhari wala street no.2 govt college for women Muzaffar GARH', 1, '182.186.101.63', '2017-04-04', '05:21:32', '2017-04-04 13:21:47', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `page_name` varchar(32) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` longtext NOT NULL,
  `video` varchar(500) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `page_name`, `title`, `description`, `video`, `time_stamp`) VALUES
(1, 'About us', 'Welcome to Global Care Pharmacy', '<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Global Care Pharmacy is the first\r\nonline Pharmacy in Pakistan where users can buy medicines by uploading their\r\nprescriptions on website or WhatsApp. You can also make an order on call. <o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Global Care Pharmacy is an easy,\r\nreliable way to get your medications at your door step and medicines at lower\r\nprice.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Global Care Pharmacy is licensed\r\nPharmacy in Rawalpindi as well as fulfillment home delivery services across\r\nPakistan. <o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">We are committed to save your time\r\nand money. You always receive the lowest price while ordering your medications\r\nfrom Global Care Pharmacy. By using the online pharmacy services of Global Care\r\nPharmacy, be assured that you will get only genuine medicines along with bill\r\nevery time.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">All orders are backed with a 100%\r\nPrice Match Guarantee. Purchase all your medicines from Global Care Pharmacy\r\nwith confidence.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Patient counselling from licensed\r\npharmacist is available for our customers from 9am to 5pm. Monday to Friday\r\nexcluding holidays.&nbsp;<o:p></o:p></p><h3 style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">How to Order</h3><p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Website:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;www.globalcare.com.pk &nbsp;<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">WhatsApp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +92 311 176 1222<o:p></o:p></p><p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +92 051 484 8934-36<o:p></o:p></p><h3 style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Benefits of Online Pharmacy</h3><p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></p><ul><li style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">You could pay less.<o:p></o:p></li><li style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Be rest assured that you will get\r\ngenuine medicines along with valid bill.<o:p></o:p></li><li style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-variant-numeric: normal; font-stretch: normal; line-height: normal;\">T</span>alk with a licensed pharmacist <o:p></o:p></li><li style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Free and fast Delivery (Within 1\r\nhour).<o:p></o:p></li><li style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Save your time and money.</li><li style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"text-align: center;\">We serve every day from 9am to 11pm.</span></li></ul><p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p>&nbsp;</o:p></p><p style=\"margin-top:0in;margin-right:0in;margin-bottom:7.5pt;margin-left:0in;\r\ntext-align:justify\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span style=\"line-height: 107%;\"><o:p>&nbsp;</o:p></span></p>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rMbKaZ5viso\" frameborder=\"0\" allowfullscreen></iframe>', '2017-03-29 07:14:10'),
(2, 'Privacy Policy', 'Your Privacy is important to our company', '<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">This privacy policy has\r\nbeen assembled to better assist those who are fretful with how their Personally\r\nIdentifiable Information\' (PII) is being used online. PII, as defined in US\r\nprivacy law and information security, is information that can be used on its\r\nown or with other information to identify, contact, or locate a single person,\r\nor to detect an individual in context. Please read our privacy policy carefully\r\nto get a clear understanding of how we collect, use, protect or otherwise knob\r\nyour Personally Identifiable Information in accord with our website.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n\r\n\r\n\r\n\r\n<p style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">When uploading on our\r\nsite, as suitable, you may be asked to enter your name, email address, mailing\r\naddress, phone number to help you with your experience.<o:p></o:p></span></p><p style=\"margin-bottom: 7.5pt; line-height: normal;\"></p><div style=\"text-align: justify;\"><font face=\"Helvetica, sans-serif\"><b><br></b></font></div><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><div style=\"text-align: justify;\"><span style=\"font-size: 10.5pt;\">We collect information\r\nfrom you when you place an order, fill out a form on our site.</span></div><o:p></o:p></span><p></p><p style=\"margin-bottom: 0.0001pt; line-height: normal;\"></p><div style=\"text-align: justify;\"><span style=\"font-family: Helvetica, sans-serif; font-size: 10.5pt;\">We may use the\r\ninformation we collect from you when you register, make a purchase, sign up for\r\nour newsletter, respond to a survey or marketing communication, surf the\r\nwebsite, or use certain other site features in the following ways:</span></div><div style=\"text-align: justify;\"><font face=\"Helvetica, sans-serif\"><br></font></div>\r\n<!--[if !supportLineBreakNewLine]-->\r\n<!--[endif]--><font face=\"Helvetica, sans-serif\"><span style=\"font-size: 10.5pt;\"><o:p></o:p></span></font><p></p>\r\n\r\n\r\n\r\n\r\n\r\n<ul><li style=\"text-align: justify; margin-bottom: 0.0001pt; text-indent: -0.25in; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Symbol;\"><span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">To improve our website\r\nin order to healthier serve you.<o:p></o:p></span></li><li style=\"text-align: justify; margin-bottom: 0.0001pt; text-indent: -0.25in; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Symbol;\"><span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">To allow us to better\r\nservice you in returning to your customer service requests.<o:p></o:p></span></li><li style=\"text-align: justify; margin-bottom: 0.0001pt; text-indent: -0.25in; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Symbol;\"><span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">To quickly process your\r\ntransactions.<o:p></o:p></span></li></ul>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">How do we protect your\r\ninformation?</span></b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">We do not use vulnerability\r\nscanning and/or scanning to PCI standards.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">We only provide articles\r\nand information.&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><br></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">We use regular Malware\r\nScanning.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">Your personal\r\ninformation is contained behind secured networks and is only reachable by a\r\nlimited number of persons who have singular access rights to such systems, and\r\nare required to keep the data confidential. In addition, all sensitive/credit\r\ninformation you supply is encrypted via Secure Socket Layer (SSL) technology.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">We implement a variety\r\nof security measures when a user places an order enters, submits.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">All transactions are\r\nprocessed through a gateway provider and are not stored or processed on our\r\nservers.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 7.5pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">Do we use \'cookies\'?</span></b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">We do not use cookies\r\nfor tracking purposes<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">Third-party disclosure</span></b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">We do not sell, trade,\r\nor otherwise transfer to outside parties your Personally Identifiable\r\nInformation.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">Third-party links</span></b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">We do not offer\r\nthird-party products or services on our website. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></b><b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">Google</span></b><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\">We do not advertise\r\ngoogle ads.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: justify; margin-bottom: 7.5pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: Helvetica, sans-serif;\"><o:p>&nbsp;</o:p></span></p>', '', '2016-12-27 07:13:07'),
(3, 'Conditions of Use', 'Terms to be followed', '<p><br></p>', '', '2016-12-13 16:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblperscriptions`
--

CREATE TABLE `tblperscriptions` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblperscriptions`
--

INSERT INTO `tblperscriptions` (`id`, `order_id`, `title`, `status`) VALUES
(1, 36, '1486841816.jpg', 1),
(2, 36, '2973683632.jpg', 1),
(3, 37, '1486842020.jpg', 1),
(4, 37, '2973684040.jpg', 1),
(5, 38, '1486891854.jpg', 1),
(6, 38, '2973783708.jpg', 1),
(7, 38, '4460675562.jpg', 1),
(8, 38, '5947567416.jpg', 1),
(9, 38, '7434459270.png', 1),
(10, 43, '1487836786.jpg', 1),
(11, 44, '1487849884.png', 1),
(12, 45, '1487849986.png', 1),
(13, 46, '1488276805.jpeg', 1),
(14, 47, '1488287112.png', 1),
(15, 48, '1488287989.png', 1),
(16, 49, '1488370309.jpg', 1),
(17, 52, '1488565721.jpg', 1),
(18, 53, '1488700548.jpg', 1),
(19, 54, '1489145214.jpg', 1),
(20, 67, '1490625700.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `photo` varchar(128) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `availability` tinyint(4) NOT NULL,
  `quantity` int(11) NOT NULL,
  `company` int(11) NOT NULL,
  `formula` varchar(256) NOT NULL,
  `details` longtext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `post_time` time NOT NULL,
  `post_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `photo`, `price`, `title`, `slug`, `availability`, `quantity`, `company`, `formula`, `details`, `status`, `post_time`, `post_date`) VALUES
(1, 'gms_1482784032_1.jpg', '15.00', 'Panadol', 'panadol-1', 1, 0, 0, '', '', 127, '01:27:12', '2016-12-27'),
(2, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(3, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(4, 'gms_1483333206_4.jpg', '110.00', 'Zestril ', 'zestril-4', 1, 0, 0, '', '', 127, '10:00:06', '2017-01-02'),
(5, 'gms_1483637939_5.jpg', '140.00', 'Augmentin 100mg', 'augmentin-100mg-5', 1, 0, 0, '', '', 127, '10:38:59', '2017-01-05'),
(6, 'gms_1483637986_6.png', '120.00', 'Flagyl Syrup', 'flagyl-syrup-6', 1, 0, 0, '', '', 127, '10:39:46', '2017-01-05'),
(7, 'gms_1483803593_7.jpg', '145.00', 'Panadol CF', 'panadol-cf-7', 1, 0, 0, '', '', 127, '08:39:53', '2017-01-07'),
(8, 'gms_1483803640_8.jpg', '120.00', 'Panadol Syrup', 'panadol-syrup-8', 1, 0, 0, '', '', 127, '08:40:40', '2017-01-07'),
(9, '', '40.00', 'Gravinate', 'gravinate-9', 1, 0, 0, '', '', 127, '11:35:12', '2017-01-23'),
(10, '', '10.00', 'Panadol', 'panadol-10', 1, 0, 0, '', '', 127, '01:06:41', '2017-01-23'),
(11, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(12, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(13, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(14, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(15, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(16, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(17, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(18, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(19, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(20, '', '100.00', 'Condom', 'condom-20', 1, 0, 0, '', '', 127, '01:03:44', '2017-03-05'),
(21, 'gms_1489314464_21.jpg', '120.00', 'Panadol CF', 'panadol-cf-21', 1, 0, 0, '', '', 1, '03:27:44', '2017-03-12'),
(22, 'gms_1489314502_22.jpg', '60.00', 'Panadol Syrup', 'panadol-syrup-22', 1, 0, 0, '', '', 1, '03:28:22', '2017-03-12'),
(23, 'gms_1489314585_23.jpg', '210.00', 'Augmentin 100mg', 'augmentin-100mg-23', 1, 50, 3, 'abc formula', 'testing', 1, '12:26:45', '2017-03-22'),
(24, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(25, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(26, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(27, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(28, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(29, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(30, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(31, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(32, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(33, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(34, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(35, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(36, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(37, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(38, 'gms_1490163098_38.jpg', '650.00', 'Hitone Face Wash ', 'hitone-face-wash-38', 1, 50, 3, 'Actipone', 'actipone', 1, '11:12:10', '2017-03-22'),
(39, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(40, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(41, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(42, '', '159.00', 'klaricid  susp 125mg/5ml', 'klaricid-susp-125mg/5ml-42', 1, 1, 7, 'clarithromycin', '', 1, '02:33:32', '2017-03-27'),
(43, '', '531.00', 'Klaricid  susp 250mg/5ml', 'klaricid-susp-250mg/5ml-43', 1, 1, 7, 'clarithromycin', '', 1, '02:35:16', '2017-03-27'),
(44, '', '658.00', 'Klaricid  500mg tab', 'klaricid-500mg-tab-44', 1, 10, 7, 'clarithromycin', '', 1, '03:25:43', '2017-03-27'),
(45, '', '364.00', 'Klaricid  250mg', 'klaricid-250mg-45', 1, 10, 7, 'clarithromycin', '', 1, '02:38:02', '2017-03-27'),
(46, '', '328.00', 'Klaricid  XL 500mg tab', 'klaricid-xl-500mg-tab-46', 1, 5, 7, 'clarithromycin', '', 1, '03:26:20', '2017-03-27'),
(47, '', '510.00', 'Serc 16mg', 'serc-16mg-47', 1, 30, 7, 'Betahistine dihydrochloride', '', 1, '02:40:51', '2017-03-27'),
(48, '', '293.00', 'Serc 8mg', 'serc-8mg-48', 1, 30, 7, 'Betahistine dihydrochloride', '', 1, '02:41:48', '2017-03-27'),
(49, '', '464.00', 'Serc 24mg', 'serc-24mg-49', 1, 30, 7, 'Betahistine dihydrochloride', '', 1, '02:42:21', '2017-03-27'),
(50, '', '435.00', 'Faverin 100mg', 'faverin-100mg-50', 1, 10, 7, 'fluvoxamine maleate', '', 1, '02:43:36', '2017-03-27'),
(51, '', '1312.00', 'Faverin 50mg', 'faverin-50mg-51', 1, 60, 7, 'fluvoxamine maleate', '', 1, '02:44:33', '2017-03-27'),
(52, '', '485.00', 'Moksi 400mg', 'moksi-400mg-52', 1, 5, 7, 'Moxifloxacin', '', 1, '02:45:35', '2017-03-27'),
(53, '', '225.00', 'Floaid 4mg sache', 'floaid-4mg-sache-53', 1, 14, 7, 'Montelukast sodium', '', 1, '02:46:46', '2017-03-27'),
(54, '', '140.00', 'Floaid 5mg', 'floaid-5mg-54', 1, 14, 7, 'Montelukast sodium', '', 1, '02:47:22', '2017-03-27'),
(55, '', '213.00', 'Floaid 10mg', 'floaid-10mg-55', 1, 14, 7, 'Montelukast sodium', '', 1, '11:20:16', '2017-03-29'),
(56, '', '99.00', 'Prothiaden 75mg', 'prothiaden-75mg-56', 1, 30, 7, 'Dosulepin hydrochloride', '', 1, '02:49:39', '2017-03-27'),
(57, '', '200.00', 'Ruvastat 10mg', 'ruvastat-10mg-57', 1, 10, 7, 'Rosuvastatin', '', 1, '02:50:49', '2017-03-27'),
(58, '', '120.00', 'Ruvastat 5mg', 'ruvastat-5mg-58', 1, 10, 7, 'Rosuvastatin', '', 1, '02:51:24', '2017-03-27'),
(59, '', '75.00', 'Entamizole DS 500mg/400mg', 'entamizole-ds-500mg/400mg-59', 1, 15, 7, 'Diloxanide furoateL/Metranidazole', '', 1, '02:53:26', '2017-03-27'),
(60, '', '74.00', 'Entamizole 250mg/200mg', 'entamizole-250mg/200mg-60', 1, 30, 7, 'Diloxanide furoateL/Metranidazole', '', 1, '02:54:14', '2017-03-27'),
(61, '', '121.00', 'Ezomol 20mg', 'ezomol-20mg-61', 1, 14, 7, 'esomeprazole', '', 1, '02:55:36', '2017-03-27'),
(62, '', '864.00', 'Protium 40mg', 'protium-40mg-62', 1, 14, 7, 'pantoprazole', '', 1, '02:56:23', '2017-03-27'),
(63, '', '627.00', 'Ganaton 50mg', 'ganaton-50mg-63', 1, 30, 7, 'itopride hydrochloride', '', 1, '02:58:07', '2017-03-27'),
(64, '', '818.00', 'Enoxabid 400mg', 'enoxabid-400mg-64', 1, 20, 7, 'Enoxaccin sesquihydrate', '', 1, '02:59:28', '2017-03-27'),
(65, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(66, '', '337.00', 'Ganaton OD 150mg', 'ganaton-od-150mg-66', 1, 10, 7, 'itopride hydrochloride', '', 1, '03:00:18', '2017-03-27'),
(67, '', '52.00', 'Bevidox 30S', 'bevidox-30s-67', 1, 30, 7, 'VITAMIN B 1 COMPLEX', '', 1, '03:01:38', '2017-03-27'),
(68, '', '98.00', 'Bevidox 60S', 'bevidox-60s-68', 1, 60, 7, 'VITAMIN B 1 COMPLEX', '', 1, '03:02:08', '2017-03-27'),
(69, '', '56.00', 'Optilex M', 'optilex-m-69', 1, 30, 0, 'MULTIVITAMIN', '', 1, '03:04:14', '2017-03-27'),
(70, '', '168.00', 'Surbex z', 'surbex-z-70', 1, 30, 7, 'multivitamin', '', 1, '03:05:10', '2017-03-27'),
(71, '', '62.00', 'Surbex T', 'surbex-t-71', 1, 30, 7, 'multivitamin', '', 1, '03:05:53', '2017-03-27'),
(72, '', '255.00', 'Hytrin 1mg', 'hytrin-1mg-72', 1, 30, 7, 'terazocin hydrocloride', '', 1, '03:06:51', '2017-03-27'),
(73, '', '540.00', 'Dupvaston 10mg', 'dupvaston-10mg-73', 1, 20, 7, 'dydrogesterone', '', 1, '03:08:00', '2017-03-27'),
(74, '', '30.00', 'Thyronorm 25mcg', 'thyronorm-25mcg-74', 1, 30, 7, 'levothyroxine sodium', '', 1, '03:09:19', '2017-03-27'),
(75, '', '35.00', 'Thyronorm 50mcg', 'thyronorm-50mcg-75', 1, 30, 7, 'levothyroxine sodium', '', 1, '03:10:13', '2017-03-27'),
(76, '', '45.00', 'Thyronorm 75mcg', 'thyronorm-75mcg-76', 1, 30, 7, 'levothyroxine sodium', '', 1, '03:10:52', '2017-03-27'),
(77, '', '50.00', 'Brufen 100mg/5ml susp 120ml', 'brufen-100mg/5ml-susp-120ml-77', 1, 1, 7, 'ibuprofen', '', 1, '03:11:58', '2017-03-27'),
(78, '', '61.00', 'Brufen 200mg/5ml susp 90ml', 'brufen-200mg/5ml-susp-90ml-78', 1, 1, 7, 'ibuprofen', '', 1, '03:12:34', '2017-03-27'),
(79, '', '108.00', 'Brufen tab 600mg', 'brufen-tab-600mg-79', 1, 36, 7, 'ibuprofen', '', 1, '03:13:41', '2017-03-27'),
(80, '', '72.00', 'Bijectal inj 10ML', 'bijectal-inj-10ml-80', 1, 1, 7, 'VITAMIN B 1 COMPLEX', '', 1, '03:15:12', '2017-03-27'),
(81, '', '679.00', 'Sparaxin    100mg', 'sparaxin--100mg-81', 1, 10, 7, 'sparfloxacin', '', 1, '03:16:18', '2017-03-27'),
(82, '', '128.00', 'Flexin 250mg', 'flexin-250mg-82', 1, 8, 7, 'naproxen', '', 1, '03:17:18', '2017-03-27'),
(83, '', '229.00', 'Flexin 500mg', 'flexin-500mg-83', 1, 20, 7, 'naproxen', '', 1, '03:18:13', '2017-03-27'),
(84, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(85, '', '404.00', 'Artifen  50mg tab', 'artifen-50mg-tab-85', 1, 100, 7, 'diclofenac sodium', '', 1, '03:19:56', '2017-03-27'),
(86, '', '137.00', 'Artifen  inj', 'artifen-inj-86', 1, 5, 7, 'diclofenac sodium', '', 1, '03:20:46', '2017-03-27'),
(87, '', '114.00', 'Ibert folic 500', 'ibert-folic-500-87', 1, 30, 7, 'folic acid + vitamin complex', '', 1, '03:22:20', '2017-03-27'),
(88, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(89, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(90, '', '76.00', 'Dicloran GEL ', 'dicloran-gel-90', 1, 1, 61, 'Diclofenac Diethyl Ammonium Salt', '', 1, '10:22:48', '2017-03-28'),
(91, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(92, '', '33.00', 'Xylocaine jelly', 'xylocaine-jelly-92', 1, 1, 17, 'LIGNOCAINE HCL', '', 1, '10:53:09', '2017-03-28'),
(93, '', '48.00', 'Xylocaine 5% ointment', 'xylocaine-5%-ointment-93', 1, 1, 17, 'lignocaine', '', 1, '10:54:09', '2017-03-28'),
(94, '', '60.00', 'Wintogeno balm', 'wintogeno-balm-94', 1, 1, 28, 'Methyl salicylate', '', 1, '11:22:28', '2017-03-29'),
(95, '', '39.00', 'Tronolane cream', 'tronolane-cream-95', 1, 1, 7, 'pramoxine HCL', '', 1, '10:57:00', '2017-03-28'),
(96, '', '59.00', 'Travogen cream 1%', 'travogen-cream-1%-96', 1, 1, 18, 'isoconazole nitrate', '', 1, '10:58:07', '2017-03-28'),
(97, '', '70.00', 'Scabiderm cream', 'scabiderm-cream-97', 1, 1, 78, 'PERMETHRIN', '', 1, '11:01:25', '2017-03-28'),
(98, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(99, '', '1.00', 'SAFE BURN cream', 'safe-burn-cream-99', 1, 50, 0, 'silver sulfadiazine', '', 1, '11:02:38', '2017-03-28'),
(100, '', '1.00', 'synalar-N', 'synalar-n-100', 1, 104, 57, 'fluocinolone acetonide and neomycin', '', 1, '11:07:56', '2017-03-28'),
(101, '', '211.00', 'Retrive cream', 'retrive-cream-101', 1, 1, 57, 'fluocinolone acetonide and tretinoin', '', 1, '11:09:12', '2017-03-28'),
(102, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(103, '', '62.00', 'ribufen gel 25g', 'ribufen-gel-25g-103', 1, 1, 7, 'ibuprofen,methyl salicylate,menthol', '', 1, '11:11:43', '2017-03-28'),
(104, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(105, '', '52.00', 'Rashinal 20g', 'rashinal-20g-105', 1, 1, 7, 'benzalkonium chloride and zinc oxide', '', 127, '11:12:46', '2017-03-28'),
(106, '', '76.00', 'Rashinal 50g', 'rashinal-50g-106', 1, 1, 7, 'benzalkonium chloride and zinc oxide', '', 1, '11:15:20', '2017-03-28'),
(107, '', '49.00', 'Somogel 20g', 'somogel-20g-107', 1, 1, 7, 'lignocaine,ethanol and cetylpyradinium chloride', '', 1, '11:16:57', '2017-03-28'),
(108, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(109, '', '80.00', 'Skin A cream', 'skin-a-cream-109', 1, 1, 40, 'tretinion', '', 1, '11:21:28', '2017-03-28'),
(110, '', '21.00', 'polyfax eye ointment', 'polyfax-eye-ointment-110', 1, 1, 3, 'polymyxin B sulphate', '', 1, '11:23:02', '2017-03-28'),
(111, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(112, '', '100.00', 'LAZMA  15g cream', 'lazma-15g-cream-112', 1, 1, 79, 'fluocinolone acetonide and tretinoin', '', 1, '11:28:17', '2017-03-28'),
(113, '', '230.00', 'Oratraxin gel', 'oratraxin-gel-113', 1, 1, 81, 'ISOTRETINION/ ERYTHROMYCIN', '', 1, '11:36:55', '2017-03-28'),
(114, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(115, '', '175.00', 'LAZMA  30g cream', 'lazma-30g-cream-115', 1, 1, 81, 'fluocinolone acetonide and tretinoin', '', 1, '11:38:04', '2017-03-28'),
(116, '', '95.00', 'Oratane gel 10g', 'oratane-gel-10g-116', 1, 1, 81, 'ISOTRETINION', '', 1, '11:39:34', '2017-03-28'),
(117, '', '59.00', 'Oratane capsules 20mg', 'oratane-capsules-20mg-117', 1, 1, 81, 'ISOTRETINION', '', 1, '11:40:47', '2017-03-28'),
(118, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(119, '', '17.00', 'hydrocortisone cream 1%', 'hydrocortisone-cream-1%-119', 1, 1, 82, 'hydrocortisone', '', 1, '11:43:52', '2017-03-28'),
(120, '', '110.00', 'mycitracin plus ointment', 'mycitracin-plus-ointment-120', 1, 1, 31, 'Bacitracin/polymyxin/neomycin/lidocaine', '', 1, '11:52:13', '2017-03-28'),
(121, '', '66.00', 'provate-G ointment', 'provate-g-ointment-121', 1, 1, 55, 'Betamethasone Dipropionate Gentamicin sulphate', '', 1, '11:56:16', '2017-03-28'),
(122, '', '61.00', 'provate cream 15g', 'provate-cream-15g-122', 1, 1, 83, 'Betamethasone Dipropionate ', '', 1, '12:01:35', '2017-03-28'),
(123, '', '66.00', 'provate-G cream 15g', 'provate-g-cream-15g-123', 1, 1, 83, 'Betamethasone Dipropionate ', '', 1, '12:06:26', '2017-03-28'),
(124, '', '50.00', 'polyfax skin ointment 20g', 'polyfax-skin-ointment-20g-124', 1, 1, 3, 'polymyxin B sulphate', '', 1, '12:04:05', '2017-03-28'),
(125, '', '52.00', 'Healit skin ointment 10g', 'healit-skin-ointment-10g-125', 1, 1, 40, 'Bacitracin polymycin neomycin lidocain', '', 1, '12:10:57', '2017-03-28'),
(126, '', '100.00', 'hyderquin plus cream', 'hyderquin-plus-cream-126', 1, 1, 40, 'hydroquine +fluocinolone acetonide', '', 1, '12:12:44', '2017-03-28'),
(127, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(128, '', '227.00', 'Froben gel 50g', 'froben-gel-50g-128', 1, 1, 7, 'flurbiprofen', '', 1, '12:50:38', '2017-03-28'),
(129, '', '250.00', 'deep heaT 50g', 'deep-heat-50g-129', 1, 1, 40, 'menthol,chloroxylenol,methyl salicylate', '', 1, '12:52:48', '2017-03-28'),
(130, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(131, '', '16.00', 'test ahmad', 'test-ahmad-131', 0, 10, 79, 'abc formula', 'sadf', 127, '01:54:08', '2017-03-28'),
(132, '', '100.00', 'Gynosporin cream', 'gynosporin-cream-132', 1, 1, 55, 'clotrimmazole ', '', 1, '01:50:48', '2017-03-28'),
(133, '', '190.00', 'Fuskin H', 'fuskin-h-133', 1, 1, 57, 'FUSIDIC ACID', '', 1, '01:52:15', '2017-03-28'),
(134, '', '180.00', 'FUSKIN B', 'fuskin-b-134', 1, 1, 57, 'Fusidic acid,betamethasone', '', 1, '01:53:44', '2017-03-28'),
(135, '', '145.00', 'Fsid-H', 'fsid-h-135', 1, 1, 0, 'Fusidic acid, hydrocortisone', '', 1, '01:54:57', '2017-03-28'),
(136, '', '300.00', 'Fucidin H', 'fucidin-h-136', 1, 1, 81, 'Fusidic acid, hydrocortisone', '', 1, '01:56:23', '2017-03-28'),
(137, '', '275.00', 'Fucicort ', 'fucicort-137', 1, 1, 82, 'Fusidic acid,betamethasone', '', 1, '01:57:37', '2017-03-28'),
(138, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(139, '', '76.00', 'Dicloran gel', 'dicloran-gel-139', 1, 1, 61, 'DICLOFENAC DIETHYL AMMONIUM SALT', '', 1, '02:30:37', '2017-03-28'),
(140, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(141, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(142, '', '37.00', 'Dermovate Ointment', 'dermovate-ointment-142', 1, 1, 3, 'Clobetasol', '', 1, '05:51:51', '2017-03-28'),
(143, '', '200.00', 'Conaz lotion', 'conaz-lotion-143', 1, 1, 40, 'ketoconazole', '', 1, '02:54:57', '2017-03-28'),
(144, '', '100.00', 'clindamax gel', 'clindamax-gel-144', 1, 1, 81, 'clindamycin phosphate', '', 1, '02:58:22', '2017-03-28'),
(145, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(146, '', '242.00', 'curoderm-H cream', 'curoderm-h-cream-146', 1, 1, 40, 'Fusidic acid, hydrocortisone', '', 1, '02:59:39', '2017-03-28'),
(147, '', '23.00', 'cortisporin eye ointment', 'cortisporin-eye-ointment-147', 1, 1, 3, 'polymyxin B sulphate', '', 1, '03:01:29', '2017-03-28'),
(148, '', '143.00', 'Clear cream', 'clear-cream-148', 1, 1, 83, 'adaplene', '', 1, '03:02:26', '2017-03-28'),
(149, '', '44.00', 'Clobederm lotion', 'clobederm-lotion-149', 1, 1, 40, 'clobetasol propionate', '', 1, '03:05:24', '2017-03-28'),
(150, '', '101.00', 'clinagel gel', 'clinagel-gel-150', 1, 1, 84, 'clindamycin phosphate', '', 1, '04:05:17', '2017-03-28'),
(151, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(152, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(153, '', '55.00', 'Clobevate Onitment', 'clobevate-onitment-153', 1, 1, 84, 'Clobetasol Proinate', '', 1, '04:19:14', '2017-03-28'),
(154, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(155, '', '59.00', 'Clobevate Cream', 'clobevate-cream-155', 1, 1, 58, 'clobetasol propionate', '', 1, '04:21:02', '2017-03-28'),
(156, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(157, '', '48.00', 'Clobederm-NN (Onitment)', 'clobederm-nn-(onitment)-157', 1, 1, 40, 'Clobetasol Propionate+Neomycin Sulphate+Nystatin', '', 1, '04:23:40', '2017-03-28'),
(158, '', '122.00', 'Cutuvate Cream', 'cutuvate-cream-158', 1, 1, 3, 'Fluticasone Proionate', '', 1, '04:25:11', '2017-03-28'),
(159, '', '105.00', 'Cutivate Onitment', 'cutivate-onitment-159', 1, 1, 3, 'Fluticasone Proionate', '', 1, '04:26:54', '2017-03-28'),
(160, '', '38.00', 'Bonjela', 'bonjela-160', 1, 1, 27, 'Choline Salicylate+Cetalkonium Chloride', '', 1, '04:29:02', '2017-03-28'),
(161, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(162, '', '30.00', 'Betanoor Cream', 'betanoor-cream-162', 1, 1, 86, 'Betamethasone as valerate BP 0.1%', '', 1, '04:33:26', '2017-03-28'),
(163, '', '86.00', 'Betaderm Lotion', 'betaderm-lotion-163', 1, 1, 40, 'Betamethasone Dipropionate ', '', 1, '04:40:30', '2017-03-28'),
(164, '', '139.00', 'Betnovate-N Lotion', 'betnovate-n-lotion-164', 1, 1, 3, 'Betamethasone as Betamethasone Valerate, Neomycin Sulphate ', '', 1, '04:43:54', '2017-03-28'),
(165, '', '152.00', 'Betnovate Lotion', 'betnovate-lotion-165', 1, 1, 3, 'Betamethasone', '', 1, '04:45:03', '2017-03-28'),
(166, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(167, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(168, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(169, '', '44.00', 'Brufen Cream', 'brufen-cream-169', 1, 1, 7, 'Ibuprofen', '', 1, '04:54:03', '2017-03-28'),
(170, '', '93.00', 'Advantan Fatty Ointment', 'advantan-fatty-ointment-170', 1, 1, 87, 'Methylperdnisolne Aceponate', '', 1, '04:55:49', '2017-03-28'),
(171, '', '19.00', 'Betnesol-N Eye Ointment', 'betnesol-n-eye-ointment-171', 1, 1, 3, 'Sterile', '', 1, '04:57:25', '2017-03-28'),
(172, '', '21.00', 'Betnesol Eye Ointment', 'betnesol-eye-ointment-172', 1, 1, 3, 'Betamethsone', '', 1, '04:58:34', '2017-03-28'),
(173, '', '30.00', 'Betnovate Ointment ', 'betnovate-ointment-173', 1, 1, 3, 'Betamethasone', '', 1, '04:59:42', '2017-03-28'),
(174, '', '35.00', 'Betaderm Cream', 'betaderm-cream-174', 1, 1, 40, 'Betamethasone USP', '', 1, '05:00:59', '2017-03-28'),
(175, '', '33.00', 'Betnovate-N Ointment', 'betnovate-n-ointment-175', 1, 1, 3, 'Betamethasone Neomycin Sulphate', '', 1, '05:47:48', '2017-03-28'),
(176, '', '33.00', 'Betnovate-N Cream', 'betnovate-n-cream-176', 1, 1, 3, 'Betamethasone as Betamethasone Valerate, Neomycin Sulphate ', '', 1, '05:48:53', '2017-03-28'),
(177, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(178, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(179, '', '910.00', 'Hitone (Whitening Cream)', 'hitone-(whitening-cream)-179', 1, 1, 81, '', '', 1, '05:57:28', '2017-03-28'),
(180, '', '650.00', 'Hitone (Whitening Face Wash)', 'hitone-(whitening-face-wash)-180', 1, 1, 81, '', 'Scientifically Proven\r\nSkin Whitening Formula\r\nFOR ALL SKIN TYPES', 1, '06:59:11', '2017-03-28'),
(181, '', '1999.00', 'Renewskin Face Cream', 'renewskin-face-cream-181', 1, 1, 81, '', 'Dermatologically tested\r\nAnti Aging\r\nMoisturising\r\nProgramme\r\n', 1, '06:50:15', '2017-03-28'),
(182, '', '875.00', 'Spectrum Max Cream', 'spectrum-max-cream-182', 1, 1, 81, '', 'Sun Screen\r\nProgramme\r\nSun block for extreme protection\r\nAll skin types sensitive to the sun\r\nfragrance free', 1, '06:54:07', '2017-03-28'),
(183, '', '145.00', 'Derma Care (Natural Moisturizing Bar)  ', 'derma-care-(natural-moisturizing-bar)-183', 1, 1, 89, '', 'For dry and sensitive skin', 1, '07:01:30', '2017-03-28'),
(184, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(185, '', '150.00', 'Scabi-Cap BAR', 'scabi-cap-bar-185', 1, 1, 81, '', 'For Scabies and Headlice', 1, '07:03:03', '2017-03-28'),
(186, '', '88.00', 'Scabion Lotion', 'scabion-lotion-186', 1, 1, 40, 'Crotamition+Sulphur ', '60ml', 1, '07:26:38', '2017-03-28'),
(187, '', '80.00', 'ScabFREE Lotion', 'scabfree-lotion-187', 1, 1, 40, 'Permethrin', '60 ml', 1, '07:28:05', '2017-03-28'),
(188, '', '80.00', 'Scabi-Cap Creamy Lotion', 'scabi-cap-creamy-lotion-188', 1, 1, 81, 'Permethrin 5%', '', 1, '07:29:28', '2017-03-28'),
(189, '', '155.00', 'Valisone-S', 'valisone-s-189', 1, 1, 81, 'Betamethasone Dipropionate/Salicylic Acid', '', 1, '07:31:03', '2017-03-28'),
(190, '', '94.00', 'Valisone Lotion', 'valisone-lotion-190', 1, 1, 81, 'Betamethasone Dipropionate ', '', 1, '07:32:02', '2017-03-28'),
(191, '', '160.00', 'Oliprox-S', 'oliprox-s-191', 1, 1, 81, 'Ciclopirox Olamine/Salicylic Acid', '', 1, '07:49:02', '2017-03-28'),
(192, '', '375.00', 'Suncap (Suncare Cream)', 'suncap-(suncare-cream)-192', 1, 1, 91, '', 'Borad Spectum UVA/UVB', 1, '08:03:04', '2017-03-28'),
(193, '', '145.00', 'Sensodyne Fluoride', 'sensodyne-fluoride-193', 1, 1, 3, '', '24/7 Sensitivity Protection\r\nClinically proven relief and protection for sensitive teeth ', 1, '08:11:02', '2017-03-28'),
(194, '', '6.60', 'Tab Strepsils (Honey & Lemon', 'tab-strepsils-(honey-&-lemon-194', 1, 10, 33, '', '', 1, '07:14:33', '2017-03-29'),
(195, '', '6.60', 'Tab Strepsils (Original)', 'tab-strepsils-(original)-195', 1, 10, 33, '', '', 1, '07:14:11', '2017-03-29'),
(196, '', '10.00', 'ORSK (ORS)', 'orsk-(ors)-196', 1, 1, 86, '', '', 1, '10:02:09', '2017-03-28'),
(197, '', '8.20', 'Transamin 250 mg Cap', 'transamin-250-mg-cap-197', 1, 100, 24, 'Tranexamic Acid', '', 1, '07:17:56', '2017-03-29'),
(198, '', '16.50', 'Transamin 500 mg Cap', 'transamin-500-mg-cap-198', 1, 20, 24, 'Tranexamic Acid', '', 1, '07:17:26', '2017-03-29'),
(199, '', '14.54', 'Myonal  Tab', 'myonal-tab-199', 1, 100, 24, 'Eperisone HCL 50mg', '', 1, '07:23:39', '2017-03-29'),
(200, '', '24.29', 'Flux 20 mg Cap', 'flux-20-mg-cap-200', 1, 7, 24, 'Fluoxetine HCI', '', 1, '07:19:40', '2017-03-29'),
(201, '', '45.80', 'Transamin 250mg IM/IV Inj ', 'transamin-250mg-im/iv-inj-201', 1, 10, 24, 'Tranexamic Acid', '', 1, '07:16:43', '2017-03-29'),
(202, '', '14.64', 'Methycobal 500ug Tab', 'methycobal-500ug-tab-202', 1, 100, 24, 'Mecobalamin', '', 1, '07:22:59', '2017-03-29'),
(203, '', '93.61', 'Methycobal 500ug Inj', 'methycobal-500ug-inj-203', 1, 10, 24, 'Mecobalamin', '', 1, '07:22:12', '2017-03-29'),
(204, '', '17.00', 'Destina 5mg Tab', 'destina-5mg-tab-204', 1, 10, 24, 'Desloratadine', '', 1, '07:28:24', '2017-03-29'),
(205, '', '918.00', 'Gerophene 50mg Tab', 'gerophene-50mg-tab-205', 1, 20, 24, 'Clomiphene Citrate', '', 1, '10:23:20', '2017-03-28'),
(206, '', '13.21', 'Citanew 5mg Tab', 'citanew-5mg-tab-206', 1, 14, 24, 'Escitalopram', '', 1, '07:27:22', '2017-03-29'),
(207, '', '18.93', 'Citanew 10mg Tab', 'citanew-10mg-tab-207', 1, 14, 24, 'Escitalopram', '', 1, '07:26:39', '2017-03-29'),
(208, '', '29.64', 'Citanew 20mg Tab', 'citanew-20mg-tab-208', 1, 14, 24, 'Escitalopram', '', 1, '07:25:46', '2017-03-29'),
(209, '', '16.50', 'test ahmad', 'test-ahmad-209', 1, 5, 35, 'abc formula', 'test', 127, '09:32:32', '2017-03-29'),
(210, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(211, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(212, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(213, '', '111.00', 'Iberet 500', 'iberet-500-213', 1, 30, 7, 'FOILC ACID AND MULTIIVITAMINS', '', 1, '11:23:57', '2017-03-29'),
(214, '', '49.37', 'Brufen syrup 100mg/5ml', 'brufen-syrup-100mg/5ml-214', 1, 1, 7, 'ibuprofen', '', 1, '12:10:37', '2017-03-29'),
(215, '', '60.86', 'Brufen ds syrup 200mg/5ml', 'brufen-ds-syrup-200mg/5ml-215', 1, 1, 7, 'ibuprofen', '', 1, '11:25:56', '2017-03-29'),
(216, '', '3.00', 'Brufen tablet 600mg', 'brufen-tablet-600mg-216', 1, 1, 7, 'ibuprofen', '', 1, '11:27:10', '2017-03-29'),
(217, '', '71.16', 'Bejectal inj ', 'bejectal-inj-217', 1, 1, 7, 'VITAMIN B complex', '', 1, '11:29:35', '2017-03-29'),
(218, '', '50.40', 'Ibert 500 liquid', 'ibert-500-liquid-218', 1, 1, 7, 'FOLIC ACIS AND B COMPLEX', '', 1, '11:31:04', '2017-03-29'),
(219, '', '109.14', 'Vidaylin L SYRUP', 'vidaylin-l-syrup-219', 1, 1, 0, 'multivitamin', '', 1, '11:32:02', '2017-03-29'),
(220, '', '83.35', 'Vidaylin M SYRUP', 'vidaylin-m-syrup-220', 1, 1, 7, 'multivitamin', '', 1, '11:32:34', '2017-03-29'),
(221, '', '41.60', 'Vidaylin  drops 10ml', 'vidaylin-drops-10ml-221', 1, 1, 7, 'multivitamin', '', 1, '11:33:17', '2017-03-29'),
(222, '', '95.88', 'Vidaylin t tab', 'vidaylin-t-tab-222', 1, 30, 7, 'multivitamin', '', 1, '11:33:58', '2017-03-29'),
(223, '', '97.78', 'Ce con tab', 'ce-con-tab-223', 1, 40, 7, 'Vitamin C', '', 1, '11:35:15', '2017-03-29'),
(224, '', '13.04', 'Urixin tab', 'urixin-tab-224', 1, 1, 7, 'pipemiodic acid', '', 1, '12:11:07', '2017-03-29'),
(225, '', '2.30', 'Theograd tab 300mg', 'theograd-tab-300mg-225', 1, 1, 7, 'theophylline', '', 1, '11:37:39', '2017-03-29'),
(226, '', '4.60', 'Arinac forte tab', 'arinac-forte-tab-226', 1, 1, 0, 'ibuprofen and pseudoephidrine hydrochloride', '', 1, '11:39:14', '2017-03-29'),
(227, '', '65.82', 'Arinac syp', 'arinac-syp-227', 1, 1, 7, 'ibuprofen and pseudoephidrine hydrochloride', '', 1, '11:40:08', '2017-03-29'),
(228, '', '165.00', 'Oxidil 500mg INJ IV', 'oxidil-500mg-inj-iv-228', 1, 1, 61, 'ceftriaxone sodium', '', 1, '11:41:16', '2017-03-29'),
(229, '', '260.00', 'Oxidil 1g INJ IV', 'oxidil-1g-inj-iv-229', 1, 1, 61, 'ceftriaxone sodium', '', 1, '11:42:05', '2017-03-29'),
(230, '', '12.00', 'Movax tab 2mg', 'movax-tab-2mg-230', 1, 1, 61, 'tizanidine', '', 1, '12:09:10', '2017-03-29'),
(231, '', '17.50', 'Movax tab 4mg', 'movax-tab-4mg-231', 1, 1, 61, 'tizandine', '', 1, '12:08:42', '2017-03-29'),
(232, '', '22.50', 'Dicloran inj 75mg', 'dicloran-inj-75mg-232', 1, 1, 61, 'diclofenac sodium', '', 1, '11:49:15', '2017-03-29'),
(233, '', '11.00', 'Dicloran SR tab', 'dicloran-sr-tab-233', 1, 1, 61, 'diclofenac sodium', '', 1, '11:50:07', '2017-03-29'),
(234, '', '5.50', 'Dicloran 50mg tab', 'dicloran-50mg-tab-234', 1, 1, 61, 'diclofenac sodium', '', 1, '12:09:37', '2017-03-29'),
(235, '', '90.00', 'Novidat susp 125mg/5ml', 'novidat-susp-125mg/5ml-235', 1, 1, 61, 'CIPROFLOXACIN', '', 1, '11:51:49', '2017-03-29'),
(236, '', '164.00', 'Novidat Inj 200mg/5ml', 'novidat-inj-200mg/5ml-236', 1, 1, 61, 'CIPROFLOXACIN', '', 1, '11:52:34', '2017-03-29'),
(237, '', '28.14', 'Novidat tab 500mg', 'novidat-tab-500mg-237', 1, 1, 61, 'CIPROFLOXACIN', '', 1, '11:53:19', '2017-03-29'),
(238, '', '15.10', 'Novidat tab 250mg', 'novidat-tab-250mg-238', 1, 1, 61, 'CIPROFLOXACIN', '', 1, '11:54:01', '2017-03-29'),
(239, '', '5.60', 'Nims tab ', 'nims-tab-239', 1, 1, 61, 'nimsulide', '', 1, '11:54:52', '2017-03-29'),
(240, '', '3.92', 'Baydal tab 10mg', 'baydal-tab-10mg-240', 1, 1, 18, 'cetrizine hydrochloride', '', 1, '11:56:05', '2017-03-29'),
(241, '', '11.39', 'Glucobay 100mg tab', 'glucobay-100mg-tab-241', 1, 1, 18, 'acrbose', '', 1, '11:56:55', '2017-03-29'),
(242, '', '1.44', 'Resochin tab', 'resochin-tab-242', 1, 1, 18, 'chloroquine phosphate', '', 1, '11:58:05', '2017-03-29'),
(243, '', '24.00', 'Adalat LA 30 tab', 'adalat-la-30-tab-243', 1, 1, 18, 'nefidipine', '', 1, '11:59:06', '2017-03-29'),
(244, '', '5.70', 'Adalat retard tab', 'adalat-retard-tab-244', 1, 1, 18, 'nefidipine', '', 1, '12:00:20', '2017-03-29'),
(245, '', '29.08', 'ciproxin 250mg', 'ciproxin-250mg-245', 1, 1, 18, 'CIPROFLOXACIN', '', 1, '12:01:15', '2017-03-29'),
(246, '', '51.82', 'ciproxin 500mg', 'ciproxin-500mg-246', 1, 1, 18, 'CIPROFLOXACIN', '', 1, '12:01:56', '2017-03-29'),
(247, '', '158.00', 'Avelox 400mg', 'avelox-400mg-247', 1, 1, 18, 'Moxifloxacin', '', 1, '12:07:57', '2017-03-29'),
(248, '', '29.40', 'Nimotop', 'nimotop-248', 1, 1, 18, 'Nimodipine', '', 1, '12:04:09', '2017-03-29'),
(249, '', '305.00', 'Xarelto 10mg tab', 'xarelto-10mg-tab-249', 1, 1, 18, 'rivaroxaban', '', 1, '12:05:33', '2017-03-29'),
(250, '', '305.00', 'Xarelto 15mg tab', 'xarelto-15mg-tab-250', 1, 1, 18, 'rivaroxaban', '', 1, '12:07:09', '2017-03-29'),
(251, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(252, '', '14.48', 'Epival CR Tab', 'epival-cr-tab-252', 1, 50, 7, 'Divalproex Sodium', '', 1, '08:27:11', '2017-03-31'),
(253, '', '18.63', 'Xylocaine 20% Inj', 'xylocaine-20%-inj-253', 1, 50, 17, 'Lignocaine HCI', '', 1, '08:30:24', '2017-03-31'),
(254, '', '69.98', 'Cofcol Exiler', 'cofcol-exiler-254', 1, 1, 7, 'Non Alcholic', '', 1, '12:47:29', '2017-03-29'),
(255, '', '85.22', 'Rondec C Syrup', 'rondec-c-syrup-255', 1, 1, 7, 'Cough', '', 1, '12:49:26', '2017-03-29'),
(256, '', '42.31', 'Corex D Syrup 60 ML', 'corex-d-syrup-60-ml-256', 1, 1, 31, 'Dextromethorphan', '', 1, '12:51:10', '2017-03-29'),
(257, '', '53.49', 'Entamizole 250mg/320mg Syrup', 'entamizole-250mg/320mg-syrup-257', 1, 1, 7, 'Diloxanide furoateL/Metranidazole', '', 1, '12:52:50', '2017-03-29'),
(258, '', '148.00', 'Laevolac 120 ml Syrup', 'laevolac-120-ml-syrup-258', 1, 1, 24, 'Lactulose', '', 1, '12:54:06', '2017-03-29'),
(259, '', '40.24', 'Citralka Syrup', 'citralka-syrup-259', 1, 1, 31, 'disodium hydrogen citrate', '', 1, '12:55:20', '2017-03-29'),
(260, '', '72.17', 'Corex D Syrup 120 ml', 'corex-d-syrup-120-ml-260', 1, 1, 31, 'Dextromethorphan', '', 1, '12:56:47', '2017-03-29'),
(261, '', '90.00', 'Augmenton BD Susp 457mg / 5 ml', 'augmenton-bd-susp-457mg-/-5-ml-261', 1, 1, 3, 'co-amoxaclav', '', 1, '12:58:45', '2017-03-29'),
(262, '', '179.10', 'Augmenton BD 100 mg Tab', 'augmenton-bd-100-mg-tab-262', 1, 1, 3, 'co-amoxaclav', '', 1, '01:00:59', '2017-03-29'),
(263, '', '98.00', 'Augmenton 375 mg Tab', 'augmenton-375-mg-tab-263', 1, 1, 3, 'co-amoxaclav', '', 1, '01:02:36', '2017-03-29'),
(264, '', '5.00', 'Eno Sachet', 'eno-sachet-264', 1, 1, 3, 'Orange', '', 1, '01:04:54', '2017-03-29'),
(265, '', '52.74', 'Ventolin Sugar Free Syrup', 'ventolin-sugar-free-syrup-265', 1, 1, 3, 'salbutamol', '', 1, '01:06:09', '2017-03-29'),
(266, '', '0.80', 'Betnelam Tabs 0.5 mg', 'betnelam-tabs-0-5-mg-266', 1, 1, 3, 'Betamethasone', '', 1, '01:09:27', '2017-03-29'),
(267, '', '200.00', 'Ventolin Evohaler 100mcg', 'ventolin-evohaler-100mcg-267', 1, 1, 3, 'salbutamol', '', 1, '01:10:47', '2017-03-29'),
(268, '', '0.99', 'Ventolin Tabs 2mg', 'ventolin-tabs-2mg-268', 1, 1, 3, 'salbutamol', '', 1, '01:12:16', '2017-03-29'),
(269, '', '1.62', 'Ventolin SR Tab 4mg', 'ventolin-sr-tab-4mg-269', 1, 1, 3, 'salbutamol', '', 1, '01:13:28', '2017-03-29'),
(270, '', '1.19', 'Ventolin Tab 4 mg', 'ventolin-tab-4-mg-270', 1, 1, 3, 'salbutamol', '', 1, '01:14:39', '2017-03-29'),
(271, '', '35.50', 'Ventolin Respirator Solution', 'ventolin-respirator-solution-271', 1, 1, 3, 'salbutamol', '', 1, '01:15:35', '2017-03-29'),
(272, '', '54.52', 'Panadol Forte Susp 90ml', 'panadol-forte-susp-90ml-272', 1, 1, 3, 'Paracetamol', '', 1, '01:16:45', '2017-03-29'),
(273, '', '35.00', 'Panadole Drops ', 'panadole-drops-273', 1, 1, 3, 'Paracetamol', '', 1, '01:17:37', '2017-03-29'),
(274, '', '1.59', 'Panadol extra tab', 'panadol-extra-tab-274', 1, 1, 3, 'paracetamol plus caffeine', '', 1, '02:51:15', '2017-03-29'),
(275, '', '220.00', 'Fixval suspension', 'fixval-suspension-275', 1, 1, 3, 'cefixime', '', 1, '02:59:40', '2017-03-29'),
(276, '', '47.32', 'Calpol syp', 'calpol-syp-276', 1, 1, 3, 'Paracetamol', '', 1, '03:00:38', '2017-03-29'),
(277, '', '97.92', 'Thegran H tabs', 'thegran-h-tabs-277', 1, 30, 3, 'iron plus vitamins', '', 1, '03:01:55', '2017-03-29'),
(278, '', '105.49', 'Theragran M tabs', 'theragran-m-tabs-278', 1, 30, 3, 'multivitamin', '', 1, '03:03:22', '2017-03-29'),
(279, '', '5.88', 'ampiclox caps', 'ampiclox-caps-279', 1, 1, 3, 'ampicillin and cloxacillin', '', 1, '03:04:20', '2017-03-29'),
(280, '', '83.95', 'Amoxil forte susp', 'amoxil-forte-susp-280', 1, 1, 3, 'amoxycillin', '', 1, '03:05:15', '2017-03-29'),
(281, '', '8.61', 'Amoxil caps', 'amoxil-caps-281', 1, 1, 3, 'amoxycillin', '', 1, '03:06:06', '2017-03-29'),
(282, '', '29.00', 'Septran  syp', 'septran-syp-282', 1, 1, 3, 'cotrimoxazole', '', 1, '03:08:11', '2017-03-29'),
(283, '', '39.00', 'Septran DS syp', 'septran-ds-syp-283', 1, 1, 3, 'cotrimoxazole', '', 1, '03:07:48', '2017-03-29'),
(284, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(285, '', '17.81', 'Actidil syp', 'actidil-syp-285', 1, 1, 3, 'triploridine HCL', '', 1, '03:09:09', '2017-03-29'),
(286, '', '60.00', 'Actifed DM syp', 'actifed-dm-syp-286', 1, 1, 3, 'triploridine HCL,pseudoephidrine', '', 1, '03:10:18', '2017-03-29'),
(287, '', '44.85', 'Cicatrin powder', 'cicatrin-powder-287', 1, 1, 3, 'neomycin sulphate, bacitracin zinc', '', 1, '03:11:29', '2017-03-29'),
(288, '', '8.82', 'Zantac 150mg tab', 'zantac-150mg-tab-288', 1, 1, 3, 'ranitidine HCL', '', 1, '03:12:17', '2017-03-29'),
(289, '', '17.79', 'Zantac 300mg tab', 'zantac-300mg-tab-289', 1, 1, 3, 'ranitidine HCL', '', 1, '03:13:49', '2017-03-29'),
(290, '', '22.11', 'zantac inj', 'zantac-inj-290', 1, 1, 3, 'rantidine HCL', '', 1, '03:14:58', '2017-03-29'),
(291, '', '111.00', 'STARVITS tab', 'starvits-tab-291', 1, 30, 3, 'vitamin complex', '', 1, '03:16:22', '2017-03-29'),
(292, '', '91.55', 'Chewcal tab', 'chewcal-tab-292', 1, 30, 3, 'calcium and vitamin D', '', 1, '03:17:24', '2017-03-29'),
(293, '', '477.41', 'Fortum inj 1g', 'fortum-inj-1g-293', 1, 1, 3, 'ceftazidime', '', 1, '03:18:29', '2017-03-29'),
(294, '', '15.02', 'Capoten tab 50mg', 'capoten-tab-50mg-294', 1, 1, 3, 'captopril', '', 1, '03:20:25', '2017-03-29'),
(295, '', '7.67', 'Capoten 25mg tab', 'capoten-25mg-tab-295', 1, 1, 3, 'captopril', '', 1, '03:21:30', '2017-03-29'),
(296, '', '46.08', 'Zinacef 250mg', 'zinacef-250mg-296', 1, 1, 3, 'cefuroxime', '', 1, '03:25:16', '2017-03-29'),
(297, '', '0.64', 'Atarax 10mg tab', 'atarax-10mg-tab-297', 1, 1, 3, 'hydroxyzine 2HCL', '', 1, '03:26:42', '2017-03-29'),
(298, '', '29.93', 'Duricef caps 500mg', 'duricef-caps-500mg-298', 1, 1, 3, 'cefadroxil', '', 1, '03:27:57', '2017-03-29'),
(299, '', '2.32', 'Migril tab', 'migril-tab-299', 1, 1, 3, 'ergotamine tartrate', '', 1, '03:29:43', '2017-03-29'),
(300, '', '1.27', 'Betnesol tab', 'betnesol-tab-300', 1, 1, 3, 'betamethasone', '', 1, '03:31:12', '2017-03-29'),
(301, '', '0.85', 'Angised', 'angised-301', 1, 1, 3, 'Glycerel Trinitrate', '', 1, '03:33:26', '2017-03-29'),
(302, '', '29.79', 'Coversam', 'coversam-302', 1, 1, 59, 'Perindopril8mg+Amlodipine 10mg', '', 1, '03:36:24', '2017-03-29'),
(303, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(304, '', '12.61', 'Coversyl 2mg', 'coversyl-2mg-304', 1, 1, 92, 'Perindopril', '', 1, '03:38:33', '2017-03-29'),
(305, '', '19.93', 'Coversyl 4mg', 'coversyl-4mg-305', 1, 1, 92, 'Perindopril', '', 1, '03:39:38', '2017-03-29'),
(306, '', '25.04', 'Coversyl Plus', 'coversyl-plus-306', 1, 1, 92, 'Perindopril4mg+indapamide 1.25mg', '', 1, '03:41:24', '2017-03-29'),
(307, '', '23.46', 'Coversam', 'coversam-307', 1, 1, 92, 'Perindopril4mg+Amlodipine 5mg', '', 1, '03:42:52', '2017-03-29'),
(308, '', '27.03', 'Coversam 8mg/5mg', 'coversam-8mg/5mg-308', 1, 1, 92, 'Perindopril8mg+Amlodipine 5mg', '', 1, '03:44:18', '2017-03-29'),
(309, '', '26.01', 'Coversam 4MG/10MG', 'coversam-4mg/10mg-309', 1, 1, 92, 'Perindopril4mg+Amlodipine 10mg', '', 1, '03:45:31', '2017-03-29'),
(310, '', '16.58', 'Daflon 500 mg', 'daflon-500-mg-310', 1, 1, 92, 'Micronized,purified flavonoid fraction', '', 1, '03:49:24', '2017-03-29'),
(311, '', '6.28', 'Natrilix', 'natrilix-311', 1, 1, 92, 'Indapamide', '', 1, '03:50:58', '2017-03-29'),
(312, '', '11.22', 'Diamicron MR 30 MG', 'diamicron-mr-30-mg-312', 1, 1, 92, 'Gliclazide', '', 1, '03:54:54', '2017-03-29'),
(313, '', '16.12', 'Diamicron MR 60 MG', 'diamicron-mr-60-mg-313', 1, 1, 92, 'Gliclazide', '', 1, '03:56:40', '2017-03-29'),
(314, '', '8.30', 'Natrilix SR', 'natrilix-sr-314', 1, 1, 92, 'Indapamide 1.5MG', '', 1, '03:58:58', '2017-03-29'),
(315, '', '8.60', 'Mylaxon 500mcg tab', 'mylaxon-500mcg-tab-315', 1, 1, 17, 'Mecobalamin', '', 1, '04:01:04', '2017-03-29'),
(316, '', '20.00', 'Irecon 150 mg Tab', 'irecon-150-mg-tab-316', 1, 1, 17, 'irbesartan', '', 1, '04:02:19', '2017-03-29'),
(317, '', '13.70', 'vastarel 35 mg tab', 'vastarel-35-mg-tab-317', 1, 1, 92, 'Trimetazidine Dihydrochloride', '', 1, '04:05:19', '2017-03-29'),
(318, '', '21.00', 'Irecon 150mg+12.5mg tab', 'irecon-150mg+12-5mg-tab-318', 1, 1, 17, 'irbesartan &hydrocholorothiazide', '', 1, '04:16:11', '2017-03-29'),
(319, '', '33.12', 'Britanyl Syrup', 'britanyl-syrup-319', 1, 1, 17, 'terbutaline sulphate', '', 1, '04:17:28', '2017-03-29'),
(320, '', '290.09', 'Cefspan Susp', 'cefspan-susp-320', 1, 1, 17, 'cefixime', '', 1, '04:18:43', '2017-03-29'),
(321, '', '31.89', 'Muconyl Syrup', 'muconyl-syrup-321', 1, 1, 17, 'Terbutaline Sulphate', '', 1, '04:20:09', '2017-03-29'),
(322, '', '519.84', 'cafspan 400 mg Capsule', 'cafspan-400-mg-capsule-322', 1, 1, 17, 'cefixime', '', 1, '04:22:59', '2017-03-29'),
(323, '', '55.20', 'Mylaxon 500mcg IM/IV Injection', 'mylaxon-500mcg-im/iv-injection-323', 1, 1, 17, 'Mecobalamin', '', 1, '04:24:47', '2017-03-29'),
(324, '', '60.86', 'Zinc Day Syrup', 'zinc-day-syrup-324', 1, 1, 17, 'zinc sulphate', '', 1, '04:26:58', '2017-03-29'),
(325, '', '28.80', 'Febrol Susp', 'febrol-susp-325', 1, 1, 17, 'Paracetamol', '', 1, '04:27:58', '2017-03-29'),
(326, '', '29.90', 'Calamox Tab 1000MG', 'calamox-tab-1000mg-326', 1, 1, 43, 'co-amoxaclav', '', 1, '04:31:00', '2017-03-29'),
(327, '', '13.70', 'Calamox 375 mg tab', 'calamox-375-mg-tab-327', 1, 1, 43, 'co-amoxaclav', '', 1, '04:32:16', '2017-03-29'),
(328, '', '20.00', 'calamox 625 mg tab', 'calamox-625-mg-tab-328', 1, 1, 43, 'co-amoxaclav', '', 1, '04:33:12', '2017-03-29'),
(329, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(330, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(331, '', '45.90', 'Cerophene 50mg Tab', 'cerophene-50mg-tab-331', 1, 20, 24, 'Clomiphene Citrate', '', 1, '07:30:06', '2017-03-29'),
(332, '', '6.33', 'Carlov 3.125mg Tab', 'carlov-3-125mg-tab-332', 1, 10, 24, 'Carvedilol', '', 1, '07:32:17', '2017-03-29'),
(333, '', '16.80', 'Jezeta 10mg+10mg Tab', 'jezeta-10mg+10mg-tab-333', 1, 10, 24, 'Ezetimibe+Atorvastarin ', '', 1, '07:34:37', '2017-03-29'),
(334, '', '26.50', 'Jezeta 10mg+20mg Tab', 'jezeta-10mg+20mg-tab-334', 1, 10, 24, 'Ezetimibe+Atorvastarin ', '', 1, '07:35:48', '2017-03-29'),
(335, '', '13.80', 'Rolip 5mg Tab', 'rolip-5mg-tab-335', 1, 10, 24, 'Rosuvastatin', '', 1, '07:37:30', '2017-03-29'),
(336, '', '23.00', 'Rolip 10mg Tab', 'rolip-10mg-tab-336', 1, 10, 24, 'Rosuvastatin', '', 1, '07:38:45', '2017-03-29'),
(337, '', '39.00', 'Rolip 20mg Tab', 'rolip-20mg-tab-337', 1, 10, 24, 'Rosuvastatin', '', 1, '07:39:49', '2017-03-29'),
(338, '', '324.30', 'Lerace 500mg/5ml Inj ', 'lerace-500mg/5ml-inj-338', 1, 1, 24, 'Levetiracetam', '', 1, '07:42:25', '2017-03-29'),
(339, '', '15.57', 'Fexo 120mg Tab ', 'fexo-120mg-tab-339', 1, 10, 24, 'Fexofenadine HCI', '', 1, '07:44:14', '2017-03-29'),
(340, '', '43.50', 'Lerace 500mg Tab', 'lerace-500mg-tab-340', 1, 10, 24, 'Levetiracetam', '', 1, '07:50:08', '2017-03-29'),
(341, '', '25.50', 'Lerace 250mg Tab', 'lerace-250mg-tab-341', 1, 10, 24, 'Levetiracetam', '', 1, '07:52:58', '2017-03-29'),
(342, '', '11.79', 'Fexo-D Tab', 'fexo-d-tab-342', 1, 10, 24, 'Fexofenadine hydrochloride USP.60mg, Pseudoephedrine hydrochloride USP. 120mg', 'Antiallergic and Nasal Decongestant', 1, '07:57:08', '2017-03-29'),
(343, '', '12.10', 'Risek Insta 20mg ', 'risek-insta-20mg-343', 1, 10, 23, 'Omeprazole+Sodium Bicarbonate ', '', 1, '09:27:46', '2017-03-29'),
(344, '', '20.29', 'Risek Insta 40mg ', 'risek-insta-40mg-344', 1, 10, 23, 'Omeprazole+Sodium Bicarbonate ', '', 1, '09:28:52', '2017-03-29'),
(345, '', '305.00', 'Risek 40mg IV Inj', 'risek-40mg-iv-inj-345', 1, 1, 23, 'Omeprazole', '', 1, '09:30:00', '2017-03-29'),
(346, '', '20.00', 'Risek 40mg Cap', 'risek-40mg-cap-346', 1, 14, 23, 'Omeprazole', '', 1, '09:31:06', '2017-03-29'),
(347, '', '15.00', 'Risek 20mg Cap', 'risek-20mg-cap-347', 1, 14, 23, 'Omeprazole', '', 1, '09:33:15', '2017-03-29'),
(348, '', '12.29', 'Nexum 20mg Cap', 'nexum-20mg-cap-348', 1, 14, 23, 'Esomeprazole', '', 1, '09:41:20', '2017-03-29'),
(349, '', '23.07', 'Nexum 40mg Cap', 'nexum-40mg-cap-349', 1, 14, 23, 'Esomeprazole', '', 1, '09:43:12', '2017-03-29'),
(350, '', '17.50', 'Lipiget 10mg Tab', 'lipiget-10mg-tab-350', 1, 10, 23, 'Atorvastatin', '', 1, '09:44:38', '2017-03-29'),
(351, '', '31.00', 'Lipiget 20mg Tab', 'lipiget-20mg-tab-351', 1, 10, 23, 'Atorvastatin', '', 1, '09:45:41', '2017-03-29'),
(352, '', '41.00', 'Lipiget 40mg Tab', 'lipiget-40mg-tab-352', 1, 10, 23, 'Atorvastatin', '', 1, '09:47:18', '2017-03-29'),
(353, '', '23.00', 'Lipiget EZ 10mg+10mg Tab', 'lipiget-ez-10mg+10mg-tab-353', 1, 10, 23, 'Atorvastatin+Ezetimibe', '', 1, '09:48:31', '2017-03-29'),
(354, '', '36.50', 'Rovista 20mg Tab ', 'rovista-20mg-tab-354', 1, 10, 23, 'Rosuvastatin', '', 1, '09:52:27', '2017-03-29'),
(355, '', '20.25', 'Rovista 10mg Tab ', 'rovista-10mg-tab-355', 1, 10, 23, 'Rosuvastatin', '', 1, '09:53:21', '2017-03-29'),
(356, '', '12.15', 'Rovista 5mg Tab ', 'rovista-5mg-tab-356', 1, 10, 23, 'Rosuvastatin', '', 1, '09:54:20', '2017-03-29'),
(357, '', '11.64', 'Nebil 5mg Tab ', 'nebil-5mg-tab-357', 1, 14, 23, 'Nebivolol', '', 1, '09:55:59', '2017-03-29'),
(358, '', '6.96', 'Nebil 2.5mg Tab ', 'nebil-2-5mg-tab-358', 1, 14, 23, 'Nebivolol', '', 1, '09:57:07', '2017-03-29'),
(359, '', '24.00', 'Ezita 10mg Tab', 'ezita-10mg-tab-359', 1, 10, 23, 'Ezetimibe', '', 1, '09:58:33', '2017-03-29'),
(360, '', '55.65', 'Softin Syp', 'softin-syp-360', 1, 1, 94, 'Loratadine', '', 1, '10:04:44', '2017-03-29'),
(361, '', '5.94', 'Softin Tab', 'softin-tab-361', 1, 10, 94, 'Loratadine', '', 1, '10:07:38', '2017-03-29'),
(362, '', '14.00', 'Sofvasc 10mg', 'sofvasc-10mg-362', 1, 30, 78, 'Amlodipine Besylate', '', 1, '10:09:32', '2017-03-29'),
(363, '', '6.75', 'Sofvasc 5mg Tab', 'sofvasc-5mg-tab-363', 1, 30, 78, 'Amlodipine Besylate', '', 1, '10:13:23', '2017-03-29'),
(364, '', '10.00', 'Diagesic-Extra Tab', 'diagesic-extra-tab-364', 1, 10, 78, 'Paracetamol 325mg, Tramadol HCI 37.5mg', '', 1, '10:19:04', '2017-03-29'),
(365, '', '29.50', 'Mytil 500mg Tab ', 'mytil-500mg-tab-365', 1, 10, 78, 'Ciprofloxacin', '', 1, '10:20:39', '2017-03-29'),
(366, '', '15.00', 'Mytil 250mg Tab', 'mytil-250mg-tab-366', 1, 10, 78, 'Ciprofloxacin', '', 1, '10:21:43', '2017-03-29'),
(367, '', '73.00', 'Werimox 250mg Syp', 'werimox-250mg-syp-367', 1, 1, 94, 'Amoxycillin', '', 1, '10:22:51', '2017-03-29'),
(368, '', '56.00', 'Werimox 125mg Syp', 'werimox-125mg-syp-368', 1, 1, 94, 'Amoxycillin', '', 1, '10:23:35', '2017-03-29'),
(369, '', '85.00', 'Mytil 125mg/5ml Syp', 'mytil-125mg/5ml-syp-369', 1, 1, 78, 'Ciprofloxacin', '', 1, '10:24:34', '2017-03-29'),
(370, '', '13.73', 'Wizen 1mg Tab', 'wizen-1mg-tab-370', 1, 50, 94, 'Risperidone', '', 1, '10:28:18', '2017-03-29'),
(371, '', '27.00', 'Wizen 2mg Tab', 'wizen-2mg-tab-371', 1, 50, 94, 'Risperidone', '', 1, '10:29:17', '2017-03-29'),
(372, '', '8.50', 'Olanzia 5mg Tab', 'olanzia-5mg-tab-372', 1, 10, 94, 'Olanzapine', '', 1, '10:30:21', '2017-03-29'),
(373, '', '17.00', 'Survive 10mg Tab', 'survive-10mg-tab-373', 1, 10, 94, 'Simvastatin', '', 1, '10:31:54', '2017-03-29'),
(374, '', '32.00', 'Survive 20mg Tab', 'survive-20mg-tab-374', 1, 10, 94, 'Simvastatin', '', 1, '10:32:40', '2017-03-29'),
(375, '', '17.00', 'Survive Plus+ Tab', 'survive-plus+-tab-375', 1, 7, 94, 'Ezetimibe, Simvstatin', '', 1, '10:35:21', '2017-03-29'),
(376, '', '22.50', 'Co-Eziday 100 Tab', 'co-eziday-100-tab-376', 1, 10, 94, 'Losartan Potassium 100mg, Hydrochlorithiazide 25mg', '', 1, '10:37:53', '2017-03-29'),
(377, '', '18.00', 'Eziday 100mg Tab', 'eziday-100mg-tab-377', 1, 10, 94, 'Losartan Potassium', '', 1, '10:40:03', '2017-03-29'),
(378, '', '14.75', 'Eziday 50mg Tab', 'eziday-50mg-tab-378', 1, 20, 94, 'Losartan Potassium', '', 1, '10:41:14', '2017-03-29'),
(379, '', '9.90', 'Eziday 25mg Tab ', 'eziday-25mg-tab-379', 1, 20, 94, 'Losartan Potassium', '', 1, '10:42:33', '2017-03-29'),
(380, '', '15.00', 'Co-Eziday Tab', 'co-eziday-tab-380', 1, 20, 94, 'Losartan Potassium 50mg, Hydrochlorithiazide 12.5mg', '', 1, '10:43:47', '2017-03-29'),
(381, '', '15.00', 'Olanzia 10mg Tab', 'olanzia-10mg-tab-381', 1, 10, 94, 'Olanzapine', '', 1, '10:46:47', '2017-03-29'),
(382, '', '15.00', 'Dilair 5mg tab', 'dilair-5mg-tab-382', 1, 1, 95, 'montelukast', '', 1, '10:36:23', '2017-03-30'),
(383, '', '18.20', 'Dilair 10mg tab', 'dilair-10mg-tab-383', 1, 1, 95, 'montelukast', '', 1, '10:37:06', '2017-03-30'),
(384, '', '6.75', 'Danzin tab 5mg', 'danzin-tab-5mg-384', 1, 1, 95, 'serretiopeptidase', '', 1, '10:39:10', '2017-03-30'),
(385, '', '10.75', 'danzen DS Tab', 'danzen-ds-tab-385', 1, 1, 95, 'serretiopeptidase', '', 1, '10:41:37', '2017-03-30'),
(386, '', '20.00', 'danzen fourt 40mg', 'danzen-fourt-40mg-386', 1, 1, 95, 'serrapeptase', '', 1, '10:43:55', '2017-03-30'),
(387, '', '40.30', 'fotiflox tab', 'fotiflox-tab-387', 1, 1, 95, 'Moxifloxacin', '', 1, '10:45:31', '2017-03-30'),
(388, '', '10.93', 'Hifen-x tab 400mg', 'hifen-x-tab-400mg-388', 1, 1, 95, 'dexibuprofen', '', 1, '10:47:40', '2017-03-30'),
(389, '', '50.00', 'Hifen-X susp', 'hifen-x-susp-389', 1, 1, 95, 'dexibuprofen', '', 1, '10:00:44', '2017-03-31'),
(390, '', '60.70', 'Mecobal tab 500mcg', 'mecobal-tab-500mcg-390', 1, 1, 55, 'Mecobalamin', '', 1, '10:50:58', '2017-03-30'),
(391, '', '39.00', 'Mecobal inj 500mcg', 'mecobal-inj-500mcg-391', 1, 1, 55, 'Mecobalamin', '', 1, '10:52:22', '2017-03-30'),
(392, '', '42.95', 'Erythrocin drops', 'erythrocin-drops-392', 1, 1, 98, 'erythromycin ethyl succinat', '', 1, '10:59:17', '2017-03-30'),
(393, '', '5.50', 'Erythrocin tab 250mg', 'erythrocin-tab-250mg-393', 1, 1, 98, 'erythromycin stearate', '', 1, '10:58:33', '2017-03-30'),
(394, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(395, '', '12.28', 'Mucolator 200mg Sachet', 'mucolator-200mg-sachet-395', 1, 30, 7, 'Acetylcysteine', '', 1, '08:32:40', '2017-03-31'),
(396, '', '10.40', 'Erythrocin tab 500mg', 'erythrocin-tab-500mg-396', 1, 1, 98, 'erythromycin stearate', '', 1, '11:00:42', '2017-03-30'),
(397, '', '6.90', 'dyclo-p tab ', 'dyclo-p-tab-397', 1, 1, 98, 'diclofenac potassium', '', 1, '11:02:30', '2017-03-30'),
(398, '', '6.66', 'Ceclofin 100mg tab', 'ceclofin-100mg-tab-398', 1, 1, 52, 'aceclofenac', '', 1, '11:05:00', '2017-03-30'),
(399, '', '4.16', 'Baclin tab 10mg ', 'baclin-tab-10mg-399', 1, 1, 52, 'Baclofan 10mg', '', 1, '11:07:37', '2017-03-30'),
(400, '', '13.00', 'stresam cap  50mg', 'stresam-cap-50mg-400', 1, 1, 45, 'etifoxime hcl', '', 1, '11:09:19', '2017-03-30'),
(401, '', '9.50', 'comforta tab 10mg ', 'comforta-tab-10mg-401', 1, 1, 52, 'cyclobenzaprine excl', '', 1, '08:15:14', '2017-03-31'),
(402, '', '40.86', 'Actif cap 20mg', 'actif-cap-20mg-402', 1, 1, 83, 'esomeprazole ', '', 1, '11:14:04', '2017-03-30'),
(403, '', '8.87', 'Epival 500mg Tab', 'epival-500mg-tab-403', 1, 100, 7, 'Divalproex Sodium', '', 1, '08:24:25', '2017-03-31'),
(404, '', '8.36', 'Actif cap 40mg', 'actif-cap-40mg-404', 1, 1, 100, 'Esomeprazole', '', 1, '11:19:03', '2017-03-30'),
(405, '', '12.67', 'serofer tab 28mg ', 'serofer-tab-28mg-405', 1, 1, 59, 'feroousbisglycinate', '', 1, '11:22:18', '2017-03-30'),
(406, '', '31.06', 'Amaryl 4MG Tablets', 'amaryl-4mg-tablets-406', 1, 1, 60, 'Glimepiride', '', 1, '12:37:03', '2017-03-30'),
(407, '', '5.16', 'Epival 250mg Tab', 'epival-250mg-tab-407', 1, 100, 7, 'Divalproex Sodium', '', 1, '08:25:27', '2017-03-31'),
(408, '', '16.00', 'Cartigen 500mg+400mg Tab ', 'cartigen-500mg+400mg-tab-408', 1, 20, 23, 'Glucosamine+Chondroitin Sulfate Sodium', '', 1, '08:37:01', '2017-03-31'),
(409, '', '20.40', 'Fenoget 200mg', 'fenoget-200mg-409', 1, 10, 23, 'Fenofibrate', '', 1, '08:38:52', '2017-03-31'),
(410, '', '40.00', 'Leflox 750mg Tab', 'leflox-750mg-tab-410', 1, 10, 23, 'Levofloxacin', '', 1, '08:40:43', '2017-03-31'),
(411, '', '15.90', 'Leflox 250mg Tab', 'leflox-250mg-tab-411', 1, 10, 23, 'Levofloxacin', '', 1, '08:41:30', '2017-03-31'),
(412, '', '28.50', 'Leflox 500mg Tab', 'leflox-500mg-tab-412', 1, 10, 23, 'Levofloxacin', '', 1, '08:42:21', '2017-03-31'),
(413, '', '12.65', 'Dravix 500ng Cap', 'dravix-500ng-cap-413', 1, 20, 23, 'Tranexamic Acid', '', 1, '08:43:31', '2017-03-31'),
(414, '', '13.00', 'Cipesta 250mg ', 'cipesta-250mg-414', 1, 10, 23, 'Ciprofloxacin', '', 1, '09:17:34', '2017-03-31'),
(415, '', '26.00', 'Cipesta XR 500mg ', 'cipesta-xr-500mg-415', 1, 10, 23, 'Ciprofloxacin', '', 1, '09:18:57', '2017-03-31'),
(416, '', '36.50', 'Cipesta XR 1000mg', 'cipesta-xr-1000mg-416', 1, 10, 23, 'Ciprofloxacin', '', 1, '09:19:50', '2017-03-31'),
(417, '', '26.30', 'Cipesta 500mg', 'cipesta-500mg-417', 1, 10, 23, 'Ciprofloxacin', '', 1, '09:20:45', '2017-03-31'),
(418, '', '36.00', 'Tamsolin 0.4mg ', 'tamsolin-0-4mg-418', 1, 20, 23, 'Tamsulosin HCI', '', 1, '09:22:52', '2017-03-31'),
(419, '', '18.00', 'Zurig 40mg ', 'zurig-40mg-419', 1, 20, 23, 'Febuxostat', '', 1, '09:24:36', '2017-03-31'),
(420, '', '32.95', 'Zurig 80mg ', 'zurig-80mg-420', 1, 20, 23, 'Febuxostat', '', 1, '09:25:40', '2017-03-31'),
(421, '', '9.17', 'HCQ 200 (200mg)', 'hcq-200-(200mg)-421', 1, 30, 23, 'Hydroxychloroquine Sulfate', '', 1, '09:27:47', '2017-03-31'),
(422, '', '26.67', 'Masacol 800mg ', 'masacol-800mg-422', 1, 30, 23, 'Mesalazine', '', 1, '09:28:48', '2017-03-31');
INSERT INTO `tblproducts` (`id`, `photo`, `price`, `title`, `slug`, `availability`, `quantity`, `company`, `formula`, `details`, `status`, `post_time`, `post_date`) VALUES
(423, '', '15.83', 'Masacol 400mg ', 'masacol-400mg-423', 1, 30, 23, 'Mesalazine', '', 1, '09:29:57', '2017-03-31'),
(424, '', '38.00', 'Dulan 60mg', 'dulan-60mg-424', 1, 10, 24, 'Duloxetine', '', 1, '09:33:35', '2017-03-31'),
(425, '', '20.71', 'Dulan 20mg', 'dulan-20mg-425', 1, 14, 24, 'Duloxetine', '', 1, '09:34:44', '2017-03-31'),
(426, '', '25.00', 'Dulan 30mg', 'dulan-30mg-426', 1, 10, 24, 'Duloxetine', '', 1, '09:36:09', '2017-03-31'),
(427, '', '270.00', 'Ferosoft-S Inj', 'ferosoft-s-inj-427', 1, 5, 24, 'Ferric Sucrose Complex', '', 1, '09:39:42', '2017-03-31'),
(428, '', '9.20', 'Ferosoft', 'ferosoft-428', 1, 20, 24, 'Iron Polymaltose Complex', '', 1, '09:41:23', '2017-03-31'),
(429, '', '215.00', 'Ferosoft Syp', 'ferosoft-syp-429', 1, 1, 24, 'Iron Polymaltose Complex', '', 1, '09:42:23', '2017-03-31'),
(430, '', '15.00', 'Oflobid 200mg', 'oflobid-200mg-430', 1, 10, 24, 'Ofloxacin', '', 1, '09:43:58', '2017-03-31'),
(431, '', '15.00', 'Oflobid 400mg', 'oflobid-400mg-431', 1, 10, 24, 'Ofloxacin', '', 1, '09:44:48', '2017-03-31'),
(432, '', '13.99', 'Xobix 15mg ', 'xobix-15mg-432', 1, 10, 24, 'Meloxicam', '', 1, '09:49:21', '2017-03-31'),
(433, '', '144.72', 'Artem 80mg I.M Inj', 'artem-80mg-i-m-inj-433', 1, 6, 24, 'Artemether', '', 1, '09:50:43', '2017-03-31'),
(434, '', '63.25', 'Artem DS Plus 80/480', 'artem-ds-plus-80/480-434', 1, 6, 24, 'Artemether/Lumefantrine', '', 1, '09:53:16', '2017-03-31'),
(435, '', '37.95', 'Artem DS Plus 40/240', 'artem-ds-plus-40/240-435', 1, 8, 24, 'Artemether/Lumefantrine', '', 1, '09:54:23', '2017-03-31'),
(436, '', '69.00', 'Artem 40mg I.M Inj', 'artem-40mg-i-m-inj-436', 1, 10, 24, 'Artemether', '', 1, '09:58:44', '2017-03-31'),
(437, '', '8.05', 'Xobix 7.5mg ', 'xobix-7-5mg-437', 1, 10, 24, 'Meloxicam', '', 1, '09:59:46', '2017-03-31'),
(438, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(439, '', '15.00', 'Zeegap 25mg caps', 'zeegap-25mg-caps-439', 1, 1, 24, 'pregabalin', '', 1, '09:54:46', '2017-04-03'),
(440, '', '16.00', 'Zeegap 50mg caps', 'zeegap-50mg-caps-440', 1, 1, 24, 'pregabalin', '', 1, '09:55:49', '2017-04-03'),
(441, '', '19.50', 'Zeegap 75mg caps', 'zeegap-75mg-caps-441', 1, 1, 24, 'pregabalin', '', 1, '09:56:27', '2017-04-03'),
(442, '', '22.50', 'Zeegap 100mg caps', 'zeegap-100mg-caps-442', 1, 1, 24, 'pregabalin', '', 1, '09:57:08', '2017-04-03'),
(443, '', '27.50', 'Zeegap 150mg caps', 'zeegap-150mg-caps-443', 1, 1, 0, 'pregabalin', '', 1, '09:57:40', '2017-04-03'),
(444, '', '22.50', 'Zopent tab 40mg', 'zopent-tab-40mg-444', 1, 1, 24, 'pantoprazole', '', 1, '09:58:29', '2017-04-03'),
(445, '', '7.15', 'Unix tab 100mg', 'unix-tab-100mg-445', 1, 1, 24, 'nimsulide', '', 1, '09:59:13', '2017-04-03'),
(446, '', '10.71', 'Zopent tab 20mg', 'zopent-tab-20mg-446', 1, 1, 24, 'pan', '', 1, '09:59:58', '2017-04-03'),
(447, '', '12.50', 'Qusel 25mg', 'qusel-25mg-447', 1, 1, 24, 'quetiapine', '', 1, '10:01:00', '2017-04-03'),
(448, '', '25.50', 'Qusel 100mg', 'qusel-100mg-448', 1, 1, 24, 'quetiapine', '', 1, '10:01:41', '2017-04-03'),
(449, '', '38.33', 'Qusel 200mg', 'qusel-200mg-449', 1, 1, 24, 'quetiapine', '', 1, '10:04:40', '2017-04-03'),
(450, '', '11.54', 'Ronirol 0.25mg tab', 'ronirol-0-25mg-tab-450', 1, 1, 24, 'ropinirole', '', 1, '10:05:38', '2017-04-03'),
(451, '', '21.10', 'Ronirol 1mg tab', 'ronirol-1mg-tab-451', 1, 1, 24, 'ropinirole', '', 1, '10:06:29', '2017-04-03'),
(452, '', '26.67', 'Ronirol 2mg tab', 'ronirol-2mg-tab-452', 1, 1, 24, 'ropinirole', '', 1, '10:07:11', '2017-04-03'),
(453, '', '15.16', 'Hitop 25mg tab', 'hitop-25mg-tab-453', 1, 1, 24, 'topiramate', '', 1, '10:08:02', '2017-04-03'),
(454, '', '22.83', 'Hitop 50mg tab', 'hitop-50mg-tab-454', 1, 1, 24, 'topiramate', '', 1, '10:08:35', '2017-04-03'),
(455, '', '28.75', 'Hitop 100mg tab', 'hitop-100mg-tab-455', 1, 1, 24, 'topiramate', '', 1, '10:09:11', '2017-04-03'),
(456, '', '35.00', 'Lefora 20mg tab', 'lefora-20mg-tab-456', 1, 1, 24, 'leflunamide', '', 1, '10:10:26', '2017-04-03'),
(457, '', '23.00', 'Lefora 10mg tab', 'lefora-10mg-tab-457', 1, 1, 24, 'leflunamide', '', 1, '10:11:04', '2017-04-03'),
(458, '', '65.00', 'Cefim 400mg caps', 'cefim-400mg-caps-458', 1, 1, 24, 'cefixime', '', 1, '10:12:00', '2017-04-03'),
(459, '', '30.00', 'Cefim 200mg caps', 'cefim-200mg-caps-459', 1, 1, 24, 'cefixime', '', 1, '10:13:28', '2017-04-03'),
(460, '', '6.93', 'Maxit tab 50mg', 'maxit-tab-50mg-460', 1, 1, 24, 'diclofenac potassium', '', 1, '10:14:37', '2017-04-03'),
(461, '', '8.63', 'Maxit tab 75mg', 'maxit-tab-75mg-461', 1, 1, 24, 'diclofenac potassium', '', 1, '10:15:18', '2017-04-03'),
(462, '', '155.00', 'CEFIM SUSP ', 'cefim-susp-462', 1, 1, 24, 'cefixime', '', 1, '10:15:58', '2017-04-03'),
(463, '', '245.00', 'Cefim DS susp', 'cefim-ds-susp-463', 1, 1, 24, 'cefixime', '', 1, '10:16:32', '2017-04-03'),
(464, '', '13.57', 'Myteka 4mg', 'myteka-4mg-464', 1, 1, 24, 'Montelukast sodium', '', 1, '10:17:39', '2017-04-03'),
(465, '', '20.50', 'Myteka 5mg', 'myteka-5mg-465', 1, 1, 24, 'Montelukast sodium', '', 1, '10:18:15', '2017-04-03'),
(466, '', '22.35', 'Myteka 10mg', 'myteka-10mg-466', 1, 1, 24, 'Montelukast sodium', '', 1, '10:18:46', '2017-04-03'),
(467, '', '11.42', 'Piozer 15mg', 'piozer-15mg-467', 1, 1, 24, 'pioglitazone', '', 1, '10:19:17', '2017-04-03'),
(468, '', '8.50', 'Piozer plus tab 15/500mg', 'piozer-plus-tab-15/500mg-468', 1, 1, 24, 'pioglitazone and metformin hcl', '', 1, '10:20:11', '2017-04-03'),
(469, '', '45.00', 'Xefecta 400mg', 'xefecta-400mg-469', 1, 1, 24, 'Moxifloxacin', '', 1, '10:22:49', '2017-04-03'),
(470, '', '14.95', 'Xikarapid 8mg tab', 'xikarapid-8mg-tab-470', 1, 1, 24, 'loronoxicam', '', 1, '10:24:04', '2017-04-03'),
(471, '', '109.50', 'Cravit 500mg tab', 'cravit-500mg-tab-471', 1, 1, 24, 'Levofloxacin', '', 1, '10:24:49', '2017-04-03'),
(472, '', '15.92', 'Sitaglu 25mg tab', 'sitaglu-25mg-tab-472', 1, 1, 24, 'sitagliptin phosphate', '', 1, '10:25:49', '2017-04-03'),
(473, '', '21.42', 'Sitaglu 50mg tab', 'sitaglu-50mg-tab-473', 1, 1, 24, 'sitagliptin phosphate', '', 1, '10:26:23', '2017-04-03'),
(474, '', '36.78', 'Sitaglu 100mg tab', 'sitaglu-100mg-tab-474', 1, 1, 24, 'sitagliptin phosphate', '', 1, '10:26:52', '2017-04-03'),
(475, '', '22.50', 'Sitaglu met 50/500mg', 'sitaglu-met-50/500mg-475', 1, 1, 24, 'pioglitazone and metformin hcl', '', 1, '10:27:36', '2017-04-03'),
(476, '', '22.85', 'Sitaglu met 50/1000mg', 'sitaglu-met-50/1000mg-476', 1, 1, 24, 'sitagliptin phosphate and metformin', '', 1, '10:28:19', '2017-04-03'),
(477, '', '10.58', 'Neogab 100mg', 'neogab-100mg-477', 1, 1, 24, 'gabapantin', '', 1, '10:29:06', '2017-04-03'),
(478, '', '21.73', 'Neogab 300mg tab', 'neogab-300mg-tab-478', 1, 1, 24, 'gabapantin', '', 1, '10:29:48', '2017-04-03'),
(479, '', '12.80', 'Telsan 20mg tab', 'telsan-20mg-tab-479', 1, 1, 24, 'telmesartan', '', 1, '10:30:22', '2017-04-03'),
(480, '', '21.42', 'Telsan 40mg tab', 'telsan-40mg-tab-480', 1, 1, 24, 'telmesartan', '', 1, '10:40:22', '2017-04-03'),
(481, '', '18.40', 'Geviolox plus tab', 'geviolox-plus-tab-481', 1, 1, 24, 'cartilage biosynthesizer', '', 1, '10:55:03', '2017-04-03'),
(482, '', '11.50', 'gevolox tab', 'gevolox-tab-482', 1, 1, 24, 'glucosamine sulphate', '', 1, '10:55:57', '2017-04-03'),
(483, '', '195.00', 'colorest drops', 'colorest-drops-483', 1, 1, 25, 'colic drops', '', 1, '10:57:08', '2017-04-03'),
(484, '', '175.00', 'coferb drops', 'coferb-drops-484', 1, 1, 25, 'cough drops', '', 1, '10:57:39', '2017-04-03'),
(485, '', '195.00', 'coferb plus syp', 'coferb-plus-syp-485', 1, 1, 25, 'Cough syp', '', 1, '10:58:19', '2017-04-03'),
(486, '', '175.00', 'coferb  syp', 'coferb-syp-486', 1, 1, 25, 'cough drops', '', 1, '10:58:56', '2017-04-03'),
(487, '', '245.00', 'Hilgas syp', 'hilgas-syp-487', 1, 1, 25, 'FIBERS', '', 1, '10:59:48', '2017-04-03'),
(488, '', '195.00', 'Epti syp', 'epti-syp-488', 1, 1, 25, 'appetite stimulant', '', 1, '11:00:43', '2017-04-03'),
(489, '', '2.46', 'Biscot tab 2.5mg', 'biscot-tab-2-5mg-489', 1, 1, 78, 'bisoprolol', '', 1, '11:01:59', '2017-04-03'),
(490, '', '4.92', 'Biscot tab 5mg', 'biscot-tab-5mg-490', 1, 1, 78, 'bisoprolol', '', 1, '11:02:43', '2017-04-03'),
(491, '', '19.00', 'Cougar  10mg tab', 'cougar-10mg-tab-491', 1, 1, 78, 'rosuvastat', '', 1, '11:03:48', '2017-04-03'),
(492, '', '12.00', 'Cougar  5mg tab', 'cougar-5mg-tab-492', 1, 1, 78, 'rosuvastat', '', 1, '11:04:27', '2017-04-03'),
(493, '', '249.00', 'Sunny D stat caps', 'sunny-d-stat-caps-493', 1, 1, 78, 'vitamin D3', '', 1, '11:05:50', '2017-04-03'),
(494, '', '163.00', 'sunny d 5mg inj', 'sunny-d-5mg-inj-494', 1, 1, 78, 'vitamin D3', '', 1, '11:06:32', '2017-04-03'),
(495, '', '300.00', 'sunny d drops ', 'sunny-d-drops-495', 1, 1, 78, 'vitamin D3', '', 1, '11:07:04', '2017-04-03'),
(496, '', '175.00', 'sunny D liquid', 'sunny-d-liquid-496', 1, 1, 78, 'vitamin D3', '', 1, '11:07:50', '2017-04-03'),
(497, '', '25.00', 'plavix 75mg', 'plavix-75mg-497', 1, 1, 60, 'clopiogril', '', 1, '11:09:02', '2017-04-03'),
(498, '', '52.61', 'Co aprovel 300/12.5mg', 'co-aprovel-300/12-5mg-498', 1, 1, 60, 'irbesartan &hydrocholorothiazide', '', 1, '11:10:25', '2017-04-03'),
(499, '', '1.90', 'Lasix 40mg tab', 'lasix-40mg-tab-499', 1, 1, 60, 'Furosemide', '', 1, '11:14:04', '2017-04-03'),
(500, '', '1.13', 'Lasix 20mg tab', 'lasix-20mg-tab-500', 1, 1, 60, 'Furosemide', '', 1, '11:14:47', '2017-04-03'),
(501, '', '0.63', 'Avil 50mg tab', 'avil-50mg-tab-501', 1, 1, 60, 'phenarimine maleate', '', 1, '11:15:33', '2017-04-03'),
(502, '', '0.58', 'Avil 25mg tab', 'avil-25mg-tab-502', 1, 1, 60, 'phenarimine maleate', '', 1, '11:16:12', '2017-04-03'),
(503, '', '35.36', 'co aprovel 150/12.5 mg tab', 'co-aprovel-150/12-5-mg-tab-503', 1, 1, 60, 'irbesartan &hydrocholorothiazide', '', 1, '11:17:16', '2017-04-03'),
(504, '', '34.50', 'Aprovel 150mg', 'aprovel-150mg-504', 1, 1, 60, 'irbesartan', '', 1, '11:18:10', '2017-04-03'),
(505, '', '23.33', 'Amaryl 3mg tab', 'amaryl-3mg-tab-505', 1, 1, 60, 'glimpiride', '', 1, '11:19:28', '2017-04-03'),
(506, '', '15.53', 'Amaryl 2mg tab', 'amaryl-2mg-tab-506', 1, 1, 60, 'Glimepiride', '', 1, '11:20:06', '2017-04-03'),
(507, '', '7.83', 'Amaryl 1mg tab', 'amaryl-1mg-tab-507', 1, 1, 60, 'Glimepiride', '', 1, '11:20:40', '2017-04-03'),
(508, '', '4.93', 'flygal plus tab', 'flygal-plus-tab-508', 1, 1, 60, 'metronidazole and diloxanide furoate', '', 1, '11:21:32', '2017-04-03'),
(509, '', '1.57', 'flygal 400mg tab', 'flygal-400mg-tab-509', 1, 1, 60, 'metronidazole ', '', 1, '11:22:10', '2017-04-03'),
(510, '', '2.33', 'Glucomet plus tab', 'glucomet-plus-tab-510', 1, 1, 57, 'GLIBENCLIMIDE AND METFORMIN HCL', '', 1, '11:22:55', '2017-04-03'),
(511, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(512, '', '14.06', 'Novonorm tabs 0.5mg', 'novonorm-tabs-0-5mg-512', 1, 1, 63, 'repaglinide', '', 1, '11:25:03', '2017-04-03'),
(513, '', '17.04', 'Novonorm tabs 1mg', 'novonorm-tabs-1mg-513', 1, 1, 55, 'repaglinide', '', 1, '11:25:38', '2017-04-03'),
(514, '', '20.43', 'Novonorm tabs 2mg', 'novonorm-tabs-2mg-514', 1, 1, 55, 'repaglinide', '', 1, '11:26:07', '2017-04-03'),
(515, '', '7.50', 'Aripip 10mg tab`', 'aripip-10mg-tab`-515', 1, 1, 57, 'aripiprazole', '', 1, '11:26:54', '2017-04-03'),
(516, '', '10.00', 'Aripip 15mg tab`', 'aripip-15mg-tab`-516', 1, 1, 57, 'aripiprazole', '', 1, '11:27:30', '2017-04-03'),
(517, '', '33.00', 'Atorva 20mg tab', 'atorva-20mg-tab-517', 1, 1, 57, 'atorvastatin', '', 1, '11:28:10', '2017-04-03'),
(518, '', '2.30', 'Carsel 25mg', 'carsel-25mg-518', 1, 1, 67, 'metoprolol tartrate', '', 1, '11:29:02', '2017-04-03'),
(519, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(520, '', '5.93', 'Carsel 100mg', 'carsel-100mg-520', 1, 1, 67, 'metoprolol tartrate', '', 1, '11:30:13', '2017-04-03'),
(521, '', '40.00', 'Biflor sache', 'biflor-sache-521', 1, 1, 66, 'lyophilised saccharomyces', '', 1, '11:31:21', '2017-04-03'),
(522, '', '31.90', 'No spa inj', 'no-spa-inj-522', 1, 1, 60, 'Drotaverine', '', 1, '12:22:03', '2017-04-03'),
(523, '', '13.85', 'Nospa forte tab', 'nospa-forte-tab-523', 1, 1, 60, 'Drotaverine', '', 1, '12:23:39', '2017-04-03'),
(524, '', '7.20', 'Nospa  40mg tab', 'nospa-40mg-tab-524', 1, 1, 60, 'Drotaverine', '', 1, '12:24:26', '2017-04-03'),
(525, '', '15.76', 'magnesium sulphate inj', 'magnesium-sulphate-inj-525', 1, 1, 82, 'mgso4', '', 1, '12:25:13', '2017-04-03'),
(526, '', '3.81', 'Mgso4 inj 2ml', 'mgso4-inj-2ml-526', 1, 1, 82, 'mgso4', '', 1, '12:26:42', '2017-04-03'),
(527, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(528, '', '30.00', 'Liquid paraffin', 'liquid-paraffin-528', 1, 1, 82, 'Paraffin', '', 1, '12:28:02', '2017-04-03'),
(529, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(530, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(531, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(532, '', '44.85', 'Follic Acid Tab 5 mg', 'follic-acid-tab-5-mg-532', 1, 1, 82, 'follic acid', '', 1, '11:02:37', '2017-04-04'),
(533, '', '20.00', 'Mrtazep tab 15 mg', 'mrtazep-tab-15-mg-533', 1, 1, 82, 'mirtazapine', '', 1, '11:08:55', '2017-04-04'),
(534, '', '4.00', 'levocit tab 5 mg', 'levocit-tab-5-mg-534', 1, 1, 44, 'levocetrizine dihydrocholoride', '', 1, '11:11:17', '2017-04-04'),
(535, '', '47.99', 'cefyl/p 60 ml Syp', 'cefyl/p-60-ml-syp-535', 1, 1, 48, 'acefylline piperazine', '', 1, '11:13:18', '2017-04-04'),
(536, '', '140.00', 'Capcidol Plus Lotion', 'capcidol-plus-lotion-536', 1, 1, 7, 'analgesic', '', 1, '11:14:54', '2017-04-04'),
(537, '', '7.65', 'Enkit 0.75mg Tab', 'enkit-0-75mg-tab-537', 1, 1, 82, 'Levorgestrel', '', 1, '11:16:49', '2017-04-04'),
(538, '', '7.50', 'emikit ds 1.5 mg tab', 'emikit-ds-1-5-mg-tab-538', 1, 1, 82, 'Levorgestrel', '', 1, '11:17:51', '2017-04-04'),
(539, '', '61.72', 'Famila 28 Tab', 'famila-28-tab-539', 1, 1, 82, 'Levorgestrel and ethinyl', '', 1, '11:18:54', '2017-04-04'),
(540, '', '37.03', 'Adicos Syp', 'adicos-syp-540', 1, 1, 82, 'sugar free', '', 1, '11:20:31', '2017-04-04'),
(541, '', '74.75', 'Lexoberon Liquid Syp', 'lexoberon-liquid-syp-541', 1, 1, 28, 'Sodium Picosulfate', '', 1, '11:22:18', '2017-04-04'),
(542, '', '2.30', 'Lexoberon Tab ', 'lexoberon-tab-542', 1, 1, 28, 'sodium phosphate', '', 1, '11:23:47', '2017-04-04'),
(543, '', '3.90', 'Buscopan Plus Tab', 'buscopan-plus-tab-543', 1, 1, 28, 'Hyoscine', '', 1, '11:24:44', '2017-04-04'),
(544, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(545, '', '33.33', 'Macrobac 250 mg Cap', 'macrobac-250-mg-cap-545', 1, 1, 107, 'Azithromycin', '', 1, '11:29:51', '2017-04-04'),
(546, '', '13.00', 'Inflamatix SR Cap 200 mg', 'inflamatix-sr-cap-200-mg-546', 1, 1, 107, 'flurbiprofen', '', 1, '11:31:25', '2017-04-04'),
(547, '', '6.85', 'Inflamatix Tab 100 mg', 'inflamatix-tab-100-mg-547', 1, 1, 107, 'flurbiprofen', '', 1, '11:32:37', '2017-04-04'),
(548, '', '39.00', 'Maxamine Inj 500 mcg/1ml', 'maxamine-inj-500-mcg/1ml-548', 1, 1, 107, 'Mecobalamin', '', 1, '11:35:05', '2017-04-04'),
(549, '', '9.75', 'Conzyme Tab 10 mg', 'conzyme-tab-10-mg-549', 1, 1, 107, 'serretiopeptidase', '', 1, '11:36:17', '2017-04-04'),
(550, '', '5.50', 'Conzyme Tab 05 mg', 'conzyme-tab-05-mg-550', 1, 1, 107, 'serretiopeptidase', '', 1, '11:37:08', '2017-04-04'),
(551, '', '17.85', 'Zolbi Cap 40 mg', 'zolbi-cap-40-mg-551', 1, 1, 107, 'Omeprazole', '', 1, '11:38:05', '2017-04-04'),
(552, '', '10.30', 'Zolbi Cap 20 mg', 'zolbi-cap-20-mg-552', 1, 1, 107, 'Omeprazole', '', 1, '01:03:03', '2017-04-04'),
(553, '', '5.06', 'Atiza', 'atiza-553', 1, 1, 107, 'levocetrizine dihydrocholoride', '', 1, '01:04:16', '2017-04-04'),
(554, '', '9.10', 'Lorin nsa 10 mg tab', 'lorin-nsa-10-mg-tab-554', 1, 1, 107, 'Loratadine', '', 1, '01:05:05', '2017-04-04'),
(555, '', '3.09', 'cardiolite 20 mg tab', 'cardiolite-20-mg-tab-555', 1, 1, 107, 'atenolol', '', 1, '01:06:39', '2017-04-04'),
(556, '', '4.85', 'cardiolite 50 mg tab', 'cardiolite-50-mg-tab-556', 1, 1, 107, 'atenolol', '', 1, '01:07:35', '2017-04-04'),
(557, '', '4.93', 'Cardiolite Plus 50 mg/12.5 mg tab', 'cardiolite-plus-50-mg/12-5-mg-tab-557', 1, 1, 107, 'atenolol+chlorphalidone', '', 1, '01:09:08', '2017-04-04'),
(558, '', '27.40', 'Voren Inj 75 mg', 'voren-inj-75-mg-558', 1, 1, 107, 'diclofenic sodium', '', 1, '01:11:41', '2017-04-04'),
(559, '', '7.07', 'Voren Cap 50 mg', 'voren-cap-50-mg-559', 1, 1, 107, 'diclofenac sodium', '', 1, '01:12:36', '2017-04-04'),
(560, '', '5.56', 'Voren 50 mg tab', 'voren-50-mg-tab-560', 1, 1, 107, 'diclofenac sodium', '', 1, '01:13:29', '2017-04-04'),
(561, '', '10.00', 'O.R.S Sachet', 'o-r-s-sachet-561', 1, 1, 86, 'ors', '', 1, '01:15:11', '2017-04-04'),
(562, '', '70.71', 'Strepsils', 'strepsils-562', 1, 1, 33, '', '', 1, '01:16:48', '2017-04-04'),
(563, '', '42.00', 'vomilux susp 60 ml', 'vomilux-susp-60-ml-563', 1, 1, 40, 'domperidone', '', 1, '01:18:21', '2017-04-04'),
(564, '', '51.75', 'Xylor Susp', 'xylor-susp-564', 1, 1, 40, 'Loratadine', '', 1, '01:19:19', '2017-04-04'),
(565, '', '60.00', 'Zincat Syp ', 'zincat-syp-565', 1, 1, 40, 'elemenpal zinc', '', 1, '01:20:16', '2017-04-04'),
(566, '', '1.84', 'Merol Tab 25 mg', 'merol-tab-25-mg-566', 1, 1, 40, 'metoprolol tartrate', '', 1, '01:21:42', '2017-04-04'),
(567, '', '10.00', 'Distalgesic Tab 37.5/325 mg', 'distalgesic-tab-37-5/325-mg-567', 1, 1, 40, 'tranadol hcl +paracetamol', '', 1, '01:23:02', '2017-04-04'),
(568, '', '25.21', 'Viglip M Tab 50 mg/850 mg', 'viglip-m-tab-50-mg/850-mg-568', 1, 1, 40, 'vildagliptin+metforminhcl', '', 1, '01:24:57', '2017-04-04'),
(569, '', '7.08', 'Gempid 600 Tab ', 'gempid-600-tab-569', 1, 1, 40, 'gemfibrozil', '', 1, '01:26:23', '2017-04-04'),
(570, '', '25.21', 'Viglip M Tab 50 mg/100 mg', 'viglip-m-tab-50-mg/100-mg-570', 1, 1, 40, 'vildagliptin+metforminhcl', '', 1, '01:27:37', '2017-04-04'),
(571, '', '1.22', 'Ascard Tab 75 mg', 'ascard-tab-75-mg-571', 1, 1, 40, 'acetylsalicylyc acid bp', '', 1, '01:29:02', '2017-04-04'),
(572, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00'),
(573, '', '121.70', 'Ulsanic Syp 60ml', 'ulsanic-syp-60ml-573', 1, 1, 112, 'sucralfate', '', 1, '01:33:41', '2017-04-04'),
(574, '', '39.30', 'Telfast Tab 120 mg', 'telfast-tab-120-mg-574', 1, 1, 60, 'Fexofenadine HCI', '', 1, '01:35:04', '2017-04-04'),
(575, '', '21.40', 'Telfast Tab 60 mg', 'telfast-tab-60-mg-575', 1, 1, 60, 'Fexofenadine HCI', '', 1, '01:36:00', '2017-04-04'),
(576, '', '15.50', 'Lipidin Tab 10 mg', 'lipidin-tab-10-mg-576', 1, 1, 113, 'Atorvastatin', '', 1, '01:39:26', '2017-04-04'),
(577, '', '18.66', 'tricardin Cap 250mg', 'tricardin-cap-250mg-577', 1, 1, 114, 'danshenform comp', '', 1, '01:43:04', '2017-04-04'),
(578, '', '2.25', 'Vita 6 tab 50mg', 'vita-6-tab-50mg-578', 1, 1, 115, 'pyridoxine hydrocholoride', '', 1, '01:45:22', '2017-04-04'),
(579, '', '0.00', '', '', 0, 0, 0, '', '', 127, '00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tblreturns`
--

CREATE TABLE `tblreturns` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `smg_name` varchar(64) NOT NULL,
  `smg_email` varchar(64) NOT NULL,
  `smg_phone` varchar(32) NOT NULL,
  `smg_address` varchar(256) NOT NULL,
  `order_date` varchar(64) NOT NULL,
  `reason` varchar(64) NOT NULL,
  `product_status` tinyint(4) NOT NULL,
  `details` varchar(500) NOT NULL,
  `post_date` date NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreturns`
--

INSERT INTO `tblreturns` (`id`, `order_id`, `smg_name`, `smg_email`, `smg_phone`, `smg_address`, `order_date`, `reason`, `product_status`, `details`, `post_date`, `time_stamp`, `ip`, `status`) VALUES
(1, 592417, 'Faisal Khan', 'beingfaisalwaheed@gmail.com', '03229929947', 'sdsadsa', '12-06-2016', 'Damaged On Arrival', 1, 'asasa', '2016-12-23', '2016-12-27 06:03:43', '119.159.150.57', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompanies`
--
ALTER TABLE `tblcompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfaqs`
--
ALTER TABLE `tblfaqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbljobs`
--
ALTER TABLE `tbljobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblperscriptions`
--
ALTER TABLE `tblperscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreturns`
--
ALTER TABLE `tblreturns`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tblcompanies`
--
ALTER TABLE `tblcompanies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblfaqs`
--
ALTER TABLE `tblfaqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbljobs`
--
ALTER TABLE `tbljobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblperscriptions`
--
ALTER TABLE `tblperscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;
--
-- AUTO_INCREMENT for table `tblreturns`
--
ALTER TABLE `tblreturns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
