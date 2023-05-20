-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2023 at 03:03 PM
-- Server version: 8.0.33-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `test_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `a` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `explanation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `username` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qid` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studenttestinfo`
--

CREATE TABLE `studenttestinfo` (
  `username` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_left` time DEFAULT NULL,
  `completed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `username` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `duration` int DEFAULT NULL,
  `show_ans` int DEFAULT NULL,
  `password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neg_mark` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmed` tinyint(1) DEFAULT '0',
  `u_type` int NOT NULL DEFAULT '1',
  `fathcontact` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `taluk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `income` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `fathers_name`, `school`, `stream`, `email`, `password`, `register_time`, `confirmed`, `u_type`, `fathcontact`, `address`, `taluk`, `district`, `income`, `percent`) VALUES
(1, '7618752850', 'Jeevan P Rai', 'father', 'school', '3A', 'jeeevanraisonangeri@gmail.com', 'password', '2023-03-30 16:51:47', 0, 1, '7894561230', 'Koingodimoole House, Sonangeri post Sullia TQ D.K.', 'gdgh', 'fghdfgh', '456456', '95'),
(2, '9449267343', 'Dhyan T D', 'jho', 'Jnana Ganga Central school', '3A', 'dhyantd@gmail.com', 'admin1234', '2023-03-30 16:52:38', 0, 1, '9449267343', 'Dhyan complex, Railway station road, chikka puttur', 'hgjcg', 'cghjcgjj', '414242', '100'),
(3, '9353870939', 'Venkatesh ', 'UDC', 'Xxx', 'GM', 'venki.uc@gmail.com', 'venkatesh', '2023-03-30 17:14:32', 0, 1, '9731854774', 'Kvgce', 'Sullia', 'DK', '10k', '78'),
(4, '8861147239', 'Sahil sm ', 'Siraj su', 'Amarajothi pu college sullia ', '2B', 'Saahilmohd3@gmail.com', '8861147239', '2023-04-11 13:13:04', 0, 1, '9845689700', 'Sullia', 'Sullia', 'DK', '4 lakhs ', '74.33'),
(5, '8095731344', 'Keerthana R', 'Rajappa', 'Maharani govt pre-university college mysore', '3B', 'rajkeerthana904@gmail.com', '12345678', '2023-04-11 13:21:35', 0, 1, '7353594389', 'Mysore', 'Nanjangud ', 'Mysore', '42000', '85.44'),
(6, '9008154696', 'Deepika B K', 'Kanthraj', 'Emrc balugodu virajpete', '3A', 'deepugowdz90@gmail.com', '9008154', '2023-04-11 14:29:20', 0, 1, '8904354572', 'Periyapatana', 'Periyapatana', 'Mysore', '6000', '93'),
(8, '8660087202', 'Sinchana K S ', 'Shrinivas ', 'Bright pu college k r nagar', '3A', 'sinchanakssinchanaks793@gmail.com', '8660087202', '2023-04-12 02:49:14', 0, 1, '9980857061', 'Kellur post and village', 'Piriyapatna tq', 'Mysore ', '45000', '557'),
(9, '9380858031', 'Bhavana Ganapati Moger ', 'Sumitra Ganapati Moger ', 'Siddhartha pre University college Bhatkal 581320', 'GM', 'bhavanamoger52@gmail.com', 'AZ-az123', '2023-04-12 03:26:38', 0, 1, '9113226472', 'At shedabari cross Gandhinagar Heble Bhatkal 581320', 'Bhatkal ', 'Uttara kannada ', '15,000', '87.2%'),
(12, '73493 21132 ', 'Divya S N', 'Nanjunda nayaka', 'Bright pu college k r nagar', 'ST', 'Divyanayak3183@gmail.com', '734969', '2023-04-12 04:38:51', 0, 1, '9611596645', 'Sathigrama ', 'Krishnarajanagara', 'Mysore ', '40000', '524 / 83.84%'),
(13, '6366442011', 'Pratheek', '9481022482', 'Nmc sullia', '3A', 'pratheek1433@gmail.com', 'pratheek1433', '2023-04-12 05:18:39', 0, 1, '9481022482', 'Sullia', 'Mandekolu', 'Dakshina kannada', '30000', '70'),
(14, '9353087881', 'Varsha K', 'Narayana Gowda', 'SSPUC subrahmanya', '3A', 'varshak935308@gmail.com', '84531959', '2023-04-12 06:40:29', 0, 1, '8453195995', 'Subrahmanya', 'Kadaba', 'Dakshina Kannada ', '30,000', '95.52'),
(15, 'admin', 'Admin', NULL, NULL, NULL, 'kvgceexam@gmail.com', 'kvgce@23Exam', '2023-04-12 08:07:06', 0, 2, '', '', '', '', '', ''),
(16, '9591443275', 'Gurukiran B', 'Janardhana ', 'Vivekananda pre university college, nehru nagar, puttur ', '3A', 'gurukiran1210@gmail.com', 'GUrukiran@99', '2023-04-12 08:56:55', 0, 1, '9481377346', 'Sullia', 'Sullia', 'DAKSHINA KANNADA', '₹85,000', '86.08%'),
(17, '9746035460', 'Mohnish A', 'Achutha C H', 'MSCHSS Peradala,Neerchal', '2A', 'mohnish.devikripa@gmail.com', 'Mohnish@1', '2023-04-12 09:30:03', 0, 1, '8129130111', 'Kumbla', 'Kasargod ', 'Kasargod ', '36000', '88'),
(18, '9731155581', 'Ramya M Y', 'Yogesh', 'Bright p u college', '3A', 'mrjoythi3@gmail.com', 'jyothi', '2023-04-12 11:24:15', 0, 1, '9731155581', 'City', 'K R NAGAR', 'Mysuru', '25000', '88.9'),
(19, '9845481909', 'Karthik H V', 'Hareesha V', 'N M P U C Aranthodu sullia DK', '3A', 'Karthikvalabailu99@gmail.com', 'karthikgowda', '2023-04-12 13:16:41', 0, 1, '9482033878', 'Gandinagata sullia', 'Sullia ', 'D K', 'Below 40000', '75%'),
(20, '7899858741', 'Anish A', 'Puspalatha', 'Vivekananda PU college, Nehrunagar,  Puttur', '2A', 'anish17082005@gmail.com', '@, anish17', '2023-04-12 14:07:57', 0, 1, '9686120741', 'Sullia', 'Sullia', 'Dakshina kannada', '40, 000', '90.08'),
(23, '6362361195', 'Ankitha K ', 'Kumara', 'Bright pu college k R nagar', '3B', 'ankithak651@gmail.com', 'ankithakankitha', '2023-04-13 00:00:09', 0, 1, '9353598977', 'Village ', 'K R nagar', 'Mysore ', '35000', '560'),
(25, '7204635333', 'Deekshith c', 'Chaluvaraju r', 'Bright pu college ', 'CAT-1', 'deekshithc412@gmail.com', '16162323', '2023-04-13 02:33:44', 0, 1, '7204635333', 'Krishnarajanagara ', 'Krishnarajanagara ', 'Mysore ', '35000', '70.8'),
(27, '7338052390', 'Sadhana p Shetty', 'Chandrahasa Shetty p', 'K. S Gowda PRE UNIVERSITY COLLEGE VARSHANAGARA NINTHIKAL', '3B', 'sadhanashetty2006@gmail.com', 'Shettygirl2006', '2023-04-13 05:43:46', 0, 1, '8762122112', 'Ninthikal', 'Sullia', 'Dakshina Kannada', '154000', '89'),
(28, '7483283927', 'Vijayalakshmi .D', 'Rukmayya naik p j', 'SSPU subrahmanya ', 'ST', 'vijayvinaya433@gmail.com', 'vizzu892927', '2023-04-13 08:19:19', 0, 1, '8762736259', 'Bellare', 'Sulia ', 'Dakshina kannada ', '30,000', '82%'),
(30, '8861259712', 'Prajna.A.K', 'Krishna Acharya A N', 'S.S.P.U.College Subrahmanya. ', '2A', 'vvasanthi603@gmail.com', 'PRAJNA17', '2023-04-13 11:47:21', 0, 1, '9632275264', 'Peruvaje,Bellare', 'Sullia', 'Dakshina Kannada', '40000', '89.76'),
(31, '8618395233', 'Harsha C P', 'Padmanabha C', 'Shri Subrahmanyeshwara p u college,Subrahmanya ', '3A', 'harshacp38@gmail.com', 'harsha@2k23', '2023-04-13 13:43:20', 0, 1, '9483308903', 'Cheru ', 'Kadaba ', 'Dakshin Kannada ', '11500', '89.6'),
(32, '7899727389', 'Khushi.S.Rai', 'Sathish.Rai', 'S.S.P.U.collage subrahmanya', '3B', 'raikhushi413@gmail.com', '789972', '2023-04-13 13:52:06', 0, 1, '7899727389', 'Panja ', 'Kadaba', 'Dakshina kannada', '20,000', '90.56%(566)'),
(33, '7892043059', 'Chaithanya.K.B.', 'Balachandra.K.', 'SSPU college Subrahmanya', '3A', 'chaithanyagowda56@gmail.com', '050403', '2023-04-13 15:22:09', 0, 1, '9880925445', 'Panja', 'Kadaba', 'Dakshina Kannada', '60000', '94.24%'),
(36, '9972989317', 'Shinjana  G S', 'Srinivasa Gowda G', 'SDM PUC Ujire', '3A', 'misshemalatha78@gmail.com', 'shinju2005', '2023-04-14 12:08:36', 0, 1, '9972989317', 'Ujire', 'Belthangady', 'Dakshina Kannada', '800000', '96.1'),
(37, '9482347558', 'PRAGATHI K.p', 'Prasanna k.k', 'G.P.U.C.Sullia', '3A', 'pragathikp8@gmail.com', 'pragathi123', '2023-04-14 13:04:27', 0, 1, '9008165127', 'Sakaleshpur ', 'Sakaleshpur ', 'Hassan ', '60000', '89.6'),
(38, '9449580573', 'Shresta Rai S', 'B Bhaskara Rai', 'Ambika padavi poorva vidhyalaya', '3B', 'raishresta6@gmail.com', 'shresta06', '2023-04-14 13:33:23', 0, 1, '9449580573', 'Sullia', 'Sullia', 'Dakshina kannada', '540000', '80'),
(39, '9902374501', 'Nishmitha K', 'Madhava K', 'Gpuc sullia', '3A', 'nishmithak2005@gmail.com', 'nishmitha', '2023-04-14 14:03:55', 0, 1, '8746838364', 'Ubaradka mithur', 'Sullia', 'Dakshina Kannada', '20000', '80.32'),
(40, '9980516710', 'Darshan ', 'Ramesh BN', 'Loyola composite PU collage ', 'SC', 'darshan99806@gmail.com', 'dArshan9980', '2023-04-14 15:42:29', 0, 1, '9945069081', 'Hulimavu', 'Banglore south ', 'Banglore ', '18000', '65.76%'),
(41, '6360958609', 'Deepthi k. S ', 'Seetha. K ', 'Narendra Pre University College, Vivekanagara, Tenkila, Puttur, Dk', '3A', 'seethagowda2005@gmail.com', 'Deependra', '2023-04-15 08:32:28', 0, 1, '9945905733', 'Town', 'Puttur', 'Dakshina kannada ', '115000', '85.6%'),
(43, '7892373213', 'KIRAN P', 'ANANDA GOWDA P', 'S S P U COLLEGE  SUBRAMANYA ', '3A', 'kiranpandi232@gmail.com', '7892373213', '2023-04-16 02:24:46', 0, 1, '8861494475', 'PANDI', 'KADABA', 'DAKSHINA KANNADA ', '50000', '96.64'),
(44, '8762804510', 'Niranjan punacha B A', 'B J Appanna', 'St Michael composite pu College madikeri', '3A', 'niranjanpunnacha143@gmail.com', 'Niranjan@25', '2023-04-16 04:27:49', 0, 1, '7899077152', 'Cherambane', 'Madikeri', 'Kodagu', '50000', '89.9'),
(45, '8547241126', 'Sharath Rai M', 'Vijaya', 'G V H S S Mulleria', 'GM', 'sharathraim126@gmail.com', 'Sharath@126', '2023-04-17 04:46:44', 0, 1, '9188539126', 'Mulleria', 'Kasaragod', 'Kasaragod', '39000', '96'),
(46, '8970891677', 'Nuzhath', 'Rahamathunnisa', 'Nehru Memorial pre university college', '2B', 'Nuza0312@gmail.com', 'nishahaneef', '2023-04-17 05:51:05', 0, 1, '8970891677', 'Bellare', 'Sullia', 'Dakshina kannada', '30000', '85'),
(47, '7349605187', 'ASHA SS ', 'KUSUMA ', 'GPUC SULLIA ', 'SC', 'ashasampaje7349@gmail.com', '810897', '2023-04-17 07:25:27', 0, 1, '7349605187', 'SAMPAJE ', 'SULLIA ', 'DK', '20000', '93.44%'),
(48, '9019586908', 'Girish.e', 'Eregowda', 'SKR pu boys college k r nagar', '2A', 'Girigirish5252@gmail.com', 'girish', '2023-04-17 07:30:21', 0, 1, '9019586908', 'K r nagara', 'K r nagara', 'Mysore', '15000', '564 90.24%'),
(49, '6360027540', 'Bhavish B', 'Thirumaleshwara B', 'Sspu college subrahmanya', '3A', 'bbellyavara@gmail.com', '123456789', '2023-04-17 10:57:16', 0, 1, '9482045986', 'Madappady ', 'Sullia', 'Dakshina kannada', '130000', '88.64'),
(50, '8431324296', 'Keerthana s', 'Sunitha s', 'St.joseph\'s PU college somwarpet ', '2A', 'keerthanasrao31@gmail.com', '903546@Rk', '2023-04-17 14:24:33', 0, 1, '9901284981', 'Alur siddapura', 'Somwarpet', 'Kodagu', '20,000', '84.8'),
(51, '9353613720', 'Nisha j.p.', 'Jagannath M.H.', 'Government pre university college sullia', '3A', 'nishajp682@gmail.com', 'n80*#20sh', '2023-04-17 14:48:48', 0, 1, '9449331180', 'Sullia', 'Sullia', 'Dakshina kannada', '30,000', '83%'),
(52, '9480052234', 'Kushi K T', 'ASHA P A', 'Ambica padavipoorva college puttur', '3A', 'ashateja2004@gmail.com', '8638150965', '2023-04-18 05:55:50', 0, 1, '6362771827', 'Bagamandala', 'Madikeri', 'Kodagu', '300000', '85.5'),
(53, '8762212953', 'Nishmitha k G ', 'Ganapayya', 'Sspu college subramanya', 'ST', 'Kgnishmitha@gmail.com', 'NISHMITHA*123', '2023-04-18 06:01:30', 0, 1, '8762855924', 'Guthigaru', 'Sulla', 'Dakshina Kannada ', '75000', '99.8'),
(56, '8217612080', 'Jasmith. K. P', 'Parameshwara k', 'Sspu college subramanya', '3A', 'kpjasmith@gmail.com', 'jasmith2005', '2023-04-18 06:44:17', 0, 1, '8722443487', 'Kadaba', 'Kadaba', 'Dakshina kannada', '50000', '90.88'),
(57, '9901807219', 'Sukanya.A', 'A.Ananda', 'GPUC Savanoor', '3A', 'suksukanya3@gmail.com', 'suk14feb2006', '2023-04-18 07:28:07', 0, 1, '9483463114', 'Kudmar', 'Kadaba', 'dakshina Kannada', '50,000', '94.08%'),
(58, '8277791787', 'PRATHYUSH CM', 'PREETHI J', 'BRIGHT PRE- UNIVERSITY COLLEGE CHAMARAJANAGARA', '2A', 'cmprathyush@gmail.com', 'Prathyush@1', '2023-04-18 07:55:17', 0, 1, '9980189350', 'CHAMARAJANAGARA', 'CHAMARAJANAGARA', 'CHAMARAJANAGARA', '483000', '75.2'),
(60, '9611348076', 'Priyanka sj', 'Jagadeesh', 'Bgs science pu college pandavapura ', '3A', 'priyankapriyanka67720@gmail.com', 'priyanka', '2023-04-18 08:05:32', 0, 1, '9008539334', 'Shankanahalli', 'Pandavapura', 'Mandya', '11000', '88% 555'),
(62, '9731854774', 'Venkatesh', 'Chandrashekara', 'Kvg', 'GM', 'venki.uc@gmail.com', 'kvgceexam', '2023-04-18 08:58:43', 0, 1, '9731854774', 'Sullia', 'Sullia', 'DK', '100000', '98'),
(63, '9739867361', 'Kruthika.R', 'Ramesh', 'Kvg Amarajyothi pu college ', '2A', 'rv6683605@gmail.com', '9986360217', '2023-04-18 15:53:48', 0, 1, '9739867361', 'Kanakapura', 'Kanakapura', 'Ramanagar ', '11000', '91.51'),
(64, '8762919625', 'Raksha ', 'Mailappa gowda', 'K.s.gowda pu college ninthikal', '3A', 'mailappagowda855@gmail.com', '152925', '2023-04-19 02:28:49', 0, 1, '9686947409', 'Patte chennavara', 'Kadaba', 'Dakshina kannada ', '50000', '77.28'),
(65, '6364616831', 'Dhanya Kumari K', 'Kusumavathi', 'GPUC sullia', '3A', 'kusumavathic501@gmail.com', '12062005', '2023-04-19 04:55:04', 0, 1, '9741004530', 'Bellare', 'Sullia', 'Dakshina kannada', '30000', '95.36%'),
(66, '7204830972', 'Yuktha C V ', 'Venugopal C B ', 'Vani PU College Belthangady ', '3A', 'venug9799@gmai.com', '237337', '2023-04-19 05:27:07', 0, 1, '7676256924', 'Chettimani ', 'Madikeri ', 'Kodagu ', '60000', '85.6%'),
(67, '7259792414', 'ASHITHA M', 'Father:Thirumaleshwara Gowda, Mother:Jayanthi k k', 'G P U C SULLIA ', '3A', 'githeshmgithesh@gmail.com', '93535397', '2023-04-19 05:41:36', 0, 1, '9481849414', 'Sullia', 'Sullia ', 'Dakshina Kannada', '90000', '99.04'),
(68, '9632557169', 'Harsha M', 'Veerappa Gowda', 'G P U C Sullia', '3A', 'akkuharsham@gmail.com', '963255', '2023-04-19 06:23:14', 0, 1, '9591408117', 'Ubaradka mitturu', 'Sullia', 'Dakshina Kannada', '80000', '79%'),
(69, '9591956396', 'Mushfiqa.M.M', 'Safra', 'Rotary Comp pu college mithadka sullia', '2B', 'Saframahammed9@gmail.com', '574239', '2023-04-19 06:24:52', 0, 1, '9591956396', 'Jalsoor', 'Sullia', 'Dakshina kannada', '160000', '89.76'),
(70, '8296080682', 'Prajwal ps', 'Shobha', 'Rotary pu college sullia', '2A', 'prajwalberpadka@gmail.com', 'Evil Quartet', '2023-04-19 06:48:05', 0, 1, '9591449965', 'Jalsoor', 'Sullia ', 'Dakshina kannada ', '300000', '91.52%'),
(71, '9019242405', 'Nisarga AH ', 'Hemanth', 'B g s independent p u college', '3A', 'Nisarganishu242405@gmail.com', '242405', '2023-04-19 06:55:28', 0, 1, '6363540880', 'Mandya', 'K r pet', 'Mandya', '20000', '95.84%'),
(72, '6360603538', 'Thameem TI', 'Ibrahim tm', 'Gpuc Gandhinagar sullia DK', '2B', 'thameemthotakochiiii@gmail.com', 'qwerty@1234', '2023-04-19 07:22:55', 0, 1, '8277051157', 'Sullia ', 'Sullia ', 'Dakshina Kannada ', '130000', '75.8'),
(73, '8792148649', 'Chaithra', 'Malinga and bhavani', 'Sri sharada women\'s p. u college for women sullia ', 'ST', 'Kchaithra346@gmail.com', 'chaithu', '2023-04-19 08:05:52', 0, 1, '9483370679', 'Kalladka house mandekolu post & village', 'Sullia', 'Dakshina kannada', '60000', '72'),
(74, '9606682084', 'Sabith kochikars', 'B A Raheem', 'NMPUC sullia', '2B', 'raheemkochikars3@gmail.com', '17122004(:)', '2023-04-19 08:06:42', 0, 1, '9071148830', 'Sullia', 'Sullia', 'Dakshina Kannada ', '190000', '86.72'),
(75, '90366 47102 ', 'Deepika ', 'Krishnamurti ', 'Government pu college virajpet chickpet', 'ST', 'deepikadeepika90366@gmail.com', 'deepikadeepika', '2023-04-19 08:40:43', 0, 1, '9740207432', 'Jain street ', 'Virajpet ', 'Coorg', '40000', '78%'),
(76, '9731645049', 'Lakshmi', 'Durugapa ', 'Sullia ', 'SC', 'lakshmisullia89@gmail.com', 'lakshmi@1', '2023-04-19 08:41:33', 0, 1, '9110646006', 'Sullia ', 'Sullia ', 'Dhakshina kannada', '45000', '536'),
(77, '7619598265', 'Keerthika M.k', 'Karunakara M.A', 'Shri sharadha p u college for women Sullia ', '3A', 'keerthikamk41@gmail.com', 'keerthi*123*', '2023-04-19 08:44:18', 0, 1, '8277613265', ' old gate main road sullia', 'Sullia ', 'D k', '35000', '77.44%'),
(78, '7892869972', 'Navitha. T', 'Thirumurugan', 'Shree sharada pre university women\'s college for sullia ', 'Other', 'navithanavi083@gmail.com', '123456', '2023-04-19 08:50:58', 0, 1, '7892869972', 'City ', 'Sullia ', 'Dakshina Kannada ', '80000', '69'),
(79, '6363133854', 'Navaneeth M N ', 'Nagaraj P K', 'Government Pre University college Kombettu puttur ', '3A', 'navaneethmn670@gmail.com', '25102004', '2023-04-19 09:03:06', 0, 1, '9740553177', 'Putturu ', 'Putturu ', 'Dakshina Kannada ', '11,000', '89%'),
(80, 'shamnahh637@gmail.com', 'Khadeejath Shamnas ', 'Aboobakkar', 'G P U C Sullia ', 'Other', 'shamnahh637@gmail.com', '345666', '2023-04-19 09:06:00', 0, 1, '8197501131', 'Sullia', 'Sullia ', 'Dakshina Kannada ', '35000', '89.76%'),
(81, '9108772043', 'Vinuta ', 'Neelappa', 'Government P.U.college puttur ', 'ST', 'vinuta350@gmail.com', 'vinu06', '2023-04-19 09:19:37', 0, 1, '9845821343 ', 'Puttur', 'Puttur', 'Mangalore ', '20000', '82'),
(82, '8105641776', 'Harshitha ', 'Seetharama', 'St Joachims pu college kadaba', '2A', 'arpithaarpitha728@gmail.com', '930000', '2023-04-19 09:22:41', 0, 1, '9449714272', 'Town', 'Kadaba ', 'Dk', '40000', '94'),
(83, '7338020087', 'Prajwal k', 'Koragappa naika, Parameshwari ', 'GPUC kombettu puttur ', 'ST', 'kp6500166@gmail.com', '2342005', '2023-04-19 09:26:17', 0, 1, '9591370087', 'City', 'Puttur ', 'Dakshina kannada ', '120000', '76.64'),
(84, '7899251702', 'Saniya Farheen', 'Mohammed Akram &Thabassum Banu', 'GGPU clg', '2B', 'saniyafarheen08@gmail.com', '123456789', '2023-04-19 09:33:43', 0, 1, '9008542526 / 7899251702', 'Kr nagar', 'K r nagar', 'Mysore', '11000', '86%'),
(85, '8762659100', 'Fathimath Azmiya', 'SM ibrahim', 'Shree sharada sullia', 'Select Category', 'vahizaibrahim@gmail.com', 'vahiza', '2023-04-19 09:39:24', 0, 1, '8762659100', 'Paichar ', 'Sullia', 'DK', '50000', '78'),
(87, '8197591767', 'Manjunatha A', 'Jayashree A', 'Gpuc sullia ', 'SC', 'manjunathmanjukerpal141@gmail.com', 'manjunathmanju', '2023-04-19 10:02:06', 0, 1, '8296301685', 'Sullia', 'Sullia', 'DK', '60000', '71.1'),
(88, '9972391110', 'Vinyashree .k', 'Keshava gowda', 'Govt.pu college kombettu puttur', '3A', 'vinyashreegowda@gmail.com', 'Vinya4334', '2023-04-19 10:06:24', 0, 1, '9731940510', 'Puttur', 'Puttur', 'Dakshina kannada', '45,000', '79.04 %'),
(89, '9110812494', 'N Muhammad Hashim ', 'Muhammad haneef ', 'Govrnt pu college kombettu puttur ', '2B', 'hashimnmuhammad6@gmail.com', '@hachii07!', '2023-04-19 10:11:57', 0, 1, '8088803238', 'Mani', 'Bantwal ', 'D.k', '50000', '81'),
(91, '6364050058', 'Shravan.R', 'Ramesh sujatha', 'St Joachim s pu college kadaba', '3B', 'rshravan2005@gmail.com', '636405', '2023-04-19 10:27:58', 0, 1, '9901245038', 'Kadaba', 'Kadaba', 'Dakshina Kannada ', '60000', '69'),
(92, '8660838643', 'Shwetha K N ', 'Narsimhegowda', 'G G Puc K R nagara', '3A', 'knshwetha364@gmail.com', '1234567', '2023-04-19 10:28:30', 0, 1, '8105086687', 'Kallimudanahalli', 'K R nagara ', 'Mysore', '15000', '506'),
(93, '8310421143', 'Mithun.M', 'Gopalan', 'St.philomena pu.college', 'Other', 'mithun55ff@gmail.com', '9945641303m', '2023-04-19 10:51:03', 0, 1, '8618231717', 'Ishwaramangala', 'Puttur', 'Dhakshina Kannada ', '25000', '86.6'),
(94, '8971388747', 'KEERTHAN KS ', 'SUBHASCHANDRA K A', 'GPUC SULLIA ', '2A', 'keerthanks842@gmail.com', 'm-&n@.®©', '2023-04-19 11:00:43', 0, 1, '8105736157', 'Sullia ', 'Sullia ', 'Dakshina kannada ', '30000', '90.33'),
(97, '8281822119', 'Shraddha Rai M', 'Divakara.rai', 'Sullia', '3B', 'divakararai@085.com', '123456', '2023-04-19 11:09:54', 0, 1, '8281822119', 'Delampady ', 'Kasaragod ', 'Kasaragod ', '60000', '88.48'),
(98, '7338509374', 'Ankith.K.R', 'Radhakrishna Gowda ', 'Government PU Collage kombettu puttur', '3A', 'ankithgowda04@gmail.com', 'ankithgowda07', '2023-04-19 11:12:01', 0, 1, '9449486617', 'Parpunja', 'Puttur', 'Dhakshina Kannada', '40000', '77.6'),
(99, '9074892346', 'Lathesh .k ', 'Thukkoji Rao ', 'Gvhss mulleria ', 'Other', 'latheshrao2006@gmail.com', 'lathesh2006', '2023-04-19 11:25:29', 0, 1, '9495687922', 'Mulleria', 'Kasaragod', 'Kasaragod', '42000', '95%'),
(100, '9663401851', 'Madhura Madev Naik', 'Madev Devappa naik', 'TNE pu college,bhatkal', '2A', 'naikmadhura002@gmail.com', 'madhu123', '2023-04-19 12:31:22', 0, 1, '9902723049', 'Sonarakeri, Murdeshwar ', 'Bhatkal', 'Uttara kannada', '11,000', '88'),
(101, '7795193963', 'Shivakumara J M', 'Manjegowda J K', 'BGS indep pu college K R Pete', '3A', 'shivajmgowdrushivajm460460@gmail.com', 'shivajm779519', '2023-04-19 12:36:40', 0, 1, '9071830061', 'Jakkanahalli', 'K R pete', 'Mandya', '26000', '574 91.8percentage'),
(104, '9353692376', 'Tilak Moger', '8050478477', 'The New English PU College Bhatkal', 'GM', 'tilakkmoger@gmail.com', 't9353692376', '2023-04-19 12:52:27', 0, 1, '9901962549', 'Mundalli', 'Bhatkal', 'Uttar kannada', '30000', '94.40'),
(105, '7795877608', 'Shreekanya N', 'Narayana maniyani ', 'Sri Sharada P.U. College For Women Sullia.,D.K.', 'CAT-1', '30shreekanyan@gmail.com', 'narayana', '2023-04-19 12:55:58', 0, 1, '9632897608', 'Town', 'Sullia ', 'Dakshina kannada ', '30000', '87.84%'),
(106, '9980759161', 'Harshita laxman moger', 'Laxman shaniyar moger', 'The new english pu college bhatkal', 'GM', 'harshitamoger1@email.com', 'harshita123', '2023-04-19 13:06:58', 0, 1, '9741878164', 'Bhatkal', 'Bhatkal', 'Utter Kannada ', '11000', '91.36'),
(107, '6360855710', 'Arthika.M', 'Balakrishna.M', 'Shree sharada womens pre university college, sullia', '2A', 'arthikakulal66@gmail.com', 'Manimajalu2005', '2023-04-19 13:14:49', 0, 1, '8861520788', 'Town', 'Sullia', 'Dakshina kannada', '40000', '83.2%'),
(109, '9482835194', 'Thejas P', 'Podiya and Devaki', 'ST.Joachim\'s pu college Kadaba', 'SC', 'podiya65@gmail.com', 'ThejasP94@D', '2023-04-19 13:24:59', 0, 1, '9482835194', 'Kadaba', 'Kadaba', 'Dakshina Kannada', '55000', '77.7'),
(110, '7760354692', 'Ashlesh.H.S.', 'Seetharama H', 'Rotary composite PU college Mithadkaw-Aletty,Sullia ', '3A', 'ashleshhoppale@gmail.com', 'ashu@2005', '2023-04-19 13:40:49', 0, 1, '9482822879', 'Yenekallu ', 'Kadaba ', 'Dakshina Kannada ', '1.25 lakh ', '88.3%'),
(111, '9900848575', 'Rakshitha HS ', 'Prabha y.k and Shivaramegowda HB', 'BGS independent pu college in KR pete ', '3A', 'rakshithagowda325@gmail.com', '8880909893', '2023-04-19 13:42:48', 0, 1, '9900848575', 'Haralahalli ', 'KR pete ', 'Mandya ', '30000', '95%'),
(112, '8310926822', 'Mahammad mouseen', 'Abdul saheab and Roshana', 'St jochims pu collage kadaba', '2B', 'abdulsaheb52@gmail.com', '8310926822', '2023-04-19 13:50:34', 0, 1, '9741483041', 'Kadaba', 'Kadaba', 'Dakshina Kannada', '40000', '63 2%'),
(113, '8147282863', 'Tejaswini naik', 'Mohan naik', 'The new English pu college ', '2A', 'mohannaik338823@gmail.com', 'KuQ3Wguep9fNqKx', '2023-04-19 14:23:17', 0, 1, '8147282863', 'Muttalli ', 'Bhatkal ', 'Uttara kannada ', '40000', '74%'),
(114, '81474 41350 ', 'AKSHAY C P', 'Padmanabha C.H', 'Amarajyothi pre university college sullia', '3A', 'choutajeakshay@gmail.com', 'akshay@18', '2023-04-19 14:30:19', 0, 1, '81474 41350 ', 'Sullia', 'Sullia', 'Dakshina kannada ', '100000', '69.4%'),
(117, '1234567890', 'yash', 'hhhhhhhhhhh', 'vvv', '3B', 'godayashaswini1@gmail.com', 'qwerty', '2023-04-19 14:38:53', 0, 1, 'jjjjjjjjjjjjjjjj', 'sullia', 'sullia', 'dakshina', '50000', '67'),
(123, '7760539613', 'Mahammad nuhman', 'Shareef', 'St joachim pu college kadaba', '2B', 'nucchinusaiba@gmail.com', '7760539613', '2023-04-19 14:55:10', 0, 1, '7760539613', 'Kadaba', 'Kadaba', 'Dakshina kannada', '17000', '68.48'),
(124, '8147441350', 'Akshay c p ', 'padmanabha C H', 'amarajyothi pu college sullia', '3A', 'choutajeakakahay@gmail.com', 'akshay', '2023-04-19 14:57:33', 0, 1, '9448797250', 'sullia', 'sullia', 'dakshina kannada', '100000', '69.4%'),
(125, '9591840323', 'Chethan pd', 'Dasharatha pg', 'MASVS Gurukula pu college mysore', '2A', 'Chandanpd1603@gmail.com', 'chandu@1234', '2023-04-19 15:03:08', 0, 1, '9964641023', 'Kittur', 'Periyapatana', 'Mysore', '12000', '82'),
(126, '9740861540', 'Vidya', 'Lingappa poojary ', 'Govt.pu.college.kombettu.puttur', '2B', 'lingappapoojary14@gmail.com', '123456789', '2023-04-19 15:26:03', 0, 1, '9741488046', 'Vittla', 'Bantwala ', 'Dakshina Kannada ', '44000', '86%'),
(128, '7026224305', 'Priya', 'H. Jathappa gowda ', 'Government P. U college Kombettu puttur', '3A', 'Priyaa1722006@gmail.com', '8296411077', '2023-04-19 16:07:11', 0, 1, '9900194440', 'Vittla', 'Bantwal', 'Dakshina kannada', '45,000', '81.76%'),
(129, '8277066480', 'Anujna M K', 'Manohar K J', 'K V G Amarajyothi Pu colledge , Sullia', '3A', 'Anujnamk@gmail.com', '121971', '2023-04-19 16:11:19', 0, 1, '9481263539,8277083539', 'Sullia', 'Sullia', 'Dakshina Kannada', '45000', '91'),
(130, '76250 67221', 'Kaushik P', 'Ishwara gowda', 'Kvg amarajyothi pre-university college kurunjibhag sullia dakshina kannada', '3A', 'Kaushikgowda547@gmail.com', 'Kaushik', '2023-04-19 17:22:13', 0, 1, '9731582221', 'Kukkujadka ', 'Sullia ', 'Dakshina kannada ', '40000', '87.66'),
(131, '7411303843', 'Jeevitha M', 'Kushalappa M', 'GPUC SULYA', 'ST', 'divakarams415@gmail.com', 'D9741312013', '2023-04-20 03:24:10', 0, 1, '7411303843', 'Sulya', 'Sulya ', 'Dakshina kannada', '30000', '73.92'),
(132, '9916071025', 'Prajna ', 'Manujesh', 'Ajpuc', '3A', 'Prajmanu1@gmail.com', '9916071025', '2023-04-20 04:17:23', 0, 1, '9008300210', 'Sullia', 'Sullia', 'Dk', '100000', '89'),
(133, '9449331621', 'Samruddh R K ', 'Chandravathi ', 'G.P.U.C Sullia ', 'SC', 'samruddh6@gmail.com', 'sam2004', '2023-04-20 04:54:34', 0, 1, '9481273170', 'Sullia ', 'Sullia ', 'Dakshina Kannada ', '70,000', '88'),
(134, '7975269217', 'Bibin Mathew ', 'Bindu ', 'GPUC uppinagadi', '3B', 'mathewbibin623@gmail.com', 'bibin108', '2023-04-20 05:39:45', 0, 1, '9611884938', 'Nellydi', 'Belthangadi', 'DK', '4500', '76'),
(135, '8277375830', 'Sinchana m', '8277118874', 'Govt pu college sullia ', 'CAT-1', 'Sinchanaveena123@gmail.com', 'veenanarayana', '2023-04-20 05:42:51', 0, 1, '9611094462', 'Sullia', 'Sullia', 'Dakshina kannada', '30,000', '79.2'),
(138, '6282013771', 'Nikhil B', 'Jayarama B', 'NMPUC Aranthodu', '3A', 'gowdanikhil098@gmail.com', 'nikhi_gowda_03', '2023-04-20 05:49:55', 0, 1, '6282013771', 'Bandadka', 'Kasaragod', 'Kasaragod', '30000', '97'),
(139, '9740858982', 'Afiya Thabassum S A', 'Abdul Ajeed', 'Nehru memorial pre university college Aranthodu sullia DK', '2B', 'afiyathabassum414@gmail.com', 'Afiya@2005', '2023-04-20 05:59:49', 0, 1, '9448836112', 'Sampaje ', 'Madikeri ', 'Kodagu', '20000', '84.96'),
(140, '7760700193', 'Prathima B', 'Vijaya moolya', 'Government PU college Kombettu', '2A', 'bprathima549@gmail.com', '7760700193', '2023-04-20 06:01:59', 0, 1, '7760700193', 'Vittal', 'Bantwal', 'Dakshina kannada', '30000', '74%'),
(141, '7022796259', 'Pallavi  k', 'Chennappa gowda k', 'Nehru memorial pre university college sullia ', 'Select Category', 'pallavikallaje@gmail.com', 'pallu19', '2023-04-20 06:22:50', 0, 1, '9449488259', 'Sullia ', 'Sullia ', 'Dakshina kannada ', '200000', '87.4'),
(145, '8197566136', 'Manasa. H. V', 'Venkatesh shashirekha', 'Girl\'s pu college kr nagar', '3A', 'Manasag667@gmail.com', '143207', '2023-04-20 06:32:13', 0, 1, '8904149412', 'City', 'Krishnarajanagara', 'Mysore', '14000', '93%'),
(146, '9739751013', 'T Harish ', 'Thambu', 'Anveshana PU College', '2A', 'thambusthambus47@gmail.com', 'Hari#007', '2023-04-20 06:33:25', 0, 1, '9739751013', 'Halyuru ', 'Krishna Raj Nagar ', 'Mysore ', '50000', '74'),
(147, '9731799766', 'Dheeraj P.D', 'Dayananda .p', 'Rotary PU college mithadka sullia', '3A', 'Dayanandapurag@gmail.com', 'DHEERAJ@2005', '2023-04-20 06:35:55', 0, 1, '9482251166', 'Markanja ', 'Sullia ', 'Dakshina kannada ', '80000', '90.88'),
(149, '8317348181', 'Srujan .P', 'Prakash .N', 'GPUC kombettu putter ', '3A', 'sp1054381@gmail.com', 'Sruj9900', '2023-04-20 06:54:04', 0, 1, '9900739181', 'Puttur ', 'Puttur ', 'Dakshina Kannada ', '45000', '87.04%'),
(150, '8197610552', 'Dhanyath P Y', 'Yadava P', 'St Philomena puttur', '3A', 'dhanyathpy@gmail.com', '8197610552', '2023-04-20 07:28:17', 0, 1, '8197610552', 'Kokkada', 'Kadaba', 'Dakshina kannada', '400000', '89.6'),
(151, '9964723520', 'Rachana K D', 'Dinesh K.R & Nalinakshi.K', 'Nehru Memorial Pre-University College Aranthodu', '3A', 'rachanakd2@gmail.com', 'RACHU*', '2023-04-20 07:43:26', 0, 1, '9481961082', 'Kirlaya house, Aranthodu post & village, Sullia Taluk, Dakshina Kannada.', 'Sullia', 'Dakshina Kannada', '1,00,000', '90%'),
(152, '8867109359', 'Likhith MM ', 'sheela', ' K V G Amarajyothi  sullia', '3B', 'likhithlik54@gmail.com', '8867109359', '2023-04-20 07:47:33', 0, 1, '9741276643', 'hallimysoer', 'h.n pura', 'hassan', '30000', '88.8'),
(153, '7259474527', 'Mohammad Aamish', 'sajidha', 'kvg amarajyothi pu college', '2B', 'aamishmohammad9@gmail.com', 'daredevil12', '2023-04-20 07:47:49', 0, 1, '9972745864', 'sullia', 'sullia', 'dakshina kannada', '70000', '85.56'),
(154, '8105634892', 'Muhammad Afthab', 'N A Aboobakkar', 'KVG Amarajyothi PU College', '2B', 'afthabsullia5@gmail.com', '8970484892', '2023-04-20 07:48:02', 0, 1, '9945329892', 'Oldgate', 'Sullia', 'Dakshina Kannada', '20000', '78'),
(155, '+916361380193', 'Mahammad Afnan', 'N.K Abdul Rehman ', 'KVG  Amarajyothi PU College Sullia D.k', '2B', 'afnann088@gmail.com', '6361380193', '2023-04-20 07:48:13', 0, 1, '+917337861338', 'Sullia', 'Madikeri', 'Kodagu', '600000', '86.08'),
(156, '9731854819', 'Adithya R Hebbar', 'Ramkumar Hebbar', 'KVG AMARAJYOTHI COLLEGE ', 'GM', 'adithyahebbar04@gmail.com', '819819', '2023-04-20 07:48:19', 0, 1, '9448529819', 'Sullia', 'Sullia', 'Dakshina Kannada', '50000', '84.4'),
(157, '9019474252', 'MOHAMMAD SHAHID S', 'SHABEER SAHEB', 'KVG  AMARAJYOTHI PRE-UNIVERSITY COLLEGE SULLIA', '2B', 'shahid771244@gmail.com', '9019474252', '2023-04-20 07:48:26', 0, 1, '9448177044', 'sullia', 'sullia', 'DAKSHINA KANNADA', '90000', '91.33'),
(158, '9880078116', 'varun kumar p', 'manjula p', 'aj puc sullia', '2A', 'pvarun886@gmail.com', 'varun17', '2023-04-20 07:49:14', 0, 1, '9353988344', 'sullia', 'sullia', 'sullis', '500000', '91.04'),
(159, '7795405483', 'sameeksha', '9483035483', 'KVG AMARAJYOTHI PU COLLEGE', '2A', 'samipammu@gmail.com', '7795405483', '2023-04-20 07:49:53', 0, 1, '9481379738', 'SULLIA', 'SULLIA', 'DAKSHINA KANNADA', '100000', '96.16'),
(160, '6360821365', 'Thejas kc ', 'Savitha', 'Kvg Amara jhothi Pu college ', '2A', 'Chandrachekara@gmail.com', '6360821365', '2023-04-20 07:50:47', 0, 1, '6360821365', 'Sullia', 'Sullia', 'Dakshina kannada', '35000', '87.36'),
(161, '9591433454', 'ABDULLA RUSHAID', 'ABDUL RAZAK', 'KVG AMARAJYOTHI PU COLLEGE', '2B', 'rushaidrazak@gmail.com', 'RUSHAID18', '2023-04-20 07:51:06', 0, 1, '7259979654', 'ADKAR', 'SULLIA', 'DAKSHINA KANNADA', '30000', '79'),
(162, '8317337489', 'Thanitha B M', 'B A Mandappa', 'KvG Amarajyothi PU College', '3A', 'www.thanitha@gmail.com', '8317337489', '2023-04-20 07:51:30', 0, 1, '8217084457', ' Kargunda Madikeri', 'Madikeri', 'Kodagu', '60000', '95.83'),
(163, '9900780252', 'Manaswi.K', 'Nagesh.K', ' K V G Amarajyothi  sullia', '3A', 'manaswikochi@gmail.com', '9900780252', '2023-04-20 07:51:49', 0, 1, '9742178252', 'sullia', 'dakshina kannada', 'karnataka', '25000', '85'),
(164, '7975629405', 'LIKHIN N V', 'VASUDEVA N N', 'NMPUC ARANTHODU', '3A', 'likhinnidinji@gmail.com', '7975629405', '2023-04-20 07:54:36', 0, 1, '9483765528', 'KALLUGUNDI', 'MADIKERI', 'KODAGU', '50000', '89.5'),
(165, '9481263786', 'fathimath hafeeza ', 'bm musthafa ', 'kvg amarajyothi pu college', '2B', 'bmmusthafa2009@gmail.com', 'hafeeza1234567890', '2023-04-20 07:54:50', 0, 1, '9483074786', 'sullia', 'sullia', 'dakshina kannada', '1 lakh', '68.9'),
(166, '7619469359', 'DHRITHIKA', 'BHASKAR', 'KVG  AMARAJYOTHI PRE-UNIVERSITY COLLEGE SULLIA', '2A', 'gowdayashaswini13@gmail.com', '9980572708', '2023-04-20 07:55:23', 0, 1, '9980572708', 'sullia', 'sullia', 'DAKSHINA KANNADA', '90000', '86'),
(167, '9448664580', 'FATHIMATH RAMEESA', 'Hamza ', 'KVG  Amarajyothi PU College Sullia D.k', '2B', 'hamzakathonn@gmail.com', '9448664580', '2023-04-20 07:55:33', 0, 1, '9148733544', 'Sullia', 'SULLIA', 'Dakshina kannada', '600000', '92'),
(169, '9449744360', 'maithri p k ', 'yashoda', 'aj pu sullia', '3A', 'myxx.lavxx@gmail.com', 'maithri', '2023-04-20 07:56:47', 0, 1, '7348853385', 'sullia', 'sullia', 'dakshina kannada', '300000', '84'),
(170, '9945061018', 'Thrisha.R', 'Rajkumar.V', 'Government prep university college sullia', '2A', 'rajk7800@gmail.com', 'Thrisha456', '2023-04-20 07:56:58', 0, 1, 'Kalaiselvi.R', 'Sullia', 'Sullia', 'Dakshina kannada', '35,000', '78'),
(171, '7204652305', 'kruthi A ', 'thimmappa', 'kvg amarajyothi pre university collage sullia', '3A', 'prajnamanu@gmail.com', '819749', '2023-04-20 07:57:04', 0, 1, '7204652305', 'kaniyoor', 'kadaba', 'dakshina kannada', '11000', '91'),
(172, '8762365923', 'ASHFANA', 'ABDUL RAHIMAN N.K.', 'KVG AMARAJYOTHI PU COLLEGE SULLIA D.K', '2B', 'ashfana009@gmail.com', 'ASHFANA', '2023-04-20 07:57:45', 0, 1, '7337861338', 'PERAJE', 'MADIKERI', 'KODAGU', '60000', '95'),
(173, '7899013591', 'Praviksha R Shetty', 'Ramesh Shetty K', 'K.V.G  Amarajyothi Pre University College', '3B', 'praviksharshetty@gmail.com', 'praviksha09', '2023-04-20 07:57:48', 0, 1, '9447413591', 'Sullia', 'Sullia', 'Dakshina  Kannada', '300000', '96.48'),
(174, '9886507909', 'ADIYA FATHIMA', 'ABDUL SHUKOOR', 'KVG AMARAJYOTHI PU COLLEGE SULLIA', '2B', 'ADIYAFATHIMA@GMAIL.COM', 'ADIYAFATHIMA', '2023-04-20 07:58:06', 0, 1, '9886507909', 'SULLIA', 'SULLIA', 'DAKSHINA KANNADA', '150000', '86%'),
(175, '9743404903', 'ananya gowda ', 'shivarama gowda', 'KvG Amarajyothi PU College', '3A', 'ananyagowda2222@gmail.com', 'ananyagowda2004', '2023-04-20 07:58:11', 0, 1, '9480247766', 'sullia', 'sullia', 'dakshina  kannada', '240000', '85'),
(176, 'jananiuluvaru@gmail.com', 'janani.U.', 'Chandrashekar.U.', ' K V G Amarajyothi  sullia', '3A', 'jananiuluvaru@gmail.com', 'janani', '2023-04-20 07:58:35', 0, 1, '9448152493', 'Aranthodu', 'sullia', 'dakshina kannada', '700000', '96'),
(177, '9632860660', 'Shivamanasa k s', 'Shivanna h', 'GGpuc. K r nagara taluku', 'ST', 'shivagangeks@gmail.com', '952006', '2023-04-20 08:00:04', 0, 1, '9632860660', 'City', 'K r nagara', 'Mysuru', '30000', '76%'),
(178, '8762129266', 'Dayana.B', 'B.Venkatakrishna Achari', 'govt junior college sullia', '2A', 'dayanaacharya01@gmail.com', '87621292', '2023-04-20 08:00:37', 0, 1, '9448656366', 'sullia', 'SULLIA', 'Dakshina kannada', '30000', '84.8'),
(179, '7899253340', 'Vishal Raj Roy ', 'Deepak Roy', 'Amarajyothi pu college sullia DK', 'SC', 'va574239@gmail.com', 'idontknow04', '2023-04-20 08:00:47', 0, 1, '7090975078', 'Sullia', 'Sullia', 'Dakshina kannada', '100000', '86.77'),
(180, '7411297357', 'Thripthi k s', 'Shridhar p d', 'm m d r pu college assaigoli', '3A', 'thripthiks0@gmail.com', '7411297357', '2023-04-20 08:02:00', 0, 1, '9686565157', 'sullia', 'sullia', 'dakshina kannada', '60000', '500'),
(182, '9353390946', 'Darshan K. N. ', 'K. N. Shashikala', 'Atal Bihari  Vajpayee residential science collage Bhagamandala', '3A', 'Kolimadudarshan@gmail.com', 'Varshitha', '2023-04-20 08:04:41', 0, 1, '9483390946', 'Chelavara village,, cheyyandane post 571212', 'Madikeri', 'Kodagu', '30000', '86% 541  marks'),
(183, '9483242823', 'AKSHA', '9483035483', 'nmpu Aranthodu', '3B', 'krishnadnellikumari@gmail.com', '9483242823', '2023-04-20 08:04:51', 0, 1, '9481379738', 'SULLIA', 'SULLIA', 'DAKSHINA KANNADA', '100000', '78'),
(184, '7026187318', 'ajith.B.G', 'Gangadhara.B.V', 'N.M.P.U.C. Aranthodu', '3A', 'gowdaajith24@gmail.com', '7026187318bg', '2023-04-20 08:05:16', 0, 1, '9741835618', 'kallugundi', 'madikeri', 'kodagu', '50000', '87'),
(185, '9449894019', 'shravya K.T', 'Thejakumar.K', 'SDM PU College Ujire', '3A', 'shravyakiribhaga@gmail.com', '9449894019', '2023-04-20 08:05:46', 0, 1, '9945374019', 'Subrahmanya', 'Sullia', 'Dakshina kannada', '100000', '94.56'),
(186, '8317434685', 'YADAV VARMA R', 'RAMESH KUMAR R', 'NMPUC ARANTHODU', '3A', 'yadavvarmar2005@gmail.com', 'yadavr', '2023-04-20 08:05:58', 0, 1, '9483140143', 'KALLUGUNDI', 'SULLIA', 'DAKSHINA KANNADA', '100000', '82.2'),
(187, '7204285339', 'Aishwarya ', 'Nagaraju  Asharani ', 'Bright pu college kr nagar ', '3B', 'Sharathaishu@gmail.com', 'rohithaishu', '2023-04-20 09:05:01', 0, 1, '9663979080', 'lalanahalli village ', 'Kr nagar Taluk ', 'Mysore ', '35000', '82'),
(188, '8277063748', 'Harshitha Harshitha', 'Thimmappa Gowda ', 'St Joachim\'s pu college kadaba ', '3B', 'harshitha91542@gmail.com', 'harshitha chandu', '2023-04-20 09:19:49', 0, 1, '8762119047', 'Shree Durga fancy panja road', 'Kadaba ', 'Dakshina Kannada ', ' 50 thousand ', '70'),
(189, '7259955068', 'Arjun D', 'Dinesha', 'BGS Indp pu college, K R Pet  , Mandya ', '3A', 'savithasavitha8941@gmail.com', 'ARJUN2705', '2023-04-20 10:02:15', 0, 1, '9731359219', 'Bookankere ', 'K R Pet', 'Mandya ', '42000', '89.92 percent '),
(190, '6363988355', 'Manoj Kumar N', 'Natraju. K', 'BGS Independent pu college . Kr pete .mandya', 'ST', 'mn6224584@gmail.com', 'manoj@476', '2023-04-20 10:21:26', 0, 1, '9945929566', 'Kollegal town ', 'Kollegal ', 'Chamarajanagar', '40000', '94.88'),
(191, '8147233738', 'Thrupthi', 'Chandrashekara D.K', 'GPUC Sullia', 'ST', 'thrupthic05@gmail.com', 'Thrupthi', '2023-04-20 10:29:24', 0, 1, '8147233738', 'Sullia', 'Sullia', 'Dakshina kannada', '90000', '79.68%'),
(193, '7624926567', 'Fathimath Isthifa N M ', 'N Mahammad Iqbal ', 'govt.pre.university college sullia', '2B', 'nmisthifa234@gmail.com', 'mujjaisthi', '2023-04-20 10:30:14', 0, 1, '8722288764', 'Jalsoor', 'Sullia', 'Dakshina Kannada', '35000', '92.8%'),
(194, '8970329338', 'Fathima rafa', 'U abubakkar ', 'Govt pu college uppinangady', '2B', 'Rafariza0034@gmail.com', 'dream123321', '2023-04-20 10:35:46', 0, 1, '9964374034', 'Uppinangady', 'Puttur', 'Dakshina kannada', '20000', '84.4'),
(195, '8618781570', 'Jashmitha P. G. ', 'Gopalakrishnan P A ', 'G.P.U.C Sullia ', '3A', 'gopalakrishnanm7000@gmail.com', '998094', '2023-04-20 10:48:50', 0, 1, '9108642091', 'Sullia ', 'Sullia ', 'Dakshina kannadada ', '25000', '82.50'),
(196, '9353667685', 'Muhseena', 'Mahammad Mujeeb DM ', 'Nehru memorial pre university college aranthod', '2B', 'Muhseena777@gmail.com', 'Mujeeb12@Thahira', '2023-04-20 10:49:39', 0, 1, '9164493137', 'sullia', 'sullia', 'dakshina kannada', '35000', '83.68%'),
(197, '7411948296', 'Likhitha c v', 'Prema', 'B G S independent pu college k r pete', '3A', 'likhithagowdalikhithagowda2@gmail.come', 'likhithagowda30', '2023-04-20 11:18:21', 0, 1, '7411948296', 'Chowdenahalli', 'K r pete', 'Mandya', '45000', '89'),
(198, '9741651735', 'Anjan M.B', '9480145417', 'Rotary pre University college mittadka sullia ', '3A', 'anjanmbmurje@gmail.com', 'anjugwd922', '2023-04-20 12:13:23', 0, 1, '9741955417', 'Moorje House ubaradka mithuru post and village', 'Sullia', 'Dakshinana kannada ', '90000', '69.28'),
(199, '9164623495', 'Ashwini H M', 'Saraswathi/Mahesh Gowda ', 'BGS ind pent pu college k R pet ', '2A', 'ashwinihm831@gmail.com', 'Swamiashu', '2023-04-20 12:44:18', 0, 1, '9880160951', 'Hethagonahailll', 'K R pet ', 'Manday', '3000', '98.8'),
(201, '9633681340', 'Vishmitha C.M', 'Madhava C.G', 'N M P U college aranthodu', '3B', 'vvishmithacm@gmail.com', '123456', '2023-04-20 13:44:07', 0, 1, '9633681340', 'Sullia', 'Sullia', 'D.K', '30000', '9A+, 1A'),
(202, '9008030077', 'Anusha U A', 'Arunodaya U K', 'NMPU College Aranthodu,Sullia Taluk DK ', '3A', 'anu618215@gmail.com', '9008030077', '2023-04-20 13:44:52', 0, 1, '9483035420', 'Aranthodu ', 'Sullia ', 'Dakshina Kannada ', '100000', '534'),
(204, '9008738739', 'Jeevan.A.B', 'Boregowda.D', 'B.G.S.Indp.PU.College. K.R.Pet', '3A', 'jeevanappu0204@gmail.com', 'appumani222', '2023-04-20 14:05:16', 0, 1, '9008738739', 'Agraharabachahalli', 'K.R.Pet', 'Mandya', '600000', '94.88'),
(205, '8792127987', 'Yashaswi', 'Thriveni V. S', 'Shri sharadha pu college for women\'s sullia', '3A', 'Yashuyashaswi961@gamil.com', 'yashurajanna', '2023-04-20 14:23:13', 0, 1, '9741105104', 'Sullia', 'Sullia', 'Dakshina kannada', '15000', '75%'),
(206, '9353247880', 'Rana Rinsha P P', 'Ahamed kutty K P', 'Government puc sunticoppa', '2B', 'mubeeena786@gmail.com', 'rana@2005', '2023-04-20 14:29:31', 0, 1, '8748087627', 'Sunticoppa', 'Somwarpet', 'Kodagu', 'Upto10000', '94'),
(207, '9008880052', 'Manya. K. K', 'Manjula Kumar', 'Anugraha PU college Kushalnagar ', 'SC', 'manyamansi7@gmail.com', 'manyakumar', '2023-04-20 14:46:32', 0, 1, '9008880052', 'Kushalnagar ', 'Somwarpet ', 'Kodagu ', '25000', '475 and  76%'),
(208, '6361416487', 'Ummesadiya', '6362936077', 'Anugraha pu collage kushalnagar', '2B', 'sadiyakhan9@gmail.com', 'sadiyAkhan', '2023-04-20 14:59:41', 0, 1, '6362936977', 'Bettadapura', 'Priyapattana', 'mysore', '11000', '75'),
(209, '6361416477', 'Ummesadiya', 'Amirullakhan', 'Anugraha pu college kushalnagar', '2B', 'sadiyakhan9@gmail.com', 'sadiyakhAn', '2023-04-20 15:04:11', 0, 1, '6362936077', 'Bettadapura', 'priyapattana', 'mysore', '11000', '75%'),
(211, '6362936077', 'Ummesadiya', 'Amirullakhan', 'Anugraha pu college kushalnagar', '2B', 'sadiyakhan9@gmail.com', 'sadiyAkhan123456', '2023-04-20 15:11:20', 0, 1, '6362936077', 'Bettadapura', 'priyapattana', 'mysore', '11000', '86%'),
(212, '9900381566', 'Manjushri balindra naik', 'Balindra naik', 'The New English pu college ayodya Nagar bhatkal Uttarkannada', '2A', 'balendragnaikbalendra@gmail.com', '22/07/2005', '2023-04-20 15:13:41', 0, 1, '9535214595', 'Chitrapur', 'Bhatkal', 'Uttarakannada', '48000', '69.9%'),
(213, '9148521624', 'Rakshith kumar S', 'Selvakumar R', 'NMPU Sullia', '3A', 'kumarrakshith664@gmail.com', 'Rakshith@7', '2023-04-20 15:19:17', 0, 1, '9449900797', 'Sullia', 'Sullia', 'Dakshina kannada ', '45000', '82.4%'),
(214, '9945087398', 'Pushanth sb', 'Himaleshwari AA', 'Nehru memorial pre University college aranthodu ', '3A', 'pushanthsb@gmail.com', 'madhupushu', '2023-04-20 15:55:58', 0, 1, '9480601072', 'Sonengeri', 'Sullia', 'Dakshina kannada', '4 lakhs', '96.9'),
(215, '8105132908', 'Meghana k', 'K Giriyappa naik', 'Shree sharada womens pu college sullia ', 'ST', 'meghanakuriya12@gmail.com', 'meghana@123', '2023-04-20 16:55:07', 0, 1, '9945871909', 'Sullia ', 'Sullia ', 'Dakshina Kannada ', '40,000', '532(85.12%)'),
(216, '9980286265', 'Naisha M J', 'Sameena M', 'Govt pu college Suntikoppa', '2B', 'naishamj123@gmail.com', 'Naisha123', '2023-04-20 20:31:49', 0, 1, '9980286265', '7th Hoskote ,', 'Somwarpet', 'Kodagu', '30,000', '94.72'),
(218, '7760636243', 'Akash M K', 'Kiran M M', 'Jnv Kodagu Madikeri ', '2A', 'kirancoorg685@gmail.com', 'akash2005', '2023-04-21 03:35:11', 0, 1, '8762818143', 'Somwarpet', 'Somwarpet', 'Kodagu', '100000', '86'),
(219, '7349692305', 'Rashmi.B.P', 'Padmayya gowda', 'G.P.U.C Sullia', '3A', 'v69354434@gmail.com', '112005', '2023-04-21 03:41:48', 0, 1, '9483015717', 'Jalsoor', 'Kasaragod ', 'Kasaragod ', '9600', '89.92%'),
(220, '9738243482', 'Myna s', 'Shashikumar', 'Mooraarjidesaai residential pu govt college basavanahlli somavaarapete', 'SC', 'savithaksmysore@gmail.com', 'myna@123', '2023-04-21 03:54:06', 0, 1, '8892932488', 'KANDAGALA (V),(P). RAVANDOOR(H). PERIYAPATNA(T)', 'Periyapattana', 'Mysore ', '10000', '84'),
(221, '9901722964', 'Sowjanya j', 'Jalendra sukanya', 'Anweshana pu college, biligere', '3A', 'sowjanyajsowjanyaj58@gmail.com', 'Bg7kFc4jM9jTnRf', '2023-04-21 04:38:39', 0, 1, '9901722964', 'Kothegala', 'Hunsur', 'Mysore', '10000', '557'),
(222, '6362579318', 'Anusha GB', 'Vasanti ', 'Shri sharada Pree-univesity college for women sullia', '3A', 'anushagowdaperaje@gmail.com', '6362579318', '2023-04-21 04:49:16', 0, 1, '9483456696', 'Peraje', 'Madikeri', 'Kodagu', '30,000', '545  87.2%'),
(223, '8073965890', 'Akshith kumar h n', '6361793198', 'Anweshana pu college', '3A', 'aakshithkumarhn@gmail.com', 'akshith@', '2023-04-21 06:34:31', 0, 1, '8073965890', 'Hunsur', 'Hunsur', 'Mysore', '6000', '90.5'),
(224, '9742804647', 'Anupama M', 'Manju k S', 'MDR science pu college', '3A', 'anupamam646@gmail.com', '555555', '2023-04-21 06:51:12', 0, 1, '9742804647', 'Kittur', 'Piriyapattana', 'Mysore', '12000', '90.6'),
(225, '8792042122', 'Banupriya. D', 'Devaraju', 'Kadamba pu college k r pet', '3A', 'banudevaraju86@gmail.com', 'Banupriya@20', '2023-04-21 07:32:25', 0, 1, '9448643622', 'Krishnarajapete', 'Krishnarajapete', 'Mandya', '45000', '94.5'),
(226, '8971318290', 'Harshith NA', 'Aravindads       rashmi', 'Moraji desai residential college basavanahalli ', '2A', 'harshithmm14@gmail.com', 'harshith143mm', '2023-04-21 07:42:43', 0, 1, '8971318290', 'Madapura karekad ', 'Somvarpet ', 'Kodagu ', '30000', '79.4'),
(227, '7619311825', 'Sagar veeranagouda patil', 'Veeranagouda patil', 'Megharaj Patil', 'ST', 'megharajp017@gmail.com', '989876', '2023-04-21 08:10:20', 0, 1, '9741943818', 'Teredahalli', 'Haveri', 'Haveri', '12000', '85.23'),
(228, '6360067381', 'Ahalya', 'Nandish. H. M', 'Morarji desai residential science puc, basavanhalli', '3A', 'Tulsiahalya@gmail.com', '18376006', '2023-04-21 08:11:41', 0, 1, '6360067381', 'Doddatholuru village', 'Somwarpet', 'Kodagu', '25000', '87.1%'),
(229, '8105038279', 'Likhith kumarA', 'P Chandravathi', 'Govt. PU College, Kaniyur, Kaniyoor, Kaniyoor (Post), Puttur (Taluk), DK', '2A', 'likhithkumara803@gmail.com', 'Likhi@9483', '2023-04-21 08:43:46', 0, 1, '9483211517', 'Yedamangala', 'Kadaba', 'Dakshina kannada', '25000', '85.6℅'),
(230, '8904298284', 'Lakshmi  ramesh kalaguni', 'Sunanda', 'Mdrs basvanahalli kodagu', '3B', 'Lakshmirk188@gmail.com', 'lakshmirk10', '2023-04-21 09:13:22', 0, 1, '9740101875', 'Athani', 'Athani', 'Belagavi', '20000', '97'),
(231, '9591890462', 'Likitha G P', 'Prashanth G T', 'Morarji desai residential science pu college basavanahalli', '3A', 'Prashantgt23@gmail.com', '2005LgpA@', '2023-04-21 09:38:47', 0, 1, '9591890462', 'Palahalli village', 'Sakleshpur', 'Hassan', '46,000', '94.24%[589]'),
(233, '9606771153', 'Shreenidhi kn', 'Niranjan ks', 'BGS independent pu college  kr pet', '3A', 'dhanushgowdad676@gmail.com', '115377', '2023-04-21 09:43:45', 0, 1, '9964583737', 'village ', 'kr nagar ', 'mysore ', '11000', '587'),
(234, '6360252594', 'Hemanth.M', 'Sujatha.B.V', 'Morrarji Desai Pu collage, Basavanahalli', '3A', 'hemanthshivan46rc@gmail.com', 'Adhiyogi', '2023-04-21 10:20:40', 0, 1, '8971342770', 'Aigoor village', 'Somwarpet', 'Kodagu', '10000Rs', '75%'),
(235, '9740232478', 'Madhu R', 'Sunitha anf Harshitha ', 'Morarji desai residential college  Basavanahalli  Kushalnagar ', '3A', 'preethupreethu6582@gmail.com', 'Madhupreethu', '2023-04-21 10:59:50', 0, 1, '9740232478', 'Konanur ', 'Arkalagudu', 'Hassan ', '11000', '93'),
(237, '9008258424', 'Jhansirani y c', 'Chandrashekhar y m', 'M D R  Science PU college Basavanahalli', '3B', 'jhansiraniyc@gmail.com', 'jhansi@13', '2023-04-21 11:22:45', 0, 1, '9008258424', 'Yagachaguppe', 'Krishnarajapet', 'Mandya', '45000', '96.48'),
(243, '9482042628', 'Thejashree p', 'Mahesh gowda,Indira', 'Govt PU college kombettu puttur ', '3A', 'thejugowda286@gmail.com', '05082005', '2023-04-21 12:17:44', 0, 1, '9164935456', 'Vitla', 'Bantwala', 'Dakshina kannada ', '30000', '78.4%'),
(244, '6363717914', 'KAVIN SR', 'Raghunath jattipalla', 'Ambika padavipoorva vidyalaya', 'ST', 'kavinsr483@gmail.com', 'KAVIN BGMI', '2023-04-21 12:52:06', 0, 1, '9449366438', 'Sullia', 'Sullia', 'Dakshina Kannada ', '4lakhs', '68%'),
(245, '8971022148', 'DARSHAN .T . N', '8971022148', 'Kadambha p u collage k r pet', '2A', 'kingboykalki@gmail.com', '535353', '2023-04-21 13:25:29', 0, 1, '8971022148', 'Town', 'K r pet', 'Mandya', '20000', '95'),
(249, '8660983405', 'Mourya K Dinesh ', 'Dinesh KN ', 'Indraprastha pu college ', '3A', 'mouryakdinesh23@gmail.com', 'Mkd@2335', '2023-04-21 13:36:36', 0, 1, '7349342704', 'Nelliyadi ', 'Kadaba ', 'Dakshina Kannada ', '51,000', '86.4'),
(250, '83107 96459', 'Kavana .S', 'Sudhakara .D', 'Nehru memorial College sullia ', 'CAT-1', 'kirands8694@gmail.com', '07021998', '2023-04-21 13:54:33', 0, 1, '72599 06328', 'Sullia ', 'Sullia ', 'Mangalore ', '90000', '73'),
(252, '9448795348', 'Thripthi P.V', 'Vijayakumar P.R', 'Nehru Memorial Pre - University College Aranthodu ', '3A', 'vijayakumarpr67@gmail.com', '12345678', '2023-04-21 14:02:11', 0, 1, '9448795348', 'Sullia', 'Sullia', 'Dakshina Kannada', '35,000', '78.86%'),
(253, '9110825080', 'Darshini', 'Lakshmana', 'Morarji Desai residential science pu college, Basavanahalli.', '3A', 'darshinihl24@gmail.com', 'darshini24', '2023-04-21 14:02:19', 0, 1, '9482035831', 'Somvarpet', 'Somverpet', 'Kodagu', '50,000', '82'),
(254, '9663014471', 'Yashas ', 'Jayanthi rai', 'Atal bihari vajpayee science college bhagamandal ', '3B', 'manicphxyco@gmail.com', 'oneplus46', '2023-04-21 14:24:54', 0, 1, '9880860263', 'Murnad', 'Madikeri', 'Kodagu', '35000', '75'),
(255, '7204474356', 'Gagana KL', 'Lokesh KS', 'Shri sharada women\'s PU college sullia', '3A', 'gaganalokesh56@gmail.com', 'gaganalokesh', '2023-04-21 14:36:05', 0, 1, '9480666109', 'Kushalnagar ', 'Kushalnagar ', 'Kodagu', '50000', '81.12'),
(256, '7510761336', 'Mokshitha k', 'Ananda poojary ', 'Govt pu college kombetu puttur', '2A', 'mokshithabangera21@gamil.com', '987654321', '2023-04-21 15:11:17', 0, 1, '9945765894', 'Vittla', 'Bantwal ', 'Dakshina kannada', '20000', '67.52%'),
(257, '7624844133', 'Fathimath Anseera', 'Abbas k ', 'St. Joachim P U college kadaba', 'Select Category', 'ansirak73@gmail.com', '321191', '2023-04-21 15:43:03', 0, 1, '9900474042', 'Kadaba', 'Kadaba', 'Dakshina Kannada', '11000', '60'),
(258, '8762921904', 'Prajna A', 'Sundara.Rai', 'St.philomena pre University college philonagar DARBE puttur', '3B', 'raiprajnarai@gmail.com', 'prajnarai', '2023-04-22 04:32:25', 0, 1, '8762921904', 'Anile house Badagannur village puttur', 'Puttur', 'Dakshina kannada ', '25,000', '92'),
(259, '6360107387', 'Rithika', 'Harishbhandary', 'Philomena Pre University College Philonagar Darbe Puttur', '2A', 'rithikabhandary217@gmail.com', '@preethiirali200', '2023-04-22 04:32:29', 0, 1, '9480156368', 'Puttur ', 'Puttur ', 'DK', '45000', '87.61'),
(261, '9972280665', 'Harsha.g', 'Ganesha', 'Bright pu college,K.R.Nagar', '3B', 'hg3807384@gmail.com', 'harsha@1234', '2023-04-22 05:34:52', 0, 1, '9845179534', 'Lalandevanahalli', 'K.R.Nagar', 'Mysore ', '40000', '80'),
(263, '7349321132', 'Divya s n', 'nanjunda nayaka ', 'bright pu college k r nagar ', 'Select Category', 'divyanayak3183@gmail.com', '734969', '2023-04-22 06:01:52', 0, 1, '9611596645', 'sathigrama', 'krishnarajanagara', 'mysore', '4000', '83.84%'),
(264, '9964813490', 'Dakshayini K N', 'Nanjundaradhya K P', 'Bright pu college KR nagar', '3B', 'nanjunda01aradhya@gmail.com', '246810', '2023-04-22 06:02:36', 0, 1, '9606565104', 'Kellur', 'Piriyapatna', 'Mysore', '40000', '95'),
(266, '7760369529', 'Lismitha C.P', 'Pundareeka', 'Sri sharadha pu college for womens sullia', '3A', 'lishmithacp@gmail.com', 'lissu123', '2023-04-22 07:53:45', 0, 1, '9611647529', 'Kukkujadka', 'Sullia', 'Dakshina kannada', '140000', '70%'),
(267, '7019530245', 'Laxman M', 'Basappa', 'A B V R sci PU college Bhagamandala  madikeri taluk kodagu district ', 'ST', 'laxmanmalladad38@gmail.com', '974085', '2023-04-22 08:00:58', 0, 1, '9740853447', 'Teredahalli', 'Haveri', 'Haveri', '12000', '95'),
(268, '7996615621', 'Rakshith ', 'Harinakshi', 'St Joachims P U college kadaba ', '3A', 'pucchugowda@gmail.com', '9611825226', '2023-04-22 11:52:46', 0, 1, '9164829446', 'Kadaba ', 'Kadaba ', 'Dakshina Kannada ', '11000', '77'),
(269, '9945114401', 'Varsha N P', 'Prabhavathi ', 'Aranthodu ', '3A', 'varshanidinji04@gmail.com', '24122004', '2023-04-22 12:07:38', 0, 1, '9945708546', 'Sampaje ', 'Madikeri ', 'Kodagu ', '100000', '98');
INSERT INTO `users` (`id`, `username`, `name`, `fathers_name`, `school`, `stream`, `email`, `password`, `register_time`, `confirmed`, `u_type`, `fathcontact`, `address`, `taluk`, `district`, `income`, `percent`) VALUES
(270, '8710070303', 'Pooja k', 'Padma ', 'Bright pu college ', '3A', 'pK418395@gmail.com', '8710070303', '2023-04-22 14:53:24', 0, 1, 'Karigowda ', 'K.R.Nagara', 'K.R.Nagara', 'Mysore ', '40000', '94%'),
(271, '8073605046', 'LIKITHA KV', 'NAGARATHNA R', 'KR NAGAR', '3B', 'navyanavya27520@gmail.com', 'Liki444', '2023-04-22 15:34:12', 0, 1, '8073605046', 'Mysore', 'K R NAGARA', 'MYSURU', '1,00,000', '96.7%'),
(272, '7349040613', 'Sinchana M', 'Honnappa', 'Shree Sharada pre University college for women\'s sullia', '3A', 'muliyaprathima@gmail.com', '7349040613', '2023-04-23 01:35:50', 0, 1, '8762120756', 'Town', 'Kadaba', 'Dhakshina kannada', '30000', '533      85.28percent'),
(274, '8073428809', 'Rakshitha K N', 'Neelappa Vasanthi ', 'Neruda Memorial Pre University College Aranthodu post and village,sullia DK', '2A', 'rakshitha8809@gmail.com', 'kvgschrlshp80', '2023-04-23 04:17:22', 0, 1, '8197745459', 'Sampaje ', 'Madikeri ', 'Kodagu', '35000', '77.12 %'),
(275, '7892559630', 'Charithra N C', 'Chandrashekhar,chandrakala', 'Morarji Desai residential pu college basavanhalli', '3A', 'Charitha9338@gmail.com', 'charitha', '2023-04-23 04:59:14', 0, 1, '9483392281', 'Bhagamandala ', 'Madikeri ', 'Kodagu ', '32000', '73'),
(276, '96867 44069 ', 'Shifana sherin As', 'Fousia km ', 'Suntikoppa', '2B', 'Shafeeqsa78@gmail.com', 'shifana', '2023-04-23 07:00:54', 0, 1, '96867 44069 ', 'Suntikoppa ', 'Somvarpete ', 'Kodagu', '11000', '96.85'),
(277, '9611438423', 'Sinchana k', 'Kiran and sujatha', 'K R Nagar', '3A', 'kkiru8355@gmail.com', 'kirusuja006', '2023-04-23 09:00:02', 0, 1, '9902240613', 'Mysore ,Mirle, natanahalli', 'K R Nagar', 'Mysore', '30000', '88.16 % 551marks'),
(278, '8277167617', 'Chinthan B R', 'RadhaKrishna B', 'Nehru memorial pre University college Arantodu', '2A', 'Chinthubr4@gmail.com', '712006', '2023-04-23 10:49:49', 0, 1, '9448958157', 'Sullia', 'Sullia ', 'Dakshina Kannada ', '30000', '94.4'),
(279, '8217362394', 'Prathiksha.K.P', 'Bipin ', 'SSPU Subramanya', '3A', 'bipinkp007@gmail.com', '@#1234p', '2023-04-23 12:00:44', 0, 1, '8217362394', 'Kotigowdana mane', 'Kadaba', 'dakshina kannada', '30000', '84.64%'),
(284, '9513412934', 'Shrilaxmi. S. Bhat', 'Subraya. G. Bhat', 'The new English pu college, bhakal', 'GM', 'shri.subrayagbhat@gmail.com', '9513412934', '2023-04-24 03:46:26', 0, 1, '9481465086', 'Shirali Near Mastimane', 'Bhatkal ', 'Uttara kannada', '11000', '83.4'),
(286, '7892087467', 'Adithya. C. S', 'Shridhara. R. C', 'Amarajyothi P U College Sullia ', '3A', 'adithyachilpar@gmail.com', '789208', '2023-04-24 04:56:34', 0, 1, '6362891742', 'Doddathota ', 'Sullia', 'Dakshina kannada', '100000', '90.1%'),
(287, '8105745468', 'Vijeth P M', 'Sarojini', 'G p u c sullia', '3A', 'Vijethpm89@gmail.com', '8105745468', '2023-04-24 05:41:30', 0, 1, '8867025936', 'Sullia', 'Sullia', 'D k', '30000', '88.8'),
(288, '6361030187', 'Likhin M N', 'Narayana B', 'G P U C Sullia', 'CAT-1', 'likhinmnlikki@gmail.com', 'Likhinlikki@1', '2023-04-24 06:22:55', 0, 1, '9901147825', 'Mandekolu', 'Sullia', 'Mangalore', '50000', '91.36%'),
(289, '7907096550', 'Vijesh N S ', 'Revathi', 'GVHSS Mulleria ', 'ST', 'revathichallathumgal@gmail.com', 'VIJESH@2005', '2023-04-24 08:34:45', 0, 1, '9745015927', 'Mulleria adhur', 'Adoor', 'Kasaragod ', '50000', '100•/•'),
(290, '9482652977', 'Shreelal E', 'Ramesh Babu C , Vani K', 'St Philomena ', 'GM', 'shreelal0405@gmail.com', 'lalulaya', '2023-04-24 09:00:52', 0, 1, '9535436517', 'Sullia', 'Sullia', 'Dakshina  kannada ', '50000', '92.3'),
(292, '7411289340', 'Shravan Shedikaje', 'Narayana Shedikaje', 'Rotary Pu college sullia', '3A', 'shedikajedeep@gmail.com', '24jun2005', '2023-04-24 10:10:28', 0, 1, '9482254963', 'Sullia', 'Sullia', 'Dakshina kannada', '340000', '93'),
(293, '8660794436', 'monika gowda', 'Geetha arun', 'Govt pu college sullia .DK', '3A', 'gowdamonika401@gmail.com', '814monichethu009', '2023-04-24 10:12:26', 0, 1, '8660794436', 'Nagapattana', 'Sullia', 'Dhakshina kannada', '1,00,000', '76%[480'),
(294, '9019224805', 'Bindushree', 'Purushothama K', 'Sri Sharada Womens Pre University College Sullia', '3A', 'purushothamagwda@gmail.com', '9448078325', '2023-04-24 11:46:16', 0, 1, '9448078325', 'Town ', 'Sullia ', 'Dakshina kannada ', '30000', '71.2'),
(295, '7899567681', 'Thaswi K J', 'Janappa M', 'St Philomena PU college Darbe Puttur', '2A', 'Thaswikulal@gmail.com', 'Adarsha', '2023-04-24 12:35:49', 0, 1, 'Janappam562@gmail.com', 'Paraniru house ,Peruvaje,manikkara post  ', 'Sullia', 'Dakshina kannada', '32000', '96.16%'),
(296, '6364132536', 'Shreyaa bs ', 'Sathish rs ', 'Bgs kr pet', '3A', 'shreyasgowdabsshreyas@gmail.com', 'shreyas22', '2023-04-24 12:56:29', 0, 1, '6364132536', 'Kr  pet', 'Kr pet ', 'Mandya', 'Bgs ', '98.%'),
(297, '9972125011', 'prajwal G ', 'girisha k b ', 'bgs independent pu collage ', '3A', 'girishkbgirishkb931@gmail.com', 'girishkb', '2023-04-24 13:09:03', 0, 1, '9972125011', 'bedadahalli', 'kr pet', 'mandya', '50000', '85'),
(300, '8105638747', 'KEERTHAN KN', 'Nanda K H', 'NMPUC ARANTHODU ', '3A', 'Keerthankn666@gmail.com', '09200525', '2023-04-24 13:23:30', 0, 1, '6364659283', 'Kuthimunda house Peraje post &village', 'Madikeri', 'Kodagu', '25000', '92.8'),
(301, '8971738092', 'Praksha rai', 'Vishalakshi ', 'Government pu college kumbra ', '3B', 'praksharai2005@gmail.com', 'kurikkara', '2023-04-24 14:24:05', 0, 1, '9740738092', 'Kumbra', 'Puttur ', 'Dakshina Kannada ', '35000', '87.84%'),
(302, '9066606581', 'Brijesh Kumar. B. T', '9066606581', 'Atal Bihari Vajapyee Residential Science P U College, Bhagamandala, Madikeri', '2A', 'brijeshbhagath.2006@gmail.com', 'brijesh.2006', '2023-04-24 18:05:59', 0, 1, '9066606581', 'Chitradurga ', 'Chitradurga ', 'Chitradurga ', '20000', '92%'),
(303, '9481765173', 'Sinchana P K', 'P R Krishnaprasad and Anitha K P', 'St Philomena PU College Puttur', 'Other', 'pksinchana@gmail.com', 'sinchu123', '2023-04-25 01:10:21', 0, 1, '8217712894', 'Sheni', 'Sullia', 'Dakshina Kannada', '2lakh per year', '93'),
(304, '9483203967', 'Fathimath Nujaima', 'Yusuf B', 'kvg Amarajyoti pu college', '2B', 'usufballakaje@gmail.com', 'numminujji07', '2023-04-25 04:50:47', 0, 1, '6366623967', 'Sullia', 'Sullia', 'Dakshina kannada ', '25000', '90.8%'),
(305, '8073510043', 'Thanush k t', 'Theertharam k.g', 'Rotary pu college sullia', '2A', 'Kalavathikkalavathik307@gmail.com', '574239', '2023-04-25 05:26:46', 0, 1, '9449451389', 'Sullia', 'Sullia', 'Dakshina kannada', '200000', '80%'),
(308, '7204449341', 'Jashmitha B ', 'Janardhana', 'GPU college sullia ', 'ST', 'jashmithab8@gmail.com', '280520', '2023-04-25 06:38:37', 0, 1, '9743278341', 'Sullia ', 'Sullia ', 'Dakshina kannada ', '50,000', '86'),
(309, '7760327063', 'Raksha M. B ', 'Bhojappa M.', 'G. P. U. C. Sullia ', '3A', 'rakshithrakshith461@gmail.com', '776032', '2023-04-25 06:44:03', 0, 1, '9481141137', 'Sullia', 'Sullia', 'Dakshina kannda', '50,000', '81.76'),
(310, '72595 01724 ', 'Ranjitha Cv', 'Venugopala c k', 'St.michael\'s pu college madikeri ', '3A', 'ranjithacv88@gmail.com', '5102005me', '2023-04-25 09:34:21', 0, 1, '9483835772', 'Coorg district,madikeri thalook, bhagamandala post,thavoor village', 'Madikeri ', 'Coorg', '35000', '87.04'),
(311, '8139092609', 'Preethika N', 'Narayana K', 'St philomena PU college,puttur', '2A', 'Preethikanm123@gmail.com', 'Pritika@2924', '2023-04-25 09:44:29', 0, 1, '9496418551', 'Delampady', 'Kasaragod ', 'Kasaragod ', '28000', '91.04'),
(312, '8660844909', 'Kishan SR ', 'Ramanna Naik, Sumithra B', 'NMC,Sullia', 'ST', 'kishansr29@gmail.com', 'ietVpbDKS7H6QE2', '2023-04-25 09:56:44', 0, 1, '9482035680', 'Sullia ', 'Sullia', 'Dakshina Kannada', '100000', '86.88'),
(313, '9778020060', 'A Ramya Rao ', 'A.Ranganath Rao', 'SAPHSS agalpadi ', 'Other', 'ramyarao462@gmail.com', 'hotwater17', '2023-04-25 09:57:34', 0, 1, '9495950276', 'Mulleria ', 'Kumble ', 'Kasaragod ', '50000', '98'),
(314, '8277103537', ' Vaishnav K M', 'Father-Malinga M, Mother-Sheelavathi', 'GPUC Sullia', 'CAT-1', 'vaishnavkmkanakkoor15@gmail.com', 'vkm2005', '2023-04-25 10:57:52', 0, 1, '9480253565', 'Sullia', 'Sullia', 'Dakshina Kannada', '40000', '90.08'),
(315, '8971764568', 'Kusuma . R', 'Raghu', 'Nisarga Independent PU college , kollegal', '3A', 'raghukgl1976@gmail.com', 'kushi29805', '2023-04-25 11:16:31', 0, 1, '8971764568', 'arepalya', 'kollegal', 'chamrajnagar', '11,000', '91 percent'),
(316, '6362972613', 'Ramya HC', 'Eshwari', 'ABVRS college Bhagamandala', 'SC', 'hcramya@gmail.com', '8197064945', '2023-04-25 11:24:43', 0, 1, '8197064945', 'Town', 'Virajpet', 'Kodagu', '1000', '344'),
(320, '6364519803', 'prajwal R P', 'putte gowda', 'BGS INDIPENDENT PU COLLAGE K R PET', '3A', 'marigowda1213@gmail.com', '7829237127', '2023-04-25 12:22:23', 0, 1, '9844494265', 'RAJAGHATTA', 'K R PET', 'MANDYA', '60000', '98.75'),
(321, '7204413045', 'Ruchitha M', 'Manjunath P', 'Nisarga independent public college kollegal', '2A', 'pmanjunath543@gmail.com', 'RUCHITHATHEGREAT', '2023-04-25 13:05:29', 0, 1, '9141636101', 'Kollegal', 'Kollegal', 'Chamarajanagara', '12000', '92.16'),
(322, '+917483704220', 'VISHAL.S', 'Chandrashekara.S', 'Government pre University college sullia ', '2A', 'vishalshekar98@gmail.com', 'vishal.2006', '2023-04-25 13:53:57', 0, 1, '+917022732601', 'Sullia', 'Sullia ', 'Dakshina kannada', '35000', '95.84'),
(324, '8970487242', 'Joel M Johnson ', 'Johnson A M', 'St.jochims pu college kadaba', '3B', 'joelmj1312@gmail.com', '789933', '2023-04-25 14:45:50', 0, 1, '9901714801', 'Kadaba ', 'Kadaba', 'Dakshina Kannada ', '39000', '72.5%'),
(325, '8660844002', 'Shivamurthy s', 'Ningaraju B', 'Atal bihari vajapayee residential collage korangala bagamandala', 'SC', 'Shivashiva67658@email.com', '866084', '2023-04-25 15:33:41', 0, 1, '9742769314', 'Town', 'Virajpet thaluk', 'Kodafu', '40000', ' 518 . 82.88,,%'),
(326, '9008394997', 'Deeksha. A. S', 'Sathish. A. K', 'Nehru Memorial Pre- University college Aranthodu ', '2A', 'deekshaas18@gmail.com', 'deechu', '2023-04-26 03:50:52', 0, 1, '9008394997', 'Aranthodu', 'Sullia', 'Dakshina Kannada', '25,000', '75.52'),
(327, '9901422739', 'Beenashree ', 'Shardha', 'Bhagamandala', '3A', 'Shardhashree1234@gmail.com', '123456', '2023-04-26 06:07:16', 0, 1, '9901422739', 'J. P nagar', 'Bangalore south', 'Bangalore ', '40,000', '81'),
(329, '9113207539', 'Choshitha AS ', '9686159506', 'Vivekananda pu college puttur ', '3A', 'choshithachoshithaas@gmail.com', 'choshitha ', '2023-04-26 06:18:33', 0, 1, '9686159506', 'Siddapura ', 'Somvarpete ', 'Kodagu ', '80000', '79%'),
(330, '7259037286', 'Ayishath Afreena .k', 'Abdul Rahman ', 'kvg Amara jhothy pu collage sullia', '2B', 'mohammadajmal83361@gmail.com', '725903', '2023-04-26 06:34:47', 0, 1, '9980951986', 'sullia', 'sullia ', 'dakshina kannada ', '65000', '78.56'),
(331, '9480119879', 'Koushik Rai', 'Sumithra Rai', 'Rotary pu college,Mithadka Aletty Sullia', '3B', 'koushikraisullia@gmail.com', 'koushikraikvgscholorship123', '2023-04-26 07:35:23', 0, 1, '9845067179', 'Sullia', 'Sullia', 'Dakshina Kannada ', '35,000', '97.92'),
(332, '7022605892', 'Fathimath Ansheera', 'Aboobakkar N A', 'Rotary PU college, Mithadka , Aletty, Sullia', '2B', 'fatimahansweera@gmail.com', 'zehlik', '2023-04-26 08:18:18', 0, 1, '9945329892', 'Old gate', 'Sullia', 'Dakshina Kannada ', '150000', '90.08'),
(333, '9380043824', 'Ashik H', 'Pavaneshwara H ', 'S S P U C Subrahmanya ', '3A', 'ashikgowdahosolike147@gmail.com', 'ashikashik', '2023-04-26 08:21:50', 0, 1, '9632591267', 'Mavinakatte', 'Sullia', 'Dakshina kannada', '50000', '91.84'),
(335, '9480158676', 'SHARANYA K N', 'NITHYANANDA  DIVYA ', 'N. M. P. U. ARANTHODU ', '3A', 'nityanandagowda985@gmail.com', '948015', '2023-04-26 09:11:50', 0, 1, '9482379676', 'SULLIA ', 'SULLIA ', 'DAKSHINA KANNADA ', '60,000.', '85.44%'),
(336, '9380721205', 'Amrutha.K.', 'K. Laxminarayana Nayak ', 'G P U C SULLIA ', '2A', 'amrutha122005@gmail.com', 'Amrutha.k18', '2023-04-26 13:51:07', 0, 1, '9483925180', 'Kodiyalabailu house sullia kasaba village sullia Taluk D.K.', 'Sullia ', 'Dakshina kannada ', '150000', '88.48'),
(338, '6364824218', 'swasthik s m', 'madhava gowda', 'ajpuc college sullia', '3A', 'smswasthik06@gmail.com', 'swasthik', '2023-04-26 14:13:34', 0, 1, '9449662218', 'chokkadi', 'sullia', 'dakshina kAnnada', '25000', '75.2'),
(340, '7259209817', 'Anvitha A N ', 'Nagendra S ', 'NMPU College Aranthodu ', '2A', 'chanchalakshichanchalakshi71@gmail.com', 'Anvitha', '2023-04-26 15:22:36', 0, 1, '7259209817', 'Aranthodu ', 'Sullia ', 'Dakshina Kannada ', '40000', '78.8'),
(341, '7034587502', 'Supreetha.MJ', 'Jayananda .M', 'GVHSS MULLERIA', 'GM', 'supreethamj@gmail.com', '17supree3541', '2023-04-26 16:10:48', 0, 1, '9495894186', 'Nettanige', 'Kasaragod', 'Kasaragod', '60000', '90%'),
(342, '7892520527', 'Aditi Kalleri Vasudeva', 'Vasudeva K', 'SSPU college Subrahmanya', '3A', 'aditi2522006@gmail.com', 'VSAH25', '2023-04-27 01:12:35', 0, 1, '9008720988', 'Balpa', 'Kadaba', 'Dakshina kannada', '50000', '84.8%'),
(343, '8861698219', 'Mokshith M D', 'Dinesh Kumar M B', 'St Michael\'s Composite PU College Madikeri ', '3A', 'mokshithmadhu0@gmail.com', '26030811', '2023-04-27 02:50:25', 0, 1, '9902976863', 'Chettali ', 'Somvarpete', 'Kodagu', '15000', '74.83'),
(344, '9731582530', 'Fathima Shiza', 'Mahammad Najib', 'KVG Amarajyoti pre university college', '2B', 'nkmnajib@gmail.com', 'Shazil123', '2023-04-27 04:32:58', 0, 1, '9731608595', 'Adkar', 'Sullia', 'Dakshina Kannada ', '50000', '78'),
(345, '8921800558', 'Sharanya ', 'Madhava Rao ', 'GVHSS Mulleria ', 'Other', 'sharanyathekkekra0558@gimal.com', 'sharanya@123', '2023-04-27 06:34:26', 0, 1, '9037768250', 'Mulleria ', 'Kasaragod ', 'Kasaragod ', '48000', '95%above'),
(346, '7204652061', 'Preksha M K', '7204652061', 'St Joseph\'s composite puri college madikeri,kodagu. ', '3A', 'prekshamoovana@gmail.com', 'preksha2006', '2023-04-27 10:39:45', 0, 1, '9611764515', 'Madikeri', 'Madikeri', 'Kodagu', '50000', '86.88'),
(349, '7483420580', 'Apoorva B.S', 'Latha B.S', 'Atal bihari vajpayee residential college bagamandala', '3B', 'nithunkumarnk5382425@gmail.com', '944803', '2023-04-27 14:02:16', 0, 1, '9448035018', 'Somwarpet', 'Somwarpet ', 'Kodagu ', '100000', '81'),
(350, '9481175433', 'Shanmukha ', 'Devadas', 'St Philomena pu college puttur ', '2A', 'shanmukhadevdas94@gmail.com', 'shanmukha5', '2023-04-27 14:52:03', 0, 1, '9481175433', 'Kodagu district somwarpet taluk kodlipet post shanthpura 571231', 'Somwarpet ', 'Kodagu ', '10000', '90'),
(351, '‪+91 97396 68559‬', 'Mohammed safa', 'Famina S.E', 'NMC KVG sullia DK', '2B', 'sdh230264@gmail.com', 'Kyfqy8-mefjor-hicqyf', '2023-04-27 17:33:03', 0, 1, '9901175155', 'Oldgate', 'Sullia', 'DK', '50000', '60'),
(356, '7204261192', 'Chandan MU', 'Uday Kumar M', 'NMC, sulliya', '3A', 'g9997627@gmail.com', 'kvgpass123+', '2023-04-28 04:02:00', 0, 1, '9449669138', 'Garagandooru ', 'Somavarpet', 'Kodagu', '50000', '83'),
(358, '9061237150', 'Nishvitha k', 'Shree Krishna bhat k', 'Nmc sullia ', 'GM', 'niteshkrishnabhat@gmail.com', '010705', '2023-04-28 04:42:14', 0, 1, 'Smitha bhat k ', 'Adoor', 'Kasargod ', 'Kasargod ', '2L', '92%'),
(359, '7483651871', 'Mamatha p', 'Fakkiresh karjagj', 'Gpuc sullia', '2A', 'mamathap397@gmail.com', '7483651871', '2023-04-28 04:51:22', 0, 1, '8861534384', 'Chennakeshava temple near shridevi complex', 'Sulliq', 'Dakshina kannada', '11000', '68%'),
(360, '7795019370', 'Supritha.N', 'Keshava.N', 'Gpuc college sullia', 'SC', 'nj57932@gmail.com', '7795019370', '2023-04-28 04:53:32', 0, 1, '9980945329', 'Duggaladka', 'Sullia', 'Dhakshina Kannada', '45000', '80%'),
(361, '7760349801', 'bhavana bojamma.s.b', 'bharath.s.p', 'vidyanikethana pu college gonikoppa', '3A', 'bhavanabojamma45@gmail.com', 'bhavanabojamma02', '2023-04-28 05:34:44', 0, 1, '9980749801', 'kutta', 'virajpet', 'kodagu', '1,00,000', '82.88'),
(362, '6364583815', 'Venkatesh R', 'Revanna R', 'Govt maharaja pu college ', 'SC', 'venkteshvenki6364@gmail.com', 'venki6364', '2023-04-28 12:03:36', 0, 1, '6364583815', 'Mysore ', 'Mysore ', 'Mysore ', '48000', '70%'),
(363, '7338307455', 'Raghavendra K S', 'Shivannegowda', 'BGS Science P. U . College Pandavapura', '3A', 'raghusgowda771@gmail.com', 'Raghu@123', '2023-04-28 12:05:53', 0, 1, '8088200644', 'Melkote', 'Pandavapura', 'Mandya', '40000', '91.36%'),
(365, '8792170260', 'Nireeksha K P', 'Keshava Gowda P. ', 'Morarji Desai Residential PU College Kammaje, Mennabettu ', '3A', 'nireekshakp7@gmail.com', 'havi@9603', '2023-04-28 13:08:12', 0, 1, '9480523280', 'Panja', 'Sullia ', 'Dakshina Kannada ', 'Rs.50,000', '97.44%'),
(366, '7892393876', 'Disha P D', 'Damodara', 'Morarji Desai Residential PU College Mennabettu,Kammaje', '2A', 'shalinikolchar590@gmail.com', 'disha@2005', '2023-04-28 13:18:11', 0, 1, '9606874934', 'Kolchar', 'Sullia', 'Dakshina Kannada', '20,000', '88%'),
(367, '8762260811', 'Subrahmanya.P', 'Kusuma', 'Junior College sullia', '3A', 'kingsubbu255@gmail.com', 'pgsubbu098', '2023-04-28 14:57:06', 0, 1, '8762751537', 'Sullia', 'Sullia', 'Dakshina Kannada', '85000/-', '80.64'),
(368, '7259881933', 'K. Prasthik', 'K. Jayarama Gowda', 'N. M. C Sullia', '3A', 'Pranvithp472@gmail.com', '420420xxxpk', '2023-04-29 04:36:35', 0, 1, '9632661933', 'house bellare post and village sullia taluku Dakshina kannada', 'Sullia', 'Dakshina kannada', '90000', '88%'),
(369, '9019574639', 'Likitha chendrimada suguna', 'Suguna C M', 'Government PU college,Virajpet kodagu', '3A', 'chendrimadasuguna@gmail.com', 'Likitha2006', '2023-04-29 11:52:45', 0, 1, '9535536810', 'Nangala village,Bittangala post ', 'Virajpet', 'Kodagu', '45,000', '  2nd PUC -94%         SSLC-70% '),
(371, '7618753161', 'Ashika. A.M.', 'A.L. Mohan kumar   Lolakahi. A. M.', 'Nehru Memorial Pre University College Aranthodu', '3A', 'ashikathodikana@gmail.com', 'ssssssssss', '2023-04-30 04:41:28', 0, 1, '7022861799', 'Sullia', 'Sullia', 'Dakshina kannada', '75000', '88.48%'),
(374, '9481767288', 'Dipali.k', 'Shivappa gowda .k', 'G.PUC savanoor', '3A', 'dipaligowda@gmail.com', 'deepg005', '2023-04-30 13:09:48', 0, 1, '9972716833', 'Puttur', 'Puttur', 'Dakshina kannada', '40,000', '94%'),
(375, '9686674778', 'Asiyamma nihala ', 'TM ismail', 'Kanachur pu college for womens derlakatte ', '2B', 'fazalnihal06@gmail.com', 'ismail123', '2023-04-30 13:23:23', 0, 1, '9148124684', 'Mangalore ', 'Mangalore ', 'Dakshina kannada ', '20,000', '76.96%'),
(378, '9113557129', 'Rithesh N D', 'Dinesh N', 'Rotary pre university college', '3A', 'ritheshnekraje@gmail.com', 'NEKRAJE..', '2023-04-30 17:13:39', 0, 1, '9845087209', 'Sullia', 'Sullia', 'Dakshina kannada', '40000', '89.12'),
(379, '6360755204', 'Shrithi.S ', 'Kasturi ', 'KPS Bellare', '3B', 'ssmitharai@gmail.com', 'shrithi@123', '2023-05-01 09:32:38', 0, 1, '8971284312', 'Pambar house,perlampady post', 'Puttur ', 'Dakshinakannada ', '32000', '89.76'),
(380, '9164451765', 'Shrinivas ganapati naik', 'Ganapati naik', 'Rns pu college murdeshwar', 'Other', 'ganapatin839@gmail.com', '123456', '2023-05-02 05:01:08', 0, 1, '8884803576', 'Town', 'Bhatkal', 'Uttarakannada', '25000', '84.32%'),
(384, '9945497438', 'Thrupthi', 'Chandrashekar D.K', 'GPUC Sullia', 'ST', 'Puspavathipushpa99@gmail.com', 'Thrupthi8147', '2023-05-02 07:08:41', 0, 1, '9945497438', 'Sullia', 'Sullia', 'Dakshina kannada', '90000', '79.68'),
(385, '8431457929', 'Ganashree Sulli ', 'Vimala M', 'SSPU College Subramanya ', '3A', 'sulliganashree@gmail.com', 'GANUSULLI', '2023-05-02 07:20:26', 0, 1, '9483141847', 'Narnakaje ', 'Sullia', 'Dakshinakannada ', '40000', '82.4%'),
(386, '9074107299', 'Shrigiri', 'Mohananarayana.P', 'SAPHSS Agalpady', 'GM', 'shrigiriananthapura578@gmail.com', 'Shrigiri@2005', '2023-05-02 07:21:33', 0, 1, '9947215363', 'Nirchal', 'Kasaragod', 'Kasaragod', '100000', 'Full A+'),
(387, '8590695804', 'SHIVA PRASAD', 'SHIVARAMAN B', 'SAPHS school agalpady', 'Other', 'P82788812@gmail.com', '637621', '2023-05-02 09:08:12', 0, 1, '8590702216', 'Agalpady', 'Kasaragod', 'Kasaragod', '6000', '96'),
(388, '9019050455', 'Anaswara.K.U', 'Ranjith Lal K. R', 'Sarvadeivatha Pre University College Aruvathoklu , Gonikoppa', 'GM', 'anashwara753@gmail.com', 'Rajiappus', '2023-05-02 09:08:38', 0, 1, '9611250232', 'Kutta ', 'Virajpet ', 'Kodagu', '11800', '76.16%'),
(390, '9845677081', 'Surya.M', 'Mahesh r', 'Nisarga independent pu college kollegala', 'SC', 'maheshrpwd@gmail.com', 'Suryamahesh914', '2023-05-02 09:30:22', 0, 1, 'Parent 9845677081', 'Kollegala', 'Kollegqla', 'Chamaraja nagara', '30000', '91.2 %'),
(393, '9074770435', 'Vishwas G S ', 'SHRINIVASA BHAT G ', 'Agalpady ', 'GM', 'vishwasbhat727@gmail.com', 'Vishwas@27', '2023-05-02 10:17:22', 0, 1, '9605869012', 'Gulugunji house Marpanadka Jayanagara Kasaragod', 'Kasaragod ', 'Kasaragod ', '200000', '95'),
(394, '9902075316', 'Likith PK', 'Poornima HP', 'Grama Bharathi pu college ', 'ST', 'poornimapoornimahp1@gmail.com', '100100100', '2023-05-02 11:25:15', 0, 1, '9902075316', 'K R Pete', 'K R Pete', 'Mandya', '2000', '94'),
(395, '9980804985', 'Akrthi D B', ' T Bhaskara Maniyani', 'Dr N.s.a.m pu college nanthoor', 'CAT-1', 'pushpabhaskar80@gmail.com', 'appuabbu', '2023-05-02 13:31:32', 0, 1, '9980804985', 'Manglore', 'Manglore', 'Dk', '200000', '75'),
(396, '7676458969', 'Chiranth BM', 'Manjunath', 'S. S. K. C pre university krishnarajpet', 'GM', 'cchiranth535@gmail.com', 'cheethaa', '2023-05-02 15:06:03', 0, 1, '7676458969', 'fasdf435', 'Krishnarajpet', 'Mandya', '400000', '84 %'),
(397, '9481946449', 'Akanksha K.S ', 'Prasad bhat', 'Coorg institute of pu college ', 'GM', 'akankshabhat2005@gmail.com', 'mnbvcxz', '2023-05-03 05:13:31', 0, 1, '77955 83649', 'Gonikoppal ', 'Virajpet ', 'Kodagu ', '40000', '87'),
(398, '7090494844', 'Iza', 'KA Ummer', 'Rotary PU college mithadka', '2B', 'ummeekallucherpe@gmail.com', 'izafathima', '2023-05-03 09:07:44', 0, 1, '7090494844', 'Town', 'Sullia', 'Dakshina Kannada', '80000', '94.5'),
(399, '8792367076', 'Dhanyashree.N.U', 'Pushpavathi.C', 'Govt. Pre University College Sullia', 'ST', 'dhanya4182115@gamaile.com', '233497', '2023-05-03 10:49:03', 0, 1, '7349594765', 'Sullia', 'Sullia', 'Dhakshina Kannada', '50000', '77.6'),
(400, '9916606722', 'Muhammed mehrab gowda', 'Shahnawaz ali gowda', 'RNS PRE UNIVERSITY COLLEGE MURUDESHWAR', '2A', 'Muhammedmehrabgowda@gmail.com', '152901', '2023-05-03 10:53:50', 0, 1, '9902315280', 'Murudeshwar', 'Bhatkal', 'Karnataka ', '10000', '80%'),
(402, '8105548947', 'Bhoomica M.D', 'Dinesh M.C', 'Coorg institute of pre University college, Ponampet ', '3A', 'soumyamachamadabojamma@gmail.com', '2462005', '2023-05-03 12:41:11', 0, 1, '8105548947', 'Madikeri ', 'Virajpet', 'Kodagu ', '25000', '93.12'),
(403, '9480121928', 'Sinchana K ', 'Laxmana K G', 'Ambika Padavipoorva Vidyalaya , Nellikatte, Puttur ', 'GM', 'sinchuvarun@gmail.com', 'SINCHU2005', '2023-05-03 13:14:24', 0, 1, '7892520029', 'Aletty ', 'Sullia ', 'Dakshina Kannada', '600000', '96.32'),
(404, '9113959414', 'Monish. P. M', 'Mohan Kumar P. L', 'Jawahar Navodaya vidyalaya, mudipu, bantwal taluk, Dakshina Kannada', '3A', 'monishpm204@gmail.com', '9113959414', '2023-05-03 13:36:11', 0, 1, '9481957149', 'Goonadka', 'Sullia', 'Dakshina kannada', '90,000', '88.6'),
(405, '9632304971', 'Farzana P A', 'K P Sakeena', 'Government p u college Virajpet ', '2B', 'farzanapachu047@gmail.com', 'Farzana..', '2023-05-03 14:09:49', 0, 1, '9632073240', 'Virajpet ', 'Virajpet ', 'Kodagu', '5000', '65%'),
(407, '9535962774', 'Nayana K G', 'Rukmini K G', 'Atal Bhihari Vajpeyee Residential Science College korengal  Bhagamandala ', '3A', 'nayanagirishkolumudiyana@gmail.com', 'NayanaG143', '2023-05-03 15:22:30', 0, 1, '9741674750', 'city', 'somvarpete ', 'kodagu', '70000', '90.833'),
(408, '9148392006', 'Manasvi K N ', 'Nanjunda', 'SSKC PU COLLEGE ,KRPETE', 'ST', 'manasvinanjunda15@gmail.com', 'hardikpandya93', '2023-05-03 16:09:36', 0, 1, '9071159582', 'Krpete', 'Krpete', 'Mandya', '14000', '88%'),
(409, '7348829440', 'Tanisha ', 'Neela MS', 'St Francis Composite PU College,Koramangala ', '3A', 'tanishams225@gmail.com', 'kvg2023225', '2023-05-04 06:55:53', 0, 1, '8050773392', 'Bangalore ', 'Bangalore east taluk', 'Bengaluru Urban District', '40000', '85.2%'),
(410, '8904342982', 'Deeksha BR', 'Harinakshi BA', 'St Michael\'s', '3A', 'dimpledeeku26@gmail.com', 'deekshagowda', '2023-05-04 07:00:40', 0, 1, '8904056931', 'Gowli street near old indane gas office madikeri kodagu', 'Madikeri', 'Kodagu', '4,50,000', '81.3'),
(411, '8792139499', 'Pramod', 'Shiv kumar', 'M d r pu college kushalnagar', '3B', 'pramodprammu0@gmail.com', 'pramod123', '2023-05-04 08:05:54', 0, 1, '9743785788', 'Basavanahalli', 'K r Pete', 'Mandya', '25.000', '90'),
(412, '9995631584', 'Kadeejath shahana', 'Pm imamali', 'Mschss neerchal', 'Select Category', 'pmimamali23@gmail.com', 'shana005', '2023-05-04 08:54:29', 0, 1, '9539580051', 'Kalathur', 'Kumbla', 'Kasaragod', '20000', '100'),
(413, ' 7892875150', 'Akshay G P', 'Palaksha', 'MDRPU college ', '2A', 'abhishekshetty481@gmail.com', 'akshay123@', '2023-05-04 10:56:50', 0, 1, '9482409661', 'Shanivarsante ', 'Somwrpet ', 'Kodagu', '18000', '78'),
(414, '9972202721', 'Adithya K. N', '8762136176', 'M. D. R pu college garganduru', '3A', 'adityarisi131@gmail.com', '87621361', '2023-05-04 11:07:00', 0, 1, '8762136176', 'Somverpet', 'Somverpet', 'Kodagu', '60000', '89'),
(415, '8431823964', 'Jubeiriya P.A', 'Sakeena. K. P', 'Govt pre-university college virajpet ', '2B', 'jubeijubeiriya@gmail.com', 'i8ry2LhdRiZUHG8', '2023-05-04 12:01:58', 0, 1, '9632073240', 'Virajpet ', 'Virajpet ', 'Kodagu ', '5,000', '58'),
(416, '9449748078', 'Ankith A L ', '9008003573', 'Morarji Desai Residential Science PU College,garagunduru.', '2A', 'ankithaluvara@gmail.com', 'anki·93', '2023-05-04 12:26:50', 0, 1, '9008003573', 'Village ', 'Somwarpet ', 'Kudagu ', '50 thousand ', '93'),
(418, '7899782417', 'Yakshitha K', 'Veerappa K', 'SSPU college Subrahmanya', '3A', 'yakshithakambala@gmail.com', 'yxshu_24', '2023-05-04 14:12:44', 0, 1, '9686522416', 'Panja ', 'Sulya', 'Dakshina kannada', '10k', '90.66 in PUC'),
(419, '9901569800', 'Deekshith  k B', 'Nisha ', 'St Anne\'s pu college, virajpet taluk Kodagu ', '2A', 'kbdeekshith1@gmail.com', 'parayanpattula', '2023-05-04 14:32:00', 0, 1, '9880868146', 'Siddapur ', 'Virajpet ', 'Kodagu', '30000', '85.44'),
(420, '9483359042', 'Sonika.M.S', 'Somanna.M.P', 'St.Joseph\'s Composite PU college, Madikeri ', '3A', 'somannasonika@gmail.com', 'sonika@5', '2023-05-04 15:03:41', 0, 1, '9481855203', 'Madikeri ', 'Madikeri ', 'Kodagu', '1,30,000', '96.4%'),
(421, '9448782227', 'Kannika D. Ambekallu', 'Dinesh Ambekallu ', 'Ambika padavipoorva vidyalaya,Bappalige', '3A', 'poornimadinesh143@gmail.com', 'Kannika@1', '2023-05-04 16:29:09', 0, 1, '9448625269', 'Sullia', 'Sullia ', 'Dakshina Kannada ', '5 lakhs', '95.14'),
(422, '9482407277', 'Anushri k r', 'Raju k r', 'M d r science pu college gargandhur,somwerpet TQ coorg', 'CAT-1', 'anukrajanukraj@gmail.com', 'ANUSHRI', '2023-05-04 17:27:18', 0, 1, '7338181471', 'Kandegala village', 'Periyapattana', 'Mysore', '11000', '97'),
(424, '8904110756', 'Sinchana M ', 'Honnappa', 'Shree Sharada Pre University college for womens sullia', '3A', 'sinchanam31@gmail.com', 'upuAuP9kZQnjGeV', '2023-05-05 04:35:54', 0, 1, '7349040613', 'Town ', 'Kadaba ', 'Dhakshina Kannada ', '30000', '533 '),
(426, '9353282964', 'Chaithanya MH', 'Sharada KR', 'St.joseph\'s pu college', '3A', 'Chaithanyamh43@gmail.com', 'chaithu610', '2023-05-05 04:50:26', 0, 1, '8277236704', 'City', 'Madikeri', 'Kodagu', '20000', '71'),
(427, '8277390118', 'Dhruthi A B', 'Baby B P', 'Government P.U college, Madikeri', '3A', 'ammavanamayuri@gmail.com', 'Dhruthi@05/2005', '2023-05-05 05:02:31', 0, 1, '8762648151', 'Madikeri', 'Madikeri', 'Kodagu', '40000', '88.8'),
(428, '9449933321', 'Ananya M.H', 'Harish .M.P', 'St.Joseph\'s PU College ,Madikeri', '2A', 'ananyamh@gmail.com', '12qwas**', '2023-05-05 06:09:10', 0, 1, '6362254029', 'Madikeri', 'Madikeri', 'Kodagu', '4 lakhs', '99.36'),
(429, '7899080015', 'Harsha kj ', 'JAGADISHA', 'Kannada bharathi pu college, Kushal Nagar', '2A', 'Harshakj1711@gmail.com', 'harshakj', '2023-05-05 07:15:55', 0, 1, '9902444174', 'Kushalnagar', 'Somwar Pet', 'Kodagu', '50000', '89.6'),
(430, '9480413709', 'Yathin M ', 'Venugopal Gowda ', 'Nehru memorial pu college sullia ', '3A', 'yathinmogra@gmail15.com', 'block143', '2023-05-05 10:58:32', 0, 1, '9449926837', 'Sullia ', 'Sullia ', 'Dakshin Kannada ', '30000', '73%'),
(431, '9972070451', 'Ananya H R', 'Ramachandran & kalavathi', 'Atal Bihari Vajpayee residential collage bhagamandala', 'SC', 'ananya13hr@gmail.com', 'Ananya', '2023-05-05 12:56:11', 0, 1, '9972070451', 'Habaturu village and post', 'Periyapattana', 'Mysore', '15000', '82'),
(432, '9110694842', 'Harsha mk', 'Kishore kumar mn', 'Govt pu college madikeri', '3A', 'mkharsha42@gmail.com', '@#harshaammu', '2023-05-05 13:05:03', 0, 1, '9480375668', 'Made villagr and post', 'Madikeri', 'Kodagu', '10000', '79'),
(433, '8277099303', 'Abhishek ', 'Venkappa', 'GPUC Bellare ', 'ST', 'venkappanidmar@gmail.com', 'ABHI@1234', '2023-05-05 13:21:13', 0, 1, '9482623678', 'Bellare', 'Sullia', 'Dakshin Kannada ', '45000', '80.96'),
(434, '9535320659', 'Sharath kumar A G', 'Gopalagowda ', 'Kannada bharati pu college ', '2A', 'kumargowdakr84@gmail.com', 'sharath', '2023-05-05 13:46:57', 0, 1, '9632296875', 'Alanahalli ', 'Periyapatna ', 'Mysore', '55000', '88.8%'),
(435, '9048384539', 'Dhanya NS', 'Narayanan', 'GVHSS Mulleria', '2A', 'dhanyansnarayanan@gmail.com', '133120', '2023-05-05 17:29:31', 0, 1, '9048285145', 'Adoor', 'Adooor', 'Kasaragod', '500', '100'),
(436, '9108273377', 'Roja.M', 'Murthy', 'Talent composite pu  college hunsur', '3B', 'Rojavaishnavroja@gmail.com', '225566', '2023-05-06 04:45:55', 0, 1, '9945337970', 'Town', 'Periyapatna', 'Mysore', '40,000', '74.08%'),
(437, '7899411528', 'Nandana P', 'H K Parameshwarappa', 'Govt pre University college madikeri', 'SC', 'nandanapmadikeri@gmail.com', 'NANDANAP', '2023-05-06 07:19:09', 0, 1, '7899411528', 'Gundlupete', 'Gundlupete', 'Chamarajanagara', '250000', '78%'),
(438, '8123056781', 'Roshini h n', 'Narayana h b   ', 'Virajpet  ', 'SC', 'roshniross05@gmail.com', 'ross9535937479', '2023-05-06 09:50:08', 0, 1, '9535937479', 'Siddapur', 'Virajpet ', 'Kodagu', '11000', '79 .84'),
(440, '9353138667', 'Dileep.V', 'Vittala', 'Kannada bharathi pu college kushalnagar ', '3B', 'vaishnavdileep16@gmail.com', '935313', '2023-05-06 15:17:32', 0, 1, '9945382464', 'Bylakuppe ', 'Periyapattana ', 'Mysore', '20000', '87'),
(441, '7204849695', 'Prajwal GR', 'Manjula', 'PP0007-GovtPUCOLLEGEKRISHNARAJAPETEMANDYADT571426', '2A', 'gaprajwal92@gmail.com', '123456789', '2023-05-07 10:29:19', 0, 1, '8792695457', 'KRISHNARAJAPETE', 'KRISHNARAJAPETE', 'Mandya', '26000', '91.04%'),
(443, '8431396029', 'Amrutha ', 'Belliappa A.u', 'St Michael\'s madikeri ', '3A', 'belliappaau53@gmail.com', 'amu123', '2023-05-07 13:55:22', 0, 1, '9449402015', 'Madikeri ', 'Madikeri ', 'Kodagu ', '50000', '70'),
(445, '6362877921', 'Hemanthgowda.m.n', 'C.nagegowda ,m.d.ashwini', 'Alpha p.u.college.k.r.nagara', '3A', 'ashkecthum777@gmail.com', 'A5A5A5', '2023-05-07 14:38:07', 0, 1, '6362877921', 'Mysore,k.r.nagara', 'K.r.nagara', 'Mysore ', '5.lakhs', '92/'),
(447, '8217670664', 'Thimmaiah P H', 'Hemakumar', 'ABVRC PU college Bhagamandala', '3A', 'thrishanthimmaiah@gmail.com', 'Thrishan@123', '2023-05-07 16:14:42', 0, 1, '9480085200', 'Hakathur', 'Madikeri', 'kodagu', '60000', '80'),
(451, '8050024934', 'Supritha B H ', 'Harish Kumar B R ', 'Sacred heart PU college Shanivarsanthe ', '3B', 'ssupritha090@email.com', '2345678', '2023-05-09 04:42:42', 0, 1, '9632030934', 'Shanivarsanthe ', 'Somwarpet ', 'Kodagu', '60000', '75%'),
(452, '7022370696', 'Jeevan. K', 'Chandrashekhara. K', 'Rotary comp pu college mithadka allety sullia', '3A', 'Jk2148813@gmail.com', '7022370696', '2023-05-09 04:58:50', 0, 1, '7996820696', 'Jalsoor', 'Sullia', 'Dakshina kannada', '1,50,000', '83.36%'),
(453, '8904872594', 'N R varsha', 'Ramesh N B', 'Rotary PU college mitthadka', '3A', 'Varshanidyamale@gmail.com', '094929', '2023-05-09 06:47:41', 0, 1, '9448562564', 'Peraje', 'Madikeri', 'Kodagu', '150000', '74'),
(454, '7019175045', 'Sanjana H K', 'Krishnamurthy H.K', 'Vamadapadavu', '3A', 'sanjanahk139@gmail.com', '70191750', '2023-05-09 07:48:14', 0, 1, '6360683304', 'Hongadahalla ', 'Sakaleshapur', 'Hassan', '25,000', '86'),
(456, '8660834345', 'Chandini v. s', '8762895423', 'M. D. R. PU college garganduru', '3A', 'namrathaar2001@gmail.com', '24042005', '2023-05-09 08:55:28', 0, 1, '8762895423', 'Sakleshpura', 'Sakleshpura', 'Hassan', '60000', '84.65'),
(457, '7349065085', 'Lincy dsouza ', 'Lizy dsouza ', 'Cauvery PU college', '3B', 'lincyelizabethd@gmail.com', 'lincydsouza', '2023-05-09 10:18:04', 0, 1, '9632259812', 'Gonikoppal', 'Virajpet ', 'Kodagu', '40000', '91'),
(458, '7353626313', 'Fathimath Fahima.S.A', 'Asma', 'Rotary Pre University College Mithadka Aletty Sullia ', '2B', 'fathimafaima05@gmail.com', 'fathimafaimasa', '2023-05-09 13:31:55', 0, 1, '7353626313', 'Sullia', 'Sullia ', 'Dakshina kannada ', '75000', '81.92'),
(459, '6363167197', 'Deekshitha.D.M.', 'Manjunatha.H.A.', 'M D R PU Science College Gargandoor ', '2A', 'soujanyaaoujanya877@gmail.com', 'deekshitha@2006', '2023-05-10 04:18:42', 0, 1, '6363167197', 'Doddaluvara village thorenoor Post ', 'Somverpet ', 'Kodagu ', '30000', '84% 522 marks '),
(460, '7349054624', 'Sanvi. R', 'K. Ravi', 'St. Michael pu college, madikeri', 'Other', 'sanviacharya382@gmail.com', 'sanviacharya', '2023-05-10 04:28:53', 0, 1, '9480905047', 'MADIKERI', 'MADIKERI', 'Kodagu', '40,000', '76'),
(463, '7204367229', 'Sinchana', 'Soma  Aruna', 'KPS K. R. Pete', 'SC', 'somasoma45653@gmail.com', 'sinchana@123', '2023-05-10 05:15:13', 0, 1, '9686839093', 'Chikkaharanahalli. Santhebachahalli hobali', 'Krishnarajapet', 'Mandya', '1000', '92'),
(464, '7975633837', 'SHRINIDHI A', 'Govinda Prasad ', 'Government Pre university college Puttur ', 'GM', 'prasad6455@gmail.com', 'shrinidhi', '2023-05-10 06:39:28', 0, 1, '9008604927', 'Puttur ', 'Puttur ', 'Dakshina Kannada', '150000', '98.4%'),
(465, '7676039688', 'Rajesh N Naik', 'Nagesh naik', 'RNS PU COLLEGE MURUDESHWAR', 'GM', 'naik79174@gmail.com', '767603', '2023-05-10 08:32:25', 0, 1, '9481460813', 'Manki.anantawadi', 'Honnavar', 'Uttara kannada', '11000', '85'),
(467, '6366755889', 'Chirag G J ', 'Jayarj g b ', 'Mdr pu college basvanahalli ', '3A', 'chiragjayanna18@gmail.com', 'chirag', '2023-05-10 08:45:56', 0, 1, '9845764694', 'Somwarpet ', 'Somwarpet ', 'Kodgau', '50000', '77.76'),
(469, '9074526841', 'YADUKRISHNA K.M', 'ARUNAPRAKASH K.M', 'S.A.P.H.S.S AGALPADY ', 'Other', 'yadukrishnapilikudlu@gmail.com', 'APPUKUTTAKANNAN', '2023-05-10 10:46:32', 0, 1, '8921224992', 'BADIADKA', 'KASSARGOD', 'KASARGOD', '6000', '98'),
(470, '9972433782', 'JAYALAKSHMI M', 'NAGABHUSHANAM M N', 'VIVEKA PRE-UNIVERSITY COLLEGE,  HANCHIPURA SARAGUR MYSORE KARNATAKA 571121', '2A', 'jayalakshmim052005@gmail.com', 'Jaya@2705', '2023-05-11 06:47:20', 0, 1, '9972433782', 'KRISHNARAJAPETE', 'KRISHNARAJAPETE', 'MANDYA 571426', '40000', '98.72%'),
(471, '7483696350', 'Fathimath Shuha ', 'M.P Abdul Shareef ', 'Nehru memorial pu college sullia D.K', '2B', 'fathimashuha525@gmail.com', 'fathimathshuha007', '2023-05-11 09:06:06', 0, 1, '9482034474', 'Sullia', 'Sullia', 'Dakshina Kannada ', '25000', '57.92%'),
(474, '7259822753', 'Spandana', 'Nandeesh', 'MDR science pu college Varakodu', 'SC', 'spandana7259@gmail.com', '7259spandu', '2023-05-11 10:30:58', 0, 1, '7411350567', 'Nanjangudu', 'Nanjangudu', 'Mysore', '41000', '83'),
(475, '9972895791', 'Vaibhav A  V', '9481847791', 'N M P  U College Sullia ', '3A', 'Vaibhavathyadivaibhavgowda@gmail.com', 'vaibhav@123', '2023-05-11 11:30:48', 0, 1, '9448596598', 'Guthigar', 'Sullia', 'Dakshina kannada', '35000', '84'),
(477, '7338093156', 'Ayishath thasmiya K.A', 'Ahamed', 'K.V.G Amarajyothi pu collage sullia', '2B', 'thasmiyaka@gmail.com', 'thasmiya', '2023-05-11 12:30:35', 0, 1, '9740542975', 'Sullia', 'Sullia', 'Dakshina kannada', '100000', '91.52'),
(478, '9353963781', 'Sahana K N ', 'Nanjundappa ', 'UES Presidency P U College ', '3B', 'sanuravi907@gmail.com', 'sahana89', '2023-05-11 15:04:47', 0, 1, '7259451770', 'Hemavathi nagar ', 'Hassan ', 'Hassan', '15000', '77'),
(479, '9036982051', 'Mukesh M.P', 'Palaksha. M.R', 'Bharath matha pu college koppa ,periyapatna ,tq', '3B', 'mukeshmpmukesh@600.com', 'Mukesh2005', '2023-05-12 07:26:56', 0, 1, '9483870021', 'mullsoge', 'kushalnagar', 'kodagu', '250000', '88.64'),
(481, '8762909275', 'Kiran kumar S ', 'Sheshappa achari K S', 'G P U C Madikeri, Kodagu, 571201', '2A', 'kiranacharyacoorg8762@gmail.com', 'kiran8762', '2023-05-12 09:14:12', 0, 1, '9449656849', 'Madapura', 'Somwarpet', 'Kodagu', '35000', '89.44'),
(484, '8431919296', 'HARI PRASAD. A.V', 'VENKATARAMANA SHETTY', 'VIDYODAYA PU COLLEGE', '2A', 'hariprasha4072@gmail.com', 'H1A2R3I4', '2023-05-12 14:59:31', 0, 1, '8746813044', 'T. Narsipura', 'T. Narsipura', 'Mysore', '20,000', '78%'),
(485, '6363528109', 'Keerthikumar M S', 'Srikantaswamy', 'Vidyodaya pu college,T Narasipura ', '2A', 'mskeerthikumar323@gmail.com', '6363528109', '2023-05-12 15:07:30', 0, 1, '9901506319', 'Mannehundi', 'T Narasipura', 'Mysore ', '20000', '66.4'),
(486, '7483631151', 'Vibha H.D', 'Sujatha.S', 'Vivekananda Pre University College Puttur ', '3A', 'sujatha.vibha3@gmail.com', '748363', '2023-05-13 02:31:46', 0, 1, '9480528100', 'Kudipady ', 'Puttur ', 'Dakshina Kannada ', '6,00,000', '89.4%'),
(488, '8618628035', 'Pyadhav143@gmail.com', 'Basavaraju ', 'Hanagodu', '3A', 'Pyadhav143@gmail.com', 'Sanjana@2005', '2023-05-13 05:33:44', 0, 1, '9535732674', 'Irataiahnakoppalu', 'Hunsur ', 'Mysore ', '18000', '90.56 percentage '),
(489, '8867185681', 'Yashwanth S', 'Sundar TM, Padma G', 'Vidyodaya PU college, T. Narasipura town, mysuru district', 'SC', 'Yashwanthlns@mail.com', '9538454826', '2023-05-13 06:43:16', 0, 1, '9538454826', 'T. Narasipura', 'T. Narasipura', 'Mysuru', '1lakh', '80.5'),
(490, '9097088427', 'Jay kumar yadav', 'vijay yadav', 'marwari college ', 'GM', 'jay94588@gmail.com', 'Jay@9097088427', '2023-05-13 09:10:46', 0, 1, '7654543917', 'Saroj nagar', 'chandwa', 'latehar', '1lakh', '80'),
(491, '8217206292', 'Sampath', 'Chennappa Kulal', 'GPUC Kombettu', '2A', 'sampathkulal100@gmail.com', 's1a2m3p4', '2023-05-13 12:44:19', 0, 1, '9980866198', 'Puttur', 'Puttur', 'Dakshina Kannada ', '20000', '89.6'),
(492, '8861152306', 'Kiran mh ', 'Harisha ', 'Government pu college ', '3A', 'arun2004@gmail.com', '246810', '2023-05-13 16:09:40', 0, 1, '8861152306', 'Krishanarazateth', 'Krishanarazateth', 'Mandya', '22800', '90'),
(494, '7795193921', 'Darshan h s ', 'Somu ', 'Government pu college k.r pete', 'SC', 'somas79543@gmall.com', '345678', '2023-05-13 16:34:39', 0, 1, '7795193921', 'Krishanarajapete', 'Krishanarajapete', 'Mandya', '40000', '92%48'),
(496, '9019117060', 'Vidya H ', 'Hareesh ', 'Bharath matha pu college , Koppa ', '3A', 'vidyah9019@gmail.com', 'Anithahareesh', '2023-05-14 02:30:42', 0, 1, '9611539677', 'Ambalare', 'Periyapatna ', 'Mysore', '50000', '90.6'),
(497, '8904482353', 'Sona.m.n', 'Nagarajegowda', 'D.P.B.S government pu college periyapattana ', '3A', 'sonugowda2858@gmail.com', '9535sonu2858', '2023-05-15 13:24:10', 0, 1, '9535249275', 'Town', 'Periyapattana ', 'Mysore ', '12000', '83');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
