-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 05:56 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'Test@123');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(7, '5e2170d8b576c', '5e2170d8cb1f3'),
(8, '5e2170d950238', '5e2170d9718ee'),
(9, '5e241cbd9e138', '5e241cbdcce63'),
(10, '5e241cbe6c227', '5e241cbe84360'),
(11, '5e241cbee00b7', '5e241cbf01889'),
(12, '5e241cbf5048d', '5e241cbf5e9c0'),
(13, '5e241cbfd5a1e', '5e241cbfe5aa8'),
(14, '5e241cc04d898', '5e241cc083e7b'),
(15, '5e241cc0eae7a', '5e241cc109cf5'),
(16, '5e241cc1530f8', '5e241cc161677'),
(17, '5e241cc1eeeec', '5e241cc21faba'),
(18, '5e241cc26e2e7', '5e241cc278f08'),
(19, '5e241cc2d7e4e', '5e241cc3ad6b9'),
(20, '5e241cc41cde6', '5e241cc42a542'),
(21, '5e241cc48edb9', '5e241cc4b3d3b'),
(22, '5e241cc52fe55', '5e241cc53e2b3'),
(23, '5e241cc5c24ad', '5e241cc5e0351'),
(24, '5e241cc63abf5', '5e241cc6484dc'),
(25, '5e241cc6bd04a', '5e241cc717455'),
(26, '5e241cc775cc3', '5e241cc787a25'),
(27, '5e241cc7bf7cc', '5e241cc7ca75d'),
(28, '5e241cc8d7f26', '5e241cc8e6862'),
(29, '5e241cc948567', '5e241cc95315c'),
(30, '5e241cc98ee42', '5e241cc999a7d'),
(31, '5e241cc9cff63', '5e241cc9de829'),
(32, '5e241cca357e3', '5e241cca42e9d'),
(33, '5e241ccabce23', '5e241ccac7fcd'),
(34, '5e2459ac2847b', '5e2459ac85550'),
(35, '5e2459ace5f74', '5e2459ad04ec2'),
(36, '5e2459ad7a71e', '5e2459ad8abe1'),
(37, '5e2459ae17d4c', '5e2459ae2aee3'),
(38, '5e2459ae64c42', '5e2459aed3234'),
(39, '5e2459b0071d4', '5e2459b04f247'),
(40, '5e2459b09749d', '5e2459b0ae130'),
(41, '5e2459b10fc8b', '5e2459b11a86b'),
(42, '5e2459b16ede1', '5e2459b17c2ea'),
(43, '5e2459b1bd487', '5e2459b1c88da'),
(44, '5e2459b21ff43', '5e2459b22af0f'),
(45, '5e2459b27c38f', '5e2459b2872a1'),
(46, '5e2459b2d5bab', '5e2459b2e0b53'),
(47, '5e2459b33307f', '5e2459b33dff8'),
(48, '5e2459b3845d1', '5e2459b394cca'),
(49, '5e2459b3ee5fd', '5e2459b404ef6'),
(50, '5e2459b43b538', '5e2459b44b79a'),
(51, '5e2459b481daf', '5e2459b48c911'),
(52, '5e2459b4c2f4b', '5e2459b4ce679'),
(53, '5e2459b520106', '5e2459b52b07a'),
(54, '5e2459b5668b7', '5e2459b579a65'),
(55, '5e2459b6f3b51', '5e2459b72827c'),
(56, '5e2459b8859a0', '5e2459b894b88'),
(57, '5e2459b926af6', '5e2459b9510be'),
(58, '5e2459ba5bca8', '5e2459ba67bd5'),
(66, '5e2fb34a13bfe', '5e2fb34a236f7'),
(67, '5e2fb34a6bea6', '5e2fb34a79796'),
(68, '5e2fb34b0791d', '5e2fb34b1b260'),
(69, '5e2fb34b54498', '5e2fb34b5ef86'),
(70, '5e2fb34ba80b1', '5e2fb34bc5c69');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(19, '     ', '5e241883a5f97', 6, 13, 6, 5, '2020-01-21 06:34:58', 1579588331, 'finished', 'true'),
(25, 'user1313', '5e2fb270f1792', 0, 0, 0, 0, '2020-02-23 05:16:43', 1582435002, 'finished', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(33, '5e241cbd9e138', '10', '5e241cbdcce63'),
(34, '5e241cbd9e138', '20', '5e241cbdcce6e'),
(35, '5e241cbd9e138', '30', '5e241cbdcce6f'),
(36, '5e241cbd9e138', '40', '5e241cbdcce70'),
(37, '5e241cbe6c227', '100', '5e241cbe84356'),
(38, '5e241cbe6c227', '200', '5e241cbe8435f'),
(39, '5e241cbe6c227', '1', '5e241cbe84360'),
(40, '5e241cbe6c227', '0', '5e241cbe84362'),
(41, '5e241cbee00b7', ' ∞', '5e241cbf01882'),
(42, '5e241cbee00b7', 'googol', '5e241cbf01887'),
(43, '5e241cbee00b7', 'googolplex', '5e241cbf01889'),
(44, '5e241cbee00b7', 'gram', '5e241cbf0188a'),
(45, '5e241cbf5048d', '1 followed by hundred zeros', '5e241cbf5e9c0'),
(46, '5e241cbf5048d', '1 followed by thousand zeros', '5e241cbf5e9d5'),
(47, '5e241cbf5048d', '1 followed by ten thousand zeros', '5e241cbf5e9d6'),
(48, '5e241cbf5048d', '1 followed by 1 lakh zeros', '5e241cbf5e9d7'),
(49, '5e241cbfd5a1e', '-1', '5e241cbfe5aa2'),
(50, '5e241cbfd5a1e', '0', '5e241cbfe5aa8'),
(51, '5e241cbfd5a1e', '1', '5e241cbfe5aaa'),
(52, '5e241cbfd5a1e', 'e', '5e241cbfe5aab'),
(53, '5e241cc04d898', 'Natural', '5e241cc083e7b'),
(54, '5e241cc04d898', 'Whole', '5e241cc083e82'),
(55, '5e241cc04d898', 'Rational', '5e241cc083e84'),
(56, '5e241cc04d898', 'Odd', '5e241cc083e89'),
(57, '5e241cc0eae7a', 'Even number', '5e241cc109cf5'),
(58, '5e241cc0eae7a', 'Natural number', '5e241cc109cfe'),
(59, '5e241cc0eae7a', 'Odd number', '5e241cc109d01'),
(60, '5e241cc0eae7a', 'Whole number', '5e241cc109d04'),
(61, '5e241cc1530f8', 'Hindu Arabic system', '5e241cc161672'),
(62, '5e241cc1530f8', 'Roman', '5e241cc161677'),
(63, '5e241cc1530f8', 'Egyptian', '5e241cc161678'),
(64, '5e241cc1530f8', 'Mesopotamia', '5e241cc161679'),
(65, '5e241cc1eeeec', '10,000', '5e241cc21fab1'),
(66, '5e241cc1eeeec', '50,000', '5e241cc21fab8'),
(67, '5e241cc1eeeec', '10,00,000', '5e241cc21faba'),
(68, '5e241cc1eeeec', '500', '5e241cc21fabb'),
(69, '5e241cc26e2e7', '100', '5e241cc278f03'),
(70, '5e241cc26e2e7', '500', '5e241cc278f08'),
(71, '5e241cc26e2e7', '1,000', '5e241cc278f09'),
(72, '5e241cc26e2e7', '50', '5e241cc278f0a'),
(73, '5e241cc2d7e4e', 'VM', '5e241cc3ad6b1'),
(74, '5e241cc2d7e4e', 'V', '5e241cc3ad6b9'),
(75, '5e241cc2d7e4e', 'MMMMM', '5e241cc3ad6bc'),
(76, '5e241cc2d7e4e', 'MX', '5e241cc3ad6be'),
(77, '5e241cc41cde6', 'N', '5e241cc42a53d'),
(78, '5e241cc41cde6', 'R', '5e241cc42a541'),
(79, '5e241cc41cde6', 'W', '5e241cc42a542'),
(80, '5e241cc41cde6', 'Q', '5e241cc42a543'),
(81, '5e241cc48edb9', 'N', '5e241cc4b3d33'),
(82, '5e241cc48edb9', 'Z', '5e241cc4b3d3a'),
(83, '5e241cc48edb9', 'R', '5e241cc4b3d3b'),
(84, '5e241cc48edb9', 'Q', '5e241cc4b3d3d'),
(85, '5e241cc52fe55', 'W', '5e241cc53e2ab'),
(86, '5e241cc52fe55', 'Z', '5e241cc53e2b3'),
(87, '5e241cc52fe55', 'N', '5e241cc53e2b6'),
(88, '5e241cc52fe55', 'Q', '5e241cc53e2b9'),
(89, '5e241cc5c24ad', 'Whole number', '5e241cc5e0349'),
(90, '5e241cc5c24ad', 'Real number', '5e241cc5e034f'),
(91, '5e241cc5c24ad', 'Integers', '5e241cc5e0351'),
(92, '5e241cc5c24ad', 'Odd number', '5e241cc5e0353'),
(93, '5e241cc63abf5', 'Rational number', '5e241cc6484d6'),
(94, '5e241cc63abf5', 'Irrational number', '5e241cc6484db'),
(95, '5e241cc63abf5', 'Complex number', '5e241cc6484dc'),
(96, '5e241cc63abf5', 'Real number', '5e241cc6484dd'),
(97, '5e241cc6bd04a', 'Rational number', '5e241cc71744a'),
(98, '5e241cc6bd04a', 'Perfect number', '5e241cc717452'),
(99, '5e241cc6bd04a', 'Prime number', '5e241cc717455'),
(100, '5e241cc6bd04a', 'Complex number', '5e241cc717456'),
(101, '5e241cc775cc3', 'Pythagorean Triplet', '5e241cc787a1e'),
(102, '5e241cc775cc3', 'Prime Triplet', '5e241cc787a25'),
(103, '5e241cc775cc3', 'Lucas number', '5e241cc787a27'),
(104, '5e241cc775cc3', 'Fermat number', '5e241cc787a28'),
(105, '5e241cc7bf7cc', 'The Three Degrees', '5e241cc7ca75d'),
(106, '5e241cc7bf7cc', 'The Square', '5e241cc7ca763'),
(107, '5e241cc7bf7cc', 'The Rule of Three', '5e241cc7ca764'),
(108, '5e241cc7bf7cc', 'Quadrilateral', '5e241cc7ca766'),
(109, '5e241cc8d7f26', 'Prime Target', '5e241cc8e6862'),
(110, '5e241cc8d7f26', 'The Perfect Ten', '5e241cc8e686b'),
(111, '5e241cc8d7f26', 'The Amicable', '5e241cc8e686c'),
(112, '5e241cc8d7f26', 'The Pythagoras', '5e241cc8e686e'),
(113, '5e241cc948567', 'The Tangents', '5e241cc953155'),
(114, '5e241cc948567', 'John of Arc', '5e241cc95315a'),
(115, '5e241cc948567', 'In search of last chord', '5e241cc95315b'),
(116, '5e241cc948567', 'The width of a circle', '5e241cc95315c'),
(117, '5e241cc98ee42', '2', '5e241cc999a7d'),
(118, '5e241cc98ee42', '3', '5e241cc999a82'),
(119, '5e241cc98ee42', '5', '5e241cc999a83'),
(120, '5e241cc98ee42', '7', '5e241cc999a84'),
(121, '5e241cc9cff63', 'Dual Prime', '5e241cc9de822'),
(122, '5e241cc9cff63', 'Goldbach Prime', '5e241cc9de828'),
(123, '5e241cc9cff63', 'Mersenne Prime', '5e241cc9de829'),
(124, '5e241cc9cff63', 'Golden Number', '5e241cc9de82b'),
(125, '5e241cca357e3', '666', '5e241cca42e9d'),
(126, '5e241cca357e3', '484', '5e241cca42ea5'),
(127, '5e241cca357e3', '1089', '5e241cca42ea8'),
(128, '5e241cca357e3', '6178', '5e241cca42eac'),
(129, '5e241ccabce23', '18', '5e241ccac7fcd'),
(130, '5e241ccabce23', '27', '5e241ccac7fe0'),
(131, '5e241ccabce23', '45', '5e241ccac7fe7'),
(132, '5e241ccabce23', '40', '5e241ccac7fe8'),
(133, '5e2459ac2847b', '160', '5e2459ac8554a'),
(134, '5e2459ac2847b', '2370', '5e2459ac8554f'),
(135, '5e2459ac2847b', '77', '5e2459ac85550'),
(136, '5e2459ac2847b', '240', '5e2459ac85551'),
(137, '5e2459ace5f74', '35', '5e2459ad04eb6'),
(138, '5e2459ace5f74', '72', '5e2459ad04ec1'),
(139, '5e2459ace5f74', '44', '5e2459ad04ec2'),
(140, '5e2459ace5f74', '55', '5e2459ad04ec4'),
(141, '5e2459ad7a71e', '15', '5e2459ad8abdb'),
(142, '5e2459ad7a71e', '33', '5e2459ad8abe1'),
(143, '5e2459ad7a71e', '17', '5e2459ad8abe3'),
(144, '5e2459ad7a71e', '11', '5e2459ad8abe4'),
(145, '5e2459ae17d4c', '74', '5e2459ae2aee3'),
(146, '5e2459ae17d4c', '72', '5e2459ae2aeeb'),
(147, '5e2459ae17d4c', '80', '5e2459ae2aef0'),
(148, '5e2459ae17d4c', '85', '5e2459ae2aef2'),
(149, '5e2459ae64c42', '142', '5e2459aed322e'),
(150, '5e2459ae64c42', '138', '5e2459aed3234'),
(151, '5e2459ae64c42', '19', '5e2459aed3235'),
(152, '5e2459ae64c42', '6', '5e2459aed3237'),
(153, '5e2459b0071d4', '115', '5e2459b04f23a'),
(154, '5e2459b0071d4', '25', '5e2459b04f244'),
(155, '5e2459b0071d4', '55', '5e2459b04f247'),
(156, '5e2459b0071d4', '52', '5e2459b04f24a'),
(157, '5e2459b09749d', '3', '5e2459b0ae129'),
(158, '5e2459b09749d', '6', '5e2459b0ae130'),
(159, '5e2459b09749d', '8', '5e2459b0ae132'),
(160, '5e2459b09749d', '7', '5e2459b0ae133'),
(161, '5e2459b10fc8b', '17', '5e2459b11a866'),
(162, '5e2459b10fc8b', '32', '5e2459b11a86b'),
(163, '5e2459b10fc8b', '28', '5e2459b11a86c'),
(164, '5e2459b10fc8b', '6', '5e2459b11a86d'),
(165, '5e2459b16ede1', '15 = 2 + 3', '5e2459b17c2e2'),
(166, '5e2459b16ede1', '5 ÷ 15 = 3', '5e2459b17c2ea'),
(167, '5e2459b16ede1', '2 = 15 ÷ 3', '5e2459b17c2ec'),
(168, '5e2459b16ede1', '3 = 2 ÷ 15', '5e2459b17c2ed'),
(169, '5e2459b1bd487', '(60÷16) × 14 = 70', '5e2459b1c88d0'),
(170, '5e2459b1bd487', '(55-12) + 3 = 42', '5e2459b1c88d7'),
(171, '5e2459b1bd487', '(40 × 8) – 12 = 36', '5e2459b1c88d8'),
(172, '5e2459b1bd487', '(36 + 10) ÷ 16 = 30', '5e2459b1c88da'),
(173, '5e2459b21ff43', ' x + =', '5e2459b22af04'),
(174, '5e2459b21ff43', '= x +', '5e2459b22af0f'),
(175, '5e2459b21ff43', '+ x =', '5e2459b22af11'),
(176, '5e2459b21ff43', '=+x', '5e2459b22af12'),
(177, '5e2459b27c38f', ' x, =, -, +', '5e2459b2872a1'),
(178, '5e2459b27c38f', '–, =, x, +', '5e2459b2872aa'),
(179, '5e2459b27c38f', 'x, =, +, -', '5e2459b2872ad'),
(180, '5e2459b27c38f', '+, -, =, x', '5e2459b2872b1'),
(181, '5e2459b2d5bab', '16', '5e2459b2e0b4c'),
(182, '5e2459b2d5bab', '19', '5e2459b2e0b51'),
(183, '5e2459b2d5bab', '18', '5e2459b2e0b52'),
(184, '5e2459b2d5bab', '12', '5e2459b2e0b53'),
(185, '5e2459b33307f', '63', '5e2459b33dfee'),
(186, '5e2459b33307f', '254', '5e2459b33dff8'),
(187, '5e2459b33307f', '288', '5e2459b33dff9'),
(188, '5e2459b33307f', '1208', '5e2459b33dffa'),
(189, '5e2459b3845d1', '15', '5e2459b394cc1'),
(190, '5e2459b3845d1', '25', '5e2459b394cc8'),
(191, '5e2459b3845d1', '30', '5e2459b394cc9'),
(192, '5e2459b3845d1', '20', '5e2459b394cca'),
(193, '5e2459b3ee5fd', '28', '5e2459b404ef0'),
(194, '5e2459b3ee5fd', '32', '5e2459b404ef5'),
(195, '5e2459b3ee5fd', '34', '5e2459b404ef6'),
(196, '5e2459b3ee5fd', '36', '5e2459b404ef7'),
(197, '5e2459b43b538', '6', '5e2459b44b794'),
(198, '5e2459b43b538', '8', '5e2459b44b799'),
(199, '5e2459b43b538', '11', '5e2459b44b79a'),
(200, '5e2459b43b538', '17', '5e2459b44b79b'),
(201, '5e2459b481daf', '16', '5e2459b48c911'),
(202, '5e2459b481daf', '20', '5e2459b48c91a'),
(203, '5e2459b481daf', '18', '5e2459b48c91c'),
(204, '5e2459b481daf', '31', '5e2459b48c91d'),
(205, '5e2459b4c2f4b', '35', '5e2459b4ce66a'),
(206, '5e2459b4c2f4b', '57', '5e2459b4ce676'),
(207, '5e2459b4c2f4b', '42', '5e2459b4ce678'),
(208, '5e2459b4c2f4b', '15', '5e2459b4ce679'),
(209, '5e2459b520106', '60', '5e2459b52b06d'),
(210, '5e2459b520106', '20', '5e2459b52b075'),
(211, '5e2459b520106', '80', '5e2459b52b07a'),
(212, '5e2459b520106', '10', '5e2459b52b07b'),
(213, '5e2459b5668b7', 'x और - ', '5e2459b579a5b'),
(214, '5e2459b5668b7', '+ और x ', '5e2459b579a64'),
(215, '5e2459b5668b7', '÷ और +', '5e2459b579a65'),
(216, '5e2459b5668b7', '– और ÷ ', '5e2459b579a67'),
(217, '5e2459b6f3b51', '+ एवं x ', '5e2459b728272'),
(218, '5e2459b6f3b51', '6 एवं 7', '5e2459b72827a'),
(219, '5e2459b6f3b51', '÷ एवं +', '5e2459b72827c'),
(220, '5e2459b6f3b51', '12 एवं 3', '5e2459b72827d'),
(221, '5e2459b8859a0', '(90×18)+18=60', '5e2459b894b7a'),
(222, '5e2459b8859a0', '(18+6) ÷ 12 = 2', '5e2459b894b81'),
(223, '5e2459b8859a0', '(72÷18) × 18 = 72', '5e2459b894b84'),
(224, '5e2459b8859a0', '(12 + 6) × 18 = 36', '5e2459b894b88'),
(225, '5e2459b926af6', ' x, –, x, +', '5e2459b9510be'),
(226, '5e2459b926af6', ' +, –, x, +', '5e2459b9510c3'),
(227, '5e2459b926af6', 'x, +, x, –', '5e2459b9510c4'),
(228, '5e2459b926af6', 'x, +, +, x', '5e2459b9510c5'),
(229, '5e2459ba5bca8', 'x = –', '5e2459ba67bca'),
(230, '5e2459ba5bca8', ' x – =', '5e2459ba67bd5'),
(231, '5e2459ba5bca8', '= – x ', '5e2459ba67bd7'),
(232, '5e2459ba5bca8', ' – x =', '5e2459ba67bd8'),
(261, '5e2fb34a13bfe', '4', '5e2fb34a236f7'),
(262, '5e2fb34a13bfe', '3', '5e2fb34a236ff'),
(263, '5e2fb34a13bfe', '2', '5e2fb34a23701'),
(264, '5e2fb34a13bfe', '1', '5e2fb34a23702'),
(265, '5e2fb34a6bea6', '5', '5e2fb34a7978e'),
(266, '5e2fb34a6bea6', '20', '5e2fb34a79796'),
(267, '5e2fb34a6bea6', '25', '5e2fb34a79797'),
(268, '5e2fb34a6bea6', '56', '5e2fb34a79798'),
(269, '5e2fb34b0791d', '25', '5e2fb34b1b256'),
(270, '5e2fb34b0791d', '5', '5e2fb34b1b260'),
(271, '5e2fb34b0791d', '20', '5e2fb34b1b262'),
(272, '5e2fb34b0791d', '15', '5e2fb34b1b263'),
(273, '5e2fb34b54498', '1', '5e2fb34b5ef86'),
(274, '5e2fb34b54498', '2', '5e2fb34b5ef8c'),
(275, '5e2fb34b54498', '3', '5e2fb34b5ef8e'),
(276, '5e2fb34b54498', '4', '5e2fb34b5ef8f'),
(277, '5e2fb34ba80b1', '1', '5e2fb34bc5c44'),
(278, '5e2fb34ba80b1', '2', '5e2fb34bc5c60'),
(279, '5e2fb34ba80b1', '3', '5e2fb34bc5c64'),
(280, '5e2fb34ba80b1', '4', '5e2fb34bc5c69');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(9, '5e241883a5f97', '5e241cbd9e138', 'How many digits are there in Hindu-Arabic System?', 4, 1),
(10, '5e241883a5f97', '5e241cbe6c227', 'Among the following which natural number has no predecessor?', 4, 2),
(11, '5e241883a5f97', '5e241cbee00b7', 'Which among the following is the largest known number in the world?', 4, 3),
(12, '5e241883a5f97', '5e241cbf5048d', 'What does 1 googol means?', 4, 4),
(13, '5e241883a5f97', '5e241cbfd5a1e', 'Among the following which whole number has no predecessor?', 4, 5),
(14, '5e241883a5f97', '5e241cc04d898', 'Counting numbers are kept under ________ number.', 4, 6),
(15, '5e241883a5f97', '5e241cc0eae7a', ' An integer that is divisible by 2 is called:', 4, 7),
(16, '5e241883a5f97', '5e241cc1530f8', 'In which number system, there is no symbol for zero?', 4, 8),
(17, '5e241883a5f97', '5e241cc1eeeec', 'In Roman numerals M represents 1000, what does M represent?', 4, 9),
(18, '5e241883a5f97', '5e241cc26e2e7', 'What does D represent in Roman numeral system?', 4, 10),
(19, '5e241883a5f97', '5e241cc2d7e4e', 'If 5 = V, How does 5,000 written in roman numeral system?', 4, 11),
(20, '5e241883a5f97', '5e241cc41cde6', 'The whole number is denoted by __________.', 4, 12),
(21, '5e241883a5f97', '5e241cc48edb9', 'Rational number is represented by __________.', 4, 13),
(22, '5e241883a5f97', '5e241cc52fe55', 'Integers are represented by __________.', 4, 14),
(23, '5e241883a5f97', '5e241cc5c24ad', 'All counting numbers, together with their negatives and zeros constitute the set of __________.', 4, 15),
(24, '5e241883a5f97', '5e241cc63abf5', 'A number which is expressed as a + ib, where a and b are real are called:', 4, 16),
(25, '5e241883a5f97', '5e241cc6bd04a', 'An integer p which is not 0 or ±1 and is divisible by no integer except ±1 and itself is called:', 4, 17),
(26, '5e241883a5f97', '5e241cc775cc3', ' p, p + 2, p + 4 are called __________ if all numbers are primes.', 4, 18),
(27, '5e241883a5f97', '5e241cc7bf7cc', 'The cube root of 27 connected with units of angle measurement will produce __________ musical act?', 4, 19),
(28, '5e241883a5f97', '5e241cc8d7f26', 'A number only divisible by itself and one has inspired Joe Mac Anthony to title one of his works. What was the title of his work?', 4, 20),
(29, '5e241883a5f97', '5e241cc948567', 'Which of these could be either a circumference divided by π or a song written and recorded by David Bouie?', 4, 21),
(30, '5e241883a5f97', '5e241cc98ee42', 'This number’s irrationality property was first discovered by Pythagoras. What is its value?', 4, 22),
(31, '5e241883a5f97', '5e241cc9cff63', 'Any number in the form of 2p – 1, where p is a prime is known as:', 4, 23),
(32, '5e241883a5f97', '5e241cca357e3', 'The sum of squares of first 7 prime number also satisfy the Lagrange’s Four Square theorem which states that “Every positive integer can be expressed as the sum of four squares”. What is the number I am talking about?', 4, 24),
(33, '5e241883a5f97', '5e241ccabce23', 'There are only 2 numbers that are twice the sum of their individual digits; one of them is zero (0). What is the other one?', 4, 25),
(34, '5e244ace8abb6', '5e2459ac2847b', 'यदि + का अर्थ ×, × का अर्थ -, ÷ का अर्थ + और - का अर्थ ÷ हो तो 175 – 25 ÷ 5 + 20 × 3 + 10 = ?', 4, 1),
(35, '5e244ace8abb6', '5e2459ace5f74', 'यदि + का अर्थ -, - का अर्थ × हो, × का अर्थ ÷  और ÷ का अर्थ + हो, तो 26 - 18 × 9 ÷ 3 + 11 = ?', 4, 2),
(36, '5e244ace8abb6', '5e2459ad7a71e', ' यदि + का अर्थ ×, - का अर्थ ÷ हो, × का अर्थ – और ÷ का अर्थ + हो, तो \r\n8 + 4 ÷ 3 × 18 – 9 होगा ?', 4, 3),
(37, '5e244ace8abb6', '5e2459ae17d4c', 'यदि – भाग के लिए, + गुना के लिए, ÷ घटाने के लिए और × जोड़ने के लिए, हो तो 36 + 6 – 3 × 5 ÷ 3 = ?', 4, 4),
(38, '5e244ace8abb6', '5e2459ae64c42', 'निम्नलिखित प्रश्न में आपको निम्नलिखित प्रतिको के अनुसार दिए गए विकल्पों में से सही उत्तर चुनना है यदि – का अर्थ × है, × का अर्थ + है, + का अर्थ ÷ है, और ÷ का अर्थ – है, तो \r\n14 -10 ÷ 4 × 16 + 8 = ?', 4, 5),
(39, '5e244ace8abb6', '5e2459b0071d4', 'यदि P, + को, Q, - को, R, ÷ को और S, × को व्यक्त करे तो 18 S 36 R 12 Q 6 P 7 =?', 4, 6),
(40, '5e244ace8abb6', '5e2459b09749d', 'यदि P = %, A = -, B = +, C = ×, D = ÷  हो तो (100  का 5PB53A4)D9= ?', 4, 7),
(41, '5e244ace8abb6', '5e2459b10fc8b', 'यदि ‘P’ का अर्थ है ‘-‘ Q का अर्थ है ‘x’, ‘R’ का अर्थ है ÷ और S का अर्थ है +, तो दिए गए समीकरण का मान क्या होगा ?\r\n14 Q 3 P 12 S 4 R 2 = ?', 4, 8),
(42, '5e244ace8abb6', '5e2459b16ede1', ' ÷ तथा =, 2 तथा 3 का स्थान परस्पर बदलने पर निम्नलिखित में से कोनसा सही है?', 4, 9),
(43, '5e244ace8abb6', '5e2459b1bd487', 'नीचे दिए अनुसार, गणितीय क्रियांओं(चिन्हों) तथा संख्याओ में अदला-बदली करने के बाद सही समीकरण को चुनिए | x और +; 12 और 16 ', 4, 10),
(44, '5e244ace8abb6', '5e2459b21ff43', 'निम्नलिखित प्रश्न में विभिन्न स्थानों पर @ चिन्ह विभिन्न गणितीयो चिन्हों के लिए है जो विकल्पों के रूप में दिए गये है| चिन्हों के सही क्रम वाले विकल्प के रूप में दिए गए है| चिन्हों के सही क्रम वाले विकल्प को चुनिए जिसे प्रतिस्थापित करने पर प्रश्न समीकरण सही हो जाए|\r\n24@4@5@4 ', 4, 11),
(45, '5e244ace8abb6', '5e2459b27c38f', 'निम्नलिखित विकल्पों में से कोनसा सही है ?\r\n8*5*27*3*16', 4, 12),
(46, '5e244ace8abb6', '5e2459b2d5bab', 'यदि + का अर्थ ÷, × का अर्थ - हो, - का अर्थ × और ÷ का अर्थ + हो, तो 38+19-16×17÷3=?', 4, 13),
(47, '5e244ace8abb6', '5e2459b33307f', 'यदि a का अर्थ +, b का अर्थ -, c का अर्थ × और d का अर्थ ÷, तो 18 c 14 a 6 b 16 d 4 = ?', 4, 14),
(48, '5e244ace8abb6', '5e2459b3845d1', 'यदि a का अर्थ +, b का अर्थ -, c का अर्थ × और d का अर्थ ÷, तो 18 c 14 a 6 b 16 d 4 = ?', 4, 15),
(49, '5e244ace8abb6', '5e2459b3ee5fd', 'यदि ÷ का अर्थ × है, - का अर्थ + है, × का अर्थ – है तथा + का अर्थ ÷ है तो निम्नलिखित का मान क्या होगा?', 4, 16),
(50, '5e244ace8abb6', '5e2459b43b538', 'यदि + का अर्थ × हो, – का अर्थ ÷ हो, ×  का अर्थ – हो और ÷ का अर्थ + हो तो \r\n6 ÷ 36 – 4 x 2 + 2 = ? ', 4, 17),
(51, '5e244ace8abb6', '5e2459b481daf', 'यदि + का अर्थ ×, × का अर्थ ÷, - का अर्थ +, ÷ का अर्थ - हो तो \r\n20-8×4÷3+2=?', 4, 18),
(52, '5e244ace8abb6', '5e2459b4c2f4b', 'यदि ‘P’ का अर्थ ×, Q का अर्थ ÷, R का अर्थ +, और S  का अर्थ – हो तो 154 Q 14 S 7 P 3 R 25 का मान क्या होगा ?', 4, 19),
(53, '5e244ace8abb6', '5e2459b520106', ' P $ Q, का अर्थ है में भाग दे \r\nP # Q, का अर्थ है में घटाये \r\nP % Q, का अर्थ है में जोड़े \r\nP @ Q, का अर्थ है में गुणा करे \r\n70  #  30 %   80 $ 20 @ 10 = ?', 4, 20),
(54, '5e244ace8abb6', '5e2459b5668b7', 'चिन्हों के किस अदल-बदल से निम्न समीकरण सही हो जाएगा| \r\n35 + 7 × 5 ÷ 5 – 6 = 24', 4, 21),
(55, '5e244ace8abb6', '5e2459b6f3b51', 'नीचे दिए गए विकल्पों में से कौन से चिन्हों को अदल-बदल कर देने से समीकरण को सही कर  देगा ? \r\n(12÷6) + 3 × 7 = 42 ', 4, 22),
(56, '5e244ace8abb6', '5e2459b8859a0', 'निचे दिए गए समीकरणों में ÷ और +, 12 और 18 को एक-दुसरे के स्थान पर रखने के पश्चात् निम्नलिखित में से कोनसा समीकरण सही हो जायेगा?', 4, 23),
(57, '5e244ace8abb6', '5e2459b926af6', 'निम्नलिखित में प्रतिको में किस सेट को * के स्थान पर रखा जा सकता है?\r\n25*2*6=4*11*0', 4, 24),
(58, '5e244ace8abb6', '5e2459ba5bca8', 'गणितीय चिन्हों के सही क्रम को चुनिए जिसमे * चिन्ह के स्थान पर पुनर्स्थापित करने से संतुलित समीकरण बन जाएगा|\r\n9*4*22*14', 4, 25),
(66, '5e2fb270f1792', '5e2fb34a13bfe', '1+3=?', 4, 1),
(67, '5e2fb270f1792', '5e2fb34a6bea6', '4x5=?', 4, 2),
(68, '5e2fb270f1792', '5e2fb34b0791d', '25/5=?', 4, 3),
(69, '5e2fb270f1792', '5e2fb34b54498', '5-4=?', 4, 4),
(70, '5e2fb270f1792', '5e2fb34ba80b1', '5+1*2-6/2=?', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(6, '5e241883a5f97', 'Mathematical Test', 1, 0, 25, 30, '2020-02-23 05:15:11', 'enabled'),
(7, '5e244ace8abb6', 'Hindi Mathematical Test', 1, 0, 25, 30, '2020-02-23 05:15:09', 'enabled'),
(11, '5e2fb270f1792', 'Test', 0, 0, 5, 5, '2020-09-21 01:42:35', 'disabled'),
(12, '5ed37a902d1db', 'Mathematical Test', 0, 0, 4, 5, '0000-00-00 00:00:00', 'disabled');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(12, 'user1313', 0, '2020-02-23 05:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `age`, `gender`, `username`, `phno`, `password`) VALUES
(16, 'User1313', 12, 'F', 'user1313', 9911111111, '12345');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(49, '5e25e395869a0', '5e25e395a332a', '5e25e395a332a', '5e25e342830ab', 'sangam1313'),
(50, '5e25e3960b185', '5e25e39618d98', '5e25e39618d98', '5e25e342830ab', 'sangam1313'),
(51, '5e25e396a319b', '5e25e396b8ef5', '5e25e396b8ef5', '5e25e342830ab', 'sangam1313'),
(52, '5e25e3974e13a', '5e25e397572cc', '5e25e397572cc', '5e25e342830ab', 'sangam1313'),
(53, '5e25e397bb900', '5e25e397c8194', '5e25e397c8194', '5e25e342830ab', 'sangam1313'),
(54, '5e241cbd9e138', '5e241cbdcce63', '5e241cbdcce63', '5e241883a5f97', 'DarkxDevil'),
(55, '5e241cbe6c227', '5e241cbe84356', '5e241cbe84360', '5e241883a5f97', 'DarkxDevil'),
(56, '5e241cbee00b7', '5e241cbf01887', '5e241cbf01889', '5e241883a5f97', 'DarkxDevil'),
(57, '5e241cbf5048d', '5e241cbf5e9d6', '5e241cbf5e9c0', '5e241883a5f97', 'DarkxDevil'),
(58, '5e241cbfd5a1e', '5e241cbfe5aa2', '5e241cbfe5aa8', '5e241883a5f97', 'DarkxDevil'),
(59, '5e241cc04d898', '5e241cc083e7b', '5e241cc083e7b', '5e241883a5f97', 'DarkxDevil'),
(60, '5e241cc0eae7a', '5e241cc109d01', '5e241cc109cf5', '5e241883a5f97', 'DarkxDevil'),
(61, '5e241cc1530f8', '5e241cc161678', '5e241cc161677', '5e241883a5f97', 'DarkxDevil'),
(62, '5e241cc1eeeec', '5e241cc21fab8', '5e241cc21faba', '5e241883a5f97', 'DarkxDevil'),
(63, '5e241cc26e2e7', '5e241cc278f08', '5e241cc278f08', '5e241883a5f97', 'DarkxDevil'),
(64, '5e241cc2d7e4e', '5e241cc3ad6bc', '5e241cc3ad6b9', '5e241883a5f97', 'DarkxDevil'),
(65, '5e241cc41cde6', '5e241cc42a542', '5e241cc42a542', '5e241883a5f97', 'DarkxDevil'),
(66, '5e241cc48edb9', '5e241cc4b3d3b', '5e241cc4b3d3b', '5e241883a5f97', 'DarkxDevil'),
(67, '5e241cc52fe55', '5e241cc53e2b9', '5e241cc53e2b3', '5e241883a5f97', 'DarkxDevil'),
(68, '5e241cc5c24ad', '5e241cc5e0351', '5e241cc5e0351', '5e241883a5f97', 'DarkxDevil'),
(69, '5e241cc63abf5', '5e241cc6484dd', '5e241cc6484dc', '5e241883a5f97', 'DarkxDevil'),
(70, '5e241cc6bd04a', '5e241cc717455', '5e241cc717455', '5e241883a5f97', 'DarkxDevil'),
(71, '5e241cc775cc3', '5e241cc787a27', '5e241cc787a25', '5e241883a5f97', 'DarkxDevil'),
(72, '5e241cc7bf7cc', '5e241cc7ca764', '5e241cc7ca75d', '5e241883a5f97', 'DarkxDevil'),
(73, '5e241cc8d7f26', '5e241cc8e686c', '5e241cc8e6862', '5e241883a5f97', 'DarkxDevil'),
(74, '5e241cc948567', '5e241cc95315a', '5e241cc95315c', '5e241883a5f97', 'DarkxDevil'),
(75, '5e241cc98ee42', '5e241cc999a82', '5e241cc999a7d', '5e241883a5f97', 'DarkxDevil'),
(76, '5e241cc9cff63', '5e241cc9de822', '5e241cc9de829', '5e241883a5f97', 'DarkxDevil'),
(77, '5e241cca357e3', '5e241cca42e9d', '5e241cca42e9d', '5e241883a5f97', 'DarkxDevil'),
(78, '5e241ccabce23', '5e241ccac7fcd', '5e241ccac7fcd', '5e241883a5f97', 'DarkxDevil'),
(79, '5e241cbe6c227', '5e241cbe8435f', '5e241cbe84360', '5e241883a5f97', '     '),
(80, '5e241cbee00b7', '5e241cbf01889', '5e241cbf01889', '5e241883a5f97', '     '),
(81, '5e241cbf5048d', '5e241cbf5e9d5', '5e241cbf5e9c0', '5e241883a5f97', '     '),
(82, '5e241cbfd5a1e', '5e241cbfe5aa8', '5e241cbfe5aa8', '5e241883a5f97', '     '),
(83, '5e241cc0eae7a', '5e241cc109cfe', '5e241cc109cf5', '5e241883a5f97', '     '),
(84, '5e241cc1530f8', '5e241cc161677', '5e241cc161677', '5e241883a5f97', '     '),
(85, '5e241cc1eeeec', '5e241cc21faba', '5e241cc21faba', '5e241883a5f97', '     '),
(86, '5e241cc26e2e7', '5e241cc278f09', '5e241cc278f08', '5e241883a5f97', '     '),
(87, '5e241cc2d7e4e', '5e241cc3ad6bc', '5e241cc3ad6b9', '5e241883a5f97', '     '),
(88, '5e241cc41cde6', '5e241cc42a542', '5e241cc42a542', '5e241883a5f97', '     '),
(89, '5e241cc48edb9', '5e241cc4b3d3b', '5e241cc4b3d3b', '5e241883a5f97', '     '),
(90, '5e2459ac2847b', '5e2459ac8554a', '5e2459ac85550', '5e244ace8abb6', 'user'),
(91, '5e2459ace5f74', '5e2459ad04eb6', '5e2459ad04ec2', '5e244ace8abb6', 'user'),
(92, '5e2459ad7a71e', '5e2459ad8abdb', '5e2459ad8abe1', '5e244ace8abb6', 'user'),
(93, '5e2fb34a13bfe', '5e2fb34a236f7', '5e2fb34a236f7', '5e2fb270f1792', 'user'),
(94, '5e2fb34a6bea6', '5e2fb34a79796', '5e2fb34a79796', '5e2fb270f1792', 'user'),
(95, '5e2fb34b0791d', '5e2fb34b1b260', '5e2fb34b1b260', '5e2fb270f1792', 'user'),
(96, '5e2fb34b54498', '5e2fb34b5ef86', '5e2fb34b5ef86', '5e2fb270f1792', 'user'),
(97, '5e2fb34ba80b1', '5e2fb34bc5c60', '5e2fb34bc5c69', '5e2fb270f1792', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
