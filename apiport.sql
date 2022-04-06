-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 06 avr. 2022 à 15:45
-- Version du serveur :  10.3.34-MariaDB-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `apiport`
--
CREATE DATABASE IF NOT EXISTS `apiport` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `apiport`;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Front-end'),
(2, 'Back-End'),
(3, 'CMS'),
(4, 'Libraires'),
(5, 'Framework\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

CREATE TABLE `competences` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competences`
--

INSERT INTO `competences` (`id`, `name`, `categories_id`) VALUES
(1, 'HTML5', 1),
(2, 'CSS3', 1),
(3, 'Bootstrap', 4),
(4, 'Javascript', 1),
(5, 'PHP', 2),
(6, 'MySQL', 2),
(7, 'Wordpress', 3),
(8, 'JQuery', 1),
(9, 'Ajax', 1),
(10, 'Symfony', 3),
(11, 'Vue', 5),
(12, 'Vuetify', 4),
(13, 'Materialize', 4);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200829015222', '2020-08-29 03:52:41', 184),
('DoctrineMigrations\\Version20200830081615', '2020-08-30 10:16:37', 860),
('DoctrineMigrations\\Version20200901074214', '2020-09-01 09:42:38', 23);

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

CREATE TABLE `entreprises` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`id`, `name`, `image_name`, `updated_at`) VALUES
(1, 'ARTUS INTERIM', 'artus.jpg', '2020-09-01 00:00:00'),
(2, 'KISIO SERVICES ET CONSULTING', 'kisio.png', '2020-09-01 00:00:00'),
(3, 'CCA INTERNATIONAL', 'cca.jpeg', '2020-09-01 00:00:00'),
(4, 'LA POSTE', 'la-poste.png', '2020-09-01 00:00:00'),
(5, 'CORIOLIS SERVICES', 'coriolis.jpeg', '2020-09-01 00:00:00'),
(6, 'SCORE GAME', 'game.jpg', '2020-09-01 00:00:00'),
(7, 'ATAC LOGISTIQUE', 'atac.jpg', '2020-09-01 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `id` int(11) NOT NULL,
  `année` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etablissement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id`, `année`, `titre`, `etablissement`, `complement`) VALUES
(1, '2006', 'BAC STI', 'LYCÉE EDOUARD BRANLY (AMIENS)', 'Génie électronique');

-- --------------------------------------------------------

--
-- Structure de la table `passions`
--

