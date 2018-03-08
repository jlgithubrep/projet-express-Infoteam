-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 07 mars 2018 à 08:19
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `infoteam`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `numArticle` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(40) NOT NULL,
  `auteurArticle` varchar(20) NOT NULL,
  `tag` varchar(30) NOT NULL,
  `datePublication` datetime DEFAULT NULL,
  `etat` varchar(20) DEFAULT NULL,
  `nbVue` int(11) DEFAULT NULL,
  `contenuArticle` text NOT NULL,
  PRIMARY KEY (`numArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`numArticle`, `titre`, `auteurArticle`, `tag`, `datePublication`, `etat`, `nbVue`, `contenuArticle`) VALUES
(1, 'premier article', 'bob', 'sport', '2018-02-28 13:00:00', 'valide', 2, 'mon premier article de sport'),
(2, 'salle qui grince', 'morfin', 'sport', '2018-03-02 16:11:13', NULL, NULL, 'okkkkkkk'),
(3, 'voyage!', 'wayne', 'sport', '2018-03-06 13:44:52', NULL, NULL, 'Un voyage vers l\'infini.'),
(5, 'Les JO', 'wayne', 'sport', '2018-03-06 13:47:18', NULL, NULL, 'Médaille d\'or.'),
(6, 'Destinations pour 2018', 'wayne', 'voyage', '2018-03-06 13:48:03', NULL, NULL, 'Ici\r\nlà bas\r\npar là\r\npar ici.');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `idCommentaire` int(11) NOT NULL AUTO_INCREMENT,
  `auteurCommentaire` varchar(20) NOT NULL,
  `dateCommentaire` datetime DEFAULT NULL,
  `etatCommentaire` varchar(20) DEFAULT NULL,
  `contenuCommentaire` text NOT NULL,
  `idPersonne` int(11) DEFAULT NULL,
  `idArticle` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCommentaire`),
  KEY `idPersonne` (`idPersonne`),
  KEY `cleetrangerearticlecommentaire` (`idArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`idCommentaire`, `auteurCommentaire`, `dateCommentaire`, `etatCommentaire`, `contenuCommentaire`, `idPersonne`, `idArticle`) VALUES
(1, 'morfin', '2018-02-28 13:30:00', 'valide', 'mon premier commentaire', 3, NULL),
(2, 'qui', '2018-03-02 16:16:18', NULL, 'je sais pas vraiment', NULL, NULL),
(3, 'wayne', '2018-03-05 16:30:20', NULL, 'commentaire sur l\'article1', NULL, 1),
(4, 'wayne', '2018-03-06 10:24:56', NULL, 'aze', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `mdp` varchar(40) CHARACTER SET ascii NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'utilisateur',
  `abonne` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `mail`, `mdp`, `type`, `abonne`) VALUES
(1, 'wick', 'john', 'john.wick@gmail.com', 'mdpwick', 'administrateur', 0),
(2, 'bob', 'joe', 'joe.bob@gmail.com', 'mdpbob', 'journaliste', 0),
(3, 'morfin', 'maxime', 'maxime.morfin@gmail.com', 'mdpmorfin', 'utilisateur', 0),
(4, 'travolta', 'john', 'john.travolta@gmail.com', 'mdptravolta', 'utilisateur', 0),
(17, 'ezfwsf', 'qeswws', 'azer@gmail.com', '782dd27ea8e3b4f4095ffa38eeb4d20b59069077', 'utilisateur', 0),
(18, 'qzdqswc', 'sdvcx', 'joh.travolta@gmail.com', '782dd27ea8e3b4f4095ffa38eeb4d20b59069077', 'utilisateur', 0),
(19, 'azzefws', 'esfezrsf', 'azre.qzfes@gmail.com', '10d58bd87102f18f6f8d2e7fc4600aab5ef5549c', 'utilisateur', 0),
(20, 'swekjbdv', 'sdvxnf', 'rgvdx.wzsedvx@gmail.com', '44e42e127470fbabfa4fedcd415ad34605d539a9', 'utilisateur', 0),
(21, 'esfsl', 'sexdv', 'esfvsd@gmail.com', '392e2ad713bb4e72a3e3ba4249a3d658f9404b0f', 'utilisateur', 0),
(22, 'regxdlrgn', 'efjsf', 'zedfzef@gmail.com', '1ff4fa636016eb53ce671edfa086e587817bd795', 'utilisateur', 0),
(23, 'wayne', 'bruce', 'bruce.wayne@gmail.com', '21766caa31660f3937b88284f6c688725c945ffa', 'utilisateur', 0),
(25, 'nom1', 'prenom1', 'nom.prenom@gmail.com', '36a32e96cbfd11fd98e8c98e38d9ad9b41f57f1a', 'utilisateur', 0),
(26, 'wayne', 'alfred', 'alfred.wayne@gmail.com', '3eb8718a2e774f8066bfc0ab7c4cf59df3f8f933', 'journaliste', 0),
(27, 'sqmlef,slwk,vwdlskrn', 'mel,fscke,vsmv,sml,v', 'cisefcesfvzecsqefvzefvsdczeczdczefczecnq@gmail.com', '1b0fc2e0972b567544e2430e6d59efd2ba0fed44', 'utilisateur', 1);

-- --------------------------------------------------------

--
-- Structure de la table `redaction`
--

DROP TABLE IF EXISTS `redaction`;
CREATE TABLE IF NOT EXISTS `redaction` (
  `idPersRedac` int(11) NOT NULL,
  `numArRedac` int(11) NOT NULL,
  `dateModification` datetime NOT NULL,
  PRIMARY KEY (`idPersRedac`,`numArRedac`,`dateModification`),
  KEY `numArRedac` (`numArRedac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `redaction`
--

INSERT INTO `redaction` (`idPersRedac`, `numArRedac`, `dateModification`) VALUES
(2, 1, '2018-02-28 12:00:00');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `cleetrangerearticlecommentaire` FOREIGN KEY (`idArticle`) REFERENCES `article` (`numArticle`),
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`idPersonne`) REFERENCES `personne` (`id`);

--
-- Contraintes pour la table `redaction`
--
ALTER TABLE `redaction`
  ADD CONSTRAINT `redaction_ibfk_1` FOREIGN KEY (`idPersRedac`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `redaction_ibfk_2` FOREIGN KEY (`numArRedac`) REFERENCES `article` (`numArticle`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
