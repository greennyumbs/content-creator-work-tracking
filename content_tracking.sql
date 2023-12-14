-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 09:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `content_tracking`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(10) NOT NULL,
  `content_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_name`) VALUES
(2, 'Cooking'),
(3, 'Variety'),
(4, 'Travel'),
(5, 'Documentary'),
(6, 'Comedy'),
(7, 'Life coach'),
(8, 'Business'),
(9, 'Short-film'),
(10, 'Beauty'),
(11, 'Sport'),
(12, 'Food'),
(13, 'Sad life'),
(14, 'Slept over');

-- --------------------------------------------------------

--
-- Table structure for table `emcee_contract`
--

CREATE TABLE `emcee_contract` (
  `emcee_contract_id` int(10) NOT NULL,
  `emcee_team_id` int(10) NOT NULL,
  `staff_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emcee_contract`
--

INSERT INTO `emcee_contract` (`emcee_contract_id`, `emcee_team_id`, `staff_id`) VALUES
(52, 32, 4),
(53, 34, 4),
(54, 34, 5),
(55, 34, 7),
(63, 39, 4),
(64, 40, 4),
(66, 33, 33),
(69, 31, 14),
(70, 31, 21),
(71, 41, 21);

-- --------------------------------------------------------

--
-- Table structure for table `emcee_team`
--

CREATE TABLE `emcee_team` (
  `emcee_team_id` int(10) NOT NULL,
  `emcee_team_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emcee_team`
--

INSERT INTO `emcee_team` (`emcee_team_id`, `emcee_team_name`) VALUES
(31, 'Wan Tom Tu'),
(32, 'Ben'),
(33, 'Taro'),
(34, 'ChaNonJenPond'),
(39, 'Koodey'),
(40, 'AekTra'),
(41, 'IDK');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(10) NOT NULL,
  `work_id` int(10) NOT NULL,
  `staff_id` int(10) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `feedback_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `work_id`, `staff_id`, `feedback`, `feedback_timestamp`) VALUES
(1, 1, 4, 'Test', '2023-05-27 02:41:31'),
(2, 3, 17, 'Very good', '2023-05-27 13:24:29'),
(3, 1, 4, 'Fantastic!', '2023-05-27 14:47:28'),
(4, 1, 4, 'Good Job', '2023-05-29 07:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(10) NOT NULL,
  `guest_fname` varchar(20) NOT NULL,
  `guest_mname` varchar(20) DEFAULT NULL,
  `guest_lname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `guest_fname`, `guest_mname`, `guest_lname`) VALUES
(3, 'Pop', NULL, 'Pongkul'),
(4, 'Oat', NULL, 'Pramote'),
(5, 'Urboy', NULL, 'TJ'),
(6, 'Wan', 'Tanakrit', 'PaiLuey'),
(7, 'Sirivarakul', NULL, 'Jiropakarn'),
(8, 'Ramin', NULL, 'Suchatnitikul'),
(9, 'Pannawat', NULL, 'Durongrittichai'),
(10, 'Thanatat', NULL, 'Sinchareon'),
(11, 'Phornphat', NULL, 'Chanthanarak'),
(12, 'Jiraphat', NULL, 'Rattanabumrungsin'),
(13, 'Jirawat', NULL, 'Puangraya'),
(14, 'Tanapat', NULL, 'Cherdmanusatien'),
(15, 'Woradon', NULL, 'Samphanphaisarn'),
(16, 'Tor', NULL, 'Tanapop'),
(17, 'ตั้ม', NULL, 'โดม'),
(18, 'Pramote', NULL, 'Pratarn'),
(19, 'Kong', NULL, 'Pannawat'),
(20, 'รามิล', NULL, 'สุชาตินิติกุล'),
(21, 'test', NULL, 'again'),
(22, 'สิริวรกุล', NULL, 'จิโรปการ'),
(23, 'ปัณณวัฒน์', NULL, 'ดุรงค์ฤทธิชัย'),
(24, 'ธนทัต', NULL, 'สินเจริญ'),
(26, 'วิโรจน์', NULL, 'ก้าวไกล'),
(28, 'พิธา', NULL, 'ก้าวไกล'),
(30, 'ตู่', NULL, 'ภพธร'),
(31, 'ทอม', NULL, 'อิศรา'),
(32, 'งง', 'งวย', 'งวยงง'),
(33, 'Love', NULL, 'You'),
(34, 'Kay', NULL, 'Ka');

-- --------------------------------------------------------

--
-- Table structure for table `guest_history`
--

CREATE TABLE `guest_history` (
  `guest_history_id` int(10) NOT NULL,
  `video_id` int(10) NOT NULL,
  `guest_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest_history`
--

INSERT INTO `guest_history` (`guest_history_id`, `video_id`, `guest_id`) VALUES
(4, 22, 17),
(5, 23, 17),
(6, 24, 18),
(7, 25, 8),
(8, 26, 8),
(9, 27, 8),
(10, 28, 8),
(11, 29, 8),
(12, 30, 8),
(13, 31, 8),
(14, 32, 8),
(15, 33, 8),
(16, 34, 8),
(17, 35, 8),
(18, 36, 8),
(19, 37, 19),
(20, 39, 22),
(21, 30, 23),
(22, 20, 31),
(23, 41, 8),
(24, 42, 33),
(25, 44, 4),
(26, 45, 34);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_id` int(10) NOT NULL,
  `subsidiary_id` varchar(4) NOT NULL,
  `content_id` int(10) NOT NULL,
  `emcee_team_id` int(10) DEFAULT NULL,
  `program_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_id`, `subsidiary_id`, `content_id`, `emcee_team_id`, `program_name`) VALUES
(27, 'GD01', 12, 32, 'LangTuYen (ล้างตู้เย็น)'),
(28, 'GD01', 4, 31, 'NonBanPeun (นอนบ้านเพื่อน)'),
(29, 'GD01', 10, NULL, 'TGIF'),
(30, 'GD01', 4, 33, 'If GPS does not exists'),
(31, 'HR01', 7, 33, 'Happy Retire'),
(32, 'HR01', 9, NULL, 'How to love'),
(33, 'HR01', 5, NULL, 'Bangkok in old time'),
(34, 'HR01', 8, NULL, 'How to be a millionaire'),
(35, 'TC01', 12, NULL, 'Omakase'),
(36, 'TC01', 4, NULL, 'Wander around Japan'),
(37, 'TC01', 6, NULL, 'Ed 7 Wi'),
(38, 'TC01', 9, NULL, 'Brief'),
(39, 'CP01', 6, 39, 'นอนบ้านพี่'),
(40, 'TC01', 13, 31, 'ไม่เศร้านะ'),
(41, 'GD01', 6, 31, 'นอนเรื่อย ๆ'),
(42, 'TE02', 14, 31, 'นอนบ้าน');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(10) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(10, 'Director'),
(11, 'Creative'),
(12, 'Editor'),
(13, 'Trainee'),
(14, 'Production'),
(15, 'Emcee'),
(16, 'Cameraman'),
(17, 'Janitor'),
(18, 'Sound engineer'),
(19, 'Manager'),
(20, 'Owner'),
(21, 'Head Director'),
(22, 'Head Creative'),
(23, 'Head Editor'),
(24, 'Head Production'),
(25, 'Head Cameraman'),
(26, 'Head Sound Engineer'),
(27, 'Lecturer'),
(28, 'Student'),
(29, 'Test1'),
(30, 'Test2');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `sponsor_id` int(10) NOT NULL,
  `sponsor_name` varchar(50) NOT NULL,
  `sponsor_email` varchar(50) NOT NULL,
  `sponsor_phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`sponsor_id`, `sponsor_name`, `sponsor_email`, `sponsor_phone`) VALUES
(2, 'บริษัท ไทยเพรซิเดนท์ฟูดส์ จำกัด (มหาชน)', 'mama@gmail.com', '028500000'),
(3, '7-11', 'seveneleven@hotmail.co.th', '0877711111'),
(4, 'AIS', 'ais@msn.com', '0943158489'),
(5, 'กรุงไทย', 'krungthai@gmail.com', '024861387'),
(6, 'PTT', 'ptt@mail.com', '026846884'),
(7, 'Computer Engineer', 'cpe@kmutt.ac.th', '024709387'),
(8, 'NGOMNGOM', 'ngom@mail.kmutt.ac.th', '0863417691');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  `team_id` int(10) DEFAULT NULL,
  `subsidiary_id` varchar(4) NOT NULL,
  `staff_fname` varchar(20) NOT NULL,
  `staff_mname` varchar(20) DEFAULT NULL,
  `staff_lname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `role_id`, `team_id`, `subsidiary_id`, `staff_fname`, `staff_mname`, `staff_lname`) VALUES
(4, 11, 6, 'GD01', 'Lonebird', NULL, 'Ramin'),
(5, 21, 12, 'TC01', 'Kong', NULL, 'Pannawat'),
(7, 13, 13, 'HR01', 'Golf', NULL, 'Siri'),
(10, 13, 6, 'GD01', 'Green', 'SoiPad', 'Lnwza'),
(11, 17, 14, 'TC01', 'Mark', 'MaNud', 'KropKuar'),
(12, 16, 6, 'GD01', 'Tor', NULL, 'Tanapat'),
(13, 25, 6, 'GD01', 'Phukao', NULL, 'Jirawat'),
(14, 11, 6, 'GD01', 'Moji', NULL, 'Jiraphat'),
(15, 13, 8, 'GD01', 'Pond', NULL, 'Woradon'),
(16, 12, 13, 'TC01', 'Medh', NULL, 'Chetipat'),
(17, 10, 13, 'TC01', 'Carrot', NULL, 'Nicha'),
(18, 19, 13, 'TC01', 'Fahsai', NULL, 'Kumarnjun'),
(19, 11, 13, 'TC01', 'Ying', NULL, 'Chada'),
(20, 15, 13, 'TC01', 'Pleng', NULL, 'Suprawee'),
(21, 17, 13, 'TC01', 'Jialin', NULL, 'Bai'),
(22, 19, NULL, 'HR01', 'Preawa', NULL, 'Kanyalak'),
(23, 21, NULL, 'HR01', 'Pond', NULL, 'Boonyarit'),
(24, 22, NULL, 'HR01', 'Poy', NULL, 'Warisara'),
(25, 24, NULL, 'HR01', 'Kim', NULL, 'Chanidapa'),
(26, 26, NULL, 'HR01', 'Mix', NULL, 'Nontawat'),
(27, 15, 12, 'TS08', 'Natty', NULL, 'Nichapa'),
(28, 12, 12, 'TS08', 'Kin', NULL, 'Rujikorn'),
(29, 11, 12, 'TS08', 'Rin', NULL, 'Ratirin'),
(30, 21, 12, 'TS08', 'Lookbua', NULL, 'Shayatib'),
(31, 17, 12, 'TS08', 'TungTung', NULL, 'Yosawat'),
(32, 28, 15, 'TE03', 'Sompong', NULL, 'Sudyod'),
(33, 12, 16, 'TC01', 'Poppy', 'Hai', 'Jai'),
(34, 10, 12, 'CE01', 'Love', 'Me', 'More'),
(35, 13, 17, 'GD01', 'Love', 'Me', 'LikeYouDo');

-- --------------------------------------------------------

--
-- Table structure for table `subsidiary`
--

CREATE TABLE `subsidiary` (
  `subsidiary_id` varchar(4) NOT NULL,
  `subsidiary_name` varchar(20) NOT NULL,
  `subsidiary_floor` int(2) DEFAULT NULL,
  `subsidiary_email` varchar(50) DEFAULT NULL,
  `subsidiary_phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subsidiary`
--

INSERT INTO `subsidiary` (`subsidiary_id`, `subsidiary_name`, `subsidiary_floor`, `subsidiary_email`, `subsidiary_phone`) VALUES
('CE01', 'CivilEngineer', 10, 'civil@gmail.com', NULL),
('CP01', 'Copium', NULL, NULL, NULL),
('DB01', 'Database', 9, 'database@gmail.com', '020872354'),
('GD01', 'GoodDayOfficial', 4, 'admin@slm.co.th', '091-465-1959'),
('HR01', 'HappyRetired', 5, NULL, NULL),
('PY01', 'Physical', NULL, NULL, NULL),
('TC01', 'TigerCry', 5, NULL, NULL),
('TE01', 'Test', NULL, 'test@test.com', NULL),
('TE02', 'testtest', 1, 'test@test.co.th', NULL),
('TE03', 'tripletest', NULL, NULL, '0268749812'),
('TE04', 'QuadTest', NULL, NULL, NULL),
('TE05', 'PenTest', NULL, NULL, NULL),
('TS08', 'ThailandSoi8', 6, 'thsoi8@gmail.com', '0992257465');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(10) NOT NULL,
  `team_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`) VALUES
(6, 'Soi8'),
(7, 'WatSaoLin'),
(8, 'WaNorn'),
(9, 'SornGyai'),
(10, 'SuCheWit'),
(11, 'CheWitSuGub'),
(12, 'NGOMNGOM'),
(13, 'HeartBreak'),
(14, 'RakFan'),
(15, 'Papaya'),
(16, 'Hamtaro'),
(17, 'Fifty');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `video_id` int(10) NOT NULL,
  `team_id` int(10) NOT NULL,
  `program_id` int(10) NOT NULL,
  `sponsor_id` int(10) DEFAULT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_duration_hour` int(10) UNSIGNED DEFAULT 0,
  `video_duration_min` int(10) UNSIGNED DEFAULT 0,
  `video_duration_sec` int(10) UNSIGNED DEFAULT 0,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_date` timestamp NULL DEFAULT NULL,
  `deadline_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `publish_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `sponsor_requirement` varchar(255) DEFAULT NULL,
  `sponsor_wage` double(9,2) DEFAULT NULL,
  `views` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video_id`, `team_id`, `program_id`, `sponsor_id`, `video_name`, `video_duration_hour`, `video_duration_min`, `video_duration_sec`, `start_date`, `finish_date`, `deadline_date`, `publish_date`, `sponsor_requirement`, `sponsor_wage`, `views`) VALUES
