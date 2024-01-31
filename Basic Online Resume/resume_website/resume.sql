-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 03:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resume`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_projects_info`
--

CREATE TABLE `academic_projects_info` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `projectDomain` varchar(255) DEFAULT NULL,
  `projectName` varchar(255) DEFAULT NULL,
  `projectDescription` text DEFAULT NULL,
  `projectTechnology` varchar(255) DEFAULT NULL,
  `projectRole` varchar(255) DEFAULT NULL,
  `projectLink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_projects_info`
--

INSERT INTO `academic_projects_info` (`id`, `student_id`, `projectDomain`, `projectName`, `projectDescription`, `projectTechnology`, `projectRole`, `projectLink`) VALUES
(1, 1, 'Full Stack', 'Tours and Travel Management ( Dec 23)', 'Transformed travel with a dynamic platform for seamless cab bookings, diverse car choices,etc.', 'Front-end (css,html,js) Back-end (php, xampp server)', 'Full Stack Developer', 'https://github.com/LatashaSukhwal/Tour-Travel_Management'),
(2, 2, 'Full Stack', 'Tours and Travel Management ( Dec 23)', 'asdfghjkl;sdfghjkl;dfhjkl;dfghjkl;sdgjkl', 'fgnm,', 'Full Stack Developer', 'https://github.com/LatashaSukhwal/Tour-Travel_Management'),
(3, 3, 'Full Stack', 'Tours and Travel Management ( Dec 23)', 'asdfghjkl;sdfghjkl;dfhjkl;dfghjkl;sdgjkl', 'fgnm,', 'Full Stack Developer', 'https://github.com/LatashaSukhwal/Tour-Travel_Management'),
(4, 4, 'xcgvbnm', 'Tours and Travel Management ( Dec 23)', 'wertyu', 'Front-end (css,html,js) Back-end (php, xampp server)', 'Full Stack Developer', 'https://github.com/Latashasukhwal'),
(5, 5, 'Full Stack', 'Tours and Travel Management ( Dec 23)', 'asdfghkl;', 'Front-end (css,html,js) Back-end (php, xampp server)', 'Full Stack Developer', 'https://github.com/LatashaSukhwal/Tour-Travel_Management'),
(6, 6, 'Full Stack', 'Tours and Travel Management ( Dec 23)', 'asdfghjkl;&#039;', 'Front-end (css,html,js) Back-end (php, xampp server)', 'Full Stack Developer', 'https://github.com/LatashaSukhwal/Tour-Travel_Management'),
(7, 7, 'Full Stack', 'Tours and Travel Management ( Dec 23)', 'asdfghjkl', 'Front-end (css,html,js) Back-end (php, xampp server)', 'Full Stack Developer', 'https://github.com/Latashasukhwal'),
(8, 8, 'xcgvbnm', 'Full Stack	 Tours and Travel Management ( Dec 23)', 'sdfghjkl', 'Front-end (css,html,js) Back-end (php, xampp server)', 'Full Stack Developer', 'https://github.com/Latashasukhwal');

-- --------------------------------------------------------

--
-- Table structure for table `certifications_info`
--

CREATE TABLE `certifications_info` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `certification` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certifications_info`
--

INSERT INTO `certifications_info` (`id`, `student_id`, `certification`) VALUES
(1, 1, 'Intro to SQL, Kaggle (2023)'),
(2, 1, 'SQL basic, HackerRank (2023)'),
(3, 2, 'Intro to SQL, Kaggle (2023)'),
(4, 2, 'SQL basic, HackerRank (2023)'),
(5, 3, 'Intro to SQL, Kaggle (2023)'),
(6, 4, 'klmclsmc;sdmlc;ms;lcmlsmclsmcmslcms'),
(7, 4, 'sdfghj'),
(8, 5, 'Intro to SQL, Kaggle (2023)'),
(9, 5, 'SQL basic, HackerRank (2023)'),
(10, 6, 'Intro to SQL, Kaggle (2023)'),
(11, 6, 'SQL basic, HackerRank (2023)'),
(12, 7, 'klmclsmc;sdmlc;ms;lcmlsmclsmcmslcms'),
(13, 7, 'SQL basic, HackerRank (2023)'),
(14, 8, 'klmclsmc;sdmlc;ms;lcmlsmclsmcmslcms');

-- --------------------------------------------------------

--
-- Table structure for table `co_curriculars_info`
--

CREATE TABLE `co_curriculars_info` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `coding_activity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `co_curriculars_info`
--

