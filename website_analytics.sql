-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2025 at 12:04 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_analytics`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_projet_erreurs_404`
--

CREATE TABLE `db_projet_erreurs_404` (
  `id_404` int NOT NULL,
  `id_rapport` int NOT NULL,
  `id_projet` int NOT NULL,
  `nb_404` int NOT NULL,
  `fichier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_projet_projet`
--

CREATE TABLE `db_projet_projet` (
  `id_projet` int NOT NULL,
  `nom_projet` varchar(255) NOT NULL,
  `nom_siteweb` varchar(255) NOT NULL,
  `objectif` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_projet_rapport`
--

CREATE TABLE `db_projet_rapport` (
  `id_rapport` int NOT NULL,
  `id_projet` int NOT NULL,
  `nom_rapport` varchar(255) NOT NULL,
  `periode_date` date NOT NULL,
  `total_clicks` int NOT NULL,
  `total_impressions` int NOT NULL,
  `avg_ctr` float NOT NULL,
  `avg_position` float NOT NULL,
  `nb_sessions` int NOT NULL,
  `nb_active_users` int NOT NULL,
  `nb_new_users` int NOT NULL,
  `page_speed` float NOT NULL,
  `performance` float NOT NULL,
  `accessibility` float NOT NULL,
  `best_practices` float NOT NULL,
  `seo` float NOT NULL,
  `nb_backlinks` int NOT NULL,
  `nb_orders` int NOT NULL,
  `nb_cart` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_projet_top_keywords`
--

CREATE TABLE `db_projet_top_keywords` (
  `id_keyword` int NOT NULL,
  `id_rapport` int NOT NULL,
  `id_projet` int NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `nombre_requetes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_projet_top_pages`
--

CREATE TABLE `db_projet_top_pages` (
  `id_page` int NOT NULL,
  `id_rapport` int NOT NULL,
  `id_projet` int NOT NULL,
  `url_page` varchar(255) NOT NULL,
  `duree_moyenne` float NOT NULL,
  `nombre_visites` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_projet_top_session_pages`
--

CREATE TABLE `db_projet_top_session_pages` (
  `id_session_page` int NOT NULL,
  `id_rapport` int NOT NULL,
  `id_projet` int NOT NULL,
  `url_page` varchar(255) NOT NULL,
  `duree_moyenne` float NOT NULL,
  `nombre_visites` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_projet_erreurs_404`
--
ALTER TABLE `db_projet_erreurs_404`
  ADD PRIMARY KEY (`id_404`),
  ADD KEY `id_rapport` (`id_rapport`),
  ADD KEY `id_projet` (`id_projet`);

--
-- Indexes for table `db_projet_projet`
--
ALTER TABLE `db_projet_projet`
  ADD PRIMARY KEY (`id_projet`);

--
-- Indexes for table `db_projet_rapport`
--
ALTER TABLE `db_projet_rapport`
  ADD PRIMARY KEY (`id_rapport`),
  ADD KEY `id_projet` (`id_projet`);

--
-- Indexes for table `db_projet_top_keywords`
--
ALTER TABLE `db_projet_top_keywords`
  ADD PRIMARY KEY (`id_keyword`),
  ADD KEY `id_rapport` (`id_rapport`),
  ADD KEY `id_projet` (`id_projet`);

--
-- Indexes for table `db_projet_top_pages`
--
ALTER TABLE `db_projet_top_pages`
  ADD PRIMARY KEY (`id_page`),
  ADD KEY `id_rapport` (`id_rapport`),
  ADD KEY `id_projet` (`id_projet`);

--
-- Indexes for table `db_projet_top_session_pages`
--
ALTER TABLE `db_projet_top_session_pages`
  ADD PRIMARY KEY (`id_session_page`),
  ADD KEY `id_rapport` (`id_rapport`),
  ADD KEY `id_projet` (`id_projet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_projet_erreurs_404`
--
ALTER TABLE `db_projet_erreurs_404`
  MODIFY `id_404` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_projet_projet`
--
ALTER TABLE `db_projet_projet`
  MODIFY `id_projet` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_projet_rapport`
--
ALTER TABLE `db_projet_rapport`
  MODIFY `id_rapport` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_projet_top_keywords`
--
ALTER TABLE `db_projet_top_keywords`
  MODIFY `id_keyword` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_projet_top_pages`
--
ALTER TABLE `db_projet_top_pages`
  MODIFY `id_page` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_projet_top_session_pages`
--
ALTER TABLE `db_projet_top_session_pages`
  MODIFY `id_session_page` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_projet_erreurs_404`
--
ALTER TABLE `db_projet_erreurs_404`
  ADD CONSTRAINT `db_projet_erreurs_404_ibfk_1` FOREIGN KEY (`id_rapport`) REFERENCES `db_projet_rapport` (`id_rapport`) ON DELETE CASCADE,
  ADD CONSTRAINT `db_projet_erreurs_404_ibfk_2` FOREIGN KEY (`id_projet`) REFERENCES `db_projet_projet` (`id_projet`) ON DELETE CASCADE;

--
-- Constraints for table `db_projet_rapport`
--
ALTER TABLE `db_projet_rapport`
  ADD CONSTRAINT `db_projet_rapport_ibfk_1` FOREIGN KEY (`id_projet`) REFERENCES `db_projet_projet` (`id_projet`) ON DELETE CASCADE;

--
-- Constraints for table `db_projet_top_keywords`
--
ALTER TABLE `db_projet_top_keywords`
  ADD CONSTRAINT `db_projet_top_keywords_ibfk_1` FOREIGN KEY (`id_rapport`) REFERENCES `db_projet_rapport` (`id_rapport`) ON DELETE CASCADE,
  ADD CONSTRAINT `db_projet_top_keywords_ibfk_2` FOREIGN KEY (`id_projet`) REFERENCES `db_projet_projet` (`id_projet`) ON DELETE CASCADE;

--
-- Constraints for table `db_projet_top_pages`
--
ALTER TABLE `db_projet_top_pages`
  ADD CONSTRAINT `db_projet_top_pages_ibfk_1` FOREIGN KEY (`id_rapport`) REFERENCES `db_projet_rapport` (`id_rapport`) ON DELETE CASCADE,
  ADD CONSTRAINT `db_projet_top_pages_ibfk_2` FOREIGN KEY (`id_projet`) REFERENCES `db_projet_projet` (`id_projet`) ON DELETE CASCADE;

--
-- Constraints for table `db_projet_top_session_pages`
--
ALTER TABLE `db_projet_top_session_pages`
  ADD CONSTRAINT `db_projet_top_session_pages_ibfk_1` FOREIGN KEY (`id_rapport`) REFERENCES `db_projet_rapport` (`id_rapport`) ON DELETE CASCADE,
  ADD CONSTRAINT `db_projet_top_session_pages_ibfk_2` FOREIGN KEY (`id_projet`) REFERENCES `db_projet_projet` (`id_projet`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
