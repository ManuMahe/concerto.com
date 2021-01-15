-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 15 jan. 2021 à 14:02
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `concertobd`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courriel_contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `nom_contact`, `courriel_contact`, `objet`, `message`) VALUES
(1, 'Jean', 'jean@gmail.com', 'Coucou', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210111093213', '2021-01-11 09:32:32', 83),
('DoctrineMigrations\\Version20210111093852', '2021-01-11 09:39:47', 163),
('DoctrineMigrations\\Version20210111095416', '2021-01-11 09:54:31', 42),
('DoctrineMigrations\\Version20210111100220', '2021-01-11 10:02:27', 54),
('DoctrineMigrations\\Version20210111101739', '2021-01-11 10:17:46', 102);

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id`, `nom_marque`) VALUES
(1, 'Steinway'),
(2, 'Pleyel'),
(3, 'Gaveau'),
(4, 'Yamaha'),
(5, 'Erard');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_produit` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_produit` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_produit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_produit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_produit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `marque_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_29A5EC27C54C8C93` (`type_id`),
  KEY `IDX_29A5EC274827B9B2` (`marque_id`),
  KEY `IDX_29A5EC27A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom_produit`, `description_produit`, `prix_produit`, `stock_produit`, `photo_produit`, `type_id`, `marque_id`, `user_id`) VALUES
(1, 'V-125', 'Qualité sonore, toucher, durabilité et stabilité font du piano droit V-125 un authentique Steinway. Toutes ces caractéristiques lui permettront d\'enthousiasmer aussi bien les débutants que les musiciens qualifiés, que ce soit à domicile ou dans de nombreux instituts de formation autour du monde.', '31000', '3', 'piano-droit-steinway-sons-v-125-5ffc5dcfb7a51.jpg', 3, 1, 1),
(2, 'F278-CONCERT-BLK', 'Ce piano de concert, héritier du célèbre modèle AL, s\'inscrit dans la grande tradition de haute facture Pleyel. Les techniques les plus récentes développées par le bureau d\'études et de développement de Pleyel ont été intégrées pour que cet instrument d\'exception allie tradition et modernité. Chant soutenu, timbre coloré, grande profondeur et ampleur des basses, chaleur du médium et finesse des aigus : ses qualités musicales alliées à la puissance et à l\'équilibre nécessaires à un grand piano de concert, permettent de répondre aux plus hautes exigences techniques des concertistes contemporains. Grâce à une sélection rigoureuse des matériaux les plus nobles et à une fabrication sans compromis, cet instrument offre des performances musicales optimales dans le respect de l\'identité sonore de la marque.', '113000', '1', 'F278-CONCERT-BLK-5ffc5ea6c0c15.png', 2, 2, 1),
(3, 'Crapaud Soleil', 'Ce piano GAVEAU quart de queue, est en placage de palissandre «soleil». Son cadre est en fonte pleine, ses cordes croisées, son clavier en ivoire (88 notes). C\'est un modèle 1, Paris 1926 sa partie instrumentale est en excellent état, la partie harmonique intacte, les garnitures fraiches, les chevilles et les marteaux remplacés.\r\nLongueur 150 cm x Largeur 149 cm. Epoque et style  : Art Déco, son décor en palissandre teinté en éventail figurant \"sept soleils couchants toutes faces\".', '87000', '1', 'gaveau-crapeau-soleil-5ffc5f7ab1c00.jpg', 4, 3, 1),
(4, 'Crown Jewels', 'Les Steinway Crown Jewels sont des pianos à queue et pianos droits exclusifs et fabriqués de manière personnalisée, qui séduisent par leurs placages précieux ainsi que par l\'incrustation d\'un diamant dans le couvercle du clavier. Choisissez entre six bois exceptionnels : ébène de Macassar, palissandre d\'Inde orientale, Kewazinga Bubinga, liquidambar, acajou pommelé au caractère expressif ou pommier des Indes.', '500000', '0', 'crown-jewel-5ffd640001c87.jpg', 2, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `nom_type`) VALUES
(1, 'Piano demi-queue'),
(2, 'Piano à queue'),
(3, 'Piano droit'),
(4, 'Piano 1/4 de queue');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom_user`) VALUES
(1, 'albertcamus@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$RWhMNzVOSTJhTkR0dFR6SQ$Q7BZGeVwwQkJo96+sP08zfFTFg3HKD2bYT0nM6MHRYM', 'Albert'),
(2, 'clientlambda@osef.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$YThDd1NlUXNhS0RQcGVuag$IW5UPe+14dMfjo3bH0HjAyoOw+GTSHc41ivwKAKuKro', 'Client Lambda');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_29A5EC274827B9B2` FOREIGN KEY (`marque_id`) REFERENCES `marque` (`id`),
  ADD CONSTRAINT `FK_29A5EC27A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_29A5EC27C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
