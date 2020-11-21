-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 01:29 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_smart`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_answers`
--

CREATE TABLE `tbl_answers` (
  `ansid` varchar(10) NOT NULL,
  `exid` varchar(10) NOT NULL,
  `subid` varchar(10) NOT NULL,
  `sectid` varchar(10) NOT NULL,
  `qid` varchar(10) NOT NULL,
  `file` varchar(100) NOT NULL,
  `stid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of answers of students';

--
-- Dumping data for table `tbl_answers`
--

INSERT INTO `tbl_answers` (`ansid`, `exid`, `subid`, `sectid`, `qid`, `file`, `stid`) VALUES
('ANS22303', 'EXM90825', 'SBJ19941', 'A', 'QST44431', 'IMG-20181015-WA0000.jpg', 'STD11588'),
('ANS67317', 'EXM90825', 'SBJ19941', 'A', 'QST54133', 'IMG-20181231-WA0018.jpg', 'STD11588');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_colleges`
--

CREATE TABLE `tbl_colleges` (
  `clid` varchar(10) NOT NULL,
  `clname` varchar(50) NOT NULL,
  `clstate` varchar(20) NOT NULL,
  `cldist` varchar(20) NOT NULL,
  `clcity` varchar(20) NOT NULL,
  `clpin` varchar(6) NOT NULL,
  `clph` varchar(10) NOT NULL,
  `clemail` varchar(20) NOT NULL,
  `uname` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of colleges';

--
-- Dumping data for table `tbl_colleges`
--

INSERT INTO `tbl_colleges` (`clid`, `clname`, `clstate`, `cldist`, `clcity`, `clpin`, `clph`, `clemail`, `uname`) VALUES
('CLG09251', 'Mar Athnasius College of Arts and Science', 'Kerala', 'Ernakulam', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.c', 'ma'),
('CLG13252', 'Mar Baselious Institute of Technology', 'Kerala', 'Ernakulam', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.c', 'mar'),
('CLG16272', 'College of Engineering Trivandrum', 'Kerala', 'Thiruvananthapuram', 'Kothamangalam', '686681', '9207877098', 'm@m', 'cet'),
('CLG34624', 'Vishwajyothi College of Engineering and Technology', 'Kerala', 'Idukki', 'Muvattupuzha', '686681', '9207877097', 'manuelrobz@outlook.c', 'viswa'),
('CLG37444', 'Nirmala College of Arts and Science', 'Kerala', 'Ernakulam', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.c', 'nirmala'),
('CLG65545', 'Shanthigiri College of Computer Science', 'Kerala', 'Thiruvananthapuram', 'Perumbavoor', '686681', '9207877097', 'manuelrobz@outlook.c', 'shanthi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `cid` varchar(10) NOT NULL,
  `crsname` varchar(50) NOT NULL,
  `crsctgry` varchar(20) NOT NULL,
  `crsstrm` varchar(30) NOT NULL,
  `crstype` varchar(20) NOT NULL,
  `crsdur` int(11) NOT NULL,
  `crsmod` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of courses declared';

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`cid`, `crsname`, `crsctgry`, `crsstrm`, `crstype`, `crsdur`, `crsmod`) VALUES
('CRS15100', 'Bachelor of Science in Mathematics', 'Under Graduation', 'Maths', 'Science', 36, 'Full Time'),
('CRS17444', 'Master in Commerce', 'Post Graduation', 'Commerce', 'Professional', 0, 'Full Time'),
('CRS57294', 'Master of Business Administration', 'Post Graduation', 'Commerce', 'Professional', 24, 'Full Time'),
('CRS61737', 'Bachelor of Arts in Economics', 'Under Graduation', 'Economics', 'Arts', 36, 'Full Time'),
('CRS76980', 'Bachelor of Computer Application', 'Under Graduation', 'Computer Science', 'Professional', 36, 'Full Time');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_crsclg`
--

CREATE TABLE `tbl_crsclg` (
  `tid` int(11) NOT NULL,
  `clgid` varchar(10) NOT NULL,
  `crsid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of courses in colleges';

--
-- Dumping data for table `tbl_crsclg`
--

INSERT INTO `tbl_crsclg` (`tid`, `clgid`, `crsid`) VALUES
(22, 'CLG37444', 'CRS15100'),
(23, 'CLG37444', 'CRS17444'),
(24, 'CLG09251', 'CRS76980'),
(25, 'CLG09251', 'CRS57294'),
(26, 'CLG34624', 'CRS61737'),
(27, 'CLG34624', 'CRS17444'),
(28, 'CLG13252', 'CRS61737'),
(29, 'CLG13252', 'CRS17444'),
(30, 'CLG65545', 'CRS57294'),
(31, 'CLG65545', 'CRS76980'),
(32, 'CLG37444', 'CRS57294'),
(33, 'CLG37444', 'CRS76980');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exams`
--

CREATE TABLE `tbl_exams` (
  `exid` varchar(10) NOT NULL,
  `exname` varchar(60) NOT NULL,
  `exsdt` varchar(15) NOT NULL,
  `exedt` varchar(15) NOT NULL,
  `excrsid` varchar(10) NOT NULL,
  `exsem` int(11) NOT NULL,
  `regfees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of Examination';

--
-- Dumping data for table `tbl_exams`
--

INSERT INTO `tbl_exams` (`exid`, `exname`, `exsdt`, `exedt`, `excrsid`, `exsem`, `regfees`) VALUES
('EXM90825', 'Third Semester BCA Degree Examination, December 2018', '2020-01-01', '2020-01-31', 'CRS76980', 3, 500);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exregister`
--

CREATE TABLE `tbl_exregister` (
  `id` int(11) NOT NULL,
  `exmid` varchar(10) NOT NULL,
  `stid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of students registered for exams';

--
-- Dumping data for table `tbl_exregister`
--

INSERT INTO `tbl_exregister` (`id`, `exmid`, `stid`) VALUES
(1, 'EXM90825', 'STD11588');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gen_qp`
--

CREATE TABLE `tbl_gen_qp` (
  `qpaperid` varchar(10) NOT NULL,
  `eid` varchar(10) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `sid` varchar(10) NOT NULL,
  `sect` varchar(2) NOT NULL,
  `qid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of question paper';

--
-- Dumping data for table `tbl_gen_qp`
--

INSERT INTO `tbl_gen_qp` (`qpaperid`, `eid`, `cid`, `sid`, `sect`, `qid`) VALUES
('QPR91970', 'EXM90825', 'CRS76980', 'SBJ19941', 'A', 'QST54133'),
('QPR56135', 'EXM90825', 'CRS76980', 'SBJ19941', 'B', 'QST44431'),
('QPR99411', 'EXM90825', 'CRS76980', 'SBJ19941', 'A', 'QST37781'),
('QPR00198', 'EXM90825', 'CRS76980', 'SBJ19941', 'B', 'QST41899'),
('QPR71739', 'EXM90825', 'CRS76980', 'SBJ19941', 'A', 'QST83505'),
('QPR80997', 'EXM90825', 'CRS76980', 'SBJ19941', 'B', 'QST38073'),
('QPR29896', 'EXM90825', 'CRS76980', 'SBJ19941', 'A', 'QST52626'),
('QPR40150', 'EXM90825', 'CRS76980', 'SBJ19941', 'B', 'QST01883'),
('QPR22709', 'EXM90825', 'CRS76980', 'SBJ19941', 'A', 'QST36986'),
('QPR53097', 'EXM90825', 'CRS76980', 'SBJ19941', 'B', 'QST62835'),
('QPR99187', 'EXM90825', 'CRS76980', 'SBJ19941', 'A', 'QST41398'),
('QPR59059', 'EXM90825', 'CRS76980', 'SBJ19941', 'A', 'QST41398');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question_panels`
--

CREATE TABLE `tbl_question_panels` (
  `id` int(11) NOT NULL,
  `plid` varchar(10) NOT NULL,
  `subid` varchar(10) NOT NULL,
  `exmid` varchar(10) NOT NULL,
  `teachid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of panel';

--
-- Dumping data for table `tbl_question_panels`
--

INSERT INTO `tbl_question_panels` (`id`, `plid`, `subid`, `exmid`, `teachid`) VALUES
(10, 'PNL95751', 'SBJ19941', 'EXM90825', 'THR48931'),
(12, 'PNL84627', 'SBJ19941', 'EXM90825', 'THR50847');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question_papers`
--

CREATE TABLE `tbl_question_papers` (
  `id` int(11) NOT NULL,
  `qppid` varchar(10) NOT NULL,
  `qexmid` varchar(10) NOT NULL,
  `qtmarks` int(11) NOT NULL,
  `qdurtn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store th details about structure of question';

--
-- Dumping data for table `tbl_question_papers`
--

INSERT INTO `tbl_question_papers` (`id`, `qppid`, `qexmid`, `qtmarks`, `qdurtn`) VALUES
(6, 'QPP71651', 'EXM90825', 60, 180);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question_parts`
--

CREATE TABLE `tbl_question_parts` (
  `id` int(11) NOT NULL,
  `qppid` varchar(10) NOT NULL,
  `qppart` varchar(2) NOT NULL,
  `qpnoq` int(11) NOT NULL,
  `qpmina` int(11) NOT NULL,
  `qpmpq` int(11) NOT NULL,
  `qpdurn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of parts in question paper';

--
-- Dumping data for table `tbl_question_parts`
--

INSERT INTO `tbl_question_parts` (`id`, `qppid`, `qppart`, `qpnoq`, `qpmina`, `qpmpq`, `qpdurn`) VALUES
(17, 'QPP71651', 'A', 8, 8, 3, 50),
(18, 'QPP71651', 'B', 6, 6, 6, 130);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question_pools`
--

CREATE TABLE `tbl_question_pools` (
  `qid` varchar(10) NOT NULL,
  `qplid` varchar(10) NOT NULL,
  `up_uname` varchar(10) NOT NULL,
  `qsect` varchar(2) NOT NULL,
  `quest` varchar(1000) NOT NULL,
  `qkey` varchar(1000) NOT NULL,
  `qsmod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of questions in the question pool';

--
-- Dumping data for table `tbl_question_pools`
--

INSERT INTO `tbl_question_pools` (`qid`, `qplid`, `up_uname`, `qsect`, `quest`, `qkey`, `qsmod`) VALUES
('QST01883', 'PNL95751', 'THR50847', 'B', 'Explain the concept of merge sort algorithm with example', 'Explain the concept of merge sort algorithm with example', 4),
('QST19792', 'PNL95751', 'THR50847', 'A', 'Define the recurrence relation of Binary Search method and solve it using Masters\nTheorem.', 'Define the recurrence relation of Binary Search method and solve it using Masters\nTheorem.', 4),
('QST35404', 'PNL95751', 'THR50847', 'A', 'Explain the control abstraction for greedy strategy.', 'Explain the control abstraction for greedy strategy.', 3),
('QST36986', 'PNL95751', 'THR50847', 'A', 'Write the pseudo code of Quick Sort and also find the time complexity of the algorithm.', 'Write the pseudo code of Quick Sort and also find the time complexity of the algorithm.', 5),
('QST37781', 'PNL95751', 'THR50847', 'A', 'Write down control abstraction for divide and conquer method.', 'Write down control abstraction for divide and conquer method.', 2),
('QST38073', 'PNL95751', 'THR50847', 'B', 'Write down an algorithm for finding minimum and maximum element in a list of\nnumbers. Explain the concept with an example.', 'Write down an algorithm for finding minimum and maximum element in a list of\nnumbers. Explain the concept with an example.', 3),
('QST41398', 'PNL95751', 'THR50847', 'A', 'Write down DFS algorithm.', 'Write down DFS algorithm.', 5),
('QST41899', 'PNL95751', 'THR50847', 'B', 'What are asymptotic notations? Briefly explain their properties.', 'What are asymptotic notations? Briefly explain their properties.', 2),
('QST44431', 'PNL95751', 'THR50847', 'B', 'Explain time and space complexity with relevant examples.', 'Explain time and space complexity with relevant examples.', 1),
('QST52626', 'PNL95751', 'THR50847', 'A', 'What is the principle of optimality in the theory of dynamic programming?', 'What is the principle of optimality in the theory of dynamic programming?', 4),
('QST54133', 'PNL95751', 'THR50847', 'A', 'State sum of subset problem.', 'State sum of subset problem.', 1),
('QST61658', 'PNL95751', 'THR50847', 'A', 'What is an algorithm? Explain its characteristics.', 'What is an algorithm? Explain its characteristics.', 1),
('QST62835', 'PNL95751', 'THR50847', 'B', 'Define minimum cost spanning tree.', 'Define minimum cost spanning tree.', 5),
('QST71032', 'PNL95751', 'THR50847', 'A', 'Explain the concept of branch and bound strategy.', 'Explain the concept of branch and bound strategy.', 2),
('QST83505', 'PNL95751', 'THR50847', 'A', 'Distinguish between deterministic and non deterministic algorithm', 'Distinguish between deterministic and non deterministic algorithm', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_results`
--

CREATE TABLE `tbl_results` (
  `id` int(11) NOT NULL,
  `exmid` varchar(10) NOT NULL,
  `crsid` varchar(10) NOT NULL,
  `subid` varchar(10) NOT NULL,
  `stid` varchar(10) NOT NULL,
  `qsect` varchar(2) NOT NULL,
  `qid` varchar(10) NOT NULL,
  `ans` varchar(500) NOT NULL,
  `sml` decimal(2,2) NOT NULL,
  `marks` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the results of valuation';

--
-- Dumping data for table `tbl_results`
--

INSERT INTO `tbl_results` (`id`, `exmid`, `crsid`, `subid`, `stid`, `qsect`, `qid`, `ans`, `sml`, `marks`) VALUES
(1, 'EXM90825', 'CRS76980', 'SBJ19941', 'STD11588', 'A', 'QST54133', 'f\n\nast day\n\nWe are in the |\n\nof the year\njust felt should thank\ne simile\n\neveryone who made ™\n\nthis Yeat---', '0.38', '1.15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `stid` varchar(10) NOT NULL,
  `stname` varchar(50) NOT NULL,
  `stgendr` varchar(6) NOT NULL,
  `stage` int(11) NOT NULL,
  `ststate` varchar(20) NOT NULL,
  `stdist` varchar(20) NOT NULL,
  `stcity` varchar(20) NOT NULL,
  `stpin` varchar(6) NOT NULL,
  `stph` varchar(10) NOT NULL,
  `stemail` varchar(25) NOT NULL,
  `stcid` varchar(10) NOT NULL,
  `stclid` varchar(10) NOT NULL,
  `stuname` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of students';

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`stid`, `stname`, `stgendr`, `stage`, `ststate`, `stdist`, `stcity`, `stpin`, `stph`, `stemail`, `stcid`, `stclid`, `stuname`) VALUES
('STD11588', 'Surya', 'Male', 19, 'Kerala', 'Thiruvananthapuram', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.com', 'CRS76980', 'CLG37444', 'surya'),
('STD15796', 'Sandeep TS', 'Male', 21, 'Kerala', 'Thiruvananthapuram', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.com', 'CRS17444', 'CLG37444', 'sand'),
('STD37408', 'Geo Thomas', 'Male', 21, 'Kerala', 'Thiruvananthapuram', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.com', 'CRS15100', 'CLG37444', 'geo'),
('STD69440', 'Muhammod Faizal', 'Male', 21, 'Kerala', 'Thiruvananthapuram', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.com', 'CRS15100', 'CLG37444', 'faizal'),
('STD85113', 'Akash T', 'Male', 21, 'Kerala', 'Thiruvananthapuram', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.com', 'CRS17444', 'CLG37444', 'akash');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `sbid` varchar(10) NOT NULL,
  `sbname` varchar(50) NOT NULL,
  `sbtype` varchar(20) NOT NULL,
  `sem` int(11) NOT NULL,
  `nomod` int(11) NOT NULL,
  `cid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of subjects';

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`sbid`, `sbname`, `sbtype`, `sem`, `nomod`, `cid`) VALUES
('SBJ19941', 'Design and Analysis of Algorithm', 'Complimentary', 3, 6, 'CRS76980'),
('SBJ30414', 'Indian Economy and the World Economy', 'Core', 1, 5, 'CRS61737'),
('SBJ49702', 'Globalization', 'Elective', 1, 5, 'CRS61737'),
('SBJ55571', 'Communicative English', 'Complimentary', 1, 5, 'CRS15100'),
('SBJ60917', 'Fundamentals of Accountancy', 'Core', 1, 5, 'CRS57294'),
('SBJ62747', 'Digital Systems', 'Elective', 1, 5, 'CRS17444'),
('SBJ69474', 'Business Accountancy', 'Core', 1, 5, 'CRS17444'),
('SBJ85326', 'Capital Market', 'Elective', 1, 5, 'CRS76980'),
('SBJ88583', 'Linear Programming Methodology', 'Core', 1, 5, 'CRS15100'),
('SBJ98155', 'Economics', 'Elective', 1, 5, 'CRS57294');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_syllabus`
--

CREATE TABLE `tbl_syllabus` (
  `sylid` int(11) NOT NULL,
  `sylsub` varchar(10) NOT NULL,
  `sylmod` int(11) NOT NULL,
  `syllabus` varchar(500) NOT NULL,
  `weight` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of Syllabus';

--
-- Dumping data for table `tbl_syllabus`
--

INSERT INTO `tbl_syllabus` (`sylid`, `sylsub`, `sylmod`, `syllabus`, `weight`) VALUES
(2, 'SBJ19941', 1, 'Introduction to Algorithm Analysis : Algorithm and its properties - Apriory and Aposterior analysis of algorithms -  Time and Space Complexity-  Elementary Operation and  Complexity Estimation  of Simple Algorithms - Asymptotic notations  and their properties -  Common Complexity functions - Recurrence Relations - Solution of Recurrence Relations - Iteration  Method - Recurrence  Tree Method - Masters Theorem (Proof not required)  \n8 ', '15.00'),
(3, 'SBJ19941', 2, 'Divide and Conquer Method : Control Abstraction for Divide  and Conquer- 2- way Merge Sort , Quick sort, Binary Search, Finding Maximum and minimum,  Divide and Conquer Matrix Multiplication. ', '15.00'),
(4, 'SBJ19941', 3, 'Greedy Strategy: - Control Abstraction for Greedy Strategy - The Fractional Knapsack Problem - Prims and Kruskals Algorithms for Minimal Spanning Tree - Job Sequencing Problem. \n6 ', '15.00'),
(5, 'SBJ19941', 4, 'Dynamic Programming : Control Abstraction for Dynamic Programming - The Principle of Optimal Substructure - All Pair Shortest Path Problem - Travelling Sales Person Problem, Divide and Conquer vs Dynamic Programming. ', '15.00'),
(6, 'SBJ19941', 5, 'Algorithm Design by State Space Trees: State Space - Bounding Functions – Examples. Backtracking: Control Abstraction for Backtracking - The N-Queens Problem, Sum of Subset Problem. Branch and Bound: Depth First, Breadth First and Best First  Branch and Bound  strategies and their control abstractions -  The N2-1 Puzzle Problem  \n10 ', '25.00'),
(7, 'SBJ19941', 6, 'Introduction to Computational Complexity: Tractable and Intractable Problems - Complexity Classes- P and NP Classes - SAT and 3-SAT Problems - NP-Hard and NP-Complete Classes – Study of NP complete problems - Travelling Sales Person Problem - Knapsack Problem - Clique Problem, Vertex Cover Problem. \n ', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teachers`
--

CREATE TABLE `tbl_teachers` (
  `trid` varchar(10) NOT NULL,
  `trname` varchar(50) NOT NULL,
  `trgendr` varchar(6) NOT NULL,
  `trstate` varchar(20) NOT NULL,
  `trdist` varchar(20) NOT NULL,
  `trcity` varchar(20) NOT NULL,
  `trpin` varchar(6) NOT NULL,
  `trph` varchar(10) NOT NULL,
  `tremail` varchar(25) NOT NULL,
  `trcid` varchar(10) NOT NULL,
  `trclid` varchar(10) NOT NULL,
  `truname` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the details of teachers';

--
-- Dumping data for table `tbl_teachers`
--

INSERT INTO `tbl_teachers` (`trid`, `trname`, `trgendr`, `trstate`, `trdist`, `trcity`, `trpin`, `trph`, `tremail`, `trcid`, `trclid`, `truname`) VALUES
('THR07086', 'Sandeep TS', 'Male', 'Kerala', 'Thiruvananthapuram', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.com', 'CRS15100', 'CLG37444', 'sandp'),
('THR38075', 'Manuel Robert', 'Male', 'Kerala', 'Thiruvananthapuram', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.com', 'CRS15100', 'CLG37444', 'man'),
('THR48931', 'Faizal Muhammod', 'Male', 'Kerala', 'Kollam', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.com', 'CRS76980', 'CLG09251', 'faizy'),
('THR50847', 'Muhammod Faizal AR', 'Male', 'Kerala', 'Kollam', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.com', 'CRS76980', 'CLG09251', 'faizal'),
('THR51197', 'Febin Mathew', 'Male', 'Kerala', 'Thiruvananthapuram', 'Kothamangalam', '686681', '9207877097', 'mnauelrobz@outlook.com', 'CRS17444', 'CLG37444', 'febin'),
('THR70457', 'Tony', 'Male', 'Kerala', 'Thiruvananthapuram', 'Muvattupuzha', '968545', '9656636496', 'test@gmail.com', 'CRS15100', 'CLG37444', '9696'),
('THR89436', 'Arjun Kumar', 'Male', 'Kerala', 'Kollam', 'Kothamangalam', '686681', '9207877097', 'manuelrobz@outlook.com', 'CRS17444', 'CLG34624', 'arj');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `uname` varchar(10) NOT NULL,
  `pwd` varchar(15) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store the user details';

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`uname`, `pwd`, `utype`, `status`) VALUES
('9696', '963963', 'teacher', 1),
('akash', 'akash', 'student', 0),
('arj', 'arj', 'teacher', 0),
('cet', 'cet', 'college', 1),
('faizal', 'faizal', 'teacher', 1),
('faizy', 'faizy', 'teacher', 1),
('febin', 'febin', 'teacher', 0),
('geo', 'geo', 'student', 0),
('ma', 'ma', 'college', 1),
('man', 'man', 'student', 0),
('manuel', 'manuel', 'admin', 1),
('mar', 'mar', 'college', 1),
('nirmala', 'nirmala', 'college', 1),
('sand', 'sand', 'student', 0),
('sandp', 'sandp', 'teacher', 0),
('shanthi', 'shanthi', 'college', 1),
('surya', 'surya', 'student', 1),
('viswa', 'viswa', 'college', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_answers`
--
ALTER TABLE `tbl_answers`
  ADD PRIMARY KEY (`ansid`);

--
-- Indexes for table `tbl_colleges`
--
ALTER TABLE `tbl_colleges`
  ADD PRIMARY KEY (`clid`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_crsclg`
--
ALTER TABLE `tbl_crsclg`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `tbl_exams`
--
ALTER TABLE `tbl_exams`
  ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `tbl_exregister`
--
ALTER TABLE `tbl_exregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_question_panels`
--
ALTER TABLE `tbl_question_panels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_question_papers`
--
ALTER TABLE `tbl_question_papers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_question_parts`
--
ALTER TABLE `tbl_question_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_question_pools`
--
ALTER TABLE `tbl_question_pools`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `tbl_results`
--
ALTER TABLE `tbl_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`sbid`);

--
-- Indexes for table `tbl_syllabus`
--
ALTER TABLE `tbl_syllabus`
  ADD PRIMARY KEY (`sylid`);

--
-- Indexes for table `tbl_teachers`
--
ALTER TABLE `tbl_teachers`
  ADD PRIMARY KEY (`trid`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`uname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_crsclg`
--
ALTER TABLE `tbl_crsclg`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_exregister`
--
ALTER TABLE `tbl_exregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_question_panels`
--
ALTER TABLE `tbl_question_panels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_question_papers`
--
ALTER TABLE `tbl_question_papers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_question_parts`
--
ALTER TABLE `tbl_question_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_results`
--
ALTER TABLE `tbl_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_syllabus`
--
ALTER TABLE `tbl_syllabus`
  MODIFY `sylid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
