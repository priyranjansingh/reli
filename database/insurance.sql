-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2015 at 10:49 PM
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
('249768b1-9503-9cf5-5f5d-562ea5eac808', '880dcb73-7bc2-11e5-bc4d-3c07717072c4', 'Explore Start', '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('880dcb73-7bc2-11e5-bc4d-3c07717072c4', '0', 'Student Explore', '2015-10-26 00:00:00', '2015-10-26 00:00:00', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('9737573d-2675-ad6d-b697-562ea94cc059', '880dcb73-7bc2-11e5-bc4d-3c07717072c4', 'Explore Plus', '2015-10-26 23:30:24', '2015-10-26 23:30:24', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0);

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
('146709fd-8bdb-7640-b8df-562ea58820f8', '249768b1-9503-9cf5-5f5d-562ea5eac808', 'Permanent Partial Disablement', 'Permanent Partial Disablement', '2015-10-26 23:12:33', '2015-10-26 23:12:33', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('1c0c0557-1f79-45bc-b811-562ea5eb171c', '249768b1-9503-9cf5-5f5d-562ea5eac808', 'Permanent Total Disablement', 'Permanent Total Disablement', '2015-10-26 23:12:33', '2015-10-26 23:12:33', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('86b18428-69c2-9b3a-5d78-562ea9e3260d', '9737573d-2675-ad6d-b697-562ea94cc059', 'Lorem Ipsum Lorem Ipsum', 'Lorem Ipsum Lorem Ipsum', '2015-10-26 23:30:27', '2015-10-26 23:30:27', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('986f9341-59ee-ca36-d786-562ea9a2d2c7', '9737573d-2675-ad6d-b697-562ea94cc059', 'Lorem Ipsum', 'Lorem Ipsum', '2015-10-26 23:30:27', '2015-10-26 23:30:27', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('e8eb07b5-27da-25c8-8d18-562ea5f2aefc', '249768b1-9503-9cf5-5f5d-562ea5eac808', 'Accidental Death', 'Accidental Death', '2015-10-26 23:12:33', '2015-10-26 23:12:33', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `plan_price`
--

CREATE TABLE IF NOT EXISTS `plan_price` (
  `id` char(36) NOT NULL,
  `plan` char(36) NOT NULL,
  `region` char(36) NOT NULL,
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

INSERT INTO `plan_price` (`id`, `plan`, `region`, `age_group`, `policy_amount`, `policy_tenure`, `premium`, `date_entered`, `date_modified`, `created_by`, `modified_by`, `status`, `deleted`) VALUES
('11720c9b-d217-da64-762e-562ea979cfc0', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 100000, 12, 7434, '2015-10-26 23:30:27', '2015-10-26 23:30:27', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('14465591-174d-cdcd-a35b-562ea98df966', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 100000, 15, 20832, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('1f2ccb62-e626-4bf1-f2f0-562ea9b1cb06', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 50000, 15, 8501, '2015-10-26 23:30:27', '2015-10-26 23:30:27', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('2110dcad-2ff7-86dc-e4b6-562ea9c1f1f1', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 50000, 1, 1569, '2015-10-26 23:30:25', '2015-10-26 23:30:25', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('29d81dd2-349e-ceaf-90b3-562ea920150a', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 50000, 18, 19057, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('34f128b5-4896-0631-43b8-562ea9200671', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 100000, 15, 10052, '2015-10-26 23:30:27', '2015-10-26 23:30:27', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('376217ea-c62d-eb3d-99c7-562ea9cd6580', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 100000, 1, 1849, '2015-10-26 23:30:25', '2015-10-26 23:30:25', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('3c284d4e-f3c6-e06e-8ab6-562ea97f8ead', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 50000, 18, 9497, '2015-10-26 23:30:27', '2015-10-26 23:30:27', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('3fb092d1-03dd-9f88-b581-562ea90fb0b9', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 100000, 18, 23366, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('413f0416-3f35-2514-eb78-562ea59fa76e', '249768b1-9503-9cf5-5f5d-562ea5eac808', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 30000, 1, 697, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('45025e84-a5a6-9996-8e12-562ea9361b69', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 50000, 3, 4049, '2015-10-26 23:30:25', '2015-10-26 23:30:25', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('4723ffa4-29b0-01c3-7f51-562ea5a0cd48', '249768b1-9503-9cf5-5f5d-562ea5eac808', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 30000, 3, 1347, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('4c84039e-b7e5-e348-53ae-562ea933f079', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 100000, 18, 11242, '2015-10-26 23:30:27', '2015-10-26 23:30:27', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('4cc70582-00c2-cc88-2cd5-562ea5d31fcd', '249768b1-9503-9cf5-5f5d-562ea5eac808', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 30000, 6, 2129, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('5288ee3c-95c1-a4e9-8786-562ea9233c48', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 50000, 24, 22927, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('57a35a20-39aa-c9dc-514c-562ea578bc16', '249768b1-9503-9cf5-5f5d-562ea5eac808', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 30000, 9, 3056, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('5a1a472a-9aa3-d8fd-e5ed-562ea99f87fd', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 100000, 3, 4903, '2015-10-26 23:30:25', '2015-10-26 23:30:25', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('5ae19196-3465-d174-9ccb-562ea9824a7d', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 50000, 24, 11369, '2015-10-26 23:30:27', '2015-10-26 23:30:27', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('5d0e046e-537f-3dac-24b1-562ea933c1c1', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 50000, 12, 6276, '2015-10-26 23:30:27', '2015-10-26 23:30:27', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('679c2bc9-4400-da03-5848-562ea9eefe68', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 50000, 6, 6500, '2015-10-26 23:30:25', '2015-10-26 23:30:25', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('67d4ea4e-6999-7844-8423-562ea935f28e', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 100000, 24, 13481, '2015-10-26 23:30:27', '2015-10-26 23:30:27', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('68655a04-4e5a-af9e-4434-562ea50cb248', '249768b1-9503-9cf5-5f5d-562ea5eac808', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 30000, 12, 4003, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('69f59dcb-03d8-aa47-9d3a-562ea90b09db', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 100000, 24, 28140, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('77bad9ed-f2df-1b7d-0bd1-562ea96a943e', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 50000, 1, 929, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('7ac03841-0f04-852f-0550-562ea5f4a0b1', '249768b1-9503-9cf5-5f5d-562ea5eac808', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 30000, 15, 6100, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('8644375b-f4fc-6de0-0093-562ea9927eb1', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 100000, 6, 7936, '2015-10-26 23:30:25', '2015-10-26 23:30:25', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('8b1a5a1b-d139-e413-0c3f-562ea5cf0e57', '249768b1-9503-9cf5-5f5d-562ea5eac808', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 30000, 18, 7009, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('8e6aab08-d751-1957-a7f6-562ea9ddb374', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 100000, 1, 1042, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('905e83c3-1f9d-1159-68ef-562ea5d5fd4b', '249768b1-9503-9cf5-5f5d-562ea5eac808', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 30000, 24, 9151, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('958fe2ce-21fd-33e3-82c0-562ea9b1580a', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 50000, 3, 2139, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('95ebc415-32bf-4185-8307-562ea50f3285', '249768b1-9503-9cf5-5f5d-562ea5eac808', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 30000, 1, 697, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('a0af8643-5a56-69cd-ff86-562ea5679699', '249768b1-9503-9cf5-5f5d-562ea5eac808', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 30000, 3, 1347, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('a6373ea6-0d2d-dd4e-db5f-562ea54f2a86', '249768b1-9503-9cf5-5f5d-562ea5eac808', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 30000, 6, 2129, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('a6a43229-8788-7f7f-b856-562ea9aa3aa4', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 100000, 3, 2485, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('abb9f29e-dff9-1ce8-c477-562ea552232c', '249768b1-9503-9cf5-5f5d-562ea5eac808', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 30000, 9, 3056, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('b3f6bb9b-d065-ad76-0887-562ea5a1bdb8', '249768b1-9503-9cf5-5f5d-562ea5eac808', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 30000, 12, 4003, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('b4293004-5e24-ab08-c42a-562ea92bc812', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 50000, 9, 9847, '2015-10-26 23:30:25', '2015-10-26 23:30:25', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('bbfcd1d9-a42c-d746-8607-562ea528e16a', '249768b1-9503-9cf5-5f5d-562ea5eac808', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 30000, 15, 6100, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('bc646d87-66f4-2290-0b76-562ea9a53a6c', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 50000, 6, 3306, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('c43fa767-f8dc-6837-6820-562ea51ea766', '249768b1-9503-9cf5-5f5d-562ea5eac808', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 30000, 18, 7009, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('c69d5eab-b4e3-adc4-9c85-562ea9663294', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 100000, 9, 12060, '2015-10-26 23:30:25', '2015-10-26 23:30:25', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('d20a16dc-554c-479b-a6fb-562ea9bb436d', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 100000, 6, 3888, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('d97fba09-e76d-d047-e715-562ea9d61279', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 50000, 12, 12611, '2015-10-26 23:30:25', '2015-10-26 23:30:25', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('def5195a-61f0-d0cf-18a5-562ea96e9466', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 50000, 9, 4936, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('e20167d0-9b86-483c-d2a0-562ea529351d', '249768b1-9503-9cf5-5f5d-562ea5eac808', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 30000, 24, 9151, '2015-10-26 23:12:32', '2015-10-26 23:12:32', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('e5084b59-eea3-a68b-292d-562ea938ee3c', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 100000, 12, 15470, '2015-10-26 23:30:25', '2015-10-26 23:30:25', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('ec81b7c0-3268-4673-8980-562ea90de16a', '9737573d-2675-ad6d-b697-562ea94cc059', '94e66d3c-7c2b-11e5-bdf9-3c07717072c4', '12-40', 100000, 9, 5833, '2015-10-26 23:30:26', '2015-10-26 23:30:26', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('f1d40c25-3c6c-8378-c5aa-562ea9684f8e', '9737573d-2675-ad6d-b697-562ea94cc059', '14016b12-7c0f-11e5-bdf9-3c07717072c4', '12-40', 50000, 15, 17002, '2015-10-26 23:30:25', '2015-10-26 23:30:25', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `plan_region`
--

CREATE TABLE IF NOT EXISTS `plan_region` (
  `id` char(36) NOT NULL,
  `region` varchar(255) NOT NULL,
  `date_entered` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan_region`
--

INSERT INTO `plan_region` (`id`, `region`, `date_entered`, `date_modified`, `created_by`, `modified_by`, `status`, `deleted`) VALUES
('14016b12-7c0f-11e5-bdf9-3c07717072c4', 'Wordlwide ( Including USA & Canada)', '2015-10-26 00:00:00', '2015-10-26 00:00:00', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('94e66d3c-7c2b-11e5-bdf9-3c07717072c4', 'Worldwide ( Excluding USA & Canada)', '2015-10-26 00:00:00', '2015-10-26 00:00:00', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0);

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
  `policy_amount` bigint(64) NOT NULL,
  `policy_premium` bigint(64) NOT NULL,
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

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`id`, `plan`, `proposal_no`, `policy_number`, `mobile`, `email`, `policy_amount`, `policy_premium`, `amount_paid`, `is_purchased`, `policy_purchase_date`, `policy_start_date`, `date_entered`, `date_modified`, `created_by`, `modified_by`, `status`, `deleted`) VALUES
('103dbcd0-8725-1b77-016f-562fdd60c51c', '249768b1-9503-9cf5-5f5d-562ea5eac808', 562, NULL, 2147483647, 'neeraj24a@gmail.com', 30000, 697, NULL, 'q', NULL, NULL, '2015-10-27 21:23:18', '2015-10-27 21:23:18', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0),
('4404eec1-bd06-605a-778c-562fe6203fd4', '249768b1-9503-9cf5-5f5d-562ea5eac808', 562, NULL, 2147483647, 'neeraj24a@gmail.com', 30000, 697, NULL, 'q', NULL, NULL, '2015-10-27 22:04:49', '2015-10-27 22:04:49', '6fae42f4-7a84-11e5-ad80-3c07717072c4', '6fae42f4-7a84-11e5-ad80-3c07717072c4', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `policy_details`
--

CREATE TABLE IF NOT EXISTS `policy_details` (
  `id` char(36) NOT NULL,
  `policy` char(36) NOT NULL,
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
