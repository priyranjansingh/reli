-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2015 at 10:55 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE IF NOT EXISTS `plans` (
  `id` char(36) NOT NULL,
  `parent` char(36) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `parent`, `name`, `date_entered`, `date_modified`, `created_by`, `modified_by`, `status`, `deleted`) VALUES
('880dcb73-7bc2-11e5-bc4d-3c07717072c4', '0', 'Student Explore', '2015-10-26 00:00:00', '2015-10-26 00:00:00', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('a23543c3-000c-346b-801d-562df21c296f', '8e369322-d815-abe2-734a-562de062c1c0', 'Explore Plus', '2015-10-26 10:28:45', '2015-10-26 10:28:45', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('c470b4dc-a5f3-c0fa-7b7c-562defe0f049', '8e369322-d815-abe2-734a-562de062c1c0', 'Explore Start', '2015-10-26 10:18:38', '2015-10-26 10:18:38', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `plan_advantage`
--

CREATE TABLE IF NOT EXISTS `plan_advantage` (
  `id` char(36) NOT NULL,
  `plan` char(36) NOT NULL,
  `advantage` varchar(255) NOT NULL,
  `tooltip` text,
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan_advantage`
--

INSERT INTO `plan_advantage` (`id`, `plan`, `advantage`, `tooltip`, `date_entered`, `date_modified`, `created_by`, `modified_by`, `status`, `deleted`) VALUES
('8ec31016-1f53-5618-c09e-562df230825d', 'a23543c3-000c-346b-801d-562df21c296f', 'lorem ipsum', 'Lorem Ipsum', '2015-10-26 10:28:47', '2015-10-26 10:28:47', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('977add67-99e3-e66a-2c7d-562defb0e79b', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', 'Accidental Death', 'pay the Sum Insured in case of death of the Insured Person on account of any Injury (including felonious assault)', '2015-10-26 10:18:39', '2015-10-26 10:18:39', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('9d098d4d-b5aa-ceb9-a303-562df20562eb', 'a23543c3-000c-346b-801d-562df21c296f', 'lorem ipsum', 'Lorem Ipsum', '2015-10-26 10:28:47', '2015-10-26 10:28:47', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('a5be48a2-7a5e-e8e7-aa74-562defc881ac', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', 'permanent total disablement', '', '2015-10-26 10:18:39', '2015-10-26 10:18:39', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('b34aba70-6ce4-a756-9992-562def5068ae', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', 'permanent partial disablement', '', '2015-10-26 10:18:39', '2015-10-26 10:18:39', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('b8692369-1c70-0d68-3a94-562defe773c0', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', 'compassionate visit', 'cost of a return (two-way)air ticket from the Country of Residence of an Immediate Family Member to the place of Hospitalization where Insured Person is hospitalized', '2015-10-26 10:18:39', '2015-10-26 10:18:39', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `plan_price`
--

CREATE TABLE IF NOT EXISTS `plan_price` (
  `id` char(36) NOT NULL,
  `plan` char(36) NOT NULL,
  `age_group` varchar(255) NOT NULL,
  `policy_amount` bigint(32) NOT NULL,
  `policy_tenure` int(16) NOT NULL,
  `premium` bigint(32) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan_price`
--

INSERT INTO `plan_price` (`id`, `plan`, `age_group`, `policy_amount`, `policy_tenure`, `premium`, `date_entered`, `date_modified`, `created_by`, `modified_by`, `status`, `deleted`) VALUES
('106f4e66-cffc-dba7-485b-562defcf0874', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', '12-40', 30000, 6, 2129, '2015-10-26 10:18:39', '2015-10-26 10:18:39', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('1ad4b8c0-9c18-513a-ac4f-562df2bf1fff', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 50000, 12, 12611, '2015-10-26 10:28:47', '2015-10-26 10:28:47', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('238a7f74-ab8b-e0ae-3e11-562defec6ae8', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', '12-40', 30000, 9, 3056, '2015-10-26 10:18:39', '2015-10-26 10:18:39', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('279001b7-3dbb-e8be-356f-562df22d8a59', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 100000, 9, 12060, '2015-10-26 10:28:47', '2015-10-26 10:28:47', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('2b2dfaca-660a-c9b5-96e1-562df2d52e73', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 50000, 1, 1569, '2015-10-26 10:28:46', '2015-10-26 10:28:46', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('2b33741f-a724-8974-baa3-562df29e0a94', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 100000, 12, 15470, '2015-10-26 10:28:47', '2015-10-26 10:28:47', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('2c700611-9b91-d5b0-4026-562defc4e3f5', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', '12-40', 30000, 3, 1347, '2015-10-26 10:18:39', '2015-10-26 10:18:39', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('3b6a361c-6f17-0ae3-d6da-562df2f7e1d1', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 50000, 15, 17002, '2015-10-26 10:28:47', '2015-10-26 10:28:47', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('46456269-64e2-cbe9-43b1-562df2062b0b', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 100000, 1, 1849, '2015-10-26 10:28:46', '2015-10-26 10:28:46', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('46594154-a6fc-24f8-c267-562df2f6b234', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 100000, 15, 20832, '2015-10-26 10:28:47', '2015-10-26 10:28:47', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('51d2953f-972f-ad1a-ac70-562deff77cd6', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', '12-40', 30000, 12, 4003, '2015-10-26 10:18:39', '2015-10-26 10:18:39', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('53d18084-0915-7bab-ae4c-562df2d7a262', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 50000, 18, 19057, '2015-10-26 10:28:47', '2015-10-26 10:28:47', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('59359159-854e-a15a-0e5d-562df28175bb', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 50000, 3, 4049, '2015-10-26 10:28:46', '2015-10-26 10:28:46', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('5ed5d1bc-8305-57d0-233d-562df2db2abd', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 100000, 18, 23366, '2015-10-26 10:28:47', '2015-10-26 10:28:47', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('66cb6877-7c92-bf89-a417-562df2823455', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 100000, 3, 4903, '2015-10-26 10:28:46', '2015-10-26 10:28:46', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('6c357813-20bd-3303-5f06-562df2bec2fa', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 50000, 24, 22927, '2015-10-26 10:28:47', '2015-10-26 10:28:47', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('72afa9c7-99a0-f94c-0dae-562defcad43b', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', '12-40', 30000, 15, 6100, '2015-10-26 10:18:39', '2015-10-26 10:18:39', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('770bfad3-8a13-473c-bad8-562df2aad3c1', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 50000, 6, 6500, '2015-10-26 10:28:46', '2015-10-26 10:28:46', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('798bab09-5f00-94f4-479e-562df2aa7e83', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 100000, 24, 28140, '2015-10-26 10:28:47', '2015-10-26 10:28:47', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('7d117a6a-8143-91ee-ddda-562def194e83', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', '12-40', 30000, 18, 7009, '2015-10-26 10:18:39', '2015-10-26 10:18:39', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('87e71ddc-e1e2-ccb7-85d5-562defe22f2e', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', '12-40', 30000, 24, 9151, '2015-10-26 10:18:39', '2015-10-26 10:18:39', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('ad5be1a4-7a23-09ca-70a0-562df21bc4a6', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 100000, 6, 7963, '2015-10-26 10:28:46', '2015-10-26 10:28:46', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('d60e3930-91a7-a12f-e5c2-562df2665e94', 'a23543c3-000c-346b-801d-562df21c296f', '12-40', 50000, 9, 9847, '2015-10-26 10:28:46', '2015-10-26 10:28:46', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('daf81b77-21f3-6ef9-e814-562defe9fc29', 'c470b4dc-a5f3-c0fa-7b7c-562defe0f049', '12-40', 30000, 1, 697, '2015-10-26 10:18:38', '2015-10-26 10:18:38', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE IF NOT EXISTS `policy` (
  `id` char(36) NOT NULL,
  `plan` char(36) NOT NULL,
  `proposal_no` bigint(16) NOT NULL,
  `policy_number` varchar(64) DEFAULT NULL,
  `mobile` int(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `amount_paid` varchar(255) DEFAULT NULL,
  `is_purchased` enum('q','p','r') NOT NULL DEFAULT 'q',
  `policy_purchase_date` date DEFAULT NULL,
  `policy_start_date` date DEFAULT NULL,
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `policy_details`
--

CREATE TABLE IF NOT EXISTS `policy_details` (
  `id` char(36) NOT NULL,
  `quotation` char(36) NOT NULL,
  `is_proposer` tinyint(1) NOT NULL DEFAULT '0',
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `dob` date NOT NULL,
  `title` enum('mr','mrs','miss','mst','dr') NOT NULL,
  `nominee_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` bigint(16) DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `pin_code` int(16) DEFAULT NULL,
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` char(36) NOT NULL,
  `role` varchar(64) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `date_entered`, `date_modified`, `created_by`, `modified_by`, `status`, `deleted`) VALUES
('0398ceb5-7a85-11e5-ad80-3c07717072c4', 'admin', '2015-10-25 00:00:00', '2015-10-25 00:00:00', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('0398f81b-7a85-11e5-ad80-3c07717072c4', 'manager', '2015-10-25 00:00:00', '2015-10-25 00:00:00', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('1872f0a0-7a85-11e5-ad80-3c07717072c4', 'agency', '2015-10-25 00:00:00', '2015-10-25 00:00:00', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` char(36) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `agency_name` varchar(255) NOT NULL,
  `credit` int(11) NOT NULL DEFAULT '0',
  `pan_no` varchar(64) DEFAULT NULL,
  `manager` char(36) NOT NULL,
  `branch` char(36) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pin_code` int(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` bigint(16) DEFAULT NULL,
  `mobile` bigint(16) NOT NULL,
  `user_role` char(36) NOT NULL,
  `password_key` varchar(36) DEFAULT NULL,
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_id`, `password`, `agency_name`, `credit`, `pan_no`, `manager`, `branch`, `address_line_1`, `address_line_2`, `city`, `state`, `country`, `pin_code`, `email`, `contact`, `mobile`, `user_role`, `password_key`, `date_entered`, `date_modified`, `created_by`, `modified_by`, `status`, `deleted`) VALUES
('6fae42f4-7a84-11e5-ad80-3c07717072c4', '12111', 'e10adc3949ba59abbe56e057f20f883e', 'Aromma Technology', 1000000, NULL, '1', 'Delhi', '30,Prakash Trade Centre Office Number 303A,', 'Third Floor Subhash Chowk ND', 'New Delhi', 'Delhi', 'India', 110092, 'neeraj24a@gmail.com', 8443868777, 8443868710, '0398ceb5-7a85-11e5-ad80-3c07717072c4', NULL, '2015-10-25 00:00:00', '2015-10-25 00:00:00', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_details`
--

CREATE TABLE IF NOT EXISTS `user_bank_details` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_address` text NOT NULL,
  `bank_account_no` int(32) NOT NULL,
  `bank_ifsc_code` varchar(32) NOT NULL,
  `bank_micr_code` varchar(32) DEFAULT NULL,
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_nominee`
--

CREATE TABLE IF NOT EXISTS `user_nominee` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `relation` enum('w','f','m','s','d','b') NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
