-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 07:31 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracker`
--
CREATE DATABASE IF NOT EXISTS `tracker` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tracker`;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
CREATE TABLE IF NOT EXISTS `info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(10) NOT NULL,
  `tour_detail` text NOT NULL,
  `operator_name` tinytext NOT NULL,
  `money_in` double NOT NULL,
  `money_out` double NOT NULL,
  `file_link` tinytext NOT NULL,
  `remarks` tinytext NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `booking_id`, `tour_detail`, `operator_name`, `money_in`, `money_out`, `file_link`, `remarks`, `date_time`, `deleted_at`) VALUES
(1, 'MB001', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ', 'lorem ipsum ', 100.5, 100, '', 'test input at db', '2018-02-15 02:05:03', NULL),
(2, 'test1', 'test', 'nai', 123, 23, 'docs/test1.jpg', 'nai', '2018-02-15 02:21:30', NULL),
(3, 'mboo1', 'nai', 'bdop1', 12.45, 12, 'docs/mboo1.png', '122221', '2018-02-15 02:24:20', NULL),
(4, 'none', 'test test', 'test', 100, 10, 'docs/none.png', '', '2018-03-28 02:18:24', NULL),
(5, '001', 'test ets', 'test', 100, 10, 'docs/001.png', 'no remark', '2018-03-28 02:31:58', NULL),
(6, '1234', 'Perspiciatis iure maiores et cupiditate.', 'aperiam', 321592018.39094, 1474284.73947, 'veum.com', 'Atque laboriosam iure aut.', '2016-03-28 11:13:06', NULL),
(7, '7', 'Facere dignissimos atque nesciunt animi exercitationem numquam quasi.', 'ad', 16136611.171, 92.0536208, 'hahn.com', 'Voluptatibus ea voluptatem enim totam ut expedita ea.', '1991-05-21 00:42:49', NULL),
(8, '41882', 'Deleniti sed incidunt repudiandae voluptatem.', 'atque', 4570.7071, 1.8812386, 'brekke.org', 'Magni tempore distinctio recusandae beatae expedita iusto qui.', '1998-03-22 16:06:41', NULL),
(9, '1359', 'Consequuntur ullam iure quos et officia fugiat.', 'sit', 537.55080351, 38923341.989242, 'ritchie.info', 'Ut eligendi rerum sed aliquam non eos magni.', '1980-05-24 22:53:43', NULL),
(10, '511', 'Perspiciatis voluptatem et non sit.', 'voluptate', 127191439.68888, 25.4, 'predovic.org', 'Aut a ut voluptas inventore.', '2005-08-23 06:26:56', NULL),
(11, '2492', 'Dolores et voluptas ullam soluta itaque.', 'nulla', 641.4, 0, 'kassulkelebsack.biz', 'Atque cumque doloremque unde nostrum.', '2015-09-21 12:46:32', NULL),
(12, '9953', 'Neque quasi praesentium voluptate nesciunt aut odio.', 'fuga', 5180858.0819323, 37079083.752583, 'streich.net', 'Ea nulla exercitationem nam eum provident reiciendis sunt.', '2002-01-15 13:19:27', NULL),
(13, '7447', 'Ut id sed sit placeat magnam dolorum nisi libero.', 'ducimus', 394573.9838704, 0, 'jacobi.info', 'Dolores dicta saepe odit ut voluptate.', '2013-12-06 11:15:40', NULL),
(14, '31', 'Assumenda voluptate quos aut non.', 'voluptatum', 0, 1871376.9912349, 'schneiderheathcote.biz', 'Ad nulla iste esse at ipsa sint tempora quaerat.', '1971-02-15 12:55:58', NULL),
(15, '1244636', 'Vel excepturi minima quod repellendus eveniet.', 'ut', 5.73074, 75546.0308, 'metzluettgen.com', 'Est expedita aliquam ea.', '2015-07-03 22:09:51', NULL),
(16, '7286582', 'Sint vitae accusamus in ipsa.', 'sint', 526.952, 2.5495, 'robertssatterfield.com', 'Aliquid rem molestiae eius quae.', '2003-10-18 19:07:12', NULL),
(17, '1840', 'Qui dignissimos tempore quis aliquam eveniet incidunt.', 'ea', 303.5997, 16487, 'shanahan.info', 'Ut quia harum sint mollitia ipsa.', '1997-12-24 07:40:44', NULL),
(18, '14234', 'Consectetur quisquam id enim perspiciatis nisi.', 'nostrum', 31781.4317, 305357.85838, 'kleinpurdy.com', 'Omnis et praesentium illum beatae sunt vitae officia cupiditate.', '1979-10-18 22:40:54', NULL),
(19, '899', 'Eos vero illo rem magnam dolores.', 'earum', 5, 254149.970347, 'douglas.biz', 'Repellendus et aut odio est in qui harum.', '1971-03-29 01:24:27', NULL),
(20, '4731272', 'Commodi rem aut nesciunt ut.', 'vitae', 185223524.2, 5646716.797, 'ruecker.com', 'Incidunt ipsum debitis ut libero repudiandae et.', '2017-12-01 14:03:11', NULL),
(21, '3', 'Suscipit odio non aliquam et officia ullam et sunt.', 'veritatis', 0, 0, 'baumbach.com', 'Architecto repellendus dolores earum in corporis.', '2011-03-10 00:25:56', NULL),
(22, '8', 'Est sint est eos sunt.', 'omnis', 7009.523, 0.79502378, 'dubuquebergnaum.info', 'Praesentium numquam cum culpa quia temporibus.', '2005-08-02 03:47:36', NULL),
(23, '338642', 'Sit distinctio sequi qui harum quibusdam.', 'laborum', 3168282.3025, 429.6, 'jonespurdy.info', 'Est saepe qui optio cupiditate est ut blanditiis.', '1995-11-19 03:53:50', NULL),
(24, '931', 'Ipsam qui odio laboriosam quae.', 'est', 423280076.31241, 8816.63804782, 'bernhardthiel.com', 'Consequatur quo sed voluptas odit porro asperiores ut.', '2002-03-18 13:50:34', NULL),
(25, '6', 'Similique in labore dignissimos explicabo sequi vel.', 'a', 0, 825290.46, 'langworth.org', 'Non veniam qui debitis est.', '1982-12-27 23:47:00', NULL),
(26, '8482', 'Cum quia sint magni.', 'quas', 11261.4254, 561969775.198, 'rutherford.com', 'Maxime dicta dolorum excepturi.', '2015-04-23 16:12:35', NULL),
(27, '675430581', 'Dignissimos pariatur et et aspernatur doloremque.', 'assumenda', 311908.979, 3638.67261, 'kautzerkunde.info', 'Quaerat similique exercitationem corporis reiciendis qui voluptatem.', '1986-12-01 01:59:54', NULL),
(28, '9528', 'Est a animi et dolor consequatur totam impedit.', 'quos', 0, 15.74546, 'ledner.biz', 'Magnam quaerat est odio libero et natus aut quia.', '1981-12-06 14:00:36', NULL),
(29, '2842', 'Commodi voluptatem eos animi delectus aliquam eos iusto.', 'temporibus', 447.0503, 217, 'rowe.org', 'Dolor illum ut esse soluta ipsam.', '1986-04-06 11:37:05', NULL),
(30, '336213', 'Qui autem provident deserunt suscipit quam.', 'sequi', 2331.9, 585542.13, 'dubuque.com', 'Magnam non iure saepe ea nulla similique asperiores.', '2017-09-17 06:38:14', NULL),
(31, '70', 'Ea velit debitis est quas voluptatem blanditiis.', 'est', 0, 622362.83794, 'sanford.com', 'Et fugit fugit voluptatem aut.', '2007-12-09 14:23:32', NULL),
(32, '741391', 'Quod dolor voluptatem voluptatem vero dolorum sed repellendus.', 'labore', 142.378804027, 620719.47999258, 'willvon.org', 'A fugit et enim.', '2014-12-17 20:59:38', NULL),
(33, '65', 'Quos ut molestiae facilis consectetur deserunt.', 'et', 327761117.49, 81787.77377, 'crooks.com', 'Ad neque velit facere voluptatem quia eligendi.', '1996-09-18 10:09:03', NULL),
(34, '7431', 'Officia molestias sed consectetur itaque voluptates molestiae ut est.', 'earum', 3, 67202473.365089, 'oberbrunner.com', 'Maxime sequi iure quas odit sit officiis nemo.', '2012-03-22 09:35:21', NULL),
(35, '66', 'Est reiciendis suscipit commodi asperiores.', 'quis', 203689366.604, 13.42, 'reichertgerlach.com', 'Accusantium est harum et mollitia nisi ut.', '2012-10-07 04:44:48', NULL),
(36, '7006', 'Ab voluptatem temporibus alias aut molestiae labore.', 'assumenda', 19.4847911, 54, 'balistreri.biz', 'Excepturi velit ut impedit.', '2017-07-25 10:42:22', NULL),
(37, '773899', 'Non sint temporibus libero sed delectus qui.', 'saepe', 447768428.1212, 206129.06021531, 'kilbackschowalter.info', 'Cupiditate ut veritatis repellendus reiciendis voluptas.', '1985-03-08 16:36:40', NULL),
(38, '4933', 'Sit cupiditate nulla aut eos et dignissimos.', 'blanditiis', 0, 235669182.18, 'kulaswill.com', 'Praesentium sed nemo nam rerum quae facilis vero.', '1991-07-01 20:55:49', NULL),
(39, '551819002', 'Beatae asperiores quia aperiam dolores est.', 'iure', 32322349.4, 12.91611, 'nolan.biz', 'Nam ea autem laboriosam omnis quos ducimus.', '1984-02-08 00:02:29', NULL),
(40, '1181', 'Facere iure veniam soluta neque corrupti animi quia.', 'vitae', 0, 9.5362032, 'mcglynngraham.com', 'Rerum veritatis officiis quaerat.', '2005-12-06 18:37:44', NULL),
(41, '85166', 'Veniam corporis est magni libero et harum.', 'nostrum', 5587815.9222409, 433536326.817, 'wehnerstroman.info', 'Labore rerum consequatur in vitae.', '1986-04-28 14:12:36', NULL),
(42, '37913373', 'Ullam ut quidem adipisci enim non occaecati ipsa.', 'eaque', 21008732.003251, 221217367, 'wisozk.com', 'Earum nulla odio quo.', '1975-05-06 08:41:03', NULL),
(43, '71673', 'Impedit cum sequi voluptas.', 'sit', 219699828.87412, 3585453.206276, 'ledner.com', 'Recusandae voluptatem dolore dicta quas quia.', '1976-05-16 16:01:21', NULL),
(44, '7369', 'Facere qui omnis doloremque.', 'sunt', 155608870.00045, 593942744.7289, 'mannbergstrom.com', 'Consectetur aut quia cumque maiores fuga aliquam.', '1992-02-21 06:38:20', NULL),
(45, '62945', 'Consequatur eos eius omnis consectetur officiis maiores.', 'eos', 2953147.4, 0.5, 'breitenberg.com', 'Nemo excepturi cumque tenetur in impedit aspernatur ea.', '1971-02-11 09:11:13', NULL),
(46, '36', 'Aut vel omnis et ratione.', 'excepturi', 1826750.7795779, 0, 'littlefritsch.com', 'Fuga recusandae culpa incidunt nisi autem velit voluptatem.', '2016-04-15 01:25:37', NULL),
(47, '247', 'Quia officiis eos qui assumenda iusto atque optio.', 'non', 1.566824, 12191586.532, 'berge.net', 'Dolore quasi voluptate officia repudiandae quos vero tenetur.', '1997-10-03 18:17:58', NULL),
(48, '38', 'Non quisquam consequatur aut maiores necessitatibus voluptas.', 'porro', 3410488.2, 1.209911347, 'pfeffer.info', 'Est blanditiis et veritatis esse dolorum sit.', '1993-09-07 04:51:45', NULL),
(49, '43031089', 'Fuga reprehenderit praesentium vitae ea vel ipsam distinctio sunt.', 'amet', 679.69, 0.763, 'funkvon.com', 'Aperiam quis hic omnis temporibus.', '1986-11-12 03:41:38', NULL),
(50, '88459529', 'Inventore occaecati vero itaque ex praesentium et.', 'perferendis', 620.938839, 5162.1, 'hettinger.biz', 'Ratione doloribus et ut hic.', '2004-09-05 07:21:02', NULL),
(51, '2', 'Quia et sit animi est animi.', 'aut', 0, 17, 'sengerwilliamson.com', 'Itaque accusantium ducimus maxime deleniti quia unde architecto.', '1986-04-04 13:17:51', NULL),
(52, '79815115', 'Laborum occaecati eum odit eos sed.', 'harum', 0, 599170641.53453, 'ullrichzboncak.info', 'Magni quis totam quo autem nisi qui.', '2017-07-21 11:04:55', NULL),
(53, '59348846', 'In excepturi illo pariatur aliquam.', 'occaecati', 57.288, 96944444, 'mills.net', 'Quidem magni asperiores dolore harum.', '1988-11-25 14:57:00', NULL),
(54, '7876290', 'Veniam facilis ratione deleniti aut.', 'iure', 7.1, 13125.77959826, 'flatley.org', 'Ipsam autem voluptatem aut aut odit sunt dolore.', '1992-11-02 06:33:32', NULL),
(55, '331', 'Ex adipisci sequi voluptate aut consequatur unde vel.', 'suscipit', 37.2813173, 102531.57187, 'heaneykutch.com', 'Rem nisi voluptate illum.', '2007-05-08 22:14:28', NULL),
(56, '64199709', 'Dolorem eos et iusto natus.', 'sit', 498429.5692, 4.727, 'brekke.com', 'Est quia deleniti consequatur ut commodi et consequatur.', '2009-04-20 09:55:05', NULL),
(57, '82024', 'Repellat aut corporis repudiandae dolorem.', 'quam', 4935.462666235, 1.195154219, 'ankunding.biz', 'Eveniet magni ea sed debitis nemo.', '1987-03-14 06:40:13', NULL),
(58, '719', 'Et exercitationem eaque placeat aspernatur dolorum consequatur.', 'est', 0, 793471.37094707, 'wuckert.com', 'Qui ullam iusto et aliquid nihil et.', '2004-07-22 20:40:04', NULL),
(59, '2683754', 'Iure aliquam alias animi expedita ipsam vero.', 'qui', 4.480866, 23.3813067, 'hills.com', 'Consequatur cum maiores omnis commodi nemo distinctio animi voluptas.', '2002-12-31 18:33:58', NULL),
(60, '6813185', 'Aut et libero aut aliquam nesciunt repellendus.', 'reprehenderit', 0, 139.47700765, 'hand.com', 'Enim quo enim animi accusantium voluptatem vel.', '2005-07-20 11:58:15', NULL),
(61, '3891', 'Quibusdam ipsam omnis molestiae aut et sed commodi.', 'nulla', 0, 291.90222, 'cremindach.biz', 'Porro est nisi natus veniam soluta.', '2013-07-25 15:20:12', NULL),
(62, '626627', 'Voluptate explicabo aut quia nihil sed.', 'autem', 400241.7, 46644870, 'bayer.net', 'Laboriosam quia animi deserunt ut officia.', '1986-09-24 04:42:24', NULL),
(63, '4687855', 'Sed rerum quas et rerum est debitis.', 'velit', 1781.17736773, 879.08061, 'cole.com', 'Molestiae ratione voluptas nihil ex voluptatem.', '2007-03-17 01:36:44', NULL),
(64, '35378', 'Quos qui facere molestiae ut ut.', 'est', 12.027888, 4711735.1817367, 'johnsquitzon.biz', 'Laborum ducimus rem suscipit autem voluptatum magnam placeat.', '2011-06-25 06:37:06', NULL),
(65, '17529794', 'Cupiditate non nihil illo qui.', 'et', 203574747.79748, 400.3455761, 'daughertycollier.com', 'Quia et ducimus atque labore.', '1975-09-27 05:01:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `un` varchar(50) NOT NULL,
  `pw` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `un`, `pw`) VALUES
(1, 'saef', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'saef', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'admin', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'saef', 'c20ad4d76fe97759aa27a0c99bff6710'),
(5, 'test', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
