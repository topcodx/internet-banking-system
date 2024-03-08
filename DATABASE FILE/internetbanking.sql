-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2024 at 05:12 PM
-- Server version: 8.0.36-0ubuntu0.20.04.1
-- PHP Version: 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `ib_acc_types`
--

CREATE TABLE `ib_acc_types` (
  `acctype_id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `rate` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_acc_types`
--

INSERT INTO `ib_acc_types` (`acctype_id`, `name`, `description`, `rate`, `code`) VALUES
(1, 'Savings', '<p>Savings accounts&nbsp;are typically the first official bank account anybody opens. Children may open an account with a parent to begin a pattern of saving. Teenagers open accounts to stash cash earned&nbsp;from a first job&nbsp;or household chores.</p><p>Savings accounts are an excellent place to park&nbsp;emergency cash. Opening a savings account also marks the beginning of your relationship with a financial institution. For example, when joining a credit union, your &ldquo;share&rdquo; or savings account establishes your membership.</p>', '20', 'ACC-CAT-4EZFO'),
(2, ' Retirement', '<p>Retirement accounts&nbsp;offer&nbsp;tax advantages. In very general terms, you get to&nbsp;avoid paying income tax on interest&nbsp;you earn from a savings account or CD each year. But you may have to pay taxes on those earnings at a later date. Still, keeping your money sheltered from taxes may help you over the long term. Most banks offer IRAs (both&nbsp;Traditional IRAs&nbsp;and&nbsp;Roth IRAs), and they may also provide&nbsp;retirement accounts for small businesses</p>', '10', 'ACC-CAT-1QYDV'),
(4, 'Recurring deposit', '<p><strong>Recurring deposit account or RD account</strong> is opened by those who want to save certain amount of money regularly for a certain period of time and earn a higher interest rate.&nbsp;In RD&nbsp;account a&nbsp;fixed amount is deposited&nbsp;every month for a specified period and the total amount is repaid with interest at the end of the particular fixed period.&nbsp;</p><p>The period of deposit is minimum six months and maximum ten years.&nbsp;The interest rates vary&nbsp;for different plans based on the amount one saves and the period of time and also on banks. No withdrawals are allowed from the RD account. However, the bank may allow to close the account before the maturity period.</p><p>These accounts can be opened in single or joint names. Banks are also providing the Nomination facility to the RD account holders.&nbsp;</p>', '15', 'ACC-CAT-VBQLE'),
(5, 'Fixed Deposit Account', '<p>In <strong>Fixed Deposit Account</strong> (also known as <strong>FD Account</strong>), a particular sum of money is deposited in a bank for specific&nbsp;period of time. It&rsquo;s one time deposit and one time take away (withdraw) account.&nbsp;The money deposited in this account can not be withdrawn before the expiry of period.&nbsp;</p><p>However, in case of need,&nbsp; the depositor can ask for closing the fixed deposit prematurely by paying a penalty. The penalty amount varies with banks.</p><p>A high interest rate is paid on fixed deposits. The rate of interest paid for fixed deposit vary according to amount, period and also from bank to bank.</p>', '40', 'ACC-CAT-A86GO'),
(7, 'Current account', '<p><strong>Current account</strong> is mainly for business persons, firms, companies, public enterprises etc and are never used for the purpose of investment or savings.These deposits are the most liquid deposits and there are no limits for number of transactions or the amount of transactions in a day. While, there is no interest paid on amount held in the account, banks charges certain &nbsp;service charges, on such accounts. The current accounts do not have any fixed maturity as these are on continuous basis accounts.</p>', '20', 'ACC-CAT-4O8QW');

-- --------------------------------------------------------

--
-- Table structure for table `ib_admin`
--

CREATE TABLE `ib_admin` (
  `admin_id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_admin`
--

INSERT INTO `ib_admin` (`admin_id`, `name`, `email`, `number`, `password`, `profile_pic`) VALUES
(2, 'System Administrator', 'admin@mail.com', 'iBank-ADM-0516', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'admin-icn.png');

-- --------------------------------------------------------

--
-- Table structure for table `ib_bankaccounts`
--

CREATE TABLE `ib_bankaccounts` (
  `account_id` int NOT NULL,
  `acc_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `acc_type` varchar(200) NOT NULL,
  `acc_rates` varchar(200) NOT NULL,
  `acc_status` varchar(200) NOT NULL,
  `acc_amount` varchar(200) NOT NULL,
  `client_id` varchar(200) NOT NULL,
  `client_name` varchar(200) NOT NULL,
  `client_national_id` varchar(200) NOT NULL,
  `client_phone` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL,
  `client_email` varchar(200) NOT NULL,
  `client_adr` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_bankaccounts`
--

INSERT INTO `ib_bankaccounts` (`account_id`, `acc_name`, `account_number`, `acc_type`, `acc_rates`, `acc_status`, `acc_amount`, `client_id`, `client_name`, `client_national_id`, `client_phone`, `client_number`, `client_email`, `client_adr`) VALUES
(13, 'Christine Moore', '421873905', 'Current account ', '20', 'Active', '0', '4', 'Christine Moore', '478545445812', '7785452210', 'iBank-CLIENT-9501', 'christine@mail.com', '445 Bleck Street'),
(14, 'Harry M Den', '357146928', 'Savings ', '20', 'Active', '0', '5', 'Harry Den', '100014001000', '7412560000', 'iBank-CLIENT-7014', 'harryden@mail.com', '114 Allace Avenue'),
(15, 'Amanda Stiefel', '287359614', 'Savings ', '20', 'Active', '0', '8', 'Amanda Stiefel', '478000001', '7850000014', 'iBank-CLIENT-0423', 'amanda@mail.com', '92 Maple Street'),
(16, 'Johnnie Reyes', '705239816', ' Retirement ', '10', 'Active', '0', '6', 'Johnnie J. Reyes', '147455554', '7412545454', 'iBank-CLIENT-1698', 'reyes@mail.com', '23 Hinkle Deegan Lake Road'),
(17, 'Liam M. Moore', '719360482', 'Savings ', '20', 'Active', '0', '9', 'Liam Moore', '170014695', '7014569696', 'iBank-CLIENT-4716', 'liamoore@mail.com', '46 Timberbrook Lane'),
(18, 'Johnny M. Doen', '724310586', 'Fixed Deposit Account ', '40', 'Active', '0', '3', 'John Doe', '36756481', '9897890089', 'iBank-CLIENT-8127', 'johndoe@gmail.com', '127007 Localhost'),
(20, 'Kaksha', '253806419', 'Savings ', '20', 'Active', '1600', '10', 'kaksha Dhanani', '12354789', '7862892682', 'iBank-CLIENT-5097', 'kaksha@gmail.com', 'Sarthana'),
(21, 'Vidhi', '120843756', 'Savings ', '20', 'Active', '0', '13', 'Vidhi Jogani', '12354789', '9874563215', 'iBank-CLIENT-2749', 'vidhi00@gmail.com', 'Yogichowk, Surat'),
(22, 'Shivani', '145832769', 'Current account ', '20', 'Active', '-1600', '14', 'Shivani Godhani', '155478', '7862890685', 'iBank-CLIENT-7240', 'shivani@gmail.com', 'Utran');

-- --------------------------------------------------------

--
-- Table structure for table `ib_clients`
--

CREATE TABLE `ib_clients` (
  `client_id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `national_id` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `client_number` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_clients`
--

INSERT INTO `ib_clients` (`client_id`, `name`, `national_id`, `phone`, `address`, `email`, `password`, `profile_pic`, `client_number`) VALUES
(3, 'John Doe', '36756481', '9897890089', '127007 Localhost', 'johndoe@gmail.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', '', 'iBank-CLIENT-8127'),
(4, 'Christine Moore', '478545445812', '7785452210', '445 Bleck Street', 'christine@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'iBank-CLIENT-9501'),
(5, 'Harry Den', '100014001000', '7412560000', '114 Allace Avenue', 'harryden@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', '', 'iBank-CLIENT-7014'),
(6, 'Johnnie J. Reyes', '147455554', '7412545454', '23 Hinkle Deegan Lake Road', 'reyes@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'user-profile-min.png', 'iBank-CLIENT-1698'),
(9, 'Liam Moore', '170014695', '7014569696', '46 Timberbrook Lane', 'liamoore@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'user-profile-min.png', 'iBank-CLIENT-4716'),
(10, 'kaksha Dhanani 1', '12354789', '7862892682', 'Sarthana', 'kaksha@gmail.com', '169ebc868d4d8bc4e797660413d23cc3eda21043', 'download.png', 'iBank-CLIENT-5097'),
(11, 'kaksha Dhanani', '12354789', '7862892682', 'Sarthana', 'kaksha@gmail.com', '169ebc868d4d8bc4e797660413d23cc3eda21043', 'download.png', 'iBank-CLIENT-1930'),
(13, 'Vidhi Jogani', '12354789', '9874563215', 'Yogichowk, Surat', 'vidhi00@gmail.com', '151a323b57b3b634559676e7b66162caaae4289a', 'download (1).png', 'iBank-CLIENT-2749'),
(14, 'Shivani Godhani', '155478', '7862890685', 'Utran', 'shivani@gmail.com', '99ac311e78fcc49126d47b9c1510927da4c462a2', 'download.png', 'iBank-CLIENT-7240');

-- --------------------------------------------------------

--
-- Table structure for table `ib_notifications`
--

CREATE TABLE `ib_notifications` (
  `notification_id` int NOT NULL,
  `notification_details` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_notifications`
--

INSERT INTO `ib_notifications` (`notification_id`, `notification_details`) VALUES
(20, 'Amanda Stiefel Has Deposited $ 2658 To Bank Account 287359614'),
(21, 'Liam Moore Has Deposited $ 5650 To Bank Account 719360482'),
(22, 'Liam Moore Has Withdrawn $ 777 From Bank Account 719360482'),
(23, 'Liam Moore Has Transfered $ 1256 From Bank Account 719360482 To Bank Account 287359614'),
(24, 'John Doe Has Deposited $ 8550 To Bank Account 724310586'),
(25, 'Liam Moore Has Deposited $ 600 To Bank Account 719360482'),
(26, 'Liam Moore Has Withdrawn $ 120 From Bank Account 719360482'),
(27, 'John Doe Has Transfered $ 100 From Bank Account 724310586 To Bank Account 719360482'),
(28, 'Harry Den Has Deposited $ 6800 To Bank Account 357146928'),
(29, 'kaksha Dhanani Has Deposited $ 25000 To Bank Account 453270816'),
(30, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(31, 'kaksha Dhanani Has Deposited $ 40000 To Bank Account 253806419'),
(32, 'kaksha Dhanani Has Deposited $ 40000 To Bank Account 253806419'),
(33, 'kaksha Dhanani Has Deposited $ 255 To Bank Account 253806419'),
(34, 'kaksha Dhanani Has Deposited $ 255 To Bank Account 253806419'),
(35, 'kaksha Dhanani Has Deposited $ 255 To Bank Account 253806419'),
(36, 'kaksha Dhanani Has Deposited $ 255 To Bank Account 253806419'),
(37, 'kaksha Dhanani Has Deposited $ 3000 To Bank Account 253806419'),
(38, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(39, 'kaksha Dhanani Has Deposited $ 255 To Bank Account 253806419'),
(40, 'kaksha Dhanani Has Deposited $ 255 To Bank Account 253806419'),
(41, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(42, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(43, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(44, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(45, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(46, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(47, 'kaksha Dhanani Has Deposited $ 3000 To Bank Account 453270816'),
(48, 'kaksha Dhanani Has Deposited $ 3000 To Bank Account 253806419'),
(49, 'kaksha Dhanani Has Deposited $ 3000 To Bank Account 253806419'),
(50, 'kaksha Dhanani Has Deposited $ 3000 To Bank Account 253806419'),
(51, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(52, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(53, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(54, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(55, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(56, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(57, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(58, 'kaksha Dhanani Has Deposited $ 8000 To Bank Account 253806419'),
(59, 'kaksha Dhanani Has Withdrawn $ 200 From Bank Account 253806419'),
(60, 'kaksha Dhanani Has Transfered $ 255 From Bank Account 253806419 To Bank Account 357146928'),
(61, 'kaksha Dhanani Has Transfered $ 977 From Bank Account 253806419 To Bank Account 120843756'),
(62, 'Vidhi Jogani Has Deposited $ 8000 To Bank Account 120843756'),
(63, 'kaksha Dhanani Has Transfered $ 977 From Bank Account 253806419 To Bank Account 120843756'),
(64, 'kaksha Dhanani Has Deposited $ 10000 To Bank Account 253806419'),
(65, 'kaksha Dhanani Has Transfered $ 200 From Bank Account 253806419 To Bank Account 120843756'),
(66, 'Vidhi Jogani Has Transfered $ 200 From Bank Account 120843756 To Bank Account 120843756'),
(67, 'Vidhi Jogani Has Transfered $ 100 From Bank Account 120843756 To Bank Account 253806419'),
(68, 'kaksha Dhanani Has Transfered $ 100 From Bank Account 253806419 To Bank Account 120843756'),
(69, 'kaksha Dhanani Has Transfered $ 160 From Bank Account 253806419 To Bank Account 120843756'),
(70, 'kaksha Dhanani Has Transfered $ 160 From Bank Account 253806419 To Bank Account 120843756'),
(71, 'Vidhi Jogani Has Transfered $ 200 From Bank Account 120843756 To Bank Account 253806419'),
(72, 'Vidhi Jogani Has Transfered $ 200 From Bank Account 120843756 To Bank Account 253806419'),
(73, 'Vidhi Jogani Has Transfered $ 200 From Bank Account 120843756 To Bank Account 253806419'),
(74, 'Vidhi Jogani Has Transfered $ 200 From Bank Account 120843756 To Bank Account 253806419'),
(75, 'Vidhi Jogani Has Transfered $ 200 From Bank Account 120843756 To Bank Account 253806419'),
(76, 'Vidhi Jogani Has Transfered $ 200 From Bank Account 120843756 To Bank Account 253806419'),
(77, 'kaksha Dhanani Has Transfered $ 200 From Bank Account 253806419 To Bank Account 120843756'),
(78, 'Vidhi Jogani Has Deposited $ 10000 To Bank Account 120843756'),
(79, 'Vidhi Jogani Has Withdrawn $ 100 From Bank Account 120843756'),
(80, 'Vidhi Jogani Has Transfered $ 400 From Bank Account 120843756 To Bank Account 253806419'),
(81, 'kaksha Dhanani Has Deposited $ 229 To Bank Account 253806419'),
(82, 'kaksha Dhanani Has Withdrawn $ 200 From Bank Account 253806419'),
(83, 'kaksha Dhanani Has Transfered $ 500 From Bank Account 253806419 To Bank Account 120843756'),
(84, 'kaksha Dhanani Has Transfered $ 300 From Bank Account 253806419 To Bank Account 120843756'),
(85, 'Vidhi Jogani Has Transfered $ 100 From Bank Account 120843756 To Bank Account 253806419'),
(86, 'Vidhi Jogani Has Transfered $ 900 From Bank Account 120843756 To Bank Account 253806419'),
(87, 'Vidhi Jogani Has Transfered $ 200 From Bank Account 120843756 To Bank Account 253806419'),
(88, 'kaksha Dhanani Has Transfered $ 200 From Bank Account 253806419 To Bank Account 253806419'),
(89, 'kaksha Dhanani Has Deposited $ 4000 To Bank Account 253806419'),
(90, 'Vidhi Jogani Has Transfered $ 200 From Bank Account 120843756 To Bank Account 253806419'),
(91, 'kaksha Dhanani Has Transfered $ 200 From Bank Account 253806419 To Bank Account 120843756'),
(92, 'kaksha Dhanani Has Transfered $ 400 From Bank Account 253806419 To Bank Account 120843756'),
(93, 'Shivani Godhani Has Deposited $ 20000 To Bank Account 145832769'),
(94, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(95, 'Shivani Godhani Has Withdrawn $ 200 From Bank Account 145832769'),
(96, 'Shivani Godhani Has Transfered $ 300 From Bank Account 145832769 To Bank Account 253806419'),
(97, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(98, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(99, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(100, 'Shivani Godhani Has Transfered $ 1000 From Bank Account 145832769 To Bank Account 253806419'),
(101, 'kaksha Dhanani Has Deposited $ 5000 To Bank Account 253806419'),
(102, 'kaksha Dhanani Has Transfered $ 200 From Bank Account 253806419 To Bank Account 120843756'),
(103, 'kaksha Dhanani Has Transfered $ 200 From Bank Account 253806419 To Bank Account 145832769'),
(104, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(105, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(106, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(107, 'Shivani Godhani Has Deposited $ 200 To Bank Account 145832769'),
(108, 'Shivani Godhani Has Deposited $ 200 To Bank Account 145832769'),
(109, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(110, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(111, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(112, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 724310586'),
(113, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 287359614'),
(114, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(115, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(116, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(117, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(118, 'Shivani Godhani Has Transfered $ 100 From Bank Account 145832769 To Bank Account 253806419'),
(119, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(120, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419'),
(121, 'Shivani Godhani Has Transfered $ 200 From Bank Account 145832769 To Bank Account 253806419');

-- --------------------------------------------------------

--
-- Table structure for table `ib_requests`
--

CREATE TABLE `ib_requests` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `request_type` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_requests`
--

INSERT INTO `ib_requests` (`id`, `client_id`, `request_type`, `status`) VALUES
(1, 10, 'chequeBook', 0),
(2, 10, 'Debit Card', 0);

-- --------------------------------------------------------


--
-- Table structure for table `ib_requests`
--

CREATE TABLE `ib_recharges` (
  `id` int NOT NULL,
  `client_id` int NOT NULL,
  `transaction_id` int NOT NULL,
  `type` varchar(200) NOT NULL,
  `amount` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_requests`
--



-- --------------------------------------------------------

--
-- Table structure for table `ib_staff`
--

CREATE TABLE `ib_staff` (
  `staff_id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `profile_pic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_staff`
--

INSERT INTO `ib_staff` (`staff_id`, `name`, `staff_number`, `phone`, `email`, `password`, `sex`, `profile_pic`) VALUES
(3, 'Staff ', 'iBank-STAFF-6785', '0704975742', 'staff@mail.com', '6a91eb6ae9cc8e3a67d32b286c56c3431c1dc980', 'Male', 'user-profile-min.png'),
(4, 'Ratan', 'iBank-STAFF-3054', '88777445566', 'ratan@gmail.com', '46465a1df9b85480f66ae072536399b5b2958ccf', 'Male', 'male1.png');

-- --------------------------------------------------------

--
-- Table structure for table `ib_systemsettings`
--

CREATE TABLE `ib_systemsettings` (
  `id` int NOT NULL,
  `sys_name` longtext NOT NULL,
  `sys_tagline` longtext NOT NULL,
  `sys_logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_systemsettings`
--

INSERT INTO `ib_systemsettings` (`id`, `sys_name`, `sys_tagline`, `sys_logo`) VALUES
(1, 'Internet Banking', 'Financial success at every service we offer.', 'ibankinglg.png');

-- --------------------------------------------------------

--
-- Table structure for table `ib_transactions`
--

CREATE TABLE `ib_transactions` (
  `tr_id` int NOT NULL,
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
  `receiving_acc_holder` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ib_transactions`
--

INSERT INTO `ib_transactions` (`tr_id`, `tr_code`, `account_id`, `acc_name`, `account_number`, `acc_type`, `acc_amount`, `tr_type`, `tr_status`, `client_id`, `client_name`, `client_national_id`, `transaction_amt`, `client_phone`, `receiving_acc_no`, `receiving_acc_name`, `receiving_acc_holder`) VALUES
(38, '2XsYuvHwMmlEfiTRgD97', '13', 'Christine Moore', '421873905', 'Current account ', '', 'Deposit', 'Success ', '4', 'Christine Moore', '478545445812', '2350', '7785452210', '', '', ''),
(39, 'Q6zFbdlINi3Reyu8UPMD', '13', 'Christine Moore', '421873905', 'Current account ', '', 'Deposit', 'Success ', '4', 'Christine Moore', '478545445812', '660', '7785452210', '', '', ''),
(40, 'pl1QXD8CgeKon6TRf3Fk', '13', 'Christine Moore', '421873905', 'Current account ', '', 'Withdrawal', 'Success ', '4', 'Christine Moore', '478545445812', '200', '7785452210', '', '', ''),
(41, 'RGl1EohqrgS3K4MUAHaf', '14', 'Harry M Den', '357146928', 'Savings ', '', 'Deposit', 'Success ', '5', 'Harry Den', '100014001000', '2660', '7412560000', '', '', ''),
(42, 'FfYSvxkq7T1iHs06p2Qa', '13', 'Christine Moore', '421873905', 'Current account ', '', 'Transfer', 'Success ', '4', 'Christine Moore', '478545445812', '665', '7785452210', '357146928', 'Harry M Den', 'Harry Den'),
(43, 'wXOyVgizubsp6UnTNfL4', '15', 'Amanda Stiefel', '287359614', 'Savings ', '', 'Deposit', 'Success ', '8', 'Amanda Stiefel', '478000001', '2658', '7850000014', '', '', ''),
(44, '1S6wRtU3zP0igpCYyTGF', '17', 'Liam M. Moore', '719360482', 'Savings ', '', 'Deposit', 'Success ', '9', 'Liam Moore', '170014695', '5650', '7014569696', '', '', ''),
(45, 'GCNrZ7n3oJyM62SzpKWs', '17', 'Liam M. Moore', '719360482', 'Savings ', '', 'Withdrawal', 'Success ', '9', 'Liam Moore', '170014695', '777', '7014569696', '', '', ''),
(46, 'J7cWlTO4hPofHFaAIvx1', '17', 'Liam M. Moore', '719360482', 'Savings ', '', 'Transfer', 'Success ', '9', 'Liam Moore', '170014695', '1256', '7014569696', '287359614', 'Amanda Stiefel', 'Amanda Stiefel'),
(47, 'm2OlYZgkQwTPp5VHS9WN', '18', 'Johnny M. Doen', '724310586', 'Fixed Deposit Account ', '', 'Deposit', 'Success ', '3', 'John Doe', '36756481', '8550', '9897890089', '', '', ''),
(48, 'P5urU12mcnOBbG0NMVHX', '17', 'Liam M. Moore', '719360482', 'Savings ', '', 'Deposit', 'Success ', '9', 'Liam Moore', '170014695', '600', '7014569696', '', '', ''),
(49, 'kQBMaoO42sAeqZtS9lFz', '17', 'Liam M. Moore', '719360482', 'Savings ', '', 'Withdrawal', 'Success ', '9', 'Liam Moore', '170014695', '120', '7014569696', '', '', ''),
(50, '9jQsTd0YV6tfqCZzckGW', '18', 'Johnny M. Doen', '724310586', 'Fixed Deposit Account ', '', 'Transfer', 'Success ', '3', 'John Doe', '36756481', '100', '9897890089', '719360482', 'Liam M. Moore', 'Liam Moore'),
(51, 'FMyw7YGtnpQPaZXTuWmR', '14', 'Harry M Den', '357146928', 'Savings ', '', 'Deposit', 'Success ', '5', 'Harry Den', '100014001000', '6800', '7412560000', '', '', ''),
(52, 'BwUJWSxGmtvEqkgenI5j', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Deposit', 'Success ', '10', 'kaksha Dhanani', '12354789', '8000', '7862892682', NULL, NULL, NULL),
(53, 'BwUJWSxGmtvEqkgenI5j', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Deposit', 'Success ', '10', 'kaksha Dhanani', '12354789', '8000', '7862892682', NULL, NULL, NULL),
(54, 'hLsH2eEMbvj5Kuft83iB', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Withdrawal', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', NULL, NULL, NULL),
(55, 'L5QnrAFjoiWcwyXtGUp8', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '255', '7862892682', '357146928', 'Harry M Den', 'Harry Den'),
(56, '1rzUWGIayJ3qPwvuS0VY', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '977', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(57, 'Sx8MqaIyVB4AWcb96NGj', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Deposit', 'Success ', '13', 'Vidhi Jogani', '12354789', '8000', '9874563215', NULL, NULL, NULL),
(58, 'xSMthbC0kqu9a17NWZiG', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '977', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(59, '1UaoGDQ6udyPcR3pnLAF', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Deposit', 'Success ', '10', 'kaksha Dhanani', '12354789', '10000', '7862892682', NULL, NULL, NULL),
(60, 'zNiSlQfX1bk4ndgUPmrF', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(61, 'KUHMq8uam76yDGnpfLjE', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '120843756', 'Vidhi', 'Vidhi Jogani'),
(62, 'GiK8lJkSWxY0v7LVPgzZ', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '100', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(63, 'CGYVLENO3S1U0gPIXoQp', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '100', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(64, 'ibkhRgKVEeNBn6l1SFIw', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '160', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(65, '8SouK7EHqfg6bFNL5Tzy', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '160', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(66, 'RCxuUgFTM1JW9aSle8KZ', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(67, 'RCxuUgFTM1JW9aSle8KZ', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(68, 'qIdmVu4oPjTLyb68OZXs', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(69, 'qIdmVu4oPjTLyb68OZXs', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(70, 'rWRiJgdXv0lp5oBhstT6', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(71, 'a1oWJ90tkVcPDFmvQEXL', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(72, 'BWvDySHTldOtwYzasf6U', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(73, 'hegmjVxFvIqQf29Zu1sC', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Deposit', 'Success ', '13', 'Vidhi Jogani', '12354789', '10000', '9874563215', NULL, NULL, NULL),
(74, '8iLuXGDe4HUrs2BnWRZ5', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Withdrawal', 'Success ', '13', 'Vidhi Jogani', '12354789', '100', '9874563215', NULL, NULL, NULL),
(75, 'z7KjpG62lQETa3F10qbw', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '400', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(76, 'cxRVm5uGtFHJNX9Pp16e', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Deposit', 'Success ', '10', 'kaksha Dhanani', '12354789', '229', '7862892682', NULL, NULL, NULL),
(77, 'kaghXfWHuoTz8LjBbZiJ', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Withdrawal', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', NULL, NULL, NULL),
(78, 'VbHQN1J50F6mK2Top97y', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '500', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(79, 'NbB1xAfXe7GUlwJHujon', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '300', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(80, 'zXtTkM0jc7LWPGm23v5w', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '100', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(81, 'ihJRS8r4UHGoaw6ml1DC', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '900', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(82, 'X2VGsYQcgdyD0ZjAt654', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(83, 'wGR3NBSgcH7aAnKkqpLD', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', '253806419', 'Kaksha', 'kaksha Dhanani'),
(84, '8i9dFGblIsvzN4LUAkwR', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Deposit', 'Success ', '10', 'kaksha Dhanani', '12354789', '4000', '7862892682', NULL, NULL, NULL),
(85, 'TBtUJK8dxN3ljR7yeYAq', '21', 'Vidhi', '120843756', 'Savings ', NULL, 'Transfer', 'Success ', '13', 'Vidhi Jogani', '12354789', '200', '9874563215', '253806419', 'Kaksha', 'kaksha Dhanani'),
(86, 'T2UkPi9gXMC8uI4jGrya', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(87, 'njLcQktfUdbeHBSDK4vp', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '400', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(88, 'EuJr3HCG7qStlmZMBNWb', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Deposit', 'Success ', '14', 'Shivani Godhani', '155478', '20000', '7862890685', NULL, NULL, NULL),
(89, 'fepZxYDgqjXrK9IGdbP0', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(90, 'Ie61xbcNDnLXaHp9UzGw', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Withdrawal', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', NULL, NULL, NULL),
(91, 'yK9uamYxVDnekclsgNbv', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '300', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(92, 'VK5vHLB4Ta9fJg72e0OA', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(93, 'A75iE6CGmQNlV1dIXtD8', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(94, 'f0N8tglL9CTDvHEuFVqs', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(95, 'LEh8Kmv0zbrITnaDFBX1', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '1000', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(96, 'JPCHY4NgpZydS2ezMamw', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Deposit', 'Success ', '10', 'kaksha Dhanani', '12354789', '5000', '7862892682', NULL, NULL, NULL),
(97, 'ZUch7ajL0xgbfzkduAe3', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', '120843756', 'Vidhi', 'Vidhi Jogani'),
(98, 'LcW3eXdS6QVM0wBsEA4Y', '20', 'Kaksha', '253806419', 'Savings ', NULL, 'Transfer', 'Success ', '10', 'kaksha Dhanani', '12354789', '200', '7862892682', '145832769', 'Shivani', 'Shivani Godhani'),
(99, 'SUVLKvCPib4u6pIT90nw', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(100, 'BjM42HFntwbvslICczYL', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(101, 'xZlDh7Hb2jBTdgieEJRz', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(102, '1ASxB09NtdeK68Dr5OVz', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Deposit', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', NULL, NULL, NULL),
(103, 'FQS9TOWIaHBb1DZmVkul', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Deposit', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', NULL, NULL, NULL),
(104, 'OZreNRauzUvLG8S2htf0', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(105, 'UlqPOW0y7Vk4iTgAwL3N', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(106, 'MKrqOPsEgZQ6uc0LJU3R', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(107, 'P2wjmWt6ba07fiBNGu8l', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '724310586', 'Johnny M. Doen', 'John Doe'),
(108, 'l0VC4kwmFupQPYhcrSe2', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '287359614', 'Amanda Stiefel', 'Amanda Stiefel'),
(109, 'PGcvTaNmsro3IAUpzHJk', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '10\r\n\r\n', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(110, 'mbNLGavBlRqfy74whtAk', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '10\r\n\r\n', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(111, 'BIUbLr9PlHvFZDqON4M5', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(112, 'bjUV932kCWOavnemtyNq', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '100', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(113, 'xLwu4A3FEDrqdVbQCMpN', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(114, 'TgHpJFfCjvYw3P14Qoyt', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '10\r\n\r\n', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani'),
(115, 'IEBXJRND5wYjxiMLtdFZ', '22', 'Shivani', '145832769', 'Current account ', NULL, 'Transfer', 'Success ', '14', 'Shivani Godhani', '155478', '200', '7862890685', '253806419', 'Kaksha', 'kaksha Dhanani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  ADD PRIMARY KEY (`acctype_id`);

--
-- Indexes for table `ib_admin`
--
ALTER TABLE `ib_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `ib_clients`
--
ALTER TABLE `ib_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `ib_notifications`
--
ALTER TABLE `ib_notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `ib_requests`
--
ALTER TABLE `ib_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_staff`
--
ALTER TABLE `ib_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  ADD PRIMARY KEY (`tr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ib_acc_types`
--
ALTER TABLE `ib_acc_types`
  MODIFY `acctype_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ib_admin`
--
ALTER TABLE `ib_admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ib_bankaccounts`
--
ALTER TABLE `ib_bankaccounts`
  MODIFY `account_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ib_clients`
--
ALTER TABLE `ib_clients`
  MODIFY `client_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ib_notifications`
--
ALTER TABLE `ib_notifications`
  MODIFY `notification_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `ib_requests`
--
ALTER TABLE `ib_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ib_staff`
--
ALTER TABLE `ib_staff`
  MODIFY `staff_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ib_systemsettings`
--
ALTER TABLE `ib_systemsettings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ib_transactions`
--
ALTER TABLE `ib_transactions`
  MODIFY `tr_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
