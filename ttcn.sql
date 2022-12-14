-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2022 at 08:14 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ttcn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dangkyhp`
--

CREATE TABLE `dangkyhp` (
  `id` int(11) NOT NULL,
  `msv` int(15) NOT NULL,
  `mahocphan` varchar(255) CHARACTER SET latin1 NOT NULL,
  `trangthai` int(1) NOT NULL DEFAULT '0',
  `idduyet` int(1) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `donchuyendoi` int(1) NOT NULL DEFAULT '0',
  `lopcd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diemsinhvien`
--

CREATE TABLE `diemsinhvien` (
  `id` int(11) NOT NULL,
  `msv` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `mahocphan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diem` int(11) NOT NULL,
  `diemchu` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `danhgia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diemsinhvien`
--

INSERT INTO `diemsinhvien` (`id`, `msv`, `mahocphan`, `diem`, `diemchu`, `danhgia`, `time`) VALUES
(127, '18574802010202', 'NAP10003', 8, 'B+', 'DAT', '2022-11-01 08:19:50'),
(128, '18574802010202', 'INF30033', 6, 'C', 'DAT', '2022-11-01 08:19:50'),
(129, '18574802010202', 'INF30004', 6, 'C', 'DAT', '2022-11-01 08:19:50'),
(130, '18574802010202', 'ENG10001', 5, 'D', 'DAT', '2022-11-01 08:19:50'),
(131, '18574802010202', 'POL10002', 7, 'C+', 'DAT', '2022-11-01 08:19:50'),
(132, '18574802010202', 'INF30012', 0, 'F', 'HOCLAI', '2022-11-01 08:19:50'),
(133, '18574802010202', 'INF30023', 8, 'B', 'DAT', '2022-11-01 08:19:50'),
(134, '18574802010202', 'INF20007', 5, 'D+', 'DAT', '2022-11-01 08:19:50'),
(135, '18574802010202', 'INF30001', 6, 'C', 'DAT', '2022-11-01 08:19:50'),
(136, '18574802010202', 'INF30002', 9, 'A', 'DAT', '2022-11-01 08:19:50'),
(137, '18574802010202', 'ELE20001', 8, 'B+', 'DAT', '2022-11-01 08:19:50'),
(138, '18574802010202', 'MAT20002', 6, 'C', 'DAT', '2022-11-01 08:19:50'),
(139, '18574802010202', 'PHY20001', 5, 'D+', 'DAT', '2022-11-01 08:19:50'),
(140, '18574802010202', 'INF30034', 9, 'A', 'DAT', '2022-11-01 08:19:50'),
(141, '18574802010202', 'INF30019', 7, 'C+', 'DAT', '2022-11-01 08:19:50'),
(142, '18574802010202', 'ELE20002', 7, 'C+', 'DAT', '2022-11-01 08:19:50'),
(143, '18574802010202', 'INF20004', 7, 'C+', 'DAT', '2022-11-01 08:19:50'),
(144, '18574802010202', 'BUA20006', 5, 'D', 'DAT', '2022-11-01 08:19:50'),
(145, '18574802010202', 'INF30029', 7, 'B', 'DAT', '2022-11-01 08:19:50'),
(146, '18574802010202', 'MAT20009', 5, 'D', 'DAT', '2022-11-01 08:19:50'),
(147, '18574802010202', 'INF30006', 8, 'B', 'DAT', '2022-11-01 08:19:50'),
(148, '18574802010202', 'NAP10002', 5, 'D+', 'DAT', '2022-11-01 08:19:50'),
(149, '18574802010202', 'CON20001', 4, 'D', 'DAT', '2022-11-01 08:19:50'),
(150, '18574802010202', 'INF30025', 9, 'A', 'DAT', '2022-11-01 08:19:50'),
(151, '18574802010202', 'POL10003', 0, 'F', 'HOCLAI', '2022-11-01 08:19:50'),
(152, '18574802010202', 'POL10001', 6, 'C', 'DAT', '2022-11-01 08:19:50'),
(153, '18574802010202', 'MAT20006', 5, 'D+', 'DAT', '2022-11-01 08:19:50'),
(154, '18574802010202', 'ENG10002', 5, 'D+', 'DAT', '2022-11-01 08:19:50'),
(155, '18574802010202', 'INF30013', 9, 'A', 'DAT', '2022-11-01 08:19:50'),
(156, '18574802010202', 'INF30015', 6, 'C', 'DAT', '2022-11-01 08:19:50'),
(157, '18574802010202', 'INF30027', 9, 'A', 'DAT', '2022-11-01 08:19:50'),
(158, '18574802010202', 'INF20008', 5, 'D+', 'DAT', '2022-11-01 08:19:50'),
(159, '18574802010202', 'INF30036', 8, 'B', 'DAT', '2022-11-01 08:19:50'),
(160, '18574802010202', 'NAP10001', 5, 'D+', 'DAT', '2022-11-01 08:19:50'),
(161, '18574802010202', 'SPO10001', 6, 'C', 'DAT', '2022-11-01 08:19:50'),
(162, '18574802010202', 'LAW20004', 4, 'D', 'DAT', '2022-11-01 08:19:50'),
(163, '18574802010202', 'INF30017', 7, 'C+', 'DAT', '2022-11-01 08:19:50'),
(164, '18574802010202', 'INF20009', 9, 'A', 'DAT', '2022-11-01 08:19:50'),
(165, '18574802010202', 'CHE20002', 5, 'D+', 'DAT', '2022-11-01 08:19:50'),
(166, '18574802010202', 'ELE20003', 7, 'C+', 'DAT', '2022-11-01 08:19:50'),
(167, '18574802010202', 'INF30005', 7, 'C+', 'DAT', '2022-11-01 08:19:50'),
(168, '18574802010202', 'INF30007', 8, 'B', 'DAT', '2022-11-01 08:19:50'),
(169, '18574802010218', 'NAP10003', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(170, '18574802010218', 'INF30033', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(171, '18574802010218', 'INF30004', 7, 'B', 'DAT', '2022-11-01 21:52:44'),
(172, '18574802010218', 'ENG10001', 8, 'B', 'DAT', '2022-11-01 21:52:44'),
(173, '18574802010218', 'POL10002', 8, 'B', 'DAT', '2022-11-01 21:52:44'),
(174, '18574802010218', 'INF30012', 5, 'D+', 'DAT', '2022-11-01 21:52:44'),
(175, '18574802010218', 'INF30023', 8, 'B', 'DAT', '2022-11-01 21:52:44'),
(176, '18574802010218', 'INF20007', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(177, '18574802010218', 'INF30001', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(178, '18574802010218', 'INF30002', 7, 'B', 'DAT', '2022-11-01 21:52:44'),
(179, '18574802010218', 'ELE20001', 8, 'B+', 'DAT', '2022-11-01 21:52:44'),
(180, '18574802010218', 'MAT20002', 5, 'D+', 'DAT', '2022-11-01 21:52:44'),
(181, '18574802010218', 'PHY20001', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(182, '18574802010218', 'INF30034', 8, 'B+', 'DAT', '2022-11-01 21:52:44'),
(183, '18574802010218', 'INF30019', 7, 'B', 'DAT', '2022-11-01 21:52:44'),
(184, '18574802010218', 'ELE20002', 9, 'A', 'DAT', '2022-11-01 21:52:44'),
(185, '18574802010218', 'INF20004', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(186, '18574802010218', 'BUA20006', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(187, '18574802010218', 'INF30029', 8, 'B', 'DAT', '2022-11-01 21:52:44'),
(188, '18574802010218', 'MAT20009', 5, 'D+', 'DAT', '2022-11-01 21:52:44'),
(189, '18574802010218', 'INF30006', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(190, '18574802010218', 'NAP10002', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(191, '18574802010218', 'CON20001', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(192, '18574802010218', 'INF30025', 8, 'B', 'DAT', '2022-11-01 21:52:44'),
(193, '18574802010218', 'POL10003', 8, 'B', 'DAT', '2022-11-01 21:52:44'),
(194, '18574802010218', 'POL10001', 7, 'C+', 'DAT', '2022-11-01 21:52:44'),
(195, '18574802010218', 'MAT20006', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(196, '18574802010218', 'ENG10002', 8, 'B', 'DAT', '2022-11-01 21:52:44'),
(197, '18574802010218', 'INF30013', 9, 'A', 'DAT', '2022-11-01 21:52:44'),
(198, '18574802010218', 'INF30015', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(199, '18574802010218', 'INF30027', 8, 'B+', 'DAT', '2022-11-01 21:52:44'),
(200, '18574802010218', 'INF20008', 5, 'D+', 'DAT', '2022-11-01 21:52:44'),
(201, '18574802010218', 'INF30036', 8, 'B+', 'DAT', '2022-11-01 21:52:44'),
(202, '18574802010218', 'NAP10001', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(203, '18574802010218', 'SPO10001', 6, 'C', 'DAT', '2022-11-01 21:52:44'),
(204, '18574802010218', 'LAW20004', 7, 'B', 'DAT', '2022-11-01 21:52:44'),
(205, '18574802010218', 'INF30017', 8, 'B', 'DAT', '2022-11-01 21:52:44'),
(206, '18574802010218', 'INF20009', 7, 'B', 'DAT', '2022-11-01 21:52:44'),
(207, '18574802010218', 'CHE20002', 5, 'D+', 'DAT', '2022-11-01 21:52:44'),
(208, '18574802010218', 'ELE20003', 9, 'A', 'DAT', '2022-11-01 21:52:44'),
(209, '18574802010218', 'INF30005', 5, 'D+', 'DAT', '2022-11-01 21:52:44'),
(210, '18574802010218', 'INF30007', 5, 'D+', 'DAT', '2022-11-01 21:52:44'),
(211, '18574802010022', 'NAP10003', 6, 'C', 'DAT', '2022-11-01 21:53:04'),
(212, '18574802010022', 'INF30033', 6, 'C', 'DAT', '2022-11-01 21:53:04'),
(213, '18574802010022', 'INF30004', 5, 'D+', 'DAT', '2022-11-01 21:53:04'),
(214, '18574802010022', 'ENG10001', 6, 'C', 'DAT', '2022-11-01 21:53:04'),
(215, '18574802010022', 'POL10002', 6, 'C', 'DAT', '2022-11-01 21:53:04'),
(216, '18574802010022', 'INF30012', 4, 'D', 'DAT', '2022-11-01 21:53:04'),
(217, '18574802010022', 'INF30023', 4, 'D', 'DAT', '2022-11-01 21:53:04'),
(218, '18574802010022', 'INF20007', 6, 'C', 'DAT', '2022-11-01 21:53:04'),
(219, '18574802010022', 'INF30001', 6, 'C', 'DAT', '2022-11-01 21:53:04'),
(220, '18574802010022', 'INF30002', 7, 'B', 'DAT', '2022-11-01 21:53:04'),
(221, '18574802010022', 'ELE20001', 8, 'B', 'DAT', '2022-11-01 21:53:04'),
(222, '18574802010022', 'MAT20002', 5, 'D', 'DAT', '2022-11-01 21:53:04'),
(223, '18574802010022', 'PHY20001', 5, 'D+', 'DAT', '2022-11-01 21:53:04'),
(224, '18574802010022', 'INF30034', 8, 'B+', 'DAT', '2022-11-01 21:53:04'),
(225, '18574802010022', 'INF30019', 5, 'D', 'DAT', '2022-11-01 21:53:04'),
(226, '18574802010022', 'ELE20002', 8, 'B+', 'DAT', '2022-11-01 21:53:04'),
(227, '18574802010022', 'INF20004', 5, 'D+', 'DAT', '2022-11-01 21:53:04'),
(228, '18574802010022', 'BUA20006', 6, 'C', 'DAT', '2022-11-01 21:53:04'),
(229, '18574802010022', 'INF30029', 0, 'F', 'HOCLAI', '2022-11-01 21:53:04'),
(230, '18574802010022', 'MAT20009', 5, 'D+', 'DAT', '2022-11-01 21:53:04'),
(231, '18575802010033', 'NAP10003', 6, 'C', 'DAT', '2022-11-02 07:51:31'),
(232, '18575802010033', 'CON30006', 8, 'B', 'DAT', '2022-11-02 07:51:31'),
(233, '18575802010033', 'BUA20004', 9, 'A', 'DAT', '2022-11-02 07:51:31'),
(234, '18575802010033', 'CON30015', 8, 'B', 'DAT', '2022-11-02 07:51:31'),
(235, '18575802010033', 'ENG10001', 4, 'D', 'DAT', '2022-11-02 07:51:31'),
(236, '18575802010033', 'POL10002', 6, 'C', 'DAT', '2022-11-02 07:51:31'),
(237, '18575802010033', 'CON30029', 7, 'B', 'DAT', '2022-11-02 07:51:31'),
(238, '18575802010033', 'ELE20001', 8, 'B+', 'DAT', '2022-11-02 07:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `id` int(11) NOT NULL,
  `mahocphan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenhocphan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sotinchi` int(11) NOT NULL,
  `sotietlythuyet` int(11) NOT NULL,
  `sotietthuchanh` int(11) NOT NULL,
  `thaoluan` int(11) NOT NULL,
  `hocky` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`id`, `mahocphan`, `tenhocphan`, `sotinchi`, `sotietlythuyet`, `sotietthuchanh`, `thaoluan`, `hocky`, `time`) VALUES
(78, 'INF30038', 'C??c gi???i thu???t l???p tr??nh n??ng cao', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(79, 'INF30039', 'Ch????ng tr??nh d???ch', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(80, 'INF30041', '????nh gi?? ????? ph???c t???p thu???t to??n', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(81, 'INF30052', 'L?? thuy???t t???i ??u', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(82, 'INF30059', 'Th????ng m???i ??i???n t???', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(83, 'INF30060', 'X??? l?? ng??n ng??? t??? nhi??n', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(84, 'INF30040', 'C?? s??? d??? li???u n??ng cao', 3, 35, 10, 0, 9, '2022-11-01 07:32:28'),
(85, 'INF30043', 'H??? th???ng th??ng tin qu???n l??', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(86, 'INF30045', 'Khai ph?? d??? li???u', 3, 35, 10, 0, 9, '2022-11-01 07:32:28'),
(87, 'INF30046', 'Ki???n tr??c ph???n m???m', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(88, 'INF30054', 'M??y t??m ki???m', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(89, 'INF30056', 'Ph??t tri???n ???ng d???ng d???a tr??n m?? ngu???n m???', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(90, 'INF30044', 'H???c m??y', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(91, 'INF30047', 'L???p tr??nh .NET', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(92, 'INF30048', 'L???p tr??nh cho Robot', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(93, 'INF30049', 'L???p tr??nh cho thi???t b??? di ?????ng', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(94, 'INF30053', 'M???ng neural', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(95, 'INF30061', 'X??? l?? ti???ng n??i', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(96, 'INF30037', 'An ninh m???ng', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(97, 'INF30042', 'H??? ??i???u h??nh m???ng', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(98, 'INF30050', 'L???p tr??nh Java n??ng cao', 3, 30, 15, 0, 9, '2022-11-01 07:32:29'),
(99, 'INF30051', 'L???p tr??nh m???ng', 3, 30, 15, 0, 9, '2022-11-01 07:32:29'),
(100, 'INF30055', 'Ph??n t??ch, thi???t k??? m???ng', 3, 30, 15, 0, 9, '2022-11-01 07:32:29'),
(101, 'INF30057', 'Qu???n tr??? m???ng', 3, 30, 15, 0, 9, '2022-11-01 07:32:29'),
(102, 'INF30033', 'An to??n th??ng tin', 3, 35, 0, 10, 8, '2022-11-01 07:32:29'),
(103, 'INF30005', 'C???u tr??c d??? li???u v?? gi???i thu???t', 4, 45, 15, 0, 5, '2022-11-01 07:32:29'),
(104, 'INF30006', 'C?? s??? d??? li???u', 3, 35, 10, 0, 5, '2022-11-01 07:32:29'),
(105, 'INF30034', 'C??ng ngh??? ph???n m???m', 3, 30, 15, 0, 8, '2022-11-01 07:32:29'),
(106, 'MAT20002', '?????i s??? tuy???n t??nh (nh??m ng??nh T??? nhi??n-K??? thu???t)', 3, 36, 0, 9, 1, '2022-11-01 07:32:29'),
(107, 'INF30029', '????? ??n c?? s??? ng??nh', 3, 0, 45, 0, 7, '2022-11-01 07:32:29'),
(108, 'INF30062', '????? ??n t???t nghi???p', 6, 0, 90, 0, 10, '2022-11-01 07:32:29'),
(109, 'POL10003', '???????ng l???i c??ch m???ng c???a ?????ng CSVN', 3, 30, 0, 15, 5, '2022-11-01 07:32:29'),
(110, 'MAT20006', 'Gi???i t??ch', 5, 60, 0, 15, 2, '2022-11-01 07:32:29'),
(111, 'NAP10001', 'Gi??o d???c qu???c ph??ng 1(???????ng l???i qu??n s???)', 3, 45, 0, 0, 2, '2022-11-01 07:32:29'),
(112, 'NAP10002', 'Gi??o d???c qu???c ph??ng 2(C??ng t??c QPAN)', 2, 30, 0, 0, 2, '2022-11-01 07:32:29'),
(113, 'NAP10003', 'Gi??o d???c qu???c ph??ng 3 (QS chung & chi???n thu???t, KT b???n s??ng...)', 3, 15, 30, 0, 2, '2022-11-01 07:32:29'),
(114, 'SPO10001', 'Gi??o d???c th??? ch???t', 5, 15, 60, 0, 2, '2022-11-01 07:32:29'),
(115, 'INF20009', 'H??? ??i???u h??nh', 3, 30, 15, 0, 7, '2022-11-01 07:32:29'),
(116, 'INF30007', 'H??? qu???n tr??? c?? s??? d??? li???u', 3, 30, 15, 0, 6, '2022-11-01 07:32:29'),
(117, 'CON20001', 'H??nh h???a - V??? k??? thu???t', 4, 45, 15, 0, 3, '2022-11-01 07:32:29'),
(118, 'CHE20002', 'Ho?? h???c ?????i c????ng', 4, 45, 15, 0, 3, '2022-11-01 07:32:29'),
(119, 'ELE20003', 'K?? n??ng vi???t v?? t?? duy ph???n bi???n', 3, 30, 15, 0, 4, '2022-11-01 07:32:29'),
(120, 'INF30001', 'Ki???n tr??c m??y t??nh', 3, 35, 0, 10, 4, '2022-11-01 07:32:29'),
(121, 'ELE20002', 'K??? thu???t ??i???n, ??i???n t???', 4, 45, 15, 0, 3, '2022-11-01 07:32:29'),
(122, 'INF30013', 'L???p tr??nh h?????ng ?????i t?????ng', 3, 30, 15, 0, 6, '2022-11-01 07:32:29'),
(123, 'INF30023', 'L???p tr??nh Java', 3, 30, 15, 0, 7, '2022-11-01 07:32:29'),
(124, 'INF30025', 'L???p tr??nh Web', 4, 45, 15, 0, 7, '2022-11-01 07:32:29'),
(125, 'INF30015', 'M???ng m??y t??nh', 3, 35, 10, 0, 6, '2022-11-01 07:32:29'),
(126, 'INF30002', 'Ng??n ng??? l???p tr??nh C', 4, 45, 15, 0, 4, '2022-11-01 07:32:29'),
(127, 'ELE20001', 'Nh???p m??n ng??nh k??? thu???t', 3, 30, 15, 0, 1, '2022-11-01 07:32:29'),
(128, 'POL10001', 'Nh???ng nguy??n l?? c?? b???n c???a CN M??c-L??nin', 5, 50, 0, 25, 1, '2022-11-01 07:32:29'),
(129, 'INF30017', 'Ph??n t??ch v?? thi???t k??? h??? th???ng th??ng tin', 3, 35, 0, 10, 6, '2022-11-01 07:32:29'),
(130, 'BUA20006', 'Qu???n tr??? doanh nghi???p v?? marketing', 3, 30, 0, 15, 7, '2022-11-01 07:32:29'),
(131, 'INF30058', 'Th???c t???p chuy??n ng??nh', 3, 0, 45, 0, 9, '2022-11-01 07:32:29'),
(132, 'INF30063', 'Th???c t???p t???t nghi???p', 3, 0, 45, 0, 10, '2022-11-01 07:32:29'),
(133, 'ENG10001', 'Ti???ng Anh 1', 3, 30, 0, 15, 1, '2022-11-01 07:32:29'),
(134, 'ENG10002', 'Ti???ng Anh 2', 4, 45, 0, 15, 2, '2022-11-01 07:32:29'),
(135, 'INF30004', 'Ti???ng Anh chuy??n ng??nh', 3, 35, 0, 10, 4, '2022-11-01 07:32:29'),
(136, 'INF20004', 'Tin h???c nh??m ng??nh k??? thu???t', 4, 30, 30, 0, 3, '2022-11-01 07:32:29'),
(137, 'INF30019', 'To??n r???i r???c', 3, 35, 0, 10, 5, '2022-11-01 07:32:29'),
(138, 'INF20007', 'Tr?? tu??? nh??n t???o', 3, 35, 0, 10, 8, '2022-11-01 07:32:29'),
(139, 'POL10002', 'T?? t?????ng H??? Ch?? Minh', 2, 20, 0, 10, 2, '2022-11-01 07:32:29'),
(140, 'INF30036', 'T????ng t??c ng?????i-m??y', 3, 30, 15, 0, 8, '2022-11-01 07:32:29'),
(141, 'PHY20001', 'V???t l?? ?????i c????ng', 5, 45, 0, 30, 2, '2022-11-01 07:32:29'),
(142, 'MAT20009', 'X??c su???t v?? th???ng k??', 3, 35, 0, 10, 4, '2022-11-01 07:32:29'),
(143, 'INF20008', 'X??? l?? ???nh', 3, 30, 15, 0, 8, '2022-11-01 07:32:29'),
(144, 'BUA20004', 'Kh???i s??? doanh nghi???p', 2, 20, 0, 10, 5, '2022-11-01 07:32:29'),
(145, 'LAW20004', 'Ph??p lu???t ?????i c????ng', 2, 20, 0, 10, 5, '2022-11-01 07:32:29'),
(146, 'BUA20005', 'V??n h??a doanh nghi???p', 2, 20, 0, 10, 5, '2022-11-01 07:32:29'),
(147, 'INF30011', 'C?? s??? truy???n tin', 3, 35, 0, 10, 6, '2022-11-01 07:32:29'),
(148, 'INF30012', 'K??? thu???t vi x??? l??', 3, 35, 10, 0, 6, '2022-11-01 07:32:29'),
(149, 'INF30016', 'Ng??n ng??? h??nh th???c v?? Automata', 3, 35, 0, 10, 6, '2022-11-01 07:32:29'),
(150, 'INF30022', '????? h???a m??y t??nh', 3, 30, 15, 0, 7, '2022-11-01 07:32:29'),
(151, 'INF30027', 'Ph??t tri???n ???ng d???ng Web v???i PHP & MySQL', 3, 30, 15, 0, 7, '2022-11-01 07:32:29'),
(152, 'INF30032', 'X??? l?? t??n hi???u s???', 3, 35, 0, 10, 7, '2022-11-01 07:32:29'),
(153, 'VIE10001', 'Ti???ng Vi???t 1 (Cho sinh vi??n L??o)', 3, 30, 0, 15, 1, '2022-11-01 07:32:29'),
(154, 'VIE10002', 'Ti???ng Vi???t 2 (Cho sinh vi??n L??o)', 4, 45, 0, 15, 2, '2022-11-01 07:32:29'),
(155, 'CON30034', 'C???p tho??t n?????c', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(156, 'CON30037', 'K???t c???u g???ch ????', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(157, 'CON30043', 'M??y x??y d???ng', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(158, 'CON30036', 'K???t c???u b?? t??ng c???t th??p n??ng cao', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(159, 'CON30038', 'K???t c???u th??p n??ng cao', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(160, 'CON30044', 'Thi c??ng n??ng cao', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(161, 'CON30048', 'T??? ch???c thi c??ng n??ng cao v?? ????? ??n', 2, 15, 15, 0, 9, '2022-11-02 07:51:31'),
(162, 'CON30001', 'C?? h???c c?? s???', 3, 35, 0, 10, 4, '2022-11-02 07:51:31'),
(163, 'CON30008', 'C?? k???t c???u 1', 3, 35, 0, 10, 6, '2022-11-02 07:51:31'),
(164, 'CON30015', 'C?? k???t c???u 2', 3, 30, 0, 15, 7, '2022-11-02 07:51:31'),
(165, 'CON30005', '?????a k??? thu???t c??ng tr??nh', 5, 60, 15, 0, 5, '2022-11-02 07:51:31'),
(166, 'CON30009', '????? ??n k???t c???u b?? t??ng c???t th??p', 1, 0, 15, 0, 6, '2022-11-02 07:51:31'),
(167, 'CON30021', '????? ??n k???t c???u nh?? b?? t??ng c???t th??p', 1, 0, 15, 0, 8, '2022-11-02 07:51:31'),
(168, 'CON30022', '????? ??n k???t c???u nh?? th??p', 1, 0, 15, 0, 8, '2022-11-02 07:51:31'),
(169, 'CON30035', '????? ??n k??? thu???t v?? t??? ch???c thi c??ng to??n kh???i', 2, 0, 30, 0, 9, '2022-11-02 07:51:31'),
(170, 'CON30017', '????? ??n n???n m??ng c??ng tr??nh', 1, 0, 15, 0, 7, '2022-11-02 07:51:31'),
(171, 'CON30023', '????? ??n thi c??ng l???p gh??p', 1, 0, 15, 0, 8, '2022-11-02 07:51:31'),
(172, 'CON30053', '????? ??n t???t nghi???p', 10, 0, 150, 0, 10, '2022-11-02 07:51:31'),
(173, 'CON30010', 'K???t c???u b?? t??ng c???t th??p', 3, 40, 0, 5, 6, '2022-11-02 07:51:31'),
(174, 'CON30027', 'K???t c???u nh?? b?? t??ng c???t th??p', 3, 40, 0, 5, 8, '2022-11-02 07:51:31'),
(175, 'CON30028', 'K???t c???u nh?? th??p', 3, 40, 0, 5, 8, '2022-11-02 07:51:31'),
(176, 'CON30018', 'K???t c???u th??p 1', 3, 35, 0, 10, 7, '2022-11-02 07:51:31'),
(177, 'CON30006', 'Ki???n tr??c v?? ????? ??n', 4, 45, 15, 0, 5, '2022-11-02 07:51:31'),
(178, 'CON30041', 'Kinh t??? v?? lu???t x??y d???ng', 3, 40, 0, 5, 9, '2022-11-02 07:51:31'),
(179, 'CON30029', 'K??? thu???t thi c??ng', 5, 65, 0, 10, 8, '2022-11-02 07:51:31'),
(180, 'CON30019', 'N???n m??ng c??ng tr??nh', 3, 40, 0, 5, 7, '2022-11-02 07:51:31'),
(181, 'CON30007', 'S???c b???n v???t li???u 1', 3, 35, 0, 10, 5, '2022-11-02 07:51:31'),
(182, 'CON30020', 'S???c b???n v???t li???u 2', 2, 25, 0, 5, 7, '2022-11-02 07:51:31'),
(183, 'CON30045', 'Th?? nghi???m c??ng tr??nh', 3, 30, 15, 0, 9, '2022-11-02 07:51:31'),
(184, 'CON30012', 'Th???c t???p c??ng nh??n v?? tham quan', 4, 0, 60, 0, 6, '2022-11-02 07:51:31'),
(185, 'CON30055', 'Th???c t???p t???t nghi???p', 4, 0, 60, 0, 10, '2022-11-02 07:51:31'),
(186, 'CON30047', 'T??? ch???c thi c??ng', 4, 50, 0, 10, 9, '2022-11-02 07:51:31'),
(187, 'CON30002', 'Tr???c ?????a', 3, 30, 15, 0, 4, '2022-11-02 07:51:31'),
(188, 'CON30014', '???ng d???ng tin h???c trong x??y d???ng', 3, 30, 15, 0, 6, '2022-11-02 07:51:31'),
(189, 'CON30004', 'V???t li???u x??y d???ng', 4, 45, 15, 0, 4, '2022-11-02 07:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id` int(11) NOT NULL,
  `msv` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nganh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `khoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lop` varchar(2525) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trangthai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'public/assets/img/profile-img.jpg',
  `sdt` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`id`, `msv`, `hoten`, `nganh`, `khoa`, `lop`, `time`, `trangthai`, `avatar`, `sdt`, `email`) VALUES
