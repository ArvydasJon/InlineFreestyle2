-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 09:38 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tricks`
--

CREATE TABLE `tricks` (
  `id` int(11) NOT NULL,
  `trick_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trick_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trick_level` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trick_score` int(11) NOT NULL,
  `official_score` tinyint(1) NOT NULL,
  `trick_name2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tricks`
--

INSERT INTO `tricks` (`id`, `trick_name`, `trick_type`, `trick_level`, `trick_score`, `official_score`, `trick_name2`, `link`) VALUES
(1, 'Butterfly', 'Others', 'A', 54, 0, '', 'https://www.youtube.com/watch?v=bGD3XNWGLso'),
(2, 'Toe Reverse Eagle', 'Others', 'B', 47, 0, '', 'https://www.youtube.com/watch?v=fVWPldGByyE'),
(3, 'Cobra Back', 'Others', 'B', 42, 0, '', 'https://www.youtube.com/watch?v=rFZh55-LYww'),
(4, 'Cobra', 'Others', 'C', 39, 0, '', 'https://www.youtube.com/watch?v=Tf_qq0z9lIc'),
(5, 'Reverse Eagle', 'Others', 'C', 38, 0, '', 'https://www.youtube.com/watch?v=ys22ecLV1AE&list=PLXMDg5OVWYdGXhZ5UGixz_JObkyRQTTh5&index=23'),
(6, 'Toe Wheeling Eagle', 'Others', 'C', 36, 0, '', 'https://www.youtube.com/watch?v=hjBXpw9rO8E'),
(7, 'Z-Eagle', 'Others', 'C', 32, 0, '', 'https://www.youtube.com/watch?v=BIQv2fTWnQY&list=PLXMDg5OVWYdGXhZ5UGixz_JObkyRQTTh5&index=18'),
(8, 'Special', 'Others', 'D', 30, 0, '', 'https://www.youtube.com/watch?v=9NNxZycI2T0&list=PLXMDg5OVWYdGXhZ5UGixz_JObkyRQTTh5&index=21'),
(9, 'Brush', 'Others', 'D', 29, 0, '', 'https://www.youtube.com/watch?v=tfSuqGskObw&list=PLXMDg5OVWYdGXhZ5UGixz_JObkyRQTTh5&index=9'),
(10, 'Heel Toe Special', 'Others', 'D', 28, 0, '', 'https://www.youtube.com/watch?v=ibMVBfgFsVg&list=PLXMDg5OVWYdGXhZ5UGixz_JObkyRQTTh5&index=15'),
(11, 'Eagle', 'Others', 'D', 27, 0, 'Sidesurf', 'https://www.youtube.com/watch?v=5tpjV_jfJo4&list=PLXMDg5OVWYdGXhZ5UGixz_JObkyRQTTh5&index=17'),
(12, 'Eagle Cross', 'Others', 'D', 27, 0, '', 'https://www.youtube.com/watch?v=NsNfCxplJBI'),
(13, 'Eight', 'Others', 'E', 20, 0, '', 'https://www.youtube.com/watch?v=XkzhSW70Cxk'),
(14, 'Eight Back', 'Others', 'E', 19, 0, '', 'https://www.youtube.com/watch?v=_erUHhy84j0'),
(15, 'Crazy Legs', 'Others', 'E', 18, 0, '', 'https://www.youtube.com/watch?v=Z4Y9yx8XW_w'),
(16, 'Stroll ', 'Others', 'E', 15, 0, 'Double Crazy', 'https://www.youtube.com/watch?v=STm1g4XDq-8'),
(17, ' Back Stroll', 'Others', 'E', 15, 0, '', 'https://www.youtube.com/watch?v=Z69abPKe0XY'),
(18, 'Crazy', 'Others', 'E', 14, 0, '', 'https://www.youtube.com/watch?v=KpTvzkwxGPs&t=1s'),
(19, 'Double CrazySeries', 'Others', 'E', 14, 0, '', 'https://www.youtube.com/watch?v=fthGo-Vyluw'),
(20, 'Chap Chap', 'Others', 'E', 13, 0, '', 'https://www.youtube.com/watch?v=nA97BZB0APQ'),
(21, 'X', 'Others', 'E', 13, 0, '', 'https://www.youtube.com/watch?v=Xa2-duHfErA'),
(22, 'Nelson', 'Others', 'E', 12, 0, '', 'https://www.youtube.com/watch?v=-399docQ8qU'),
(23, 'Nelson Back', 'Others', 'E', 12, 0, '', 'https://www.youtube.com/watch?v=YCQ2-2A3nok'),
(24, 'Toe Christie Back', 'Sittings', 'A', 60, 0, '', 'https://www.youtube.com/watch?v=-UV3xIeGqZg'),
(25, 'Toe Christie', 'Sittings', 'A', 59, 0, '', 'https://www.youtube.com/watch?v=yioZcT3SFaM'),
(26, 'Toe Footgun Back', 'Sittings', 'A', 54, 0, '', 'https://www.youtube.com/watch?v=CI-sgE-8RzI'),
(27, 'Tea Pot', 'Sittings', 'A', 51, 0, '', 'https://www.youtube.com/watch?v=lp5Zi_aPEDg&t=57s'),
(28, 'Superman', 'Sittings', 'A', 51, 0, '', 'https://www.youtube.com/watch?v=Kscot9T75Q0'),
(29, 'Toe Footgun', 'Sittings', 'B', 50, 0, 'Corvo', 'https://www.youtube.com/watch?v=3s_GExp2F-E'),
(30, 'Christie Back', 'Sittings', 'B', 47, 0, '', 'https://www.youtube.com/watch?v=hfY5cHQ5fi8'),
(31, 'Christie', 'Sittings', 'C', 40, 0, '', 'https://www.youtube.com/watch?v=uzY16OFedtM'),
(32, 'Footgun Back', 'Sittings', 'C', 39, 0, '', 'https://www.youtube.com/watch?v=WQ1afjHr6II'),
(33, 'Footgun', 'Sittings', 'C', 32, 0, '', 'https://www.youtube.com/watch?v=CHjjDYtNvEw'),
(34, 'Cross Sitting Heel Toe', 'Sittings', 'C', 31, 0, 'Sitting Cobra', 'https://www.youtube.com/watch?v=IpGMGhmmU5o'),
(35, 'Sitting Heel-Toe Back', 'Sittings', 'D', 28, 0, '', 'https://www.youtube.com/watch?v=n1P51a_ORGs'),
(36, 'Sitting Heel-Toe', 'Sittings', 'D', 27, 0, 'Full Remi', 'https://www.youtube.com/watch?v=0v_AGTx9IgE'),
(37, 'Small Car', 'Sittings', 'E', 20, 0, '', 'https://www.youtube.com/watch?v=PkLOQBQWRR8'),
(38, 'Sitting Fish', 'Sittings', 'E', 11, 0, '', 'https://www.youtube.com/watch?v=TwHJLAkS6u8'),
(39, 'Toe Wiper', 'Jumps', 'A', 59, 0, '', 'https://www.youtube.com/watch?v=gz8Ree2p2VU'),
(40, 'Kazatchok Back', 'Jumps', 'B', 48, 0, '', 'https://www.youtube.com/watch?v=G8hJmvWbHDo'),
(41, 'Kazatchok', 'Jumps', 'C', 39, 0, '', 'https://www.youtube.com/watch?v=i7rQVwqFy_E'),
(42, 'Wiper', 'Jumps', 'C', 34, 0, '', 'https://www.youtube.com/watch?v=KeQmhd1BbEw'),
(43, 'Special Jump', 'Jumps', 'C', 31, 0, 'Toe X Jump', 'https://www.youtube.com/watch?v=Pspxe4n_ICE'),
(44, 'Footspin', 'Jumps', 'D', 30, 0, '', 'https://www.youtube.com/watch?v=_7_SF8Q13Pc'),
(45, 'XJump', 'Jumps', 'E', 18, 0, '', 'https://www.youtube.com/watch?v=VgjSG_p8ZjM'),
(46, 'Crab Cross', 'Jumps', 'E', 17, 0, '', 'https://www.youtube.com/watch?v=TUeHfekq_0Q'),
(47, 'Crab', 'Jumps', 'E', 13, 0, '', 'https://www.youtube.com/watch?v=_Qar-KA6abQ'),
(48, 'Wheeling Special', 'Wheelings', 'A', 52, 0, 'One toe special', 'https://www.youtube.com/watch?v=umjjxj2GA9E'),
(49, 'Toe Fake Shift', 'Wheelings', 'A', 52, 0, 'Fake', 'https://www.youtube.com/watch?v=Bln_0ZoucSo&t=84s'),
(50, 'French Shift', 'Wheelings', 'A', 52, 0, '', 'https://www.youtube.com/watch?v=uuN0KYlGG0g'),
(51, 'Flipping 360 Shift', 'Wheelings', 'B', 50, 0, '', 'https://www.youtube.com/watch?v=XA9iRT0xf60'),
(52, 'Wheeling Fishleg', 'Wheelings', 'B', 50, 0, '', 'https://www.youtube.com/watch?v=jKWWqSlXY1w'),
(53, 'Daynight', 'Wheelings', 'B', 50, 0, '', 'https://www.youtube.com/watch?v=IY0Hggxw4NU'),
(54, 'Sewing Machine', 'Wheelings', 'B', 41, 0, '', 'https://www.youtube.com/watch?v=U7C-bHw51nE'),
(55, 'Wheeling Back', 'Wheelings', 'C', 40, 0, '', 'https://www.youtube.com/watch?v=syhf_-C_NMY&t=104s'),
(56, 'Flat Shift', 'Wheelings', 'C', 36, 0, '', 'https://www.youtube.com/watch?v=aZnvHJjSKdk'),
(57, 'Flat Fake', 'Wheelings', 'C', 36, 0, '', 'https://www.youtube.com/watch?v=Vk5wN2-GyRI'),
(58, 'Wheeling Forward', 'Wheelings', 'C', 35, 0, '', 'https://www.youtube.com/watch?v=CS6eZoorYpk&t=35s'),
(59, 'Heel-Toe Back', 'Wheelings', 'D', 26, 0, '', 'https://www.youtube.com/watch?v=4fzXFJX5Gk0'),
(60, 'Fan Volt', 'Wheelings', 'D', 24, 0, '', 'https://www.youtube.com/watch?v=0faISWl6FwM'),
(61, 'Sweepers', 'Wheelings', 'D', 24, 0, '', 'https://www.youtube.com/watch?v=zpUvIAOFsq0'),
(62, 'One Foot Back', 'Wheelings', 'E', 19, 0, '', 'https://www.youtube.com/watch?v=DIX0jYtIbis'),
(63, 'One Foot', 'Wheelings', 'E', 13, 0, '', 'https://www.youtube.com/watch?v=2LyFlrcKwYQ'),
(64, 'Cross', 'Wheelings', 'E', 11, 0, 'Criss Cross', 'https://www.youtube.com/watch?v=Eehh8qnzFgc'),
(65, 'Snake', 'Wheelings', 'E', 11, 0, '', 'https://www.youtube.com/watch?v=4Hd4z-k4saA'),
(66, 'Fish Series', 'Wheelings', 'E', 11, 0, '', 'https://www.youtube.com/watch?v=9ZIGmWcbJ0A'),
(67, 'Toe Footgun Spin', 'Spins', 'A', 60, 0, 'Sitting 7', 'https://www.youtube.com/watch?v=ZHd6Ccr7YW8'),
(68, 'Internal 1 Cone 7 Back', 'Spins', 'A', 55, 0, '', 'https://www.youtube.com/watch?v=mAkaYjGueOg'),
(69, 'External 1 Cone 7 Back', 'Spins', 'A', 55, 0, '', 'https://www.youtube.com/watch?v=GfD2KhEqt_4'),
(70, 'Internal Backward 7', 'Spins', 'A', 54, 0, '', 'https://www.youtube.com/watch?v=-_7RKDLUrGA'),
(71, 'External Backward 7', 'Spins', 'A', 54, 0, '', 'https://www.youtube.com/watch?v=zzyKg55SWPA'),
(72, 'Internal 7', 'Spins', 'A', 52, 0, '', 'https://www.youtube.com/watch?v=slnqvzQI2pE&t=45s'),
(73, 'External 7', 'Spins', 'A', 52, 0, '', 'https://www.youtube.com/watch?v=QrtsU4ZYZ2w'),
(74, 'Internal 1 Cone 7', 'Spins', 'B', 50, 0, '', 'https://www.youtube.com/watch?v=K9ppMxFlnQE'),
(75, 'External1 Cone 7', 'Spins', 'B', 50, 0, '', 'https://www.youtube.com/watch?v=OOVBZmiEmWE'),
(76, 'Cross Korean Volt Back', 'Spins', 'C', 39, 0, 'Swan', 'https://www.youtube.com/watch?v=prgilJVVXEs'),
(77, 'One Cone Cross Korean Volt', 'Spins', 'C', 38, 0, '', 'https://www.youtube.com/watch?v=6hLAGK2G0LI'),
(78, 'Cross Korean Volt', 'Spins', 'C', 37, 0, '', 'https://www.youtube.com/watch?v=bUqz5TaceSw&t=14s'),
(79, 'Two Wheels Spinning', 'Spins', 'C', 35, 0, '', 'https://www.youtube.com/watch?v=1qUA2Xs-x90'),
(80, 'Reverse J-Turn', 'Spins', 'C', 33, 0, '', 'https://www.youtube.com/watch?v=jh_-R4UiQrE'),
(81, 'J-Turn', 'Spins', 'D', 29, 0, '', 'https://www.youtube.com/watch?v=Pdf1qMCeCF0'),
(82, '2 Feet Spin', 'Spins', 'D', 28, 0, '', 'https://www.youtube.com/watch?v=1XMDqihBciw'),
(83, 'Total Cross', 'Spins', 'D', 27, 0, '', 'https://www.youtube.com/watch?v=ToxJeeiDnRU'),
(84, 'Italian', 'Spins', 'E', 19, 0, '', 'https://www.youtube.com/watch?v=ltIzXZubAk8'),
(85, 'Volt', 'Spins', 'E', 19, 0, '', 'https://www.youtube.com/watch?v=wcBKq1Awjto'),
(86, 'Crazy Sun', 'Spins', 'E', 16, 0, '', 'https://www.youtube.com/watch?v=KDrO1qw3oxQ'),
(87, 'Mexican', 'Spins', 'E', 16, 0, '', 'https://www.youtube.com/watch?v=tApwVmZUnJ8'),
(88, 'Sun', 'Spins', 'E', 14, 0, '', 'https://www.youtube.com/watch?v=Ke7RY3LmfNY'),
(89, 'Mabrouk', 'Spins', 'E', 14, 0, '', 'https://www.youtube.com/watch?v=-V7DKaxjM5M'),
(90, 'Back One Foot Spin', 'Spins', 'E', 30, 0, '', 'https://www.youtube.com/watch?v=YQsv1xTINRw'),
(91, 'test223', 'dddddd', 'A', 45, 0, 'test2', 'adsdasa'),
(96, 'Test555', 'asasa', 'A', 78, 1, 'Test777', 'dDADAS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tricks`
--
ALTER TABLE `tricks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tricks`
--
ALTER TABLE `tricks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
