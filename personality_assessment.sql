-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 02:50 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personality_assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question1` int(11) NOT NULL,
  `question2` int(11) NOT NULL,
  `question3` int(11) NOT NULL,
  `question4` int(11) NOT NULL,
  `question5` int(11) NOT NULL,
  `question6` int(11) NOT NULL,
  `question7` int(11) NOT NULL,
  `question8` int(11) NOT NULL,
  `question9` int(11) NOT NULL,
  `question10` int(11) NOT NULL,
  `question11` int(11) NOT NULL,
  `question12` int(11) NOT NULL,
  `question13` int(11) NOT NULL,
  `question14` int(11) NOT NULL,
  `question15` int(11) NOT NULL,
  `question16` int(11) NOT NULL,
  `question17` int(11) NOT NULL,
  `question18` int(11) NOT NULL,
  `question19` int(11) NOT NULL,
  `question20` int(11) NOT NULL,
  `question21` int(11) NOT NULL,
  `question22` int(11) NOT NULL,
  `question23` int(11) NOT NULL,
  `question24` int(11) NOT NULL,
  `question25` int(11) NOT NULL,
  `question26` int(11) NOT NULL,
  `question27` int(11) NOT NULL,
  `question28` int(11) NOT NULL,
  `question29` int(11) NOT NULL,
  `question30` int(11) NOT NULL,
  `question31` int(11) NOT NULL,
  `question32` int(11) NOT NULL,
  `question33` int(11) NOT NULL,
  `question34` int(11) NOT NULL,
  `question35` int(11) NOT NULL,
  `question36` int(11) NOT NULL,
  `question37` int(11) NOT NULL,
  `question38` int(11) NOT NULL,
  `question39` int(11) NOT NULL,
  `question40` int(11) NOT NULL,
  `question41` int(11) NOT NULL,
  `question42` int(11) NOT NULL,
  `question43` int(11) NOT NULL,
  `question44` int(11) NOT NULL,
  `question45` int(11) NOT NULL,
  `question46` int(11) NOT NULL,
  `question47` int(11) NOT NULL,
  `question48` int(11) NOT NULL,
  `question49` int(11) NOT NULL,
  `question50` int(11) NOT NULL,
  `question51` int(11) NOT NULL,
  `question52` int(11) NOT NULL,
  `question53` int(11) NOT NULL,
  `question54` int(11) NOT NULL,
  `question55` int(11) NOT NULL,
  `question56` int(11) NOT NULL,
  `question57` int(11) NOT NULL,
  `question58` int(11) NOT NULL,
  `question59` int(11) NOT NULL,
  `question60` int(11) NOT NULL,
  `question61` int(11) NOT NULL,
  `question62` int(11) NOT NULL,
  `question63` int(11) NOT NULL,
  `question64` int(11) NOT NULL,
  `question65` int(11) NOT NULL,
  `question66` int(11) NOT NULL,
  `question67` int(11) NOT NULL,
  `question68` int(11) NOT NULL,
  `question69` int(11) NOT NULL,
  `question70` int(11) NOT NULL,
  `question71` int(11) NOT NULL,
  `question72` int(11) NOT NULL,
  `question73` int(11) NOT NULL,
  `question74` int(11) NOT NULL,
  `question75` int(11) NOT NULL,
  `question76` int(11) NOT NULL,
  `question77` int(11) NOT NULL,
  `question78` int(11) NOT NULL,
  `question79` int(11) NOT NULL,
  `question80` int(11) NOT NULL,
  `question81` int(11) NOT NULL,
  `question82` int(11) NOT NULL,
  `question83` int(11) NOT NULL,
  `question84` int(11) NOT NULL,
  `question85` int(11) NOT NULL,
  `question86` int(11) NOT NULL,
  `question87` int(11) NOT NULL,
  `question88` int(11) NOT NULL,
  `question89` int(11) NOT NULL,
  `question90` int(11) NOT NULL,
  `question91` int(11) NOT NULL,
  `question92` int(11) NOT NULL,
  `question93` int(11) NOT NULL,
  `question94` int(11) NOT NULL,
  `question95` int(11) NOT NULL,
  `question96` int(11) NOT NULL,
  `question97` int(11) NOT NULL,
  `question98` int(11) NOT NULL,
  `question99` int(11) NOT NULL,
  `question100` int(11) NOT NULL,
  `question101` int(11) NOT NULL,
  `question102` int(11) NOT NULL,
  `question103` int(11) NOT NULL,
  `question104` int(11) NOT NULL,
  `question105` int(11) NOT NULL,
  `question106` int(11) NOT NULL,
  `question107` int(11) NOT NULL,
  `question108` int(11) NOT NULL,
  `question109` int(11) NOT NULL,
  `question110` int(11) NOT NULL,
  `question111` int(11) NOT NULL,
  `question112` int(11) NOT NULL,
  `question113` int(11) NOT NULL,
  `question114` int(11) NOT NULL,
  `question115` int(11) NOT NULL,
  `question116` int(11) NOT NULL,
  `question117` int(11) NOT NULL,
  `question118` int(11) NOT NULL,
  `question119` int(11) NOT NULL,
  `question120` int(11) NOT NULL,
  `question121` int(11) NOT NULL,
  `question122` int(11) NOT NULL,
  `question123` int(11) NOT NULL,
  `question124` int(11) NOT NULL,
  `question125` int(11) NOT NULL,
  `question126` int(11) NOT NULL,
  `question127` int(11) NOT NULL,
  `question128` int(11) NOT NULL,
  `question129` int(11) NOT NULL,
  `question130` int(11) NOT NULL,
  `question131` int(11) NOT NULL,
  `question132` int(11) NOT NULL,
  `question133` int(11) NOT NULL,
  `question134` int(11) NOT NULL,
  `question135` int(11) NOT NULL,
  `question136` int(11) NOT NULL,
  `question137` int(11) NOT NULL,
  `question138` int(11) NOT NULL,
  `question139` int(11) NOT NULL,
  `question140` int(11) NOT NULL,
  `question141` int(11) NOT NULL,
  `question142` int(11) NOT NULL,
  `question143` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `question11`, `question12`, `question13`, `question14`, `question15`, `question16`, `question17`, `question18`, `question19`, `question20`, `question21`, `question22`, `question23`, `question24`, `question25`, `question26`, `question27`, `question28`, `question29`, `question30`, `question31`, `question32`, `question33`, `question34`, `question35`, `question36`, `question37`, `question38`, `question39`, `question40`, `question41`, `question42`, `question43`, `question44`, `question45`, `question46`, `question47`, `question48`, `question49`, `question50`, `question51`, `question52`, `question53`, `question54`, `question55`, `question56`, `question57`, `question58`, `question59`, `question60`, `question61`, `question62`, `question63`, `question64`, `question65`, `question66`, `question67`, `question68`, `question69`, `question70`, `question71`, `question72`, `question73`, `question74`, `question75`, `question76`, `question77`, `question78`, `question79`, `question80`, `question81`, `question82`, `question83`, `question84`, `question85`, `question86`, `question87`, `question88`, `question89`, `question90`, `question91`, `question92`, `question93`, `question94`, `question95`, `question96`, `question97`, `question98`, `question99`, `question100`, `question101`, `question102`, `question103`, `question104`, `question105`, `question106`, `question107`, `question108`, `question109`, `question110`, `question111`, `question112`, `question113`, `question114`, `question115`, `question116`, `question117`, `question118`, `question119`, `question120`, `question121`, `question122`, `question123`, `question124`, `question125`, `question126`, `question127`, `question128`, `question129`, `question130`, `question131`, `question132`, `question133`, `question134`, `question135`, `question136`, `question137`, `question138`, `question139`, `question140`, `question141`, `question142`, `question143`) VALUES
(1, 3, 1, 3, 2, 3, 1, 2, 2, 1, 1, 1, 2, 2, 1, 3, 3, 3, 3, 2, 2, 4, 3, 1, 1, 2, 1, 2, 2, 1, 3, 2, 3, 1, 3, 3, 2, 3, 2, 1, 1, 2, 3, 1, 1, 1, 3, 2, 2, 2, 1, 1, 2, 2, 2, 1, 1, 2, 1, 1, 2, 2, 3, 1, 2, 2, 3, 2, 2, 1, 2, 1, 2, 1, 3, 2, 3, 2, 1, 1, 1, 4, 3, 1, 1, 1, 1, 1, 1, 1, 3, 2, 2, 1, 2, 2, 1, 2, 2, 2, 2, 2, 1, 3, 2, 1, 3, 2, 1, 2, 2, 3, 1, 1, 1, 2, 3, 2, 3, 2, 1, 3, 2, 3, 2, 2, 1, 1, 1, 2, 2, 2, 2, 1, 2, 2, 1, 1, 2, 2, 2, 3, 2, 1),
(2, 4, 2, 4, 1, 4, 2, 2, 4, 2, 2, 3, 2, 2, 1, 3, 3, 3, 4, 3, 2, 4, 3, 2, 2, 1, 1, 2, 2, 1, 2, 3, 3, 1, 3, 3, 2, 3, 2, 2, 2, 2, 1, 1, 1, 1, 3, 2, 1, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 2, 2, 1, 3, 2, 2, 1, 3, 1, 3, 1, 3, 2, 4, 2, 1, 1, 1, 4, 4, 1, 2, 2, 2, 2, 2, 2, 4, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 1, 1, 3, 2, 1, 3, 2, 1, 2, 2, 3, 2, 1, 1, 2, 3, 1, 4, 2, 2, 4, 1, 4, 2, 2, 1, 2, 1, 2, 2, 2, 2, 1, 2, 4, 1, 1, 2, 2, 2, 4, 2, 1),
(3, 2, 4, 2, 1, 3, 2, 4, 4, 4, 4, 2, 2, 4, 4, 3, 3, 2, 2, 2, 2, 2, 2, 1, 3, 3, 3, 3, 2, 4, 2, 1, 2, 3, 1, 2, 3, 1, 4, 2, 2, 3, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1, 2, 2, 2, 2, 1, 2, 3, 3, 3, 3, 3, 3, 2, 2, 2, 4, 4, 4, 2, 1, 1, 1, 2, 3, 2, 1, 2, 2, 3, 2, 4, 3, 3, 3, 1, 2, 3, 3, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 3, 4, 3, 1, 2, 3, 1, 2, 2, 3, 3, 1, 3, 3, 1, 2, 2, 1, 1, 4, 1, 3, 1, 3, 2, 2, 2, 4, 2, 1, 3, 2, 2, 3, 2, 1, 2, 2, 2),
(4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(5, 1, 2, 2, 1, 3, 2, 1, 2, 1, 2, 3, 1, 1, 1, 3, 3, 2, 2, 1, 1, 3, 3, 1, 1, 3, 1, 3, 1, 1, 1, 1, 1, 3, 1, 3, 1, 1, 1, 3, 1, 1, 2, 1, 2, 1, 1, 2, 2, 2, 2, 1, 1, 2, 1, 2, 1, 1, 1, 2, 1, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 4, 3, 1, 1, 3, 2, 2, 3, 1, 1, 3, 1, 3, 2, 1, 3, 2, 3, 1, 1, 2, 2, 1, 3, 2, 1, 2, 3, 1, 2, 3, 2, 2, 3, 4, 2, 2, 1, 2, 3, 1, 2, 2, 4, 2, 1, 3, 2, 2, 2, 1, 4, 3, 1, 3, 2, 2, 1, 2, 3, 1, 3, 1, 2, 1, 2, 3, 1, 2, 2),
(6, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(7, 3, 2, 4, 2, 4, 2, 1, 3, 1, 2, 4, 2, 4, 1, 2, 3, 3, 2, 3, 1, 2, 3, 1, 1, 3, 2, 3, 3, 2, 3, 1, 3, 2, 1, 3, 3, 4, 1, 1, 1, 1, 1, 2, 1, 1, 3, 1, 3, 3, 2, 2, 1, 1, 2, 2, 2, 1, 3, 2, 1, 2, 3, 1, 1, 2, 4, 1, 3, 1, 3, 1, 4, 3, 4, 3, 3, 2, 1, 1, 2, 2, 3, 1, 1, 2, 2, 1, 1, 2, 2, 2, 1, 1, 1, 1, 2, 3, 1, 3, 3, 2, 2, 1, 3, 1, 1, 1, 1, 2, 2, 2, 1, 2, 1, 3, 3, 3, 3, 2, 1, 3, 1, 3, 3, 2, 1, 1, 3, 2, 3, 3, 1, 2, 2, 1, 1, 1, 3, 3, 3, 1, 1, 1),
(8, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(9, 2, 2, 2, 4, 3, 1, 1, 1, 1, 3, 1, 3, 4, 1, 4, 1, 2, 2, 2, 3, 1, 2, 4, 3, 1, 3, 2, 2, 4, 2, 4, 2, 1, 3, 3, 1, 2, 1, 3, 1, 3, 1, 3, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1, 3, 1, 3, 1, 1, 1, 1, 1, 3, 3, 3, 1, 1, 3, 3, 3, 1, 1, 1, 1, 1, 4, 2, 2, 3, 1, 4, 3, 1, 1, 1, 3, 3, 3, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 2, 2, 1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1, 1, 3, 3, 1, 3, 1, 3, 1, 1, 1, 2, 3, 2, 1),
(10, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(11, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3),
(12, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(13, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(14, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(15, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(16, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(17, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(18, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(19, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
(20, 2, 2, 2, 2, 2, 2, 2, 3, 3, 0, 4, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `personality_types`
--

CREATE TABLE `personality_types` (
  `personality_type` char(4) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personality_types`