(2, '18574802010202', 'Ph???m Th??? Th??n', 'C??ng ngh??? th??ng tin', 'K59', 'K59K3', '2022-11-01 04:30:18', '??ANG H???C', 'public/uploads/ff445dc0bf6702dc1be54e47730ae9a4.png', '0888899222', 'ptthan2k@gmail.com'),
(3, '18574802010218', 'L??u V??n ?????t', 'C??ng ngh??? th??ng tin', 'K59', 'K59K3', '2022-11-01 21:52:44', '??ANG H???C', 'public/assets/img/profile-img.jpg', NULL, NULL),
(4, '18574802010022', 'Tr???n Minh Th???o', 'C??ng ngh??? th??ng tin', 'K59', 'K59K3', '2022-11-01 21:53:03', '??ANG H???C', 'public/assets/img/profile-img.jpg', NULL, NULL),
(5, '18575802010033', 'HO??NG ?????C HI???U', ' KT X??y d???ng', 'K59', 'K59K ', '2022-11-02 07:51:31', '??ANG H???C', 'public/uploads/6a8e6592cbac63f9f2231209579835c2.jpg', '0967843203', 'ptthan2k@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tkbchuyendoi`
--

CREATE TABLE `tkbchuyendoi` (
  `id` int(11) NOT NULL,
  `mahocphan` varchar(255) CHARACTER SET latin1 NOT NULL,
  `lophocphan` text CHARACTER SET latin1 NOT NULL,
  `khoahoc` text CHARACTER SET latin1 NOT NULL,
  `sosvdukien` int(11) NOT NULL,
  `sosvdadangky` int(11) NOT NULL,
  `hinhthuchoc` varchar(255) CHARACTER SET latin1 NOT NULL,
  `tuanhoc` int(11) NOT NULL,
  `ngayhoc` int(11) NOT NULL,
  `sotientuan` int(11) NOT NULL,
  `thu` int(11) NOT NULL,
  `tietbd` int(11) NOT NULL,
  `sotiet` int(11) NOT NULL,
  `phonghoc` varchar(255) CHARACTER SET latin1 NOT NULL,
  `giaovien` varchar(255) CHARACTER SET latin1 NOT NULL,
  `khoavien` text CHARACTER SET latin1 NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dangkyhp`
--
ALTER TABLE `dangkyhp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diemsinhvien`
--
ALTER TABLE `diemsinhvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`id`,`mahocphan`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`id`,`msv`);

--
-- Indexes for table `tkbchuyendoi`
--
ALTER TABLE `tkbchuyendoi`
  ADD PRIMARY KEY (`id`,`mahocphan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dangkyhp`
--
ALTER TABLE `dangkyhp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diemsinhvien`
--
ALTER TABLE `diemsinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tkbchuyendoi`
--
ALTER TABLE `tkbchuyendoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
