-- Adminer 6.0.1 MariaDB 11.8.9-MariaDB-ubu2404 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `Decks`;
CREATE TABLE `Decks` (
  `player_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `Decks` (`player_id`, `card_id`) VALUES
(1,	1),
(1,	2),
(1,	3),
(2,	1),
(2,	2),
(2,	3);

DROP TABLE IF EXISTS `Karten`;
CREATE TABLE `Karten` (
  `card_id` int(11) NOT NULL,
  `card_name` varchar(50) DEFAULT NULL,
  `card_type` varchar(3) DEFAULT NULL,
  `card_EXP` int(11) DEFAULT NULL,
  `card_TIM` int(11) DEFAULT NULL,
  `card_COF` int(11) DEFAULT NULL,
  `card_ACC` int(11) DEFAULT NULL,
  `card_Descr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `Karten` (`card_id`, `card_name`, `card_type`, `card_EXP`, `card_TIM`, `card_COF`, `card_ACC`, `card_Descr`) VALUES
(1,	'Herr Ramb',	'SOC',	25,	50,	75,	100,	'Kennt Gott'),
(2,	'Herr Knecht',	'NAW',	100,	75,	0,	90,	'Kann nix'),
(3,	'Herr Q',	'POL',	80,	40,	25,	10,	'Fährt E-Auto');

DROP TABLE IF EXISTS `Session`;
CREATE TABLE `Session` (
  `sess_id` int(11) NOT NULL,
  `sess_pl1` int(11) DEFAULT NULL,
  `sess_pl2` int(11) DEFAULT NULL,
  `sess_pin` int(11) DEFAULT NULL,
  `sess_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`sess_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


DROP TABLE IF EXISTS `Spieler`;
CREATE TABLE `Spieler` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

INSERT INTO `Spieler` (`player_id`, `player_name`) VALUES
(1,	'Paul'),
(2,	'Carla');

DROP TABLE IF EXISTS `TempDecksStechen`;
CREATE TABLE `TempDecksStechen` (
  `sess_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `PosInStack` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


-- 2026-09-21 15:44:33 UTC