--

INSERT INTO `personality_types` (`personality_type`, `name`) VALUES
('ENFJ', 'Protagonist'),
('ENFP', 'Campaigner'),
('ENTJ', 'Commander'),
('ENTP', 'Debater'),
('ESFJ', 'Consul'),
('ESFP', 'Entertainer'),
('ESTJ', 'Executive'),
('ESTP', 'Entrepreneur'),
('INFJ', 'Advocate'),
('INFP', 'Mediator'),
('INTJ', 'Architect'),
('INTP', 'Logician'),
('ISFJ', 'Defender'),
('ISFP', 'Adventurer'),
('ISTJ', 'Logistician'),
('ISTP', 'Virtuoso');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(130) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `inverted` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `type`, `inverted`) VALUES
(1, 'You enjoy vibrant social events with lots of people.', 'EI', 'no'),
(2, 'You often rely on other people to be the ones to start a conversation and keep it going.', 'EI', 'yes'),
(3, 'It would be a challenge for you to spend the whole weekend all by yourself without feeling bored.', 'EI', 'no'),
(4, 'At parties and similar events you can mostly be found farther away from the action.', 'EI', 'yes'),
(5, 'When in a group of people you do not know, you have no problem jumping right into their conversation.', 'EI', 'no'),
(6, 'When at a social event, you rarely try to introduce yourself to new people and mostly talk to the ones you already know.', 'EI', 'yes'),
(7, 'You would never let yourself cry in front of others.', 'EI', 'yes'),
(8, 'You feel more drawn to places with a bustling and busy atmosphere than to more quiet and intimate ones.', 'EI', 'no'),
(9, 'The time you spend by yourself often ends up being more interesting and satisfying than the time you spend with other people.', 'EI', 'yes'),
(10, 'When in a public place, you usually stick to quieter and less crowded areas.', 'EI', 'yes'),
(11, 'You feel comfortable just walking up to someone you find interesting and striking up a conversation.', 'EI', 'no'),
(12, 'Spending time in a dynamic atmosphere with lots of people around quickly makes you feel drained and in need of a getaway.', 'EI', 'yes'),
(13, 'After a long and exhausting week, a fun party is just what you need.', 'EI', 'no'),
(14, 'You try not to draw attention to yourself', 'EI', 'yes'),
(15, 'You would enjoy attending a large party in your honor', 'EI', 'no'),
(16, 'You make an effort to be popular', 'EI', 'no'),
(17, 'Being around lots of people energizes you', 'EI', 'no'),
(18, 'You avoid being alone', 'EI', 'no'),
(19, 'You like to stay active', 'EI', 'no'),
(20, 'You have little to say', 'EI', 'yes'),
(21, 'You let other people know what you think', 'EI', 'no'),
(22, 'It is easy for you to talk to strangers', 'EI', 'no'),
(23, 'You like to spend your free time alone', 'EI', 'yes'),
(24, 'You find it difficult to express your opinions', 'EI', 'yes'),
(25, 'You get a thrill out of meeting new people', 'EI', 'no'),
(26, 'You avoid noisy crowds', 'EI', 'yes'),
(27, 'You do not like to sit still for long', 'EI', 'no'),
(28, 'You love to make new friends', 'EI', 'no'),
(29, 'You prefer quiet surroundings', 'EI', 'yes'),
(30, 'You enjoy chatting with new acquaintances', 'EI', 'no'),
(31, 'You find it challenging to make new friends', 'EI', 'yes'),
(32, 'You enjoy being the center of attention', 'EI', 'no'),
(33, 'You often spend time exploring unrealistic yet intriguing ideas.', 'SN', 'yes'),
(34, 'You are more of a detail-oriented than a big picture person.', 'SN', 'yes'),
(35, 'When looking for a movie to watch, you can spend ages browsing the catalog.', 'SN', 'yes'),
(36, 'When you sleep, your dreams tend to be bizarre and fantastical.', 'SN', 'yes'),
(37, 'You are dedicated and focused on your goals, only rarely getting sidetracked.', 'SN', 'no'),
(38, 'You like discussing different views and theories on what the world could look like in the future.', 'SN', 'yes'),
(39, 'You tend to focus on present realities rather than future possibilities.', 'SN', 'no'),
(40, 'You often drift away into daydreaming about various ideas or scenarios.', 'SN', 'yes'),
(41, 'You often contemplate the reasons for human existence or the meaning of life.', 'SN', 'yes'),
(42, 'You see yourself as more of a realist than a visionary.', 'SN', 'no'),
(43, 'You frequently find yourself wondering how technological advancement could change everyday life.', 'SN', 'yes'),
(44, 'You have a vivid imagination', 'SN', 'yes'),
(45, 'You question the wisdom of your elders', 'SN', 'yes'),
(46, 'It is important to you to follow traditions', 'SN', 'no'),
(47, 'You are ambitious', 'SN', 'yes'),
(48, 'You like to do things as they were done in the past', 'SN', 'no'),
(49, 'You have a rich fantasy life', 'SN', 'yes'),
(50, 'You are determined to achieve success in life', 'SN', 'yes'),
(51, 'You wish other people would be more logical', 'TF', 'no'),
(52, 'You enjoy imagining the future', 'SN', 'yes'),
(53, 'You like thinking about the mysteries of the universe', 'SN', 'yes'),
(54, 'You like to do things differently, even if you are not sure it will work', 'SN', 'yes'),
(55, 'You enjoy learning about scientific theories', 'SN', 'no'),
(56, 'You wonder why you are the way you are', 'SN', 'yes'),
(57, 'You appreciate the beauty of nature', 'SN', 'yes'),
(58, 'You like to finish all your chores before you do something fun', 'JP', 'no'),
(59, 'It is important to you to understand the bigger picture', 'SN', 'yes'),
(60, 'You would prefer to come up with an original solution to a problem', 'SN', 'yes'),
(61, 'You are full of new ideas', 'SN', 'yes'),
(62, 'You cannot imagine yourself dedicating your life to the study of something that you cannot see, touch, or experience.', 'SN', 'no'),
(63, 'You often think about what you should have said in a conversation long after it has taken place.', 'TF', 'yes'),
(64, 'If your friend is sad about something, your first instinct is to support them emotionally, not try to solve their problem.', 'TF', 'yes'),
(65, 'People can rarely upset you.', 'TF', 'no'),
(66, 'You rarely worry if you made a good impression on someone you met.', 'TF', 'no'),
(67, 'You are still bothered by the mistakes you made a long time ago.', 'TF', 'yes'),
(68, 'You often find it difficult to relate to people who let their emotions guide them.', 'TF', 'no'),
(69, 'You can stay calm under a lot of pressure.', 'TF', 'no'),
(70, 'In your opinion, it is sometimes OK to step on others to get ahead in life.', 'TF', 'no'),
(71, 'If you make a mistake, you tend to start doubting yourself, your abilities, or your knowledge.', 'TF', 'yes'),
(72, 'You usually lose interest in a discussion when it gets philosophical.', 'TF', 'yes'),
(73, 'When it comes to making life-changing choices, you mostly listen to your heart rather than your head.', 'TF', 'yes'),
(74, 'You usually prefer to get your revenge rather than forgive.', 'TF', 'no'),
(75, 'You often put special effort into interpreting the real meaning or the message of a song or a movie.', 'TF', 'no'),
(76, 'You rarely think back on the choices you made and wonder what you could have done differently.', 'TF', 'no'),
(77, 'You often have a hard time understanding other people’s feelings.', 'TF', 'no'),
(78, 'When you know someone thinks highly of you, you also wonder how long it will be until they become disappointed in you.', 'TF', 'yes'),
(79, 'You look after yourself first, and others come in second.', 'TF', 'no'),
(80, 'Your mood can change very quickly.', 'TF', 'yes'),
(81, 'You often talk about your own feelings and emotions.', 'TF', 'yes'),
(82, 'You rarely dwell on your regrets.', 'TF', 'no'),
(83, 'You find it easy to empathize with a person who has gone through something you never have.', 'TF', 'yes'),
(84, 'Your emotions control you more than you control them.', 'TF', 'yes'),
(85, 'You always consider how your actions might affect other people before doing something.', 'TF', 'yes'),
(86, 'You still honor the commitments you have made even if you have a change of heart.', 'TF', 'yes'),
(87, 'You feel uncomfortable when you disagree with someone', 'TF', 'yes'),
(88, 'You dislike being in competition with others', 'TF', 'yes'),
(89, 'You sympathize with the homeless', 'TF', 'yes'),
(90, 'You have trouble controlling your impulses', 'TF', 'yes'),
(91, 'You think about why people do the things they do', 'TF', 'no'),
(92, 'You forgive easily', 'TF', 'yes'),
(93, 'It is best to be totally objective when making a decision', 'TF', 'no'),
(94, 'You enjoy being there for people when they are feeling sad', 'TF', 'yes'),
(95, 'You enjoy philosophical discussions', 'TF', 'no'),
(96, 'You avoid arguing, even when you disagree', 'TF', 'yes'),
(97, 'You resist temptations', 'TF', 'no'),
(98, 'You are concerned for the welfare of elderly people', 'TF', 'yes'),
(99, 'You believe people should be punished for their mistakes', 'TF', 'no'),
(100, 'You can\'t stand when someone doesn\'t like you', 'TF', 'yes'),
(101, 'You enjoy trying to understand complicated ideas', 'TF', 'no'),
(102, 'You spend time trying to understand yourself', 'TF', 'no'),
(103, 'You forgive others’ mistakes, even when they harm you personally', 'TF', 'yes'),
(104, 'You make important decisions based on your gut feelings', 'TF', 'yes'),
(105, 'You are sensitive to the feelings of others', 'TF', 'yes'),
(106, 'You work hard to please others', 'TF', 'yes'),
(107, 'You give to people who are less fortunate than you', 'TF', 'yes'),
(108, 'Emotional people make you uncomfortable', 'TF', 'no'),
(109, 'You are concerned about others', 'TF', 'yes'),
(110, 'It is important to you to make decisions without being swayed by emotions', 'TF', 'no'),
(111, 'You enjoy examining yourself and your life', 'TF', 'no'),
(112, 'You try to avoid conflict', 'TF', 'yes'),
(113, 'You are helpful to the people around you', 'TF', 'yes'),
(114, 'Your travel plans are more likely to look like a rough list of ideas than a detailed itinerary.', 'JP', 'yes'),
(115, 'If you have to temporarily put your plans on hold, you make sure it is your top priority to get back on track as soon as possible.', 'JP', 'no'),
(116, 'You have a careful and methodical approach to life.', 'JP', 'no'),
(117, 'You often make decisions on a whim.', 'JP', 'yes'),
(118, 'You always know exactly what you want.', 'JP', 'no'),
(119, 'When starting to work on a project, you prefer to make as many decisions upfront as possible.', 'JP', 'no'),
(120, 'Even when you have planned a particular daily routine, you usually just end up doing what you feel like at any given moment.', 'JP', 'yes'),
(121, 'You have got detailed education or career development plans stretching several years into the future.', 'JP', 'no'),
(122, 'Your personal work style is closer to spontaneous bursts of energy than to organized and consistent efforts.', 'JP', 'yes'),
(123, 'You lose your belongings', 'JP', 'yes'),
(124, 'You prefer to follow a schedule', 'JP', 'no'),
(125, 'You make sure your work is finished on time', 'JP', 'no'),
(126, 'You keep your belongings in their proper place', 'JP', 'no'),
(127, 'You would rather go with the flow than have a set schedule', 'JP', 'yes'),
(128, 'You are very attentive to deadlines', 'JP', 'no'),
(129, 'You have a lot of fun', 'JP', 'yes'),
(130, 'You enjoy having a daily routine', 'JP', 'no'),
(131, 'You spend time seeking out new experiences', 'EI', 'no'),
(132, 'You are on the go', 'JP', 'yes'),
(133, 'You like to tidy up', 'JP', 'no'),
(134, 'You finish assignments before they are due', 'JP', 'no'),
(135, 'You follow your impulses', 'JP', 'yes'),
(136, 'You need support from other people', 'TF', 'yes'),
(137, 'You are not bothered by disorder', 'JP', 'yes'),
(138, 'You make plans and stick to them', 'JP', 'no'),
(139, 'You start tasks in advance, so that you have plenty of time to finish', 'JP', 'no'),
(140, 'You like to have a detailed plan before starting a task', 'JP', 'no'),
(141, 'You have trouble sticking to a routine', 'JP', 'yes'),
(142, 'You carry out your plans', 'JP', 'no'),
(143, 'You like trying out new hobbies', 'EI', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `E` int(11) NOT NULL,
  `I` int(11) NOT NULL,
  `S` int(11) NOT NULL,
  `N` int(11) NOT NULL,
  `T` int(11) NOT NULL,
  `F` int(11) NOT NULL,
  `J` int(11) NOT NULL,
  `P` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `E`, `I`, `S`, `N`, `T`, `F`, `J`, `P`) VALUES
