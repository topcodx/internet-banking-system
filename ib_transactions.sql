-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 07, 2024 at 10:39 AM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internetbanking`
--

-- --------------------------------------------------------

--
-- Table structure for table `ib_transactions`
--

DROP TABLE IF EXISTS `ib_transactions`;
CREATE TABLE IF NOT EXISTS `ib_transactions` (
  `tr_id` int(20) NOT NULL AUTO_INCREMENT,
  `tr_code` varchar(200) NOT NULL,
  `account_id` varchar(200) NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_amount` varchar(200) DEFAULT NULL,
  `tr_type` varchar(200) NOT NULL,
  `tr_status` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `transaction_amt` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `receiving_acc_no` varchar(200) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `receiving_acc_name` varchar(200) DEFAULT NULL,
  `receiving_acc_holder` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_transactions`
--

INSERT INTO `ib_transactions` (`tr_id`, `tr_code`, `account_id`, `acc_name`, `account_number`, `acc_type`, `acc_amount`, `tr_type`, `tr_status`, `client_id`, `client_name`, `client_national_id`, `transaction_amt`, `client_phone`, `receiving_acc_no`, `created_at`, `receiving_acc_name`, `receiving_acc_holder`) VALUES
(38, '2XsYuvHwMmlEfiTRgD97', '13', 'Christine Moore', '421873905', 'Current account ', '', 'Deposit', 'Success ', '4', 'Christine Moore', '478545445812', '2350', '7785452210', '', '2022-08-30 17:45:33.972970', '', ''),
(39, 'Q6zFbdlINi3Reyu8UPMD', '13', 'Christine Moore', '421873905', 'Current account ', '', 'Deposit', 'Success ', '4', 'Christine Moore', '478545445812', '660', '7785452210', '', '2022-08-30 17:46:45.034964', '', ''),
(40, 'pl1QXD8CgeKon6TRf3Fk', '13', 'Christine Moore', '421873905', 'Current account ', '', 'Withdrawal', 'Success ', '4', 'Christine Moore', '478545445812', '200', '7785452210', '', '2022-08-30 17:46:59.566360', '', ''),
(41, 'RGl1EohqrgS3K4MUAHaf', '14', 'Harry M Den', '357146928', 'Savings ', '', 'Deposit', 'Success ', '5', 'Harry Den', '100014001000', '2660', '7412560000', '', '2023-01-10 15:47:21.233304', '', ''),
(42, 'FfYSvxkq7T1iHs06p2Qa', '13', 'Christine Moore', '421873905', 'Current account ', '', 'Transfer', 'Success ', '4', 'Christine Moore', '478545445812', '665', '7785452210', '357146928', '2023-02-15 16:49:45.731760', 'Harry M Den', 'Harry Den'),
(43, 'wXOyVgizubsp6UnTNfL4', '15', 'Amanda Stiefel', '287359614', 'Savings ', '', 'Deposit', 'Success ', '8', 'Amanda Stiefel', '478000001', '2658', '7850000014', '', '2023-02-16 16:17:22.506549', '', ''),
(44, '1S6wRtU3zP0igpCYyTGF', '17', 'Liam M. Moore', '719360482', 'Savings ', '', 'Deposit', 'Success ', '9', 'Liam Moore', '170014695', '5650', '7014569696', '', '2023-02-16 16:29:14.851707', '', ''),
(45, 'GCNrZ7n3oJyM62SzpKWs', '17', 'Liam M. Moore', '719360482', 'Savings ', '', 'Withdrawal', 'Success ', '9', 'Liam Moore', '170014695', '777', '7014569696', '', '2023-02-16 16:29:38.175952', '', ''),
(46, 'J7cWlTO4hPofHFaAIvx1', '17', 'Liam M. Moore', '719360482', 'Savings ', '', 'Transfer', 'Success ', '9', 'Liam Moore', '170014695', '1256', '7014569696', '287359614', '2023-02-16 16:30:15.509360', 'Amanda Stiefel', 'Amanda Stiefel'),
(47, 'm2OlYZgkQwTPp5VHS9WN', '18', 'Johnny M. Doen', '724310586', 'Fixed Deposit Account ', '', 'Deposit', 'Success ', '3', 'John Doe', '36756481', '8550', '9897890089', '', '2023-02-16 16:40:49.466257', '', ''),
(48, 'P5urU12mcnOBbG0NMVHX', '17', 'Liam M. Moore', '719360482', 'Savings ', '', 'Deposit', 'Success ', '9', 'Liam Moore', '170014695', '600', '7014569696', '', '2023-02-16 16:40:57.306089', '', ''),
(49, 'kQBMaoO42sAeqZtS9lFz', '17', 'Liam M. Moore', '719360482', 'Savings ', '', 'Withdrawal', 'Success ', '9', 'Liam Moore', '170014695', '120', '7014569696', '', '2023-02-16 16:41:14.817821', '', ''),
(50, '9jQsTd0YV6tfqCZzckGW', '18', 'Johnny M. Doen', '724310586', 'Fixed Deposit Account ', '', 'Transfer', 'Success ', '3', 'John Doe', '36756481', '100', '9897890089', '719360482', '2023-02-16 16:41:38.758246', 'Liam M. Moore', 'Liam Moore'),
(51, 'FMyw7YGtnpQPaZXTuWmR', '14', 'Harry M Den', '357146928', 'Savings ', '', 'Deposit', 'Success ', '5', 'Harry Den', '100014001000', '6800', '7412560000', '', '2023-02-16 16:44:09.179146', '', ''),
(52, 'BwUJWSxGmtvEqkgenI5j', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Deposit', 'Success ', '10', 'kaksha Dhanani', '12354789', '8000', '7862892682', NULL, '2024-03-07 06:43:42.967692', NULL, NULL),
(53, 'BwUJWSxGmtvEqkgenI5j', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Deposit', 'Success ', '10', 'kaksha Dhanani', '12354789', '8000', '7862892682', NULL, '2024-03-07 06:43:52.883202', NULL, NULL),
(54, 'hLsH2eEMbvj5Kuft83iB', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Withdrawal', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', NULL, '2024-03-07 06:50:18.136924', NULL, NULL),
(55, 'L5QnrAFjoiWcwyXtGUp8', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '255', '7862892682', '357146928', '2024-03-07 06:54:19.852622', 'Harry M Den', 'Harry Den'),
(56, '1rzUWGIayJ3qPwvuS0VY', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '977', '7862892682', '120843756', '2024-03-07 07:33:09.475009', 'Vidhi', 'Vidhi Jogani'),
(57, 'Sx8MqaIyVB4AWcb96NGj', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Deposit', 'Success ', '13', 'Vidhi Jogani', '12354789', '8000', '9874563215', NULL, '2024-03-07 07:34:36.831806', NULL, NULL),
(58, 'xSMthbC0kqu9a17NWZiG', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '977', '7862892682', '120843756', '2024-03-07 07:35:37.069257', 'Vidhi', 'Vidhi Jogani'),
(59, '1UaoGDQ6udyPcR3pnLAF', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Deposit', 'Success ', '10', 'kaksha Dhanani', '12354789', '10000', '7862892682', NULL, '2024-03-07 08:42:03.741339', NULL, NULL),
(60, 'zNiSlQfX1bk4ndgUPmrF', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', '120843756', '2024-03-07 08:42:41.110325', 'Vidhi', 'Vidhi Jogani'),
(61, 'KUHMq8uam76yDGnpfLjE', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '120843756', '2024-03-07 08:43:48.640203', 'Vidhi', 'Vidhi Jogani'),
(62, 'GiK8lJkSWxY0v7LVPgzZ', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '100', '9874563215', '253806419', '2024-03-07 08:46:06.803622', 'Kaksha', 'kaksha Dhanani'),
(63, 'CGYVLENO3S1U0gPIXoQp', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '100', '7862892682', '120843756', '2024-03-07 08:47:54.663872', 'Vidhi', 'Vidhi Jogani'),
(64, 'ibkhRgKVEeNBn6l1SFIw', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '160', '7862892682', '120843756', '2024-03-07 08:51:11.329880', 'Vidhi', 'Vidhi Jogani'),
(65, '8SouK7EHqfg6bFNL5Tzy', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '160', '7862892682', '120843756', '2024-03-07 08:53:14.644179', 'Vidhi', 'Vidhi Jogani'),
(66, 'RCxuUgFTM1JW9aSle8KZ', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', '2024-03-07 08:55:34.472051', 'Kaksha', 'kaksha Dhanani'),
(67, 'RCxuUgFTM1JW9aSle8KZ', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', '2024-03-07 08:56:41.696518', 'Kaksha', 'kaksha Dhanani'),
(68, 'qIdmVu4oPjTLyb68OZXs', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', '2024-03-07 09:00:03.839236', 'Kaksha', 'kaksha Dhanani'),
(69, 'qIdmVu4oPjTLyb68OZXs', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', '2024-03-07 09:00:07.083906', 'Kaksha', 'kaksha Dhanani'),
(70, 'rWRiJgdXv0lp5oBhstT6', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', '2024-03-07 09:03:13.734035', 'Kaksha', 'kaksha Dhanani'),
(71, 'a1oWJ90tkVcPDFmvQEXL', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', '2024-03-07 09:12:24.466578', 'Kaksha', 'kaksha Dhanani'),
(72, 'BWvDySHTldOtwYzasf6U', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', '120843756', '2024-03-07 09:17:08.601857', 'Vidhi', 'Vidhi Jogani'),
(73, 'hegmjVxFvIqQf29Zu1sC', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Deposit', 'Success ', '13', 'Vidhi Jogani', '12354789', '10000', '9874563215', NULL, '2024-03-07 09:20:23.409635', NULL, NULL),
(74, '8iLuXGDe4HUrs2BnWRZ5', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Withdrawal', 'Success ', '13', 'Vidhi Jogani', '12354789', '100', '9874563215', NULL, '2024-03-07 09:20:43.211052', NULL, NULL),
(75, 'z7KjpG62lQETa3F10qbw', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '400', '9874563215', '253806419', '2024-03-07 09:21:07.054365', 'Kaksha', 'kaksha Dhanani'),
(76, 'cxRVm5uGtFHJNX9Pp16e', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Deposit', 'Success ', '10', 'kaksha Dhanani', '12354789', '229', '7862892682', NULL, '2024-03-07 09:22:18.063540', NULL, NULL),
(77, 'kaghXfWHuoTz8LjBbZiJ', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Withdrawal', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', NULL, '2024-03-07 09:23:05.268856', NULL, NULL),
(78, 'VbHQN1J50F6mK2Top97y', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '500', '7862892682', '120843756', '2024-03-07 09:23:35.010118', 'Vidhi', 'Vidhi Jogani'),
(79, 'NbB1xAfXe7GUlwJHujon', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '300', '7862892682', '120843756', '2024-03-07 09:26:36.301591', 'Vidhi', 'Vidhi Jogani'),
(80, 'zXtTkM0jc7LWPGm23v5w', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '100', '9874563215', '253806419', '2024-03-07 09:32:10.989566', 'Kaksha', 'kaksha Dhanani'),
(81, 'ihJRS8r4UHGoaw6ml1DC', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '900', '9874563215', '253806419', '2024-03-07 09:36:13.772744', 'Kaksha', 'kaksha Dhanani'),
(82, 'X2VGsYQcgdyD0ZjAt654', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', '2024-03-07 09:37:34.935872', 'Kaksha', 'kaksha Dhanani'),
(83, 'wGR3NBSgcH7aAnKkqpLD', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', '253806419', '2024-03-07 09:38:45.121264', 'Kaksha', 'kaksha Dhanani'),
(84, '8i9dFGblIsvzN4LUAkwR', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Deposit', 'Success ', '10', 'kaksha Dhanani', '12354789', '4000', '7862892682', NULL, '2024-03-07 09:39:18.164539', NULL, NULL),
(85, 'TBtUJK8dxN3ljR7yeYAq', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', '2024-03-07 09:45:05.552258', 'Kaksha', 'kaksha Dhanani'),
(86, 'T2UkPi9gXMC8uI4jGrya', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', '120843756', '2024-03-07 10:17:35.018984', 'Vidhi', 'Vidhi Jogani'),
(87, 'njLcQktfUdbeHBSDK4vp', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '400', '7862892682', '120843756', '2024-03-07 10:24:15.956883', 'Vidhi', 'Vidhi Jogani'),
(88, 'EuJr3HCG7qStlmZMBNWb', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Deposit', 'Success ', '14', 'Shivani Godhani', '155478', '20000', '7862890685', NULL, '2024-03-07 10:35:25.926577', NULL, NULL),
(89, 'fepZxYDgqjXrK9IGdbP0', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', '2024-03-07 10:36:22.242024', 'Kaksha', 'kaksha Dhanani');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