INSERT INTO `co_curriculars_info` (`id`, `student_id`, `coding_activity`) VALUES
(1, 1, 'Hackerrank 5 Star in SQL'),
(2, 1, 'SQL with BigQuery, Kaggle (2023)'),
(3, 1, 'Geeksforgeeks–Vit Bhopal Rank- 371'),
(4, 2, 'Hackerrank 5 Star in SQL'),
(5, 2, 'SQL with BigQuery, Kaggle (2023)'),
(6, 3, 'Hackerrank 5 Star in SQL'),
(7, 4, 'trtgsdtydgufyjggggggggggggggg'),
(8, 5, 'Hackerrank 5 Star in SQL'),
(9, 5, 'SQL with BigQuery, Kaggle (2023)'),
(10, 6, 'Hackerrank 5 Star in SQL'),
(11, 7, 'Hackerrank 5 Star in SQL'),
(12, 8, 'dfghjk');

-- --------------------------------------------------------

--
-- Table structure for table `education_info1`
--

CREATE TABLE `education_info1` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `board` varchar(255) DEFAULT NULL,
  `tenure` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `cgpa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education_info1`
--

INSERT INTO `education_info1` (`id`, `student_id`, `board`, `tenure`, `institution`, `cgpa`) VALUES
(1, 1, 'MCA', 'Aug 23 – Ongoing', 'Vellore Institute of Technology, Bhopal', '-'),
(2, 1, 'BCA', 'July 20 – May 23', 'Mohanlal Sukhadia University, Udaipur', '8.52'),
(3, 1, 'Class XII', 'May 20', 'Kendriya Vidyalaya no.1, Udaipur', '73.5%'),
(4, 1, 'Class X', 'May 18', 'Pioneer Academy SR.SEC.SCHOOL', '69%'),
(5, 2, 'MCA', 'Aug 23 – Ongoing', 'Vellore Institute of Technology, Bhopal', '-'),
(6, 2, 'BCA', 'July 20 – May 23', 'Mohanlal Sukhadia University, Udaipur', '8.52'),
(7, 2, 'Class XII', 'May 20', 'Kendriya Vidyalaya no.1, Udaipur', '73.5%'),
(8, 2, 'Class X', 'May 18', 'Pioneer Academy SR.SEC.SCHOOL', '69%'),
(9, 3, 'MCA', 'Aug 23 – Ongoing', 'Vellore Institute of Technology, Bhopal', '-'),
(10, 4, 'gnhn', 'sdfdgfd', '345345', '4454'),
(11, 4, 'ghng', 'vgfgd', '4445gff', '65'),
(12, 4, 'Class XII', 'May 20', 'Kendriya Vidyalaya no.1, Udaipur', '67'),
(13, 5, 'MCA', 'Aug 23 – Ongoing', 'Vellore Institute of Technology, Bhopal', '-'),
(14, 5, 'BCA', 'July 20 – May 23', 'Mohanlal Sukhadia University, Udaipur', '8.52'),
(15, 5, 'Class XII', 'May 20', 'Kendriya Vidyalaya no.1, Udaipur', '73.5%'),
(16, 5, 'Class X', 'May 18', 'Pioneer Academy SR.SEC.SCHOOL', '69%'),
(17, 6, 'MCA', 'Aug 23 – Ongoing', 'Vellore Institute of Technology, Bhopal', '-'),
(18, 6, 'BCA', 'July 20 – May 23', 'Mohanlal Sukhadia University, Udaipur', '8.52'),
(19, 7, 'MCA', 'Aug 23 – Ongoing', 'Vellore Institute of Technology, Bhopal', '-'),
(20, 7, 'BCA', 'July 20 – May 23', 'Mohanlal Sukhadia University, Udaipur', '8.52'),
(21, 8, '1212m,df,dgm;', 'Aug 23 – Ongoing', 'Vellore Institute of Technology, Bhopal', '4454');

-- --------------------------------------------------------

--
-- Table structure for table `extra_curriculars_info`
--

CREATE TABLE `extra_curriculars_info` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `responsibilities` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `extra_curriculars_info`
--

INSERT INTO `extra_curriculars_info` (`id`, `student_id`, `responsibilities`) VALUES
(1, 1, 'Full Stack Developer, Clinic Software (Team Project), (Jun 23- Jul 23)'),
(2, 2, 'wertgyuiopdfghjkl;'),
(3, 3, 'wertgyuiopdfghjkl;'),
(4, 4, 'ggggggggggggggge'),
(5, 5, 'westfgkl;'),
(6, 5, 'fgjkl;'),
(7, 6, 'asdfghjkl;&#039;'),
(8, 7, 'sdgjkl'),
(9, 8, 'sdfghjkl;&#039;');

-- --------------------------------------------------------

--
-- Table structure for table `hobbies_info`
--