(1, 49, 51, 54, 46, 44, 56, 53, 47),
(2, 40, 60, 53, 47, 50, 50, 46, 54),
(3, 35, 65, 52, 48, 56, 44, 46, 54),
(4, 50, 50, 50, 50, 50, 50, 50, 50),
(5, 57, 43, 59, 41, 61, 39, 48, 52),
(6, 50, 50, 50, 50, 50, 50, 50, 50),
(7, 41, 59, 54, 46, 47, 53, 47, 53),
(8, 50, 50, 50, 50, 50, 50, 50, 50),
(9, 43, 57, 59, 41, 42, 58, 57, 43),
(10, 50, 50, 50, 50, 50, 50, 50, 50),
(11, 25, 75, 25, 75, 75, 25, 25, 75),
(12, 50, 50, 50, 50, 50, 50, 50, 50),
(13, 50, 50, 50, 50, 50, 50, 50, 50),
(14, 50, 50, 50, 50, 50, 50, 50, 50),
(15, 50, 50, 50, 50, 50, 50, 50, 50),
(16, 50, 50, 50, 50, 50, 50, 50, 50),
(17, 50, 50, 50, 50, 50, 50, 50, 50),
(18, 50, 50, 50, 50, 50, 50, 50, 50),
(19, 50, 50, 50, 50, 50, 50, 50, 50),
(20, 46, 54, 50, 50, 50, 50, 50, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personality_types`
--
ALTER TABLE `personality_types`
  ADD PRIMARY KEY (`personality_type`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `answers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
