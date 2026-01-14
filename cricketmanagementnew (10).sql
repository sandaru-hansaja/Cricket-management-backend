-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2026 at 06:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricketmanagementnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` bigint(20) NOT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `contact_no`, `name`, `user_id`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(9, '+94714403535', 'E.M. Shaleen Saranga', 178, NULL, NULL, NULL, NULL),
(20, '+94711697374', 'Mr.Sameera', 233, 'admin01', '2025-02-25 08:13:55.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `coach_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`coach_id`, `address`, `contact_no`, `date_of_birth`, `description`, `email`, `image`, `name`, `role_id`, `user_id`, `status`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(40, 'galle', '0771234567', '1989-02-08', 'Head Coach', 'yo@gmail.com', 'Indika.jpg', 'M.H.Indika Chandana', 2, 249, 'Inactive', 'IT Master', '2025-03-22 12:45:27.000000', 'admin01', '2025-09-28 13:50:31.000000'),
(41, 'galle', '0771234567', '1988-05-23', 'Assistant coach ', 'your@gmail.com', 'sidath.jpg', 'Sidath Priyankara', 2, 250, 'Inactive', 'IT Master', '2025-03-22 12:49:40.000000', 'admin01', '2025-04-28 08:31:14.000000'),
(42, 'Bussa', '+94758467734', '1994-09-23', 'Richmond U 19 Deputy Coad year 2024-2025', 'maduwanthal264@gmail.com', 'madu01.jpg', 'Lahiru Maduwantha', 2, 252, 'Active', 'admin01', '2025-04-22 05:01:47.000000', 'admin01', '2025-04-22 09:25:40.000000'),
(43, 'Galle', '+94774400684', '1975-04-19', 'Head Coach U 19 for year 2025', 'indikachandana91@gmail.com', 'chandana01.jpg', 'Chandana Indika', 2, 253, 'Inactive', 'admin01', '2025-04-22 05:14:47.000000', 'Admin003', '2025-12-24 05:36:31.000000'),
(44, 'No 381/A/2, Bandanage watta, Heenatigala, Talpe. ', '+94774552691', '1983-09-20', 'Deputy Coach U 19 for year 2024 & 2025', 'sidathpriyankara0920@gmail.com', 'priyanka01.jpg', 'Sidath Priyankara', 2, 254, 'Active', 'admin01', '2025-04-22 05:18:23.000000', 'admin01', '2025-04-28 08:37:24.000000'),
(45, 'Rabber watte road, Delkanda', '0712234052', '2022-08-02', 'Coaching base', 'bouncer@gmail.com', 'bouncer01.jpg', 'Mr. Bouncer', 2, 289, 'Active', 'admin01', '2025-08-04 03:53:48.000000', NULL, NULL),
(46, 'No 27, Rathna Udagama, Boossa', '0774036418', '1992-06-07', 'Head Coach', 'msandaruwan723@gmail.com', 'Mahesh.jpg', 'Mahesh Sandaruwan', 2, 292, 'Active', 'Admin003', '2025-12-24 05:37:06.000000', NULL, NULL),
(47, 'Habaraduwa,galle', '0766489620', '1997-06-23', 'Ass.coach', 'avindutheeksha@gmail.com', 'Avindu.jpg', 'Avindu Theekshana', 2, 293, 'Active', 'Admin003', '2025-12-24 05:50:34.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coach_match`
--

CREATE TABLE `coach_match` (
  `match_id` bigint(20) NOT NULL,
  `coach_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coach_match`
--

INSERT INTO `coach_match` (`match_id`, `coach_id`) VALUES
(46, 45),
(82, 45),
(140, 40),
(140, 41),
(141, 42),
(141, 43),
(141, 44),
(142, 42),
(142, 43),
(142, 44),
(146, 42),
(146, 43),
(146, 44),
(147, 42),
(147, 43),
(147, 44),
(148, 42),
(148, 43),
(148, 44),
(151, 42),
(151, 43),
(151, 44),
(152, 42),
(152, 43),
(152, 44),
(153, 42),
(153, 43),
(153, 44),
(154, 42),
(154, 43),
(154, 44),
(155, 42),
(155, 43),
(155, 44),
(156, 42),
(156, 43),
(156, 44),
(157, 42),
(157, 43),
(157, 44),
(158, 42),
(158, 43),
(158, 44),
(159, 42),
(159, 43),
(159, 44),
(160, 42),
(160, 43),
(160, 44),
(161, 42),
(161, 43),
(161, 44),
(162, 42),
(162, 43),
(162, 44),
(163, 42),
(163, 43),
(163, 44),
(164, 43),
(164, 44),
(166, 43),
(166, 44),
(170, 42),
(170, 44),
(171, 42),
(171, 44),
(172, 42),
(172, 44),
(173, 42),
(174, 42),
(175, 42),
(176, 45),
(177, 45),
(178, 45),
(179, 45),
(180, 45),
(181, 45),
(182, 45),
(183, 45),
(184, 42),
(184, 46),
(184, 47),
(185, 42),
(185, 44),
(185, 46),
(185, 47),
(186, 42),
(186, 44),
(186, 46),
(186, 47),
(187, 42),
(187, 46),
(187, 47),
(188, 42),
(188, 44),
(188, 46),
(188, 47),
(189, 45),
(190, 45),
(191, 45);

-- --------------------------------------------------------

--
-- Table structure for table `coach_practise_session`
--

CREATE TABLE `coach_practise_session` (
  `prac_id` bigint(20) NOT NULL,
  `coach_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coach_practise_session`
--

INSERT INTO `coach_practise_session` (`prac_id`, `coach_id`) VALUES
(41, 44),
(42, 44);

-- --------------------------------------------------------

--
-- Table structure for table `historical_player_stats`
--

CREATE TABLE `historical_player_stats` (
  `id` bigint(20) NOT NULL,
  `balls` int(11) NOT NULL,
  `centuries` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `fifties` int(11) NOT NULL,
  `fours` int(11) NOT NULL,
  `inning` varchar(255) DEFAULT NULL,
  `match_type` varchar(255) DEFAULT NULL,
  `overs` decimal(38,2) DEFAULT NULL,
  `runs` int(11) NOT NULL,
  `runs_conceded` int(11) NOT NULL,
  `sixers` int(11) NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `wickets` int(11) NOT NULL,
  `player_id` bigint(20) NOT NULL,
  `catches` int(11) NOT NULL,
  `maidens` int(11) NOT NULL,
  `no_balls` int(11) NOT NULL,
  `run_outs` int(11) NOT NULL,
  `stumps` int(11) NOT NULL,
  `wides` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` bigint(20) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `news_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image_url`, `news_id`) VALUES
(93, 'https://firebasestorage.googleapis.com/v0/b/cricketmanagement-6c0fb.appspot.com/o/news%2FIMG-20230813-WA0030(2).jpg?alt=media&token=d6356a9b-00dc-48ba-a22b-a91d52f36070', 25),
(94, 'https://firebasestorage.googleapis.com/v0/b/cricketmanagement-6c0fb.appspot.com/o/news%2FIMG-20230603-WA0043.jpg?alt=media&token=95e4eef7-8613-4f6d-8b04-8ece289a9580', 25),
(108, 'https://firebasestorage.googleapis.com/v0/b/cricketmanagement-6c0fb.appspot.com/o/news%2FIMG-20240412-WA0021.jpg?alt=media&token=a4c09519-453f-40c1-86d1-868257df3d5a', 25),
(113, 'https://firebasestorage.googleapis.com/v0/b/cricketmanagement-6c0fb.appspot.com/o/news%2FIMG-20230607-WA0027.jpg?alt=media&token=7e02dc41-dcfc-4b1c-ad3f-8862d4e587f5', 25),
(121, 'https://firebasestorage.googleapis.com/v0/b/cricketmanagement-6c0fb.appspot.com/o/news%2FIMG-20230813-WA0032.jpg?alt=media&token=1e42ed76-4fa5-4cea-8329-10f0d5da62ef', 25),
(127, 'https://firebasestorage.googleapis.com/v0/b/cricketmanagement-6c0fb.appspot.com/o/news%2FIMG-20240228-WA0095.jpg?alt=media&token=95cf726f-e3c0-4043-b9b8-f7c42067d651', 25),
(139, 'https://firebasestorage.googleapis.com/v0/b/cricketmanagement-6c0fb.appspot.com/o/news%2FIMG-20241030-WA0157.jpg?alt=media&token=32b3fa64-acff-48b3-9dcf-3895a1865890', 25),
(177, '0f261587-9b9d-43a4-8f6c-5337fb250fe2_pk4.jpeg', 29),
(178, 'd0d01fbc-d359-4968-b02c-af024bca6aa7_jk.jpg', 29),
(179, '5df80b46-d1e1-45c0-a08a-5f0d7d1bb70a_jk3.jpeg', 29),
(207, 'ab5af091-05bd-4f7b-a373-88975adeade3_IMG-20241030-WA0158.jpg', 25),
(208, '0418b212-707b-4f30-8a33-6e0476855c57_facebook_1730309431304_7257443768958714133.jpg', 25),
(209, '830795df-c7fd-4226-8e71-b1d926de754f_IMG-20241030-WA0154.jpg', 25),
(210, 'a3a42ef8-f060-4af7-a94d-386eb170dd4e_IMG-20241030-WA0187.jpg', 25),
(211, 'ca402a98-8973-45c6-96bf-f5dfa87b7f10_IMG-20241031-WA0039.jpg', 25),
(212, '76a96ae7-a526-4838-a926-a169d5860c23_IMG-20241031-WA0045.jpg', 25),
(213, '7236cb55-d092-4391-99c4-64e01ff1f3c9_IMG-20241030-WA0189.jpg', 25),
(214, 'de15458a-b018-43e0-b5fe-f49d3fd94c85_IMG-20241030-WA0188.jpg', 25),
(215, '13e71bb7-87ad-45a4-9c05-f84e1f9f5566_Tharindu Weerasinghe.jpg', 25),
(216, '125db626-41ac-4b69-a176-f0764728678c_IMG-20241030-WA0159.jpg', 25),
(217, '939613aa-377e-4457-a775-a548587b94c5_IMG-20241031-WA0043.jpg', 25),
(218, '8f1540f5-5753-4920-a8fc-6224c637c028_IMG-20241030-WA0156.jpg', 25),
(219, 'e0395c7e-593b-4d8b-987f-22f3f4fe8002_IMG-20241030-WA0155.jpg', 25),
(220, '7363bdfd-2922-4508-b23f-d1f836ff51b1_IMG-20241030-WA0160.jpg', 25),
(221, 'dacb7472-5926-4e13-a1b8-c81c11139e34_IMG-20241030-WA0153.jpg', 25),
(222, 'dfaa875e-178e-48cc-86da-df24870120db_Asitha.jpg', 25),
(223, '9b00798a-4c69-44bb-9715-84e84539a13c_IMG-20241030-WA0157.jpg', 25),
(224, '3ce553c8-aaeb-40ad-b874-d52f97ff19ba_IMG-20230607-WA0024.jpg', 25),
(225, 'dc28a359-ec14-49b2-9a4c-6d04ddb1a4db_IMG-20241030-WA0169.jpg', 25),
(226, '70174e12-a84a-4f3b-978d-6b9c5dd42c2e_IMG-20230517-WA0072.jpg', 25),
(227, '218d1552-c8b2-42ff-a7e9-f1039320816f_IMG-20230607-WA0022.jpg', 25),
(228, 'ba818374-adf5-442e-a949-f593472eaa0c_IMG-20230603-WA0042.jpg', 25),
(229, 'c0d17ad9-2c97-4c64-82f7-527945379d95_IMG-20230603-WA0043.jpg', 25),
(230, '34f40039-04de-407b-b60b-7eff1ac99839_IMG-20230603-WA0055.jpg', 25),
(231, '39def939-39f9-4beb-bca8-d26027cd69ca_IMG-20230607-WA0026.jpg', 25),
(232, '5d01bb43-7a9e-4228-b6fe-68b5d61cb8be_IMG-20241030-WA0161.jpg', 25),
(233, '7cdb1d79-5665-4e6e-900c-c973979bbf6f_IMG-20241030-WA0166.jpg', 25),
(234, 'e02235d9-79c4-498b-ac4f-ad70e98e5d52_IMG-20241030-WA0167.jpg', 25),
(235, '98dbb767-016a-423c-be06-a3634972ed2a_IMG-20230523-WA0066.jpg', 25),
(236, 'e2fd3aa5-cd98-4592-8274-5c840507a5ee_IMG-20241030-WA0165.jpg', 25),
(237, '3569c27c-86f6-4da6-ac49-35db6639ad24_IMG-20241030-WA0162.jpg', 25),
(238, '9feb8111-88b8-4b67-abff-0d9f416a1cc0_IMG-20241030-WA0164.jpg', 25),
(239, 'e72a2e61-dfb2-4472-831f-9dc5faccad6a_IMG-20230813-WA0040.jpg', 25),
(240, 'c011a384-8250-4c1f-b573-124ef623bc93_IMG-20240322-WA0032.jpg', 25),
(241, 'bc8a8cfb-cae4-4050-8126-e52781bbabae_IMG-20230607-WA0031.jpg', 25),
(242, '9e7d57e9-f727-4701-9f62-5f23c639bee1_IMG-20241030-WA0091.jpg', 25),
(243, 'e0a89cc0-c153-42ae-82e5-bbda5b0ea78e_IMG-20241030-WA0080.jpg', 25),
(244, '2ab68e19-9b17-4dd6-bc59-24b13334eb3a_IMG-20230813-WA0027.jpg', 25),
(245, 'fea8bfe4-cbcc-4d37-a7c6-99f85e0a60fc_IMG-20241030-WA0113.jpg', 25),
(246, '5bd761f1-bbe3-4292-9450-00784e4b8c01_IMG-20240228-WA0022.jpg', 25),
(247, '82e50700-bfba-4566-8a86-35b7b30a6070_IMG-20241030-WA0116.jpg', 25),
(248, '8f47fe81-3504-4949-bacc-a74925e13ec1_IMG-20241030-WA0072.jpg', 25),
(249, 'f2594c53-3140-4209-93b3-c46a55c8724e_IMG-20241030-WA0118.jpg', 25),
(250, 'b4cb104e-b3ce-448e-8ecb-41fbb29c3bc1_IMG-20241030-WA0081.jpg', 25),
(251, '366505ce-5d36-4d02-a91f-5140c97629c3_IMG-20230814-WA0043.jpg', 25),
(252, 'c6814aa2-7729-4be4-b75e-b3e7a13355d0_IMG-20230607-WA0030.jpg', 25),
(253, 'e760b44f-2fcb-408f-bf02-1ae4f6331b0d_IMG-20241030-WA0074.jpg', 25),
(254, '3ccda92a-8845-48ed-9653-364dc2cc43ee_IMG-20230813-WA0044.jpg', 25),
(255, '9572a4f6-1d17-43f6-ad76-e4d52fb83590_IMG-20230813-WA0045.jpg', 25),
(256, 'cd17f4a3-1b80-44ef-ace4-c8c1c7593d30_IMG-20240414-WA0196.jpg', 25),
(257, '76ebafd7-4b86-43de-aa9f-b9ad06321c18_IMG-20241030-WA0073.jpg', 25),
(258, '63c7480b-2c72-4c38-980e-2146355a7d5d_IMG-20240414-WA0193.jpg', 25),
(259, '0067631e-7ff6-4af2-acbb-9ee7b4c0520b_IMG-20241030-WA0109.jpg', 25),
(260, 'c918ef66-0c03-4b90-9571-c2d1069d43b0_IMG-20241030-WA0077.jpg', 25),
(261, '98156a08-4353-4f4d-9ed9-86bcd3d0fb7e_IMG-20241030-WA0110.jpg', 25),
(262, '8fcbfdbe-29f5-44f0-bbfd-a69286d22039_IMG-20230813-WA0032.jpg', 25),
(263, '990c7a07-6524-44b9-855c-516ecca0e14a_IMG-20240321-WA0036.jpg', 25),
(264, '69009e5e-93da-46b3-a322-479118d6e112_IMG-20241030-WA0087.jpg', 25),
(265, '46f027e2-6455-4e92-9200-9f6cf45c9891_IMG-20241030-WA0111.jpg', 25),
(266, '6a072f01-298e-4395-b516-f3876d527710_IMG-20241030-WA0079.jpg', 25),
(267, 'a3350b55-123e-4f16-959b-ce775d657d7c_IMG-20241030-WA0114.jpg', 25),
(268, '51f632a4-089b-4e34-a9ec-73d212236886_IMG-20240227-WA0089.jpg', 25),
(269, '27973a72-b291-4a44-b1d3-8e21cbebc3a5_IMG-20241030-WA0071.jpg', 25),
(270, '6b14bd56-b0b2-4105-88f8-b2512775f634_IMG-20241030-WA0088.jpg', 25),
(271, '5a9bdf91-6220-4077-bb7e-d41272f8cbb7_IMG-20241030-WA0090.jpg', 25),
(272, '1645b449-eed5-48fb-bd5f-387aa969c1e0_IMG-20240315-WA0123.jpg', 25),
(273, '98e8a97b-4ccb-4921-ad83-9510e48079cd_IMG-20240412-WA0019.jpg', 25),
(274, '50cc17bc-2c77-4322-a318-5470f24382d1_IMG-20241030-WA0086.jpg', 25),
(275, '6a4cd65c-d428-4e1f-aa9f-4ce77252b68c_Lasantha.jpg', 25),
(276, '04b71ddb-2b70-4658-bfc7-8b5c5e8135c6_IMG-20240414-WA0191.jpg', 25),
(277, '3a497b6e-e192-40b3-9672-0af366861c5d_IMG-20230607-WA0029.jpg', 25),
(278, '9e939e30-19b7-4415-81f7-c38b3945b94c_IMG-20230813-WA0030(2).jpg', 25),
(279, '14e5579a-9888-4431-adf4-c881711eccac_IMG-20241030-WA0117.jpg', 25),
(280, '2c61beab-fc1b-4b7b-8c16-35deabf9f042_IMG-20230607-WA0027.jpg', 25),
(281, 'd8070b06-5aa8-4c22-9c99-17f2fcce1fdc_IMG-20241030-WA0085.jpg', 25),
(282, '0be6a775-75e4-4998-a9a6-05fdafbe0a9e_IMG-20241030-WA0076.jpg', 25),
(283, 'bf94bab8-2519-49bd-b404-d0eb163cc63c_IMG-20241030-WA0108.jpg', 25),
(284, '314679e4-d4e5-4e59-b9e0-3955d7d83d30_IMG-20240317-WA0064.jpg', 25),
(285, 'bd95acdf-9ffa-476a-bf26-431fd67be9df_IMG-20240317-WA0063.jpg', 25),
(286, 'da97bf3e-015e-4f3c-a1c0-3d4d1555a8b5_IMG-20241030-WA0089.jpg', 25),
(287, '94b90112-12c4-4a53-a578-61f2cefec089_IMG-20240227-WA0146.jpg', 25),
(288, 'e12e635d-a756-418d-b444-9aed97af1e24_IMG-20240227-WA0086.jpg', 25),
(289, '2a71ac6b-44f5-4477-9f6b-d1aae2f70bcf_IMG-20230607-WA0025.jpg', 25),
(290, '2d8f4074-8871-494c-90f8-c4ca432e04df_IMG-20240227-WA0145.jpg', 25),
(291, 'f44f63dc-e2a5-4f50-891f-24d0cfa32190_IMG-20240412-WA0021.jpg', 25),
(292, 'fbd307fb-3e24-4894-8c8d-ced541fdd5b4_IMG-20240414-WA0188.jpg', 25),
(293, '20a048ff-9cf6-44df-bfe8-dd32dc4fb587_IMG-20230813-WA0033.jpg', 25),
(294, 'a604e023-6ddf-47ef-ab41-87b054add631_IMG-20230613-WA0021.jpg', 25),
(295, '7dd48dd4-517f-4382-bad0-7b46b1a51e16_IMG-20241030-WA0082.jpg', 25),
(296, 'eef2f1c5-d110-45f4-9c34-d22a6b093a52_IMG-20230814-WA0041.jpg', 25),
(297, '0ae314b6-a9e2-4dcf-909c-0bd58f9fed10_IMG-20240228-WA0095.jpg', 25),
(298, '33ff6db0-a5c5-4914-8ed1-0e0a8a60b136_IMG-20241030-WA0115.jpg', 25),
(299, '447676d0-f2b8-45d2-b99d-742adf21de19_IMG-20241030-WA0075.jpg', 25),
(300, '655fdf43-a299-4640-9028-eb730c082321_Sirimanne.jpg', 25),
(301, 'be791d5c-4d4a-464f-9086-4cd766276b32_IMG-20240321-WA0037.jpg', 25),
(309, '6a543993-66fa-413f-ae85-98db32583af1_IMG-20241217-WA0103.jpg', 37),
(310, '798307d0-7343-44c2-b175-64470e92652f_IMG-20241217-WA0104.jpg', 37),
(311, 'ab85f147-ecbf-4714-948a-2b36d5f0a231_IMG-20241217-WA0100.jpg', 37),
(312, 'f0632f3a-7de7-4477-a1a7-a48f4385cdc1_IMG-20241217-WA0101.jpg', 37),
(313, 'cd2f7547-9b1e-4327-b297-ec5f5c178fe9_IMG-20241217-WA0102.jpg', 37),
(314, '77054865-235e-4eca-a4a5-d3bc57f1c539_IMG-20241217-WA0105.jpg', 37),
(315, '39dc2f4f-5082-4445-a6a6-91bfadcd5ea5_asa.jpeg', 38),
(316, 'b7c7de83-b003-49ae-9825-899814705eff_Frame 152.png', 38),
(317, '17866921-7f5c-4ea0-8bff-bdac4f617d1e_Heroes_BacK_Image.png', 38),
(318, '36a71023-27d8-4734-8df8-3477a8833d8f_Frame 152.png', 39),
(319, 'b7eedea5-6d09-40d8-90b6-20e67e00e0e7_Score_card_back_image.png', 39),
(320, 'b40a8bc6-222b-4d65-a962-3273928fff0f_RichmondTeam.jpg', 39),
(321, '58163be7-e55b-4ce0-814d-80da94a66897_IMG-20241219-WA0075.jpg', 40),
(322, 'f61d0af5-982c-4a66-8f23-4c2d50ca83fa_FB_IMG_1735277271314.jpg', 41),
(323, '0de5b614-1c0a-4346-a4ea-d9c6fced616d_FB_IMG_1735277303280.jpg', 41),
(324, 'd7e590f5-9252-4d78-a615-87b007938f9e_FB_IMG_1735277308365.jpg', 41),
(325, '7f6de781-131c-4d58-9185-e037dbed99cd_FB_IMG_1735277260346.jpg', 41),
(326, '890e0810-2246-4235-93c9-fcda6e18ed8e_FB_IMG_1735277289306.jpg', 41),
(327, '3821584d-5f9b-4ca5-8b3a-9d465b5a510d_FB_IMG_1735277277270.jpg', 41),
(328, '5d53d321-1d56-4008-8a09-fd5773a3ce8c_FB_IMG_1735277313701.jpg', 41),
(329, 'ac27f24c-2bf5-41a1-b288-31197d40867f_FB_IMG_1735277283774.jpg', 41),
(330, 'b1192bb4-f83a-4991-8e68-35495e1ed6c2_FB_IMG_1735277296862.jpg', 41),
(331, '9a0f8957-5b10-47c3-beab-ae4e1030861f_FB_IMG_1735277319006.jpg', 41),
(332, '7117dd35-b35d-41d7-86c8-b0adb9c6d34f_FB_IMG_1735277997218.jpg', 42),
(333, 'bdcb1ac6-4a1f-4e9b-8e48-37310f705006_FB_IMG_1735277970014.jpg', 42),
(334, 'e46e33a1-8bf7-4b01-b6ed-bbe68f3c68dd_FB_IMG_1735277962931.jpg', 42),
(335, '0c2605ca-6257-420f-8382-41d02f41a021_FB_IMG_1735278003659.jpg', 42),
(336, '361a652b-1c7a-41e9-aee0-776238faf9c7_FB_IMG_1735278010211.jpg', 42),
(337, '0df1b789-5229-4717-a1d0-8ea03c0b71ea_FB_IMG_1735277927791.jpg', 42),
(338, 'cdbbb791-187a-4b7d-997b-045f8845de15_FB_IMG_1735277948513.jpg', 42),
(339, '7d37320b-52c3-4469-89a4-12800f7d347e_FB_IMG_1735277954991.jpg', 42),
(340, 'ae9f66d9-597c-4c49-8399-57b1b9ca1a28_FB_IMG_1735277984037.jpg', 42),
(341, 'a852591e-2758-45fb-9faa-2c82f01430b2_FB_IMG_1735278052809.jpg', 42),
(342, '4601cf98-e282-49dd-8e19-a1aca4f1a9ab_FB_IMG_1735277976602.jpg', 42),
(343, 'f9179ba6-beb3-4ae5-8200-9c9c9868396e_FB_IMG_1735277991355.jpg', 42),
(344, '181b98e9-bd94-41ce-8131-18a5047e83bc_IMG_20241216_182605.jpg', 43),
(350, 'f31f495f-df3c-4ea3-92f0-160c8a1f3f6c_Year 1957 Mahinda Team.jpg', 47),
(351, 'fec3ba63-15fa-42d5-a5d2-41cb1154fb3c_Under 19Richmond-Cricket-Team-2018.jpg', 48),
(352, 'b77f0c70-b1dc-49d1-8f64-8707a1170456_Trinity-College-vs-Richmond-College- Year 2024.jpeg', 49),
(356, 'a7bddd71-f72b-47ac-863f-ad47c9135881_RCC Logo.jpg', 52),
(357, 'f8f0531a-95c9-4da6-b03f-a0e65c515930_IMG-20250804-WA0057.jpg', 53),
(358, 'd4df63eb-2437-4c08-a6f1-045c11ad8168_IMG-20250804-WA0039.jpg', 53),
(359, '036789c9-655f-4638-9a09-db747e1e3aeb_IMG-20250804-WA0058.jpg', 53),
(360, '8816596d-ba03-487c-8733-ca0ade488e92_IMG-20250804-WA0098.jpg', 53),
(361, '4699e921-2e1c-4dc8-ad99-1e68ec567f9e_Ananda Match 06122025.jpg', 54);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `match_id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `match_captain` varchar(255) DEFAULT NULL,
  `opposition` varchar(255) DEFAULT NULL,
  `tier` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `umpires` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `team_id` bigint(20) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `match_vice_captain` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `captain_id` bigint(20) DEFAULT NULL,
  `vice_captain_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`match_id`, `date`, `division`, `match_captain`, `opposition`, `tier`, `time`, `type`, `umpires`, `venue`, `team_id`, `logo`, `created_by`, `created_on`, `match_vice_captain`, `updated_by`, `updated_on`, `captain_id`, `vice_captain_id`) VALUES
(43, '2021-07-31', 'Division 1', 'Lasantha De Silva', 'Colombo Masters', 'Tier A', '10:00', 'T20', 'A & B', 'Bloomfield Grounds ', 1, 'Colombo Masters.jpg', NULL, NULL, 'Prasad Abeysundara', 'admin01', '2024-12-28 17:33:02.000000', 66, 63),
(44, '2021-12-05', 'Division 1', 'Prasad Abeysundara', 'Southern Gladiators', 'Tier A', '10:00', 'T20', 'A & B', 'Hikkaduwa', 1, 'Southern Gladiators.jpg', NULL, NULL, 'Pusitha Gunawardena ', 'admin01', '2024-12-06 20:54:11.000000', NULL, NULL),
(46, '2021-12-12', 'Division 1', 'Prasad Abeysundara', 'Lanka Cavaliers', 'Tier A', '10:00', 'T20', 'A and B', 'NCC Grounds ', 1, 'Lanka Cavaliers.jpg', NULL, NULL, 'Pusitha Gunawardena ', 'admin01', '2025-12-12 07:40:50.000000', 47, 62),
(47, '2022-01-16', 'Division 1', 'Pusitha Gunawardena ', 'Kingswood Old boys', 'Tier A', '10:00', 'T20', 'A & B', 'Bloomfield Grounds', 1, 'Kingswood Old boys.jpg', NULL, NULL, 'Nishantha Mendis', 'admin01', '2024-12-28 17:34:07.000000', 47, 45),
(48, '2022-02-27', 'Division 1', 'Pusitha Gunawardena ', 'Royal Masters', 'Tier A', '10:00', 'T20', 'A & B', 'Army Grounds Mattegoda', 1, 'Royal Masters.jpg', NULL, NULL, 'Nishantha Mendis', 'admin01', '2024-12-28 17:34:25.000000', 61, 47),
(49, '2022-03-27', 'Division 1', 'Pusitha Gunawardena ', 'Vintage Cricket Circle', 'Tier A', '10:00', 'T20', 'A & B', 'Pannipitiya Dharmapal College ', 1, 'Vintage Cricket Circle.jpg', NULL, NULL, 'Nishantha Mendis', 'admin01', '2024-12-28 17:34:40.000000', 55, 49),
(51, '2022-05-08', 'Division 1', 'Pusitha Gunawardena ', 'Peterites', 'Tier A', '10:00', 'T20', 'A & B', 'Aarons Cricket Grounds Matugama', 1, 'Peterites.jpg', NULL, NULL, 'Nishantha Mendis', 'admin01', '2024-12-28 17:35:05.000000', 57, 62),
(52, '2022-06-19', 'Division 1', 'Pusitha Gunawardena ', 'Colombo Masters', 'Tier A', '10:00', 'T20', 'P.Liyanage/ Thusitha', 'SAPPER STADIUM', 1, 'Colombo Masters.jpg', NULL, NULL, 'Nishantha Mendis', 'admin01', '2024-12-28 17:35:49.000000', 63, 57),
(54, '2022-08-28', 'Division 1', 'Nishantha Mendis', 'Richmond Youngsters ', 'Tier A', '10:00', 'T20', 'A & B', 'Sapper Stadium Mattegoda', 1, 'Richmond Youngsters .jpg', NULL, NULL, 'C.K.Hewamanne', 'admin01', '2024-12-28 17:36:04.000000', 52, 53),
(55, '2022-09-25', 'Division 1', 'Nishantha Mendis', 'Old Anandians', 'Tier A', '10:00', 'T20', 'Prabath De Silva/ Samitha De Silva', 'SAPPER STADIUM', 1, 'Old Anandians.jpg', NULL, NULL, 'C.K.Hewamanne', 'admin01', '2024-12-28 17:36:18.000000', 45, 55),
(56, '2022-10-30', 'Division 1', 'Nishantha Mendis', 'Thomians MC', 'Tier A', '10:00', 'T20', 'Palitha Liyanage/ Namal Rupasinghe', 'St Thomas Mount Lavenia ', 1, 'Thomians MC.jpg', NULL, NULL, 'C.K.Hewamanne', 'admin01', '2024-12-28 17:36:34.000000', 63, 61),
(57, '2022-12-17', 'Division 1', 'Nishantha Mendis', 'Namadagaswewa Sc', 'Tier A', '10:00', 'T20', 'A & B', 'Sooriyawewa', 1, '', NULL, NULL, 'C.K.Hewamanne', 'admin01', '2024-12-28 17:36:47.000000', 63, 59),
(58, '2022-12-04', 'Division 1', 'Nishantha Mendis', 'Lanka Cavaliers', 'Tier A', '10:00', 'T20', 'Pradeep Udawatte/ Rony Tharanga', 'SAPPER STADIUM', 1, 'Lanka Cavaliers.jpg', NULL, NULL, 'C.K.Hewamanne', 'admin01', '2024-12-28 17:37:00.000000', 55, 57),
(60, '2023-02-11', 'Division 1', 'C.K.Hewamanne', 'Mahinda over 50 Team', 'Tier A', '10:00', 'T20', 'Chaminda Hathurusinghe/ Akila Hasaranga', 'MCA Grounds', 1, 'Mahinda over 50 Team.jpg', NULL, NULL, 'Thushan Jayawardena', 'admin01', '2024-12-28 17:37:19.000000', 47, 50),
(61, '2023-02-25', 'Division 1', 'C.K.Hewamanne', 'Rahula College over 50', 'Tier A', '10:00', 'T20', 'A & B', 'Bloomfield Grounds ', 1, 'Rahula College over 50.jpg', NULL, NULL, 'Thushan Jayawardena', 'admin01', '2024-12-28 17:37:46.000000', 59, 62),
(62, '2023-04-02', 'Division 1', 'C.K.Hewamanne', 'Colombo Masters', 'Tier A', '10:00', 'T20', 'A & B', 'SAPPER STADIUM', 1, 'Colombo Masters.jpg', NULL, NULL, 'Thushan Jayawardena', 'admin01', '2024-12-28 17:38:03.000000', 60, 61),
(63, '2023-06-03', 'Division 1', 'C.K.Hewamanne', 'Royal Masters', 'Tier A', '10:00', 'T20', 'Palitha & B', 'Bloomfield Grounds ', 1, 'Royal Masters.jpg', NULL, NULL, 'Thushan Jayawardena', 'admin01', '2024-12-28 17:38:17.000000', 66, 60),
(64, '2023-08-12', 'Division 1', 'Asoka Sirimanne', 'Maris Sports Association', 'Tier A', '10:00', 'T20', 'Pradeep Samarasinghe & B', 'Maristela Grounds', 1, 'Maris Sports Association.jpg', NULL, NULL, 'S.T.R.Jayasekara', 'admin01', '2024-12-28 17:38:30.000000', 52, 50),
(82, '2023-10-29', 'Division 1', 'Asoka Sirimanne', 'Lanka Cavaliers', 'Tier A', '10:00', 'T20', 'A and B', 'Bloomfield Grounds ', 1, 'Lanka Cavaliers.jpg', 'admin01', '2024-12-06 21:01:17.000000', 'S.T.R.Jayasekara', 'admin01', '2026-01-07 07:41:53.000000', 53, 55),
(83, '2024-12-18', 'Division 1', 'Asoka Sirimanne', 'Australian Team', 'Tier A', '10:00', 'T20', 'A & B', 'Karandeniya Army Grounds', 1, 'Australian Team.jpg', 'admin01', '2024-12-06 21:29:52.000000', 'S.T.R.Jayasekara', 'admin01', '2024-12-28 17:20:11.000000', 48, 58),
(140, '2024-11-02', 'Division 1', NULL, 'Prince of Weals College', 'Tier A', '09:00', '2 Day', 'Nuwan jayasinghe', 'Prince of Weals  ground', 60, 'Prince_of_Weals_College.jpg', 'IT Master', '2025-03-22 13:37:45.000000', NULL, NULL, NULL, 141, 32),
(141, '2025-02-26', 'Division 1', NULL, 'DS Senanayaka College ', 'Tier A', '09:45', '2 Day', 'H Gomas  TRM Padmakumara', 'DS Senanayake Ground', 60, 'DS_Senanayaka_College_.jpg', 'admin01', '2025-04-22 05:46:59.000000', NULL, 'admin01', '2025-04-22 07:40:01.000000', 141, 32),
(142, '2025-02-13', '', NULL, 'Maliyadewa College', 'Tier A', '09:45', '2 Day', 'Withanachchi Weerasinghe', 'Maliyadewa College', 60, 'Maliyadewa_College.jpg', 'admin01', '2025-04-22 06:26:54.000000', NULL, 'admin01', '2025-04-22 07:39:49.000000', 141, 32),
(146, '2025-01-27', 'Division 1', NULL, 'St Thomas Mount Lavania', 'Tier A', '09:45', '2 Day', 'Vidura Prasad S Fernando', 'SLAOC Cricket Stadium', 60, 'St_Thomas_Mount_Lavania.jpg', 'admin01', '2025-04-22 07:30:42.000000', NULL, 'admin01', '2025-04-22 07:34:17.000000', 141, 32),
(147, '2025-01-21', 'Division 1', NULL, 'Mahanama College', 'Tier A', '09:45', '2 Day', 'P Poornika D Gunawardena', 'Nalanda College', 60, 'Mahanama_College.jpg', 'admin01', '2025-04-22 08:01:11.000000', NULL, 'admin01', '2025-04-23 11:11:47.000000', 141, 32),
(148, '2025-01-17', 'Division 1', NULL, 'St Servatius College', 'Tier A', '09:45', '2 Day', 'P Shanaka M Jeewantha', 'Uyanwatte Stadium, Matara', 60, 'St_Servatius_College.jpg', 'admin01', '2025-04-22 09:59:11.000000', NULL, 'admin01', '2025-04-23 17:21:49.000000', 141, 32),
(151, '2024-12-30', 'Division 1', NULL, 'Lumbini College', 'Tier A', '09:45', '2 Day', 'A and B', 'St Joseph Grounds', 60, 'Lumbini_College.jpg', 'admin01', '2025-04-22 13:28:21.000000', NULL, NULL, NULL, 141, 32),
(152, '2024-12-13', '', NULL, 'St Benedict College', 'Tier A', '09:45', '2 Day', 'T  Fernando E Kannangara', 'St Benedict Grounds', 60, 'St_Benedict_College.jpg', 'admin01', '2025-04-22 13:53:03.000000', NULL, NULL, NULL, 141, 32),
(153, '2024-12-10', 'Division 1', NULL, 'St Anthony\'s College', 'Tier A', '09:45', '2 Day', 'R Kumara  Thilina Gayan', 'St Anthony\'s Ground Kandy', 60, 'St_Anthony\'s_College.jpg', 'admin01', '2025-04-22 14:21:30.000000', NULL, NULL, NULL, 141, 32),
(154, '2024-12-06', '', NULL, 'St, Josephs College, Colombo', 'Tier A', '09:45', '2 Day', 'G Gunasekara G Wijesinghe', 'Airforce Camp Katunayake', 60, 'St,_Josephs_College,_Colombo.jpg', 'admin01', '2025-04-22 16:13:28.000000', NULL, NULL, NULL, 141, 32),
(155, '2024-11-02', 'Division 1', NULL, 'Prince of Wales College', 'Tier A', '09:45', '2 Day', 'N Edirisoya G Gunasekara', 'Price of Wales Grounds', 60, 'Prince_of_Wales_College.jpg', 'admin01', '2025-04-22 16:41:43.000000', NULL, NULL, NULL, 141, 32),
(156, '2025-03-21', 'Division 1', NULL, 'St Thomas College, Matara', 'Tier A', '09:45', '2 Day', 'P Shanaka S Chamara', 'Uyanwatte, Matara', 60, 'St_Thomas_College,_Matara.jpg', 'admin01', '2025-04-22 17:02:07.000000', NULL, NULL, NULL, 141, 32),
(157, '2025-02-17', 'Division 1', NULL, 'DS Senanayake College', 'Tier A', '09:45', 'ODI', 'H Hathuru N De Silva', 'DS Grounds', 60, 'DS_Senanayake_College.jpg', 'admin01', '2025-04-23 02:58:26.000000', NULL, NULL, NULL, 141, 32),
(158, '2025-02-21', 'Division 1', NULL, 'Nalanda College ', 'Tier A', '09:45', 'ODI', 'D Praboda SM Gamage', 'Nalanda Grounds', 60, 'Nalanda_College_.jpg', 'admin01', '2025-04-23 03:28:15.000000', NULL, NULL, NULL, 141, 32),
(159, '2024-02-23', 'Division 1', NULL, 'St Thomas Mount Lavania', 'Tier A', '09:45', 'ODI', 'Vidura Prasad Ro De Silva', 'St Thomas, Mount Lavinia', 60, 'St_Thomas_Mount_Lavania.jpg', 'admin01', '2025-04-23 04:40:15.000000', NULL, NULL, NULL, 141, 32),
(160, '2024-03-03', 'Division 1', NULL, 'Gurukula College, Kelaniya', 'Tier A', '09:45', 'ODI', 'C Amarasinghe R Jayaweera', 'SAPPER STADIUM, MATTEGODA', 60, 'Gurukula_College,_Kelaniya.jpg', 'admin01', '2025-04-23 05:02:11.000000', NULL, NULL, NULL, 141, 32),
(161, '2024-11-12', 'Division 1', NULL, 'DS Senanayake College', 'Tier A', '09:45', '2 Day', 'S Gallage S Krishantha', 'DS Grounds', 60, 'DS_Senanayake_College.jpg', 'admin01', '2025-04-23 07:27:05.000000', NULL, NULL, NULL, 141, 32),
(162, '2024-11-18', 'Division 1', NULL, 'Maris Stella College', 'Tier A', '09:45', '2 Day', 'A and B', 'Maris Stella, Negombo', 60, 'Maris_Stella_College.jpg', 'admin01', '2025-04-23 07:50:09.000000', NULL, NULL, NULL, 141, 32),
(163, '2025-03-17', 'Division 1', NULL, 'Wesley College', 'Tier A', '09:45', '2 Day', 'S Fernando Eranga Wick.', 'Wesley College, Ground', 60, 'Wesley_College.jpg', 'admin01', '2025-04-23 09:32:07.000000', NULL, NULL, NULL, 141, 32),
(164, '2025-04-11', 'Division 1', NULL, 'Mahinda College', 'Tier A', '09:45', 'ODI', 'A Nanayakkara U Hewage', 'Galle International Ground ', 60, 'Mahinda_College.jpg', 'admin01', '2025-04-24 04:12:10.000000', NULL, NULL, NULL, 141, 32),
(166, '2025-04-02', 'Division 1', NULL, 'Mahinda College', 'Tier A', '09:45', '3 Day', 'C Sanjeewa R Kottahachchi', 'Galle International Ground', 60, 'Mahinda_College.jpg', 'admin01', '2025-04-24 07:36:51.000000', NULL, NULL, NULL, 141, 32),
(170, '2025-06-12', 'Division 1', NULL, 'Devapathiraja College', 'Tier A', '09:45', '1 Day', 'P Surendra and Sarath Asoka', 'Karandeniya Central College Grounds ', 63, 'Devapathiraja_College.jpg', 'admin01', '2025-06-13 03:22:40.000000', NULL, NULL, NULL, 38, 149),
(171, '2025-06-07', 'Division 1', NULL, 'Vidyaloka College, Galle', 'Tier A', '09:45', '1 Day', 'Akila Lakmala and Moni Greshon', 'Prison Grounds, Angunakolapelassa. ', 63, 'Vidyalaloka_College,_Galle.jpg', 'admin01', '2025-06-13 06:31:37.000000', NULL, 'admin01', '2025-06-13 06:52:51.000000', 176, 171),
(172, '2025-06-09', 'Division 1', NULL, 'Mahinda College', 'Tier A', '09:45', '1 Day', 'Monti Greshan and MMT Jeewantha', 'Lanka Salt Ground Hambantota', 63, 'Mahinda_College.jpg', 'admin01', '2025-06-13 07:24:12.000000', NULL, NULL, NULL, 155, 156),
(173, '2025-07-09', 'Division 1', NULL, 'Maris Stella College', 'Tier A', '09:45', '1 Day', 'D wijesinghe and Nilanka Asiri', 'Maris Stella, Negombo', 63, 'Maris_Stella_College.jpg', 'admin01', '2025-07-19 04:13:44.000000', NULL, 'admin01', '2025-07-19 04:19:08.000000', 38, 156),
(174, '2025-06-25', 'Division 1', NULL, 'Sri Devananda', 'Tier A', '09:45', '1 Day', 'Saman Mohan and Sumedha Thilakarathne', 'UC Grounds, Ambalangoda', 63, 'Sri_Devananda.jpg', 'admin01', '2025-07-19 04:49:16.000000', NULL, NULL, NULL, 38, 156),
(175, '2025-06-20', 'Division 1', NULL, 'Rahula College Matara', 'Tier A', '09:45', '1 Day', 'A. Sellahewa and Chinthaka Gunawardena', 'Embilipitiya President College Ground', 63, 'Rahula_College_Matara.jpg', 'admin01', '2025-07-19 05:20:30.000000', NULL, NULL, NULL, 38, 156),
(176, '2025-08-03', 'Division 1', NULL, 'Chilaw Legends', 'Tier A', '09:45', 'T20', 'Laxman and Sumith Perera', 'Panagoda Army Grounds ', 64, 'Chilaw_Legends.jpg', 'admin01', '2025-08-04 03:40:19.000000', NULL, 'admin01', '2025-08-04 05:05:52.000000', 56, 63),
(177, '2025-02-08', 'Division 1', NULL, 'Matara Sports Club', 'Tier A', '10:30', 'T20', 'A  B', 'Matara Uyanwatte Grounds', 64, 'Matara_Sports_Club.jpg', 'admin01', '2025-09-13 04:13:48.000000', NULL, NULL, NULL, 56, 58),
(178, '2025-09-20', 'Division 1', NULL, 'Colombo Masters', 'Tier A', '10:00', 'T20', 'A  B', 'Irrigation Ground Rathmalana', 64, 'Colombo_Masters.jpg', 'admin01', '2025-10-02 04:10:51.000000', NULL, NULL, NULL, 56, 63),
(179, '2025-11-02', 'Division 1', NULL, 'Nalanda Masters', 'Tier A', '10:00', 'T20', 'A and B', 'Panagoda Army Grounds ', 64, 'Nalanda_Masters.jpg', 'admin01', '2025-11-06 03:54:37.000000', NULL, 'admin01', '2025-11-06 04:04:12.000000', 56, 63),
(180, '2025-12-06', 'Division 1', NULL, 'Ananda College Masters', 'Tier A', '10:00', 'T20', 'A and B', 'Rathmalana', 64, 'Ananda_College_Masters.jpg', 'Admin003', '2025-12-08 05:38:16.000000', NULL, 'admin01', '2025-12-09 03:38:45.000000', 56, 63),
(181, '2025-01-26', 'Division 1', NULL, 'Lanka Cavaliers', 'Tier A', '10:00', 'T20', 'Hasika and Rangana', 'St Thomas Mount Lavenia ', 64, 'Lanka_Cavaliers.jpg', 'admin01', '2025-12-11 03:55:24.000000', NULL, NULL, NULL, 56, 63),
(182, '2025-03-07', 'Division 1', NULL, 'The Fourty Club', 'Tier A', '10:00', 'T20', 'Barry and Aitkon', 'LRDC Ground', 64, 'The_Fourty_Club.jpg', 'admin01', '2025-12-11 07:32:50.000000', NULL, NULL, NULL, 56, 63),
(183, '2023-06-25', 'Division 1', NULL, 'Old Peterite', 'Tier A', '10:00', 'T20', 'A and B', 'Bloomfield Grounds ', 1, 'Old_Peterite.jpg', 'admin01', '2025-12-12 07:54:36.000000', NULL, 'admin01', '2025-12-12 07:59:59.000000', 52, 53),
(184, '2025-11-20', 'Division 1', NULL, 'St Thomas College, Mount Lavinia', 'Tier A', '10:00', '2 Day', 'Chamara Soyza Ruwan Jayaweera', 'St Thomas Ground, Mount Lavinia', 65, 'St_Thomas_mount_levenia.jpg', 'Admin003', '2025-12-21 04:30:28.000000', NULL, 'Admin003', '2025-12-24 08:58:27.000000', 142, 144),
(185, '2025-12-17', 'Division 1', NULL, 'D.S. Senanayaka College ', 'Tier A', '10:31', '2 Day', 'Thilak Franando Nilan De Soyza', 'D.S. Senanayaka College Ground, Colombo 07', 65, 'D.S._Senanayaka_College_.jpg', 'Admin003', '2025-12-24 06:01:08.000000', NULL, 'Admin003', '2025-12-24 09:00:38.000000', 142, 144),
(186, '2025-12-24', 'Division 1', NULL, 'St. Thomas College, Mathara', 'Tier A', '10:20', '2 Day', 'Ruwan Pushpakumara Thushara Sampath', 'Karandeniya GBCS Ground', 65, 'St._Thomas_College,_Mathara.jpg', 'Admin003', '2025-12-30 02:49:48.000000', NULL, NULL, NULL, 142, 144),
(187, '2025-12-30', 'Division 1', NULL, 'Gurukula College ', 'Tier A', '09:30', '2 Day', 'Priyan Withanarachchi Pasan Poornika', 'Ambepussa Army Ground', 65, 'Gurukula_College_.jpg', 'Admin003', '2025-12-30 03:52:32.000000', NULL, 'Admin003', '2026-01-01 07:19:36.000000', 142, 144),
(188, '2025-11-03', 'Division 1', NULL, 'Mahanama College ', 'Tier A', '10:45', '1 Day', 'Sunil Silva chrishantha Rodrigo', 'Maggona Surrey Village ', 65, 'Mahanama_College_.jpg', 'Admin003', '2026-01-01 08:48:28.000000', NULL, 'Admin003', '2026-01-01 09:30:41.000000', 142, 144),
(189, '2024-08-24', 'Division 1', NULL, 'Colombo Friends', 'Tier A', '10:00', 'T20', 'A and B', 'Hikkaduwa ', 1, 'Colombo_Friends.jpg', 'admin01', '2026-01-07 08:20:13.000000', NULL, 'admin01', '2026-01-07 08:29:27.000000', 55, 56),
(190, '2025-04-27', 'Division 1', NULL, 'Colombo Masters', 'Tier A', '10:00', 'T20', 'A and B', 'Bloomfield Grounds ', 64, 'Colombo_Masters.jpg', 'admin01', '2026-01-07 09:11:37.000000', NULL, NULL, NULL, 56, 63),
(191, '2025-04-27', 'Division 1', NULL, 'Colombo Masters', 'Tier A', '10:00', 'T20', 'A and B', 'Bloomfield Grounds ', 64, 'Colombo_Masters.jpg', 'admin01', '2026-01-07 09:06:12.000000', NULL, NULL, NULL, 56, 63);

-- --------------------------------------------------------

--
-- Table structure for table `match_summary`
--

CREATE TABLE `match_summary` (
  `id` bigint(20) NOT NULL,
  `inning` varchar(255) DEFAULT NULL,
  `opposition_overs` decimal(38,2) DEFAULT NULL,
  `opposition_runs` int(11) DEFAULT NULL,
  `opposition_wickets` int(11) DEFAULT NULL,
  `overs` decimal(38,2) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `runs` int(11) DEFAULT NULL,
  `wickets` int(11) DEFAULT NULL,
  `match_id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `match_summary`
--

INSERT INTO `match_summary` (`id`, `inning`, `opposition_overs`, `opposition_runs`, `opposition_wickets`, `overs`, `result`, `runs`, `wickets`, `match_id`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(27, '1', 25.00, 131, 5, 33.10, 'Colombo Masters won by 5 wickets', 130, 10, 43, NULL, NULL, NULL, NULL),
(29, '1', 25.30, 204, 8, 25.00, 'Southern Gladiators won by 58 Runs', 146, 10, 44, NULL, NULL, NULL, NULL),
(30, '1', 24.00, 146, 10, NULL, 'Richmond Legends won by 58 Runs', 0, 0, 44, NULL, NULL, NULL, NULL),
(31, '1', 29.50, 174, 10, 30.00, 'Richmond Legends won by 11 Runs', 185, 7, 47, NULL, NULL, NULL, NULL),
(32, '1', 23.40, 124, 10, 25.00, 'Lanka Cavaliers won by 6 Runs', 118, 10, 46, NULL, NULL, NULL, NULL),
(33, '1', 30.00, 146, 10, 30.00, 'Richmond Legends won by 79  Runs', 225, 6, 48, NULL, NULL, NULL, NULL),
(34, '1', 30.00, 331, 6, 30.00, 'Vintage won by 83 Runs', 248, 6, 49, NULL, NULL, NULL, NULL),
(36, '1', 22.00, 123, 4, 20.00, 'Peterites Won by 6 wickets', 122, 9, 51, NULL, NULL, NULL, NULL),
(37, '1', 33.10, 201, 9, 35.00, 'Colombo Masters won by 1 wickets', 198, 9, 52, NULL, NULL, NULL, NULL),
(39, '1', 14.40, 164, 0, 30.00, 'Richmond Youngsters won by 8 wickets', 151, 9, 54, NULL, NULL, NULL, NULL),
(40, '1', 27.20, 145, 10, 15.20, 'Richmond Legends won by 6 Wickets', 147, 4, 55, NULL, NULL, NULL, NULL),
(41, '1', NULL, 0, 0, 19.00, '', 0, 0, 56, NULL, NULL, NULL, NULL),
(42, '1', 25.00, 143, 7, 19.30, 'Richmond Legends won by 5 Wickets', 144, 5, 56, NULL, NULL, NULL, NULL),
(43, '1', 22.30, 127, 10, 12.80, 'Richmond Legends won by 06 wickets', 128, 4, 57, NULL, NULL, NULL, NULL),
(44, '1', 28.50, 174, 5, 30.00, 'Lanka Cavaliers won by 5 wickets', 173, 7, 58, NULL, NULL, NULL, NULL),
(137, '2', NULL, NULL, NULL, NULL, 'Match Drawn', NULL, NULL, 141, NULL, NULL, NULL, NULL),
(138, '2', 120.00, 102, 10, 9.00, 'Richmond won by 7 wickets', 33, 3, 142, NULL, NULL, NULL, NULL),
(139, '2', 0.00, 0, 0, 0.00, 'Won by 20 runs', 0, 0, 140, NULL, NULL, NULL, NULL),
(140, '1', 53.00, 145, 10, 70.00, '', 215, 10, 142, NULL, NULL, NULL, NULL),
(147, '2', NULL, NULL, NULL, 2.00, 'St Thomas College won 1st Innings ', 11, 0, 146, NULL, NULL, NULL, NULL),
(148, '1', 104.00, 314, 9, 30.00, '', 75, 10, 146, NULL, NULL, NULL, NULL),
(149, '2', 11.00, 41, 3, 64.00, 'Mahanama won 1st Innings ', 203, 9, 147, NULL, NULL, NULL, NULL),
(150, '1', 29.00, 119, 10, 33.00, '', 105, 10, 147, NULL, NULL, NULL, NULL),
(151, '1', 62.00, 252, 8, 1.00, '', 1, 0, 141, NULL, NULL, NULL, NULL),
(152, '1', 69.00, 112, 10, 51.00, '', 109, 10, 148, NULL, NULL, NULL, NULL),
(153, '2', NULL, NULL, NULL, 34.00, 'St Servatius Win 1st Innings ', 97, 5, 148, NULL, NULL, NULL, NULL),
(156, '1', 45.00, 92, 10, 65.00, '', 175, 10, 151, NULL, NULL, NULL, NULL),
(157, '2', 54.00, 115, 7, NULL, 'Richmond won 1st Innings', NULL, NULL, 151, NULL, NULL, NULL, NULL),
(158, '1', 77.00, 232, 10, 72.00, '', 220, 10, 152, NULL, NULL, NULL, NULL),
(159, '2', NULL, NULL, NULL, 21.00, 'St Benedict won 1st Innings', 97, 1, 152, NULL, NULL, NULL, NULL),
(160, '1', 83.00, 275, 10, 64.00, '', 181, 10, 153, NULL, NULL, NULL, NULL),
(161, '2', 22.00, 103, 3, NULL, 'St Anthony\'s won 1st Innings', NULL, NULL, 153, NULL, NULL, NULL, NULL),
(162, '1', 65.00, 285, 8, 75.00, '', 159, 10, 154, NULL, NULL, NULL, NULL),
(163, '2', NULL, NULL, NULL, 61.00, 'St Joseph won 1st Innings', 113, 9, 154, NULL, NULL, NULL, NULL),
(164, '1', 83.00, 251, 9, 43.00, '', 87, 10, 155, NULL, NULL, NULL, NULL),
(165, '2', NULL, NULL, NULL, 56.00, 'Price of Wales won 1st Innings', 149, 9, 155, NULL, NULL, NULL, NULL),
(166, '1', 35.00, 80, 10, 66.00, '', 185, 10, 156, NULL, NULL, NULL, NULL),
(167, '2', 41.00, 70, 10, NULL, 'RCG won by an inning and 35 Runs', NULL, NULL, 156, NULL, NULL, NULL, NULL),
(168, '1', 32.00, 110, 10, 27.00, 'Richmond Won by 8 wickets', 112, 2, 157, NULL, NULL, NULL, NULL),
(169, '1', 48.00, 230, 5, 50.00, 'Nalanda College Won by 5 wickets', 228, 8, 158, NULL, NULL, NULL, NULL),
(170, '1', 50.00, 179, 6, 40.00, 'Richmond won by 7 wickets', 183, 3, 159, NULL, NULL, NULL, NULL),
(171, '1', 46.00, 198, 10, 22.00, 'Gurukula won by 159 Runs', 39, 10, 160, NULL, NULL, NULL, NULL),
(172, '1', 92.00, 287, 10, 89.00, '', 401, 6, 161, NULL, NULL, NULL, NULL),
(173, '2', NULL, NULL, NULL, NULL, 'Richmond won 1st Inning', NULL, NULL, 161, NULL, NULL, NULL, NULL),
(174, '1', 67.00, 185, 10, 76.00, '', 236, 10, 162, NULL, NULL, NULL, NULL),
(175, '2', NULL, NULL, NULL, NULL, 'Match Drawn', NULL, NULL, 162, NULL, NULL, NULL, NULL),
(176, '1', NULL, NULL, NULL, 78.00, '', 317, 4, 163, NULL, NULL, NULL, NULL),
(177, '2', NULL, NULL, NULL, NULL, 'No Decision ', 0, NULL, 163, NULL, NULL, NULL, NULL),
(179, '1', 40.20, 165, 2, 43.00, 'Mahinda won by 8 wickets ', 164, 10, 164, NULL, NULL, NULL, NULL),
(181, '1', 73.40, 217, 10, 117.20, '', 227, 9, 166, NULL, NULL, NULL, NULL),
(182, '2', 41.00, 147, 5, 4.00, 'Richmond won 1st Innings', 23, 1, 166, NULL, NULL, NULL, NULL),
(188, '1', 36.00, 187, 8, 26.00, 'Devapathiraja College won by 96 Runs', 91, 10, 170, NULL, NULL, NULL, NULL),
(189, '1', 26.20, 58, 10, 27.10, 'Richmond won by 5 wickets', 65, 5, 171, NULL, NULL, NULL, NULL),
(190, '1', 42.30, 97, 6, 35.00, 'Mahinda College won by 04 wickets', 94, 10, 172, NULL, NULL, NULL, NULL),
(191, '1', 46.50, 262, 4, 50.00, 'Maris Stella won by 04 wickets', 257, 6, 173, NULL, NULL, NULL, NULL),
(192, '1', 29.00, 110, 10, 34.30, 'Richmond College Won by 8 Runs. DLS Target 119 Runs from 29 overs', 136, 10, 174, NULL, NULL, NULL, NULL),
(193, '1', 39.30, 136, 10, 47.30, 'Richmond College won by 1 wickets', 137, 9, 175, NULL, NULL, NULL, NULL),
(194, '1', 25.00, 189, 6, 25.00, 'Richmond Legends won by 5 wickets', 193, 5, 176, NULL, NULL, NULL, NULL),
(195, '1', 30.00, 197, 7, 25.50, 'Richmond Legends won by 6 wickets', 199, 4, 177, NULL, NULL, NULL, NULL),
(196, '1', 35.00, 221, 7, 32.50, 'Richmond Legends Won by 6 wickets ', 222, 4, 178, NULL, NULL, NULL, NULL),
(197, '1', 35.00, 202, 10, 27.40, 'Nalanda Masters won by 42 Runs', 159, 10, 179, NULL, NULL, NULL, NULL),
(198, '1', 27.10, 215, 10, 26.40, 'Richmond Legends won by 5 wickets', 217, 5, 180, NULL, NULL, NULL, NULL),
(199, '1', 26.20, 165, 10, 28.30, 'Richmond won by 5 wickets', 166, 6, 181, NULL, NULL, NULL, NULL),
(200, '1', 35.00, 179, 5, 31.20, 'Richmond won by 2 wickets', 180, 8, 182, NULL, NULL, NULL, NULL),
(201, '1', 30.00, 175, 8, 29.20, 'Old Peterite won by 11 runs', 165, 10, 183, NULL, NULL, NULL, NULL),
(202, '1', 68.20, 157, 10, 44.20, 'Match Drawn', 130, 10, 184, NULL, NULL, NULL, NULL),
(203, '2', 37.10, 70, 7, NULL, 'Match Drawn ', NULL, NULL, 184, NULL, NULL, NULL, NULL),
(204, '1', 80.00, 283, 9, 41.00, 'No Results ', 90, 7, 185, NULL, NULL, NULL, NULL),
(205, '1', 43.20, 138, 10, 80.00, 'Richmond won 1st Innings', 257, 8, 186, NULL, NULL, NULL, NULL),
(206, '2', NULL, NULL, NULL, 45.00, 'Richmond college won 1st Inning', 206, 6, 186, NULL, NULL, NULL, NULL),
(207, '2', NULL, NULL, NULL, 27.00, '', 100, 4, 187, NULL, NULL, NULL, NULL),
(208, '1', 66.10, 181, 10, 80.00, 'Richmond college won 1st Inning', 256, 10, 187, NULL, NULL, NULL, NULL),
(209, '1', 19.50, 110, 6, 40.30, 'Mahanama College Won By 04Wickets', 109, 10, 188, NULL, NULL, NULL, NULL),
(210, '1', 19.50, 110, 6, 40.30, 'Mahanama College Won By 04Wickets', 109, 10, 188, NULL, NULL, NULL, NULL),
(211, '1', 19.50, 110, 6, 40.30, 'Mahanama College Won By 04 Wickets', 109, 10, 188, NULL, NULL, NULL, NULL),
(212, '1', 30.00, 193, 7, 30.00, 'Lanka Cavaliers won by 103 runs', 90, 7, 82, NULL, NULL, NULL, NULL),
(213, '1', 35.00, 235, 8, 28.30, 'Colombo Friends won by 32 Runs (DLS Method) ', 163, 7, 189, NULL, NULL, NULL, NULL),
(214, '1', 22.30, 106, 10, 18.20, 'Richmond won by 6 wickets', 107, 4, 190, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) NOT NULL,
  `end_date` date DEFAULT NULL,
  `is_member_holder` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `end_date`, `is_member_holder`, `start_date`) VALUES
(47, '2025-11-11', '1', '2024-06-05'),
(48, '2026-01-14', '1', '2024-10-01'),
(49, '2026-02-18', '1', '2024-09-30'),
(50, '2025-07-15', '1', '2024-10-15'),
(51, '2025-10-07', '1', '2024-10-02'),
(52, '2025-07-08', '1', '2024-10-14'),
(53, '2025-10-15', '1', '2024-10-16'),
(54, '2025-11-04', '1', '2024-10-15'),
(55, '2024-09-29', '1', '2024-10-01'),
(56, '2024-10-31', '1', '2024-10-24'),
(57, '2024-10-01', '1', '2024-10-31'),
(58, '2024-10-25', '1', '2024-10-16'),
(59, '2024-10-01', '1', '2024-10-23'),
(60, '2024-10-15', '1', '2024-10-09'),
(61, '2024-10-15', '1', '2024-10-09'),
(62, '2024-10-15', '1', '2024-10-09'),
(63, '2050-10-30', '1', '2024-10-30'),
(64, '2024-12-30', '1', '2024-10-30'),
(65, '2050-10-30', '1', '2024-10-30'),
(66, '2050-03-01', '1', '2024-10-30'),
(67, '2024-10-30', '1', '2024-10-30'),
(68, '2024-10-30', '1', '2024-10-30'),
(69, '2050-03-01', '1', '2024-10-30'),
(70, '2024-10-30', '1', '2024-10-30'),
(71, '2024-10-30', '1', '2024-10-30'),
(72, '2024-11-29', '1', '2024-10-30'),
(73, '2024-10-30', '1', '2024-10-30'),
(74, '2050-10-30', '1', '2024-10-30'),
(75, '2024-10-30', '1', '2024-10-30'),
(76, '2050-10-30', '1', '2024-10-30'),
(77, '2050-10-30', '1', '2024-10-30'),
(78, '2050-10-30', '1', '2024-10-30'),
(79, '2050-10-30', '1', '2024-10-30'),
(80, '2050-10-30', '1', '2024-10-30'),
(81, '2050-10-30', '1', '2024-10-30'),
(82, '2050-10-30', '1', '2024-10-30'),
(83, '2050-10-30', '1', '2024-10-30'),
(84, '2050-10-30', '1', '2024-10-30'),
(85, '2050-10-30', '1', '2024-10-30'),
(86, '2050-10-31', '1', '2024-10-31'),
(87, '2050-10-31', '1', '2024-10-31'),
(88, '2050-10-31', '1', '2024-10-31'),
(89, '2050-10-31', '1', '2024-10-31'),
(90, '2024-12-31', '1', '2024-11-01'),
(91, '2060-11-01', '1', '2024-11-01'),
(92, '2060-11-01', '1', '2024-11-01'),
(93, '2050-10-31', '1', '2024-10-31'),
(94, '2050-10-31', '1', '2024-10-31'),
(95, '2050-10-31', '1', '2024-10-31'),
(96, '2050-10-31', '1', '2024-10-31'),
(97, '2060-11-01', '1', '2024-11-01'),
(98, '2075-10-31', '1', '2024-10-31'),
(99, '2060-10-31', '1', '2024-10-31'),
(100, '2060-10-31', '1', '2024-10-31'),
(101, '2050-10-31', '1', '2024-10-31'),
(102, '2050-10-31', '1', '2024-10-31'),
(103, '2050-10-30', '1', '2024-10-30'),
(104, '2050-10-30', '1', '2024-10-30'),
(105, '2050-10-30', '1', '2024-10-30'),
(106, '2050-10-30', '1', '2024-10-30'),
(107, '2050-10-30', '1', '2024-10-30'),
(108, '2050-10-30', '1', '2024-10-30'),
(109, '2050-10-30', '1', '2024-10-30'),
(110, '2050-10-30', '1', '2024-10-30'),
(111, '2024-10-30', '1', '2024-10-30'),
(112, '2050-10-30', '1', '2024-10-30'),
(113, '2050-03-01', '1', '2024-10-30'),
(114, '2060-10-30', '1', '2024-10-30'),
(115, '2050-10-30', '1', '2024-10-30'),
(116, '2060-11-02', '1', '2024-02-11'),
(117, '2060-11-02', '1', '2024-11-02'),
(118, '2060-11-02', '1', '2024-11-02'),
(119, '2024-10-31', '1', '2024-10-07'),
(120, '2024-12-07', '1', '2024-11-18'),
(121, '2025-02-12', '1', '2024-02-12'),
(122, '2025-02-12', '1', '2024-02-12'),
(123, '2024-11-20', '1', '2024-11-10'),
(124, '2024-11-26', '1', '2024-11-21'),
(125, '2024-11-26', '1', '2024-11-21'),
(126, '2024-11-26', '1', '2024-11-21'),
(127, '2024-11-04', '1', '2024-06-09'),
(128, '2024-12-07', '1', '2024-11-10'),
(129, '2024-12-07', '1', '2024-11-10'),
(130, '2025-11-29', '1', '2024-11-29'),
(131, '2025-11-27', '1', '2024-11-27'),
(132, '2025-11-27', '1', '2024-11-27'),
(133, '2025-11-27', '1', '2024-11-27'),
(134, '2024-12-07', '1', '2024-11-10'),
(135, '2025-11-10', NULL, '2024-11-10'),
(136, '2024-12-07', '1', '2024-11-11'),
(137, '2024-11-20', '1', '2024-11-12'),
(138, '2025-11-12', '1', '2020-11-16'),
(139, '2025-11-12', '1', '2020-11-16'),
(140, '2024-11-26', '1', '2024-11-11'),
(141, '2024-11-26', '1', '2024-11-01'),
(142, '2024-11-13', '1', '2024-11-10'),
(143, '2024-11-20', '1', '2024-11-06'),
(144, '2024-11-21', '1', '2024-11-05'),
(145, '2024-11-21', '1', '2024-11-05'),
(146, '2024-11-13', '1', '2024-11-10'),
(147, '2024-11-13', '1', '2024-11-10'),
(148, '2024-11-30', '1', '2024-10-27'),
(149, '2024-11-13', '1', '2024-11-10'),
(150, '2024-12-07', '1', '2024-10-27'),
(151, '2024-12-07', '1', '2024-10-27'),
(152, '2024-12-07', '1', '2024-10-27'),
(153, '2024-12-07', '1', '2024-10-27'),
(154, '2024-12-07', '1', '2024-10-27'),
(155, '2024-12-07', '1', '2024-10-27'),
(156, '2024-12-07', '1', '2024-10-27'),
(157, '2024-11-22', '1', '2024-10-27'),
(158, '2024-11-30', '1', '2024-11-04'),
(159, '2024-11-30', '1', '2024-11-04'),
(160, '2024-11-30', '1', '2024-11-04'),
(161, '2024-11-22', '1', '2024-10-27'),
(162, '2024-11-22', '1', '2024-11-03'),
(163, '2024-12-07', '1', '2024-10-27'),
(164, '2024-11-29', '1', '2024-11-03'),
(165, '2024-11-29', '1', '2024-11-03'),
(166, '2024-11-29', '1', '2024-11-03'),
(167, '2024-11-22', '1', '2024-11-03'),
(168, '2026-11-27', '1', '2024-12-07'),
(169, '2060-10-31', '1', '2024-10-31'),
(170, '2060-10-31', '1', '2024-10-31'),
(171, '2024-11-26', '1', '2024-11-01'),
(172, '2024-11-26', '1', '2024-11-01'),
(173, '2025-10-27', '1', '2024-11-30'),
(174, '2025-02-12', '1', '2024-02-01'),
(175, '2025-02-12', '1', '2024-02-01'),
(176, '2025-02-12', '1', '2024-02-01'),
(177, '2025-02-12', '1', '2024-02-01'),
(178, '2050-10-30', '1', '2024-10-30'),
(179, '2050-10-30', '1', '2024-10-30'),
(180, '2025-11-11', '1', '2024-06-05'),
(181, '2050-10-30', '1', '2024-10-30'),
(182, '2050-10-30', '1', '2024-10-30'),
(183, '2050-10-30', '1', '2024-10-30'),
(184, '2050-10-30', '1', '2024-10-30'),
(185, '2025-11-11', '1', '2024-06-05'),
(186, '2025-12-06', '1', '2024-06-02'),
(187, '2025-12-06', '1', '2024-06-02'),
(188, '2025-11-11', '1', '2024-06-05'),
(189, '2050-10-30', '1', '2024-02-20'),
(190, '2050-10-30', '1', '2024-10-30'),
(191, '2025-11-05', '1', '2024-11-05'),
(192, '2025-11-11', '1', '2024-06-05'),
(193, '2024-12-31', '1', '2024-11-28'),
(194, '2024-12-25', '1', '2024-11-28'),
(195, '2024-12-25', '1', '2024-11-28'),
(196, '2025-01-21', '1', '2024-12-01'),
(197, '2024-12-31', '1', NULL),
(198, '2024-12-31', '1', NULL),
(199, '2024-12-31', '1', '2024-11-28'),
(200, '2024-12-31', '1', '2024-11-28'),
(201, '2025-01-11', '1', '2024-12-08'),
(202, '2024-12-31', '1', '2024-11-28'),
(203, '2024-12-31', '1', '2024-11-28'),
(204, '2024-12-31', '1', '2024-11-28'),
(205, '2024-12-31', '1', '2024-11-28'),
(206, '2024-12-31', '1', '2024-11-28'),
(207, '2024-12-31', '1', '2024-11-28'),
(208, '2024-12-06', '1', '2020-12-01'),
(209, '2025-12-10', '1', '2023-12-04'),
(210, '2050-10-30', '1', '2024-10-30'),
(211, '2050-10-30', '1', '2024-10-30'),
(212, '2050-10-30', '1', '2024-10-30'),
(213, '2025-12-26', '1', NULL),
(214, '2025-12-26', '1', '2023-12-04'),
(215, '2025-12-26', '1', NULL),
(216, '2025-12-26', '1', '2023-12-10'),
(217, '2025-12-26', '1', '2023-12-24'),
(218, '2025-12-26', '1', '2023-12-24'),
(219, '2025-12-26', '1', '2023-12-26'),
(220, '2025-12-26', '1', '2023-12-26'),
(221, '2025-01-10', '1', '2024-12-01'),
(222, '2025-01-10', '1', '2024-12-01'),
(223, '2025-01-10', '1', '2024-12-01'),
(224, '2025-12-26', '1', '2023-12-26'),
(225, '2025-01-10', '1', '2024-12-01'),
(226, '2025-12-26', '1', '2023-12-24'),
(227, '2025-11-11', '1', '2024-06-05'),
(228, '2026-01-14', '1', '2024-10-01'),
(229, '2026-02-18', '1', '2024-09-30'),
(230, '2025-07-15', '1', '2024-10-15'),
(231, '2025-10-07', '1', '2024-10-02'),
(232, '2025-07-08', '1', '2024-10-14'),
(233, '2025-10-15', '1', '2024-10-16'),
(234, '2025-11-04', '1', '2024-10-15'),
(235, '2025-11-04', '1', '2024-10-15'),
(236, '2050-10-30', '1', '2024-10-30'),
(237, '2060-10-30', '1', '2024-10-30'),
(238, '2050-03-01', '1', '2024-10-30'),
(239, '2050-10-30', '1', '2024-10-30'),
(240, '2024-10-30', '1', '2024-10-30'),
(241, '2050-10-30', '1', '2024-10-30'),
(242, '2050-10-30', '1', '2024-10-30'),
(243, '2050-10-30', '1', '2024-10-30'),
(244, '2050-10-30', '1', '2024-10-30'),
(245, '2050-10-30', '1', '2024-10-30'),
(246, '2050-10-31', '1', '2024-10-31'),
(247, '2050-10-31', '1', '2024-10-31'),
(248, '2060-10-31', '1', '2024-10-31'),
(249, '2060-10-31', '1', '2024-10-31'),
(250, '2060-11-01', '1', '2024-11-01'),
(251, '2060-11-02', '1', '2024-02-11'),
(252, '2060-11-02', '1', '2024-11-02'),
(253, '2060-11-02', '1', '2024-11-02'),
(254, '2025-10-27', '1', '2024-11-30'),
(255, '2025-01-10', '1', '2024-12-01'),
(256, '2025-01-10', '1', '2024-12-08'),
(257, '2025-02-09', '1', '2024-12-01'),
(258, '2025-02-09', '1', '2024-12-01'),
(259, '2025-02-09', '1', '2024-12-01'),
(260, '2025-02-09', '1', '2024-12-01'),
(261, '2025-02-09', '1', '2024-12-01'),
(262, '2025-02-09', '1', '2024-12-01'),
(263, '2025-02-09', '1', '2024-12-01'),
(264, '2025-01-10', '1', '2024-12-08'),
(265, '2025-02-09', '1', '2024-12-01'),
(266, '2025-02-09', '1', '2024-12-01'),
(267, '2025-02-09', '1', '2024-12-01'),
(268, '2025-12-26', '1', '2023-12-26'),
(269, '2025-12-26', '1', '2021-12-19'),
(270, '2028-12-08', '1', '2022-12-29'),
(271, '2028-12-08', '1', '2024-12-01'),
(272, '2028-12-08', '1', '2024-12-03'),
(273, '2025-01-11', '1', '2024-12-01'),
(274, '2025-02-09', '1', '2024-12-01'),
(275, '2025-01-03', '1', '2024-12-01'),
(276, '2025-01-03', '1', '2024-12-01'),
(277, '2028-12-08', '1', '2024-12-03'),
(278, '2025-01-11', '1', '2024-12-01'),
(279, '2025-01-11', '1', '2024-12-01'),
(280, '2025-07-08', '1', '2024-10-14'),
(281, '2060-11-02', '1', '2024-11-02'),
(282, '2050-10-30', '1', '2024-10-30'),
(283, '2050-10-30', '1', '2024-10-30'),
(284, '2050-10-30', '1', '2024-10-30'),
(285, '2050-10-30', '1', '2024-10-30'),
(286, '2050-10-30', '1', '2024-10-30'),
(287, '2050-10-30', '1', '2024-10-30'),
(288, '2050-10-30', '1', '2024-10-30'),
(289, '2025-11-04', '1', '2024-10-15'),
(290, '2025-10-15', '1', '2024-10-16'),
(291, '2060-10-30', '1', '2024-10-30'),
(292, '2050-10-30', '1', '2024-10-30'),
(293, '2025-11-04', '1', '2024-10-15'),
(294, '2025-07-08', '1', '2024-10-14'),
(295, '2025-10-07', '1', '2024-10-02'),
(296, '2025-10-07', '1', '2024-10-02'),
(297, '2025-07-08', '1', '2024-10-14'),
(298, '2025-10-07', '1', '2024-10-02'),
(299, '2026-01-14', '1', '2024-10-01'),
(300, '2026-01-14', '1', '2024-10-01'),
(301, '2026-02-18', '1', '2024-09-30'),
(302, '2025-07-15', '1', '2024-10-15'),
(303, '2025-07-15', '1', '2024-10-15'),
(304, '2060-10-30', '1', '2024-10-30'),
(305, '2024-12-31', '1', '2024-12-15'),
(306, '2024-12-31', '1', '2024-12-15'),
(307, '2024-12-31', '1', '2024-12-15'),
(308, '2024-12-31', '1', '2024-12-15'),
(309, '2025-01-11', '1', '2024-12-08'),
(310, '2024-12-31', '1', '2024-12-15'),
(311, '2024-12-31', '1', '2024-12-15'),
(312, '2025-01-10', '1', '2024-12-02'),
(313, '2025-01-10', '1', '2024-12-02'),
(314, '2025-01-10', '1', '2024-01-02'),
(315, '2050-10-30', '1', '2024-10-30'),
(316, '2060-10-31', '1', '2024-10-31'),
(317, '2050-10-30', '1', '2024-10-30'),
(318, '2060-10-30', '1', '2024-10-30'),
(319, '2050-10-30', '1', '2024-10-30'),
(320, '2050-10-30', '1', '2024-10-30'),
(321, '2050-10-30', '1', '2024-10-30'),
(322, '2050-03-01', '1', '2024-10-30'),
(323, '2050-10-30', '1', '2024-10-30'),
(324, '2050-10-30', '1', '2024-10-30'),
(325, '2050-10-30', '1', '2024-10-30'),
(326, '2060-10-30', '1', '2024-10-30'),
(327, '2050-10-30', '1', '2024-10-30'),
(328, '2025-01-10', '1', '2024-01-02'),
(329, '2025-01-10', '1', '2024-01-02'),
(330, '2028-12-08', '1', '2024-12-03'),
(331, '2028-12-08', '1', '2024-12-01'),
(332, '2028-12-08', '1', '2022-12-29'),
(333, '2025-12-26', '1', '2023-12-26'),
(334, '2025-12-26', '1', '2021-12-19'),
(335, '2025-02-09', '1', '2024-12-01'),
(336, '2025-01-10', '1', '2024-12-01'),
(337, '2026-01-14', '1', '2024-10-01'),
(338, '2026-02-18', '1', '2024-09-30'),
(339, '2025-07-15', '1', '2024-10-15'),
(340, '2025-10-07', '1', '2024-10-02'),
(341, '2025-07-08', '1', '2024-10-14'),
(342, '2025-10-15', '1', '2024-10-16'),
(343, '2025-11-04', '1', '2024-10-15'),
(344, '2050-10-31', '1', '2024-10-31'),
(345, '2060-11-02', '1', '2024-11-02'),
(346, '2025-01-30', '1', '2025-01-04'),
(347, '2025-01-30', '1', '2025-01-04'),
(348, '2025-01-30', '1', '2025-01-23'),
(349, '2025-01-30', '1', '2025-01-04'),
(350, '2025-01-30', '1', '2025-01-04'),
(351, '2025-01-30', '1', '2025-01-04'),
(352, '2025-01-30', '1', '2025-01-04'),
(353, '2025-01-30', '1', '2025-01-23'),
(354, '2025-01-30', '1', '2025-01-23'),
(355, '2025-01-30', '1', '2025-01-23'),
(356, '2025-01-31', '1', '2020-02-16'),
(357, '2025-01-31', '1', '2020-02-16'),
(358, '2025-01-31', '1', '2020-02-16'),
(359, '2025-01-30', '1', '2025-01-04'),
(360, '2025-01-31', '1', '2020-02-16'),
(361, '2025-01-31', '1', '2020-02-16'),
(362, '2025-01-31', '1', '2020-02-16'),
(363, '2025-01-31', '1', '2020-02-16'),
(364, '2025-01-31', '1', '2020-02-16'),
(365, '2025-01-31', '1', '2020-02-16'),
(366, '2025-01-31', '1', '2025-01-05'),
(367, '2025-01-24', '1', '2025-01-05'),
(368, '2025-01-30', '1', '2025-01-04'),
(369, '2025-01-29', '1', '2025-01-22'),
(370, '2025-01-29', '1', '2025-01-22'),
(371, '2025-01-30', '1', '2025-01-04'),
(372, '2025-01-21', '1', '2025-01-02'),
(373, '2025-01-30', '1', '2025-01-01'),
(374, '2025-01-30', '1', '2025-01-01'),
(375, '2025-01-20', '1', '2025-01-10'),
(376, '2025-01-16', '1', '2025-01-15'),
(377, '2025-01-31', '1', '2025-01-01'),
(378, '2025-01-31', '1', '2025-01-16'),
(379, '2025-01-30', '1', '2025-01-07'),
(380, '2025-01-30', '1', '2025-01-05'),
(381, '2025-01-30', '1', '2025-01-05'),
(382, '2025-01-29', '1', '2025-01-06'),
(383, '2025-01-29', '1', '2025-01-06'),
(384, '2025-01-29', '1', '2025-01-06'),
(385, '2025-02-01', '1', '2024-02-01'),
(386, '2026-02-01', '1', '2025-02-01'),
(387, '2025-01-30', '1', '2025-01-07'),
(388, '2025-01-30', '1', '2025-01-07'),
(389, '2025-01-30', '1', '2025-01-07'),
(390, '2025-01-30', '1', '2025-01-07'),
(391, '2026-02-01', '1', '2025-02-01'),
(392, '2025-01-30', '1', '2025-01-05'),
(393, '2025-02-28', '1', '2025-02-11'),
(394, '2025-02-28', '1', '2025-02-11'),
(395, '2025-02-28', '1', '2025-02-11'),
(396, '2025-02-28', '1', '2025-02-11'),
(397, '2025-02-28', '1', '2025-02-11'),
(398, '2025-02-28', '1', '2025-02-11'),
(399, '2025-02-28', '1', '2025-02-11'),
(400, '2026-03-24', '1', '2025-02-19'),
(401, '2050-10-30', '1', '2024-10-30'),
(402, '2050-10-30', '1', '2024-10-30'),
(403, '2050-10-30', '1', '2024-10-30'),
(404, '2025-02-28', '1', '2025-02-04'),
(405, '2025-02-28', '1', '2025-02-04'),
(406, '2025-07-09', '1', '2025-01-05'),
(407, '2026-02-01', '1', '2025-02-01'),
(408, '2025-01-10', '1', '2024-12-01'),
(409, '2025-03-10', '1', '2024-12-01'),
(410, '2025-11-11', '1', '2024-06-05'),
(411, '2025-03-31', '1', '2025-03-01'),
(412, '2025-03-31', '1', '2025-03-01'),
(413, '2025-11-11', '1', '2024-06-05'),
(414, '2026-01-14', '1', '2024-10-01'),
(415, '2026-01-14', '1', '2024-10-01'),
(416, '2026-02-18', '1', '2024-09-30'),
(417, '2026-02-18', '1', '2024-09-30'),
(418, '2026-02-18', '1', '2024-09-30'),
(419, '2025-07-15', '1', '2024-10-15'),
(420, '2025-10-07', '1', '2024-10-02'),
(421, '2025-07-08', '1', '2024-10-14'),
(422, '2025-10-15', '1', '2024-10-16'),
(423, '2025-11-04', '1', '2024-10-15'),
(424, '2025-03-31', '1', '2025-03-05'),
(425, '2025-03-31', '1', '2025-03-25'),
(426, '2025-04-30', '1', '2025-03-13'),
(427, '2025-06-30', '1', '2025-03-21'),
(428, '2025-07-30', '1', '2025-05-21'),
(429, '2025-07-30', '1', '2025-03-04'),
(430, '2025-08-22', '1', '2025-03-02'),
(431, '2025-08-27', '1', '2025-03-28'),
(432, '2025-08-27', '1', '2025-03-28'),
(433, '2025-08-27', '1', '2025-03-28'),
(434, '2025-06-30', '1', '2025-03-21'),
(435, '2025-04-30', '1', '2025-03-13'),
(436, '2025-03-31', '1', '2025-03-05'),
(437, '2025-03-31', '1', '2025-03-01'),
(438, '2025-11-11', '1', '2024-06-05'),
(439, '2025-10-07', '1', '2024-10-02'),
(440, '2025-07-15', '1', '2024-10-15'),
(441, '2026-01-14', '1', '2024-10-01'),
(442, '2025-03-31', '1', '2025-03-25'),
(443, '2025-08-22', '1', '2025-03-02'),
(444, '2026-02-18', '1', '2024-09-30'),
(445, '2025-03-31', '1', '2025-03-01'),
(446, '2025-07-30', '1', '2025-03-04'),
(447, '2025-07-30', '1', '2025-05-21'),
(448, '2025-03-31', '1', '2025-03-01'),
(449, '2025-03-31', '1', '2025-03-01'),
(450, '2025-03-29', '1', '2025-03-01'),
(451, '2025-03-29', '1', '2025-03-01'),
(452, '2025-03-29', '1', '2025-03-01'),
(453, '2025-03-29', '1', '2025-03-01'),
(454, '2025-03-29', '1', '2025-03-01'),
(455, '2025-03-29', '1', '2025-03-01'),
(456, '2025-03-29', '1', '2025-03-01'),
(457, '2025-03-29', '1', '2025-03-01'),
(458, '2025-07-15', '1', '2024-10-15'),
(459, '2025-04-30', '1', '2025-04-13'),
(460, '2025-04-30', '1', '2025-04-13'),
(461, '2026-04-30', '1', '2024-03-01'),
(462, '2026-04-30', '1', '2024-03-01'),
(463, '2027-04-30', '1', '2025-04-01'),
(464, '2026-04-30', '1', '2024-03-01'),
(465, '2025-07-08', '1', '2024-10-14'),
(466, '2025-07-30', '1', '2025-03-04'),
(467, '2026-04-30', '1', '2024-03-01'),
(468, '2025-04-30', '1', '2025-04-13'),
(469, '2025-07-30', '1', '2025-03-04'),
(470, '2025-07-30', '1', '2025-05-21'),
(471, '2025-11-04', '1', '2024-10-15'),
(472, '2027-04-30', '1', '2025-04-01'),
(473, '2025-10-15', '1', '2024-10-16'),
(474, '2025-04-17', '1', '2015-01-02'),
(475, '2025-04-11', '1', '2025-04-03'),
(476, '2026-04-10', '1', '2025-04-05'),
(477, '2025-05-08', '1', '2025-04-29'),
(478, '2025-04-09', '1', '2025-04-03'),
(479, '2025-04-10', '1', '2025-04-02'),
(480, '2025-04-03', '1', '2025-04-02'),
(481, '2025-04-10', '1', '2025-04-02'),
(482, '2025-04-23', '1', '2025-04-01'),
(483, '2025-04-09', '1', '2025-04-03'),
(484, '2025-10-15', '1', '2024-10-16'),
(485, '2025-04-30', '1', '2025-04-10'),
(486, '2025-04-23', '1', '2025-04-09'),
(487, '2030-04-30', '1', '2025-04-01'),
(488, '2025-04-24', '1', '2025-04-09'),
(489, '2025-04-23', '1', '2025-04-02'),
(490, '2030-04-30', '1', '2025-04-01'),
(491, '2025-04-25', '1', '2025-04-01'),
(492, '2025-04-30', '1', '2025-04-03'),
(493, '2030-04-30', '1', '2025-04-01'),
(494, '2025-04-29', '1', '2025-04-02'),
(495, '2025-04-23', '1', '2025-04-02'),
(496, '2025-04-30', '1', '2025-04-03'),
(497, '2025-04-30', '1', '2025-04-08'),
(498, '2025-04-23', '1', '2025-04-03'),
(499, '2025-12-31', 'Yes', '2025-01-01'),
(500, '2025-12-31', 'Yes', '2025-01-01'),
(501, '2025-12-31', 'Yes', '2025-01-01'),
(502, '2025-04-10', '1', '2025-04-02'),
(503, '2025-04-25', '1', '2025-04-01'),
(504, '2030-04-30', '1', '2025-04-01'),
(505, '2025-04-30', '1', '2025-04-10'),
(506, '2025-04-30', '1', '2025-04-08'),
(507, '2025-04-03', '1', '2025-04-02'),
(508, '2025-04-29', '1', '2025-04-02'),
(509, '2030-04-30', '1', '2025-04-01'),
(510, '2030-04-30', '1', '2025-04-01'),
(511, '2025-04-23', '1', '2025-04-09'),
(512, '2025-04-23', '1', '2025-04-02'),
(513, '2025-04-30', '1', '2025-04-03'),
(514, '2025-04-30', '1', '2025-04-03'),
(515, '2025-04-25', '1', '2025-04-01'),
(516, '2060-11-02', '1', '2024-11-02'),
(517, '2060-11-02', '1', '2024-11-02'),
(518, '2060-11-02', '1', '2024-02-11'),
(519, '2060-10-31', '1', '2024-10-31'),
(520, '2060-10-31', '1', '2024-10-31'),
(521, '2050-10-30', '1', '2024-10-30'),
(522, '2050-10-30', '1', '2024-10-30'),
(523, '2050-03-01', '1', '2024-10-30'),
(524, '2050-10-30', '1', '2024-10-30'),
(525, '2026-01-14', '1', '2024-10-01'),
(526, '2025-04-23', '1', '2025-04-03'),
(527, '2025-04-24', '1', '2025-04-09'),
(528, '2025-04-17', '1', '2015-01-02'),
(529, '2025-04-11', '1', '2025-04-03'),
(530, '2026-04-10', '1', '2025-04-05'),
(531, '2025-04-10', '1', '2025-04-02'),
(532, '2025-05-08', '1', '2025-04-29'),
(533, '2025-04-03', '1', '2025-04-02'),
(534, '2025-04-17', '1', '2015-01-02'),
(535, '2025-04-24', '1', '2025-04-09'),
(536, '2050-03-04', '1', '2025-08-04'),
(537, '2045-08-05', '1', '2025-08-04'),
(538, '2050-03-04', '1', '2025-08-04'),
(539, '2050-10-31', '1', '2025-10-01'),
(540, '2032-09-29', '1', '2025-12-21'),
(541, '2032-09-29', '1', '2025-12-21'),
(542, '2027-12-31', '1', '2025-12-24'),
(543, '2027-12-30', '1', '2025-12-24'),
(544, '2027-12-31', '1', '2025-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `date_time` datetime(6) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `author`, `body`, `date_time`, `heading`, `link`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(25, 'Asoka Sirimanne', '<p><strong class=\"ql-size-large\">R</strong>ichmond Legends Cricket photos from year 2021. Legends Team has been formed by<strong> Mr. Lasantha De Silva</strong>. He managed legends team till Aug 2024 by his own funds and retired after his 60th Birthday. During last four years, team was led by number of past cricketers. ( <em style=\"color: rgb(0, 41, 102);\">Lasantha De Silva, Prasad Abeysundara, PA. Gunawardena, Nishantha Mendis, CK. Hewamanne, Thushan Jayawardena, Asoka Sirimanne, STR. Jayasekara</em>). We must thank to Lasantha Aiya for forming Legends Cricket Team and make us popular in Legends Cricket in the Country. We played matches almost every months organized by Lasantha Aiya and his wife \"Maheshi\". We should thank Maheshi for her support and dedication to Richmond Legends Cricket during last four years. I wanted to express my gratitude for nominating me as the President of Richmond Cricket Club for year 2024-2025 period by past Cricketers of Richmond College. I take the initiative to design \"Richmond website\" by following the idea of Dilshan Amarasinghe. He has proposed to follow a data base to keep records, monitor and manage Richmond Cricket teams. I proposed to make it as a website which will be operating online. He brought past cricketers together and fostered a sense of community and team spirit. We were able to relax, have fun, and build relationships with each other. I must thanks to Richmond Legends who was regularly engaged in Legends Cricket in last 4 years ( Lasantha De Silva, Prasad Abeysundara, PA. Gunawardena, Nishantha Mendis, CK. Hewamanne, Thushan Jayawardena, Asoka Sirimanne, STR. Jayasekara, Upul Yatawara, Asitha De Silva, Dilshan Amarasinghe, Prasantha Ramanayake, Samantha Lorensuhewa, Bakthi Mendis, Chamil Perera, Chinthaka Wickramasinghe, Indika Keppetipola,</p>', '2024-11-25 09:32:29.000000', 'Legends Photos', NULL, 'admin01', '2024-11-25 09:33:43.000000', NULL, '2024-12-24 15:25:05.000000'),
(29, 'Pamitha', 'Testing', NULL, 'Testing for Monday', NULL, '', '2024-12-09 09:52:52.000000', '', '2024-12-09 09:52:52.000000'),
(37, 'Ranjan Dias Jayasinghe', 'There are some records of Cricket matches between Richmond vs All Saints Galle.', NULL, 'Richmond vs All Saints Cricket records in year 1892 and 1924 ', NULL, '', '2024-12-18 10:11:45.000000', '', '2024-12-18 10:11:45.000000'),
(38, 'Abewickema H.L', '<p class=\"ql-align-justify\"><strong class=\"ql-size-large ql-font-serif\" style=\"color: rgb(0, 41, 102);\">St. Sylvester’s College Kandy</strong><span class=\"ql-size-large ql-font-serif\" style=\"color: rgb(0, 41, 102);\"> will meet Richmond College Galle in the quarter final of the Under 13 division 1 inter schools cricket tournament conducted by Sri Lanka Schools Cricket Association and sponsored by Sri Lanka Cricket today at Prince of Wales College ground Moratuwa.</span></p><p class=\"ql-align-justify\">St. Sylvester’s College Kandy advanced to the second round as group champion of the first round. They beat Dharmaraja College Kandy in the second round. St. Sylvester’s College Kandy beat Moratu Vidyalaya in the pre quarter final.</p><p class=\"ql-align-justify\">Richmond College Galle advanced to the second round as the runner up of their group in the first round. They beat St. Joseph’s College Wattala in the second round. Richmond College Galle beat St. Anthony’s College Katugastota in the pre quarter final.</p><ul><li class=\"ql-align-justify\">St. Sylvester’s College Kandy will be led by Adithya Gunawardane and Richmond College Galle will be led by Udula Kumudaka.</li></ul><p><img src=\"data:image/jpeg;base64,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\"></p><p class=\"ql-align-justify\">t. Sylvester’s College Kandy squad: Adithya Gunawardane (Captain), Srineth Gunawardena (Vice Captain), Lakithmal Ranasinghe, Shaheer Firas, <em><u>Rasanjana Pahalkotuwa, Kaushan Bandara, Bandara Samarakoon, Esara Gamage, Anuhas Senevirathne, Dilakshana Kumara, Bashith Saqib, Bandara Rathnayake, Basitha Egodawatta, Gayana Sanuth, Gagana Bandara, Dinuja Ekanayake, Dasnaka Abeysinghe, S. K. Somarathne (Master in charge), A. Nimesha Mendis (Head Coach), P. Arusha Mendis (Assistant coach), Charith Rajaguru (Assistant coach).</u></em></p>', NULL, 'St. Sylvester’s meet Richmond in quarters today', NULL, 'admin01', '2024-12-24 15:17:47.000000', NULL, '2024-12-24 15:29:13.000000');
INSERT INTO `news` (`id`, `author`, `body`, `date_time`, `heading`, `link`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(39, 'Wageesha Manulal', '<p class=\"ql-align-justify\"><strong style=\"background-color: rgb(204, 224, 245);\">Trinity College, Kandy and Richmond College, Galle resumed their battle in the U19 Division I schools cricket tournament tier ‘A’ final for day 3, as well as Royal College and Wesley College resumed their encounter yesterday (9th April) for day 02 in their relegation game at Nalanda College grounds.</strong></p><p class=\"ql-align-justify\">In Tier B segment St. Peter’s College and Lumbini College met each other in the final as MCA ground, Colombo while Dharmasoka College, Ambalangoda and St. Sylvesters College, Kandy met in their relegation match at Wesley College Ground, Colombo along with Dharmapala College, Pannipitiya and Ananda College, Colombo at St. Sebastian’s College Grounds, Moratuwa.</p><p class=\"ql-align-justify\">Batting first, Trinity College scored 203 and in reply to Richmond College scored 304 to took the lead in the first innings.&nbsp;</p><p class=\"ql-align-justify\">Later, the Trinity College players, who entered the field for their second innings trailing by 101 runs, scored 38 runs at the end of the second day of the match, and today they declared their innings at 254 runs with the loss of 9 wickets.</p><ul><li><a href=\"https://www.thepapare.com/u19-division-1-schools-cricket-tournament-2024-8th-april-round-up/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--td_theme_color, #4db2ec);\"><strong>Dimantha and Sharon steal the headlines on day 1</strong></a></li><li><a href=\"https://www.thepapare.com/u19-division-1-schools-cricket-tournament-2024-1st-april-round-up/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--td_theme_color, #4db2ec);\"><strong>Thamindu Pradeeptha produced the innings of his lifetime</strong></a></li></ul><p><br></p><p><br></p><p><br></p><p><img src=\"data:image/jpeg;base64,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/pFBSFTG8G1/8+4WYZTnywiTqRMybxWVQLYzfke5wk2GLIZE+Kvflujak4xEdMvbgyK+psrnvVxB835pulOJdXVoAqALnz/2QmYvvgcKZjgVls0aCjJgQBp/7f8A/9oADAMBAAIAAwAAABDzzzzzzDwRTxjzzzzzzzzzzzzBDyyBzxQijTzzzzzzzzwiSjuhDDz6wRDTzzzzyjhzE3byfvHzrVxDzzzzzxy5/wDf5ce8v0dug888888z638816938tzt88888849KwwlcTW7wwiWS88888h6cEIPBAh9BIQP988888+d8onad88dvIc6ud8888+V84v+888+ZA88UX8888+0887n888ohh08cX8888fb6fHQc88Ac04v698888urlv8A6Q//AP8AP94/488888816/8A70I6df8A/v8As8888887vy88oAAc8/3q88888848/wDF/bKDPMHJ+MPPPPPPNNG8/fHf39/2xKPPPPPPPIELPrWx/wD/AE4k88888888MwcY8w880kU8888888888c8c4Y8ssc88888888888888888888888888/8QAKREBAAEDAwIGAgMBAAAAAAAAAQARITFBUWEQIDBxkaGx8NHxUGDB4f/aAAgBAwEBPxD+P/SERgJT+k0XsmKK+UQoKeLcMG8w5fdmU0hsFiDA8xGVMF6rQqgrEPhiI0fC4poStrCWew94qtWArQhh6piMPTJLbS14doLUt9ZjoLngbEPftyUKjaxEAWYKatIiNHoKNSUn702gd7kMsJnSJYwY/PUBaMCNY4j0WDEMNWs2Cc+fVAyEIDLJw/PdXHpLQZbdglRUjVDTpmMOYTvWIuY63Lh+ZXDUv3XTdlcbD560zRrECwRXfW4cnxKtHJnqxDSFElT2PaKeVHX6adcxlzKj63YwGBQ9s9iq3BBTzu1V8qGn006XDg+YCOIlZe0FaEIGBf8APU0Lgir53bZNmURuPiIgZYQGWBg+e5CGSGRlqYYpjWWCVPc9tcesqFMl5/hdOF6QUDZlOAjOB6Thek4HpOB6Q2gpARxaw/6lc3bdzEMkEzrHqJj8TlTlQ+4OnKnKnKnKnKh5FWW5aussjB89+4D2jPAyjnG/gIqGYA1HtNyHt4PFN9pRlwy4Xm2sUqJ24sobsFtd3gNC/wBZjpLvhWAubTBtHZh1DWYKpOZ7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\"></p><p class=\"ql-align-justify\">Accordingly, the rival Richmond College players were given a target of 154 runs for the victory and at the end of the match they had scored 36 runs for the loss of a wicket. The match was drawn but accordingly, with the win in the first innings, Richmond College managed to become the champions of this year’s under-19 Tier A section.&nbsp;</p><p class=\"ql-align-justify\"><strong style=\"background-color: rgb(255, 255, 204);\">Brief Scores ;</strong><span style=\"background-color: rgb(255, 255, 204);\">&nbsp;</span></p><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Trinity College (1st inn) –</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;203/10 (89.5) Dimantha Mahavithana 54, Viduka Dhammage 31, Supun Vaduge 40, Tarana Wimaladharma 19, Kaweesha Induwara 2/46, Sihat Ramanayake 3/38, Sharon Abhishek 4/71&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Richmond College (1st inn) – 3</em></strong><em style=\"color: rgb(0, 0, 0);\">04/10 (89.1) Chehan Subasinghe 31, Nikhil Jayaweera 139, Seneth Sisan 39, Shehan de Soyza 50, Tharana Wimaladharma 4/82, Supun Vaduge 2/16&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Trinity College (2nd inn) –</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;254/9d (99.2) Dinusha Peiris 20, Supun Vaduge 96, Manula Kularatne 23, Tharana Wimaladharma 57, Sihat Ramanayake 2/66, Kaweesha Induwara 2/49, Sharon Abhishek 2/68, Yuri Kottigoda 2/ 31&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Richmond College (2nd inn) –</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;36/1 (11.2) Chehan Subasinghe 17 not out, Tamindu Pradeepta 15, Dinuka Thennakoon 1/01&nbsp;</em></blockquote>', NULL, 'Richmond College clinched the Tier A title', NULL, 'admin01', '2024-12-24 16:45:25.000000', NULL, '2024-12-25 12:17:08.000000'),
(40, 'Asoka Sirimanne', '<p>Year 2024 U 13 Cricket team has been qualified for semifinals after St Sylvester\'s match.  </p>', NULL, 'Year 2024 U 13 Cricket team', NULL, '', '2024-12-26 09:41:56.000000', '', '2024-12-26 09:41:56.000000'),
(41, 'Asoka Sirimanne', '<p>RPCPL 2020 at MaharaPrison Grounds&nbsp;held on 29th Feb</p>', NULL, 'RPCPL 2020 at Mahara Prison Grounds ', NULL, '', '2024-12-27 06:27:13.000000', NULL, '2024-12-27 06:29:35.000000'),
(42, 'Asoka Sirimanne', '<p>RPCPL 2022 at Galle Stadium&nbsp;</p>', NULL, 'RPCPL 2022 at Galle Stadium ', NULL, '', '2024-12-27 06:29:07.000000', '', '2024-12-27 06:29:07.000000'),
(43, 'Asoka Sirimanne', '<p>Signing of Memorandum of understanding between Richmond and Mahinda OBA on 16th Dec\' 2024, Monday to play big match for 03 days.&nbsp;</p>', NULL, 'Signing of Memorandum of understanding between Richmond and Mahinda OBA', NULL, '', '2024-12-27 11:11:54.000000', '', '2024-12-27 11:11:54.000000'),
(47, 'Asoka Sirimanne', '<p>මේ ඡායාරූපයේ ඇති කතාව ලෝකයේ කිසිම ඡායාරූපයක නැති බවට සැකයක් නැත..</p><p>මේ 1957&nbsp;වර්ෂයේ ගාල්ල මහින්ද විදුහලේ පළමු පෙළ ක්‍රිකට් කණ්ඩායමයි...</p><p><br></p><p>ඉදිරිපෙළ දකුණේ සිට වමට දෙවැන්නා නායක සිසිර අමේන්ද්‍රයි...</p><p>ඔහුගේ සොහොයුරෙක් වූ රාජා අමේන්ද්‍ර ඉදිරිපිල වමේ සිට පළමුවැන්නායි..</p><p><br></p><p>පසු පෙළ වමේ සිට පළ වැන්නා ස්ටැන්ලි අමේන්ද්‍රයි..</p><p><br></p><p>පසු පෙළ කුණු කෙළවරේ තිස්ස අමේන්ද්‍ර සිටින අතර&nbsp;දකුණේ සිට තෙවැන්නා පර්සි අමේන්ද්‍රයි..</p><p><br></p><p>එකම වසරක&nbsp;ලෝකයේ කිසිදු විදුහලක&nbsp;ක්‍රිකට් කණ්ඩායමකට එකම පවුලේ සහෝදරයන් පස්දෙනකු ක්‍රීඩා කර නැති බව නම් සහතිකය..</p><p><br></p><p>ඒ නිසා මේ ඡායාරූපය ඒ වර්ගයේ ලොව ඇති එකම ඡායාරූපය විය යුතුය...</p><p><br></p><p>එමෙන්ම අමෙන්ද්‍ර සොහොයුරන් පස් දෙනෙක් මහින්ද පළමු පිළ කණ්ඩායමේ නායකත්වය දරා ඇත..</p><p><br></p><p>සිසිර 1957</p><p>ස්ටැන්ලි 1958/1959</p><p>&nbsp;පර්සි1961</p><p>&nbsp;අශෝක1964</p><p>&nbsp;පුණ්‍යා 1966</p><p><br></p><p>1951 සිට 73 දක්වා වසර විසිතුනේදී අමේන්ද්‍ර පවුලේ සහෝදරයන් නව දෙනෙකුම මහින්ද ක්‍රිකට් කණ්ඩායම නියෝජනය කරනු ලැබූ අතර අමේන්ද්‍ර පවුලේ සිටින්නේද සහෝදරයන් නව දෙනෙක් වීමද,ඔවුන් නව දෙනාම මහින්දයේ</p><p>පළමු පෙළ කණ්ඩායම නියෝජනය කිරීමද ලෝක වාර්තාවක් විය යුතුය...</p><p><br></p><p>මේ ඡායාරූපයේ මහින්දයේ සිටි කීර්තිමත් විදුහල්පතිවරයෙකු වූ ඊ ඒ විජය සූරිය මහතාද ක්‍රීඩාභාර මේජර් එස් විජේරත්ත මහතාද පුහුණුකරු ඩී එල් හේවා මහතා ද සිටි..</p><p><br></p><p>( ඡායාරූපය සුන්දර නිහතමානී ද මෙල් මහතාගේ මහින්දෙ තමයි ඉස්කෝලේ පොතෙන්)</p><p><br></p><p>මේ පෝස්ට් එකට මවිසින් ටැග් කර ඇත්තේ</p><p>එදා මහින්ද නායකත්වය දැරූ සිසිර අමේන්ද්‍රවයි..</p>', NULL, 'Year 1957 Mahinda Team - From Facebook post of Lal de Alwis', NULL, '', '2025-01-18 15:44:50.000000', NULL, '2025-09-18 10:32:41.000000'),
(48, 'Asoka Sirimanne', '<p>Richmond Cricket Teams year 2018</p>', NULL, 'Richmond Cricket Teams year 2018', NULL, '', '2025-01-18 16:03:08.000000', '', '2025-01-18 16:03:08.000000'),
(49, 'Asoka Sirimanne', '<p class=\"ql-align-justify\"><strong>Trinity College, Kandy and Richmond College, Galle resumed their battle in the U19 Division I schools cricket tournament tier ‘A’ final for day 3, as well as Royal College and Wesley College resumed their encounter yesterday (9th April) for day 02 in their relegation game at Nalanda College grounds.</strong></p><p class=\"ql-align-justify\">In Tier B segment St. Peter’s College and Lumbini College met each other in the final as MCA ground, Colombo while Dharmasoka College, Ambalangoda and St. Sylvesters College, Kandy met in their relegation match at Wesley College Ground, Colombo along with Dharmapala College, Pannipitiya and Ananda College, Colombo at St. Sebastian’s College Grounds, Moratuwa.</p><p class=\"ql-align-justify\">Batting first, Trinity College scored 203 and in reply to Richmond College scored 304 to took the lead in the first innings.&nbsp;</p><p class=\"ql-align-justify\">Later, the Trinity College players, who entered the field for their second innings trailing by 101 runs, scored 38 runs at the end of the second day of the match, and today they declared their innings at 254 runs with the loss of 9 wickets.</p><ul><li><a href=\"https://www.thepapare.com/u19-division-1-schools-cricket-tournament-2024-8th-april-round-up/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--td_theme_color, #4db2ec); background-color: transparent;\"><strong>Dimantha and Sharon steal the headlines on day 1</strong></a></li><li><a href=\"https://www.thepapare.com/u19-division-1-schools-cricket-tournament-2024-1st-april-round-up/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--td_theme_color, #4db2ec); background-color: transparent;\"><strong>Thamindu Pradeeptha produced the innings of his lifetime</strong></a></li></ul><p class=\"ql-align-justify\">Accordingly, the rival Richmond College players were given a target of 154 runs for the victory and at the end of the match they had scored 36 runs for the loss of a wicket. The match was drawn but accordingly, with the win in the first innings, Richmond College managed to become the champions of this year’s under-19 Tier A section.&nbsp;</p><p class=\"ql-align-justify\"><strong>Brief Scores ;</strong>&nbsp;</p><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Trinity College (1st inn) –</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;203/10 (89.5) Dimantha Mahavithana 54, Viduka Dhammage 31, Supun Vaduge 40, Tarana Wimaladharma 19, Kaweesha Induwara 2/46, Sihat Ramanayake 3/38, Sharon Abhishek 4/71&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Richmond College (1st inn) – 3</em></strong><em style=\"color: rgb(0, 0, 0);\">04/10 (89.1) Chehan Subasinghe 31, Nikhil Jayaweera 139, Seneth Sisan 39, Shehan de Soyza 50, Tharana Wimaladharma 4/82, Supun Vaduge 2/16&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Trinity College (2nd inn) –</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;254/9d (99.2) Dinusha Peiris 20, Supun Vaduge 96, Manula Kularatne 23, Tharana Wimaladharma 57, Sihat Ramanayake 2/66, Kaweesha Induwara 2/49, Sharon Abhishek 2/68, Yuri Kottigoda 2/ 31&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Richmond College (2nd inn) –</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;36/1 (11.2) Chehan Subasinghe 17 not out, Tamindu Pradeepta 15, Dinuka Thennakoon 1/01&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(128, 0, 0);\"><em>Match was drawn</em></strong></blockquote><p class=\"ql-align-justify\">A competitive score from St. Peter’s to kick off the Tier B final today. In this match, St. Peter’s College captain who won the toss chose to bat first scored 291 all out for their first innings with eight batsmen scoring double figures.&nbsp;</p><p class=\"ql-align-justify\">Shannon Rodrigo managed to take the first wicket of Lumbini in their reply innings. But after that, Nabeel Rajuddin and Ashan Shanika, who came together, managed to put together an unbeaten 57-run partnership for the 2nd wicket.&nbsp;</p><p class=\"ql-align-justify\"><strong>Brief Scores ;</strong>&nbsp;</p><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>St. Peter’s College (1st inn) – 291 /10 (87.5)</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;Oveen Salgadu 41, Dilana Damsara 33, Vishen Halembage 32, Asadisa De Silva 46, Shannon Rodrigo 29, Lashmika Perera 34, Chamindu Perera 35, Sahan Kaushalya 3/60, Ushan Satsara 2/55, Praveen Manisha 3/72&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Lumbini College (1st inn) – 57/1 (10.0)</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;Nabeel Rajuddin 37 not out, Ashan Shanika 14 not out, Shannon Rodrigo 1/16&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><em style=\"color: rgb(0, 0, 0);\">Stumps day 01&nbsp;</em></blockquote><p class=\"ql-align-justify\">The relegation match of Tier A between Royal College versus Wesley College ended up in a draw as Royal survived by winning the 1st&nbsp;innings of the match. Lithum Senuja scored a brilliant knock of 76 while Jethon contributed a half century from his bat as well for Wesley. Wesley college was restricted to 276 all out in their 1st&nbsp;innings. In Reply royal college scored a mammoth score of 321 for the loss of 9 wickets in 85.5 overs. Hirun Matheesha, Dinura Senaratne and Nethwin Dharmarate scored half centuries on behalf of the team.&nbsp;</p><p class=\"ql-align-justify\"><strong>Brief Scores ;</strong>&nbsp;</p><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Wesley College (1st inn) – 276/10 (85.4)</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;Lithum Senuja 76, Jethon Wyman 50, Linal Subasinghe 36, Yenula Bandara 3/60, Nethwin Dharmarathne 2/27, Ramiru Perera 2/44&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Royal College (1st inn) – 321/9 (85.5)</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;Nethwin Dharmarathne 78, Dinura Senaratna 52, Hirun Matheesha 58, Sakesh Minon 3/58, Nilupul Liyanage 2/26, Linal Subasinghe 2/72&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><em style=\"color: rgb(0, 0, 0);\">Match was drawn&nbsp;</em></blockquote><p class=\"ql-align-justify\">In Tier B relegation match Ananda college won the toss and elected to ball first. Dharmapala college in their first innings scored 114 all out for 39.2 overs. Bisara Anjana the skipper just fell short for his half century by getting dismissed at 48 runs. Ananda college scored a mammoth score of 329 runs for 5 wickets in just 58 overs. There were 3 half centuries by Kenul, Ayesh and Iruth while 3 other batters contributed by scoring 40+ runs.&nbsp;</p><p class=\"ql-align-justify\"><strong>Brief Scores ;</strong>&nbsp;</p><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Dharmapala College (1st inn) –</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;114/10 (39.2) Bisara Anjana 48, Ahinsa Nainayake 3/22, Kaveesha Mendis 2/31, Ruvishan Perera 2/22, Yasandu Kiriella 2/14</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Ananda College (1st inn) –</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;329/5 (58) Kenul De soyza 69, Ayesh Shashimal 56, Iruth Gimshan 58, Thimoth Pathinayake 2/49&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><em style=\"color: rgb(0, 0, 0);\">Stumps day 01</em></blockquote><p class=\"ql-align-justify\">The other relegation match of Tier B happened at Wesley college ground. St. Sylvesters College, Kandy won the toss and selected to Ball first. The first innings of Dharmashoka college restricted to 189 all out at 56.1 overs. In reply the lads from Kandy scored 142 runs for the loss of 5 wickets at the end of the day. The skipper Randul of Dharmashoka College scored a superb knock of 94 runs being the highest in the lineup. None of the batters from St. Sylvester college managed to get past the half century mark so far in the game. The two openers built a solid 1st&nbsp;wicket partnership of 79 runs.&nbsp;</p><p class=\"ql-align-justify\"><strong>Brief Scores ;</strong>&nbsp;</p><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>Dharmashoka College (1st inn) – 189/10 (56.1)</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;Randul Samarahewa 94, Senitha Halambage 56, Nimesh Silva 3/54, Arusha Jayasinghe 3/40&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\"><em>St. Sylvesters College (1st inn) – 329/5 (58)</em></strong><em style=\"color: rgb(0, 0, 0);\">&nbsp;Wageesha Hansala 49, Kashyapa Dissanayaka 46, Iruth Gimshan 58, Jithira Sansika 4/33, Senitha Halambage 1/46&nbsp;</em></blockquote><blockquote class=\"ql-align-center\"><em>&nbsp;</em></blockquote><blockquote class=\"ql-align-justify\"><em style=\"color: rgb(0, 0, 0);\">Stumps day 01</em></blockquote><p><br></p>', NULL, 'Richmond College clinched the Tier A title in Year 2024', NULL, '', '2025-01-18 16:14:05.000000', '', '2025-01-18 16:14:05.000000'),
(52, 'Asoka Sirimanne', '<p>Please follow this FB page to see event Photos : <a href=\"https://www.facebook.com/share/p/1Eq96bjnRK/?mibextid=xfxF2i\" rel=\"noopener noreferrer\" target=\"_blank\">https://www.facebook.com/share/p/1Eq96bjnRK/?mibextid=xfxF2i</a></p>', NULL, 'Past Cricketers Night Year 2025', NULL, '', '2025-04-24 09:12:39.000000', NULL, '2025-04-24 10:18:42.000000'),
(53, 'Asoka Sirimanne', '<p>Played match on 04th Aug 2025 at Artillery Grounds Panagoda. Richmond Legends won by 5 wickets. Buddika Silva and Lisula Wijerathne got the membership of Legends team. </p>', NULL, 'Richmond Legend vs Chilaw Legends', NULL, '', '2025-08-04 06:32:56.000000', '', '2025-08-04 06:32:56.000000'),
(54, 'Asoka Sirimanne', '<p>Richmond Legends won by 5 wickets. Ananda Masters 215/10 in 27.1 overs . Richmond 217/5 in 26.4 overs. Chamil Perera was player of the match. </p>', NULL, 'Richmond Legends vs Ananda Masters over 45 match on 06th Dec 2025 at Rathmalana Irrigation grounds. ', NULL, '', '2025-12-09 03:54:27.000000', '', '2025-12-09 03:54:27.000000');

-- --------------------------------------------------------

--
-- Table structure for table `officials`
--

CREATE TABLE `officials` (
  `id` bigint(20) NOT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `officials`
--

INSERT INTO `officials` (`id`, `contact_no`, `name`, `position`, `user_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `image`) VALUES
(1, '+94724520055', 'Mr. P.A. Dharmarathne', 'Vice Principle', 25, NULL, NULL, NULL, NULL, NULL),
(24, '0712234057', 'Kumar De Silva', 'Teacher', 238, 'admin01', '2025-03-17 03:43:26.000000', NULL, NULL, NULL),
(25, '+94714489804', 'Nuwan Jayasinghe', 'Masterincharge', 255, 'admin01', '2025-04-22 05:20:09.000000', 'admin01', '2025-04-28 07:19:16.000000', 'nuwan01.jpg'),
(26, '+94718239135', 'Rusira Maddumahewage', 'Principal', 256, 'admin01', '2025-04-22 05:25:05.000000', 'admin01', '2025-04-28 07:18:01.000000', 'rusira01.jpg'),
(27, '0712234057', 'John Smith', 'Umpire', 286, 'admin', '2025-04-25 00:00:00.000000', 'admin01', '2025-05-08 05:03:29.000000', 'official123.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` bigint(20) NOT NULL,
  `batting_style` varchar(255) DEFAULT NULL,
  `bowling_style` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `player_role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `membership_id` bigint(20) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `batting_style`, `bowling_style`, `contact_no`, `date_of_birth`, `email`, `image`, `name`, `player_role`, `status`, `membership_id`, `role_id`, `user_id`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(32, 'LHB', 'LAMS', '0771234567', '2006-01-07', 'kevin@gmail.com', 'kevin01.jpg', 'K.K.Yuri', 'Bowler', 'Active', 438, 1, 54, NULL, NULL, 'IT Master', '2025-03-18 06:46:24.000000'),
(33, 'LHB', 'RAS', '0771234567', '2006-03-23', 'nithish@gmail.com', 'nithish01.jpg', 'K.A. Nikil Jayaweera', 'Top Order Batter', 'Active', 525, 1, 55, NULL, NULL, 'admin01', '2025-04-28 08:48:01.000000'),
(34, 'LHB', 'OS', '0771234567', '2006-07-05', 'udula@gmail.com', 'udula01.jpg', 'D.S. Madushanka De Zoysa', 'Allrounder', 'Active', 444, 1, 56, NULL, NULL, 'IT Master', '2025-03-18 06:54:04.000000'),
(35, 'RHB', 'OS', '0771234567', '2006-03-13', 'sadew@gmail.com', 'sadew01.jpg', 'Malith Mihiranga De Silva', 'Batting Allrounder', 'Active', 458, 1, 57, NULL, NULL, 'admin01', '2025-04-22 06:19:36.000000'),
(36, 'RHB', 'LBG', '0771234567', '2006-02-28', 'dinidu@gmail.com', 'dinidu01.jpg', 'Pubudu Mihiranga', 'Wicketkeeper Batter', 'Active', 439, 1, 58, NULL, NULL, 'IT Master', '2025-03-18 06:46:48.000000'),
(37, 'LHB', 'RAL', '0771234567', '2006-08-21', 'janiru@gmail.com', 'janiru01.jpg', 'Helith Edirisinghe', 'Bowler', 'Active', 465, 1, 59, NULL, NULL, 'admin01', '2025-04-23 04:31:19.000000'),
(38, 'RHB', 'RAS', '0771234567', '2009-08-15', 'dewmitha@gmail.com', 'dewmitha01.jpg', 'Ravinu Randinu Abeysiri Gunawardena', 'Top Order Batter', 'Active', 484, 1, 60, NULL, NULL, 'admin01', '2025-04-25 03:01:45.000000'),
(39, 'LHB', 'OS', '0771234567', '2007-07-02', 'kirulinda@gmail.com', 'kirulina01.jpg', 'Nethuja Bashitha', 'Bowling Allrounder', 'Active', 471, 1, 61, NULL, NULL, 'admin01', '2025-04-23 10:54:52.000000'),
(45, 'LHB', 'RAFM', '+94773000529', '1965-01-29', 'sandatenna@sltnet.lk', 'Lasantha01.jpg', 'Lasantha De Silva', 'Batting Allrounder', 'Active', 321, 1, 70, NULL, NULL, 'admin01', '2024-12-27 07:57:19.000000'),
(47, 'LHB', 'RASM', '+94772533829', '1970-02-13', 'sirimanne@cdl.lk', 'Asoka01.jpg', 'Asoka Sirimanne', 'Batting Allrounder', 'Active', 326, 1, 72, NULL, NULL, 'admin01', '2024-12-27 08:54:58.000000'),
(48, 'RHB', 'SLAO', '+94772533829', '1964-10-30', 'prasad@gmail.com', 'prasad01.jpg', 'Prasad Abeysundara', 'Bawlling Allrounder', 'Active', 523, 1, 74, NULL, NULL, 'admin01', '2025-04-28 07:51:13.000000'),
(49, 'RHB', 'RASM', '+94773703009', '1965-10-30', 'pusitha@gmail.com', 'pusitha01.jpg', 'Pusitha Gunawardena', 'Batting Allrounder', 'Active', 522, 1, 75, NULL, NULL, 'admin01', '2025-04-28 07:50:48.000000'),
(50, 'RHB', 'OB', '+94777005223', '1967-09-24', 'nishanthamendis@hotmail.com', 'nishantha01.jpg', 'Nishantha Mendis', 'Batting Allrounder', 'Active', 318, 1, 76, NULL, NULL, 'admin01', '2024-12-27 07:49:13.000000'),
(52, 'RHB', 'OB', '+94777941341', '1969-10-30', 'hewa@gmail.com', 'hewamanne01.jpg', 'C.K.Hewamanne', 'Batter', 'Active', 521, 1, 78, NULL, NULL, 'admin01', '2025-04-28 07:50:31.000000'),
(53, 'RHB', 'SLAO', '+94712205425', '1969-06-27', 'thushan.duminda@gmail.com', 'thushan01.jpg', 'Thushan Jayawardena', 'Bowler', 'Active', 323, 1, 79, NULL, NULL, 'admin01', '2024-12-27 08:03:21.000000'),
(54, 'RHB', 'SRAWS', '+94760684090', '1968-11-04', 'yatawaraupul12@gmail.com', 'yatawara01.jpg', 'Upul Yatawara', 'Bowling Allrounder', 'Active', 401, 1, 80, NULL, NULL, 'admin01', '2025-02-14 05:52:08.000000'),
(55, 'LHB', 'LAFM', '+94713217880', '1971-08-09', 'samanjayasekara68@gmail.com', 'saman01.jpg', 'S.T.R.Jayasekara', 'Bowling Allrounder', 'Active', 402, 1, 81, NULL, NULL, 'admin01', '2025-02-14 05:52:31.000000'),
(56, 'LHB', 'SRAWS', '+94714527250', '1973-12-30', 'Dilshdilshan@lalangroup.com', 'dilshan01.jpg', 'Dilshan Amarasinghe', 'Batting Allrounder', 'Active', 324, 1, 82, NULL, NULL, 'admin01', '2024-12-27 08:48:39.000000'),
(57, 'RHB', 'LB', '+94762183392', '1971-09-10', 'asithad2013@gmail.com', 'asitha01.jpg', 'Asitha De Silva', 'Batting Allrounder', 'Active', 210, 1, 83, NULL, NULL, 'testImage505', '2024-12-05 19:17:08.000000'),
(58, 'LHB', 'RAFM', '+94777776214', '1972-10-22', '72ramanayake@gmail.com', 'prasanna.jpg', 'Prasana Ramanayaka', 'Bowling Allrounder', 'Active', 403, 1, 84, NULL, NULL, 'admin01', '2025-02-14 05:52:46.000000'),
(59, 'RHB', 'SRAWS', '+94778145711', '1980-10-30', 'bakthi@gmail.com', 'bakthi01.jpg', 'Bakthi Mendis', 'Bowler', 'Active', 524, 1, 85, NULL, NULL, 'admin01', '2025-04-28 07:52:01.000000'),
(60, 'RHB', 'RAFM', '+94719321541', '1979-10-31', 'chamilperera1979@gmail.com', 'chamil01.jpg', 'Chamil Perera', 'Batting Allrounder', 'Active', 246, 1, 86, NULL, NULL, 'admin01', '2024-12-06 11:05:14.000000'),
(61, 'RHB', 'OB', '+94773260452', '1977-12-05', 'samanthalorensuhewa@gmail.com', 'samantha01.jpg', 'Samantha Lorenzuhewa', 'Wicketkeeper Batter', 'Active', 344, 1, 87, NULL, NULL, 'admin01', '2024-12-27 09:31:08.000000'),
(62, 'RHB', 'LAMS', '+94776406554', '1979-10-31', 'udayanga2848@gmail.com', 'indika01.jpg', 'Indika Udayanga', 'Batting Allrounder', 'Active', 520, 1, 88, NULL, NULL, 'admin01', '2025-04-28 07:49:47.000000'),
(63, 'RHB', 'RASM', '+94777776264', '1973-10-31', 'salukawijesiri@gmail.com', 'saluka01.jpg', 'Saluka Wijesiri', 'Top Order Batter', 'Active', 519, 1, 89, NULL, NULL, 'admin01', '2025-04-28 07:49:35.000000'),
(65, 'RHB', 'RAF', '+94777324500', '1985-05-05', 'gchathupama@gmail.com', 'chathupama01.jpg', 'Chathupama Gunasinghe ', 'Batting Allrounder', 'Active', 250, 1, 91, NULL, NULL, 'admin01', '2024-12-06 11:11:42.000000'),
(66, 'RHB', 'RAMS', '+94777225000', '1982-11-02', 'ace@gmail.com', 'tharindu01.jpg', 'Tharindu Weerasinghe', 'Batting Allrounder', 'Active', 518, 1, 92, NULL, NULL, 'admin01', '2025-04-28 07:49:14.000000'),
(67, 'RHB', 'RAMS', '+94777305852', '1969-11-02', 'chinthakaw@gmail.com', 'chinthaka01.jpg', 'Chinthaka Wickramasinghe', 'Batter', 'Active', 517, 1, 93, NULL, NULL, 'admin01', '2025-04-28 07:48:46.000000'),
(68, 'RHB', 'RASM', '+94772533828', '1969-04-23', 'hiran@gmail.com', 'hiran01.jpg', 'Hiran Jayawardena', 'Batting Allrounder', 'Active', 516, 1, 94, NULL, NULL, 'admin01', '2025-04-28 07:48:21.000000'),
(141, 'RHB', 'N/A', '0712234057', '2006-01-28', 'mamtha@gmail.com', 'tes01.jpg', 'W.S. Thamindu Pradeeptha', 'Batter', 'Active', 437, 1, 239, 'admin01', '2025-03-17 04:33:08.000000', 'IT Master', '2025-03-18 06:46:04.000000'),
(142, 'RHB', 'RAS', '+94777225000', '2007-11-24', 'you@gmail.com', 'bevin.jpg', 'Bevin Moksha Jayawardana', 'Wicketkeeper Batter', 'Active', 436, 1, 240, 'IT Master', '2025-03-17 15:20:30.000000', 'IT Master', '2025-03-18 06:45:27.000000'),
(143, 'RHB', 'RAS', '0771234567', '2008-04-15', 'you1@gmail.com', 'minaga.jpg', 'Minaga Sasmitha Ariyadasa', 'Bowling Allrounder', 'Active', 442, 1, 241, 'IT Master', '2025-03-17 15:44:39.000000', 'IT Master', '2025-03-18 06:49:24.000000'),
(144, 'LHB', 'LAMS', '0712234057', '2007-10-03', 'you2@gmail.com', 'tenusha.jpg', 'M. Tenusha Nimsara', 'Batter', 'Active', 435, 1, 242, 'IT Master', '2025-03-17 15:49:11.000000', 'IT Master', '2025-03-18 06:44:54.000000'),
(145, 'RHB', 'RAFM', '0712234057', '2006-01-30', 'you3@gmail.com', 'chamod.jpg', 'P.V.Chamod Punsara', 'Batting Allrounder', 'Active', 434, 1, 243, 'IT Master', '2025-03-17 15:53:43.000000', 'IT Master', '2025-03-18 06:40:29.000000'),
(146, 'LHB', 'LAF', '0712234057', '2009-02-11', 'you4@gmail.com', 'tenura.jpg', 'P.G.Tenura Nethmina Dias', 'Batter', 'Active', 470, 1, 244, 'IT Master', '2025-03-17 15:58:35.000000', 'admin01', '2025-04-23 10:51:59.000000'),
(147, 'RHB', 'RAMS', '0712234057', '2007-01-12', 'you5@gmail.com', 'risinu.jpg', 'Risinu Geenuka Rupasinghe', 'Batter', 'Active', 469, 1, 245, 'IT Master', '2025-03-17 16:01:40.000000', 'admin01', '2025-04-23 10:43:01.000000'),
(148, 'RHB', 'LAF', '+94777225000', '2008-06-01', 'you6@gmail.com', 'nethsara.jpg', 'Nethsara Akash Hewa', 'Batter', 'Active', 443, 1, 246, 'IT Master', '2025-03-17 16:04:01.000000', 'IT Master', '2025-03-18 06:49:49.000000'),
(149, 'LHB', 'RAL', '0771234567', '2008-12-20', 'you7@gmail.com', 'punal.jpg', 'H.M.Punal Hasanjith', 'Batter', 'Active', 433, 1, 247, 'IT Master', '2025-03-17 16:08:51.000000', 'IT Master', '2025-03-18 06:39:47.000000'),
(152, 'RHB', 'RAMF', '0712234057', '2006-04-03', 'ameesha@gmail.com', 'ameesha01.jpg', 'Ameesha Rasanjana', 'Batter', 'Active', 468, 1, 257, 'admin01', '2025-04-22 10:38:22.000000', 'admin01', '2025-04-23 10:42:05.000000'),
(153, 'RHB', 'RALS', '+94772224535', '2010-10-10', 'hiruk@gmail.com', 'hiruk01.jpg', 'Hiruk Akalanka', 'Allrounder', 'Active', 467, 1, 258, 'admin01', '2025-04-22 14:04:10.000000', 'admin01', '2025-04-23 10:41:28.000000'),
(154, 'RHB', 'RAF', '+94772533829', '2008-02-08', 'ranindu@gmail.com', 'ranindu01.jpg', 'Ranindu Chanaka De Silva', 'Allrounder', 'Active', 472, 1, 259, 'admin01', '2025-04-23 04:14:24.000000', 'admin01', '2025-04-23 10:55:39.000000'),
(155, 'RHB', 'RAOS', '0723456789', '2009-08-15', 'ravinu@gmail.com', 'Ravinu01.jpg', 'Ravinu Yasasvith Randinu Abeysiri Gunawardhana', 'Allrounder', 'Inactive', 534, 1, 260, 'admin01', '2025-04-24 10:33:25.000000', 'admin01', '2025-06-14 04:36:56.000000'),
(156, 'LHB', 'RALS', '0712234057', '2008-12-20', 'hewa1@gmail.com', 'Hewa01.jpg', 'Hewa Manage Punal Rashinda Hansajith', 'Allrounder', 'Active', 529, 1, 261, 'admin01', '2025-04-24 10:44:46.000000', 'admin01', '2025-04-30 11:18:34.000000'),
(157, 'LHB', 'RAF', '0712234057', '2009-02-11', 'paragoda@gmail.com', 'Paragoda01.jpg', 'Paragoda Gamage Tenura Nethmina Dias', 'Allrounder', 'Active', 530, 1, 262, 'admin01', '2025-04-24 10:50:03.000000', 'admin01', '2025-04-30 11:19:15.000000'),
(158, 'RHB', 'RAOS', '0712234057', '2009-02-16', 'Walakada@gmail.com', 'Walakada01.jpg', 'Walakada Gamage Tharun Duljaan Nethmira Ariyarathna', 'Allrounder', 'Active', 532, 1, 263, 'admin01', '2025-04-24 10:53:42.000000', 'admin01', '2025-05-02 03:41:59.000000'),
(159, 'RHB', '', '0712234057', '2010-04-13', 'Sakrage@gmail.com', 'Sakrage01.jpg', 'Sakrage Senuk Dulneth Kumara', 'Batter', 'Active', 483, 1, 264, 'admin01', '2025-04-24 10:56:46.000000', 'admin01', '2025-04-25 02:52:28.000000'),
(160, 'LHB', 'RAOS', '0712234057', '2009-05-20', 'Rathnayaka@gmail.com', 'Rathnayaka01.jpg', 'Rathnayaka Mudalige Chamithu Dulneth', 'Allrounder', 'Active', 502, 1, 265, 'admin01', '2025-04-24 10:58:34.000000', 'admin01', '2025-04-26 02:32:45.000000'),
(161, 'RHB', 'LALS', '0712234057', '2008-09-21', 'Wewalwala@gmail.com', 'Wewalwala01.jpg', 'Wewalwala Hewage Imalsha Udeera', 'Allrounder', 'Active', 533, 1, 266, 'admin01', '2025-04-24 11:00:25.000000', 'admin01', '2025-05-02 04:43:45.000000'),
(162, 'LHB', 'LALS', '0712234057', '2008-09-16', 'Dulkith@gmail.com', 'Dulkith01.jpg', 'Dulkith Nimviru Wewalwala', 'Allrounder', 'Active', 531, 1, 267, 'admin01', '2025-04-24 11:02:19.000000', 'admin01', '2025-05-02 03:41:18.000000'),
(163, 'RHB', 'RAF', '0712234057', '2009-07-26', 'loku@gmail.com', 'loku01.jpg', 'Loku Umagiliyage Pavara Adhmina', 'Allrounder', 'Active', 482, 1, 268, 'admin01', '2025-04-24 11:03:57.000000', NULL, NULL),
(164, 'RHB', 'RAF', '0712234057', '2008-10-14', 'Chamindu@gmail.com', 'Chamindu01.jpg', 'Chamindu Sandulwan Kalupahana', 'Allrounder', 'Active', 505, 1, 269, 'admin01', '2025-04-25 03:07:17.000000', 'admin01', '2025-04-26 02:35:02.000000'),
(165, 'LHB', 'RAOS', '0712234057', '2009-05-26', 'Wickrama@gmail.com', 'Wickrama01.jpg', 'Wickrama Senevirathna Kaveed Sanuka Sithupama', 'Allrounder', 'Active', 511, 1, 270, 'admin01', '2025-04-25 03:09:02.000000', 'admin01', '2025-04-27 16:20:44.000000'),
(166, 'RHB', 'RAF', '0771234567', '2008-10-14', 'chamindu1@gmail.com', 'chamin01.jpg', 'Chamindu Sandulwan Kalupahana', 'Bowling Allrounder', 'Inactive', 504, 1, 271, 'admin01', '2025-04-25 03:05:45.000000', 'admin01', '2025-04-26 02:34:45.000000'),
(167, 'RHB', 'RAMF', '0712234057', '2009-06-05', 'Waththage@gmail.com', 'Waththage01.jpg', 'Waththage Binuka Hasaral', 'Allrounder', 'Inactive', 535, 1, 272, 'admin01', '2025-04-25 03:10:30.000000', 'admin01', '2025-07-19 05:44:23.000000'),
(168, 'RHB', 'RAOS', '0712234057', '2009-01-27', 'Onitha@gmail.com', 'Onitha01.jpg', 'Onitha Rampathi Ranaweera', 'Allrounder', 'Active', 489, 1, 273, 'admin01', '2025-04-25 03:11:52.000000', NULL, NULL),
(169, 'LHB', 'RAOS', '0771234567', '2009-05-26', 'admin002@gmail.com', 'sanuka01.jpg', 'W.S. Kaveed Sanuka Sithupama', 'Bowling Allrounder', 'Inactive', 510, 1, 274, 'admin01', '2025-04-25 03:11:32.000000', 'admin01', '2025-04-27 16:20:18.000000'),
(170, 'RHB', 'RAF', '0712234057', '2009-09-01', 'Karagoda@gmail.com', 'Karagoda01.jpg', 'Karagoda Pathiranage Bigun Prabhashwara', 'Allrounder', 'Active', 515, 1, 275, 'admin01', '2025-04-25 03:13:24.000000', 'admin01', '2025-04-27 16:24:41.000000'),
(171, 'RHB', 'RAF', '0712234057', '2009-09-26', 'Merengngna@gmail.com', 'Merengngna01.jpg', 'Merengngna Maleesha Theshan', 'Allrounder', 'Active', 513, 1, 276, 'admin01', '2025-04-25 03:15:26.000000', 'admin01', '2025-04-27 16:22:34.000000'),
(172, 'RHB', 'RAMF', '0771234567', '2009-06-05', 'admin003@gmail.com', 'binuka01.jpg', 'waththage Binuka Hasaral', 'Allrounder', 'Active', 509, 1, 277, 'admin01', '2025-04-25 03:15:01.000000', 'admin01', '2025-04-27 16:18:43.000000'),
(173, 'RHB', 'RAOS', '0712234057', '2010-08-25', 'Thuyiya@gmail.com', 'Thuyiya01.jpg', 'Thuyiya Handi Hiruja Sanruth', 'Allrounder', 'Active', 508, 1, 278, 'admin01', '2025-04-25 03:16:59.000000', 'admin01', '2025-04-27 16:17:30.000000'),
(174, 'RHB', 'RAF', '0712234057', '2010-10-29', 'Yuneth@gmail.com', 'Yuneth01.jpg', 'Yuneth Sihathum Piyadigama', 'Allrounder', 'Active', 512, 1, 279, 'admin01', '2025-04-25 03:18:58.000000', 'admin01', '2025-04-27 16:21:36.000000'),
(175, 'RHB', 'RAMF', '0712234057', '2010-08-17', 'Binula@gmail.com', 'Binula01.jpg', 'Binula Sethul Pelaketiya', 'Allrounder', 'Active', 514, 1, 280, 'admin01', '2025-04-25 03:20:29.000000', 'admin01', '2025-04-27 16:23:32.000000'),
(176, 'RHB', 'RAOS', '0712234057', '2010-07-15', 'Minila@gmail.com', 'Minila01.jpg', 'Minila Basuru Dias Yapa Abhayagunawardana', 'Allrounder', 'Active', 506, 1, 281, 'admin01', '2025-04-25 03:22:27.000000', 'admin01', '2025-04-27 16:15:07.000000'),
(177, 'RHB', 'RAF', '0712234057', '2009-05-09', 'Kirinda@gmail.com', 'Kirinda01.jpg', 'Kirinda Mudalige Dishan Dinumika', 'Allrounder', 'Active', 526, 1, 282, 'admin01', '2025-04-25 03:23:48.000000', 'admin01', '2025-04-30 07:43:12.000000'),
(181, 'RHB', 'RAMF', '+94773544514', '1978-09-20', 'lisula@gmail.com', 'lisula01.jpg', 'Lisula Wijenayake', 'Bowling Allrounder', 'Active', 538, 1, 287, 'admin01', '2025-08-04 03:16:46.000000', 'admin01', '2025-08-04 03:38:55.000000'),
(182, 'RHB', 'RAM', '+94772578629', '1970-12-24', 'buddika@gmail.com', 'buddika01.jpg', 'Buddika De Silva', 'Batting Allrounder', 'Active', 537, 1, 288, 'admin01', '2025-08-04 03:24:34.000000', NULL, NULL),
(183, 'RHB', 'RAMF', '+94773565634', '1976-06-26', 'vithanagechanaka8@gmail.com', 'chanaka01.jpg', 'Chanaka M Vithanage', 'Top Order Batter', 'Active', 539, 1, 290, 'admin01', '2025-10-02 04:04:15.000000', NULL, NULL),
(184, 'RHB', 'LALS', '+94714403535', '1988-03-11', 'shaleensaranga1988@gmail.com', 'Shaleen.jpg', 'Shaleen Edirimanna', 'Allrounder', 'Active', 541, 1, 291, 'Admin003', '2025-12-21 04:22:58.000000', 'Admin003', '2025-12-21 04:46:01.000000'),
(185, 'RHB', 'RAFM', '0728409959', '2008-07-25', 'chalindudulmina@gmail.com', 'Chalindu.jpg', 'Chalindu Dulmina Karunarathne', 'Batting Allrounder', 'Active', 542, 1, 294, 'Admin003', '2025-12-24 07:47:06.000000', NULL, NULL),
(186, 'LHB', 'RAOS', '0774506062', '2007-09-28', 'dahamsathsara@gmail.com', 'Daham.jpg', 'Daham Sathsara Mendis', 'Batting Allrounder', 'Active', 543, 1, 295, 'Admin003', '2025-12-24 07:55:54.000000', NULL, NULL),
(187, 'RHB', 'RAOS', '0771895473', '2008-04-07', 'shevan@gmail.com', 'Shevan.jpg', 'Shevan De Soyza', 'Top Order Batter', 'Active', 544, 1, 296, 'Admin003', '2025-12-24 08:01:22.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `player_practise_sessions`
--

CREATE TABLE `player_practise_sessions` (
  `prac_id` bigint(20) NOT NULL,
  `player_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_stats`
--

CREATE TABLE `player_stats` (
  `id` bigint(20) NOT NULL,
  `balls` int(11) NOT NULL,
  `centuries` int(11) NOT NULL,
  `fifties` int(11) NOT NULL,
  `fours` int(11) NOT NULL,
  `inning` varchar(255) DEFAULT NULL,
  `overs` decimal(38,2) DEFAULT NULL,
  `runs` int(11) NOT NULL,
  `runs_conceded` int(11) NOT NULL,
  `sixers` int(11) NOT NULL,
  `wickets` int(11) NOT NULL,
  `match_id` bigint(20) NOT NULL,
  `player_id` bigint(20) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `how_out` varchar(255) DEFAULT NULL,
  `maidens` int(11) NOT NULL,
  `no_balls` int(11) NOT NULL,
  `wides` int(11) NOT NULL,
  `catches` int(11) NOT NULL,
  `run_outs` int(11) NOT NULL,
  `stumps` int(11) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_stats`
--

INSERT INTO `player_stats` (`id`, `balls`, `centuries`, `fifties`, `fours`, `inning`, `overs`, `runs`, `runs_conceded`, `sixers`, `wickets`, `match_id`, `player_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `how_out`, `maidens`, `no_balls`, `wides`, `catches`, `run_outs`, `stumps`, `remarks`) VALUES
(92, 16, 0, 0, 1, '1', 0.00, 6, 0, 0, 0, 43, 49, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(93, 2, 0, 0, 0, '1', 3.00, 1, 9, 0, 1, 43, 45, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 1, 0, 0, 0, NULL),
(94, 3, 0, 0, 0, '1', 3.00, 1, 15, 0, 0, 43, 47, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 1, 0, 0, 0, NULL),
(95, 43, 0, 0, 4, '1', 5.00, 41, 10, 1, 2, 43, 50, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(96, 12, 0, 0, 1, '1', 0.00, 13, 0, 0, 0, 43, 52, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(97, 20, 0, 0, 0, '1', 1.00, 13, 15, 0, 0, 43, 48, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(98, 12, 0, 0, 0, '1', 2.00, 3, 21, 0, 0, 43, 55, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 9, 0, 0, 0, NULL),
(99, 9, 0, 0, 0, '1', 6.00, 6, 29, 0, 2, 43, 53, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 2, 0, 0, 0, NULL),
(100, 8, 0, 0, 0, '1', 0.00, 5, 0, 0, 0, 43, 54, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(112, 2, 0, 0, 2, '1', 0.20, 1, 1, 2, 0, 44, 56, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(113, 35, 0, 0, 3, '1', 4.00, 29, 19, 0, 0, 44, 45, NULL, NULL, NULL, NULL, 'Strump', 0, 0, 0, 0, 0, 0, NULL),
(115, 6, 0, 0, 3, '1', 4.40, 14, 35, 0, 1, 44, 47, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(116, 15, 0, 0, 1, '1', 5.00, 13, 24, 1, 1, 44, 52, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(117, 2, 0, 0, 0, '1', 3.00, 6, 32, 1, 1, 44, 50, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(118, 40, 0, 0, 5, '1', 3.00, 31, 35, 0, 2, 44, 58, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(119, 35, 0, 0, 5, '1', 0.00, 27, 0, 0, 0, 44, 54, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(120, 5, 0, 0, 0, '1', 0.00, 2, 0, 0, 0, 44, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(121, 3, 0, 0, 0, '1', 2.00, 1, 26, 0, 1, 44, 55, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(122, 6, 0, 0, 0, '1', 2.00, 3, 21, 0, 1, 44, 53, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(123, 6, 0, 0, 1, '1', 6.00, 6, 27, 0, 2, 47, 47, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, NULL),
(124, 2, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 47, 45, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(125, 5, 0, 0, 0, '1', 4.00, 2, 24, 0, 1, 47, 50, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(128, 5, 0, 0, 0, '1', 6.00, 3, 33, 0, 2, 47, 60, NULL, NULL, NULL, NULL, 'Strump', 0, 0, 0, 0, 0, 0, NULL),
(129, 40, 0, 0, 2, '1', 0.00, 27, 0, 0, 0, 47, 56, NULL, NULL, NULL, NULL, 'Strump', 0, 0, 0, 0, 0, 0, NULL),
(130, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 47, 61, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(131, 80, 1, 1, 12, '1', 5.00, 103, 24, 5, 0, 47, 52, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(132, 22, 0, 0, 1, '1', 2.00, 26, 23, 2, 1, 47, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(133, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 47, 55, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(134, 0, 0, 0, 0, '1', 1.00, 0, 4, 0, 1, 47, 53, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(135, 45, 0, 0, 2, '1', 4.00, 35, 15, 1, 0, 46, 47, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(136, 15, 0, 0, 1, '1', 3.00, 7, 23, 0, 0, 46, 45, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 7, 0, 0, 0, NULL),
(137, 40, 0, 0, 2, '1', 5.00, 28, 22, 0, 2, 46, 52, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(138, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 46, 50, NULL, NULL, NULL, NULL, 'Strump', 0, 0, 0, 0, 0, 0, NULL),
(139, 12, 0, 0, 2, '1', 1.00, 11, 4, 0, 2, 46, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(140, 0, 0, 0, 0, '1', 4.00, 0, 16, 0, 2, 46, 58, NULL, NULL, NULL, NULL, 'Bowled', 0, 1, 5, 0, 0, 0, NULL),
(141, 12, 0, 0, 0, '1', 1.00, 6, 7, 0, 0, 46, 54, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, NULL),
(142, 10, 0, 0, 0, '1', 1.00, 2, 13, 0, 0, 46, 55, NULL, NULL, NULL, NULL, 'Strump', 0, 0, 3, 0, 0, 0, NULL),
(143, 18, 0, 0, 0, '1', 2.40, 10, 6, 0, 3, 46, 53, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 1, 0, 0, 0, NULL),
(144, 3, 0, 0, 0, '1', 2.00, 1, 15, 0, 1, 46, 49, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(145, 8, 0, 0, 0, '1', 0.00, 5, 0, 0, 0, 46, 48, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 2, 0, 0, 0, NULL),
(146, 55, 0, 1, 3, '1', 6.00, 73, 29, 5, 1, 48, 47, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(147, 18, 0, 0, 0, '1', 6.00, 10, 23, 0, 0, 48, 45, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(148, 19, 0, 0, 0, '1', 3.00, 13, 13, 0, 1, 48, 52, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(149, 45, 0, 1, 5, '1', 0.00, 54, 0, 0, 0, 48, 50, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(150, 15, 0, 0, 2, '1', 3.00, 17, 16, 0, 0, 48, 56, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(151, 22, 0, 0, 4, '1', 2.00, 32, 16, 1, 1, 48, 57, NULL, NULL, NULL, NULL, 'Strump', 0, 0, 0, 0, 0, 0, NULL),
(152, 9, 0, 0, 0, '1', 6.00, 4, 24, 0, 3, 48, 58, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(153, 8, 0, 0, 0, '1', 1.00, 4, 9, 0, 0, 48, 54, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(154, 8, 0, 0, 0, '1', 1.00, 3, 3, 0, 1, 48, 49, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(155, 0, 0, 0, 0, '1', 1.00, 0, 9, 0, 0, 48, 59, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(156, 0, 0, 0, 0, '1', 1.00, 0, 1, 0, 2, 48, 48, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(157, 30, 0, 0, 4, '1', 3.00, 41, 32, 1, 0, 49, 66, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(158, 22, 0, 0, 0, '1', 3.00, 10, 27, 0, 0, 49, 45, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(159, 20, 0, 0, 3, '1', 4.00, 20, 40, 0, 1, 49, 50, NULL, NULL, NULL, NULL, 'Strump', 0, 0, 0, 0, 0, 0, NULL),
(160, 2, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 49, 61, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(161, 62, 0, 1, 8, '1', 4.00, 80, 35, 4, 3, 49, 60, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(162, 6, 0, 0, 0, '1', 1.00, 3, 11, 0, 0, 49, 52, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(163, 32, 0, 1, 6, '1', 6.00, 80, 40, 7, 2, 49, 47, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(164, 2, 0, 0, 0, '1', 2.00, 1, 32, 0, 0, 49, 56, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(165, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 49, 49, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(166, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 49, 55, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(167, 0, 0, 0, 0, '1', 3.00, 0, 40, 0, 0, 49, 57, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(178, 26, 0, 0, 4, '1', 3.00, 21, 11, 0, 0, 51, 45, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(179, 16, 0, 0, 0, '1', 5.00, 22, 25, 2, 2, 51, 47, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(180, 3, 0, 0, 0, '1', 1.00, 1, 8, 0, 0, 51, 50, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(181, 5, 0, 0, 0, '1', 2.00, 3, 17, 0, 0, 51, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(182, 35, 0, 0, 5, '1', 5.00, 34, 23, 0, 1, 51, 52, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(183, 0, 0, 0, 0, '1', 2.00, 0, 13, 0, 0, 51, 53, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, NULL),
(184, 8, 0, 0, 0, '1', 0.00, 5, 0, 0, 0, 51, 49, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, NULL),
(185, 35, 0, 0, 1, '1', 3.00, 27, 17, 6, 0, 51, 55, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(186, 2, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 51, 59, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, NULL),
(187, 4, 0, 0, 0, '1', 0.00, 2, 0, 0, 0, 51, 68, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(188, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 51, 48, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(189, 55, 0, 1, 6, '1', 0.00, 82, 0, 1, 0, 52, 50, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(190, 28, 0, 0, 2, '1', 4.00, 21, 35, 0, 1, 52, 45, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(191, 5, 0, 0, 0, '1', 7.00, 2, 22, 0, 2, 52, 47, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(192, 6, 0, 0, 0, '1', 1.00, 2, 8, 0, 0, 52, 55, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(193, 35, 0, 0, 0, '1', 0.00, 39, 0, 0, 0, 52, 52, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(194, 0, 0, 0, 0, '1', 2.10, 0, 17, 0, 2, 52, 56, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(195, 10, 0, 0, 2, '1', 1.00, 11, 12, 0, 0, 52, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(196, 3, 0, 0, 0, '1', 7.00, 1, 27, 0, 3, 52, 58, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(197, 12, 0, 0, 0, '1', 0.00, 8, 0, 0, 0, 52, 54, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(199, 6, 0, 0, 0, '1', 0.00, 4, 0, 0, 0, 52, 49, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(200, 4, 0, 0, 0, '1', 4.00, 2, 29, 0, 1, 52, 48, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(213, 55, 0, 0, 3, '1', 2.00, 23, 30, 0, 0, 54, 56, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(214, 17, 0, 0, 2, '1', 2.00, 10, 28, 0, 0, 54, 45, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(215, 36, 0, 0, 1, '1', 0.00, 34, 0, 2, 0, 54, 52, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(216, 4, 0, 0, 0, '1', 2.00, 4, 16, 0, 0, 54, 47, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(217, 3, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 54, 49, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, NULL),
(218, 13, 0, 0, 1, '1', 0.00, 12, 0, 0, 0, 54, 50, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(219, 19, 0, 0, 4, '1', 1.40, 35, 21, 2, 0, 54, 57, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(220, 6, 0, 0, 0, '1', 3.00, 2, 37, 0, 0, 54, 58, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(221, 12, 0, 0, 2, '1', 0.00, 16, 0, 0, 0, 54, 54, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(222, 7, 0, 0, 0, '1', 2.00, 4, 16, 0, 0, 54, 53, NULL, NULL, NULL, NULL, 'Strump', 0, 0, 0, 0, 0, 0, NULL),
(223, 1, 0, 0, 0, '1', 2.00, 2, 20, 0, 0, 54, 48, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(224, 18, 0, 0, 6, '1', 0.00, 37, 0, 1, 0, 55, 56, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, NULL),
(225, 12, 0, 0, 2, '1', 0.00, 22, 0, 1, 0, 55, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(226, 13, 0, 0, 2, '1', 3.00, 13, 25, 0, 0, 55, 45, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(227, 33, 0, 1, 10, '1', 5.00, 51, 30, 1, 3, 55, 52, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(228, 13, 0, 0, 1, '1', 0.00, 5, 0, 0, 0, 55, 49, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(229, 2, 0, 0, 0, '1', 0.00, 3, 0, 0, 0, 55, 55, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(230, 0, 0, 0, 0, '1', 6.00, 0, 33, 0, 2, 55, 47, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(231, 0, 0, 0, 0, '1', 4.00, 0, 19, 0, 2, 55, 58, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(232, 0, 0, 0, 0, '1', 4.00, 0, 26, 0, 1, 55, 48, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(233, 0, 0, 0, 0, '1', 5.20, 0, 11, 0, 2, 55, 53, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(234, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 55, 50, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(235, 30, 0, 0, 3, '1', 4.00, 24, 26, 1, 1, 56, 56, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(236, 16, 0, 0, 1, '1', 0.00, 18, 0, 0, 0, 56, 57, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(237, 18, 0, 0, 1, '1', 3.00, 8, 10, 0, 0, 56, 45, NULL, NULL, NULL, NULL, 'Strump', 0, 0, 0, 0, 0, 0, NULL),
(238, 15, 0, 0, 1, '1', 0.00, 12, 0, 0, 0, 56, 50, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(239, 26, 0, 0, 1, '1', 4.00, 20, 14, 1, 0, 56, 47, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(240, 40, 0, 0, 2, '1', 1.00, 35, 24, 0, 0, 56, 55, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(241, 12, 0, 0, 0, '1', 3.00, 7, 17, 0, 0, 56, 49, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(242, 0, 0, 0, 0, '1', 2.00, 0, 10, 0, 2, 56, 54, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(243, 0, 0, 0, 0, '1', 2.00, 0, 10, 0, 2, 56, 54, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(244, 0, 0, 0, 0, '1', 2.00, 0, 6, 0, 1, 56, 48, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(245, 0, 0, 0, 0, '1', 2.00, 0, 6, 0, 1, 56, 59, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(246, 0, 0, 0, 0, '1', 5.00, 0, 26, 0, 2, 56, 58, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(247, 2, 0, 0, 0, '1', 3.00, 0, 22, 0, 1, 57, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(248, 26, 0, 0, 3, '1', 4.00, 22, 20, 0, 1, 57, 45, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, NULL),
(249, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 57, 50, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(251, 45, 0, 1, 7, '1', 3.00, 77, 21, 6, 1, 57, 56, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(252, 8, 0, 0, 4, '1', 0.00, 16, 0, 0, 0, 57, 52, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, NULL),
(253, 4, 0, 0, 0, '1', 1.00, 3, 0, 0, 2, 57, 49, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, NULL),
(254, 0, 0, 0, 0, '1', 3.00, 0, 16, 0, 1, 57, 54, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(255, 0, 0, 0, 0, '1', 2.00, 0, 5, 0, 1, 57, 48, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(256, 0, 0, 0, 0, '1', 13.00, 0, 3, 0, 1, 57, 53, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(257, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 57, 59, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(258, 0, 0, 0, 0, '1', 4.00, 0, 20, 0, 1, 57, 55, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, NULL),
(259, 24, 0, 0, 2, '1', 3.00, 26, 18, 0, 1, 58, 56, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(260, 46, 0, 1, 4, '1', 0.00, 64, 0, 2, 0, 58, 57, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(261, 11, 0, 0, 0, '1', 3.00, 3, 10, 0, 0, 58, 45, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(262, 9, 0, 0, 1, '1', 6.00, 6, 28, 0, 1, 58, 47, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(263, 37, 0, 0, 1, '1', 0.00, 21, 0, 0, 0, 58, 49, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(264, 17, 0, 0, 0, '1', 0.00, 8, 0, 0, 0, 58, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(265, 27, 0, 0, 1, '1', 3.00, 24, 21, 0, 1, 58, 55, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(266, 8, 0, 0, 0, '1', 0.00, 5, 0, 0, 0, 58, 54, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(267, 2, 0, 0, 0, '1', 4.00, 0, 22, 0, 0, 58, 58, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(268, 1, 0, 0, 0, '1', 5.50, 0, 39, 0, 2, 58, 48, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(269, 0, 0, 0, 0, '1', 4.00, 0, 30, 0, 0, 58, 53, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(270, 8, 0, 0, 2, '1', 0.00, 10, 0, 0, 0, 60, 57, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(271, 8, 0, 0, 0, '1', 4.00, 3, 26, 0, 2, 60, 45, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(272, 5, 0, 0, 1, '1', 4.00, 5, 22, 0, 2, 60, 47, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(273, 15, 0, 0, 2, '1', 0.00, 17, 0, 0, 0, 60, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(274, 45, 0, 1, 6, '1', 1.00, 66, 12, 2, 0, 60, 52, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(275, 15, 0, 0, 2, '1', 0.00, 23, 0, 0, 0, 60, 63, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(276, 3, 0, 0, 0, '1', 4.00, 1, 31, 0, 1, 60, 58, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(277, 15, 0, 0, 1, '1', 1.00, 13, 15, 1, 0, 60, 49, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(278, 5, 0, 0, 0, '1', 0.00, 7, 0, 1, 0, 60, 67, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(279, 0, 0, 0, 0, '1', 1.00, 0, 13, 0, 0, 60, 54, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(280, 0, 0, 0, 0, '1', 4.00, 0, 40, 0, 2, 60, 53, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, NULL),
(281, 67, 0, 1, 12, '1', 3.00, 90, 20, 2, 1, 62, 45, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(282, 64, 0, 1, 7, '1', 5.50, 88, 63, 5, 2, 62, 56, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(283, 5, 0, 0, 1, '1', 2.00, 8, 18, 1, 2, 62, 57, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(284, 1, 0, 0, 0, '1', 1.00, 0, 15, 0, 0, 62, 52, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(285, 19, 0, 0, 5, '1', 6.00, 44, 49, 2, 1, 62, 47, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(286, 26, 0, 0, 2, '1', 0.00, 32, 0, 2, 0, 62, 50, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(287, 0, 0, 0, 0, '1', 3.00, 0, 34, 0, 1, 62, 55, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(288, 0, 0, 0, 0, '1', 6.00, 0, 25, 0, 1, 62, 53, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(289, 0, 0, 0, 0, '1', 3.00, 0, 18, 0, 2, 62, 48, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(290, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 62, 49, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(291, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 62, 54, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(292, 2, 0, 0, 0, '1', 3.00, 1, 29, 0, 0, 63, 56, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(293, 50, 0, 0, 4, '1', 3.00, 42, 22, 0, 0, 63, 45, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(294, 30, 0, 0, 2, '1', 5.00, 49, 23, 3, 1, 63, 57, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(295, 10, 0, 0, 0, '1', 2.00, 5, 16, 0, 0, 63, 55, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(296, 15, 0, 0, 2, '1', 6.00, 25, 32, 1, 2, 63, 47, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(297, 12, 0, 0, 2, '1', 0.00, 19, 0, 0, 0, 63, 52, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(298, 22, 0, 0, 3, '1', 1.00, 34, 12, 0, 0, 63, 58, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(299, 2, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 63, 67, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(300, 8, 0, 0, 1, '1', 0.00, 9, 0, 0, 0, 63, 54, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(301, 1, 0, 0, 0, '1', 4.00, 1, 20, 0, 1, 63, 48, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(302, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 63, 49, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(303, 37, 0, 1, 11, '1', 2.00, 54, 15, 0, 0, 64, 56, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(304, 28, 0, 0, 5, '1', 3.00, 34, 25, 0, 0, 64, 45, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, NULL),
(305, 1, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 64, 52, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(306, 44, 0, 1, 7, '1', 2.00, 84, 6, 6, 0, 64, 61, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(307, 29, 0, 1, 5, '1', 2.00, 59, 16, 5, 0, 64, 57, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(308, 7, 0, 0, 1, '1', 3.00, 6, 21, 0, 2, 64, 60, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(309, 2, 0, 0, 1, '1', 4.00, 4, 20, 0, 3, 64, 62, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(310, 2, 0, 0, 0, '1', 3.00, 0, 5, 0, 1, 64, 47, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(311, 1, 0, 0, 0, '1', 1.00, 1, 10, 0, 0, 64, 49, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(312, 0, 0, 0, 0, '1', 2.00, 0, 12, 0, 0, 64, 55, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(313, 0, 0, 0, 0, '1', 3.00, 0, 10, 0, 1, 64, 48, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL),
(346, 22, 0, 0, 1, '1', 1.00, 13, 12, 0, 0, 82, 56, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(347, 4, 0, 0, 0, '1', 3.00, 1, 21, 0, 0, 82, 45, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(348, 3, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 82, 52, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 1, 0, 1, ''),
(349, 6, 0, 0, 1, '1', 6.00, 6, 39, 0, 2, 82, 47, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(350, 5, 0, 0, 0, '1', 4.00, 4, 31, 0, 1, 82, 50, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(351, 12, 0, 0, 0, '1', 2.00, 8, 15, 0, 0, 82, 55, NULL, NULL, NULL, NULL, 'Stump', 0, 0, 0, 0, 0, 0, ''),
(352, 15, 0, 0, 1, '1', 5.00, 13, 22, 0, 2, 82, 58, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, ''),
(353, 56, 0, 0, 1, '1', 1.00, 19, 4, 0, 0, 82, 49, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(354, 36, 0, 0, 1, '1', 0.00, 10, 0, 0, 0, 82, 54, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(355, 0, 0, 0, 0, '1', 3.00, 0, 19, 0, 0, 82, 48, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(356, 12, 0, 0, 1, '1', 0.00, 11, 0, 0, 0, 83, 56, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(357, 3, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 83, 45, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(358, 35, 0, 1, 3, '1', 0.00, 57, 0, 2, 0, 83, 52, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(359, 1, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 83, 57, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(360, 30, 0, 0, 3, '1', 0.00, 35, 0, 1, 0, 83, 50, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(361, 25, 0, 0, 2, '1', 0.00, 14, 0, 0, 0, 83, 63, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(502, 0, 0, 0, 0, '1', 5.00, 0, 18, 0, 0, 141, 34, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(504, 0, 0, 0, 0, '1', 2.00, 0, 5, 0, 0, 141, 141, NULL, NULL, NULL, NULL, 'Not out', 1, 0, 0, 0, 0, 0, ''),
(505, 0, 0, 0, 0, '1', 10.00, 0, 68, 0, 0, 141, 35, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 1, 0, 0, ''),
(506, 0, 0, 0, 0, '1', 14.00, 0, 55, 0, 1, 141, 32, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 2, 1, 0, ''),
(507, 0, 0, 0, 0, '1', 11.00, 0, 29, 0, 3, 141, 148, NULL, NULL, NULL, NULL, 'Not out', 2, 0, 0, 0, 0, 0, ''),
(508, 0, 0, 0, 0, '1', 8.00, 0, 25, 0, 1, 141, 36, NULL, NULL, NULL, NULL, 'Not out', 2, 0, 0, 0, 0, 0, ''),
(509, 0, 0, 0, 0, '1', 12.00, 0, 48, 0, 0, 141, 39, NULL, NULL, NULL, NULL, 'Not out', 2, 0, 0, 1, 0, 0, ''),
(510, 57, 0, 0, 4, '1', 0.00, 25, 0, 0, 0, 142, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(511, 3, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 142, 37, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(512, 70, 0, 0, 4, '1', 3.00, 38, 3, 1, 0, 142, 141, NULL, NULL, NULL, NULL, 'LBW', 1, 0, 0, 0, 0, 0, ''),
(513, 7, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 142, 143, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(514, 29, 0, 0, 1, '1', 11.00, 7, 34, 0, 4, 142, 32, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 0, 0, 0, ''),
(515, 125, 0, 0, 3, '1', 0.00, 29, 0, 0, 0, 142, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(516, 19, 0, 0, 0, '1', 12.00, 9, 36, 0, 2, 142, 39, NULL, NULL, NULL, NULL, 'Catch', 3, 0, 0, 0, 0, 0, ''),
(517, 60, 0, 1, 11, '1', 0.00, 62, 0, 1, 0, 142, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(518, 18, 0, 0, 1, '1', 0.00, 6, 0, 0, 0, 142, 142, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 3, 0, 0, ''),
(519, 18, 0, 0, 1, '1', 12.00, 10, 36, 0, 3, 142, 36, NULL, NULL, NULL, NULL, 'Not out', 3, 0, 0, 0, 0, 0, ''),
(520, 16, 0, 0, 1, '1', 14.00, 13, 39, 1, 1, 142, 35, NULL, NULL, NULL, NULL, 'LBW', 2, 0, 0, 1, 0, 0, ''),
(521, 13, 0, 0, 1, '2', 0.00, 8, 0, 0, 0, 142, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(522, 11, 0, 0, 1, '2', 0.00, 7, 0, 0, 0, 142, 141, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(523, 22, 0, 0, 1, '2', 0.00, 6, 0, 0, 0, 142, 38, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(524, 8, 0, 0, 0, '2', 15.00, 1, 43, 0, 4, 142, 32, NULL, NULL, NULL, NULL, 'Bowled', 3, 0, 0, 1, 0, 0, ''),
(525, 4, 0, 0, 1, '2', 0.00, 5, 0, 0, 0, 142, 34, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 1, 0, 0, ''),
(526, 0, 0, 0, 0, '2', 10.00, 0, 18, 0, 2, 142, 39, NULL, NULL, NULL, NULL, 'Did not bat', 3, 0, 0, 0, 0, 0, ''),
(527, 0, 0, 0, 0, '2', 15.00, 0, 27, 0, 3, 142, 36, NULL, NULL, NULL, NULL, 'Did not bat', 3, 0, 0, 0, 1, 0, ''),
(528, 0, 0, 0, 0, '2', 2.00, 0, 9, 0, 0, 142, 35, NULL, NULL, NULL, NULL, 'Did not bat', 1, 0, 0, 2, 0, 0, ''),
(529, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 141, 37, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(530, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 141, 33, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(531, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 141, 38, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(532, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 141, 142, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(533, 33, 0, 0, 1, '1', 0.00, 13, 0, 0, 0, 146, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(534, 18, 0, 0, 2, '1', 0.00, 8, 0, 0, 0, 146, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(535, 11, 0, 0, 0, '1', 12.00, 5, 42, 0, 1, 146, 141, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 0, 0, 0, ''),
(536, 41, 0, 0, 1, '1', 0.00, 10, 0, 0, 0, 146, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(537, 5, 0, 0, 0, '1', 9.00, 0, 22, 0, 0, 146, 147, NULL, NULL, NULL, NULL, 'LBW', 4, 0, 0, 0, 0, 0, ''),
(538, 19, 0, 0, 1, '1', 0.00, 11, 0, 0, 0, 146, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(539, 33, 0, 0, 2, '1', 10.00, 13, 44, 0, 2, 146, 32, NULL, NULL, NULL, NULL, 'Bowled', 2, 0, 0, 0, 0, 0, ''),
(540, 23, 0, 0, 0, '1', 0.00, 5, 0, 0, 0, 146, 142, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 3, 0, 0, ''),
(541, 2, 0, 0, 0, '1', 27.00, 4, 76, 0, 4, 146, 39, NULL, NULL, NULL, NULL, 'Bowled', 8, 0, 0, 0, 0, 0, ''),
(542, 4, 0, 0, 0, '1', 28.00, 1, 63, 0, 2, 146, 36, NULL, NULL, NULL, NULL, 'Catch', 6, 0, 0, 1, 0, 0, ''),
(543, 3, 0, 0, 0, '1', 18.00, 0, 55, 0, 0, 146, 35, NULL, NULL, NULL, NULL, 'Bowled', 1, 0, 0, 0, 0, 0, ''),
(545, 27, 0, 0, 1, '1', 0.00, 26, 0, 3, 0, 147, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(546, 90, 0, 1, 6, '1', 0.00, 56, 0, 3, 0, 147, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(547, 4, 0, 0, 1, '1', 7.00, 5, 21, 0, 0, 147, 141, NULL, NULL, NULL, NULL, 'LBW', 1, 0, 0, 1, 0, 0, ''),
(548, 45, 0, 0, 0, '1', 0.00, 11, 0, 0, 0, 147, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(549, 2, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 147, 147, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(550, 3, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 147, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 2, 0, 0, ''),
(551, 3, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 147, 32, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(552, 2, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 147, 142, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(553, 17, 0, 0, 1, '1', 5.00, 4, 20, 0, 2, 147, 36, NULL, NULL, NULL, NULL, 'LBW', 1, 0, 0, 0, 0, 0, ''),
(554, 3, 0, 0, 0, '1', 12.00, 0, 50, 0, 7, 147, 39, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 0, 0, 0, ''),
(555, 3, 0, 0, 0, '1', 5.00, 0, 27, 0, 1, 147, 35, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 1, 0, 0, ''),
(556, 2, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 147, 33, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 1, 0, 0, ''),
(557, 63, 0, 1, 5, '2', 0.00, 59, 0, 3, 0, 147, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(558, 67, 0, 0, 2, '2', 0.00, 16, 0, 0, 0, 147, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(559, 16, 0, 0, 0, '2', 0.00, 4, 0, 0, 0, 147, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(560, 37, 0, 0, 1, '2', 0.00, 12, 0, 0, 0, 147, 141, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(561, 32, 0, 0, 1, '2', 0.00, 8, 0, 0, 0, 147, 147, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(562, 83, 0, 0, 1, '2', 0.00, 34, 0, 1, 0, 147, 142, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 1, 0, 0, ''),
(563, 7, 0, 0, 0, '2', 5.00, 4, 10, 0, 0, 147, 32, NULL, NULL, NULL, NULL, 'LBW', 1, 0, 0, 0, 0, 0, ''),
(564, 55, 0, 0, 2, '2', 0.00, 44, 0, 3, 0, 147, 35, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(565, 23, 0, 0, 1, '2', 1.00, 6, 1, 0, 1, 147, 36, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(566, 1, 0, 0, 0, '2', 5.00, 6, 30, 1, 2, 147, 39, NULL, NULL, NULL, NULL, 'Not out', 1, 0, 0, 0, 0, 0, ''),
(567, 21, 0, 0, 0, '1', 0.00, 7, 0, 0, 0, 148, 33, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(568, 13, 0, 0, 0, '1', 0.00, 14, 0, 2, 0, 148, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(570, 5, 0, 0, 0, '1', 6.00, 1, 8, 0, 1, 148, 141, NULL, NULL, NULL, NULL, 'Catch', 2, 0, 0, 0, 0, 0, ''),
(571, 15, 0, 0, 1, '1', 10.00, 4, 1, 0, 0, 148, 143, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(572, 119, 0, 0, 4, '1', 0.00, 42, 0, 0, 0, 148, 147, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, ''),
(573, 11, 0, 0, 1, '1', 0.00, 8, 0, 0, 0, 148, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(574, 7, 0, 0, 0, '1', 5.00, 0, 28, 0, 0, 148, 142, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 3, 0, 0, ''),
(575, 47, 0, 0, 0, '1', 3.00, 6, 12, 0, 0, 148, 32, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 1, 0, ''),
(576, 15, 0, 0, 0, '1', 17.00, 2, 23, 0, 2, 148, 36, NULL, NULL, NULL, NULL, 'Catch', 6, 0, 0, 0, 0, 0, ''),
(577, 54, 0, 0, 1, '1', 24.00, 11, 37, 0, 1, 148, 39, NULL, NULL, NULL, NULL, 'Not out', 11, 0, 0, 0, 1, 0, ''),
(578, 4, 0, 0, 1, '1', 19.00, 4, 25, 0, 4, 148, 35, NULL, NULL, NULL, NULL, 'Catch', 4, 0, 0, 0, 0, 0, ''),
(581, 73, 0, 1, 6, '2', 0.00, 56, 0, 1, 0, 148, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(582, 18, 0, 0, 2, '2', 0.00, 10, 0, 0, 0, 148, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(583, 42, 0, 0, 2, '2', 0.00, 12, 0, 0, 0, 148, 141, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(584, 19, 0, 0, 1, '2', 0.00, 7, 0, 0, 0, 148, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(585, 25, 0, 0, 0, '2', 0.00, 4, 0, 0, 0, 148, 147, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(586, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 148, 39, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, ''),
(587, 28, 0, 0, 0, '2', 0.00, 5, 0, 0, 0, 148, 142, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(589, 36, 0, 0, 4, '1', 0.00, 26, 0, 0, 0, 151, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 1, 0, ''),
(590, 4, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 151, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(591, 3, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 151, 152, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(592, 65, 0, 0, 3, '1', 6.00, 21, 15, 0, 1, 151, 143, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, ''),
(593, 52, 0, 0, 1, '1', 0.00, 12, 0, 0, 0, 151, 147, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(594, 65, 0, 1, 9, '1', 6.00, 54, 12, 0, 1, 151, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(595, 19, 0, 0, 0, '1', 1.00, 3, 6, 0, 1, 151, 32, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(596, 51, 0, 0, 1, '1', 0.00, 17, 0, 0, 0, 151, 142, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 2, 1, 1, ''),
(597, 49, 0, 0, 0, '1', 16.00, 7, 33, 0, 5, 151, 36, NULL, NULL, NULL, NULL, 'Not out', 5, 0, 0, 1, 0, 0, ''),
(598, 42, 0, 0, 0, '1', 5.00, 11, 5, 0, 1, 151, 144, NULL, NULL, NULL, NULL, 'Bowled', 1, 0, 0, 0, 0, 0, ''),
(599, 7, 0, 0, 1, '1', 11.00, 16, 17, 0, 1, 151, 35, NULL, NULL, NULL, NULL, 'Bowled', 3, 0, 0, 0, 0, 0, ''),
(600, 0, 0, 0, 0, '2', 5.00, 0, 13, 0, 1, 151, 35, NULL, NULL, NULL, NULL, 'Did not bat', 1, 0, 0, 0, 0, 0, ''),
(601, 0, 0, 0, 0, '2', 26.00, 0, 44, 0, 4, 151, 36, NULL, NULL, NULL, NULL, 'Did not bat', 10, 0, 0, 1, 0, 0, ''),
(602, 0, 0, 0, 0, '2', 10.00, 0, 22, 0, 1, 151, 143, NULL, NULL, NULL, NULL, 'Did not bat', 3, 0, 0, 0, 0, 0, ''),
(603, 0, 0, 0, 0, '2', 5.00, 0, 23, 0, 1, 151, 32, NULL, NULL, NULL, NULL, 'Did not bat', 1, 0, 0, 0, 0, 0, ''),
(604, 0, 0, 0, 0, '2', 5.00, 0, 10, 0, 0, 151, 144, NULL, NULL, NULL, NULL, 'Did not bat', 1, 0, 0, 1, 0, 0, ''),
(605, 0, 0, 0, 0, '2', 3.00, 0, 3, 0, 1, 151, 152, NULL, NULL, NULL, NULL, 'Did not bat', 1, 0, 0, 0, 0, 0, ''),
(606, 164, 1, 1, 14, '1', 0.00, 127, 0, 2, 0, 152, 33, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(607, 8, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 152, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(608, 53, 0, 0, 1, '1', 7.00, 26, 21, 1, 0, 152, 141, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, ''),
(609, 4, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 152, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(610, 4, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 152, 145, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 1, ''),
(611, 5, 0, 0, 0, '1', 4.00, 0, 7, 0, 0, 152, 32, NULL, NULL, NULL, NULL, 'Bowled', 1, 0, 0, 0, 0, 0, ''),
(612, 19, 0, 0, 1, '1', 25.00, 9, 72, 0, 3, 152, 143, NULL, NULL, NULL, NULL, 'LBW', 4, 0, 0, 1, 0, 0, ''),
(613, 26, 0, 0, 1, '1', 0.00, 5, 0, 0, 0, 152, 142, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(614, 104, 0, 0, 2, '1', 17.00, 22, 4, 0, 2, 152, 36, NULL, NULL, NULL, NULL, 'Bowled', 4, 0, 0, 0, 0, 0, ''),
(615, 31, 0, 0, 2, '1', 15.00, 12, 60, 0, 3, 152, 153, NULL, NULL, NULL, NULL, 'Catch', 2, 0, 0, 0, 0, 0, ''),
(616, 16, 0, 0, 1, '1', 9.00, 6, 31, 0, 2, 152, 35, NULL, NULL, NULL, NULL, 'Not out', 4, 0, 0, 2, 0, 0, ''),
(617, 66, 0, 0, 8, '2', 0.00, 44, 0, 0, 0, 152, 141, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(618, 33, 0, 0, 1, '2', 0.00, 12, 0, 1, 0, 152, 37, NULL, NULL, NULL, NULL, 'Stump', 0, 0, 0, 0, 0, 0, ''),
(619, 27, 0, 0, 5, '2', 0.00, 41, 0, 2, 0, 152, 33, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(620, 163, 1, 1, 12, '1', 0.00, 111, 0, 2, 0, 153, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(621, 64, 0, 0, 2, '1', 0.00, 23, 0, 1, 0, 153, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(622, 16, 0, 0, 0, '1', 8.00, 8, 40, 1, 0, 153, 141, NULL, NULL, NULL, NULL, 'Run out', 1, 0, 0, 0, 0, 0, ''),
(623, 43, 0, 0, 0, '1', 0.00, 8, 0, 0, 0, 153, 145, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(624, 5, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 153, 38, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(625, 2, 0, 0, 0, '1', 1.00, 0, 7, 0, 0, 153, 34, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 1, 1, 0, ''),
(626, 2, 0, 0, 0, '1', 7.00, 0, 37, 0, 0, 153, 32, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 1, 0, 0, ''),
(627, 56, 0, 0, 5, '1', 15.00, 23, 49, 0, 2, 153, 143, NULL, NULL, NULL, NULL, 'Catch', 4, 0, 0, 1, 0, 0, ''),
(628, 6, 0, 0, 0, '1', 4.00, 0, 21, 0, 0, 153, 39, NULL, NULL, NULL, NULL, 'Bowled', 1, 0, 0, 0, 0, 0, ''),
(629, 25, 0, 0, 0, '1', 33.00, 3, 79, 0, 4, 153, 36, NULL, NULL, NULL, NULL, 'Not out', 4, 0, 0, 0, 0, 0, ''),
(630, 3, 0, 0, 0, '1', 15.00, 0, 36, 0, 3, 153, 35, NULL, NULL, NULL, NULL, 'LBW', 2, 0, 0, 0, 0, 0, ''),
(631, 0, 0, 0, 0, '2', 7.00, 0, 31, 0, 1, 153, 36, NULL, NULL, NULL, NULL, 'Did not bat', 2, 0, 0, 0, 0, 0, ''),
(632, 0, 0, 0, 0, '2', 8.00, 0, 30, 0, 1, 153, 39, NULL, NULL, NULL, NULL, 'Did not bat', 1, 0, 0, 0, 0, 0, ''),
(633, 0, 0, 0, 0, '2', 4.00, 0, 13, 0, 1, 153, 32, NULL, NULL, NULL, NULL, 'Did not bat', 1, 0, 0, 0, 0, 0, ''),
(634, 0, 0, 0, 0, '2', 2.00, 0, 11, 0, 0, 153, 35, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(635, 0, 0, 0, 0, '2', 1.00, 0, 8, 0, 0, 153, 143, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(636, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 153, 34, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(637, 87, 0, 0, 2, '1', 0.00, 26, 0, 0, 0, 154, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 2, 0, 0, ''),
(638, 44, 0, 0, 2, '1', 0.00, 18, 0, 0, 0, 154, 37, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(639, 14, 0, 0, 0, '1', 9.00, 2, 39, 0, 2, 154, 141, NULL, NULL, NULL, NULL, 'Catch', 2, 0, 0, 1, 0, 0, ''),
(640, 26, 0, 0, 0, '1', 0.00, 6, 0, 0, 0, 154, 147, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(641, 128, 0, 1, 4, '1', 0.00, 56, 0, 0, 0, 154, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(642, 38, 0, 0, 1, '1', 12.00, 6, 64, 0, 3, 154, 32, NULL, NULL, NULL, NULL, 'Catch', 2, 0, 0, 0, 0, 0, ''),
(643, 51, 0, 0, 0, '1', 9.00, 8, 41, 0, 0, 154, 144, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 1, 0, 0, ''),
(644, 24, 0, 0, 0, '1', 0.00, 6, 0, 0, 0, 154, 142, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 1, 0, 0, ''),
(645, 31, 0, 0, 1, '1', 9.00, 7, 35, 0, 0, 154, 143, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(646, 17, 0, 0, 0, '1', 16.00, 6, 61, 1, 3, 154, 39, NULL, NULL, NULL, NULL, 'Not out', 2, 0, 0, 0, 0, 0, ''),
(647, 12, 0, 0, 0, '1', 10.00, 16, 35, 1, 0, 154, 35, NULL, NULL, NULL, NULL, 'LBW', 2, 0, 0, 0, 0, 0, ''),
(648, 8, 0, 0, 1, '2', 0.00, 4, 0, 0, 0, 154, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(649, 36, 0, 0, 1, '2', 0.00, 12, 0, 0, 0, 154, 37, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(650, 113, 0, 0, 1, '2', 0.00, 29, 0, 1, 0, 154, 141, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(651, 5, 0, 0, 1, '2', 0.00, 5, 0, 0, 0, 154, 147, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(652, 31, 0, 0, 1, '2', 0.00, 8, 0, 0, 0, 154, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(653, 119, 0, 0, 3, '2', 0.00, 45, 0, 2, 0, 154, 32, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(654, 26, 0, 0, 0, '2', 0.00, 2, 0, 0, 0, 154, 142, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(655, 7, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 154, 144, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(656, 3, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 154, 143, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(657, 177, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 154, 39, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(658, 9, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 154, 35, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(659, 4, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 155, 33, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(660, 47, 0, 0, 4, '1', 0.00, 22, 0, 0, 0, 155, 37, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(661, 6, 0, 0, 1, '1', 9.00, 4, 18, 0, 0, 155, 141, NULL, NULL, NULL, NULL, 'Catch', 2, 0, 0, 0, 1, 0, ''),
(662, 6, 0, 0, 1, '1', 0.00, 4, 0, 0, 0, 155, 145, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 3, 0, 0, ''),
(663, 21, 0, 0, 0, '1', 0.00, 3, 0, 0, 0, 155, 147, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(664, 1, 0, 0, 0, '1', 1.00, 0, 6, 0, 0, 155, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 1, 0, ''),
(665, 6, 0, 0, 0, '1', 6.00, 1, 24, 0, 1, 155, 143, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(666, 29, 0, 0, 0, '1', 18.00, 3, 49, 0, 1, 155, 36, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 0, 0, 0, ''),
(667, 18, 0, 0, 2, '1', 17.00, 10, 60, 0, 0, 155, 32, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(668, 32, 0, 0, 0, '1', 10.00, 9, 36, 0, 1, 155, 153, NULL, NULL, NULL, NULL, 'Not out', 1, 0, 0, 0, 0, 0, ''),
(669, 22, 0, 0, 1, '1', 22.00, 7, 57, 0, 4, 155, 35, NULL, NULL, NULL, NULL, 'Bowled', 4, 0, 0, 0, 0, 0, ''),
(670, 21, 0, 0, 3, '1', 0.00, 18, 0, 0, 0, 157, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(671, 70, 0, 1, 6, '1', 0.00, 53, 0, 2, 0, 157, 37, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 1, 0, 0, ''),
(672, 5, 0, 0, 0, '1', 4.00, 1, 25, 0, 1, 157, 141, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 1, 0, 0, ''),
(673, 65, 0, 0, 2, '1', 0.00, 26, 0, 0, 0, 157, 38, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 1, 0, 0, ''),
(674, 0, 0, 0, 0, '1', 7.00, 0, 20, 0, 1, 157, 32, NULL, NULL, NULL, NULL, 'Did not bat', 2, 0, 0, 0, 0, 0, ''),
(675, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 157, 34, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(676, 0, 0, 0, 0, '1', 4.00, 0, 25, 0, 1, 157, 35, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(677, 0, 0, 0, 0, '1', 8.00, 0, 20, 0, 4, 157, 36, NULL, NULL, NULL, NULL, 'Did not bat', 2, 0, 0, 0, 0, 0, ''),
(678, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 157, 142, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(679, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 157, 39, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(680, 0, 0, 0, 0, '1', 9.00, 0, 200, 0, 4, 157, 148, NULL, NULL, NULL, NULL, 'Did not bat', 2, 0, 0, 0, 0, 0, ''),
(682, 69, 0, 1, 7, '1', 0.00, 64, 0, 3, 0, 158, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(683, 34, 0, 0, 2, '1', 6.00, 21, 32, 0, 1, 158, 141, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(684, 13, 0, 0, 0, '1', 10.00, 2, 37, 0, 1, 158, 32, NULL, NULL, NULL, NULL, 'Bowled', 1, 0, 0, 0, 0, 0, ''),
(685, 43, 0, 0, 2, '1', 0.00, 27, 0, 0, 0, 158, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(686, 42, 0, 0, 3, '1', 0.00, 36, 0, 1, 0, 158, 34, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 1, 0, ''),
(687, 15, 0, 0, 4, '1', 10.00, 23, 58, 0, 0, 158, 39, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(688, 3, 0, 0, 0, '1', 9.00, 6, 40, 1, 0, 158, 148, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(689, 1, 0, 0, 0, '1', 3.00, 0, 18, 0, 1, 158, 154, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(690, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 158, 142, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(691, 0, 0, 0, 0, '1', 10.00, 0, 41, 0, 1, 158, 36, NULL, NULL, NULL, NULL, 'Did not bat', 1, 0, 0, 0, 0, 0, ''),
(692, 82, 0, 0, 4, '1', 0.00, 46, 0, 0, 0, 159, 33, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 1, 0, 0, ''),
(693, 25, 0, 0, 1, '1', 0.00, 20, 0, 2, 0, 159, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(694, 84, 0, 1, 8, '1', 4.00, 70, 18, 1, 0, 159, 141, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(695, 36, 0, 0, 6, '1', 0.00, 21, 0, 0, 0, 159, 38, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(696, 15, 0, 0, 1, '1', 6.00, 4, 14, 0, 0, 159, 147, NULL, NULL, NULL, NULL, 'Not out', 1, 0, 0, 0, 0, 0, ''),
(697, 0, 0, 0, 0, '1', 8.00, 0, 45, 0, 1, 159, 32, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(698, 0, 0, 0, 0, '1', 5.00, 0, 19, 0, 2, 159, 34, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 1, 0, ''),
(699, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 159, 142, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(700, 0, 0, 0, 0, '1', 10.00, 0, 23, 0, 0, 159, 36, NULL, NULL, NULL, NULL, 'Did not bat', 1, 0, 0, 0, 0, 0, ''),
(701, 0, 0, 0, 0, '1', 10.00, 0, 35, 0, 2, 159, 148, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(702, 0, 0, 0, 0, '1', 7.00, 0, 25, 0, 0, 159, 39, NULL, NULL, NULL, NULL, 'Did not bat', 1, 0, 0, 0, 0, 0, ''),
(703, 2, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 160, 33, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(704, 17, 0, 0, 1, '1', 0.00, 8, 0, 0, 0, 160, 37, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(705, 18, 0, 0, 0, '1', 3.00, 3, 12, 0, 2, 160, 141, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 3, 0, 0, ''),
(706, 14, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 160, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(707, 9, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 160, 142, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 1, 0, 0, ''),
(708, 6, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 160, 34, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 1, 0, 0, ''),
(709, 10, 0, 0, 0, '1', 7.00, 1, 41, 0, 0, 160, 32, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(710, 14, 0, 0, 1, '1', 10.00, 7, 30, 0, 2, 160, 148, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 2, 0, 0, ''),
(711, 20, 0, 0, 0, '1', 9.00, 3, 37, 0, 1, 160, 39, NULL, NULL, NULL, NULL, 'Not out', 1, 0, 0, 0, 0, 0, ''),
(712, 9, 0, 0, 0, '1', 9.00, 2, 38, 0, 2, 160, 36, NULL, NULL, NULL, NULL, 'Bowled', 1, 0, 0, 0, 0, 0, ''),
(713, 10, 0, 0, 0, '1', 8.00, 0, 39, 0, 3, 160, 35, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 0, 0, 0, ''),
(714, 51, 0, 0, 4, '1', 0.00, 28, 0, 1, 0, 161, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(715, 136, 0, 1, 13, '1', 0.00, 99, 0, 2, 0, 161, 37, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(716, 219, 1, 1, 17, '1', 5.00, 166, 17, 5, 1, 161, 141, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 2, 0, 0, ''),
(717, 103, 0, 1, 8, '1', 2.00, 60, 2, 1, 1, 161, 34, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 2, 0, 0, ''),
(718, 16, 0, 0, 2, '1', 0.00, 16, 0, 0, 0, 161, 147, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(719, 3, 0, 0, 1, '1', 15.00, 4, 32, 0, 4, 161, 143, NULL, NULL, NULL, NULL, 'Not out', 5, 0, 0, 0, 0, 0, ''),
(720, 6, 0, 0, 1, '1', 0.00, 4, 0, 0, 0, 161, 145, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(721, 0, 0, 0, 0, '1', 12.00, 0, 59, 0, 1, 161, 35, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(722, 0, 0, 0, 0, '1', 10.00, 0, 21, 0, 0, 161, 36, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(723, 0, 0, 0, 0, '1', 32.00, 0, 95, 0, 3, 161, 144, NULL, NULL, NULL, NULL, 'Did not bat', 5, 0, 0, 1, 0, 0, ''),
(725, 0, 0, 0, 0, '1', 16.00, 0, 52, 0, 1, 161, 39, NULL, NULL, NULL, NULL, 'Did not bat', 2, 0, 0, 0, 0, 0, ''),
(726, 22, 0, 0, 0, '1', 0.00, 9, 0, 0, 0, 162, 145, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(727, 12, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 162, 37, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(728, 138, 1, 1, 14, '1', 0.00, 104, 0, 2, 0, 162, 141, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(729, 105, 0, 0, 6, '1', 0.00, 46, 0, 0, 0, 162, 147, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(730, 14, 0, 0, 0, '1', 3.00, 2, 9, 0, 0, 162, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 2, 0, 0, ''),
(731, 2, 0, 0, 0, '1', 9.00, 0, 27, 0, 4, 162, 143, NULL, NULL, NULL, NULL, 'Catch', 2, 0, 0, 0, 0, 0, ''),
(732, 14, 0, 0, 0, '1', 3.00, 1, 11, 0, 0, 162, 36, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 1, 0, 0, ''),
(733, 60, 0, 0, 2, '1', 20.00, 20, 45, 0, 0, 162, 144, NULL, NULL, NULL, NULL, 'Catch', 8, 0, 0, 0, 0, 0, ''),
(734, 49, 0, 0, 3, '1', 0.00, 24, 0, 0, 0, 162, 142, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(735, 21, 0, 0, 0, '1', 11.00, 2, 38, 0, 1, 162, 35, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 0, 0, 0, ''),
(736, 0, 0, 0, 0, '1', 21.00, 0, 48, 0, 5, 162, 39, NULL, NULL, NULL, NULL, 'Did not bat', 5, 0, 0, 1, 0, 0, ''),
(737, 174, 0, 0, 2, '1', 0.00, 19, 0, 0, 0, 163, 144, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(738, 159, 0, 1, 12, '1', 0.00, 99, 0, 1, 0, 163, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(739, 10, 0, 0, 3, '1', 0.00, 19, 0, 0, 0, 163, 34, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(758, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 142, 142, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 1, ''),
(759, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 151, 142, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 2, 0, 0, ''),
(760, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 151, 34, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 2, 0, 0, ''),
(761, 222, 1, 1, 24, '1', 0.00, 170, 0, 2, 0, 163, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(762, 6, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 163, 37, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(771, 39, 0, 0, 4, '1', 0.00, 29, 0, 0, 0, 164, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(772, 27, 0, 0, 7, '1', 0.00, 42, 0, 1, 0, 164, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 1, 0, ''),
(773, 5, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 164, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(774, 21, 0, 0, 0, '1', 4.00, 6, 9, 0, 0, 164, 141, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(775, 22, 0, 0, 0, '1', 0.00, 9, 0, 0, 0, 164, 142, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(776, 23, 0, 0, 1, '1', 0.00, 19, 0, 0, 0, 164, 34, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(777, 56, 0, 0, 0, '1', 10.00, 17, 46, 0, 0, 164, 32, NULL, NULL, NULL, NULL, 'Catch', 0, 1, 0, 0, 0, 0, ''),
(778, 9, 0, 0, 0, '1', 6.00, 2, 21, 0, 0, 164, 36, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(779, 1, 0, 0, 0, '1', 2.00, 0, 11, 0, 0, 164, 148, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(780, 46, 0, 0, 2, '1', 8.00, 27, 27, 1, 0, 164, 39, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(781, 11, 0, 0, 0, '1', 10.00, 3, 48, 0, 0, 164, 35, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 1, ''),
(782, 101, 0, 0, 5, '1', 0.00, 45, 0, 0, 0, 166, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 1, 0, ''),
(783, 15, 0, 0, 1, '1', 0.00, 5, 0, 0, 0, 166, 37, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(784, 91, 0, 0, 2, '1', 4.00, 20, 16, 0, 0, 166, 144, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 1, 0, ''),
(785, 67, 0, 0, 2, '1', 1.00, 22, 1, 0, 0, 166, 141, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 1, ''),
(786, 23, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 166, 38, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(787, 3, 0, 0, 0, '1', 6.00, 1, 20, 0, 0, 166, 34, NULL, NULL, NULL, NULL, 'Catch', 2, 0, 0, 0, 0, 1, ''),
(788, 6, 0, 0, 0, '1', 14.00, 3, 45, 0, 0, 166, 32, NULL, NULL, NULL, NULL, 'Catch', 1, 2, 0, 0, 0, 0, ''),
(789, 6, 0, 0, 0, '1', 11.00, 1, 33, 0, 0, 166, 39, NULL, NULL, NULL, NULL, 'Catch', 3, 1, 0, 0, 0, 0, ''),
(790, 189, 0, 1, 6, '1', 0.00, 52, 0, 0, 0, 166, 142, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 3, 0, ''),
(791, 198, 0, 0, 2, '1', 17.00, 47, 33, 0, 0, 166, 36, NULL, NULL, NULL, NULL, 'Catch', 6, 3, 0, 0, 0, 0, ''),
(792, 12, 0, 0, 1, '1', 19.00, 11, 61, 1, 0, 166, 35, NULL, NULL, NULL, NULL, 'Not out', 5, 2, 0, 0, 0, 0, ''),
(793, 11, 0, 0, 0, '2', 0.00, 4, 0, 0, 0, 166, 33, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 1, 0, ''),
(794, 2, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 166, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(795, 11, 0, 0, 3, '2', 0.00, 17, 0, 0, 0, 166, 34, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(796, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 166, 142, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(797, 0, 0, 0, 0, '2', 9.00, 0, 30, 0, 0, 166, 32, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(798, 0, 0, 0, 0, '2', 10.00, 0, 29, 0, 1, 166, 35, NULL, NULL, NULL, NULL, 'Did not bat', 2, 0, 0, 0, 0, 0, ''),
(799, 0, 0, 0, 0, '2', 5.00, 0, 10, 0, 3, 166, 141, NULL, NULL, NULL, NULL, 'Did not bat', 1, 0, 0, 0, 0, 0, '');
INSERT INTO `player_stats` (`id`, `balls`, `centuries`, `fifties`, `fours`, `inning`, `overs`, `runs`, `runs_conceded`, `sixers`, `wickets`, `match_id`, `player_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `how_out`, `maidens`, `no_balls`, `wides`, `catches`, `run_outs`, `stumps`, `remarks`) VALUES
(800, 0, 0, 0, 0, '2', 8.20, 0, 26, 0, 0, 166, 39, NULL, NULL, NULL, NULL, 'Did not bat', 3, 0, 0, 0, 0, 0, ''),
(801, 0, 0, 0, 0, '2', 9.20, 0, 49, 0, 1, 166, 36, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(802, 12, 0, 0, 1, '1', 0.00, 6, 0, 0, 0, 156, 33, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(803, 10, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 156, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(804, 55, 0, 0, 0, '1', 4.00, 4, 13, 0, 0, 156, 144, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(805, 39, 0, 0, 0, '1', 0.00, 8, 0, 0, 0, 156, 38, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 1, 0, 0, ''),
(806, 61, 0, 0, 1, '1', 0.00, 20, 0, 1, 0, 156, 141, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(807, 65, 0, 0, 3, '1', 0.00, 22, 0, 0, 0, 156, 142, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 2, 0, 0, ''),
(808, 54, 0, 1, 11, '1', 3.00, 59, 5, 0, 1, 156, 34, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 1, 0, 0, ''),
(809, 20, 0, 0, 1, '1', 9.00, 7, 22, 0, 2, 156, 32, NULL, NULL, NULL, NULL, 'Catch', 2, 0, 0, 1, 0, 0, ''),
(810, 2, 0, 0, 0, '1', 0.40, 0, 1, 0, 2, 156, 39, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(811, 41, 0, 0, 0, '1', 1.00, 12, 1, 0, 0, 156, 36, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 1, 0, 0, ''),
(812, 49, 0, 0, 0, '1', 17.00, 5, 35, 0, 5, 156, 35, NULL, NULL, NULL, NULL, 'LBW', 3, 0, 0, 1, 0, 0, ''),
(832, 0, 0, 0, 0, '2', 4.00, 0, 14, 0, 2, 156, 35, NULL, NULL, NULL, NULL, 'Did not bat', 2, 0, 0, 0, 0, 0, ''),
(833, 0, 0, 0, 0, '2', 7.00, 0, 13, 0, 1, 156, 39, NULL, NULL, NULL, NULL, 'Did not bat', 2, 0, 0, 0, 0, 0, ''),
(834, 0, 0, 0, 0, '2', 16.00, 0, 27, 0, 3, 156, 32, NULL, NULL, NULL, NULL, 'Did not bat', 4, 0, 0, 0, 0, 0, ''),
(835, 0, 0, 0, 0, '2', 7.00, 0, 4, 0, 2, 156, 144, NULL, NULL, NULL, NULL, 'Did not bat', 5, 0, 0, 0, 0, 0, ''),
(836, 0, 0, 0, 0, '2', 2.20, 0, 9, 0, 2, 156, 36, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(837, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 156, 142, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 2, 0, 0, ''),
(838, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 156, 34, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 3, 0, 0, ''),
(839, 79, 0, 0, 4, '1', 0.00, 41, 0, 0, 0, 158, 33, NULL, NULL, NULL, NULL, 'LBW', 0, 1, 0, 1, 0, 0, ''),
(848, 22, 0, 0, 3, '2', 0.00, 28, 0, 1, 0, 155, 33, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(849, 11, 0, 0, 2, '2', 0.00, 8, 0, 0, 0, 155, 37, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(850, 4, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 155, 141, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, ''),
(851, 48, 0, 0, 3, '2', 0.00, 20, 0, 0, 0, 155, 145, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(852, 7, 0, 0, 1, '2', 0.00, 6, 0, 0, 0, 155, 34, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(853, 18, 0, 0, 1, '2', 0.00, 11, 0, 0, 0, 155, 147, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(854, 14, 0, 0, 2, '2', 0.00, 8, 0, 0, 0, 155, 143, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(855, 7, 0, 0, 0, '2', 0.00, 3, 0, 0, 0, 155, 36, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(856, 111, 0, 0, 5, '2', 0.00, 33, 0, 0, 0, 155, 32, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(857, 38, 0, 0, 2, '2', 0.00, 16, 0, 0, 0, 155, 153, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(858, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 155, 35, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(859, 6, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 170, 158, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(860, 15, 0, 0, 2, '1', 0.00, 11, 0, 0, 0, 170, 160, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(862, 27, 0, 0, 2, '1', 7.00, 24, 21, 1, 3, 170, 149, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 2, 0, 0, ''),
(863, 2, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 170, 159, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 2, 0, 0, ''),
(864, 32, 0, 0, 0, '1', 7.00, 13, 44, 0, 0, 170, 146, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 1, 0, 0, ''),
(865, 11, 0, 0, 1, '1', 4.00, 4, 22, 0, 1, 170, 161, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(866, 19, 0, 0, 4, '1', 0.00, 21, 0, 0, 0, 170, 172, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(867, 6, 0, 0, 0, '1', 5.00, 1, 31, 0, 0, 170, 164, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(868, 12, 0, 0, 0, '1', 5.00, 0, 22, 0, 1, 170, 175, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 1, 0, ''),
(869, 4, 0, 0, 0, '1', 8.00, 0, 41, 0, 2, 170, 162, NULL, NULL, NULL, NULL, 'LBW', 1, 0, 0, 0, 0, 0, ''),
(870, 63, 0, 0, 1, '1', 0.00, 21, 0, 0, 0, 171, 158, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(871, 1, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 171, 160, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 1, 0, ''),
(873, 6, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 171, 170, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(874, 19, 0, 0, 0, '1', 0.00, 3, 0, 0, 0, 171, 159, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 2, 0, 0, ''),
(875, 38, 0, 0, 2, '1', 4.00, 13, 11, 0, 3, 171, 149, NULL, NULL, NULL, NULL, 'Not out', 2, 0, 0, 1, 0, 0, ''),
(876, 27, 0, 0, 1, '1', 6.00, 11, 9, 0, 1, 171, 157, NULL, NULL, NULL, NULL, 'Not out', 4, 0, 0, 0, 0, 0, ''),
(877, 1, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 172, 158, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(878, 19, 0, 0, 4, '1', 0.00, 16, 0, 0, 0, 172, 160, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(880, 12, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 172, 157, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(881, 35, 0, 0, 4, '1', 0.00, 30, 0, 0, 0, 172, 159, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(882, 20, 0, 0, 1, '1', 10.00, 8, 14, 0, 1, 172, 149, NULL, NULL, NULL, NULL, 'Catch', 3, 0, 0, 0, 0, 0, ''),
(883, 22, 0, 0, 1, '1', 0.00, 10, 0, 0, 0, 172, 165, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(884, 12, 0, 0, 1, '1', 0.00, 6, 0, 0, 0, 172, 161, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(885, 12, 0, 0, 0, '1', 5.30, 2, 22, 0, 1, 172, 164, NULL, NULL, NULL, NULL, 'Bowled', 1, 0, 0, 0, 0, 0, ''),
(886, 8, 0, 0, 0, '1', 10.00, 0, 11, 0, 0, 172, 175, NULL, NULL, NULL, NULL, 'Catch', 4, 0, 0, 0, 0, 0, ''),
(887, 0, 0, 0, 0, '1', 10.00, 0, 20, 0, 4, 172, 162, NULL, NULL, NULL, NULL, 'Did not bat', 3, 0, 0, 0, 0, 0, ''),
(888, 40, 0, 0, 1, '1', 0.00, 11, 0, 0, 0, 172, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(889, 22, 0, 0, 1, '1', 0.00, 8, 0, 0, 0, 170, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(890, 9, 0, 0, 0, '1', 0.00, 3, 0, 0, 0, 171, 38, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 1, 0, 0, ''),
(892, 20, 0, 0, 4, '1', 0.00, 18, 0, 0, 0, 173, 158, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(893, 36, 0, 0, 2, '1', 0.00, 17, 0, 0, 0, 173, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(894, 82, 0, 1, 10, '1', 0.00, 61, 0, 0, 0, 173, 160, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(895, 70, 0, 0, 7, '1', 0.00, 44, 0, 0, 0, 173, 159, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 1, 0, 0, ''),
(896, 52, 0, 1, 7, '1', 8.00, 51, 54, 1, 0, 173, 149, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 2, 0, 0, ''),
(897, 25, 0, 0, 3, '1', 9.50, 20, 60, 0, 0, 173, 146, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(898, 16, 0, 0, 1, '1', 0.00, 13, 0, 0, 0, 173, 165, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 1, 0, 0, ''),
(899, 0, 0, 0, 0, '1', 9.00, 0, 41, 0, 1, 173, 164, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(900, 0, 0, 0, 0, '1', 10.00, 0, 46, 0, 1, 173, 162, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(901, 0, 0, 0, 0, '1', 10.00, 0, 53, 0, 2, 173, 161, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(902, 18, 0, 0, 1, '1', 0.00, 6, 0, 0, 0, 174, 158, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(903, 3, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 174, 160, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(904, 25, 0, 0, 0, '1', 0.00, 7, 0, 0, 0, 174, 159, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(905, 25, 0, 0, 0, '1', 3.00, 7, 4, 0, 2, 174, 38, NULL, NULL, NULL, NULL, 'Catch', 2, 0, 0, 0, 0, 0, ''),
(906, 57, 0, 0, 5, '1', 6.00, 39, 19, 0, 1, 174, 156, NULL, NULL, NULL, NULL, 'Stump', 2, 0, 0, 1, 0, 0, ''),
(907, 12, 0, 0, 0, '1', 2.00, 6, 15, 0, 0, 174, 171, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(908, 4, 0, 0, 0, '1', 7.00, 2, 43, 0, 1, 174, 157, NULL, NULL, NULL, NULL, 'Run out', 1, 0, 0, 0, 0, 0, ''),
(909, 27, 0, 0, 0, '1', 0.00, 7, 0, 0, 0, 174, 170, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(910, 34, 0, 0, 2, '1', 0.00, 24, 0, 1, 0, 174, 165, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 1, 0, ''),
(911, 15, 0, 0, 0, '1', 5.00, 14, 8, 2, 3, 174, 161, NULL, NULL, NULL, NULL, 'Bowled', 1, 0, 0, 1, 0, 0, ''),
(912, 9, 0, 0, 1, '1', 6.00, 4, 15, 0, 1, 174, 162, NULL, NULL, NULL, NULL, 'Bowled', 2, 0, 0, 0, 0, 0, ''),
(913, 14, 0, 0, 11, '1', 0.00, 6, 0, 0, 0, 175, 158, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(914, 13, 0, 0, 1, '1', 0.00, 6, 0, 0, 0, 175, 160, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 1, 0, ''),
(915, 77, 0, 0, 1, '1', 0.00, 27, 0, 0, 0, 175, 159, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 1, 0, 0, ''),
(916, 50, 0, 0, 3, '1', 2.00, 22, 16, 0, 0, 175, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(917, 30, 0, 0, 2, '1', 10.00, 16, 30, 0, 2, 175, 149, NULL, NULL, NULL, NULL, 'LBW', 3, 0, 0, 1, 0, 0, ''),
(918, 22, 0, 0, 1, '1', 10.00, 9, 30, 0, 2, 175, 170, NULL, NULL, NULL, NULL, 'Catch', 3, 0, 0, 0, 0, 0, ''),
(919, 44, 0, 0, 2, '1', 8.30, 18, 30, 0, 2, 175, 146, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(920, 20, 0, 0, 0, '1', 0.00, 9, 0, 1, 0, 175, 172, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(921, 4, 0, 0, 0, '1', 7.00, 1, 17, 0, 2, 175, 161, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 0, 0, 0, ''),
(922, 5, 0, 0, 0, '1', 2.00, 0, 9, 0, 1, 175, 175, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(923, 7, 0, 0, 0, '1', 10.00, 0, 26, 0, 0, 175, 162, NULL, NULL, NULL, NULL, 'Not out', 2, 0, 0, 0, 0, 0, ''),
(924, 18, 0, 0, 5, '1', 0.00, 32, 0, 1, 0, 176, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(925, 18, 0, 0, 0, '1', 5.00, 17, 25, 0, 2, 176, 45, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(926, 34, 0, 0, 1, '1', 2.00, 34, 22, 1, 0, 176, 63, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(927, 36, 0, 0, 4, '1', 0.00, 36, 0, 0, 0, 176, 52, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(928, 14, 0, 0, 2, '1', 5.00, 17, 27, 0, 1, 176, 47, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(929, 18, 0, 0, 5, '1', 4.00, 31, 26, 1, 1, 176, 56, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 1, 3, 0, 0, ''),
(930, 7, 0, 0, 1, '1', 0.00, 9, 0, 0, 0, 176, 182, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(931, 0, 0, 0, 0, '1', 2.00, 0, 25, 0, 0, 176, 55, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 1, 0, 0, 0, ''),
(932, 0, 0, 0, 0, '1', 2.00, 0, 18, 0, 1, 176, 54, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(933, 0, 0, 0, 0, '1', 5.00, 0, 33, 0, 0, 176, 53, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 1, 0, 0, 0, ''),
(934, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 176, 181, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 2, 0, 0, ''),
(935, 10, 0, 0, 1, '1', 2.00, 12, 22, 1, 0, 177, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(936, 32, 0, 0, 5, '1', 4.00, 36, 11, 0, 2, 177, 45, NULL, NULL, NULL, NULL, 'Bowled', 1, 0, 0, 0, 0, 0, ''),
(937, 31, 0, 0, 2, '1', 4.00, 41, 16, 3, 0, 177, 47, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(938, 37, 0, 0, 3, '1', 0.00, 29, 0, 0, 0, 177, 52, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(939, 37, 0, 1, 8, '1', 3.00, 54, 24, 1, 1, 177, 61, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(940, 8, 0, 0, 0, '1', 4.00, 5, 20, 0, 1, 177, 181, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(941, 0, 0, 0, 0, '1', 4.00, 0, 26, 0, 1, 177, 56, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(942, 0, 0, 0, 0, '1', 3.00, 0, 18, 0, 0, 177, 58, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(943, 0, 0, 0, 0, '1', 2.00, 0, 19, 0, 1, 177, 54, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 1, 0, ''),
(944, 0, 0, 0, 0, '1', 3.00, 0, 23, 0, 0, 177, 53, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(945, 10, 0, 0, 0, '1', 0.00, 6, 0, 0, 0, 178, 57, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(946, 8, 0, 0, 0, '1', 5.00, 2, 35, 0, 0, 178, 45, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(947, 58, 0, 1, 4, '1', 1.00, 73, 13, 3, 1, 178, 63, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(948, 87, 0, 1, 8, '1', 7.00, 88, 34, 0, 2, 178, 183, NULL, NULL, NULL, NULL, 'Not out', 1, 0, 0, 0, 0, 0, ''),
(949, 3, 0, 0, 0, '1', 5.00, 1, 43, 0, 0, 178, 56, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(950, 32, 0, 0, 4, '1', 0.00, 37, 0, 1, 0, 178, 52, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 1, 0, 2, ''),
(951, 0, 0, 0, 0, '1', 7.00, 0, 22, 0, 1, 178, 62, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(952, 0, 0, 0, 0, '1', 4.00, 0, 20, 0, 2, 178, 53, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(953, 0, 0, 0, 0, '1', 2.00, 0, 23, 0, 0, 178, 55, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(954, 0, 0, 0, 0, '1', 4.00, 0, 27, 0, 1, 178, 181, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(955, 10, 0, 0, 1, '1', 3.00, 12, 26, 1, 1, 179, 57, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(956, 5, 0, 0, 1, '1', 5.00, 4, 23, 0, 0, 179, 45, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 2, 0, 0, 0, ''),
(957, 49, 0, 0, 4, '1', 0.00, 47, 0, 0, 0, 179, 63, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(958, 30, 0, 0, 3, '1', 4.00, 29, 28, 0, 0, 179, 56, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 1, 0, 0, 0, ''),
(959, 5, 0, 0, 1, '1', 4.00, 5, 23, 0, 1, 179, 47, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 2, 0, 0, ''),
(960, 2, 0, 0, 0, '1', 5.00, 1, 30, 0, 0, 179, 62, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 1, 0, 0, 0, ''),
(961, 11, 0, 0, 1, '1', 3.00, 8, 16, 0, 1, 179, 60, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 5, 0, 0, 0, ''),
(962, 24, 0, 0, 2, '1', 0.00, 25, 0, 2, 0, 179, 61, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(963, 8, 0, 0, 0, '1', 0.00, 2, 0, 0, 0, 179, 182, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(964, 21, 0, 0, 1, '1', 3.00, 12, 23, 1, 1, 179, 58, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(965, 3, 0, 0, 0, '1', 7.00, 0, 24, 0, 6, 179, 53, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 1, 0, 0, 0, ''),
(966, 11, 0, 0, 3, '1', 0.00, 16, 0, 0, 0, 180, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(967, 26, 0, 0, 3, '1', 6.00, 20, 24, 0, 1, 180, 45, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 1, 0, ''),
(968, 11, 0, 0, 1, '1', 0.00, 13, 0, 1, 0, 180, 63, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(969, 12, 0, 0, 0, '1', 3.00, 6, 28, 0, 0, 180, 56, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(970, 28, 0, 0, 1, '1', 0.00, 28, 0, 2, 0, 180, 52, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(971, 58, 0, 1, 5, '1', 6.00, 72, 36, 4, 2, 180, 60, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 1, 0, ''),
(972, 15, 0, 0, 3, '1', 3.10, 34, 19, 2, 3, 180, 61, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(973, 0, 0, 0, 0, '1', 3.00, 0, 33, 0, 0, 180, 53, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(974, 0, 0, 0, 0, '1', 5.00, 0, 47, 0, 1, 180, 50, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 1, 0, ''),
(975, 0, 0, 0, 0, '1', 1.00, 0, 19, 0, 0, 180, 55, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(976, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 180, 181, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(977, 33, 0, 0, 0, '1', 0.00, 22, 0, 0, 0, 181, 57, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 0, 0, 0, ''),
(978, 16, 0, 0, 0, '1', 5.00, 5, 24, 0, 2, 181, 45, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(979, 4, 0, 0, 0, '1', 3.00, 2, 21, 0, 0, 181, 63, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(980, 51, 0, 0, 4, '1', 3.00, 39, 9, 1, 1, 181, 47, NULL, NULL, NULL, NULL, 'Stump', 0, 0, 0, 0, 0, 0, ''),
(981, 23, 0, 0, 0, '1', 6.00, 7, 28, 0, 2, 181, 56, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(982, 59, 0, 1, 3, '1', 0.00, 66, 0, 5, 0, 181, 61, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 4, 1, 0, ''),
(983, 41, 0, 0, 1, '1', 1.00, 6, 11, 0, 1, 181, 49, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(984, 4, 0, 0, 0, '1', 5.00, 3, 28, 0, 0, 181, 58, NULL, NULL, NULL, NULL, 'Not out', 1, 0, 0, 0, 0, 0, ''),
(985, 0, 0, 0, 0, '1', 0.20, 0, 3, 0, 1, 181, 54, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(986, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 181, 50, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(987, 0, 0, 0, 0, '1', 3.00, 0, 23, 0, 0, 181, 55, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 1, 0, 0, ''),
(988, 0, 0, 0, 0, '1', 2.00, 0, 15, 0, 1, 181, 53, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(989, 12, 0, 0, 1, '1', 7.00, 7, 28, 0, 2, 182, 45, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 3, 0, 0, 0, ''),
(990, 9, 0, 0, 2, '1', 4.00, 23, 20, 2, 0, 182, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(991, 34, 0, 0, 2, '1', 0.00, 33, 0, 0, 0, 182, 63, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 2, 0, 0, ''),
(992, 7, 0, 0, 0, '1', 2.00, 5, 22, 0, 0, 182, 55, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 2, 0, 0, 0, ''),
(993, 29, 0, 0, 1, '1', 2.00, 9, 14, 0, 0, 182, 54, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 1, 0, 0, 0, ''),
(994, 3, 0, 0, 0, '1', 7.00, 0, 19, 0, 1, 182, 56, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 1, 0, 0, ''),
(995, 2, 0, 0, 0, '1', 1.00, 0, 5, 0, 0, 182, 49, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(996, 41, 0, 0, 4, '1', 0.00, 39, 0, 0, 0, 182, 50, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 1, 0, 0, ''),
(997, 32, 0, 1, 4, '1', 5.00, 50, 20, 5, 1, 182, 58, NULL, NULL, NULL, NULL, 'Not out', 1, 1, 1, 0, 0, 0, ''),
(998, 12, 0, 0, 0, '1', 1.00, 2, 5, 0, 0, 182, 59, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 1, 0, 0, 0, ''),
(999, 5, 0, 0, 0, '1', 0.00, 8, 0, 0, 0, 183, 48, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1001, 29, 0, 0, 2, '1', 0.00, 11, 0, 0, 0, 185, 147, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1002, 11, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 185, 185, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1003, 20, 0, 0, 0, '1', 2.00, 0, 16, 0, 0, 185, 186, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1004, 9, 0, 0, 1, '1', 0.00, 4, 0, 0, 0, 185, 152, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 1, 0, ''),
(1005, 58, 0, 0, 2, '1', 0.00, 21, 0, 1, 0, 185, 38, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 2, 0, 0, ''),
(1006, 81, 0, 0, 1, '1', 0.00, 24, 0, 0, 0, 185, 142, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 1, 0, 0, ''),
(1007, 38, 0, 0, 3, '1', 25.00, 16, 81, 0, 2, 185, 144, NULL, NULL, NULL, NULL, 'Catch', 2, 0, 0, 2, 0, 0, ''),
(1008, 2, 0, 0, 0, '1', 8.00, 0, 35, 0, 2, 185, 154, NULL, NULL, NULL, NULL, 'Catch', 1, 3, 0, 0, 0, 0, ''),
(1009, 9, 0, 0, 1, '1', 10.00, 5, 31, 0, 2, 185, 39, NULL, NULL, NULL, NULL, 'Not out', 2, 0, 0, 0, 0, 0, ''),
(1010, 0, 0, 0, 0, '1', 22.00, 0, 63, 0, 2, 185, 143, NULL, NULL, NULL, NULL, 'Did not bat', 5, 0, 0, 0, 0, 0, ''),
(1011, 0, 0, 0, 0, '1', 13.00, 0, 47, 0, 1, 185, 146, NULL, NULL, NULL, NULL, 'Did not bat', 2, 0, 1, 0, 0, 0, ''),
(1012, 3, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 184, 152, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(1013, 27, 0, 0, 2, '1', 4.00, 20, 4, 0, 1, 184, 185, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 1, 0, 0, 0, ''),
(1014, 43, 0, 0, 2, '1', 4.00, 24, 2, 0, 0, 184, 147, NULL, NULL, NULL, NULL, 'Catch', 3, 0, 0, 1, 0, 0, ''),
(1015, 30, 0, 0, 0, '1', 0.00, 8, 0, 0, 0, 184, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(1016, 3, 0, 0, 0, '1', 0.00, 2, 0, 0, 0, 184, 149, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 1, 0, 0, ''),
(1017, 88, 0, 0, 3, '1', 0.00, 45, 0, 0, 0, 184, 142, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 3, 0, 0, ''),
(1018, 25, 0, 0, 0, '1', 3.00, 2, 15, 0, 0, 184, 144, NULL, NULL, NULL, NULL, 'Bowled', 1, 0, 0, 0, 0, 0, ''),
(1019, 22, 0, 0, 1, '1', 0.00, 10, 0, 0, 0, 184, 143, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1020, 13, 0, 0, 1, '1', 0.00, 8, 0, 0, 0, 184, 39, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1021, 4, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 186, 186, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1022, 31, 0, 0, 2, '1', 11.20, 17, 28, 0, 3, 186, 143, NULL, NULL, NULL, NULL, 'Run out', 2, 0, 2, 0, 0, 0, ''),
(1023, 14, 0, 0, 1, '1', 0.00, 6, 0, 0, 0, 186, 147, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1024, 6, 0, 0, 0, '1', 0.00, 6, 0, 1, 0, 186, 187, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(1025, 224, 1, 1, 7, '1', 0.00, 109, 0, 0, 0, 186, 152, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(1026, 45, 0, 0, 2, '1', 0.00, 12, 0, 0, 0, 186, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(1027, 133, 0, 1, 4, '1', 0.00, 78, 0, 1, 0, 186, 142, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1028, 3, 0, 0, 0, '1', 14.00, 1, 41, 0, 4, 186, 144, NULL, NULL, NULL, NULL, 'Catch', 3, 0, 0, 0, 0, 0, ''),
(1029, 18, 0, 0, 0, '1', 6.00, 10, 19, 0, 0, 186, 39, NULL, NULL, NULL, NULL, 'Run out', 2, 1, 0, 0, 0, 0, ''),
(1030, 7, 0, 0, 0, '1', 7.00, 4, 22, 0, 3, 186, 154, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 4, 0, 0, 0, ''),
(1031, 0, 0, 0, 0, '1', 5.00, 0, 21, 0, 0, 186, 146, NULL, NULL, NULL, NULL, 'Did not bat', 0, 4, 1, 1, 0, 0, ''),
(1032, 4, 0, 0, 0, '2', 0.00, 1, 0, 0, 0, 186, 187, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(1033, 19, 0, 0, 1, '2', 0.00, 13, 0, 1, 0, 186, 143, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1034, 7, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 186, 38, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(1035, 124, 1, 1, 12, '2', 0.00, 110, 0, 3, 0, 186, 144, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(1036, 43, 0, 0, 3, '2', 0.00, 30, 0, 0, 0, 186, 152, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1037, 17, 0, 0, 2, '2', 0.00, 10, 0, 0, 0, 186, 186, NULL, NULL, NULL, NULL, 'Bowled', 0, 0, 0, 0, 0, 0, ''),
(1038, 37, 0, 0, 5, '2', 0.00, 29, 0, 0, 0, 186, 147, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1039, 7, 0, 0, 2, '2', 0.00, 10, 0, 0, 0, 186, 142, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(1040, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 186, 154, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(1041, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 186, 146, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(1042, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 186, 39, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(1043, 46, 0, 0, 2, '1', 0.00, 11, 0, 0, 0, 187, 185, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1044, 3, 0, 0, 0, '1', 21.00, 0, 55, 0, 4, 187, 143, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 0, 1, 0, ''),
(1045, 86, 0, 1, 5, '1', 0.00, 50, 0, 0, 0, 187, 147, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1046, 169, 0, 1, 3, '1', 0.00, 82, 0, 0, 0, 187, 152, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(1047, 27, 0, 0, 1, '1', 0.00, 6, 0, 0, 0, 187, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(1048, 61, 0, 0, 2, '1', 0.00, 31, 0, 0, 0, 187, 142, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 1, 0, ''),
(1049, 27, 0, 0, 1, '1', 8.00, 6, 35, 0, 1, 187, 154, NULL, NULL, NULL, NULL, 'Bowled', 1, 3, 2, 0, 0, 0, ''),
(1050, 4, 0, 0, 0, '1', 20.10, 3, 38, 0, 1, 187, 144, NULL, NULL, NULL, NULL, 'Catch', 9, 1, 0, 0, 0, 0, ''),
(1051, 58, 0, 0, 2, '1', 8.00, 35, 23, 1, 1, 187, 39, NULL, NULL, NULL, NULL, 'Catch', 1, 0, 0, 1, 0, 0, ''),
(1052, 10, 0, 0, 1, '1', 0.00, 13, 0, 0, 0, 187, 186, NULL, NULL, NULL, NULL, 'Run out', 0, 0, 0, 2, 0, 0, ''),
(1053, 0, 0, 0, 0, '1', 9.00, 0, 27, 0, 2, 187, 146, NULL, NULL, NULL, NULL, 'Did not bat', 2, 4, 0, 0, 0, 0, ''),
(1054, 40, 0, 0, 4, '2', 0.00, 24, 0, 1, 0, 187, 185, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1055, 12, 0, 0, 0, '2', 0.00, 2, 0, 0, 0, 187, 143, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1056, 23, 0, 0, 2, '2', 0.00, 11, 0, 0, 0, 187, 147, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(1057, 45, 0, 0, 4, '2', 0.00, 27, 0, 0, 0, 187, 152, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(1058, 31, 0, 0, 1, '2', 0.00, 12, 0, 1, 0, 187, 142, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1059, 11, 0, 0, 5, '2', 0.00, 22, 0, 0, 0, 187, 144, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(1060, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 187, 186, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(1061, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 187, 154, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(1062, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 187, 39, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(1063, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 187, 146, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(1064, 0, 0, 0, 0, '2', 0.00, 0, 0, 0, 0, 187, 38, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(1065, 25, 0, 0, 0, '1', 0.00, 9, 0, 0, 0, 188, 152, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1066, 30, 0, 0, 1, '1', 0.00, 8, 0, 0, 0, 188, 38, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1067, 77, 0, 0, 5, '1', 0.00, 41, 0, 0, 0, 188, 147, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1068, 10, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 188, 149, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1069, 9, 0, 0, 0, '1', 0.00, 1, 0, 0, 0, 188, 142, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(1070, 23, 0, 0, 1, '1', 0.00, 16, 0, 1, 0, 188, 144, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1071, 13, 0, 0, 0, '1', 4.00, 4, 15, 0, 2, 188, 39, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 1, 0, 0, ''),
(1072, 18, 0, 0, 1, '1', 3.00, 6, 16, 0, 1, 188, 143, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1073, 3, 0, 0, 0, '1', 5.50, 1, 28, 0, 3, 188, 148, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 1, 0, 0, ''),
(1074, 27, 0, 0, 0, '1', 1.00, 7, 10, 0, 0, 188, 153, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 1, 0, 0, ''),
(1075, 12, 0, 0, 0, '1', 6.00, 1, 39, 0, 0, 188, 146, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 0, 0, 0, ''),
(1076, 0, 0, 0, 0, '1', 6.00, 0, 25, 0, 2, 82, 53, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(1077, 7, 0, 0, 1, '1', 2.00, 4, 19, 0, 0, 189, 57, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1078, 11, 0, 0, 0, '1', 5.00, 4, 33, 0, 2, 189, 45, NULL, NULL, NULL, NULL, 'LBW', 0, 0, 0, 1, 0, 0, ''),
(1079, 6, 0, 0, 0, '1', 2.00, 0, 16, 0, 1, 189, 61, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 1, 0, ''),
(1080, 15, 0, 0, 1, '1', 7.00, 16, 33, 1, 2, 189, 47, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1081, 62, 0, 1, 6, '1', 5.00, 61, 37, 1, 1, 189, 60, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(1082, 11, 0, 0, 3, '1', 2.00, 15, 18, 0, 0, 189, 50, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 2, 0, 0, ''),
(1083, 50, 0, 1, 5, '1', 4.00, 50, 29, 2, 0, 189, 56, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1084, 5, 0, 0, 1, '1', 0.00, 5, 0, 0, 0, 189, 49, NULL, NULL, NULL, NULL, 'Catch', 0, 0, 0, 0, 0, 0, ''),
(1085, 4, 0, 0, 0, '1', 2.00, 0, 18, 0, 0, 189, 59, NULL, NULL, NULL, NULL, 'Not out', 0, 0, 0, 0, 0, 0, ''),
(1086, 0, 0, 0, 0, '1', 0.00, 0, 0, 0, 0, 189, 48, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, ''),
(1087, 0, 0, 0, 0, '1', 6.00, 0, 28, 0, 1, 189, 53, NULL, NULL, NULL, NULL, 'Did not bat', 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `practise_sessions`
--

CREATE TABLE `practise_sessions` (
  `prac_id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `prac_type` varchar(255) DEFAULT NULL,
  `star_time` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `team_id` bigint(20) NOT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `practise_sessions`
--

INSERT INTO `practise_sessions` (`prac_id`, `date`, `end_time`, `prac_type`, `star_time`, `venue`, `team_id`, `start_time`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(41, '2025-05-06', '17:30', 'Batting Practice', NULL, 'Richmond Ground', 60, '14:30', 'priyankara01', '2025-04-28 08:40:54.000000', NULL, NULL),
(42, '2025-05-08', '12:00', 'Fielding Practice', NULL, 'Galle International Ground ', 60, '07:30', 'priyankara01', '2025-04-28 08:41:53.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` enum('ROLE_ADMIN','ROLE_COACH','ROLE_OFFICIAL','ROLE_PLAYER','ROLE_USER') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_PLAYER'),
(2, 'ROLE_COACH'),
(3, 'ROLE_OFFICIAL'),
(4, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` bigint(20) NOT NULL,
  `captain` varchar(255) DEFAULT NULL,
  `under` varchar(255) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL,
  `vice_captain` varchar(255) DEFAULT NULL,
  `captain_id` bigint(20) DEFAULT NULL,
  `vice_captain_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `captain`, `under`, `year`, `created_by`, `created_on`, `updated_by`, `updated_on`, `vice_captain`, `captain_id`, `vice_captain_id`) VALUES
(1, 'S.T.R.Jayasekara', 'Richmond Legend Over 50', 2024, NULL, NULL, 'admin01', '2025-08-04 03:32:48.000000', 'Dilshan Amarasinghe', 47, 55),
(59, NULL, 'Under 15', 2025, 'admin01', '2025-03-17 03:41:25.000000', 'admin01', '2025-04-22 10:33:32.000000', NULL, 48, 52),
(60, NULL, 'Under 19', 2025, 'admin01', '2025-03-18 10:00:15.000000', 'admin01', '2025-04-23 04:32:42.000000', NULL, 141, 32),
(62, NULL, 'Old Boys', 2025, 'admin01', '2025-04-28 02:59:08.000000', NULL, NULL, NULL, 32, 33),
(63, NULL, 'Under 17', 2025, 'admin01', '2025-06-13 03:08:13.000000', 'admin01', '2025-06-13 11:31:20.000000', NULL, 38, 149),
(64, NULL, 'Richmond Legend Over 50', 2025, 'admin01', '2025-08-04 03:29:56.000000', 'admin01', '2025-10-02 04:04:08.000000', NULL, 56, 63),
(65, NULL, 'Under 19', 2026, 'Admin003', '2025-12-21 04:27:31.000000', 'Admin003', '2026-01-01 09:26:15.000000', NULL, 142, 144);

-- --------------------------------------------------------

--
-- Table structure for table `team_players`
--

CREATE TABLE `team_players` (
  `team_id` bigint(20) NOT NULL,
  `player_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_players`
--

INSERT INTO `team_players` (`team_id`, `player_id`) VALUES
(1, 45),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(59, 48),
(59, 49),
(59, 52),
(60, 32),
(60, 33),
(60, 34),
(60, 35),
(60, 36),
(60, 37),
(60, 38),
(60, 39),
(60, 141),
(60, 142),
(60, 143),
(60, 144),
(60, 145),
(60, 146),
(60, 147),
(60, 148),
(60, 149),
(60, 152),
(60, 153),
(60, 154),
(62, 32),
(62, 33),
(63, 38),
(63, 146),
(63, 149),
(63, 153),
(63, 156),
(63, 157),
(63, 158),
(63, 159),
(63, 160),
(63, 161),
(63, 162),
(63, 163),
(63, 164),
(63, 165),
(63, 167),
(63, 168),
(63, 170),
(63, 171),
(63, 172),
(63, 173),
(63, 174),
(63, 175),
(63, 176),
(63, 177),
(64, 45),
(64, 47),
(64, 48),
(64, 49),
(64, 50),
(64, 52),
(64, 53),
(64, 54),
(64, 55),
(64, 56),
(64, 57),
(64, 58),
(64, 59),
(64, 60),
(64, 61),
(64, 62),
(64, 63),
(64, 67),
(64, 68),
(64, 181),
(64, 182),
(64, 183),
(65, 38),
(65, 39),
(65, 142),
(65, 143),
(65, 144),
(65, 146),
(65, 147),
(65, 148),
(65, 149),
(65, 152),
(65, 153);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(5, 'coach01@gmail.com', '$2a$10$5vlLO7GZJmuguWHfMl9gN.EygzHH5L7xGhXE06j16vuNZY4MjopH2', 'coach01'),
(25, 'padharmarathne@gmail.com', '$2a$10$2X.cWm3Crfl/88kakK3WOOELZEZFeKy7Pzs6NN8yrlJjxsSqI7EDq', 'dharmarathne01'),
(26, 'pamithaloku123@gmail.com', '$2a$10$DeWwBJjhr0pOu9hnibLNKORbi/B/hZiaTsQu8FHewiKFat5kK7eKu', 'pushpakumara01'),
(54, 'kevin@gmail.com', '$2a$10$rLrix/zaPgvXOjZ4QXtJo.WO18Vep43QVhgnTOCjAyQSVOp2eyEwy', 'kevin01'),
(55, 'nithish@gmail.com', '$2a$10$1ZJ7mImUoZzVbi0MfQ5PDeGSRRCybWFe6H2U0/t1LhHYnldZSyeta', 'nikil01'),
(56, 'udula@gmail.com', '$2a$10$91N2CLKmoSNM5OsuIgwmOu9niMRBTDVwxozmomLEk1UJpNyMmjba2', 'udula01'),
(57, 'sadew@gmail.com', '$2a$10$SUZYdsh7mzc0VFsynqr/YuabsgL9X09vGP5PYxEjppeMlBtRBi00C', 'sadew01'),
(58, 'dinidu@gmail.com', '$2a$10$Ww6263Qi8RcYGRJwcATHpOp19UVTSF09OoFUQDdXM5VSopUEF8LTC', 'dinidu01'),
(59, 'janiru@gmail.com', '$2a$10$Ae04TaC/qUrq6yF4vil1jenVMgBvUEg9EKNLJNgA1hxUu481ujQiW', 'janiru01'),
(60, 'dewmitha@gmail.com', '$2a$10$qWoIuJfIwxNkSI1SmoJn2eYIk95pOxdSvw7nhsrHiIAMID7HPWzj.', 'dewmitha01'),
(61, 'kirulinda@gmail.com', '$2a$10$ySDXhhM.1b08IbLEWC8q9.ZMA/yuLEPSi8KABjtVigxCOeaUUKK3e', 'kirulina01'),
(70, 'sandatenna@sltnet.lk', '$2a$10$guytQ.NO.IwbnShYP4/S4OFela6cms8O0QIZloNyClzhTEwXzXSbu', 'Lasantha01'),
(72, 'sirimanne@cdl.lk', '$2a$10$.AUA1BzYTt196s1phI4KBOr6V31gRriCx0QIKmUBo8.0LKRODAJSO', 'Asoka01'),
(73, 'duhithu2@gfhf.gfg', '$2a$10$tqrzmb8CnTjWldQ1O9epcuJEbLrDXRJMfwHjDPKiKvmHPEF8lG6G6', 'duhithu3'),
(74, 'prasad@gmail.com', '$2a$10$MmcD5ico8LYSuXjxAn9o/OgzznH2HWP5PZseo02iyoloN2YH4HTp6', 'prasad01'),
(75, 'pusitha@gmail.com', '$2a$10$LFsd05ydqoyxYWZOb7vGzOaACEW.y4V2YGYzo80xe7fLMQuaO0BOO', 'pusitha01'),
(76, 'nishanthamendis@hotmail.com', '$2a$10$ts.sKYbb/On42VxGJgR3UeSSafPwFTptAJafT.qOq8nNCBaYLbmMS', 'nishantha01'),
(78, 'hewa@gmail.com', '$2a$10$BG5Q/.vGEWW75Ioo/v8BjuhMpPYg.Mm8dtPxdXBlVPEFjEGeSc.f2', 'hewamanne01'),
(79, 'thushan.duminda@gmail.com', '$2a$10$bXzbmFrKuT00vTSvQx34.eP1fj9WOehadLkGK16HS/4akWGCuM3ma', 'thushan01'),
(80, 'yatawaraupul12@gmail.com', '$2a$10$GdYU/Y8PLA/fi669qSyM9uZu2VxAfTPT6qPeB8czOFroteB9vd7xa', 'yatawara01'),
(81, 'samanjayasekara68@gmail.com', '$2a$10$3FiRV9xFwovsNmG2yHPpseQdVn4xcBfZrma5YyK1Ayepdz.jCZGHm', 'saman01'),
(82, 'Dilshdilshan@lalangroup.com', '$2a$10$vrtlEQDZEpnysW3RFfCVUeZGvU3Uit3fz9d/b.c3m5P6U8Q.c.rOO', 'dilshan01'),
(83, 'asithad2013@gmail.com', '$2a$10$.i3EyrCQpgVTB2yDLoHvce7IjvS0vBNL7h4leHNQa2vzHRtyv2i/2', 'asitha01'),
(84, '72ramanayake@gmail.com', '$2a$10$LqYDxQeHjsLUDEDUlYyAguF374C.9MTAt/RCmqQuIaxwHSu373qkq', 'prasanna'),
(85, 'bakthi@gmail.com', '$2a$10$8UwMhjFNUdtN1xwgotAFpOYAbV.IG0/25KhXu/iewy84.x1cFhQQG', 'bakthi01'),
(86, 'chamilperera1979@gmail.com', '$2a$10$iy1/8QE6QdNyYbgsZJ8M9OQoc4FfqOzaotxyvYsQTZD3kl3USSLye', 'chamil01'),
(87, 'samanthalorensuhewa@gmail.com', '$2a$10$xqtehgnzAH6L5d17M7jVp.VBr1mDxB6uNCKS1wCPnbQQH2jzkY3la', 'samantha01'),
(88, 'udayanga2848@gmail.com', '$2a$10$WazX2MSL7wG1TGUOCH97GOxf3nR70WKZpPOpqrxnOgYU2SZIxvY7C', 'indika01'),
(89, 'salukawijesiri@gmail.com', '$2a$10$XpPAAKwGWWgaS8Hkp/Hm9eGgzwwEpTWE6ACrxWJ5vxP8Wki5KXGBq', 'saluka01'),
(91, 'gchathupama@gmail.com', '$2a$10$g/9cR1hpAH7TfrD537ARGOylGjgxucTA54SQw87E.M5fdMtDIJI6G', 'chathupama01'),
(92, 'ace@gmail.com', '$2a$10$tRuGibLoH9.B4NqA5hkeqePcvNCsDlZcaYlY5sNnI/jtIxUR7T90O', 'tharindu01'),
(93, 'chinthakaw@gmail.com', '$2a$10$WZ8jgjffr72FjTrxnhLm7OKKhTrUKRqkSE9EiZmido56cSwcM3tES', 'chinthaka01'),
(94, 'hiran@gmail.com', '$2a$10$qd6KiNv8YKBJ/keH9/jvLe3Ii12yUOYlg1BbJGAfiCx/Lw8SQWvsa', 'hiran01'),
(96, 'admin01@gmail.com', '$2a$10$acw8mj1swlCGnoWH6vGsM.14M2D9yUYCc8Sg8Wwd6HNatOQyY.tam', 'admin01'),
(97, 'hathurusinghe@gmail.com', '$2a$10$1UOrtzHPbVSxrCDhA78h4eam/Kv5DDaI.cxBIJ6mnsrWK5pUmUieO', 'hathuru123'),
(107, 'indika123@gmail.com', '$2a$10$Ou.MNIgOr5mupKPJhD7v5uZ9BJo2mOOFv1CEgfcjono8/RLw5SY/e', 'indika123'),
(108, 'samin123@gmail.com', '$2a$10$LZHb/Wx8FMcLZTfpWCQ4kOxpJUfY3gHXeAgWn0YXrEO0YQc5/wkV.', 'samin123'),
(109, 'sathu@gmail.com', '$2a$10$/cGDY.S0BDh8C9sLwwxwW.BbgR6NGpJRFJ4sgvSkzR7dJmiGu4KfG', 'sathu12345'),
(112, 'test@gmail.com', '$2a$10$xRbsPqjAoY5RxpS00KGX8.HOInD/cU7YkDF5F5j5wDmqPmU.MOY3i', 'test'),
(113, 'duhithuupdate@gmail.com', '$2a$10$95tGLHX35e8TJGls6vuZ9.qG9EvQUVRY4F7tWqIjjMGIJ4X6yDi3i', 'duhithuupdate'),
(114, 'jaye123@gmail.com', '$2a$10$UADMegdaec3evCfUaqElEeK.mgGITQO3gjprNor6ffyEM4yWQeJtm', 'jayasinghe'),
(115, 'duhithu@gmail.com', '$2a$10$lQmo0l1/ZGN2VUZ4CDPx.ebV1HDAE6ZsllEg1ojMSLl2p9mAPnM/K', 'duhithu'),
(116, 'mahesh@gmail.com', '$2a$10$KtrqY1dTr.Hu.KIYi5iy0Ofa8pYLdLM/hMQ5pDDpJynwvt9.n2PSK', 'mahesh Siriwardana'),
(119, 'lahiru@gmail.com', '$2a$10$4Jg0xO.ZTYGntBfrHJa0zOd8pY2I8Y/m7pM.dr1inEsj5dStS0e62', 'lahiru123'),
(121, 'gunadasa123@gmail.com', '$2a$10$tFYpON4inDeT9bH5jxag7OqTSsSitdHZ5T.D0mPNJOqkfK4t0K..e', 'gunadasa123'),
(129, 'Ffernando123@gmail.com', '$2a$10$eskbic97s1qHloY4AwCn..Y2Sa4.YJFUk0OIBd38Ay04TaLkAb1Ym', 'Ffernando123'),
(140, 'hello01@gmail.com', '$2a$10$4y1CFhOaL3hsIGMJWtJNVeFvqlPP7nP7jNagtrOpHzxr04uMP0xAq', 'hello01'),
(148, 'saman123@gmail.com', '$2a$10$bbdT5U.kSYJRMVxIOWBrH.gqU8DLGC6duNr/.1y10/S1/DAY2qKti', 'saman123'),
(149, 'pamithapankajajk@gmail.com', '$2a$10$kfGaRsPooOWvkAa18m7fD.KMTG1wCV4QroEYLOIbweaN29jJPvPoC', 'pamitha02'),
(150, 'mamtaoshad@gmail.com', '$2a$10$F35B.fO3exFDfG6akGE1ZelBg4IbwD4kgJqvC3JDKuKxmxlS3BLzG', 'pamitha01'),
(151, 'jaya01@gmail.com', '$2a$10$gsDgM.87N/gV/HJvm7kDwuKv7U2eK1LDxmG92beXBsiWdJNc3jsfS', 'jaya01'),
(152, 'karunarathne123@gmail.com', '$2a$10$LAJA56q63cDMyyMNbvWOietiSps8zdSB2Lqvf2m0G6NnWKvxjHRaW', 'karunarathne01'),
(153, 'karu@gmail.com', '$2a$10$GNlUzY0G236w1J4.XTxFG.NEvGxMPTjcxWSD1EVIx45BobJhBjMyy', 'karu01'),
(156, 'diluSil01@gmail.com', '$2a$10$7zHCsUZb.xetxGe0qt4WNuKiHTKc18mcGegE4tLXBbf7NVrP3WYv6', 'diluSil01'),
(157, 'rishdi1234@gmail.com', '$2a$10$VLRNpbWFMzVfthU7dWv/pOIhfUPCFN.QExRDUnhIE1ivSqQgKhBty', 'rishdi1234'),
(158, 'jeram123@gmail.com', '$2a$10$FiQNVJTDDUj95BOavVl8C.O2JVDUdwHccYBa.XxERld8UlNatSDZm', 'Jeram01'),
(159, 'joeroot@gmail.com', '$2a$10$rd2NWNmu15wk8ZdjkElmJOf/DmciJVLVFV5Vps.KxqvX18ZdzDC9W', 'joeroot'),
(160, 'benstokes@gmail.com', '$2a$10$wW7N/RJSnlaI9Mx2kVLurenOjQNo6WajvDG/rRMVljhuCaiGTT1Da', 'benstokes'),
(161, 'josbuttler@gmail.com', '$2a$10$0fRg2UAjKZqaI2lnlV5sVOShqbwguvMif0x5YDYK0sdQ5DHUnPZhu', 'josbuttler'),
(162, 'jimmyanderson@gmail.com', '$2a$10$2UA9E3UHA9FsLnAw/9743OC2ktr5nRM3LZeurhTGsnAF0aY8igsLe', 'jimmyanderson'),
(163, 'jonnybairstow@gmail.com', '$2a$10$0V4Q6SN8H9KbD9KG.KMTnuLkEQL8l75F.WO1wO5V11x0qehkSmgYe', 'jonnybairstow'),
(164, 'admin02@gmail.com', '$2a$10$QV5U/teXH2cNsvLzbggA/eqL.DgiZP5hW1ApetN5aPXLkB9chIymK', 'admin02'),
(166, 'm8@gmail.com', '$2a$10$42LmKoseR94m7Zt.0qExtOO89QVmfjw3WseCUIf1VMHYF7wH4RAIm', 'admin05'),
(167, 'm0@gmail.com', '$2a$10$m9XZUeSyVLjwniceOPSXI.2aRn1AbAxgFU92gocirojQP2BToLYqq', 'admin09'),
(168, 'admin10@gmail.com', '$2a$10$C9bPUiHiM3f9H4cBX6TrQ.U2wg/oundAWr4YBwgz.4lIo1ZCotwae', 'admin10'),
(169, 'Kumudu@gmail.com', '$2a$10$1WMJf7XHGLWDCEhjkQU1YedTdzzlbLMXpXibNG1j4tJTNXPWEKoiO', 'admin03'),
(170, 'admin11@gmail.com', '$2a$10$FDrqJ2r.YK7B6Ysg4ehBwOaCjjnYZVfpbgWn/hIjS1/azzHDCEDPi', 'admin11'),
(171, 'm@gmail.com', '$2a$10$mZEZIEuMCki5H2ZEWJ.3G.vd0eabBgzowZLxByaOC9qDv8SNeGSX.', 'admin04'),
(172, 'helon123@gmail.com', '$2a$10$jLcn2WTdL1a4rwKSv4yWPeZhMTgb4fTGAn9BJl5iYj7MMQ43rhegi', 'helon01'),
(175, 'jony123@gmail.com', '$2a$10$JfAjEXc5p.Q5K33JzgZrDO40MMBKp3sESWmv2zJ7lwU8ev9m/9o2K', 'Jhoney'),
(176, 'malinga@gmail.com', '$2a$10$c49vGSTjWz1v/Of7jB2Une.hYA0XtphdHHNNrPUrBXXs4UKVnz9aS', 'Withanage'),
(178, 'shaleensarangaem@yahoo.com', '$2a$10$E0H/lTAfUSEVlVodmpx.FOfG8o.WD9eCTJQ2nCX4F1/EvBTmz/47u', 'Admin003'),
(179, 'pabasaraN123@gmail.com', '$2a$10$vRNH5PBx0QpCLDbEw/YqJOyJLmsAQ7AM5Mrj.fh.GnzRz.BV0awn.', 'pabasara'),
(181, 'naradaJ123@gmail.com', '$2a$10$uaSN3.Ar5eomL9G2mtj35.8OvBZNCeQwvfOpHyA5dMxY.sUEjlR/u', 'naradaJ'),
(182, 'kodikara123@gmail.com', '$2a$10$4Zjo0LW8DUiM5pBkTAAee.b7.5cWOz./VceM89dxn5vLkwcvMcqMG', 'kodikara01'),
(184, 'testing34@gmail.com', '$2a$10$WnCgCBy9CkV27pocazwys.nKacwHzLMANDYx.zmN2Bk/z/C8Jlhoe', 'testing34'),
(185, 'swarna123@gmail.com', '$2a$10$f/T5ud5xCM8puruoGCMXtebnD0yaCYHb1kWakci9SbnIjNoZd3sOy', 'swarnaM89'),
(191, 'chenukakuruppu@gmail.com', '$2a$10$U22e7UXuyOXu69zPmFz7tOt1XBAYpCvFb32tv12kegayIuIcu9gVO', 'chenuka'),
(192, 'user@gmail.comkg', '$2a$10$Tmbb2S017fjQ9pE9.s9bIe7whiSojs66sU.tD20u8KVOVyuyyUC9C', 'user'),
(194, 'coachtest@gmail.com', '$2a$10$B9n8qoszIuRlJICB30UKheKELzeTQM5/timxqlQnG1DwgGIyAh7fK', 'coachtest'),
(195, 'test1@gmail.com', '$2a$10$JBsKVLx8zYs.RuHq2pvx4ew43Ix2IwFjzmRr626d40eaRr8.vpL4G', 'dadad'),
(196, 'mt@gmail.com', '$2a$10$A3hslj0ojZnxGsq.LpePg.9MFTfMIq3g9a0FnjXkyqjbc/DbqAxKa', 'test008'),
(197, 'dananjaya1234@gmail8989.com', '$2a$10$LUNiJOWcdNk6It1UBtOePOlmKfovUYUTND4VwmxBLOgjHor1.WYd.', 'dananjaya123'),
(198, 'kuruppu@gmail.com', '$2a$10$Pz9s7TvMqtvwFqbEFsDz7e/LKRpHbbPZSBTsmxa1Afj12YCSvG8Y2', 'kuruppu'),
(199, 'user1@gmail.com', '$2a$10$JvGv5.u2NgFqSEnGYviAE.6jAMLatS/w/jvPBBYvc7U.9FeuJLPLK', 'user1'),
(200, 'nayana@gmail.com', '$2a$10$YSwtBb.OtFs1VitGqh4.J.BAQju7OXEhSEZMHX6Wd0BNR0akZTX5S', 'nayana'),
(201, 'kushan@gmail.com', '$2a$10$XWLR4a5KfG6p35U4ugIo0ONvS.E9ljX/TKhUW0ai/QVgPcKnPrWKi', 'kushan'),
(203, 'm9@gmail.com', '$2a$10$WvrqszpF7bI5QztErbONY..p5XzlCMdpXNTiweSOcTx/uZvbVzaRe', 'Test01'),
(204, 'test2@gmail.com', '$2a$10$ql4BMneC3u9cO1f2clmaJewTqBC5yl21PA/Hbc4/D3fKvWDNK3aQu', 'test2'),
(205, 'rashmika@gmail.com', '$2a$10$r4HlFWE94r7JyMH7s7K8vuQAANKVZtFu/OVKlgM4Jh.68yv44TZQC', 'rashmika'),
(206, 'Testkuruppu@gmail.com', '$2a$10$RfX7p85idzIdIYpqdEZpyOcDSrcblX8OV6T1Hk3IuzLCN6I3S5xOW', 'Test01Kuruppu'),
(207, 'testuser@gmail.com', '$2a$10$K37SnHoOCvzNrJ0sCJf68OHLNhftDvgHUouZ7W2DiTjt4d8JdIrSS', 'testuser'),
(208, 'testnew@gmail.com', '$2a$10$zkpi3rZT9olkClrH7Ll6RePNVm2yBbvOzswynhfp8uYWacQJq/1wq', 'testnew'),
(209, 'John@gmail.com', '$2a$10$c62pKMfykDwUtGQEiubFmeO5r/C9mU.ayjfNQQ/7f3U1MNTwcyGoS', 'John01'),
(210, 'nishan@gmail.com', '$2a$10$8w/YYUSHPdywxsaWgCNM6OHi5T784bwDkdDLpJVjTDThGkIKBNUGG', 'nishan'),
(211, 'kushan1@gmail.com', '$2a$10$.uG0z5exdAq0e1t.64N3VesyoNc72MCZvp5PYE5xNNQ1CCn9QtpTe', 'kushan1'),
(212, 'testinguser@gmail.com', '$2a$10$ZxlMdUHi1g/rpA8qo1kEGO3QzAyUdRzNddTmSrBSrZEMkiTzNrepa', 'testinguser'),
(213, 'umaya@gmail.com', '$2a$10$gHdy5WWsLiaRuqV2lljCKO6dJ2KqSZIzSmU2e.YE3nT6lhDn4hL6u', 'Umaya'),
(214, 'Umaya01@gmail.com', '$2a$10$fQADm0YdMu0ABuz5A4tugOW99/Zl6/UkH3KA8r9YihfLxVUYgpIFS', 'Umaya01'),
(216, 'Nethmi01@gmail.com', '$2a$10$FCzcyuD/8gVUN3BhCrKs7uIMKyNZTuKynBRSZyJ6UP1mhCVIzpVea', 'Nethmi01'),
(217, 'm4@gmail.com', '$2a$10$dklO20valpcq/Nk5Ug9A6O7ShaVMDn9gTFDJB/wvjxoPrtapzHJKi', 'Monday01'),
(218, 'yeran@gmail.com', '$2a$10$18cK1dGIgPbQmsf2RINEZuuApDuVVo/KKWMHegCsgtIkq1vCnOD3O', 'yeran01'),
(219, 'test123@gmail.com', '$2a$10$ZhDqsNu2cZI9uonDEN94T.0kFY4Ds1KJU4wdH481QV5Sua8UzIOVy', 'test1233'),
(224, 'lahiru1@gmail.com', '$2a$10$8KWv8TE/gbBRjneYdhJ7ce80Zk3G0bVs5ZtVZMesNDIC5RCW12o3S', 'lahiru'),
(225, 'chenu@gmail.com', '$2a$10$8R/TUY2WWBwWlphAd4YuLeIl9DvYr3Gq/0JkXqBFrbSTgJyR7oTre', 'chenuka123'),
(226, 'test03@gmail.com', '$2a$10$HCPoyoMcistBwz.bgi0m4.nWLwHok2dcYugLS7P2mWnBd4OWqaphy', 'Test03'),
(227, 'test04@gmail.com', '$2a$10$v1zn.ONswB6vw/ZNVFznquEZx/Yl76c5fN2IcvO1r0HZTloyCkiS2', 'Test02'),
(230, 'm6@gmail.com', '$2a$10$OSE.i18AqQK8.01G2cLJS.H6rmJtjdlWY2PjQklvwQOYf5IuHb12q', 'Umaya02'),
(231, 'yeran0105@gmail.com', '$2a$10$0iU8.YxgZwCkxzE9UvkRhuRSln7UMkfDNCq3Mh3k7dhWYrPcUW7n2', 'yeran0105'),
(232, 'itmaster@gmail.com', '$2a$10$gyqs6CsLz74/wbnJ87GE9u8LxB4Bhu6JLd2euO650fmRx8vKfAxxC', 'IT Master'),
(233, 'kbgpsameerakariyawasam@gmail.com', '$2a$10$YiO7/Jl5d3XSGYSAHR7W7uEs3o/MulM1leJ4EHCmwjcv0hsBpx2R.', 'ITMaster'),
(234, 'John01@gmail.com', '$2a$10$EWMkh.hpt6JhW3jEB/47GekrvqT8uuJ0tz33jd.ubzjfmbP4UjdkK', 'John02'),
(235, 'Henric@gmail.com', '$2a$10$DmrvHhXtPmIpWnxVgSSuHuMx5n4V2QF.6HGWYbZ51I7bDGrwPbfgu', 'Henric01'),
(237, 'Kumara@gmail.com', '$2a$10$j2WPVK7asiyvxq9cHB4BGuNQj4GCDIHsMloMrnZgLtFcl/ao2Ur0O', 'Kumara01'),
(238, 'Kumudu4@gmail.com', '$2a$10$ASLSxe.m0QgrCPBMKKUoR.nJQnjPQ4tsd67ufjVHo39NTTNIAeEBy', 'Silva01'),
(239, 'mamtha@gmail.com', '$2a$10$t8LVsf7sj9R8oGhLIq2SfuyTTgxcXjqFNxe5t0e2VVNU8Jhv1Bupe', 'tes01'),
(240, 'you@gmail.com', '$2a$10$yLUKxdnDXdJg4ehcrda47.z2uF3.HPYiarObtW9ZY3M01Vw6.06oy', 'bevin'),
(241, 'you1@gmail.com', '$2a$10$/yGBddTNrClxFLH6lfQmiuQw6H.1nSR2jylAVMjE52xN/Iwkf9yBW', 'minaga'),
(242, 'you2@gmail.com', '$2a$10$9464plZDMzGPRRQJolo9WOsETNED5aOKG4sZxJS.zYyK8N3HHBYF2', 'tenusha'),
(243, 'you3@gmail.com', '$2a$10$cmrKmUYj3g6pMuNr4sdisuAeV3Szvvgz5.ldp3MwIa46w1G41Bw4W', 'chamod'),
(244, 'you4@gmail.com', '$2a$10$wKuZ.1OuZVODQ/4Y1YbMSOJVMtBQgtIzO7CgZQHVkRDKkgMy164v.', 'tenura'),
(245, 'you5@gmail.com', '$2a$10$irQYr1YGBTMHIUFqqKGI/OiCqWCfJZq2tqsNuseGHonZwfXD3lREq', 'risinu'),
(246, 'you6@gmail.com', '$2a$10$iBS7LCgJWvjuaAq7Nhp8uec2353IBpqbCDx0pl1eeJTmNmx7.qIHu', 'nethsara'),
(247, 'you7@gmail.com', '$2a$10$SjFZzNFR0ytQG46XEYSRl./6pCb5oa1sk2eRQVp0hW6PdHv.VHL6O', 'punal'),
(248, 'm1@gmail.com', '$2a$10$k4FxNHz31qrEHYms9YqseuZGYbZ9sO1RCmV7CcBuRESRiXtStEe3q', 'student01'),
(249, 'yo@gmail.com', '$2a$10$aTji9JodnuQvyT/sTHt7IOlwwOgER50XmMTMBRIoY0oejajxF3eDq', 'Indika'),
(250, 'your@gmail.com', '$2a$10$V3UsGa4GuRms/1Ta7MQmOeIUqjvOq.mqLF94CRIDDX0MPFt3pgR5a', 'sidath'),
(251, 'n@gmail.com', '$2a$10$1yPR8Pf94iEohaEXKDPVoe4T1OqKyZ1p6CLo84EeXJKi95SzWJgty', 'Jackson'),
(252, 'maduwanthal264@gmail.com', '$2a$10$.KJODluqtAoH9bUkwe2tMuRPqc4/wSfLOH.8AY9VZsjHTfoN3yTOq', 'madu01'),
(253, 'indikachandana91@gmail.com', '$2a$10$w6PoutXVwqc.wV20WGJxO.A9Cz5Hj6QqPJmFDvXnqI/BA5ZZsj9vW', 'chandana01'),
(254, 'sidathpriyankara0920@gmail.com', '$2a$10$iS301G7Ayuu909SL7Jvo.ua6Ha8PfK0OHd3K88xJbP/g7Y5FlAdcu', 'priyankara01'),
(255, 'nuwan@gmail.com', '$2a$10$Nsbg5uzi2xwqQS3C4WCBnebWNzU8kjPi50i7R4OwnzAgnLf/fcXdK', 'nuwan01'),
(256, 'sirinuwanr@gmail.com', '$2a$10$6dwNo8GEkQkCTQLYSW5dOOHyF2ZlNK4OBYEXfu7mrNs5Yc7io5EGu', 'rusira01'),
(257, 'ameesha@gmail.com', '$2a$10$vCIRlNSNljdERhXPVOCG1.F6/Fs5mhspEE6RtX96xvIGfPyrIYZvK', 'ameesha01'),
(258, 'hiruk@gmail.com', '$2a$10$opXrXMHKDjn.vdbEzH1eIeWsNWjz0uc5dpHq5R60i4gFSK2uKRGfC', 'hiruk01'),
(259, 'ranindu@gmail.com', '$2a$10$9TB18a3wiThMEUlgDUFEZ.gnN7L4gRJGUb0KXsRsx00H5qzMiWTK2', 'ranindu01'),
(260, 'ravinu@gmail.com', '$2a$10$EgndvjFuHrm3cg2loILNOeF/Pvn7tQ2px7qUNnqEwKvCIpR.HYQ4C', 'Ravinu01'),
(261, 'hewa1@gmail.com', '$2a$10$jQXI20ET3WlOSbo5idQi6u.8cUXSIQNo5WaqQ5TSvAW0UEA9DNdBy', 'Hewa01'),
(262, 'paragoda@gmail.com', '$2a$10$qTI9p8Ad/LQe2NLt9DEDZe5fbYHl8U/UxqRQhHWdvgxd0MTR/EK/C', 'Paragoda01'),
(263, 'Walakada@gmail.com', '$2a$10$2PxNdZ/Sx.AOWOYpD09ELOVXC3j3pLwXPm8jqK.l0IBSfjZ0OJ4Xu', 'Walakada01'),
(264, 'Sakrage@gmail.com', '$2a$10$T0kdFPFnPqmsZqDaHc5gaeAWYrA1IS.TVjndDFayhdal3WiQi1sbW', 'Sakrage01'),
(265, 'Rathnayaka@gmail.com', '$2a$10$s3b8H7awfsRh1WM49ankqOnvd1rdq5TzytYXgksP/4cOU6o40K8YO', 'Rathnayaka01'),
(266, 'Wewalwala@gmail.com', '$2a$10$BszOvTGn00yWbojMeD9j6eff7BalGe66Ys2lQrBIncajAwiJf/Y5C', 'Wewalwala01'),
(267, 'Dulkith@gmail.com', '$2a$10$lYfY8S3TjBD2r0JtAhEfvepGTQqlR8rnnjGvB6MvDElt85UT2SU22', 'Dulkith01'),
(268, 'loku@gmail.com', '$2a$10$/W7U3FlRNiYernSBGFhxSuzCYQFLrBv1ul/kurrtmR48sZ5fZ7KfC', 'loku01'),
(269, 'Chamindu@gmail.com', '$2a$10$65Wz/FOBca3FA2nVj26TjucSdEbscnPGLdNZjXT.8sjZ9cKiNc79q', 'Chamindu01'),
(270, 'Wickrama@gmail.com', '$2a$10$PT7ekfuX/R.g15VbxGKe5u9KApSFiR3YSaMw2nHqouRrYzRnBn.ya', 'Wickrama01'),
(271, 'chamindu1@gmail.com', '$2a$10$APogB7DoTEH/L2bv4oerQuqh4YBDNqP/KOSrwHbuiG5pjr0eaZnCy', 'chamin01'),
(272, 'Waththage@gmail.com', '$2a$10$PExTM9Z7A/NJYg/YbeArO.dLhMTn8pE.hHj6AZt28lXNNqjZms.XW', 'Waththage01'),
(273, 'Onitha@gmail.com', '$2a$10$vx4zQeL4Zr/kq28RyRyHCOWCx7zym5djD78oE6G8UgdgMHBQfF4UK', 'Onitha01'),
(274, 'admin002@gmail.com', '$2a$10$JibHe0G13jl/nagLqiShlussLRX9c3zDSjJlwOwIs/vmKiwdthvBG', 'sanuka01'),
(275, 'Karagoda@gmail.com', '$2a$10$8.q.80Eb835.xAYhlE9r8.8tjFR4gsdc89pF91nztinAncTknSZaG', 'Karagoda01'),
(276, 'Merengngna@gmail.com', '$2a$10$QdKulZA2jUX2SNzAhIpvyuCe9i0.FiVBjgGQCgc/oHdbqiBKuv5Su', 'Merengngna01'),
(277, 'admin003@gmail.com', '$2a$10$7xmPkS.HI.hVqR6auFGReeEi8fouUD8B4L9UiAyX/WwzPRlO9GbCG', 'binuka01'),
(278, 'Thuyiya@gmail.com', '$2a$10$sHO0bpDJwx8/INbkJDhHHekVd98bhRmXOq1REdOe8LQ0/1SohSv/C', 'Thuyiya01'),
(279, 'Yuneth@gmail.com', '$2a$10$ZSlc3ke3uHoWzGFEyMulmeVZbm4SgKuasXyQzcuRrqQgCcIivVqEC', 'Yuneth01'),
(280, 'Binula@gmail.com', '$2a$10$gQq2g5lmz1z06bWsHwnUS.fWoz7tmkLHgYj7REV0MLFHUFGSCsueO', 'Binula01'),
(281, 'Minila@gmail.com', '$2a$10$n3kmYTq4GOEKLSp180gOFuuvZNzAS8/SJYoyh/Hr9YmmPzXcUPmHu', 'Minila01'),
(282, 'Kirinda@gmail.com', '$2a$10$p9Ha/7lzgTqo5k5W7PU6oOjIVQld6m5YgmBM6YI5SOxq56llVHnFS', 'Kirinda01'),
(283, 'kusal.mendis@example.com', '$2a$10$KUseIuf5wilL2eAZ4QkZguARVICgW8o1ts6MgKgAQSxXL6mejief6', 'kusal.mendis'),
(284, 'kusal.mendis1@example.com', '$2a$10$bjSCW5on9CTlGezvw/C6KuPI0SR/ZJNIfc497NV16E/hz92XOutg.', 'kusal.mendis1'),
(285, 'kusal.mendis2@example.com', '$2a$10$hsHnatWXJ2t294hPMKAukO5N7x22qVXbAdb3fJiwaj2rSvP5amMzC', 'kusal.mendis2'),
(286, 'official@gmail.com', '$2a$10$VAoP//slxcYIoUYemuya.u6LnC5JhGJ9Y0.EChLMkt/cT8Hl5r.rS', 'official123'),
(287, 'lisula@gmail.com', '$2a$10$fgLaSJXw.VD/UN/XD.DUYOgXFiaGzph8NsvEwN.CNIUX72tp2FfC.', 'lisula01'),
(288, 'buddika@gmail.com', '$2a$10$KxHtlhem/XmYiaLLAfjs8.EG5ACjW8TNGHz4xSo/RqUjuzJfU8A0e', 'buddika01'),
(289, 'bouncer@gmail.com', '$2a$10$IdS8siXv/CA6Xb.KhWqOBe6VGgec0qMleVYphLFSPb.EU.iF0ftau', 'bouncer01'),
(290, 'vithanagechanaka8@gmail.com', '$2a$10$1AjOkD8eCM4j5nBP4h51lei8S9T5/BHePD3BO/muDRPa95oYnHTie', 'chanaka01'),
(291, 'shaleensaranga1988@gmail.com', '$2a$10$qMCrNCfUjEjutInSHpL98uiQQTUZ.3YlTsC8mTjsz57d/MUndFa5m', 'Shaleen'),
(292, 'msandaruwan723@gmail.com', '$2a$10$8IM8qsncr34S5mOqdqTlW.6kA097l19lqDf237YLkRspDfP4C1.zW', 'Mahesh'),
(293, 'avindutheeksha@gmail.com', '$2a$10$WcRJUd0ez8HBldPQnePRrui1JP4y9lRHh0bPLSpY3zdQ8odZ8R0bi', 'Avindu'),
(294, 'chalindudulmina@gmail.com', '$2a$10$8Wuq5r4pPm2hwWsdJRHy0.ohmUFMraf3ytK/gd0ETzfiqfBs9pxSu', 'Chalindu'),
(295, 'dahamsathsara@gmail.com', '$2a$10$a4Iv7rHDv0YGkNkI1XMcP.rLpjo4z2vjNumS7NumFTMj17B9OL9Zu', 'Daham'),
(296, 'shevan@gmail.com', '$2a$10$FYdej9HkYkLIXZcn6rdntO00RgC4B/LZ0VpVydAftctwhyan1oeAO', 'Shevan');

-- --------------------------------------------------------

--
-- Table structure for table `user_privileges`
--

CREATE TABLE `user_privileges` (
  `user_id` bigint(20) NOT NULL,
  `privileges_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(5, 2),
(25, 3),
(26, 3),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(70, 1),
(72, 1),
(73, 3),
(74, 1),
(75, 1),
(76, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(96, 4),
(97, 2),
(107, 1),
(108, 2),
(109, 3),
(112, 2),
(113, 3),
(114, 2),
(115, 2),
(116, 2),
(119, 2),
(121, 2),
(129, 2),
(140, 2),
(148, 1),
(149, 2),
(150, 3),
(151, 2),
(152, 3),
(153, 3),
(156, 1),
(157, 2),
(158, 2),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 4),
(166, 4),
(167, 4),
(168, 4),
(169, 4),
(170, 4),
(171, 4),
(172, 2),
(175, 1),
(176, 3),
(178, 4),
(179, 1),
(181, 2),
(182, 3),
(184, 1),
(185, 3),
(191, 1),
(192, 1),
(194, 2),
(195, 3),
(196, 1),
(197, 1),
(198, 2),
(199, 2),
(200, 3),
(201, 3),
(203, 2),
(204, 1),
(205, 1),
(206, 1),
(207, 2),
(208, 1),
(209, 3),
(210, 1),
(211, 2),
(212, 1),
(213, 1),
(214, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(224, 2),
(225, 1),
(226, 1),
(227, 2),
(230, 3),
(231, 4),
(232, 4),
(233, 4),
(234, 2),
(235, 2),
(237, 2),
(238, 3),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 2),
(250, 2),
(251, 1),
(252, 2),
(253, 2),
(254, 2),
(255, 3),
(256, 3),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 3),
(287, 1),
(288, 1),
(289, 2),
(290, 1),
(291, 1),
(292, 2),
(293, 2),
(294, 1),
(295, 1),
(296, 1);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) NOT NULL,
  `date_time` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `date_time`, `title`, `url`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(1, '2024-10-29 14:42:20.000000', 'latestVideos', 'https://www.youtube.com/embed/yZtHxJmwa9k', NULL, NULL, NULL, NULL),
(2, '2024-10-29 14:42:29.000000', 'latestVideos', 'https://www.youtube.com/embed/yZtHxJmwa9k', NULL, NULL, NULL, NULL),
(3, '2024-10-29 14:42:42.000000', 'latestVideos', 'https://www.youtube.com/embed/yZtHxJmwa9k', NULL, NULL, NULL, NULL),
(4, '2024-10-29 14:42:51.000000', 'matchHighlights', 'https://www.youtube.com/embed/yZtHxJmwa9k', NULL, NULL, NULL, NULL),
(5, '2024-10-29 14:42:59.000000', 'matchHighlights', 'https://www.youtube.com/embed/yZtHxJmwa9k', NULL, NULL, NULL, NULL),
(6, '2024-10-29 14:43:07.000000', 'matchHighlights', 'https://www.youtube.com/embed/yZtHxJmwa9k', NULL, NULL, NULL, NULL),
(7, '2024-10-29 14:43:18.000000', 'playerHighlights', 'https://www.youtube.com/embed/yZtHxJmwa9k', NULL, NULL, NULL, NULL),
(8, '2024-10-29 14:43:27.000000', 'playerHighlights', 'https://www.youtube.com/embed/JpeF_ky3UzA', NULL, NULL, NULL, NULL),
(9, '2024-10-29 14:43:34.000000', 'matchHighlights', 'https://www.youtube.com/embed/JpeF_ky3UzA', NULL, NULL, NULL, NULL),
(10, '2024-10-29 14:43:42.000000', 'latestVideos', 'https://www.youtube.com/embed/JpeF_ky3UzA', NULL, NULL, NULL, NULL),
(11, '2024-10-29 14:43:49.000000', 'latestVideos', 'https://www.youtube.com/embed/dvzqBBSQLL0', NULL, NULL, NULL, NULL),
(12, '2024-10-29 14:43:59.000000', 'matchHighlights', 'https://www.youtube.com/embed/dvzqBBSQLL0', NULL, NULL, NULL, NULL),
(13, '2024-10-29 14:44:08.000000', 'playerHighlights', 'https://www.youtube.com/embed/dvzqBBSQLL0', NULL, NULL, NULL, NULL),
(14, '2024-10-29 14:44:19.000000', 'playerHighlights', 'https://www.youtube.com/embed/saPnnRR8jNs', NULL, NULL, NULL, NULL),
(15, '2024-10-29 14:44:27.000000', 'matchHighlights', 'https://www.youtube.com/embed/saPnnRR8jNs', NULL, NULL, NULL, NULL),
(16, '2024-10-29 14:44:36.000000', 'latestVideos', 'https://www.youtube.com/embed/saPnnRR8jNs', NULL, NULL, NULL, NULL),
(17, '2024-12-17 17:18:57.000000', 'latestVideos', 'https://www.youtube.com/embed/saPnnRR8jNs', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `FKgc8dtql9mkq268detxiox7fpm` (`user_id`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`coach_id`),
  ADD UNIQUE KEY `UK_cmp5j50stxr45fxhwhn0bgs3s` (`user_id`),
  ADD KEY `FKgsk7ba1g0u5oyr00p8o1gjij3` (`role_id`);

--
-- Indexes for table `coach_match`
--
ALTER TABLE `coach_match`
  ADD PRIMARY KEY (`match_id`,`coach_id`),
  ADD KEY `FK67mfg7y4rpi7ybd2su4ub55g4` (`coach_id`);

--
-- Indexes for table `coach_practise_session`
--
ALTER TABLE `coach_practise_session`
  ADD PRIMARY KEY (`prac_id`,`coach_id`),
  ADD KEY `FKjp5ocnbwhbf9k5nhyyrtlfsxx` (`coach_id`);

--
-- Indexes for table `historical_player_stats`
--
ALTER TABLE `historical_player_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbibhys25giavm0oyrefsobhu3` (`player_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKo6jy4sjmaie54womjbv4moe8o` (`news_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`match_id`),
  ADD KEY `FKmacf22p69sxba48mgiei7l3yq` (`team_id`),
  ADD KEY `FK6jx4ik9txqx1nkhcdoa3a7byy` (`captain_id`),
  ADD KEY `FKs9tx5p1np842r799tpjsj9vxn` (`vice_captain_id`);

--
-- Indexes for table `match_summary`
--
ALTER TABLE `match_summary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1mp97yjqdqkpvf88kgp130yy6` (`match_id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officials`
--
ALTER TABLE `officials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKb74o30sqej9a2vfegis1lcedi` (`user_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `UK_r2bdiqerficgwok3omt8rwlxb` (`user_id`),
  ADD UNIQUE KEY `UK_cgejvmfglubcpx62r0uwagutc` (`membership_id`),
  ADD KEY `FK34trhohxiak9rrbu1i7aikvm` (`role_id`);

--
-- Indexes for table `player_practise_sessions`
--
ALTER TABLE `player_practise_sessions`
  ADD PRIMARY KEY (`prac_id`,`player_id`),
  ADD KEY `FKedumpqbne9nyx8dd22ovtgrqu` (`player_id`);

--
-- Indexes for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlvrmlwr7tp1drukd95eesotya` (`match_id`),
  ADD KEY `FKjosriw9csh9ns7gcnsrdnik57` (`player_id`);

--
-- Indexes for table `practise_sessions`
--
ALTER TABLE `practise_sessions`
  ADD PRIMARY KEY (`prac_id`),
  ADD KEY `FKg95l34o66dm5ewy0we8cns997` (`team_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_m2tnonbcaquofx1ccy060ejyc` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `FKcesm40kqtewfv1sq3mqg8767s` (`captain_id`),
  ADD KEY `FKqqk0to2gtel0bwxam96vpxfri` (`vice_captain_id`);

--
-- Indexes for table `team_players`
--
ALTER TABLE `team_players`
  ADD PRIMARY KEY (`team_id`,`player_id`),
  ADD KEY `FKddxneji5ow8j3171oe6mc2gu0` (`player_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Indexes for table `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD PRIMARY KEY (`user_id`,`privileges_id`),
  ADD UNIQUE KEY `UK_cxfmaov6oxx6my139ddcnx0iv` (`privileges_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `coaches`
--
ALTER TABLE `coaches`
  MODIFY `coach_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `historical_player_stats`
--
ALTER TABLE `historical_player_stats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `match_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `match_summary`
--
ALTER TABLE `match_summary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `officials`
--
ALTER TABLE `officials`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `player_stats`
--
ALTER TABLE `player_stats`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1088;

--
-- AUTO_INCREMENT for table `practise_sessions`
--
ALTER TABLE `practise_sessions`
  MODIFY `prac_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `FKgc8dtql9mkq268detxiox7fpm` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `coaches`
--
ALTER TABLE `coaches`
  ADD CONSTRAINT `FKgsk7ba1g0u5oyr00p8o1gjij3` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKo2s6iuqyundkjflwh6ps8d0f0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `coach_match`
--
ALTER TABLE `coach_match`
  ADD CONSTRAINT `FK4nddgt8pun4mwsh5gaulj5yd7` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`),
  ADD CONSTRAINT `FK67mfg7y4rpi7ybd2su4ub55g4` FOREIGN KEY (`coach_id`) REFERENCES `coaches` (`coach_id`);

--
-- Constraints for table `coach_practise_session`
--
ALTER TABLE `coach_practise_session`
  ADD CONSTRAINT `FKjp5ocnbwhbf9k5nhyyrtlfsxx` FOREIGN KEY (`coach_id`) REFERENCES `coaches` (`coach_id`),
  ADD CONSTRAINT `FKnbbq3x72tnfpggk5dk9o6798u` FOREIGN KEY (`prac_id`) REFERENCES `practise_sessions` (`prac_id`);

--
-- Constraints for table `historical_player_stats`
--
ALTER TABLE `historical_player_stats`
  ADD CONSTRAINT `FKbibhys25giavm0oyrefsobhu3` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FKo6jy4sjmaie54womjbv4moe8o` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`);

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `FK6jx4ik9txqx1nkhcdoa3a7byy` FOREIGN KEY (`captain_id`) REFERENCES `players` (`player_id`),
  ADD CONSTRAINT `FKmacf22p69sxba48mgiei7l3yq` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`),
  ADD CONSTRAINT `FKs9tx5p1np842r799tpjsj9vxn` FOREIGN KEY (`vice_captain_id`) REFERENCES `players` (`player_id`);

--
-- Constraints for table `match_summary`
--
ALTER TABLE `match_summary`
  ADD CONSTRAINT `FK1mp97yjqdqkpvf88kgp130yy6` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`);

--
-- Constraints for table `officials`
--
ALTER TABLE `officials`
  ADD CONSTRAINT `FKb74o30sqej9a2vfegis1lcedi` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `FK34trhohxiak9rrbu1i7aikvm` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FK3rfv9832bif6rea5edetib8it` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKf53b51bukxlb1xp62way8ywyv` FOREIGN KEY (`membership_id`) REFERENCES `memberships` (`id`);

--
-- Constraints for table `player_practise_sessions`
--
ALTER TABLE `player_practise_sessions`
  ADD CONSTRAINT `FKedumpqbne9nyx8dd22ovtgrqu` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`),
  ADD CONSTRAINT `FKnfvgfolu0r2h6t27uw85fitid` FOREIGN KEY (`prac_id`) REFERENCES `practise_sessions` (`prac_id`);

--
-- Constraints for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD CONSTRAINT `FKjosriw9csh9ns7gcnsrdnik57` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`),
  ADD CONSTRAINT `FKlvrmlwr7tp1drukd95eesotya` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`);

--
-- Constraints for table `practise_sessions`
--
ALTER TABLE `practise_sessions`
  ADD CONSTRAINT `FKg95l34o66dm5ewy0we8cns997` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`);

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `FKcesm40kqtewfv1sq3mqg8767s` FOREIGN KEY (`captain_id`) REFERENCES `players` (`player_id`),
  ADD CONSTRAINT `FKqqk0to2gtel0bwxam96vpxfri` FOREIGN KEY (`vice_captain_id`) REFERENCES `players` (`player_id`);

--
-- Constraints for table `team_players`
--
ALTER TABLE `team_players`
  ADD CONSTRAINT `FK3bhsykltbdhsmmb61l2ml12h` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`),
  ADD CONSTRAINT `FKddxneji5ow8j3171oe6mc2gu0` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`);

--
-- Constraints for table `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD CONSTRAINT `FK4pjq82mghfm4ec8innfnfetrm` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKmiaayoix7q1o948j186oqvyy3` FOREIGN KEY (`privileges_id`) REFERENCES `privileges` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