CREATE TABLE `hobbies_info` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `hobbies` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hobbies_info`
--

INSERT INTO `hobbies_info` (`id`, `student_id`, `hobbies`) VALUES
(1, 1, 'Continuous Learning– Passionate about continuous learning.'),
(2, 1, 'Code Debuggin'),
(3, 2, 'Continuous Learning– Passionate about continuous learning.'),
(4, 2, 'Code Debuggin'),
(5, 3, 'Continuous Learning– Passionate about continuous learning.'),
(6, 4, 'Continuous Learning– Passionate about continuous learning.'),
(7, 4, 'rtyt'),
(8, 5, 'Continuous Learning– Passionate about continuous learning.'),
(9, 5, 'Code Debuggin'),
(10, 6, 'Continuous Learning– Passionate about continuous learning.'),
(11, 6, 'Code Debuggin'),
(12, 7, 'Continuous Learning– Passionate about continuous learning.'),
(13, 8, 'Continuous Learning– Passionate about continuous learning.');

-- --------------------------------------------------------

--
-- Table structure for table `internship_info`
--

CREATE TABLE `internship_info` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `internship_name` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `internship_info`
--

INSERT INTO `internship_info` (`id`, `student_id`, `internship_name`, `project_name`, `project_description`) VALUES
(1, 3, 'WEBANIX 1 June 23 – 15 July 23', 'sdfgjkl', 'qwertyuiop[]asdfghjkl;'),
(2, 4, 'WEBANIX 1 June 23 – 15 July 23', 'sdfgjkl', '346yytd'),
(3, 6, 'WEBANIX 1 June 23 – 15 July 23', 'Software developer :', 'asdfghjkl;&#039;'),
(4, 7, 'WEBANIX 1 June 23 – 15 July 23', 'Software developer :', 'sdfghjkl;&#039;'),
(5, 8, 'WEBANIX 1 June 23 – 15 July 23', 'Software developer :', 'sdfghjkl');

-- --------------------------------------------------------

--
-- Table structure for table `languages_info`
--

CREATE TABLE `languages_info` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages_info`
--

INSERT INTO `languages_info` (`id`, `student_id`, `language`) VALUES
(1, 1, 'English, Hindi.'),
(2, 2, 'English, Hindi.'),
(3, 3, 'English, Hindi.'),
(4, 4, 'etretrtsty'),
(5, 5, 'English, Hindi.'),
(6, 6, 'English, Hindi.'),
(7, 7, 'English, Hindi.'),
(8, 8, 'English, Hindi.');

-- --------------------------------------------------------

--
-- Table structure for table `student_info1`
--

CREATE TABLE `student_info1` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `regNumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `portfolio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info1`
--

INSERT INTO `student_info1` (`id`, `photo`, `name`, `regNumber`, `email`, `phone`, `linkedin`, `github`, `portfolio`) VALUES
(1, 'pic.png', 'Latasha Sukhwal', '23MCA10065', 'latasha.23mca10065@vitbhopal.ac.in', '+91 7976712964', 'https://www.linkedin.com/in/latasha-sukhwal-208834246/', 'https://github.com/Latashasukhwal', 'https://latashasukhwal.netlify.app/'),
(2, 'pic.jpg', 'Latasha Sukhwal', '23MCA10065', 'latasha.23mca10065@vitbhopal.ac.in', '+91 7976712964', 'https://www.linkedin.com/in/latasha-sukhwal-208834246/', 'https://github.com/Latashasukhwal', 'https://latashasukhwal.netlify.app/'),
(3, 'pic.jpg', 'Latasha Sukhwal', '23MCA10065', 'latasha.23mca10065@vitbhopal.ac.in', '+91 7976712964', 'https://www.linkedin.com/in/latasha-sukhwal-208834246/', 'https://github.com/Latashasukhwal', 'https://latashasukhwal.netlify.app/'),
(4, 'pic.jpg', 'Latasha Sukhwal', '23MCA10065', 'lata@gmail.com', '+91 7976712964', 'https://www.linkedin.com/in/latasha-sukhwal-208834246/', 'https://github.com/Latashasukhwal', 'https://latashasukhwal.netlify.app/'),
(5, 'pic.jpg', 'Latasha Sukhwal', '23MCA10065', 'latasha.23mca10065@vitbhopal.ac.in', '+91 7976712964', 'https://www.linkedin.com/in/latasha-sukhwal-208834246/', 'https://github.com/Latashasukhwal', 'https://latashasukhwal.netlify.app/'),
(6, 'pic.jpg', 'latasha sukhwal', '23MCA10065', 'latashasukhwal4@gmail.com', '+91 7976712964', 'https://www.linkedin.com/in/latasha-sukhwal-208834246/', 'https://github.com/Latashasukhwal', 'https://latashasukhwal.netlify.app/'),
(7, 'pic.jpg', 'Latasha Sukhwal', '23MCA10065', 'latashasukhwal@gmail.com', '7976712964', 'https://www.linkedin.com/in/latasha-sukhwal-208834246/', 'https://github.com/Latashasukhwal', 'https://latashasukhwal.netlify.app/'),
(8, 'pic.jpg', 'ggjjgfhgfhf', '23MCA10065', 'latashasukhwal4@gmail.com', '+91 7976712964', 'https://www.linkedin.com/in/latasha-sukhwal-208834246/', 'https://github.com/Latashasukhwal', 'https://latashasukhwal.netlify.app/');

-- --------------------------------------------------------

--
-- Table structure for table `technical_skills_info`
--

CREATE TABLE `technical_skills_info` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `technical_skill` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technical_skills_info`
--