(19, 8, 27, 5, 'ไตสะเทือน! ชิม \"5 ปลาเค็ม\" อร่อยจนร้องขอข้าวต้ม', 0, 7, 47, '2022-12-25 07:13:30', '2023-01-11 07:13:30', '2023-01-13 07:13:30', '2023-01-17 07:13:30', 'ขอแบบเค็มถึงไตเลยคะ', 15000.00, 365764),
(20, 12, 28, 3, 'นอนบ้านเพื่อน SS.3 EP. 20', NULL, NULL, NULL, '2023-05-26 07:25:02', NULL, '2023-06-03 07:13:30', '2023-06-06 07:13:30', 'อยากให้พี่ว่านพูดถึงเมนูใหม่ใน All Cafe และพี่ตู่กับพี่ทอมเน้นไปทางระบบสมาชิกของ 7-11 ครับ', 5000.00, NULL),
(21, 6, 30, NULL, 'ตามล่าหากำนันแม้นกับแขกรับเชิญที่ไม่รู้อะไรเลย! l ถ้าโลกนี้ไม่มี GPS EP.1', 0, 23, 13, '2023-02-01 07:13:30', '2021-02-26 07:13:30', '2021-02-26 07:13:30', '2021-03-05 07:13:30', NULL, NULL, 2629484),
(22, 13, 30, NULL, 'ตั้ม-โดมกับภารกิจขับรถลงแพข้ามน้ำครั้งแรก! l ถ้าโลกนี้ไม่มี GPS EP.4', 0, 32, 27, '2021-03-29 17:00:00', '2021-04-25 17:00:00', '2021-04-29 17:00:00', '2021-05-13 17:00:00', NULL, NULL, 1813201),
(23, 13, 30, NULL, 'ตั้ม-โดม ย้อนวัยกลับไปโรงเรียนเก่า ตามหาข้าวร้านประจำ! l ถ้าโลกนี้ไม่มี GPS EP.5', 0, 32, 27, '2021-03-29 17:00:00', '2021-04-25 17:00:00', '2021-04-29 17:00:00', '2021-05-27 17:00:00', NULL, NULL, 1334102),
(24, 6, 30, NULL, 'ProjectPresentation101', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(25, 6, 30, NULL, 'ProjectPresentation102', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(26, 6, 30, NULL, 'ProjectPresentation103', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(27, 6, 30, NULL, 'ProjectPresentation104', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(28, 6, 30, NULL, 'ProjectPresentation105', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(29, 6, 30, NULL, 'ProjectPresentation106', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(30, 6, 30, NULL, 'ProjectPresentation107', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(31, 6, 30, NULL, 'ProjectPresentation108', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(32, 6, 30, NULL, 'ProjectPresentation109', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(33, 6, 30, NULL, 'ProjectPresentation110', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(34, 6, 30, NULL, 'ProjectPresentation111', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(35, 6, 30, NULL, 'ProjectPresentation112', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', NULL, NULL, NULL),
(36, 6, 30, 4, 'ProjectPresentation113', 0, 0, 0, '2023-05-25 17:00:00', NULL, '2023-06-08 17:00:00', '2023-06-11 17:00:00', 'While travel talk about new promotion of AIS', 20000.00, NULL),
(37, 13, 27, 5, 'PokemonGo', 0, 0, 0, '2023-05-26 14:26:41', NULL, '2023-06-22 17:00:00', '2023-06-26 17:00:00', 'Pokemon Go', 3000.00, NULL),
(38, 13, 40, 8, 'ไปเลยสุดยอด', 0, 0, 0, '2023-05-27 13:35:11', NULL, '2023-06-09 17:00:00', '2023-06-13 17:00:00', 'ขอให้ถึงพลูโต', 50000.00, NULL),
(39, 9, 38, NULL, 'สุดยอดไปเลย', 0, 0, 0, '2023-05-27 13:36:57', '2023-06-21 17:00:00', '2023-06-23 17:00:00', '2023-06-25 17:00:00', NULL, NULL, NULL),
(40, 9, 32, NULL, 'Test15684', 1, 32, 48, '2023-05-20 17:00:00', '2023-05-25 17:00:00', '2023-05-26 17:00:00', '2023-05-27 17:00:00', NULL, NULL, NULL),
(41, 11, 41, NULL, 'test95984', 0, 0, 0, '2023-05-27 14:53:04', NULL, '2023-06-09 17:00:00', '2023-06-16 17:00:00', NULL, NULL, NULL),
(42, 6, 27, NULL, 'Tesst489741', 0, 0, 0, '2023-05-27 14:53:51', NULL, '2023-05-30 17:00:00', '2023-06-02 17:00:00', NULL, NULL, NULL),
(43, 9, 33, NULL, 'Test65487', 0, 0, 0, '2023-05-29 07:20:57', NULL, '2023-05-30 17:00:00', '2023-06-02 17:00:00', NULL, NULL, NULL),
(44, 6, 27, NULL, 'Test348983', 0, 0, 0, '2023-05-29 07:21:28', NULL, '2023-06-02 17:00:00', '2023-06-09 17:00:00', NULL, NULL, NULL),
(45, 6, 27, NULL, 'Test35484', 0, 0, 0, '2023-05-29 07:22:03', NULL, '2023-06-01 17:00:00', '2023-06-02 17:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `work_id` int(10) NOT NULL,
  `video_id` int(10) DEFAULT NULL,
  `staff_id` int(10) NOT NULL,
  `work_detail` varchar(255) NOT NULL,
  `is_done` tinyint(1) NOT NULL DEFAULT 0,
  `is_done_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`work_id`, `video_id`, `staff_id`, `work_detail`, `is_done`, `is_done_date`) VALUES
(1, 20, 4, 'Content list in video', 0, NULL),
(2, NULL, 10, 'Learning on new software', 1, '2023-05-26 12:39:43'),
(3, 36, 14, 'Design new infograpgic', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `emcee_contract`
--
ALTER TABLE `emcee_contract`
  ADD PRIMARY KEY (`emcee_contract_id`),
  ADD KEY `emcee_contract_ibfk_1` (`emcee_team_id`),
  ADD KEY `emcee_contract_ibfk_2` (`staff_id`);

--
-- Indexes for table `emcee_team`
--
ALTER TABLE `emcee_team`
  ADD PRIMARY KEY (`emcee_team_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `feedback_ibfk_1` (`work_id`),
  ADD KEY `feedback_ibfk_2` (`staff_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `guest_history`
--
ALTER TABLE `guest_history`
  ADD PRIMARY KEY (`guest_history_id`),
  ADD KEY `guest_history_ibfk_1` (`video_id`),
  ADD KEY `guest_history_ibfk_2` (`guest_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_id`),
  ADD KEY `program_ibfk_1` (`subsidiary_id`),
  ADD KEY `program_ibfk_2` (`content_id`),
  ADD KEY `emcee_team_id` (`emcee_team_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`sponsor_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `staff_ibfk_1` (`role_id`),
  ADD KEY `staff_ibfk_3` (`subsidiary_id`),
  ADD KEY `staff_ibfk_2` (`team_id`);

--
-- Indexes for table `subsidiary`
--
ALTER TABLE `subsidiary`
  ADD PRIMARY KEY (`subsidiary_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `video_ibfk_1` (`team_id`),
  ADD KEY `video_ibfk_2` (`program_id`),
  ADD KEY `video_ibfk_3` (`sponsor_id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`work_id`),
  ADD KEY `work_ibfk_1` (`video_id`),
  ADD KEY `work_ibfk_2` (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `emcee_contract`
--
ALTER TABLE `emcee_contract`
  MODIFY `emcee_contract_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `emcee_team`
--
ALTER TABLE `emcee_team`
  MODIFY `emcee_team_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `guest_history`
--
ALTER TABLE `guest_history`
  MODIFY `guest_history_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `program_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `sponsor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `video_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `work_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emcee_contract`
--
ALTER TABLE `emcee_contract`
  ADD CONSTRAINT `emcee_contract_ibfk_1` FOREIGN KEY (`emcee_team_id`) REFERENCES `emcee_team` (`emcee_team_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `emcee_contract_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`work_id`) REFERENCES `work` (`work_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `guest_history`
--
ALTER TABLE `guest_history`
  ADD CONSTRAINT `guest_history_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `guest_history_ibfk_2` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`subsidiary_id`) REFERENCES `subsidiary` (`subsidiary_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `program_ibfk_2` FOREIGN KEY (`content_id`) REFERENCES `content` (`content_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `program_ibfk_3` FOREIGN KEY (`emcee_team_id`) REFERENCES `emcee_team` (`emcee_team_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `staff_ibfk_3` FOREIGN KEY (`subsidiary_id`) REFERENCES `subsidiary` (`subsidiary_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `video_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `program` (`program_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `video_ibfk_3` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`sponsor_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `work`
--
ALTER TABLE `work`
  ADD CONSTRAINT `work_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `video` (`video_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `work_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
