-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 19 mai 2021 à 10:45
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test_auth_symfony`
--
CREATE DATABASE IF NOT EXISTS `test_auth_symfony` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test_auth_symfony`;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210415142807', '2021-04-15 16:28:22', 65),
('DoctrineMigrations\\Version20210422081808', '2021-04-22 10:18:19', 1023),
('DoctrineMigrations\\Version20210422143205', '2021-04-22 16:32:19', 38);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`) VALUES
(2, 'lb@gmail.com', '{\"1\":\"ROLE_ADMIN\"}', '$argon2id$v=19$m=65536,t=4,p=1$Nm1CZnB0Tk1HL2tuRTY0Qw$91RKsHDOdhvXEfv14RQnnsxy2ojDqMqqvzY2PMf/oVw', 0),
(53, 'lbg@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(54, 'thomas@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(55, 'lba@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(56, 'thomasa@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(57, 'lbaa@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(58, 'thomasaa@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(59, 'lbaaa@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(60, 'thomasaaa@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(61, 'lbb@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(62, 'thomasb@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(63, 'lbab@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(64, 'thomasba@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(65, 'lbaba@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(66, 'thomasbaa@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(67, 'lbabaa@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(68, 'thomasabaa@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(69, 'lbc@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(70, 'thomcas@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(71, 'lbca@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(72, 'thomasca@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(73, 'lbaca@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(74, 'thocmasaa@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(75, 'lbcaaa@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(76, 'thomascaaa@gmail.com', '[\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$N0VqQzdVRXk1SER0YWpTbw$V8YP9bPThLem9ECZEgaBFP/ud1eoRM7dPlMYc9GlD+g', 0),
(77, 'lcbb@gmail.com', '[\"ROLE_ADMIN\",\"ROLE_MODERATOR\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZWZ4R2t0QWlSeDMyY0ppRg$nPl89e4H7GM91JlOmRsSaVVG8Z39duIlzlx0bOPebkY', 0),
(78, 'dark.evengyl@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$bkN0SzhaOEEvLkNiYWQ0UQ$baWK8NLyytTqgS2rjZMCEWH4VP04Om5xzKrt3yayzjs', 0),
(79, 'dark.evzdengyl@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$QmZYTEJXUnRPbTZ0UnM1SA$h07USOVibkABzdabMLRbIC6FQmrJqpd3UxTMeN8UWZs', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
