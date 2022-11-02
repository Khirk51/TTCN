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
(78, 'INF30038', 'Các giải thuật lập trình nâng cao', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(79, 'INF30039', 'Chương trình dịch', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(80, 'INF30041', 'Đánh giá độ phức tạp thuật toán', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(81, 'INF30052', 'Lý thuyết tối ưu', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(82, 'INF30059', 'Thương mại điện tử', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(83, 'INF30060', 'Xử lý ngôn ngữ tự nhiên', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(84, 'INF30040', 'Cơ sở dữ liệu nâng cao', 3, 35, 10, 0, 9, '2022-11-01 07:32:28'),
(85, 'INF30043', 'Hệ thống thông tin quản lí', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(86, 'INF30045', 'Khai phá dữ liệu', 3, 35, 10, 0, 9, '2022-11-01 07:32:28'),
(87, 'INF30046', 'Kiến trúc phần mềm', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(88, 'INF30054', 'Máy tìm kiếm', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(89, 'INF30056', 'Phát triển ứng dụng dựa trên mã nguồn mở', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(90, 'INF30044', 'Học máy', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(91, 'INF30047', 'Lập trình .NET', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(92, 'INF30048', 'Lập trình cho Robot', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(93, 'INF30049', 'Lập trình cho thiết bị di động', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(94, 'INF30053', 'Mạng neural', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(95, 'INF30061', 'Xử lý tiếng nói', 3, 35, 0, 10, 9, '2022-11-01 07:32:28'),
(96, 'INF30037', 'An ninh mạng', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(97, 'INF30042', 'Hệ điều hành mạng', 3, 30, 15, 0, 9, '2022-11-01 07:32:28'),
(98, 'INF30050', 'Lập trình Java nâng cao', 3, 30, 15, 0, 9, '2022-11-01 07:32:29'),
(99, 'INF30051', 'Lập trình mạng', 3, 30, 15, 0, 9, '2022-11-01 07:32:29'),
(100, 'INF30055', 'Phân tích, thiết kế mạng', 3, 30, 15, 0, 9, '2022-11-01 07:32:29'),
(101, 'INF30057', 'Quản trị mạng', 3, 30, 15, 0, 9, '2022-11-01 07:32:29'),
(102, 'INF30033', 'An toàn thông tin', 3, 35, 0, 10, 8, '2022-11-01 07:32:29'),
(103, 'INF30005', 'Cấu trúc dữ liệu và giải thuật', 4, 45, 15, 0, 5, '2022-11-01 07:32:29'),
(104, 'INF30006', 'Cơ sở dữ liệu', 3, 35, 10, 0, 5, '2022-11-01 07:32:29'),
(105, 'INF30034', 'Công nghệ phần mềm', 3, 30, 15, 0, 8, '2022-11-01 07:32:29'),
(106, 'MAT20002', 'Đại số tuyến tính (nhóm ngành Tự nhiên-Kỹ thuật)', 3, 36, 0, 9, 1, '2022-11-01 07:32:29'),
(107, 'INF30029', 'Đồ án cơ sở ngành', 3, 0, 45, 0, 7, '2022-11-01 07:32:29'),
(108, 'INF30062', 'Đồ án tốt nghiệp', 6, 0, 90, 0, 10, '2022-11-01 07:32:29'),
(109, 'POL10003', 'Đường lối cách mạng của Đảng CSVN', 3, 30, 0, 15, 5, '2022-11-01 07:32:29'),
(110, 'MAT20006', 'Giải tích', 5, 60, 0, 15, 2, '2022-11-01 07:32:29'),
(111, 'NAP10001', 'Giáo dục quốc phòng 1(Đường lối quân sự)', 3, 45, 0, 0, 2, '2022-11-01 07:32:29'),
(112, 'NAP10002', 'Giáo dục quốc phòng 2(Công tác QPAN)', 2, 30, 0, 0, 2, '2022-11-01 07:32:29'),
(113, 'NAP10003', 'Giáo dục quốc phòng 3 (QS chung & chiến thuật, KT bắn súng...)', 3, 15, 30, 0, 2, '2022-11-01 07:32:29'),
(114, 'SPO10001', 'Giáo dục thể chất', 5, 15, 60, 0, 2, '2022-11-01 07:32:29'),
(115, 'INF20009', 'Hệ điều hành', 3, 30, 15, 0, 7, '2022-11-01 07:32:29'),
(116, 'INF30007', 'Hệ quản trị cơ sở dữ liệu', 3, 30, 15, 0, 6, '2022-11-01 07:32:29'),
(117, 'CON20001', 'Hình họa - Vẽ kỹ thuật', 4, 45, 15, 0, 3, '2022-11-01 07:32:29'),
(118, 'CHE20002', 'Hoá học đại cương', 4, 45, 15, 0, 3, '2022-11-01 07:32:29'),
(119, 'ELE20003', 'Kĩ năng viết và tư duy phản biện', 3, 30, 15, 0, 4, '2022-11-01 07:32:29'),
(120, 'INF30001', 'Kiến trúc máy tính', 3, 35, 0, 10, 4, '2022-11-01 07:32:29'),
(121, 'ELE20002', 'Kỹ thuật điện, điện tử', 4, 45, 15, 0, 3, '2022-11-01 07:32:29'),
(122, 'INF30013', 'Lập trình hướng đối tượng', 3, 30, 15, 0, 6, '2022-11-01 07:32:29'),
(123, 'INF30023', 'Lập trình Java', 3, 30, 15, 0, 7, '2022-11-01 07:32:29'),
(124, 'INF30025', 'Lập trình Web', 4, 45, 15, 0, 7, '2022-11-01 07:32:29'),
(125, 'INF30015', 'Mạng máy tính', 3, 35, 10, 0, 6, '2022-11-01 07:32:29'),
(126, 'INF30002', 'Ngôn ngữ lập trình C', 4, 45, 15, 0, 4, '2022-11-01 07:32:29'),
(127, 'ELE20001', 'Nhập môn ngành kỹ thuật', 3, 30, 15, 0, 1, '2022-11-01 07:32:29'),
(128, 'POL10001', 'Những nguyên lý cơ bản của CN Mác-Lênin', 5, 50, 0, 25, 1, '2022-11-01 07:32:29'),
(129, 'INF30017', 'Phân tích và thiết kế hệ thống thông tin', 3, 35, 0, 10, 6, '2022-11-01 07:32:29'),
(130, 'BUA20006', 'Quản trị doanh nghiệp và marketing', 3, 30, 0, 15, 7, '2022-11-01 07:32:29'),
(131, 'INF30058', 'Thực tập chuyên ngành', 3, 0, 45, 0, 9, '2022-11-01 07:32:29'),
(132, 'INF30063', 'Thực tập tốt nghiệp', 3, 0, 45, 0, 10, '2022-11-01 07:32:29'),
(133, 'ENG10001', 'Tiếng Anh 1', 3, 30, 0, 15, 1, '2022-11-01 07:32:29'),
(134, 'ENG10002', 'Tiếng Anh 2', 4, 45, 0, 15, 2, '2022-11-01 07:32:29'),
(135, 'INF30004', 'Tiếng Anh chuyên ngành', 3, 35, 0, 10, 4, '2022-11-01 07:32:29'),
(136, 'INF20004', 'Tin học nhóm ngành kỹ thuật', 4, 30, 30, 0, 3, '2022-11-01 07:32:29'),
(137, 'INF30019', 'Toán rời rạc', 3, 35, 0, 10, 5, '2022-11-01 07:32:29'),
(138, 'INF20007', 'Trí tuệ nhân tạo', 3, 35, 0, 10, 8, '2022-11-01 07:32:29'),
(139, 'POL10002', 'Tư tưởng Hồ Chí Minh', 2, 20, 0, 10, 2, '2022-11-01 07:32:29'),
(140, 'INF30036', 'Tương tác người-máy', 3, 30, 15, 0, 8, '2022-11-01 07:32:29'),
(141, 'PHY20001', 'Vật lí đại cương', 5, 45, 0, 30, 2, '2022-11-01 07:32:29'),
(142, 'MAT20009', 'Xác suất và thống kê', 3, 35, 0, 10, 4, '2022-11-01 07:32:29'),
(143, 'INF20008', 'Xử lý ảnh', 3, 30, 15, 0, 8, '2022-11-01 07:32:29'),
(144, 'BUA20004', 'Khởi sự doanh nghiệp', 2, 20, 0, 10, 5, '2022-11-01 07:32:29'),
(145, 'LAW20004', 'Pháp luật đại cương', 2, 20, 0, 10, 5, '2022-11-01 07:32:29'),
(146, 'BUA20005', 'Văn hóa doanh nghiệp', 2, 20, 0, 10, 5, '2022-11-01 07:32:29'),
(147, 'INF30011', 'Cơ sở truyền tin', 3, 35, 0, 10, 6, '2022-11-01 07:32:29'),
(148, 'INF30012', 'Kỹ thuật vi xử lý', 3, 35, 10, 0, 6, '2022-11-01 07:32:29'),
(149, 'INF30016', 'Ngôn ngữ hình thức và Automata', 3, 35, 0, 10, 6, '2022-11-01 07:32:29'),
(150, 'INF30022', 'Đồ họa máy tính', 3, 30, 15, 0, 7, '2022-11-01 07:32:29'),
(151, 'INF30027', 'Phát triển ứng dụng Web với PHP & MySQL', 3, 30, 15, 0, 7, '2022-11-01 07:32:29'),
(152, 'INF30032', 'Xử lý tín hiệu số', 3, 35, 0, 10, 7, '2022-11-01 07:32:29'),
(153, 'VIE10001', 'Tiếng Việt 1 (Cho sinh viên Lào)', 3, 30, 0, 15, 1, '2022-11-01 07:32:29'),
(154, 'VIE10002', 'Tiếng Việt 2 (Cho sinh viên Lào)', 4, 45, 0, 15, 2, '2022-11-01 07:32:29'),
(155, 'CON30034', 'Cấp thoát nước', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(156, 'CON30037', 'Kết cấu gạch đá', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(157, 'CON30043', 'Máy xây dựng', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(158, 'CON30036', 'Kết cấu bê tông cốt thép nâng cao', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(159, 'CON30038', 'Kết cấu thép nâng cao', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(160, 'CON30044', 'Thi công nâng cao', 2, 25, 0, 5, 9, '2022-11-02 07:51:31'),
(161, 'CON30048', 'Tổ chức thi công nâng cao và đồ án', 2, 15, 15, 0, 9, '2022-11-02 07:51:31'),
(162, 'CON30001', 'Cơ học cơ sở', 3, 35, 0, 10, 4, '2022-11-02 07:51:31'),
(163, 'CON30008', 'Cơ kết cấu 1', 3, 35, 0, 10, 6, '2022-11-02 07:51:31'),
(164, 'CON30015', 'Cơ kết cấu 2', 3, 30, 0, 15, 7, '2022-11-02 07:51:31'),
(165, 'CON30005', 'Địa kỹ thuật công trình', 5, 60, 15, 0, 5, '2022-11-02 07:51:31'),
(166, 'CON30009', 'Đồ án kết cấu bê tông cốt thép', 1, 0, 15, 0, 6, '2022-11-02 07:51:31'),
(167, 'CON30021', 'Đồ án kết cấu nhà bê tông cốt thép', 1, 0, 15, 0, 8, '2022-11-02 07:51:31'),
(168, 'CON30022', 'Đồ án kết cấu nhà thép', 1, 0, 15, 0, 8, '2022-11-02 07:51:31'),
(169, 'CON30035', 'Đồ án kỹ thuật và tổ chức thi công toàn khối', 2, 0, 30, 0, 9, '2022-11-02 07:51:31'),
(170, 'CON30017', 'Đồ án nền móng công trình', 1, 0, 15, 0, 7, '2022-11-02 07:51:31'),
(171, 'CON30023', 'Đồ án thi công lắp ghép', 1, 0, 15, 0, 8, '2022-11-02 07:51:31'),
(172, 'CON30053', 'Đồ án tốt nghiệp', 10, 0, 150, 0, 10, '2022-11-02 07:51:31'),
(173, 'CON30010', 'Kết cấu bê tông cốt thép', 3, 40, 0, 5, 6, '2022-11-02 07:51:31'),
(174, 'CON30027', 'Kết cấu nhà bê tông cốt thép', 3, 40, 0, 5, 8, '2022-11-02 07:51:31'),
(175, 'CON30028', 'Kết cấu nhà thép', 3, 40, 0, 5, 8, '2022-11-02 07:51:31'),
(176, 'CON30018', 'Kết cấu thép 1', 3, 35, 0, 10, 7, '2022-11-02 07:51:31'),
(177, 'CON30006', 'Kiến trúc và đồ án', 4, 45, 15, 0, 5, '2022-11-02 07:51:31'),
(178, 'CON30041', 'Kinh tế và luật xây dựng', 3, 40, 0, 5, 9, '2022-11-02 07:51:31'),
(179, 'CON30029', 'Kỹ thuật thi công', 5, 65, 0, 10, 8, '2022-11-02 07:51:31'),
(180, 'CON30019', 'Nền móng công trình', 3, 40, 0, 5, 7, '2022-11-02 07:51:31'),
(181, 'CON30007', 'Sức bền vật liệu 1', 3, 35, 0, 10, 5, '2022-11-02 07:51:31'),
(182, 'CON30020', 'Sức bền vật liệu 2', 2, 25, 0, 5, 7, '2022-11-02 07:51:31'),
(183, 'CON30045', 'Thí nghiệm công trình', 3, 30, 15, 0, 9, '2022-11-02 07:51:31'),
(184, 'CON30012', 'Thực tập công nhân và tham quan', 4, 0, 60, 0, 6, '2022-11-02 07:51:31'),
(185, 'CON30055', 'Thực tập tốt nghiệp', 4, 0, 60, 0, 10, '2022-11-02 07:51:31'),
(186, 'CON30047', 'Tổ chức thi công', 4, 50, 0, 10, 9, '2022-11-02 07:51:31'),
(187, 'CON30002', 'Trắc địa', 3, 30, 15, 0, 4, '2022-11-02 07:51:31'),
(188, 'CON30014', 'Ứng dụng tin học trong xây dựng', 3, 30, 15, 0, 6, '2022-11-02 07:51:31'),
(189, 'CON30004', 'Vật liệu xây dựng', 4, 45, 15, 0, 4, '2022-11-02 07:51:31');

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
(2, '18574802010202', 'Phạm Thế Thân', 'Công nghệ thông tin', 'K59', 'K59K3', '2022-11-01 04:30:18', 'ĐANG HỌC', 'public/uploads/ff445dc0bf6702dc1be54e47730ae9a4.png', '0888899222', 'ptthan2k@gmail.com'),
(3, '18574802010218', 'Lưu Văn Đạt', 'Công nghệ thông tin', 'K59', 'K59K3', '2022-11-01 21:52:44', 'ĐANG HỌC', 'public/assets/img/profile-img.jpg', NULL, NULL),
(4, '18574802010022', 'Trần Minh Thảo', 'Công nghệ thông tin', 'K59', 'K59K3', '2022-11-01 21:53:03', 'ĐANG HỌC', 'public/assets/img/profile-img.jpg', NULL, NULL),
(5, '18575802010033', 'HOÀNG ĐỨC HIẾU', ' KT Xây dựng', 'K59', 'K59K ', '2022-11-02 07:51:31', 'ĐANG HỌC', 'public/uploads/6a8e6592cbac63f9f2231209579835c2.jpg', '0967843203', 'ptthan2k@gmail.com');

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
