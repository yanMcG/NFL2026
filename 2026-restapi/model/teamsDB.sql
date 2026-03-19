-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2026 at 11:18 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaanfl2026`
--
CREATE DATABASE IF NOT EXISTS `gaanfl2026` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gaanfl2026`;

-- --------------------------------------------------------

--
-- Table structure for table `fixtures`
--

CREATE TABLE IF NOT EXISTS `fixtures` (
  `id` int(11) NOT NULL,
  `division` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `hteam` varchar(9) NOT NULL,
  `hteamscore` varchar(6) NOT NULL,
  `ateamscore` varchar(6) NOT NULL,
  `ateam` varchar(9) NOT NULL,
  `hgls` int(11) NOT NULL,
  `h2pts` int(11) NOT NULL,
  `h1pts` int(11) NOT NULL,
  `hteamtotal` int(11) NOT NULL,
  `agls` int(11) NOT NULL,
  `a2pts` int(11) NOT NULL,
  `a1pts` int(11) NOT NULL,
  `ateamtotal` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixtures`
--

INSERT INTO `fixtures` (`id`, `division`, `round`, `hteam`, `hteamscore`, `ateamscore`, `ateam`, `hgls`, `h2pts`, `h1pts`, `hteamtotal`, `agls`, `a2pts`, `a1pts`, `ateamtotal`) VALUES
(1117, 1, 1, 'Dublin', '0-2-16', '1-5-10', 'Donegal', 0, 2, 16, 20, 1, 5, 10, 23),
(1118, 1, 1, 'Galway', '2-2-14', '3-5-8', 'Mayo', 2, 2, 14, 24, 3, 5, 8, 27),
(1119, 1, 1, 'Kerry', '2-1-16', '1-3-14', 'Roscommon', 2, 1, 16, 24, 1, 3, 14, 23),
(1120, 1, 1, 'Monaghan', '0-3-1', '1-0-27', 'Armagh', 0, 3, 1, 7, 1, 0, 27, 30),
(1237, 2, 1, 'Meath', '0-5-9', '1-2-9', 'Derry', 0, 5, 9, 19, 1, 2, 9, 16),
(1238, 2, 1, 'Tyrone', '2-3-10', '1-4-11', 'Kildare', 2, 3, 10, 22, 1, 4, 11, 22),
(1239, 2, 1, 'Cork', '0-4-16', '2-2-13', 'Cavan', 0, 4, 16, 24, 2, 2, 13, 23),
(1240, 2, 1, 'Offaly', '0-4-11', '1-2-17', 'Louth', 0, 4, 11, 19, 1, 2, 17, 24),
(1357, 3, 1, 'Down', '2-1-17', '2-4-6', 'Clare', 2, 1, 17, 25, 2, 4, 6, 20),
(1358, 3, 1, 'Laois', '1-0-10', '0-2-9', 'Limerick', 1, 0, 10, 13, 0, 2, 9, 13),
(1359, 3, 1, 'Fermanagh', '0-1-10', '1-1-11', 'Wexford', 0, 1, 10, 12, 1, 1, 11, 16),
(1360, 3, 1, 'Westmeath', '2-2-10', '1-3-10', 'Sligo', 2, 2, 10, 20, 1, 3, 10, 19),
(1477, 4, 1, 'Antrim', '1-1-13', '2-3-10', 'Carlow', 1, 1, 13, 18, 2, 3, 10, 22),
(1478, 4, 1, 'London', '0-1-19', '0-5-11', 'Tipperary', 0, 1, 19, 21, 0, 5, 11, 21),
(1479, 4, 1, 'Wicklow', '1-4-9', '2-0-13', 'Leitrim', 1, 4, 9, 20, 2, 0, 13, 19),
(1480, 4, 1, 'Waterford', '3-2-10', '2-1-16', 'Longford', 3, 2, 10, 23, 2, 1, 16, 24),
(2113, 1, 2, 'Armagh', '0-1-18', '3-0-12', 'Galway', 0, 1, 18, 20, 3, 0, 12, 21),
(2114, 1, 2, 'Donegal', '1-3-16', '1-6-6', 'Kerry', 1, 3, 16, 25, 1, 6, 6, 21),
(2115, 1, 2, 'Mayo', '1-2-14', '2-1-7', 'Dublin', 1, 2, 14, 21, 2, 1, 7, 15),
(2116, 1, 2, 'Roscommon', '3-2-12', '1-2-12', 'Monaghan', 3, 2, 12, 25, 1, 2, 12, 19),
(2233, 2, 2, 'Derry', '1-1-13', '1-2-8', 'Tyrone', 1, 1, 13, 18, 1, 2, 8, 15),
(2234, 2, 2, 'Kildare', '3-0-17', '0-3-11', 'Offaly', 3, 0, 17, 26, 0, 3, 11, 17),
(2235, 2, 2, 'Louth', '1-1-10', '1-2-13', 'Cork', 1, 1, 10, 15, 1, 2, 13, 20),
(2236, 2, 2, 'Cavan', '1-1-16', '2-1-15', 'Meath', 1, 1, 16, 21, 2, 1, 15, 23),
(2353, 3, 2, 'Limerick', '1-3-8', '0-2-14', 'Down', 1, 3, 8, 17, 0, 2, 14, 18),
(2354, 3, 2, 'Wexford', '0-4-15', '0-0-9', 'Laois', 0, 4, 15, 23, 0, 0, 9, 9),
(2355, 3, 2, 'Clare', '1-4-9', '2-2-15', 'Westmeath', 1, 4, 9, 20, 2, 2, 15, 25),
(2356, 3, 2, 'Sligo', '1-0-19', '0-0-15', 'Fermanagh', 1, 0, 19, 22, 0, 0, 15, 15),
(2473, 4, 2, 'Carlow', '1-2-11', '2-2-5', 'Wicklow', 1, 2, 11, 18, 2, 2, 5, 15),
(2474, 4, 2, 'Leitrim', '1-1-14', '2-1-6', 'Waterford', 1, 1, 14, 19, 2, 1, 6, 14),
(2475, 4, 2, 'Longford', '2-0-8', '0-0-19', 'London', 2, 0, 8, 14, 0, 0, 19, 19),
(2476, 4, 2, 'Tipperary', '1-0-13', '1-2-5', 'Antrim', 1, 0, 13, 16, 1, 2, 5, 12),
(3109, 1, 3, 'Kerry', '2-2-13', '3-4-6', 'Galway', 2, 2, 13, 23, 3, 4, 6, 23),
(3110, 1, 3, 'Dublin', '1-2-14', '0-2-13', 'Monaghan', 1, 2, 14, 21, 0, 2, 13, 17),
(3111, 1, 3, 'Donegal', '1-1-17', '0-1-12', 'Mayo', 1, 1, 17, 22, 0, 1, 12, 14),
(3112, 1, 3, 'Roscommon', '3-4-10', '0-4-16', 'Armagh', 3, 4, 10, 27, 0, 4, 16, 24),
(3229, 2, 3, 'Meath', '1-4-12', '0-5-12', 'Louth', 1, 4, 12, 23, 0, 5, 12, 22),
(3230, 2, 3, 'Kildare', '1-2-14', '3-2-11', 'Derry', 1, 2, 14, 21, 3, 2, 11, 24),
(3231, 2, 3, 'Offaly', '0-2-15', '3-0-15', 'Cork', 0, 2, 15, 19, 3, 0, 15, 24),
(3232, 2, 3, 'Tyrone', '2-1-21', '1-1-12', 'Cavan', 2, 1, 21, 29, 1, 1, 12, 17),
(3349, 3, 3, 'Down', '2-0-15', '1-2-11', 'Westmeath', 2, 0, 15, 21, 1, 2, 11, 18),
(3350, 3, 3, 'Laois', '0-3-12', '1-1-6', 'Sligo', 0, 3, 12, 18, 1, 1, 6, 11),
(3351, 3, 3, 'Fermanagh', '0-3-12', '2-2-14', 'Clare', 0, 3, 12, 18, 2, 2, 14, 24),
(3352, 3, 3, 'Limerick', '1-3-9', '1-2-10', 'Wexford', 1, 3, 9, 18, 1, 2, 10, 17),
(3469, 4, 3, 'Waterford', '0-1-7', '0-1-12', 'Wicklow', 0, 1, 7, 9, 0, 1, 12, 14),
(3470, 4, 3, 'London', '1-3-14', '2-6-7', 'Leitrim', 1, 3, 14, 23, 2, 6, 7, 25),
(3471, 4, 3, 'Antrim', '1-2-10', '1-6-15', 'Longford', 1, 2, 10, 17, 1, 6, 15, 30),
(3472, 4, 3, 'Tipperary', '1-2-10', '1-2-13', 'Carlow', 1, 2, 10, 17, 1, 2, 13, 20),
(4105, 1, 4, 'Dublin', '1-2-6', '1-3-10', 'Kerry', 1, 2, 6, 13, 1, 3, 10, 19),
(4106, 1, 4, 'Galway', '0-3-15', '2-2-12', 'Roscommon', 0, 3, 15, 21, 2, 2, 12, 22),
(4107, 1, 4, 'Monaghan', '2-1-9', '2-6-18', 'Mayo', 2, 1, 9, 17, 2, 6, 18, 36),
(4108, 1, 4, 'Armagh', '0-1-17', '1-4-12', 'Donegal', 0, 1, 17, 19, 1, 4, 12, 23),
(4225, 2, 4, 'Derry', '2-5-15', '0-1-6', 'Offaly', 2, 5, 15, 31, 0, 1, 6, 8),
(4226, 2, 4, 'Cork', '1-3-17', '1-2-17', 'Meath', 1, 3, 17, 26, 1, 2, 17, 24),
(4227, 2, 4, 'Louth', '1-3-9', '0-0-13', 'Tyrone', 1, 3, 9, 18, 0, 0, 13, 13),
(4228, 2, 4, 'Cavan', '0-3-10', '0-1-11', 'Kildare', 0, 3, 10, 16, 0, 1, 11, 13),
(4345, 3, 4, 'Sligo', '1-1-16', '1-4-7', 'Limerick', 1, 1, 16, 21, 1, 4, 7, 18),
(4346, 3, 4, 'Westmeath', '1-4-18', '2-3-5', 'Fermanagh', 1, 4, 18, 29, 2, 3, 5, 17),
(4347, 3, 4, 'Clare', '0-4-16', '2-3-9', 'Laois', 0, 4, 16, 24, 2, 3, 9, 21),
(4348, 3, 4, 'Wexford', '1-7-5', '1-8-13', 'Down', 1, 7, 5, 22, 1, 8, 13, 32),
(4465, 4, 4, 'Carlow', '1-5-16', '0-2-11', 'Waterford', 1, 5, 16, 29, 0, 2, 11, 15),
(4466, 4, 4, 'Wicklow', '2-4-18', '0-2-12', 'London', 2, 4, 18, 32, 0, 2, 12, 16),
(4467, 4, 4, 'Leitrim', '1-6-3', '2-4-12', 'Antrim', 1, 6, 3, 18, 2, 4, 12, 26),
(4468, 4, 4, 'Longford', '1-0-15', '0-2-14', 'Tipperary', 1, 0, 15, 18, 0, 2, 14, 18),
(5101, 1, 5, 'Donegal', '1-2-13', '0-1-18', 'Galway', 1, 2, 13, 20, 0, 1, 18, 20),
(5102, 1, 5, 'Kerry', '1-1-16', '0-0-7', 'Monaghan', 1, 1, 16, 21, 0, 0, 7, 7),
(5103, 1, 5, 'Mayo', '2-4-9', '0-3-16', 'Armagh', 2, 4, 9, 23, 0, 3, 16, 22),
(5104, 1, 5, 'Roscommon', '2-1-5', '1-5-11', 'Dublin', 2, 1, 5, 13, 1, 5, 11, 24),
(5221, 2, 5, 'Cavan', '1-1-10', '1-4-14', 'Louth', 1, 1, 10, 15, 1, 4, 14, 25),
(5222, 2, 5, 'Tyrone', '0-2-24', '2-1-11', 'Offaly', 0, 2, 24, 28, 2, 1, 11, 19),
(5223, 2, 5, 'Kildare', '0-2-6', '1-2-17', 'Meath', 0, 2, 6, 10, 1, 2, 17, 24),
(5224, 2, 5, 'Derry', '1-2-27', '0-2-10', 'Cork', 1, 2, 27, 34, 0, 2, 10, 14),
(5341, 3, 5, 'Down', '1-0-18', '1-1-13', 'Fermanagh', 1, 0, 18, 21, 1, 1, 13, 18),
(5342, 3, 5, 'Laois', '3-1-14', '1-0-13', 'Westmeath', 3, 1, 14, 25, 1, 0, 13, 16),
(5343, 3, 5, 'Limerick', '1-2-8', '1-3-15', 'Clare', 1, 2, 8, 15, 1, 3, 15, 24),
(5344, 3, 5, 'Wexford', '0-3-10', '1-0-7', 'Sligo', 0, 3, 10, 16, 1, 0, 7, 10),
(5461, 4, 5, 'Antrim', '2-4-10', '1-3-8', 'Wicklow', 2, 4, 10, 24, 1, 3, 8, 17),
(5462, 4, 5, 'London', '3-1-14', '2-0-12', 'Waterford', 3, 1, 14, 25, 2, 0, 12, 18),
(5463, 4, 5, 'Longford', '1-3-13', '1-2-10', 'Carlow', 1, 3, 13, 22, 1, 2, 10, 17),
(5464, 4, 5, 'Tipperary', '1-3-12', '0-2-4', 'Leitrim', 1, 3, 12, 21, 0, 2, 4, 8),
(6181, 1, 6, 'Kerry', '0-0-0', '0-0-0', 'Mayo', 0, 0, 0, 0, 0, 0, 0, 0),
(6182, 1, 6, 'Dublin', '0-0-0', '0-0-0', 'Armagh', 0, 0, 0, 0, 0, 0, 0, 0),
(6183, 1, 6, 'Roscommon', '0-0-0', '0-0-0', 'Donegal', 0, 0, 0, 0, 0, 0, 0, 0),
(6184, 1, 6, 'Monaghan', '0-0-0', '0-0-0', 'Galway', 0, 0, 0, 0, 0, 0, 0, 0),
(6289, 2, 6, 'Cork', '0-0-0', '0-0-0', 'Kildare', 0, 0, 0, 0, 0, 0, 0, 0),
(6290, 2, 6, 'Meath', '0-0-0', '0-0-0', 'Tyrone', 0, 0, 0, 0, 0, 0, 0, 0),
(6291, 2, 6, 'Offaly', '0-0-0', '0-0-0', 'Cavan', 0, 0, 0, 0, 0, 0, 0, 0),
(6292, 2, 6, 'Louth', '0-0-0', '0-0-0', 'Derry', 0, 0, 0, 0, 0, 0, 0, 0),
(6397, 3, 6, 'Fermanagh', '0-0-0', '0-0-0', 'Laois', 0, 0, 0, 0, 0, 0, 0, 0),
(6398, 3, 6, 'Clare', '0-0-0', '0-0-0', 'Wexford', 0, 0, 0, 0, 0, 0, 0, 0),
(6399, 3, 6, 'Sligo', '0-0-0', '0-0-0', 'Down', 0, 0, 0, 0, 0, 0, 0, 0),
(6400, 3, 6, 'Westmeath', '0-0-0', '0-0-0', 'Limerick', 0, 0, 0, 0, 0, 0, 0, 0),
(6505, 4, 6, 'Carlow', '0-0-0', '0-0-0', 'London', 0, 0, 0, 0, 0, 0, 0, 0),
(6506, 4, 6, 'Waterford', '0-0-0', '0-0-0', 'Antrim', 0, 0, 0, 0, 0, 0, 0, 0),
(6507, 4, 6, 'Leitrim', '0-0-0', '0-0-0', 'Longford', 0, 0, 0, 0, 0, 0, 0, 0),
(6508, 4, 6, 'Wicklow', '0-0-0', '0-0-0', 'Tipperary', 0, 0, 0, 0, 0, 0, 0, 0),
(7185, 1, 7, 'Armagh', '0-0-0', '0-0-0', 'Kerry', 0, 0, 0, 0, 0, 0, 0, 0),
(7186, 1, 7, 'Galway', '0-0-0', '0-0-0', 'Dublin', 0, 0, 0, 0, 0, 0, 0, 0),
(7187, 1, 7, 'Mayo', '0-0-0', '0-0-0', 'Roscommon', 0, 0, 0, 0, 0, 0, 0, 0),
(7188, 1, 7, 'Monaghan', '0-0-0', '0-0-0', 'Donegal', 0, 0, 0, 0, 0, 0, 0, 0),
(7293, 2, 7, 'Derry', '0-0-0', '0-0-0', 'Cavan', 0, 0, 0, 0, 0, 0, 0, 0),
(7294, 2, 7, 'Kildare', '0-0-0', '0-0-0', 'Louth', 0, 0, 0, 0, 0, 0, 0, 0),
(7295, 2, 7, 'Offaly', '0-0-0', '0-0-0', 'Meath', 0, 0, 0, 0, 0, 0, 0, 0),
(7296, 2, 7, 'Tyrone', '0-0-0', '0-0-0', 'Cork', 0, 0, 0, 0, 0, 0, 0, 0),
(7401, 3, 7, 'Down', '0-0-0', '0-0-0', 'Laois', 0, 0, 0, 0, 0, 0, 0, 0),
(7402, 3, 7, 'Limerick', '0-0-0', '0-0-0', 'Fermanagh', 0, 0, 0, 0, 0, 0, 0, 0),
(7403, 3, 7, 'Sligo', '0-0-0', '0-0-0', 'Clare', 0, 0, 0, 0, 0, 0, 0, 0),
(7404, 3, 7, 'Wexford', '0-0-0', '0-0-0', 'Westmeath', 0, 0, 0, 0, 0, 0, 0, 0),
(7509, 4, 7, 'Antrim', '0-0-0', '0-0-0', 'London', 0, 0, 0, 0, 0, 0, 0, 0),
(7510, 4, 7, 'Carlow', '0-0-0', '0-0-0', 'Leitrim', 0, 0, 0, 0, 0, 0, 0, 0),
(7511, 4, 7, 'Longford', '0-0-0', '0-0-0', 'Wicklow', 0, 0, 0, 0, 0, 0, 0, 0),
(7512, 4, 7, 'Tipperary', '0-0-0', '0-0-0', 'Waterford', 0, 0, 0, 0, 0, 0, 0, 0),
(8000, 1, 8, 'Div11st', '0-0-0', '0-0-0', 'Div12nd', 0, 0, 0, 0, 0, 0, 0, 0),
(8001, 2, 8, 'Div21st', '0-0-0', '0-0-0', 'Div22nd', 0, 0, 0, 0, 0, 0, 0, 0),
(8002, 3, 8, 'Div31st', '0-0-0', '0-0-0', 'Div32nd', 0, 0, 0, 0, 0, 0, 0, 0),
(8003, 4, 8, 'Div41st', '0-0-0', '0-0-0', 'Div42nd', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE IF NOT EXISTS `managers` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `team` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `name`, `team`) VALUES
('1001', 'Andy Moran', 'Mayo'),
('1002', 'Brian Flanagan', 'Kildare'),
('1003', 'Ciaran Meenagh', 'Derry'),
('1004', 'Conor Laverty', 'Down'),
('1005', 'Declan Bonner', 'Fermanagh'),
('1006', 'Dermot McCabe', 'Cavan'),
('1007', 'Dessie Sloyan & Eamonn OHara', 'Sligo'),
('1008', 'Ephie Fitzgerald', 'Waterford'),
('1009', 'Gabriel Bannigan', 'Monaghan'),
('1010', 'Gavin Devlin', 'Louth'),
('1011', 'Ger Brennan', 'Dublin'),
('1012', 'Jack OConnor', 'Kerry'),
('1013', 'Jim McGuinness', 'Donegal'),
('1014', 'Jimmy Lee', 'Limerick'),
('1015', 'Joe Murphy', 'Carlow'),
('1016', 'John Cleary', 'Cork'),
('1017', 'John Hegarty', 'Wexford'),
('1018', 'Justin McNulty', 'Laois'),
('1019', 'Kieran McGeeney', 'Armagh'),
('1020', 'Malachy ORourke', 'Tyrone'),
('1021', 'Mark Doran', 'Antrim'),
('1022', 'Mark Dowd', 'Roscommon'),
('1023', 'Mark McHugh', 'Westmeath'),
('1024', 'Michael Maher', 'London'),
('1025', 'Mickey Harte & Declan Kelly', 'Offaly'),
('1026', 'Mike Solan', 'Longford'),
('1027', 'Niall Fitzgerald', 'Tipperary'),
('1028', 'Oisin McConville', 'Wicklow'),
('1029', 'Padraic Joyce', 'Galway'),
('1030', 'Paul Madden', 'Clare'),
('1031', 'Robbie Brennan', 'Meath'),
('1032', 'Ronan McGinley', 'New York'),
('1033', 'Steven Poacher', 'Leitrim');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` varchar(29) NOT NULL,
  `name` varchar(22) NOT NULL,
  `team` varchar(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `team`) VALUES
('aidan-oshea_mayo', 'Aidan OShea', 'Mayo'),
('andrew-murnin_armagh', 'Andrew Murnin', 'Armagh'),
('barry-mccambridge_armagh', 'Barry McCambridge', 'Armagh'),
('barry-mcnulty_leitrim', 'Barry McNulty', 'Leitrim'),
('ben-loakman_kildare', 'Ben Loakman', 'Kildare'),
('ben-ocarroll_roscommon', 'Ben OCarroll', 'Roscommon'),
('brendan-mccole_donegal', 'Brendan McCole', 'Donegal'),
('brendan-rogers_derry', 'Brendan Rogers', 'Derry'),
('brian-howard_dublin', 'Brian Howard', 'Dublin'),
('brian-kennedy_tyrone', 'Brian Kennedy', 'Tyrone'),
('brian-mcloughlin_kildare', 'Brian McLoughlin', 'Kildare'),
('brian-o-beaglaoich_kerry', 'Brian O Beaglaioch', 'Kerry'),
('chris-ogjones_cork', 'Chris Og Jones', 'Cork'),
('ciaran-caulfield_meath', 'Ciaran Caulfield', 'Meath'),
('ciaran-kilkenny_dublin', 'Ciaran Kilkenny', 'Dublin'),
('ciaran-mulhern_galway', 'Ciaran Mulhern', 'Galway'),
('ciaran-thompson_donegal', 'Ciaran Thompson', 'Donegal'),
('cillian-mcdaid_galway', 'Cillian McDaid', 'Galway'),
('cillian-oconnor_mayo', 'Cillian OConnor', 'Mayo'),
('colm-basquel_dublin', 'Colm Basquel', 'Dublin'),
('con-ocallaghan_dublin', 'Con OCallaghan', 'Dublin'),
('conn-kilpatrick_tyrone', 'Conn Kilpatrick', 'Tyrone'),
('conor-glass_derry', 'Conor Glass', 'Derry'),
('conor-mccarthy_monaghan', 'Conor McCarthy', 'Monaghan'),
('conor-mccluskey_derry', 'Conor McCluskey', 'Derry'),
('conor-odonnell_donegal', 'Conor ODonnell', 'Donegal'),
('conor-turbitt_armagh', 'Conor Turbitt', 'Armagh'),
('cormac-costello_dublin', 'Cormac Costello', 'Dublin'),
('craig-lennon_louth', 'Craig Lennon', 'Louth'),
('daire-cregg_roscommon', 'Daire Cregg', 'Roscommon'),
('daire-obaoill_donegal', 'Daire OBoaill', 'Donegal'),
('damien-comer_galway', 'Damien Comer', 'Galway'),
('daniel-guinness_down', 'Daniel Guinness', 'Down'),
('darragh-canavan_tyrone', 'Darragh Canavan', 'Tyrone'),
('darragh-kirwin_kildare', 'Darragh Kirwin', 'Kildare'),
('darragh-mcmullan_armagh', 'Darragh McMullan', 'Armagh'),
('darren-mccurry_tyrone', 'Darren McCurry', 'Tyrone'),
('david-clifford_kerry', 'David Clifford', 'Kerry'),
('dean-healy_wicklow', 'Dean Healy', 'Wicklow'),
('dessie-ward_monaghan', 'Dessie Ward', 'Monaghan'),
('diarmuid-murtagh_roscommon', 'Diarmuid Murtagh', 'Roscommon'),
('dylan-mchugh_galway', 'Dylan McHugh', 'Galway'),
('enda-smith_roscommon', 'Enda Smith', 'Roscommon'),
('eoin-mcelholm_tyrone', 'Eoin McElholm', 'Tyrone'),
('ethan-doherty_derry', 'Ethan Doherty', 'Derry'),
('ethan-rafferty_armagh', 'Ethan Rafferty', 'Armagh'),
('finnbarr-roarty_donegal', 'Finnbarr Roarty', 'Donegal'),
('gareth-mckinless_derry', 'Gareth McKinless', 'Derry'),
('gavin-white_kerry', 'Gavin White', 'Kerry'),
('gearoid-mckiernan_cavan', 'Gearoid McKiernan', 'Cavan'),
('ian-corbitt_limerick', 'Ian Corbitt', 'Limerick'),
('jack-carney_mayo', 'Jack Carney', 'Mayo'),
('jack-coyne_mayo', 'Jack Coyne', 'Mayo'),
('jack-flynn_meath', 'Jack Flynn', 'Meath'),
('james-naughton_limerick', 'James Naughton', 'Limerick'),
('jarly-og-burns_armagh', 'Jarly Og Burns', 'Armagh'),
('jason-foley_kerry', 'Jason Foley', 'Kerry'),
('joe-oconnor_kerry', 'Joe OConnor', 'Kerry'),
('john-maher_galway', 'John Maher', 'Galway'),
('johnny-mcgrath_galway', 'Johnny McGrath', 'Galway'),
('jordan-morris_meath', 'Jordan Morris', 'Meath'),
('kevin-feely_kildare', 'Kevin Feely', 'Kildare'),
('kieran-mcgeary_tyrone', 'Kieran McGeary', 'Tyrone'),
('lee-gannon_dublin', 'Lee Gannon', 'Dublin'),
('luke-loughlin_westmeath', 'Luke Loughlin', 'Westmeath'),
('mark-jackson_wicklow', 'Mark Jackson', 'Wicklow'),
('matthew-costello_meath', 'Matthew Costello', 'Meath'),
('matthew-thompson_galway', 'Matthew Thompson', 'Galway'),
('mattie-donnelly_tyrone', 'Mattie Donnelly', 'Tyrone'),
('michael-bannigan_monaghan', 'Michael Bannigan', 'Monaghan'),
('michael-langan_donegal', 'Michael Langan', 'Donegal'),
('michael-mcckernan_tyrone', 'Michael McKernan', 'Tyrone'),
('michael-murphy_donegal', 'Michael Murphy', 'Donegal'),
('mike-breen_kerry', 'Mike Breen', 'Kerry'),
('niall-devlin_tyrone', 'Niall Devlin', 'Tyrone'),
('niall-morgan_tyrone', 'Niall Morgan', 'Tyrone'),
('niall-scully_dublin', 'Niall Scully', 'Dublin'),
('odhran-murdock_down', 'Odhran Murdock', 'Down'),
('oisin-conaty_armagh', 'Oisin Conaty', 'Armagh'),
('oisin-gallen_donegal', 'Oisin Gallen', 'Donegal'),
('oisin-oneill_armagh', 'Oisin O\'Neill', 'Armagh'),
('paddy-durcan_mayo', 'Paddy Durcan', 'Mayo'),
('paddy-small_dublin', 'Paddy Small', 'Dublin'),
('padraig-hampsey_tyrone', 'Padraig Hampsey', 'Tyrone'),
('pat-havern_down', 'Pat Havern', 'Down'),
('paudie-clifford_kerry', 'Paudie Clifford', 'Kerry'),
('paul-conroy_galway', 'Paul Conroy', 'Galway'),
('paul-murphy_kerry', 'Paul Murphy', 'Kerry'),
('peadar-mogan_donegal', 'Peadar Mogan', 'Donegal'),
('peadar-o-cofaigh-byrne_dublin', 'Peadar O Cofaigh Byrne', 'Dublin'),
('rob-finnerty_galway', 'Rob Finnerty', 'Galway'),
('rob-hennelly_mayo', 'Rob Hennelly', 'Mayo'),
('rory-beggan_monaghan', 'Rory Beggan', 'Monaghan'),
('rory-grugan_armagh', 'Rory Grugan', 'Armagh'),
('ross-mcquillan_armagh', 'Ross McQuillan', 'Armagh'),
('ruairi-kinsella_meath', 'Ruairi Kinsella', 'Meath'),
('ryan-burns_louth', 'Ryan Burns', 'Louth'),
('ryan-mchugh_donegal', 'Ryan McHugh', 'Donegal'),
('ryan-odonoghue_mayo', 'Ryan O\'Donoghue', 'Mayo'),
('sam-callinan_mayo', 'Sam Callinan', 'Mayo'),
('sam-mccartan_westmeath', 'Sam McCartan', 'Westmeath'),
('sam-mulroy_louth', 'Sam Mulroy', 'Louth'),
('sean-bugler_dublin', 'Sean Bugler', 'Dublin'),
('sean-kelly_galway', 'Sean Kelly', 'Galway'),
('sean-nolan_wexford', 'Sean Nolan', 'Wexford'),
('sean-oshea_kerry', 'Sean OShea', 'Kerry'),
('sean-rafferty_meath', 'Sean Rafferty', 'Meath'),
('shane-mcgrath_galway', 'Shane McGrath', 'Galway'),
('shane-mcguigan_derry', 'Shane McGuigan', 'Derry'),
('shane-odonnell_donegal', 'Shane ODonnell', 'Donegal'),
('shane-ryan_kerry', 'Shane Ryan', 'Kerry'),
('shane-walsh_galway', 'Shane Walsh', 'Galway'),
('stephen-ohanlon_monaghan', 'Stephen OHanlon', 'Monaghan'),
('steven-sherlock_cork', 'Steven Sherlock', 'Cork'),
('tom-osullivan_kerry', 'Tom OSullivan', 'Kerry'),
('tommy-walsh_cork', 'Tommy Walsh', 'Cork');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(9) NOT NULL,
  `rgb` varchar(13) NOT NULL,
  `r` int(11) NOT NULL,
  `g` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `latitude` decimal(7,4) NOT NULL,
  `longitude` decimal(7,4) NOT NULL,
  `powerrank` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `rgb`, `r`, `g`, `b`, `latitude`, `longitude`, `powerrank`) VALUES
