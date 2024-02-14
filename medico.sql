-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 01:51 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medico`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `SmartCardNo` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `apdate` varchar(255) NOT NULL,
  `aptime` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT '0',
  `doctor` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `SmartCardNo`, `username`, `apdate`, `aptime`, `status`, `doctor`) VALUES
(4, 'CH20192026', 'raju', '2019-12-30', '11:10', 'Accept', 'dd'),
(5, 'CH201920241', 'jaggu', '2020-02-05', '18:30', '0', ''),
(6, 'CH20192028', 'yash', '2020-01-08', '11:30', 'Accept', 'dd'),
(7, 'CH20192029', 'raj', '2021-07-02', '02:50', 'Accept', 'dk'),
(8, 'CH2019203', 'aish', '2021-07-20', '16:13', '0', '0'),
(9, 'CH2019201', 'roh', '2021-07-22', '02:10', 'Accept', 'aa'),
(10, 'CH2019205', 'Shri', '2021-07-21', '09:30', 'Accept', 'aeb');

-- --------------------------------------------------------

--
-- Table structure for table `checkup`
--

CREATE TABLE `checkup` (
  `id` int(11) NOT NULL,
  `SmartCardNo` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ha` varchar(255) NOT NULL,
  `gaa` varchar(255) NOT NULL,
  `hb` varchar(255) NOT NULL,
  `gab` varchar(255) NOT NULL,
  `hc` varchar(255) NOT NULL,
  `gac` varchar(255) NOT NULL,
  `dva` varchar(255) NOT NULL,
  `dca` varchar(255) NOT NULL,
  `dvb` varchar(255) NOT NULL,
  `dcb` varchar(255) NOT NULL,
  `dvc` varchar(255) NOT NULL,
  `dcc` varchar(255) NOT NULL,
  `dvd` varchar(255) NOT NULL,
  `dcd` varchar(255) NOT NULL,
  `dve` varchar(255) NOT NULL,
  `dce` varchar(255) NOT NULL,
  `dvf` varchar(255) NOT NULL,
  `dcf` varchar(255) NOT NULL,
  `dvg` varchar(255) NOT NULL,
  `dcg` varchar(255) NOT NULL,
  `others` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkup`
--

INSERT INTO `checkup` (`id`, `SmartCardNo`, `username`, `ha`, `gaa`, `hb`, `gab`, `hc`, `gac`, `dva`, `dca`, `dvb`, `dcb`, `dvc`, `dcc`, `dvd`, `dcd`, `dve`, `dce`, `dvf`, `dcf`, `dvg`, `dcg`, `others`) VALUES
(1, 'CH20192091', 'dd', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa'),
(2, 'CH20192026', 'dd', '36(71.1)', '43(20.5)', '154(73.3)', '144(68.6)', '20(9.5)', '23(11.0)', '439(38)', '455(70.54)', '312(27)', '312(48.37)', '277(24)', '96(14.88)', '35(3)', '91(14.11)', '23(2)', '71(11)', '23(25)', '35(5.12)', '46(4)', '15(2.33)', '25(3.87)');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `pfname` varchar(100) NOT NULL,
  `plname` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `specialist` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `pfname`, `plname`, `age`, `gender`, `specialist`, `address`, `email`, `mobile`, `username`, `password`) VALUES
(1, 'aa', 'aa', 22, 'Male', 'aa', 'aa', 'aa', '455665', 'aa', 'aa'),
(4, 'dd', 'dd', 22, 'female', 'orthodontist', 'Shivajinagar', 'dd@gmail.com', '7022053116', 'dd', 'dd'),
(5, 'aed', 'f', 23, 'female', 'orthodontist', 'dfg', 'rohinisk05@gmail.com', '7022053116', 'aeb', 'aeb123');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `hname` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `hname`, `sname`, `specialist`, `address`, `email`, `contact`, `username`, `password`) VALUES
(1, '', '', '', '', '', '', 'hh', 'hh'),
(4, 'Sahyadri Hospital', 'Superspeciality', 'general', 'Deccan, Pune', 'sahyadri.spc@gmail.com', '9281938391', 'sahyadri', '1919'),
(5, 'City Hospital', 'Superspeciality', 'orthodontist', 'Shivajinagar', 'city.hospital@gmail.com', '9812345320', 'city', '1212'),
(6, 'KIMS', 'Gynic', 'periodontist', 'Karnataka', 'kims@gmail.com', '9234567891', 'kims', '1234'),
(7, 'Abc', 'abx', 'general', 'XYZ', 'rohinisk2021@gmail.com', '7022053116', 'rohini', '123'),
(8, 'fmc', 'qwe', 'general', 'zzx', 'rohinisk05@gmail.com', '7022053116', 'Ruhi', 'ruhi123');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`id`, `cname`, `sname`, `domain`, `address`, `email`, `contact`, `username`, `password`) VALUES
(1, 'LIC', 'Insurance', 'Medical', 'Mumbai', 'lic.life.insurance@gmail.com', '9478823109', 'lic', 'lic');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `SmartCardNo` varchar(255) NOT NULL,
  `pfname` varchar(200) NOT NULL,
  `pmname` varchar(200) NOT NULL,
  `plname` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `bloodgroup` varchar(200) NOT NULL,
  `refdoc` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `ppicture` varchar(255) NOT NULL DEFAULT '0',
  `SecretKey` varchar(255) NOT NULL,
  `QRCode` varchar(255) NOT NULL,
  `regDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `SmartCardNo`, `pfname`, `pmname`, `plname`, `dob`, `age`, `gender`, `bloodgroup`, `refdoc`, `address`, `city`, `email`, `mobile`, `username`, `password`, `ppicture`, `SecretKey`, `QRCode`, `regDate`) VALUES
