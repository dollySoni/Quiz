-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 04:44 PM
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
-- Database: `quize`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `AnsID` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `ans` varchar(25) NOT NULL,
  `iscorrect` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`AnsID`, `question_id`, `ans`, `iscorrect`) VALUES
(1, 1, 'Carfball', 0),
(2, 1, 'Volleyball', 1),
(3, 1, 'Handball', 0),
(4, 1, 'Baseball', 0),
(5, 2, 'Chess', 1),
(6, 2, 'Baseball', 0),
(7, 2, 'Judo', 0),
(8, 2, 'Football', 0),
(9, 3, 'Bullfighting', 0),
(10, 3, 'Judo', 1),
(11, 3, 'Rugby Football', 0),
(12, 3, 'Lecross', 0),
(13, 4, 'Football', 0),
(14, 4, 'Tennis', 1),
(15, 4, 'Cricket', 0),
(16, 4, 'none of these', 0),
(17, 5, 'Nepal', 0),
(18, 5, 'Sri Lanka', 1),
(19, 5, 'Australia', 0),
(20, 5, 'India', 0),
(21, 6, '1981', 0),
(22, 6, '1982', 1),
(23, 6, '1983', 0),
(24, 6, '1986', 0),
(25, 7, 'Ishant Sharma', 0),
(26, 7, 'Sachin Tendulkar', 1),
(27, 7, 'Rahul Dravid', 0),
(28, 7, 'Harbhajan Singh', 0),
(29, 8, 'Dravidian', 0),
(30, 8, 'Mr. Relybull', 0),
(31, 8, 'Rahul', 1),
(32, 8, 'Mr. Rajesh', 0),
(33, 9, 'Denmark', 0),
(34, 9, 'Sweden', 1),
(35, 9, 'Scotland', 0),
(36, 9, 'Canada', 0),
(37, 10, 'Portuguese', 0),
(38, 10, 'Unani', 0),
(39, 10, 'English', 1),
(40, 10, 'Turk', 0),
(41, 11, '1950', 0),
(42, 11, '1951', 0),
(43, 11, '1952', 1),
(44, 11, '1955', 0),
(45, 12, 'Rajya Sabha', 0),
(46, 12, 'Lok Sabha', 0),
(47, 12, 'both (A) and (B)', 1),
(48, 12, 'none of these', 0),
(49, 13, 'Lok Sabha only', 0),
(50, 13, 'Lok Sabha and President', 0),
(51, 13, 'Rajya Sabha only', 1),
(52, 13, 'Lok Sabha and Rajya Sabha', 0),
(53, 14, 'President', 0),
(54, 14, 'Election Commission', 0),
(55, 14, 'Vice President', 1),
(56, 14, 'Outgoing Speaker of Lok S', 1),
(57, 15, 'Leader of the opposition ', 0),
(58, 15, 'Speaker of the Lok Sabha', 0),
(59, 15, 'Prime Minister', 0),
(60, 15, 'none of these', 1),
(61, 16, 'Prime Minister', 0),
(62, 16, 'President', 0),
(63, 16, 'Speaker of the Lok Sabha', 1),
(64, 16, 'none of these', 0),
(65, 17, 'in either house', 0),
(66, 17, 'Lok Sabha', 0),
(67, 17, 'Rajya Sabha', 1),
(68, 17, 'none of these', 0),
(69, 18, 'many times', 0),
(70, 18, 'twice', 0),
(71, 18, 'three times', 1),
(72, 18, 'only once', 0),
(73, 19, 'Suspended Prohibition', 1),
(74, 19, 'Complete prohibition', 0),
(75, 19, 'Pocket', 0),
(76, 19, 'All these', 0),
(77, 20, 'Rajya Sabha', 0),
(78, 20, 'President of India', 0),
(79, 20, 'Lok Sabha', 0),
(80, 20, 'Chief Election Commission', 1),
(81, 21, 'To increase the concentra', 0),
(82, 21, 'To increase the solubilit', 0),
(83, 21, 'It increases the precipit', 1),
(84, 21, 'For the decomposition of ', 0),
(85, 22, 'Isothermal', 0),
(86, 22, 'Isochoric', 0),
(87, 22, 'Isobaric', 1),
(88, 22, 'Adiabatic', 0),
(89, 23, 'Benzyl chloride', 0),
(90, 23, 'Chlorobenzene', 0),
(91, 23, 'Ethyl chloride', 0),
(92, 23, 'Isopropyl chloride', 1),
(93, 24, 'Decrease rate constant of', 0),
(94, 24, 'Increases activation ener', 0),
(95, 24, 'Reduces enthalpy of react', 1),
(96, 24, 'Does not affect the equil', 0),
(97, 25, 'Zero', 0),
(98, 25, 'Infinite', 0),
(99, 25, '3 joules', 1),
(100, 25, '9 joules', 0),
(101, 26, '273 K', 0),
(102, 26, '300 K', 0),
(103, 26, '450 K', 1),
(104, 26, '285.7 K', 0),
(105, 27, '4f4 5df 6s1', 0),
(106, 27, '4f3 5df 6s2', 0),
(107, 27, '4f5 5d4 6s1', 1),
(108, 27, '4f7 5d1 6s2', 0),
(109, 28, 'Positron', 0),
(110, 28, 'Proton', 0),
(111, 28, 'Alpha-Particle', 0),
(112, 28, 'Beta-Patakal', 1),
(113, 29, 'Priestley', 0),
(114, 29, 'Cavendish', 0),
(115, 29, 'Ure', 1),
(116, 29, 'Levizer', 0),
(117, 30, 'It lies a bony depression', 0),
(118, 30, 'Connected to hypothalamus', 0),
(119, 30, 'Anatomically divided into', 1),
(120, 30, 'Neurohypophysis synthesiz', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionsID` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`questionsID`, `topic_id`, `question`) VALUES
(1, 1, 'Which is the national sport of the USA?'),
(2, 1, 'Which is the national sport of Japan?'),
(3, 1, 'Which is the national sport of Spain?'),
(4, 1, 'Donald Bradman was a great player of which sport?'),
(5, 1, 'Cricketer Matthew Hayden is a player of which country?'),
(6, 1, 'In which year did India become the champion of world cup cricket for the first time?'),
(7, 1, 'Who is the first cricketer to be awarded the Rajiv Gandhi Khel Ratna Award?\r\n'),
(8, 1, 'What is the surname of Rahul Dravid?'),
(9, 1, '\'Ice Hockey\' is the national sport of which country?\r\n'),
(10, 1, 'Who started the practice of the polo game in India?'),
(11, 3, 'When was the first general election to the Lok Sabha held?'),
(12, 3, 'By whom is the budget passed first?'),
(13, 3, 'Indian Parliament is included in?'),
(14, 3, 'Who appoints the provisional Speaker of Lok Sabha?\r\n'),
(15, 3, 'Who among the following is called the Custodian of Lok Sabha?'),
(16, 3, 'To whom do the members of the Lok Sabha submit their resignations?\r\n'),
(17, 3, 'In which house the no-confidence motion is brought?'),
(18, 3, 'How many times the same person can be made the President of India?'),
(19, 3, 'Which veto power does the President of India have?'),
(20, 3, 'Parliament is not included in?'),
(21, 2, 'Why do we boil the extract with conc. HNO3 in Lassaigne’s test for halogens?\r\n\r\n'),
(22, 2, 'Which of the following process is used to do maximum work done on the ideal gas if the gas is compressed to half of its initial volume?\r\n'),
(23, 2, 'Find the compound which undergoes nucleophilic substitution reaction exclusively by an SN1 mechanism\r\n'),
(24, 2, 'What is the function of a catalyst in a chemical reaction?'),
(25, 2, 'What will be the work done by 3 moles of an ideal gas when it expands spontaneously in vacuum?\r\n'),
(26, 2, 'Find the temperature at which the below reaction will be in equilibrium if the enthalpy and entropy change for the reaction is 30 Kj mol-1 and 105 J K-1 mol-1 respectively\r\nBr2(l) + Cl2(g) → 2BrCl(g)'),
(27, 2, 'Electronic configuration of the outer shell of the element Gd with atomic number 64 is\r\n'),
(28, 2, 'What is the anti-particle of electrons?'),
(29, 2, 'Who is the discoverer of hydrogen?'),
(30, 2, 'Which of the following is incorrect with reference to hypophysis?');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `resultID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `isCorrect` tinyint(1) NOT NULL,
  `examtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topicID` int(11) NOT NULL,
  `topic` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topicID`, `topic`) VALUES
(1, 'Sports'),
(2, 'Science'),
(3, 'Politics');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `google_ID` varchar(25) NOT NULL,
  `name` varchar(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `LoggedIn` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `google_ID`, `name`, `email`, `LoggedIn`) VALUES
(1, '101663004795767319512', 'Dolly Soni', 'dollysoni126@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `userAnswerID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AnsID` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`userAnswerID`, `UserID`, `AnsID`, `created`) VALUES
(1, 1, 81, '2023-04-11 15:44:10'),
(2, 1, 86, '2023-04-11 15:44:10'),
(3, 1, 90, '2023-04-11 15:44:10'),
(4, 1, 94, '2023-04-11 15:44:10'),
(5, 1, 98, '2023-04-11 15:44:10'),
(6, 1, 101, '2023-04-11 15:44:10'),
(7, 1, 107, '2023-04-11 15:44:10'),
(8, 1, 111, '2023-04-11 15:44:10'),
(9, 1, 114, '2023-04-11 15:44:10'),
(10, 1, 118, '2023-04-11 15:44:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`AnsID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionsID`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`resultID`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topicID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`userAnswerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `AnsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `questionsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `resultID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topicID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `userAnswerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
