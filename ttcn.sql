-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2022 at 05:11 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dangkyhp`
--

CREATE TABLE `dangkyhp` (
  `id` int(11) NOT NULL,
  `msv` int(15) NOT NULL,
  `mahocphan` varchar(255) NOT NULL,
  `trangthai` int(1) NOT NULL DEFAULT '0',
  `idduyet` int(1) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `donchuyendoi` int(1) NOT NULL DEFAULT '0',
  `lopcd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diemsinhvien`
--

CREATE TABLE `diemsinhvien` (
  `id` int(11) NOT NULL,
  `msv` int(15) NOT NULL,
  `mahocphan` varchar(255) NOT NULL,
  `diem` int(11) NOT NULL,
  `diemchu` varchar(10) NOT NULL,
  `danhgia` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `id` int(11) NOT NULL,
  `mahocphan` varchar(255) NOT NULL,
  `tenhocphan` varchar(255) NOT NULL,
  `sotinchi` int(11) NOT NULL,
  `sotietlythuyet` int(11) NOT NULL,
  `sotietthuchanh` int(11) NOT NULL,
  `thaoluan` int(11) NOT NULL,
  `hocky` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id` int(11) NOT NULL,
  `msv` int(15) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `nganh` varchar(255) NOT NULL,
  `khoa` varchar(255) NOT NULL,
  `lop` varchar(2525) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tkbchuyendoi`
--

CREATE TABLE `tkbchuyendoi` (
  `id` int(11) NOT NULL,
  `mahocphan` varchar(255) NOT NULL,
  `lophocphan` text NOT NULL,
  `khoahoc` text NOT NULL,
  `sosvdukien` int(11) NOT NULL,
  `sosvdadangky` int(11) NOT NULL,
  `hinhthuchoc` varchar(255) NOT NULL,
  `tuanhoc` int(11) NOT NULL,
  `ngayhoc` int(11) NOT NULL,
  `sotientuan` int(11) NOT NULL,
  `thu` int(11) NOT NULL,
  `tietbd` int(11) NOT NULL,
  `sotiet` int(11) NOT NULL,
  `phonghoc` varchar(255) NOT NULL,
  `giaovien` varchar(255) NOT NULL,
  `khoavien` text NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tkbchuyendoi`
--
ALTER TABLE `tkbchuyendoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
