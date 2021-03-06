# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: coni_db
# Generation Time: 2017-11-16 18:44:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table university_subjects
# ------------------------------------------------------------

CREATE TABLE `university_subjects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `university` char(100) DEFAULT NULL,
  `overall` float DEFAULT NULL,
  `arts` float DEFAULT NULL,
  `eng` float DEFAULT NULL,
  `life_sci` float DEFAULT NULL,
  `natural` float DEFAULT NULL,
  `social` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `university_subjects` WRITE;
/*!40000 ALTER TABLE `university_subjects` DISABLE KEYS */;

INSERT INTO `university_subjects` (`id`, `university`, `overall`, `arts`, `eng`, `life_sci`, `natural`, `social`)
VALUES
	(1,'Massachusetts Institute of Technology (MIT)',100,86.1,96.9,94,97.4,91.7),
	(2,'Stanford University',98.7,90.6,95.6,92.6,96,92.2),
	(3,'Harvard University',98.3,97.5,89.4,97.8,96,96.5),
	(4,'University of Cambridge',97.2,97.6,94.4,95.3,96.3,93),
	(5,'California Institute of Technology (Caltech)',96.9,64.5,87.4,75.2,92.6,69.3),
	(6,'University of Oxford',96.8,98.3,91.3,95.1,95.9,93.9),
	(7,'UCL (University College London)',95.6,85.8,80.6,88.8,81.9,80.9),
	(8,'ETH Zurich - Swiss Federal Institute of Technology',94.2,72.4,93,80.5,95,75.6),
	(9,'Imperial College London',94.1,69.6,92.8,88.6,91.8,76.9),
	(10,'University of Chicago',93,85.8,73.5,82.3,87.3,84.2),
	(11,'Princeton University',92.8,88.9,82.5,75.8,89.8,83.5),
	(12,'National University of Singapore (NUS)',91.5,85.7,91.6,86.3,90.6,87.6),
	(13,'Nanyang Technological University, Singapore (NTU)',91.4,77,93.1,74.5,87.8,82.7),
	(14,'Ecole Polytechnique Fédérale de Lausanne (EPFL)',91.1,NULL,90.3,76.2,91,NULL),
	(15,'Yale University',90.9,89.8,78.4,89.4,86.6,86.2),
	(16,'Cornell University',90.1,80.8,81.4,85.7,86,77.5),
	(17,'Johns Hopkins University',89.3,72.6,72.2,92.2,80.2,68.6),
	(18,'University of Pennsylvania',89,80.6,78.6,86,80.8,85.1),
	(19,'The University of Edinburgh',88.9,85,79.5,86.2,82.7,76.4),
	(20,'Columbia University',88.6,87.9,79.2,85.6,85.6,84.9),
	(21,'King\'s College London',87.7,82.7,72.8,87.2,73.8,75.2),
	(22,'The Australian National University',87.3,87.4,81.6,76.7,84.4,83.2),
	(23,'University of Michigan',86.4,80.7,81.3,83.9,82.4,80.1),
	(24,'Tsinghua University',86,78.6,91.2,73.8,88,79.9),
	(25,'Duke University',86,79.1,74.3,86.7,80.1,75.8),
	(26,'Northwestern University',85.7,72.3,77.8,78.3,83.3,78.6),
	(27,'The University of Hong Kong',85.4,86.7,84.8,83.2,87,85.4),
	(28,'University of California, Berkeley (UCB)',85.2,91,91.5,88,93.9,88.4),
	(29,'The University of Manchester',84.8,77.9,80.4,80.7,83.1,78.2),
	(30,'McGill University',84.1,79,79.6,84.2,83.1,76.5),
	(31,'University of California, Los Angeles (UCLA)',84,87.6,83.6,89.9,87.3,83.5),
	(32,'University of Toronto',83.8,85.8,83.3,87.8,86.9,80.9),
	(33,'Ecole normale supérieure, Paris',82.9,69.7,NULL,NULL,78.1,NULL),
	(34,'The University of Tokyo',82.6,87.3,90.9,86.1,92.4,85.7),
	(35,'Seoul National University',82.1,81.5,86.8,82.5,86.8,81.4),
	(36,'The Hong Kong University of Science and Technology',81.8,68.9,87.7,NULL,83.9,81.6),
	(37,'Kyoto University',81.7,81.7,85.9,81.5,89.1,77.4),
	(38,'London School of Economics and Political Science (LSE)',81.7,86.5,NULL,NULL,NULL,96.2),
	(39,'Peking University',81.3,83.5,87,80.5,89.2,83.1),
	(40,'University of California, San Diego (UCSD)',80.6,72.3,76.6,87.7,82.9,70.2),
	(41,'University of Bristol',79.6,73.5,74.5,79.4,81.6,70.5),
	(42,'The University of Melbourne',79.5,85.9,84.5,88.3,85.6,84.5),
	(43,'Fudan University',79.4,77.2,81.4,76.6,83.7,76.8),
	(44,'The Chinese University of Hong Kong (CUHK)',78.1,81,81.2,79.2,78,81.8),
	(45,'University of British Columbia',78,81.3,80.6,84.2,84.6,79.4),
	(46,'The University of Sydney',77.9,86.4,82.1,87.6,84.5,82.1),
	(47,'New York University (NYU)',77.9,86.9,73,81,78,82.7),
	(48,'KAIST - Korea Advanced Institute of Science & Technology',77.9,NULL,88.6,NULL,85,72.8),
	(49,'The University of New South Wales (UNSW Sydney)',77.8,80.1,83.5,81,79.3,82.7),
	(50,'Brown University',77.8,79.1,72.6,76.5,77.2,71.8),
	(51,'The University of Queensland',77.6,77,79.8,83.8,80.5,78.5),
	(52,'The University of Warwick',77.6,79.6,73.5,NULL,78.1,79.3),
	(53,'University of Wisconsin-Madison',75.7,73.8,76.9,79.6,82.5,73.6),
	(54,'Ecole Polytechnique',75.7,NULL,78.7,NULL,84.9,NULL),
	(55,'City University of Hong Kong',75.4,76.7,78.4,NULL,74.6,75.9),
	(56,'Tokyo Institute of Technology',74.9,NULL,87,NULL,86.6,NULL),
	(57,'University of Amsterdam',74.3,76.9,73,82.5,78,76.5),
	(58,'Carnegie Mellon University',74.2,69.7,83.5,NULL,79.7,70.3),
	(59,'University of Washington',73.9,72.9,77.3,86,84,71.4),
	(60,'Technical University of Munich',72.4,NULL,85.2,77.3,87.5,67.1),
	(61,'Shanghai Jiao Tong University',72.2,69.6,85.2,75.4,80.2,76.5),
	(62,'Delft University of Technology',72.1,69,86.9,NULL,79.7,65.9),
	(63,'Osaka University',71.7,68.5,80.3,79,84.4,68.2),
	(64,'University of Glasgow',71.7,74.2,71.2,80.9,76.4,69.6),
	(65,'Monash University',71.6,79.2,81.7,84.2,79.9,81.1),
	(66,'University of Illinois at Urbana-Champaign',71.4,70.9,82.2,71,82.9,69.5),
	(67,'University of Texas at Austin',70.7,78,81.7,72.6,82,74.3),
	(68,'Ludwig-Maximilians-Universität München',70.2,76.3,72,81,85,72.5),
	(69,'National Taiwan University (NTU)',70.2,81.3,85.4,81,86.2,79),
	(70,'University of Copenhagen',70.2,75.6,73,85.5,83,74.3),
	(71,'Georgia Institute of Technology',69.8,NULL,87.6,NULL,82.5,66.9),
	(72,'Ruprecht-Karls-Universität Heidelberg',69.7,74.2,NULL,81.4,83,68.4),
	(73,'Lund University',69.1,68.8,74.8,76.6,79.1,70.4),
	(74,'Durham University',68.8,78.3,NULL,NULL,80.6,70.5),
	(75,'Tohoku University',68.7,NULL,79.7,74.3,84.5,65.3),
	(76,'The University of Nottingham',68.7,71.4,74,78.9,74.5,70.8),
	(77,'University of St Andrews',68.2,75.3,NULL,NULL,74.5,65.1),
	(78,'University of North Carolina, Chapel Hill',68.1,73.2,69.7,81.9,74,69.8),
	(79,'KU Leuven',67.9,75.8,80,79.1,77.4,74.9),
	(80,'University of Zurich',67.8,72.2,69.9,81.3,82.2,71),
	(81,'The University of Auckland',67.3,82.1,78.9,79.4,78.3,78),
	(82,'University of Birmingham',67.2,74.6,76,77.7,77.8,71),
	(83,'Pohang University of Science And Technology (POSTECH)',67,NULL,80.5,NULL,78.9,NULL),
	(84,'The University of Sheffield',66.9,70,73.2,75.3,73.5,66.1),
	(85,'Universidad de Buenos Aires (UBA)',65.8,69.6,NULL,NULL,73,67.4),
	(86,'University of California, Davis',65.8,64.6,72.6,79.7,78.6,NULL),
	(87,'University of Southampton',65.6,65,75.4,75.6,77.8,NULL),
	(88,'The Ohio State University',65.4,68.8,71.3,76,76.7,68.1),
	(89,'Boston University',65.2,75.2,70.9,81.4,78.8,70.7),
	(90,'Rice University',65,NULL,70.9,NULL,77.6,NULL),
	(91,'University of Helsinki',64.7,73.6,NULL,79,78.9,66.1),
	(92,'Purdue University',64.5,NULL,80.1,71.5,82,65.9),
	(93,'University of Leeds',64.2,75.4,74.4,73.8,77,68.8),
	(94,'University of Alberta',64,68.7,72.5,76.5,76.1,65.6),
	(95,'Pennsylvania State University',63.6,73,77.1,74.4,79.8,71.6),
	(96,'University of Geneva',63.6,68.1,NULL,79.5,80,NULL),
	(97,'KTH Royal Institute of Technology',63.1,NULL,84,NULL,79.1,NULL),
	(98,'Uppsala University',62.8,68.9,70.4,80.8,76.4,65.9),
	(99,'Korea University',62.8,74.6,79.2,72.7,81.3,78.5),
	(100,'Trinity College Dublin, The University of Dublin',62.8,66.2,71.6,71.9,NULL,NULL),
	(101,'KIT, Karlsruhe Institute of Technology',62.8,NULL,82.2,NULL,85.6,NULL),
	(102,'Leiden University',62.7,77.6,NULL,78.7,75.3,67.6),
	(103,'The University of Western Australia',62.7,71.2,73.6,79.9,76.1,72.4),
	(104,'Utrecht University',62.4,68.2,NULL,79.5,76.7,66.8),
	(105,'University of Science and Technology of China',62.4,NULL,77.8,NULL,82.8,NULL),
	(106,'Sungkyunkwan University (SKKU)',62.2,73.8,79.6,73.3,81.2,73.9),
	(107,'Washington University in St. Louis',62.2,NULL,NULL,83.4,NULL,NULL),
	(108,'Lomonosov Moscow State University',62.1,74.3,74.5,NULL,84,69.9),
	(109,'Technical University of Denmark',61.8,NULL,81.8,NULL,77.8,NULL),
	(110,'Zhejiang University',61.6,67,81.9,70.1,78.7,69.3),
	(111,'The Hong Kong Polytechnic University',61.4,71.3,81.1,NULL,74.8,76.3),
	(112,'Yonsei University',60.5,75,78.9,76.7,78.4,76.4),
	(113,'University of Oslo',60,71.5,NULL,76.4,75.2,68.5),
	(114,'University of Groningen',60,68.1,NULL,76,73.1,67.3),
	(115,'Nanjing University',59.6,66.2,75.5,NULL,81.1,66),
	(116,'Nagoya University',59.6,NULL,75,72.7,82.8,NULL),
	(117,'Aarhus University',59.5,72.3,75.2,79.6,79.4,73.7),
	(118,'University of California, Santa Barbara (UCSB)',59.4,67.5,72.7,NULL,83.4,NULL),
	(119,'Wageningen University',59.1,NULL,NULL,77.2,73.6,NULL),
	(120,'Universidade de São Paulo',59,69.7,70.6,73.9,75.3,67.6),
	(121,'Humboldt-Universität zu Berlin',58.9,80.5,71.6,69.1,79.3,73.4),
	(122,'Eindhoven University of Technology',58.9,NULL,77,NULL,73.4,NULL),
	(123,'Freie Universitaet Berlin',58.7,80,NULL,NULL,77.4,72.6),
	(124,'Queen Mary University of London',58.7,71.9,69.6,76.1,73.1,65.6),
	(125,'The University of Adelaide',58.6,71.3,73.3,77.5,76.4,70),
	(126,'Université de Montréal',58.5,68.7,71.4,77.7,74.9,69.3),
	(127,'University of York',58.4,74.7,NULL,70,NULL,NULL),
	(128,'Universidad Nacional Autónoma de México (UNAM)',58.3,73,69.8,70.5,73,69.2),
	(129,'Lancaster University',57.9,70.9,NULL,NULL,NULL,68.9),
	(130,'Hokkaido University',57.8,NULL,76.4,72.6,77.6,NULL),
	(131,'Ghent University',57.6,65.8,72.8,76.7,75.3,66.2),
	(132,'University of Maryland, College Park',57.6,66.2,70.6,71.7,80.2,67.1),
	(133,'Universiti Malaya (UM)',57.1,72.8,82.8,71.5,73.3,73.2),
	(134,'Aalto University',57.1,NULL,71.6,NULL,NULL,NULL),
	(135,'Kyushu University',56.8,NULL,76.1,73.6,78.8,NULL),
	(136,'University of Southern California',56.7,73.6,72.9,75.2,NULL,70),
	(137,'University of Minnesota',56.4,67.3,72.6,78.1,78.7,69.1),
	(138,'University of Lausanne',56.3,NULL,NULL,76.5,NULL,65.2),
	(139,'Chalmers University of Technology',56.1,NULL,76,NULL,73.1,NULL),
	(140,'Cardiff University',55.7,68.4,69.8,75.4,NULL,68.6),
	(141,'Université Pierre et Marie Curie (UPMC)',55.6,NULL,71.3,76.2,82.6,NULL),
	(142,'University of Basel',55.6,NULL,NULL,79.3,NULL,NULL),
	(143,'University of Aberdeen',55.6,65,NULL,71.9,NULL,NULL),
	(144,'Erasmus University Rotterdam',55.5,NULL,NULL,80.5,NULL,78.2),
	(145,'University of Pittsburgh',55.1,68.4,NULL,78.7,NULL,NULL),
	(146,'RWTH Aachen University',55,NULL,83.4,73,86.4,66.4),
	(147,'Pontificia Universidad Católica de Chile (UC)',54.7,71.9,NULL,NULL,NULL,71.1),
	(148,'The Hebrew University of Jerusalem',54.2,NULL,NULL,72.8,NULL,NULL),
	(149,'McMaster University',54.1,NULL,69.9,79.9,NULL,NULL),
	(150,'Emory University',54.1,NULL,NULL,78.5,NULL,NULL),
	(151,'National Tsing Hua University',53.9,68.4,82.2,NULL,81.1,66.7),
	(152,'University of Waterloo',53.8,NULL,79.8,NULL,78,NULL),
	(153,'Indian Institute of Science (IISc) Bangalore',53.8,NULL,75.1,NULL,77,NULL),
	(154,'Université catholique de Louvain (UCL)',53.4,71.6,73.3,75.5,75.8,71.9),
	(155,'University of Vienna',53.3,69.7,NULL,NULL,74.8,65.1),
	(156,'University of California, Irvine',53.2,66.7,NULL,73.3,76.4,NULL),
	(157,'University of Liverpool',53.1,65.9,NULL,74.9,76,NULL),
	(158,'Dartmouth College',53,66,NULL,69.9,NULL,66.3),
	(159,'University of Bath',52.7,NULL,70.7,NULL,NULL,67.8),
	(160,'Universitat de Barcelona',52.6,69.1,74,77.6,80.4,68.1),
	(161,'Texas A&M University',52.6,NULL,75.6,69.8,78.8,NULL),
	(162,'Michigan State University',52.6,66.7,71.2,72.4,74.6,70.2),
	(163,'Albert-Ludwigs-Universitaet Freiburg',52.2,68.1,NULL,75.7,75,NULL),
	(164,'Technische Universität Berlin (TU Berlin)',52.1,NULL,82.8,NULL,80.5,NULL),
	(165,'The University of Exeter',52.1,71.8,NULL,NULL,NULL,67.8),
	(166,'CentraleSupélec',52.1,NULL,78.1,NULL,NULL,NULL),
	(167,'Eberhard Karls Universität Tübingen',51.9,72.3,NULL,75.4,73.4,NULL),
	(168,'Newcastle University',51.8,66.4,NULL,75.1,NULL,NULL),
	(169,'University of Otago',51.3,72.6,NULL,79.1,NULL,71.2),
	(170,'University of Colorado Boulder',51.2,NULL,70.2,NULL,80.9,NULL),
	(171,'Hanyang University',50.6,66.1,77.2,NULL,NULL,68.4),
	(172,'University of Virginia',50.5,72.7,NULL,69.4,NULL,66.1),
	(173,'Maastricht University',50.3,NULL,NULL,75.5,NULL,68.5),
	(174,'National Chiao Tung University',50.1,NULL,78.9,NULL,74.6,65.8),
	(175,'University of Reading',50,71,NULL,NULL,NULL,NULL),
	(176,'University College Dublin',49.7,72.9,75.1,72.6,76.3,69.8),
	(177,'University of Göttingen',49.6,67,NULL,74,78.8,NULL),
	(178,'École Normale Supérieure de Lyon',49.6,NULL,NULL,NULL,NULL,NULL),
	(179,'University of Bergen',49.6,NULL,NULL,NULL,NULL,NULL),
	(180,'University of Twente',49.6,NULL,NULL,NULL,NULL,NULL),
	(181,'University of Bern',49.3,NULL,NULL,74.7,75.8,NULL),
	(182,'Vrije Universiteit Brussel (VUB)',48.9,NULL,NULL,NULL,NULL,NULL),
	(183,'Politecnico di Milano',48.8,NULL,85.2,NULL,77.4,68.9),
	(184,'Vienna University of Technology',48.8,NULL,74.5,NULL,75.7,NULL),
	(185,'University of Florida',48.6,NULL,70.7,76,77,NULL),
	(186,'Indian Institute of Technology Delhi (IITD)',48.6,NULL,78.8,NULL,NULL,NULL),
	(187,'University of Rochester',48.6,NULL,NULL,69.2,NULL,NULL),
	(188,'University of Illinois, Chicago (UIC)',48.4,66.7,NULL,72.9,NULL,NULL),
	(189,'University of Sussex',48.4,66.5,NULL,NULL,NULL,NULL),
	(190,'King Fahd University of Petroleum & Minerals',48.3,NULL,69.8,NULL,NULL,NULL),
	(191,'Radboud University',48.2,NULL,NULL,74.5,NULL,NULL),
	(192,'Universidade Estadual de Campinas (Unicamp)',48,NULL,NULL,NULL,NULL,NULL),
	(193,'University of Cape Town',48,67.1,NULL,75.5,NULL,66.2),
	(194,'University of Technology Sydney',47.8,69.2,74.1,NULL,NULL,72),
	(195,'Queen\'s University Belfast',47.5,67.8,69.7,NULL,NULL,NULL),
	(196,'Stockholm University',47.2,73.1,69.9,NULL,81,70.3),
	(197,'University of Calgary',47.2,NULL,NULL,75.2,NULL,NULL),
	(198,'The University of Western Ontario',47.1,65.2,NULL,72.2,NULL,71),
	(199,'Vrije Universiteit Amsterdam',46.8,65.1,NULL,70.6,NULL,65.8),
	(200,'Universidad de Chile',46.7,67.8,NULL,NULL,NULL,67.4);

/*!40000 ALTER TABLE `university_subjects` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