CREATE TABLE `passions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `passions`
--

INSERT INTO `passions` (`id`, `name`, `description`) VALUES
(1, 'INFORMATIQUE', NULL),
(2, 'JEUX VIDEO', NULL),
(3, 'JEUX DE ROLES', NULL),
(4, 'JEU DE GO', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `name`, `lastname`, `birthday`, `email`, `adresse`, `code_postal`, `ville`, `titre`, `phone`) VALUES
(1, 'LANGLET', 'Gaëtan', '1986-01-29', 'gtn.langlet@gmail.com', '33 Allée de la Vergogne', '87520', 'ORADOUR SUR GLANE', 'Développeur Web Full-Stack (junior)', '0689602182');

-- --------------------------------------------------------

--
-- Structure de la table `postes`
--

CREATE TABLE `postes` (
  `id` int(11) NOT NULL,
  `entreprises_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datedebut` date NOT NULL,
  `datefin` date NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `postes`
--

INSERT INTO `postes` (`id`, `entreprises_id`, `name`, `datedebut`, `datefin`, `description`) VALUES
(1, 1, 'AGENT DE PRODUCTION', '2019-05-07', '2020-02-07', 'Confection de coffret pour le domaine du luxe'),
(2, 2, 'CHARGE DE CLIENTELE', '2015-09-01', '2017-04-12', 'Renseignement client sur le réseau, prise de réservation sur l’activité « Filo’r »\r\nRenseignement horaires et itinéraires, aides aux usagers « TER picardie »'),
(3, 2, 'CHARGE DE CLIENTELE (SENIOR)', '2017-04-13', '2019-03-01', 'Renseignement client sur le réseau, prise de réservation sur l’activité « Filo’r »\r\nRenseignement horaires et itinéraires, aides aux usagers « TER picardie »\r\nFormation et groupe de suivi logiciel « PASS » de ‘Trapèze’ groupe'),
(4, 3, 'TELEVENDEUR BOUYGUES TELECOM', '2014-08-30', '2015-08-31', 'Analyse du besoin des clients\r\nVentes de lignes fixes et mobiles (avec les équipements adéquats)'),
(5, 4, 'AGENT DE TRI', '2014-08-16', '2015-08-29', 'Tri de courrier\r\nMise en place des produits sur les quais de chargement'),
(6, 5, 'TELECONSEILLER ORANGE', '2009-01-02', '2009-06-30', 'Analyse du besoin des clients\r\nConseils sur les offres en cours'),
(7, 5, 'TELECONSEILLER TECHNIQUE MOBILE ET BOX', '2009-07-01', '2010-08-30', 'Analyse du besoin des clients\r\nConseils sur les offres en cours\r\nParamétrage de mobiles\r\nCorrections des avaries techniques\r\nSAV'),
(8, 6, 'VENDEUR DE JEUX VIDEO', '2008-09-15', '2008-10-15', 'Renseignements clients\r\nOrganisation de l\'espace de vente\r\nVente de produits\r\nEncaissement '),
(9, 7, 'PREPARATEUR DE COMMANDES', '2007-01-29', '2008-08-14', 'Réalisation de palettes\r\nFilmage et mise en quai des commandes');

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id`, `name`, `description`, `url`, `image_name`, `updated_at`) VALUES
(1, 'myLoc une plateforme de<br/> prêt d\'objets', 'myLoc est une application permettant de se prêter des affaires entre utilisateurs\r\n\r\nLe principe est que les utilisateurs inscrits peuvent proposer des biens au prêt à d\'autres utilisateurs. Chaque prêt se fait à un autre utilisateur enregistré, possède une date de début de prêt et une date de fin de prêt et rapporte au prêteur une certaine quantité de points.\r\n\r\nLe site doit présenter\r\n- une page qui montrent tous les biens sur la plateforme avec la possibilité de sélectionner une catégorie en particulier pour ne voir que les biens de cette catégorie.\r\n- chaque objet doit avoir une page dédiée montrant un visuel de l\'objet, sa catégorie, sa description, son propriétaire, les prochaines dates de prêt et un bouton qui amènera vers un formulaire pour le réserver, accessible uniquement si l\'utilisateur est authentifié.\r\n- un espace utilisateur doit permettre à un utilisateur enregistré de consulter ses points, ses biens enregistrés sur la plateforme, rentrer de nouveaux biens à prêter et de suivre les prêts en cours (nom de l\'emprunteur, date de début et de fin du prêt).\r\n- une partie d\'administration permettant, uniquement à un administrateur, d\'ajouter des catégories et de gérer les utilisateurs.\r\n\r\nPar simplicité, nous partirons du principe que le prêt est automatiquement accepté si l\'objet est disponible aux dates voulues et ne nous occuperons pas de la distance géographique.\r\n', NULL, '', '0000-00-00 00:00:00'),
(2, 'Projet boutique <br/> myShop', 'Le projet doit au minimum :\r\n- présenter sur sa page d\'accueil une liste des produits de la boutique.\r\n- Proposer un menu permettant de naviguer dans les catégories de produits et, du coup une page de catégorie.\r\n- Proposer un page produit.\r\n- Permettre de se créer un compte et de s\'authentifier.\r\n\r\nEn bonus :\r\n- Proposer une partie \"administration\" qui permettra de rajouter des produits, de les mettre à jour ou de les effacer.\r\n\r\nle projet doit aussi prendre en compte les bonnes pratiques de sécurité (chiffrement des mots de passe en bdd, vérification et nettoyage des données saisies par l\'utilisateur avant insertion en bdd, etc...) ', NULL, '', '0000-00-00 00:00:00'),
(3, 'Site vitrine à partir d\'un brief', 'Vous avez été contacté EZevent, entreprise événementielle dont les prestations sont organisation de mariage, de séjour de team building et de salons, pour réaliser son site internet.\r\n\r\nA partir du brief et des sources fournies sur le drive, réaliser en groupe une maquette graphique des différents gabarits et intégrer cela avec le CMS wordpress afin de permettre une administration simple et personnalisée pour l\'utilisateur final. ', NULL, '', '0000-00-00 00:00:00'),
(4, 'projet mini-blog ', 'Le blog intègre:\r\n-> Un formulaire d\'inscription et de connexion.\r\n->Un formulaire pour soumettre un post.\r\n->Une page d\'accueil qui recense les 10 derniers articles (établir une pagination).\r\n->Lorsqu\'on clique sur un article on arrive sur une page dédiée à l\'article intégrant:\r\nauteur ( 10 derniers articles de l\'auteur) date de publication\r\nimage à la 1 (option) commentaires (option)', NULL, '', '0000-00-00 00:00:00'),
(5, 'Explorateur de fichier', 'Objectif principal :\r\nL\'application doit permettre d\'ouvrir un dossier et d\'afficher son contenu à l\'écran de la même manière que l\'explorateur de fichier de votre système d\'exploitation.\r\nL\'application doit différencier les dossier des fichiers avec des icônes différentes.\r\nAu clic dans un dossier, le contenu affiché doit se mettre à jour sans recharger la page.\r\nL\'application doit permettre de revenir en arrière.\r\nL\'application n\'est pas censé permettre d\'afficher le contenu des fichiers donc ne vous embêtez pas avec ça.\r\n\r\nObjectif secondaires :\r\ndifficulté hard : afficher le chemin du répertoire en cours dans une div\r\ndifficulté extrem : découper ce chemin et permettre à l\'utilisateur de revenir au dossier cliqué\r\n', NULL, '', '0000-00-00 00:00:00'),
(6, 'intégration responsive <br/>avec du javascript', 'Intégration responsive\r\nUtilisation de media queries (par exemple, du texte centré sur mobile et aligné à gauche sur les plus grands écrans)\r\nUtiliser du javascript (au moins un bouton permettant de remonter tout en haut de la page lorsqu\'on a scrollé plus bas que la hauteur de l\'écran et un menu qui se redimensionne au scroll comme sur le modèle proposé)', NULL, '', '0000-00-00 00:00:00'),
(7, 'Intégration maquette <br/>Blueasy', 'Le principe de cette intégration est de recréer la maquette ', NULL, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `projets_competences`
--

CREATE TABLE `projets_competences` (
  `projets_id` int(11) NOT NULL,
  `competences_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `projets_competences`
--

INSERT INTO `projets_competences` (`projets_id`, `competences_id`) VALUES
(1, 6),
(1, 10),
(2, 5),
(2, 6),
(3, 2),
(3, 5),
(3, 6),
(3, 7),
(4, 2),
(4, 3),
(4, 5),
(4, 6),
(5, 3),
(5, 5),
(5, 9),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2),
(7, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DB2077CEA21214B7` (`categories_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `entreprises`
--
ALTER TABLE `entreprises`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `passions`
--
ALTER TABLE `passions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `postes`
--
ALTER TABLE `postes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A763C64A70A18EC` (`entreprises_id`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projets_competences`
--
ALTER TABLE `projets_competences`
  ADD PRIMARY KEY (`projets_id`,`competences_id`),
  ADD KEY `IDX_6DE310C1597A6CB7` (`projets_id`),
  ADD KEY `IDX_6DE310C1A660B158` (`competences_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `entreprises`
--
ALTER TABLE `entreprises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `passions`
--
ALTER TABLE `passions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `postes`
--
ALTER TABLE `postes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competences`
--
ALTER TABLE `competences`
  ADD CONSTRAINT `FK_DB2077CEA21214B7` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `postes`
--
ALTER TABLE `postes`
  ADD CONSTRAINT `FK_5A763C64A70A18EC` FOREIGN KEY (`entreprises_id`) REFERENCES `entreprises` (`id`);

--
-- Contraintes pour la table `projets_competences`
--
ALTER TABLE `projets_competences`
  ADD CONSTRAINT `FK_6DE310C1597A6CB7` FOREIGN KEY (`projets_id`) REFERENCES `projets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6DE310C1A660B158` FOREIGN KEY (`competences_id`) REFERENCES `competences` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