(1, 'CH2019201', 'roh', 's', 'k', '1999-05-17', 22, 'female', 'AB', 'dk', 'xyz', 'hubli', 'rohinisk2021@gmail.com', '9984123485', 'roh', '123r', 'ROHINI.jpeg', 'BNUyqlmUzL', 'wk1qvUvwWk0swxT4K9csGzdThAqudXonT2u5WyN/YjNu4nRHnOZy/0SFDcRGtB2zkrbKkgYzTxX\r\nnYJWVwbmng==', '2021/07/20 11:37:32'),
(2, 'CH2019202', 'aa', 'aa', 'aa', '1995-07-15', 25, 'male', 'A', 'bb', 'aa', 'aa', 'aa@gmail.com', '9876543212', 'aa', '11', '0', '387YVMBHOv', 'hvQ70Bg2r/ZBSyNuwdU2wnkTGO7DSrBHmZQkH8g5vtevmXgV4AcQDH2wou9eVvlDmyVKSjTmnhv\r\nfv0e3jp4sg==', '2021/07/20 11:50:33'),
(3, 'CH2019203', 'aishu', 's', 'n', '1999-08-21', 22, 'female', 'B', 'dh', 'jhh', 'banglore', 'aishwaryasnarayanan3@gmail.com', '9481731182', 'aish', '1234', 'ROHINI.jpeg', 'S2e9UaMjQC', '28FlcXOcoB5UtAkQteDEljxW8ih41V7ay1vy5b3dYDZP2/vSY/yCv6uJvLeVxQvBsWVBqF30abg\r\nuw3qajDNfw==', '2021/07/20 12:06:09'),
(4, 'CH2019204', 'shridhar', 's', 'b', '1999-05-17', 22, 'female', 'AB', 'dd', 'wer', 'hubli', 'shridharallagi1@gmail.com', '7022053116', 'shridhar', '123', '0', 'BRDHTEHHna', '1StaTWJm6KNjdNB5aKNxkjHDkizz9ODINogsx5uT8o1ZraEUQZfHgqeqir7MSROp2C22K7oPk8O\r\nTifB1qJ7FQ==', '2021/07/20 12:56:11'),
(5, 'CH2019205', 'shri', 'l', 'k', '1978-09-21', 42, 'female', 'B', 'rex', 'sdf', 'hubli', 'rohinisk05@gmail.com', '7022053116', 'Shri', 'shri123', 'ROHINI.jpeg', 'cknZ9qWIBy', 'XwFkvh0I0GDibSXZuVFFb6OIE/Rnx7Y58LEy6yfeJY1ZraEUQZfHgqeqir7MSROp2C22K7oPk8O\r\nTifB1qJ7FQ==', '2021/08/03 20:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `SmartCardNo` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `tab` varchar(255) NOT NULL,
  `syrup` varchar(255) NOT NULL,
  `taba` varchar(255) NOT NULL,
  `syrupa` varchar(255) NOT NULL,
  `cleaner` varchar(255) NOT NULL,
  `clips` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `SmartCardNo`, `username`, `tab`, `syrup`, `taba`, `syrupa`, `cleaner`, `clips`) VALUES
(1, 'CH20192091', 'dd', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `SmartCardNo` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `prescription` varchar(255) NOT NULL,
  `checkup` varchar(255) NOT NULL DEFAULT 'Null'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `SmartCardNo`, `username`, `prescription`, `checkup`) VALUES
(7, 'CH20192026', 'dd', 'Prescription.pdf', 'Checkup.pdf'),
(13, 'CH20192091', 'dd', 'PrescriptionOm.pdf', 'CheckupOm.pdf'),
(14, 'CH20192029', 'dk', 'Prescription.txt', 'Prescription.txt'),
(15, 'CH20192029', 'dk', 'Prescription.txt', 'Null'),
(16, 'CH2019201', 'aa', 'Prescription.txt', 'Prescription.txt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkup`
--
ALTER TABLE `checkup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `checkup`
--
ALTER TABLE `checkup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
