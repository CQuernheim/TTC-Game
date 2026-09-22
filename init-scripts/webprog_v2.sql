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
(1,	44),
(1,	29),
(1,	7),
(1,	71),
(1,	63),
(1,	58),
(1,	36),
(1,	27),
(1,	140),
(1,	23),
(1,	109),
(1,	9),
(1,	8),
(1,	24),
(1,	56),
(1,	60),
(1,	130),
(2,	125),
(2,	150),
(2,	51),
(2,	108),
(2,	57),
(2,	108),
(2,	57),
(2,	115),
(2,	72),
(2,	2),
(2,	41),
(2,	90),
(2,	55),
(2,	146),
(2,	20),
(2,	28),
(2,	98);



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



DROP TABLE IF EXISTS `Karten`;
CREATE TABLE `Karten` (
  `card_id` int(11) NOT NULL,
  `card_name` varchar(50) DEFAULT NULL,
  `card_type` varchar(32) DEFAULT NULL,
  `card_PAT` int(11) DEFAULT NULL,
  `card_EXP` int(11) DEFAULT NULL,
  `card_QWT` int(11) DEFAULT NULL,
  `card_ACC` int(11) DEFAULT NULL,
  `card_COF` int(11) DEFAULT NULL,
  `card_TIM` int(11) DEFAULT NULL,
  `card_ab1` VARCHAR(32) NOT NULL,
  `card_ab2` VARCHAR(32),
  `card_Descr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;


INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (1,'Bulbasaur',45,49,49,65,65,45,'Grass','Overgrow',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (2,'Ivysaur',60,62,63,80,80,60,'Grass','Overgrow',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (3,'Venusaur',80,82,83,100,100,80,'Grass','Overgrow',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (4,'Charmander',39,52,43,60,50,65,'Fire','Blaze',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (5,'Charmeleon',58,64,58,80,65,80,'Fire','Blaze',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (6,'Charizard',78,84,78,109,85,100,'Fire','Blaze',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (7,'Squirtle',44,48,65,60,54,43,'Water','Torrent',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (8,'Wartortle',59,63,80,65,80,58,'Water','Torrent',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (9,'Blastoise',79,83,100,85,105,78,'Water','Torrent',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (10,'Caterpie',45,30,35,20,20,45,'Bug','Shield Dust',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (11,'Metapod',50,20,55,25,25,30,'Bug','Shed Skin',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (12,'Butterfree',60,45,50,90,80,70,'Bug','Compoundeyes',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (13,'Weedle',40,35,30,20,20,50,'Bug','Shield Dust',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (14,'Kakuna',45,25,50,25,25,35,'Bug','Shed Skin',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (15,'Beedrill',65,90,40,40,80,75,'Bug','Swarm',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (16,'Pidgey',40,45,40,35,35,56,'Normal','Keen Eye','Tangled Feet',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (17,'Pidgeotto',63,60,55,50,50,71,'Normal','Keen Eye','Tangled Feet',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (18,'Pidgeot',83,80,75,70,70,91,'Normal','Keen Eye','Tangled Feet',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (19,'Rattata',30,56,35,25,35,72,'Normal','Run Away','Guts',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (20,'Raticate',55,81,60,50,70,97,'Normal','Run Away','Guts',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (21,'Spearow',40,60,30,31,31,70,'Normal','Keen Eye',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (22,'Fearow',65,90,65,61,61,100,'Normal','Keen Eye',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (23,'Ekans',30,60,44,40,54,55,'Poison','Intimidate','Shed Skin',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (24,'Arbok',60,95,69,65,79,80,'Poison','Intimidate','Shed Skin',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (25,'Pikachu',35,55,40,50,50,90,'Electric','Static',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (26,'Raichu',60,90,55,90,80,110,'Electric','Static',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (27,'Sandshrew',50,75,85,20,30,40,'Ground','Sand Veil',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (28,'Sandslash',75,100,110,45,55,65,'Ground','Sand Veil',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (29,'Nidoran (Female)',55,47,52,40,40,41,'Poison','Poison Point','Rivalry',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (30,'Nidorina',70,62,67,55,55,56,'Poison','Poison Point','Rivalry',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (31,'Nidoqueen',90,92,87,75,85,76,'Poison','Poison Point','Rivalry',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (32,'Nidoran (Male)',46,57,40,40,40,50,'Poison','Poison Point','Rivalry',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (33,'Nidorino',61,72,57,55,55,65,'Poison','Poison Point','Rivalry',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (34,'Nidoking',81,102,77,85,75,85,'Poison','Poison Point','Rivalry',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (35,'Clefairy',70,45,48,60,65,35,'Fairy','Cute Charm','Magic Guard',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (36,'Clefable',95,70,73,95,90,60,'Fairy','Cute Charm','Magic Guard',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (37,'Vulpix',38,41,40,50,65,65,'Fire','Flash Fire',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (38,'Ninetales',73,76,75,81,100,100,'Fire','Flash Fire',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (39,'Jigglypuff',115,45,20,45,25,20,'Normal','Cute Charm','Competitive',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (40,'Wigglytuff',140,70,45,85,50,45,'Normal','Cute Charm','Competitive',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (41,'Zubat',40,45,35,30,40,55,'Poison','Inner Focus',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (42,'Golbat',75,80,70,65,75,90,'Poison','Inner Focus',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (43,'Oddish',45,50,55,75,65,30,'Grass','Chlorophyll',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (44,'Gloom',60,65,70,85,75,40,'Grass','Chlorophyll',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (45,'Vileplume',75,80,85,110,90,50,'Grass','Chlorophyll',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (46,'Paras',35,70,55,45,55,25,'Bug','Effect Spore','Dry Skin',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (47,'Parasect',60,95,80,60,80,30,'Bug','Effect Spore','Dry Skin',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (48,'Venonat',60,55,50,40,55,45,'Bug','Compoundeyes','Tinted Lens',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (49,'Venomoth',70,65,60,90,75,90,'Bug','Shield Dust','Tinted Lens',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (50,'Diglett',10,55,25,35,45,95,'Ground','Sand Veil','Arena Trap',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (51,'Dugtrio',35,100,50,50,70,120,'Ground','Sand Veil','Arena Trap',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (52,'Meowth',40,45,35,40,40,90,'Normal','Pickup','Technician',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (53,'Persian',65,70,60,65,65,115,'Normal','Limber','Technician',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (54,'Psyduck',50,52,48,65,50,55,'Water','Damp','Cloud Nine',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (55,'Golduck',80,82,78,95,80,85,'Water','Damp','Cloud Nine',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (56,'Mankey',40,80,35,35,45,70,'Fighting','Vital Spirit','Anger Point',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (57,'Primeape',65,105,60,60,70,95,'Fighting','Vital Spirit','Anger Point',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (58,'Growlithe',55,70,45,70,50,60,'Fire','Intimidate','Flash Fire',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (59,'Arcanine',90,110,80,100,80,95,'Fire','Intimidate','Flash Fire',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (60,'Poliwag',40,50,40,40,40,90,'Water','Water Absorb','Damp',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (61,'Poliwhirl',65,65,65,50,50,90,'Water','Water Absorb','Damp',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (62,'Poliwrath',90,95,95,70,90,70,'Water','Water Absorb','Damp',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (63,'Abra',25,20,15,105,55,90,'Psychic','Synchronize','Inner Focus',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (64,'Kadabra',40,35,30,120,70,105,'Psychic','Synchronize','Inner Focus',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (65,'Alakazam',55,50,45,135,95,120,'Psychic','Synchronize','Inner Focus',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (66,'Machop',70,80,50,35,35,35,'Fighting','Guts','No Guard',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (67,'Machoke',80,100,70,50,60,45,'Fighting','Guts','No Guard',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (68,'Machamp',90,130,80,65,85,55,'Fighting','Guts','No Guard',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (69,'Bellsprout',50,75,35,70,30,40,'Grass','Chlorophyll',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (70,'Weepinbell',65,90,50,85,45,55,'Grass','Chlorophyll',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (71,'Victreebel',80,105,65,100,70,70,'Grass','Chlorophyll',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (72,'Tentacool',40,40,35,50,100,70,'Water','Clear Body','Liquid Ooze',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (73,'Tentacruel',80,70,65,80,120,100,'Water','Clear Body','Liquid Ooze',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (74,'Geodude',40,80,100,30,30,20,'Rock','Rock Head','Sturdy',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (75,'Graveler',55,95,115,45,45,35,'Rock','Rock Head','Sturdy',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (76,'Golem',80,120,130,55,65,45,'Rock','Rock Head','Sturdy',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (77,'Ponyta',50,85,55,65,65,90,'Fire','Run Away','Flash Fire',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (78,'Rapidash',65,100,70,80,80,105,'Fire','Run Away','Flash Fire',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (79,'Slowpoke',90,65,65,40,40,15,'Water','Oblivious','Own Tempo',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (80,'Slowbro',95,75,110,100,80,30,'Water','Oblivious','Own Tempo',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (81,'Magnemite',25,35,70,95,55,45,'Electric','Magnet Pull','Sturdy',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (82,'Magneton',50,60,95,120,70,70,'Electric','Magnet Pull','Sturdy',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (83,'Farfetch''d',52,90,55,58,62,60,'Normal','Keen Eye','Inner Focus',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (84,'Doduo',35,85,45,35,35,75,'Normal','Run Away','Early Bird',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (85,'Dodrio',60,110,70,60,60,110,'Normal','Run Away','Early Bird',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (86,'Seel',65,45,55,45,70,45,'Water','Thick Fat','Hydration',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (87,'Dewgong',90,70,80,70,95,70,'Water','Thick Fat','Hydration',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (88,'Grimer',80,80,50,40,50,25,'Poison','Stench','Sticky Hold',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (89,'Muk',105,105,75,65,100,50,'Poison','Stench','Sticky Hold',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (90,'Shellder',30,65,100,45,25,40,'Water','Shell Armor','Skill Link',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (91,'Cloyster',50,95,180,85,45,70,'Water','Shell Armor','Skill Link',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (92,'Gastly',30,35,30,100,35,80,'Ghost','Levitate',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (93,'Haunter',45,50,45,115,55,95,'Ghost','Levitate',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (94,'Gengar',60,65,60,130,75,110,'Ghost','Cursed Body',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (95,'Onix',35,45,160,30,45,70,'Rock','Rock Head','Sturdy',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (96,'Drowzee',60,48,45,43,90,42,'Psychic','Insomnia','Forewarn',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (97,'Hypno',85,73,70,73,115,67,'Psychic','Insomnia','Forewarn',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (98,'Krabby',30,105,90,25,25,50,'Water','Hyper Cutter','Shell Armor',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (99,'Kingler',55,130,115,50,50,75,'Water','Hyper Cutter','Shell Armor',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (100,'Voltorb',40,30,50,55,55,100,'Electric','Soundproof','Static',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (101,'Electrode',60,50,70,80,80,150,'Electric','Soundproof','Static',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (102,'Exeggcute',60,40,80,60,45,40,'Grass','Chlorophyll',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (103,'Exeggutor',95,95,85,125,75,55,'Grass','Chlorophyll',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (104,'Cubone',50,50,95,40,50,35,'Ground','Rock Head','Lightningrod',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (105,'Marowak',60,80,110,50,80,45,'Ground','Rock Head','Lightningrod',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (106,'Hitmonlee',50,120,53,35,110,87,'Fighting','Limber','Reckless',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (107,'Hitmonchan',50,105,79,35,110,76,'Fighting','Keen Eye','Iron Fist',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (108,'Lickitung',90,55,75,60,75,30,'Normal','Own Tempo','Oblivious',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (109,'Koffing',40,65,95,60,45,35,'Poison','Levitate','Neutralizing Gas',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (110,'Weezing',65,90,120,85,70,60,'Poison','Levitate','Neutralizing Gas',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (111,'Rhyhorn',80,85,95,30,30,25,'Ground','Lightningrod','Rock Head',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (112,'Rhydon',105,130,120,45,45,40,'Ground','Lightningrod','Rock Head',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (113,'Chansey',250,5,5,35,105,50,'Normal','Natural Cure','Serene Grace',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (114,'Tangela',65,55,115,100,40,60,'Grass','Chlorophyll','Leaf Guard',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (115,'Kangaskhan',105,95,80,40,80,90,'Normal','Early Bird','Scrappy',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (116,'Horsea',30,40,70,70,25,60,'Water','Swift Swim','Sniper',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (117,'Seadra',55,65,95,95,45,85,'Water','Poison Point','Sniper',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (118,'Goldeen',45,67,60,35,50,63,'Water','Swift Swim','Water Veil',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (119,'Seaking',80,92,65,65,80,68,'Water','Swift Swim','Water Veil',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (120,'Staryu',30,45,55,70,55,85,'Water','Illuminate','Natural Cure',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (121,'Starmie',60,75,85,100,85,115,'Water','Illuminate','Natural Cure',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (122,'Mr. Mime',40,45,65,100,120,90,'Psychic','Soundproof','Filter',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (123,'Scyther',70,110,80,55,80,105,'Bug','Swarm','Technician',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (124,'Jynx',65,50,35,115,95,95,'Ice','Oblivious','Forewarn',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (125,'Electabuzz',65,83,57,95,85,105,'Electric','Static',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (126,'Magmar',65,95,57,100,85,93,'Fire','Flame Body',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (127,'Pinsir',65,125,100,55,70,85,'Bug','Hyper Cutter','Mold Breaker',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (128,'Tauros',75,100,95,40,70,110,'Normal','Intimidate','Anger Point',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (129,'Magikarp',20,10,55,15,20,80,'Water','Swift Swim',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (130,'Gyarados',95,125,79,60,100,81,'Water','Intimidate',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (131,'Lapras',130,85,80,85,95,60,'Water','Water Absorb','Shell Armor',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (132,'Ditto',48,48,48,48,48,48,'Normal','Limber',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (133,'Eevee',55,55,50,45,65,55,'Normal','Run Away','Adaptability',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (134,'Vaporeon',130,65,60,110,95,65,'Water','Water Absorb',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (135,'Jolteon',65,65,60,110,95,130,'Electric','Volt Absorb',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (136,'Flareon',65,130,60,95,110,65,'Fire','Flash Fire',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (137,'Porygon',65,60,70,85,75,40,'Normal','Trace','Download',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (138,'Omanyte',35,40,100,90,55,35,'Rock','Swift Swim','Shell Armor',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (139,'Omastar',70,60,125,115,70,55,'Rock','Swift Swim','Shell Armor',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (140,'Kabuto',30,80,90,55,45,55,'Rock','Swift Swim','Battle Armor',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (141,'Kabutops',60,115,105,65,70,80,'Rock','Swift Swim','Battle Armor',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (142,'Aerodactyl',80,105,65,60,75,130,'Rock','Rock Head','Pressure',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (143,'Snorlax',160,110,65,65,110,30,'Normal','Immunity','Thick Fat',NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (144,'Articuno',90,85,100,95,125,85,'Ice','Pressure',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (145,'Zapdos',90,90,85,125,90,100,'Electric','Pressure',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (146,'Moltres',90,100,90,125,85,90,'Fire','Pressure',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (147,'Dratini',41,64,45,50,50,50,'Dragon','Shed Skin',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (148,'Dragonair',61,84,65,70,70,70,'Dragon','Shed Skin',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (149,'Dragonite',91,134,95,100,100,80,'Dragon','Inner Focus',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (150,'Mewtwo',106,110,90,154,90,130,'Psychic','Pressure',NULL,NULL);
INSERT INTO `Karten` (`card_id`,  `card_name`, `card_PAT` ,  `card_EXP`, `card_QWT`, `card_ACC`, `card_COF`, `card_TIM`,  `card_type`, `card_ab1`, `card_ab2`, `card_Descr`)  VALUES (151,'Mew',100,100,100,100,100,100,'Psychic','Synchronize',NULL,NULL);
