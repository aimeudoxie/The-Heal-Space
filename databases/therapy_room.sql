-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 07:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `therapy_room`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`id`, `email`, `password`) VALUES
(1, 'admin@cedric.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `iv` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`, `iv`) VALUES
(55, 368187820, 1019851506, 'vqU=', '63fb561f60446ffd277ad9d834d88489'),
(56, 1019851506, 368187820, '7ws7/d4XAMA=', 'bee118b43c5f93549cdba7cc0e0f1b8a');

-- --------------------------------------------------------

--
-- Table structure for table `patient_records`
--

CREATE TABLE `patient_records` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `therapist_id` varchar(255) NOT NULL,
  `diagnosis` text NOT NULL,
  `treatment` text NOT NULL,
  `duration` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `therapists`
--

CREATE TABLE `therapists` (
  `therapist_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `therapists`
--

INSERT INTO `therapists` (`therapist_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`, `theme`, `role`, `speciality`, `about`) VALUES
(10, 1346964037, 'Dr. Jane ', 'Smith, Ph.D', 'jane@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1717001530doctor1.jpg', 'Offline', '', 'therapists', 'Clinical Psychologist', 'With over 15 years of experience in clinical psychology, Dr. Jane Smith is dedicated to helping individuals overcome mental health challenges and achieve their full potential. Dr. Smith specializes in cognitive-behavioral therapy (CBT) and has extensive e'),
(11, 517502876, 'John ', 'Doe', 'john@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1717001613doc2.jpg', 'Offline', '', 'therapists', 'Licensed Mental Health Counselor (LMHC)', 'John Doe is a licensed marriage and family therapist with a passion for helping couples and families navigate the complexities of relationships. With a Master\'s degree in Marriage and Family Therapy from the University of Southern California, John has ove'),
(12, 1177289154, 'Emily ', 'Johnson', 'emily@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1717001691doc 4.jpg', 'Offline', '', 'therapists', 'Clinical Social Worker (LCSW or LMSW)', 'Emily Johnson is a licensed clinical social worker specializing in child and adolescent therapy. With a background in social work and over 12 years of experience, Emily has a deep understanding of the developmental challenges children and teenagers face. '),
(13, 368187820, 'Sara ', 'Thompson', 'sara1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1717001746doc3.jpg', 'Offline', '', 'therapists', 'Licensed Professional Counselor (LPC)', 'Sara Thompson is a licensed professional counselor who takes a holistic approach to mental health. With a Master\'s degree in Counseling from the University of Colorado, Sara integrates traditional therapeutic methods with mindfulness, meditation, and holi'),
(14, 364235233, 'Michael ', 'Roberts', 'michael@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1717001808doc 5.jpg', 'Offline', '', 'therapists', 'Rehabilitation Counselor', 'Michael Roberts is a certified alcohol and drug counselor with over 8 years of experience in the field of addiction recovery. Michael has a compassionate, non-judgmental approach and works closely with clients to develop individualized treatment plans tha');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `marital` varchar(50) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`, `theme`, `age`, `marital`, `occupation`, `location`, `role`) VALUES
(10, 1019851506, 'AGABA', 'Patrick', 'agaba@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1717002212agaba.png', 'Offline', '', 23, 'married', 'employed', 'Prefer not to say', 'user'),
(11, 1032765071, 'UMWARI', 'Eudoxie', 'eudoxie@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1717002433Aimee.jpg', 'Offline', '', 20, 'single', 'student', 'Eastern province', 'user'),
(12, 574591723, 'NIYITEGEKA', 'Flavien', 'flavien@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1717002551th.jpeg', 'Offline', '', 34, 'divorced', 'self-employed', 'Eastern province', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(4, 'mukandori', 'muka@gmail.com', 'i really liked your system', '2024-05-29 17:02:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `patient_records`
--
ALTER TABLE `patient_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapists`
--
ALTER TABLE `therapists`
  ADD PRIMARY KEY (`therapist_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `patient_records`
--
ALTER TABLE `patient_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `therapists`
--
ALTER TABLE `therapists`
  MODIFY `therapist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