(1, 'Antrim', '255, 194, 14', 255, 194, 14, '54.5973', '-5.9301', 0),
(2, 'Armagh', '255, 130, 0', 255, 130, 0, '54.4470', '-6.3870', 0),
(3, 'Carlow', '228, 0, 43', 228, 0, 43, '52.8408', '-6.9261', 0),
(4, 'Cavan', '0, 51, 160', 0, 51, 160, '53.9908', '-7.3606', 0),
(5, 'Clare', '255, 205, 0', 255, 205, 0, '52.8470', '-8.9860', 0),
(6, 'Cork', '228, 0, 43', 228, 0, 43, '51.8985', '-8.4756', 0),
(7, 'Derry', '228, 0, 43', 228, 0, 43, '54.9966', '-7.3086', 0),
(8, 'Donegal', '0, 122, 51', 0, 122, 51, '54.9503', '-7.7344', 0),
(9, 'Down', '228, 0, 43', 228, 0, 43, '54.6648', '-5.6680', 0),
(10, 'Dublin', '110, 193, 228', 110, 193, 228, '53.3498', '-6.2603', 0),
(11, 'Fermanagh', '0, 122, 51', 0, 122, 51, '54.3448', '-7.6384', 0),
(12, 'Galway', '122, 0, 60', 122, 0, 60, '53.2707', '-9.0568', 0),
(13, 'Kerry', '0, 122, 51', 0, 122, 51, '52.2704', '-9.7026', 0),
(14, 'Kildare', '0, 105, 99', 0, 105, 99, '53.2159', '-6.6669', 0),
(15, 'Laois', '0, 61, 165', 0, 61, 165, '53.0344', '-7.2998', 0),
(16, 'Leitrim', '0, 122, 51', 0, 122, 51, '53.9469', '-8.0901', 0),
(17, 'Limerick', '0, 122, 51', 0, 122, 51, '52.6638', '-8.6267', 0),
(18, 'London', '0, 103, 71', 0, 103, 71, '54.9966', '-7.3086', 0),
(19, 'Longford', '0, 51, 160', 0, 51, 160, '53.7274', '-7.7930', 0),
(20, 'Louth', '228, 0, 43', 228, 0, 43, '53.7179', '-6.3561', 0),
(21, 'Mayo', '0, 122, 51', 0, 122, 51, '54.1143', '-9.1535', 0),
(22, 'Meath', '0, 103, 71', 0, 103, 71, '53.6528', '-6.6814', 0),
(23, 'Monaghan', '0, 61, 165', 0, 61, 165, '54.2492', '-6.9683', 0),
(24, 'Offaly', '0, 122, 51', 0, 122, 51, '53.2734', '-7.4889', 0),
(25, 'Roscommon', '255, 209, 0', 255, 209, 0, '53.6279', '-8.1890', 0),
(26, 'Sligo', '0, 0, 0', 0, 0, 0, '54.2766', '-8.4761', 0),
(27, 'Tipperary', '0, 51, 160', 0, 51, 160, '52.3558', '-7.7031', 0),
(28, 'Tyrone', '228, 0, 43', 228, 0, 43, '54.6000', '-7.3000', 0),
(29, 'Waterford', '0, 61, 165', 0, 61, 165, '52.2593', '-7.1101', 0),
(30, 'Westmeath', '122, 0, 60', 122, 0, 60, '53.4239', '-7.9407', 0),
(31, 'Wexford', '90, 45, 129', 90, 45, 129, '52.3369', '-6.4633', 0),
(32, 'Wicklow', '0, 61, 165', 0, 61, 165, '53.2044', '-6.1090', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
('1', 'thomas.devine@atu.ie', 'letmein');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