INSERT INTO `technical_skills_info` (`id`, `student_id`, `technical_skill`) VALUES
(1, 1, 'C, C++, Java, HTML/CSS, JavaScript, Angular, Laravel, Php,MySql.'),
(2, 2, 'C, C++, Java, HTML/CSS, JavaScript, Angular, Laravel, Php,MySql.'),
(3, 2, 'sdfghgjkl'),
(4, 3, 'C, C++, Java, HTML/CSS, JavaScript, Angular, Laravel, Php,MySql.'),
(5, 4, 'C, C++, Java, HTML/CSS, JavaScript, Angular, Laravel, Php,MySql.'),
(6, 4, 'gfgfhds'),
(7, 5, 'C, C++, Java, HTML/CSS, JavaScript, Angular, Laravel, Php,MySql.'),
(8, 5, 'asdfghjkl'),
(9, 6, 'C, C++, Java, HTML/CSS, JavaScript, Angular, Laravel, Php,MySql.'),
(10, 6, 'sdfghgjkl'),
(11, 7, 'C, C++, Java, HTML/CSS, JavaScript, Angular, Laravel, Php,MySql.'),
(12, 7, 'sdfghgjkl'),
(13, 8, 'C, C++, Java, HTML/CSS, JavaScript, Angular, Laravel, Php,MySql.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_projects_info`
--
ALTER TABLE `academic_projects_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `certifications_info`
--
ALTER TABLE `certifications_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `co_curriculars_info`
--
ALTER TABLE `co_curriculars_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `education_info1`
--
ALTER TABLE `education_info1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `extra_curriculars_info`
--
ALTER TABLE `extra_curriculars_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `hobbies_info`
--
ALTER TABLE `hobbies_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `internship_info`
--
ALTER TABLE `internship_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `languages_info`
--
ALTER TABLE `languages_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_info1`
--
ALTER TABLE `student_info1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_skills_info`
--
ALTER TABLE `technical_skills_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_projects_info`
--
ALTER TABLE `academic_projects_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `certifications_info`
--
ALTER TABLE `certifications_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `co_curriculars_info`
--
ALTER TABLE `co_curriculars_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `education_info1`
--
ALTER TABLE `education_info1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `extra_curriculars_info`
--
ALTER TABLE `extra_curriculars_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hobbies_info`
--
ALTER TABLE `hobbies_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `internship_info`
--
ALTER TABLE `internship_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `languages_info`
--
ALTER TABLE `languages_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_info1`
--
ALTER TABLE `student_info1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `technical_skills_info`
--
ALTER TABLE `technical_skills_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_projects_info`
--
ALTER TABLE `academic_projects_info`
  ADD CONSTRAINT `academic_projects_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info1` (`id`);

--
-- Constraints for table `certifications_info`
--
ALTER TABLE `certifications_info`
  ADD CONSTRAINT `certifications_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info1` (`id`);

--
-- Constraints for table `co_curriculars_info`
--
ALTER TABLE `co_curriculars_info`
  ADD CONSTRAINT `co_curriculars_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info1` (`id`);

--
-- Constraints for table `education_info1`
--
ALTER TABLE `education_info1`
  ADD CONSTRAINT `education_info1_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info1` (`id`);

--
-- Constraints for table `extra_curriculars_info`
--
ALTER TABLE `extra_curriculars_info`
  ADD CONSTRAINT `extra_curriculars_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info1` (`id`);

--
-- Constraints for table `hobbies_info`
--
ALTER TABLE `hobbies_info`
  ADD CONSTRAINT `hobbies_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info1` (`id`);

--
-- Constraints for table `internship_info`
--
ALTER TABLE `internship_info`
  ADD CONSTRAINT `internship_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info1` (`id`);

--
-- Constraints for table `languages_info`
--
ALTER TABLE `languages_info`
  ADD CONSTRAINT `languages_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info1` (`id`);

--
-- Constraints for table `technical_skills_info`
--
ALTER TABLE `technical_skills_info`
  ADD CONSTRAINT `technical_skills_info_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_info1` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
