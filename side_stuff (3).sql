-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2020 at 04:24 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `side_stuff`
--
CREATE DATABASE IF NOT EXISTS `side_stuff` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci;
USE `side_stuff`;

-- --------------------------------------------------------

--
-- Table structure for table `crafting_stations`
--
-- Creation: Feb 19, 2020 at 11:58 AM
-- Last update: Feb 19, 2020 at 01:12 PM
--

CREATE TABLE `crafting_stations` (
  `ID` int(11) NOT NULL,
  `Name` varchar(111) COLLATE utf8mb4_swedish_ci NOT NULL,
  `MaxLevel` int(11) NOT NULL,
  `Used_in_crafting` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `crafting_stations`
--

INSERT INTO `crafting_stations` (`ID`, `Name`, `MaxLevel`, `Used_in_crafting`) VALUES
(1, 'Booze generator', 1, 1),
(2, 'Intelligence center', 3, 1),
(3, 'Lavatory', 3, 1),
(4, 'Medstation', 3, 1),
(5, 'Nutrition unit', 3, 1),
(6, 'Water collector', 3, 1),
(7, 'Workbench', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eft`
--
-- Creation: Jan 30, 2020 at 01:49 PM
--

CREATE TABLE `eft` (
  `ID` int(11) NOT NULL,
  `one` int(11) NOT NULL,
  `two` int(11) NOT NULL,
  `three` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `eft`
--

INSERT INTO `eft` (`ID`, `one`, `two`, `three`) VALUES
(1, 0, 0, 0),
(2, 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hideout_crafting`
--
-- Creation: Feb 19, 2020 at 01:10 PM
-- Last update: Feb 19, 2020 at 03:31 PM
--

CREATE TABLE `hideout_crafting` (
  `ID` int(11) NOT NULL,
  `Output` int(11) NOT NULL,
  `AmountO` int(11) NOT NULL,
  `Item1` int(11) NOT NULL,
  `Amount1` int(11) NOT NULL,
  `Item2` int(11) DEFAULT NULL,
  `Amount2` int(11) DEFAULT NULL,
  `Item3` int(11) DEFAULT NULL,
  `Amount3` int(11) DEFAULT NULL,
  `Item4` int(11) DEFAULT NULL,
  `Amount4` int(11) DEFAULT NULL,
  `Time` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `Station_ID` int(11) NOT NULL,
  `Station_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `hideout_crafting`
--

INSERT INTO `hideout_crafting` (`ID`, `Output`, `AmountO`, `Item1`, `Amount1`, `Item2`, `Amount2`, `Item3`, `Amount3`, `Item4`, `Amount4`, `Time`, `Station_ID`, `Station_level`) VALUES
(1, 138, 1, 139, 2, 140, 1, NULL, NULL, NULL, NULL, '3:30', 1, 1),
(2, 82, 3, 145, 1, 146, 1, 147, 1, NULL, NULL, '34:13', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--
-- Creation: Feb 19, 2020 at 11:31 AM
-- Last update: Mar 13, 2020 at 03:22 PM
--

CREATE TABLE `items` (
  `ID` int(11) NOT NULL,
  `Item_name` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Type` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Grid_size` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `Size` int(45) DEFAULT NULL,
  `Quest_item` tinyint(1) NOT NULL,
  `Quest_raid_amount` int(45) DEFAULT NULL,
  `Quest_buy_amount` int(45) DEFAULT NULL,
  `Average_value` int(45) DEFAULT NULL,
  `Price_slot` int(45) DEFAULT NULL,
  `Image_url` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `traders_price` int(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`ID`, `Item_name`, `Type`, `Grid_size`, `Size`, `Quest_item`, `Quest_raid_amount`, `Quest_buy_amount`, `Average_value`, `Price_slot`, `Image_url`, `traders_price`) VALUES
(1, 'Crickent lighter', 'Generic loot', '1x1', 1, 0, NULL, NULL, 24, 16, 'Cricket_lighter_Icon', 10),
(2, 'Florder with intelligence', 'Info item', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'FolderWithIntelligence_Icon', NULL),
(4, 'Matches', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Dogtag USEC', 'Misc', '1x1', 1, 1, NULL, 10, NULL, NULL, NULL, NULL),
(6, 'Dogtag BEAR', 'Misc', '1x1', 1, 1, NULL, 10, NULL, NULL, NULL, NULL),
(7, 'Paracord', 'Generic loot', '2x1', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Corrugated hose', 'Generic loot', '2x1', 2, 1, 6, NULL, NULL, NULL, NULL, NULL),
(9, 'A pack of nails', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'A pack of screws', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Screw nut', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Bolts', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Bolts', NULL),
(13, 'Piece of plexiglas', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Plexiglas', NULL),
(14, 'Zibbo lighter', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Zibbo', NULL),
(15, 'Apollon Soyuz cigarettes', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Apollon', NULL),
(16, 'Malboro Cigarettes', 'Generic loot', '1x1', 1, 1, 7, NULL, NULL, NULL, 'Malboro', NULL),
(17, 'Wilston Cigarettes', 'Generic loot', '1x1', 1, 1, 7, NULL, NULL, NULL, 'Wilston', NULL),
(18, 'Strike Cigarettes', 'Generic loot', '1x1', 1, 1, 7, NULL, NULL, NULL, 'Strike', NULL),
(19, 'Horse figurine', 'Generic loot', '1x2', 2, 1, NULL, 0, NULL, NULL, 'Horse', NULL),
(20, 'Cat figurine', 'Generic loot', '3x1', 3, 1, NULL, 2, NULL, NULL, 'Cat', NULL),
(21, 'Bronze lion', 'Generic loot', '3x2', 6, 1, NULL, 3, NULL, NULL, 'Lion', NULL),
(22, 'Wooden clock', 'Generic loot', '2x2', 4, 0, NULL, NULL, NULL, NULL, 'Woodenclock', NULL),
(23, 'Gas analyzer', 'Generic loot', '1x2', 2, 1, 1, 3, NULL, NULL, 'Gas_analyzer', NULL),
(24, 'Capacitors', 'Genericc loot', '1x1', 1, 1, 5, NULL, NULL, NULL, 'Capacitors', NULL),
(25, 'Wires', 'Generic loot', '1x1', 1, 1, 5, NULL, NULL, NULL, 'Wires', NULL),
(26, 'WD-40 400ml', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'WD400', NULL),
(27, 'WD-40 100ml', 'Generic loot', '1x1', 1, 1, 1, NULL, NULL, NULL, 'WD100', NULL),
(28, 'AA Battery', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'AAbat', NULL),
(29, 'D Size Battery', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Dbat', NULL),
(30, 'Car battery', 'Generic loot', '3x2', 6, 1, 4, NULL, NULL, NULL, 'Carbat', NULL),
(31, 'Spark plug', 'Generic loot', '1x1', 1, 1, 8, NULL, NULL, NULL, 'SparkPlug', NULL),
(32, 'ES lamp', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'ESlamp', NULL),
(33, 'Ultraviolet lamp', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'UVlamp', NULL),
(34, 'Geiger-Muller counter', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'GeigerCounter', NULL),
(35, 'CPU fan', 'Generic loot', '1x1', 1, 1, NULL, 7, NULL, NULL, 'CPUfan', NULL),
(36, 'PC CPU', 'Generic loot', '1x1', 1, 1, 3, NULL, NULL, NULL, 'CPU', NULL),
(37, 'DVD drive', 'Generic loot', '2x1', 2, 0, NULL, NULL, NULL, NULL, 'DVD', NULL),
(38, 'RAM', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'RAM', NULL),
(39, 'Power supply unit', 'Generic loot', '2x2', 4, 0, NULL, NULL, NULL, NULL, 'PSU', NULL),
(40, 'Printed circuit board', 'Generic loot', '1x1', 1, 1, 3, 3, NULL, NULL, 'PCB', NULL),
(41, 'Graphics card', 'Generic loot', '2x1', 2, 1, NULL, 7, NULL, NULL, 'GPU', NULL),
(42, 'Powercord', 'Generic loot', '2x1', 2, 1, NULL, 3, NULL, NULL, 'Powercord', NULL),
(43, 'Insulating tape', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'BlueTape', NULL),
(44, 'Duct tape', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'WhiteTape', NULL),
(45, 'Construction measuring tape', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'MTape', NULL),
(46, 'Toothpaste', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Toothpaste', NULL),
(47, 'USB adapter', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'USBA', NULL),
(48, 'T-Shaped plug', 'Generic loot', '1x1', 1, 1, NULL, 5, NULL, NULL, 'T-Plug', NULL),
(49, 'Printer paper', 'Generic loot', '2x1', 2, 0, NULL, NULL, NULL, NULL, 'Paper', NULL),
(50, 'Screwdriver', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Screwdriver', NULL),
(51, 'Wrench', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Wrench', NULL),
(52, 'Pliers', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Pliers', NULL),
(53, 'Electric drill', 'Generic loot', '2x2', 4, 0, NULL, NULL, NULL, NULL, 'ElDrill', NULL),
(54, 'Antique vase', 'Generic loot', '2x2', 4, 1, 2, NULL, NULL, NULL, 'Vase', NULL),
(55, 'Antique teapot', 'Generic loot', '1x2', 2, 1, 3, NULL, NULL, NULL, 'Teapot', NULL),
(56, 'Silver badge', 'Generic loot', '1x1', 1, 1, 1, NULL, NULL, NULL, 'Badge', NULL),
(57, 'Chainlet', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Chainlet', NULL),
(58, 'Gold neck chain', 'Generic loot', '1x1', 1, 1, NULL, 9, NULL, NULL, 'GoldChain', NULL),
(59, 'Physical bitcoin', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'BTC', NULL),
(60, 'Damaged hard drive', 'Generic loot', '2x1', 2, 0, NULL, NULL, NULL, NULL, 'HDD', NULL),
(61, 'Magnet', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Magnet', NULL),
(62, 'Paid AntiRoach', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Paid', NULL),
(63, 'Clin wiper', 'Generic loot', '1x2', 2, 1, 2, NULL, NULL, NULL, 'Clin', NULL),
(64, 'Portable defibrillator', 'Generic loot', '1x1', 1, 1, NULL, 2, NULL, NULL, 'Defib', NULL),
(65, 'LEDX Skin Transilluminator', 'Generic loot', '1x1', 1, 1, NULL, 3, NULL, NULL, 'LEDX', NULL),
(66, 'Saline solution', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Saline', NULL),
(67, 'Medical bloodset', 'Generic loot', '1x1', 1, 1, NULL, 5, NULL, NULL, 'Bloodset', NULL),
(68, 'Hydrogen peroxide', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Peroxide', NULL),
(69, 'Ox bleach', 'Generic loot', '1x2', 2, 1, 2, NULL, NULL, NULL, 'Bleach', NULL),
(70, 'Shustrilo sealing foam', 'Generic loot', '1x3', 3, 0, NULL, NULL, NULL, NULL, 'Foam', NULL),
(71, 'Xenomorph sealing foam', 'Generic loot', '1x3', 3, 0, NULL, NULL, NULL, NULL, 'Xeno', NULL),
(72, 'Sodium bicarbonate', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Sodium', NULL),
(73, 'Soap', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Soap', NULL),
(74, 'Toilet paper', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'TP', NULL),
(75, '5L Propane tank', 'Generic loot', '2x2', 4, 1, 2, NULL, NULL, NULL, 'Propane', NULL),
(76, 'Fuel conditioner', 'Generic loot', '1x2', 2, 1, 4, NULL, NULL, NULL, 'Conditioner', NULL),
(77, 'Heat-exchange alkali surface washer', 'Generic loot', '1x2', 2, 1, 2, NULL, NULL, NULL, 'Alkali', NULL),
(78, 'Dry fuel', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'DryFuel', NULL),
(79, 'A set of tools', 'Generic loot', '2x2', 4, 1, NULL, 2, NULL, NULL, 'Set', NULL),
(80, 'Rechargeable battery', 'Generic loot', '1x1', 1, 1, 3, NULL, NULL, NULL, 'RechBat', NULL),
(81, 'Air filter for gas mask', 'Generic loot', '2x1', 2, 0, NULL, NULL, NULL, NULL, 'Filter', NULL),
(82, 'Secure Flash drive', 'Generic loot', '1x1', 1, 1, 3, 2, NULL, NULL, 'FlashDrive', NULL),
(83, 'Coffee Majaica', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Coffee', NULL),
(84, 'Ophthalmoscope', 'Generic loot', '1x1', 1, 1, NULL, 3, NULL, NULL, 'Ophthalmoscope', NULL),
(85, 'Pliers Elite', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'ElitePliers', NULL),
(86, 'Powerbank', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Powerbank', NULL),
(87, '42nd Signature Blend English Tea', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Tea', NULL),
(88, 'Golden rooster', 'Generic loot', '2x2', 4, 1, 1, NULL, NULL, NULL, 'Rooster', NULL),
(89, 'Roler submariner gold wrist watch', 'Generic loot', '1x1', 1, 1, NULL, 2, NULL, NULL, 'Watch', NULL),
(90, 'Battered antique Book', 'Generic loot', '1x2', 2, 1, 1, NULL, NULL, NULL, 'Book', NULL),
(91, 'FireKlean gun lube', 'Generic loot', '1x1', 1, 1, 1, NULL, NULL, NULL, 'Lube', NULL),
(92, 'Old firesteel', 'Generic loot', '1x1', 1, 1, 1, NULL, NULL, NULL, 'Firesteel', NULL),
(93, 'Deadlyslob`s beard oil', 'Generic loot', '1x1', 1, 1, 1, NULL, NULL, NULL, 'Beardoil', NULL),
(94, 'Golden 1GPhone', 'Generic loot', '1x1', 1, 1, 1, NULL, NULL, NULL, 'G1GPhone', NULL),
(95, 'Tetriz portable game', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Tetriz', NULL),
(96, 'Chain with Prokill medallion', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Prokill', NULL),
(97, 'Nippers', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Nippers', NULL),
(98, 'Metal cutting scissors', 'Generic loot', '1x2', 2, 0, NULL, NULL, 52, 26, 'MScissors', NULL),
(99, 'Handdrill', 'Generic loot', '3x2', 6, 0, NULL, NULL, NULL, NULL, 'HandDrill', NULL),
(100, '6-STEN-140-M military battery', 'Generic loot', '4x2', 8, 1, 1, NULL, NULL, NULL, 'TankBat', NULL),
(101, 'NIXXOR lens', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Nixxor', NULL),
(102, 'Expeditionary fuel tank', 'Generic loot', '2x2', 4, 0, NULL, NULL, NULL, NULL, 'Fuel', NULL),
(103, 'Metal fuel tank', 'Generic loot', '2x3', 6, 0, NULL, NULL, NULL, NULL, 'MetalTank', NULL),
(104, 'FP-100 filter absorber', 'Generic loot', '3x3', 9, 0, NULL, NULL, NULL, NULL, 'FP-100', NULL),
(105, 'Electric motor', 'Generic loot', '2x2', 4, 0, NULL, NULL, NULL, NULL, 'Motor', NULL),
(106, 'Broken LCD', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'BrokenLCD', NULL),
(107, 'Working LCD', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'WorkingLCD', NULL),
(108, 'GP coin', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'GP', NULL),
(109, 'Water filter', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'WaterFilter', NULL),
(110, 'Gunpowder \"Kite\"', 'Generic loot', '1x2', 2, 1, NULL, 3, NULL, NULL, 'Kite', NULL),
(111, 'Gunpowder \"Eagle\"', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Eagle', NULL),
(112, 'Gunpowder \"Hawk\"', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Hawk', NULL),
(113, 'Pile of meds', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Pile_meds', NULL),
(114, 'Disposable syringe', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Syringe', NULL),
(115, 'Phased array element', 'Generic loot', '2x2', 4, 0, NULL, NULL, NULL, NULL, 'Phase', NULL),
(116, 'Military circuit board', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Military_circuit', NULL),
(117, 'Military thermal vision module Iridium', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Iridium', NULL),
(118, 'Military gyrotachometer', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Gyrotachometer', NULL),
(119, 'Weapon parts', 'Generic loot', '2x1', 2, 0, NULL, NULL, NULL, NULL, 'W_parts', NULL),
(120, 'Round pliers', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'RPliers', NULL),
(121, 'OFZ 30x160mm shell', 'Generic loot', '1x2', 2, 1, 10, NULL, NULL, NULL, 'Shell', NULL),
(122, 'Military cable', 'Generic loot', '2x1', 2, 0, NULL, NULL, NULL, NULL, 'MCable', NULL),
(123, 'Military power filter', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Military_filter', NULL),
(124, 'Pressure gauge', 'Generic loot', '2x1', 2, 0, NULL, NULL, NULL, NULL, 'Pressure', NULL),
(125, 'Analog thermometer', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Thermometer', NULL),
(126, 'Light bulb', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Bulb', NULL),
(127, 'Radiator helix', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Helix', NULL),
(128, 'Gold skull ring', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Skull', NULL),
(129, 'Technical documentation', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Manual', NULL),
(130, 'Schaman shampoo', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Shampoo', NULL),
(131, 'Ortodontox toothpaste', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Toothpaste', NULL),
(132, 'Long flat screwdriver', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'LFScrewdriver', NULL),
(133, 'Flat screwdriver', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'FScrewdriver', NULL),
(134, 'Phase control relay', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'PhaseRelay', NULL),
(135, 'Silicone tube', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'SiliconeTube', NULL),
(136, 'Diary', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Diary', NULL),
(137, 'Slim diary', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'SlimDiary', NULL),
(138, '\"Fierce Hatchling\" moonshine', 'Generic loot', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'moonshine', NULL),
(139, 'Pack of sugar', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Sugar', NULL),
(140, 'Purified water', 'Generic loot', '2x2', 4, 0, NULL, NULL, NULL, NULL, 'Superwater', NULL),
(145, 'Broken GPhone', 'Generic loot', '1x1', 1, 1, 3, NULL, NULL, NULL, 'Broken_GPhone', NULL),
(146, 'Broken GPhone X', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'GPhoneX', NULL),
(147, 'SSD Drive', 'Generic loot', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'SSD', NULL),
(173, 'GP-5 gasmask', 'Face', '2x2', 4, 0, NULL, NULL, NULL, NULL, 'gasmask', NULL),
(174, '0.6L water bottle', 'Drink', '1x2', 2, 1, NULL, 2, NULL, NULL, 'Water_bottle', NULL),
(175, 'Magazine case', 'Case', '3x2', 6, 0, NULL, 0, NULL, NULL, 'Mag_case', NULL),
(176, 'Bottle of vodka Tarkovskaya', 'Drink', '1x2', 2, 0, NULL, 0, NULL, NULL, 'Vodka', NULL),
(177, 'AI-2 medikit', 'Meds', '1x1', 1, 0, NULL, 0, NULL, NULL, 'AI-2', NULL),
(178, 'Analgin painkillers', 'Meds', '1x1', 1, 0, NULL, 0, NULL, NULL, 'Painkillers', NULL),
(179, 'Aseptic bandage', 'Meds', '1x1', 1, 0, NULL, 0, NULL, NULL, 'Bandage', NULL),
(180, 'Immobilizing splint', 'Meds', '1x1', 1, 0, NULL, 0, NULL, NULL, 'splint', NULL),
(181, 'Salewa FIRST AID KIT', 'Meds', '1x2', 2, 1, NULL, 5, NULL, NULL, 'Salewa', NULL),
(182, 'Army bandage', 'Meds', '1x1', 1, 0, NULL, 0, NULL, NULL, 'Army_bandage', NULL),
(183, 'IFAK personal tactical first aid kit', 'Meds', '1x1', 1, 0, NULL, 0, NULL, NULL, 'IFAK', NULL),
(184, 'Ibuprofen painkillers', 'Meds', '1x1', 1, 0, NULL, 0, NULL, NULL, 'Ibuprofen', NULL),
(185, 'Golden Star Balm', 'Meds', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Golden_Star', NULL),
(186, 'Propital', 'Stim', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Propital', NULL),
(187, 'Army Crackers', 'Food', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Crackers', NULL),
(188, 'Can of beef stew', 'Food', '1x1', 1, 1, 15, NULL, NULL, NULL, 'Tushonka', NULL),
(189, 'Squash spread', 'Food', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Squash', NULL),
(190, 'Iskra lunch box', 'Food', '1x2', 2, 1, NULL, 7, NULL, NULL, 'Iskra', NULL),
(191, 'Alyonka chocolate bar', 'Food', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Alyonka', NULL),
(192, 'Pack of oat flakes', 'Food', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Oats', NULL),
(193, 'Slickers bar', 'Food', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Slickers', NULL),
(194, 'Pack of milk', 'Food', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Pack_milk', NULL),
(205, 'Condensed milk', 'Food', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Milk', NULL),
(206, 'Water bottle with a filter Aquamari', 'Drink', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Aquamari', NULL),
(207, '5.45x39 PS', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, '545PS', NULL),
(208, '12/70 8.5 mm \"Magnum\" Buckshot', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, '8.5_12c', NULL),
(209, '9x18 PM mm RG028 gzh', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'RG028 gzh', NULL),
(210, 'Polymer AK-74 foregrip (6P20 Sb.9)', 'Mods', '1x1', 1, 0, NULL, NULL, NULL, NULL, '6P20_Sb9', NULL),
(211, 'Polymer stock for AK-74M (6P34 Sb.15)', 'Mods', '1x2', 2, 0, NULL, NULL, NULL, NULL, '6P34_Sb15', NULL),
(212, 'M67 Hand grenade', 'Grenade', '1x1', 1, 1, NULL, 10, NULL, NULL, 'M67', NULL),
(213, 'RDG-2B Smoke grenade', 'Grenade', '1x2', 2, 0, NULL, NULL, NULL, NULL, 'Smoke_grenade', NULL),
(214, '5.45x39 PP', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, '545PP', NULL),
(215, '7.62x54R SNB', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, '762SNB', NULL),
(216, '7.62x39 HP', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, '762HP', NULL),
(217, '9x39 SP-6', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'SP-6', NULL),
(218, 'Leatherman Multitool', 'Generic loot', '1x1', 1, 1, NULL, 1, NULL, NULL, 'Multitool', NULL),
(219, 'RGD-5 hand grenade', 'Grenade', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'RGD-5', NULL),
(220, '9x19 RIP', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, '9RIP', NULL),
(221, '5.65x45 Warmage', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Warmage', NULL),
(222, '12/70 AP-20 Slug', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'AP-20', NULL),
(223, '7.62x39 BP', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, '762BP', NULL),
(224, '5.45x39 7N39 \"Igolnik\"', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, 'Igolnik', NULL),
(225, '5.65x45 M995', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, '565M995', NULL),
(226, '7.62x51 M61', 'Ammo', '1x1', 1, 0, NULL, NULL, NULL, NULL, '762M61', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items_prices`
--
-- Creation: Feb 17, 2020 at 03:33 PM
-- Last update: Feb 19, 2020 at 08:04 AM
--

CREATE TABLE `items_prices` (
  `ID` int(11) NOT NULL,
  `Item_ID` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `items_prices`
--

INSERT INTO `items_prices` (`ID`, `Item_ID`, `price`, `date`) VALUES
(2, 1, 10, '2020-02-17 15:36:00'),
(3, 1, 1, '2020-02-18 15:04:19'),
(4, 1, 5, '2020-02-18 15:51:47'),
(5, 1, 5, '2020-02-18 15:52:35'),
(6, 1, 5, '2020-02-18 15:52:41'),
(7, 1, 23, '2020-02-18 15:52:47'),
(8, 1, 52, '2020-02-18 15:53:43'),
(9, 1, 52, '2020-02-18 15:54:46'),
(10, 1, 52, '2020-02-18 15:54:48'),
(11, 1, 52, '2020-02-18 15:55:22'),
(12, 1, 52, '2020-02-18 15:55:57'),
(13, 1, 25, '2020-02-18 15:56:00'),
(14, 1, 10, '2020-02-19 08:03:19'),
(15, 1, 15, '2020-02-19 08:03:43'),
(16, 1, 10, '2020-02-19 08:04:19'),
(17, 1, 15, '2020-02-19 08:04:25'),
(18, 1, 16, '2020-02-19 08:04:27'),
(19, 98, 52, '2020-02-19 08:04:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crafting_stations`
--
ALTER TABLE `crafting_stations`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `eft`
--
ALTER TABLE `eft`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hideout_crafting`
--
ALTER TABLE `hideout_crafting`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Item_name` (`Item_name`);

--
-- Indexes for table `items_prices`
--
ALTER TABLE `items_prices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crafting_stations`
--
ALTER TABLE `crafting_stations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `eft`
--
ALTER TABLE `eft`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hideout_crafting`
--
ALTER TABLE `hideout_crafting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `items_prices`
--
ALTER TABLE `items_prices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
