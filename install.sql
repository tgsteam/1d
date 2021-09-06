-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: 2017-03-28 11:59:12
-- �������汾�� 5.6.35
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yeyan`
--

-- --------------------------------------------------------

--
-- ��Ľṹ `black_admin`
--

CREATE TABLE IF NOT EXISTS `black_admin` (
  `uid` int(11) NOT NULL,
  `user` varchar(150) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `last` datetime NOT NULL,
  `dlip` varchar(15) DEFAULT NULL,
  `active` int(1) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- ת����е����� `black_admin`
--

INSERT INTO `black_admin` (`uid`, `user`, `pass`, `last`, `dlip`, `active`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-03-28 10:19:17', '172.68.143.172', 1);

-- --------------------------------------------------------

--
-- ��Ľṹ `black_config`
--

CREATE TABLE IF NOT EXISTS `black_config` (
  `k` varchar(255) NOT NULL DEFAULT '',
  `v` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- ת����е����� `black_config`
--

INSERT INTO `black_config` (`k`, `v`) VALUES
('description', '�˳���Ϊ��������ƭ��ϵͳ'),
('keywords', 'Դ����µ�ַ:www.zy40.cn'),
('sitename', '��׿����ҹ��ƭ�Ӳ�ѯϵͳ');

-- --------------------------------------------------------

--
-- ��Ľṹ `black_list`
--

CREATE TABLE IF NOT EXISTS `black_list` (
  `id` int(11) NOT NULL,
  `qq` text,
  `level` int(1) NOT NULL,
  `date` datetime NOT NULL,
  `note` text COMMENT '����ԭ��'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- ת����е����� `black_list`
--

INSERT INTO `black_list` (`id`, `qq`, `level`, `date`, `note`) VALUES
(2, '1580126327', 1, '2017-03-28 03:53:03', 'ҹ��̫˧�ˣ����Ա�������'),
(3, '875998440', 3, '2017-03-28 10:18:15', '�ѹ�ι���˷�ҧ����'),
(4, '3076444037', 3, '2017-03-28 10:19:17', '֮ǰ����ҪԴ�룬����Ƿ��Ĺ�');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `black_admin`
--
ALTER TABLE `black_admin`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `black_config`
--
ALTER TABLE `black_config`
  ADD PRIMARY KEY (`k`(10));

--
-- Indexes for table `black_list`
--
ALTER TABLE `black_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `black_admin`
--
ALTER TABLE `black_admin`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `black_list`
--
ALTER TABLE `black_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
