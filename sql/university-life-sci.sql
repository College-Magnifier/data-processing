# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: coni_db
# Generation Time: 2017-11-17 02:21:28 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table university_life_sci
# ------------------------------------------------------------

CREATE TABLE `university_life_sci` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `university` char(100) DEFAULT NULL,
  `overall` float DEFAULT NULL,
  `agriculture-forestry` float DEFAULT NULL,
  `anatomy-physiology` float DEFAULT NULL,
  `biological` float DEFAULT NULL,
  `dentistry` float DEFAULT NULL,
  `medicine` float DEFAULT NULL,
  `nursing` float DEFAULT NULL,
  `pharmacy-pharmacology` float DEFAULT NULL,
  `psychology` float DEFAULT NULL,
  `veterinary` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `university_life_sci` WRITE;
/*!40000 ALTER TABLE `university_life_sci` DISABLE KEYS */;

INSERT INTO `university_life_sci` (`id`, `university`, `overall`, `agriculture-forestry`, `anatomy-physiology`, `biological`, `dentistry`, `medicine`, `nursing`, `pharmacy-pharmacology`, `psychology`, `veterinary`)
VALUES
	(1,'Massachusetts Institute of Technology (MIT)',94,NULL,NULL,95,NULL,88.8,NULL,NULL,89.3,NULL),
	(2,'Stanford University',92.6,NULL,92.3,92.2,NULL,93,NULL,NULL,94.6,NULL),
	(3,'Harvard University',97.8,NULL,NULL,97.8,87.7,99,NULL,96.3,97.3,NULL),
	(4,'University of Cambridge',95.3,NULL,95.5,93.7,NULL,95.2,NULL,93.9,92.8,90.3),
	(5,'California Institute of Technology (Caltech)',75.2,NULL,NULL,86.4,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,'University of Oxford',95.1,NULL,97,92.9,NULL,95.8,NULL,93.6,92.3,NULL),
	(7,'UCL (University College London)',88.8,NULL,92.3,81.7,86.6,89.8,NULL,90.3,89.3,NULL),
	(8,'ETH Zurich - Swiss Federal Institute of Technology',80.5,79.9,NULL,86.1,NULL,NULL,NULL,84,NULL,NULL),
	(9,'Imperial College London',88.6,NULL,NULL,83,NULL,88.8,NULL,84,NULL,NULL),
	(10,'University of Chicago',82.3,NULL,NULL,81.1,NULL,83.4,NULL,NULL,83.3,NULL),
	(11,'Princeton University',75.8,NULL,NULL,83.4,NULL,NULL,NULL,NULL,85.3,NULL),
	(12,'National University of Singapore (NUS)',86.3,NULL,78.9,83,NULL,83.3,85.1,89,75.9,NULL),
	(13,'Nanyang Technological University, Singapore (NTU)',74.5,NULL,NULL,76.9,NULL,NULL,NULL,NULL,NULL,NULL),
	(14,'Ecole Polytechnique Fédérale de Lausanne (EPFL)',76.2,NULL,NULL,80.1,NULL,NULL,NULL,NULL,NULL,NULL),
	(15,'Yale University',89.4,76.4,NULL,87.3,NULL,90,87.7,88.8,90.5,NULL),
	(16,'Cornell University',85.7,87.2,NULL,83.9,NULL,83,NULL,NULL,77.9,92.3),
	(17,'Johns Hopkins University',92.2,NULL,91.2,82.2,NULL,93,93.5,87.6,NULL,NULL),
	(18,'University of Pennsylvania',86,NULL,84.7,82.4,83.6,86.9,95.7,NULL,86.2,88.1),
	(19,'The University of Edinburgh',86.2,NULL,83.2,81.4,NULL,85,82.9,NULL,79.2,87.6),
	(20,'Columbia University',85.6,NULL,91.4,83.5,77.6,88.4,82.6,82.2,85.5,NULL),
	(21,'King\'s College London',87.2,NULL,86.1,76.1,88.8,87.6,92.8,90.5,82.8,NULL),
	(22,'The Australian National University',76.7,79.4,84.3,76.8,NULL,NULL,NULL,NULL,76.8,NULL),
	(23,'University of Michigan',83.9,NULL,86.3,81,90.1,84.4,88,85.3,86.7,NULL),
	(24,'Tsinghua University',73.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(25,'Duke University',86.7,NULL,83.3,79.6,NULL,87,84.3,81.6,81.1,NULL),
	(26,'Northwestern University',78.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,80.3,NULL),
	(27,'The University of Hong Kong',83.2,NULL,NULL,NULL,91.4,82.7,NULL,81.9,76.8,NULL),
	(28,'University of California, Berkeley (UCB)',88,85.4,NULL,89.7,NULL,NULL,NULL,NULL,90.5,NULL),
	(29,'The University of Manchester',80.7,NULL,82.4,76.2,81.2,79.8,91.3,87.7,77.6,NULL),
	(30,'McGill University',84.2,73,92.7,79.8,NULL,85.1,81.3,83.4,82.8,NULL),
	(31,'University of California, Los Angeles (UCLA)',89.9,NULL,NULL,86.3,83.6,91.2,84.2,NULL,90.4,NULL),
	(32,'University of Toronto',87.8,NULL,90.5,84,76.5,88.9,89.8,85.3,86.5,NULL),
	(33,'Ecole normale supérieure, Paris',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(34,'The University of Tokyo',86.1,80.8,87.7,84.7,NULL,84,NULL,89.8,NULL,77.8),
	(35,'Seoul National University',82.5,74.8,NULL,NULL,80.9,81.1,NULL,86.3,NULL,73.5),
	(36,'The Hong Kong University of Science and Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(37,'Kyoto University',81.5,77.5,81.4,83.6,NULL,NULL,NULL,84.4,NULL,NULL),
	(38,'London School of Economics and Political Science (LSE)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,79.3,NULL),
	(39,'Peking University',80.5,NULL,82.6,77.7,83.9,NULL,NULL,84.7,NULL,NULL),
	(40,'University of California, San Diego (UCSD)',87.7,NULL,NULL,85.8,NULL,86.1,NULL,88.5,79.5,NULL),
	(41,'University of Bristol',79.4,NULL,85.4,NULL,77.8,NULL,NULL,NULL,NULL,80.8),
	(42,'The University of Melbourne',88.3,75.6,87.4,82.1,79.9,86.4,86,80.7,83.5,85.3),
	(43,'Fudan University',76.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(44,'The Chinese University of Hong Kong (CUHK)',79.2,NULL,NULL,NULL,NULL,79.8,83.1,82.8,NULL,NULL),
	(45,'University of British Columbia',84.2,79.9,84.2,79.5,81.4,83.5,84.4,83.9,86.4,NULL),
	(46,'The University of Sydney',87.6,74.6,87.6,NULL,77.7,87.7,88.8,85.6,81.5,86.4),
	(47,'New York University (NYU)',81,NULL,NULL,77.5,84.7,82.8,83.4,81.4,87.6,NULL),
	(48,'KAIST - Korea Advanced Institute of Science & Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(49,'The University of New South Wales (UNSW Sydney)',81,NULL,83.2,NULL,NULL,79.7,NULL,NULL,84.6,NULL),
	(50,'Brown University',76.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(51,'The University of Queensland',83.8,79.6,NULL,78.6,NULL,80.3,81.5,83.4,80.6,78.8),
	(52,'The University of Warwick',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(53,'University of Wisconsin-Madison',79.6,84.3,79.4,78.8,NULL,NULL,NULL,NULL,80.2,83.1),
	(54,'Ecole Polytechnique',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(55,'City University of Hong Kong',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(56,'Tokyo Institute of Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(57,'University of Amsterdam',82.5,NULL,NULL,NULL,NULL,82.3,NULL,NULL,84.8,NULL),
	(58,'Carnegie Mellon University',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75.8,NULL),
	(59,'University of Washington',86,NULL,79,82.1,83.7,85.5,89.8,81.5,NULL,NULL),
	(60,'Technical University of Munich',77.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(61,'Shanghai Jiao Tong University',75.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(62,'Delft University of Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(63,'Osaka University',79,NULL,NULL,76.3,80.5,NULL,NULL,NULL,NULL,NULL),
	(64,'University of Glasgow',80.9,NULL,78.7,NULL,NULL,81.4,NULL,NULL,NULL,85.1),
	(65,'Monash University',84.2,NULL,82.5,76.9,NULL,83.3,87.9,94.7,77,NULL),
	(66,'University of Illinois at Urbana-Champaign',71,80.4,NULL,NULL,NULL,NULL,NULL,NULL,80.3,80.1),
	(67,'University of Texas at Austin',72.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,79.3,NULL),
	(68,'Ludwig-Maximilians-Universität München',81,NULL,80.5,79.3,NULL,80.1,NULL,83.4,NULL,80.8),
	(69,'National Taiwan University (NTU)',81,NULL,NULL,NULL,76.3,79.9,84.4,82.5,NULL,NULL),
	(70,'University of Copenhagen',85.5,79.7,84.8,79.1,81.8,82,NULL,83.7,NULL,85.6),
	(71,'Georgia Institute of Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(72,'Ruprecht-Karls-Universität Heidelberg',81.4,NULL,NULL,78.2,NULL,80.3,NULL,NULL,NULL,NULL),
	(73,'Lund University',76.6,NULL,NULL,NULL,NULL,NULL,80.5,NULL,NULL,NULL),
	(74,'Durham University',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(75,'Tohoku University',74.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(76,'The University of Nottingham',78.9,NULL,79.7,NULL,NULL,NULL,81,91.1,NULL,79.3),
	(77,'University of St Andrews',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(78,'University of North Carolina, Chapel Hill',81.9,NULL,NULL,76.1,84.5,NULL,87.7,87.3,NULL,NULL),
	(79,'KU Leuven',79.1,NULL,78.9,NULL,85.7,NULL,NULL,83.8,76.4,NULL),
	(80,'University of Zurich',81.3,NULL,84.1,NULL,79.8,NULL,NULL,NULL,NULL,NULL),
	(81,'The University of Auckland',79.4,NULL,80.1,NULL,NULL,NULL,79.9,NULL,78.3,NULL),
	(82,'University of Birmingham',77.7,NULL,NULL,NULL,82.2,NULL,NULL,NULL,NULL,NULL),
	(83,'Pohang University of Science And Technology (POSTECH)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(84,'The University of Sheffield',75.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(85,'Universidad de Buenos Aires (UBA)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(86,'University of California, Davis',79.7,93.6,81.9,81.2,NULL,NULL,NULL,NULL,NULL,94.5),
	(87,'University of Southampton',75.6,NULL,NULL,NULL,NULL,NULL,88.5,NULL,NULL,NULL),
	(88,'The Ohio State University',76,74.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,84.9),
	(89,'Boston University',81.4,NULL,NULL,NULL,78,79.8,NULL,NULL,78.1,NULL),
	(90,'Rice University',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(91,'University of Helsinki',79,NULL,NULL,NULL,77.3,NULL,NULL,NULL,NULL,NULL),
	(92,'Purdue University',71.5,83.2,NULL,NULL,NULL,NULL,NULL,86,NULL,81.4),
	(93,'University of Leeds',73.8,NULL,81,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(94,'University of Alberta',76.5,NULL,NULL,NULL,NULL,NULL,87,81.4,NULL,NULL),
	(95,'Pennsylvania State University',74.4,80.1,79.4,NULL,NULL,NULL,82.2,NULL,77.4,NULL),
	(96,'University of Geneva',79.5,NULL,NULL,NULL,NULL,NULL,NULL,82,NULL,NULL),
	(97,'KTH Royal Institute of Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(98,'Uppsala University',80.8,NULL,NULL,NULL,NULL,NULL,NULL,85,NULL,NULL),
	(99,'Korea University',72.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(100,'Trinity College Dublin, The University of Dublin',71.9,NULL,NULL,NULL,NULL,NULL,82.1,NULL,NULL,NULL),
	(101,'KIT, Karlsruhe Institute of Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(102,'Leiden University',78.7,NULL,NULL,NULL,NULL,NULL,NULL,86.6,NULL,NULL),
	(103,'The University of Western Australia',79.9,75.6,86.1,NULL,NULL,NULL,NULL,NULL,77.3,NULL),
	(104,'Utrecht University',79.5,NULL,NULL,NULL,NULL,NULL,NULL,82.2,NULL,87.5),
	(105,'University of Science and Technology of China',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(106,'Sungkyunkwan University (SKKU)',73.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(107,'Washington University in St. Louis',83.4,NULL,79.1,79.4,NULL,82.9,NULL,NULL,NULL,NULL),
	(108,'Lomonosov Moscow State University',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(109,'Technical University of Denmark',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(110,'Zhejiang University',70.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(111,'The Hong Kong Polytechnic University',NULL,NULL,NULL,NULL,NULL,NULL,82.8,NULL,NULL,NULL),
	(112,'Yonsei University',76.7,NULL,NULL,NULL,76.4,NULL,NULL,NULL,NULL,NULL),
	(113,'University of Oslo',76.4,NULL,NULL,NULL,77.1,NULL,NULL,NULL,NULL,NULL),
	(114,'University of Groningen',76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75.7,NULL),
	(115,'Nanjing University',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(116,'Nagoya University',72.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(117,'Aarhus University',79.6,NULL,NULL,NULL,83.2,NULL,80.8,NULL,NULL,NULL),
	(118,'University of California, Santa Barbara (UCSB)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(119,'Wageningen University',77.2,96.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,85.3),
	(120,'Universidade de São Paulo',73.9,75.1,NULL,NULL,83.1,NULL,NULL,NULL,NULL,77),
	(121,'Humboldt-Universität zu Berlin',69.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(122,'Eindhoven University of Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(123,'Freie Universitaet Berlin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,82.6,NULL,77.8),
	(124,'Queen Mary University of London',76.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(125,'The University of Adelaide',77.5,NULL,78.7,NULL,79.1,NULL,82.4,NULL,NULL,NULL),
	(126,'Université de Montréal',77.7,NULL,81.8,NULL,NULL,NULL,NULL,81,NULL,74.5),
	(127,'University of York',70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(128,'Universidad Nacional Autónoma de México (UNAM)',70.5,NULL,78.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(129,'Lancaster University',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(130,'Hokkaido University',72.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(131,'Ghent University',76.7,73.4,NULL,NULL,NULL,NULL,NULL,NULL,78.1,83.9),
	(132,'University of Maryland, College Park',71.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(133,'Universiti Malaya (UM)',71.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(134,'Aalto University',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(135,'Kyushu University',73.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(136,'University of Southern California',75.2,NULL,NULL,NULL,77.7,NULL,NULL,80.7,NULL,NULL),
	(137,'University of Minnesota',78.1,75,NULL,NULL,78.4,NULL,83.2,81.2,78.1,85.5),
	(138,'University of Lausanne',76.5,NULL,79.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(139,'Chalmers University of Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(140,'Cardiff University',75.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,76.9,NULL),
	(141,'Université Pierre et Marie Curie (UPMC)',76.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(142,'University of Basel',79.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(143,'University of Aberdeen',71.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(144,'Erasmus University Rotterdam',80.5,NULL,NULL,NULL,NULL,80.9,NULL,NULL,NULL,NULL),
	(145,'University of Pittsburgh',78.7,NULL,NULL,NULL,NULL,81.5,86.1,NULL,NULL,NULL),
	(146,'RWTH Aachen University',73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(147,'Pontificia Universidad Católica de Chile (UC)',NULL,73.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(148,'The Hebrew University of Jerusalem',72.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(149,'McMaster University',79.9,NULL,79.7,NULL,NULL,82.6,83.1,NULL,NULL,NULL),
	(150,'Emory University',78.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(151,'National Tsing Hua University',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(152,'University of Waterloo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(153,'Indian Institute of Science (IISc) Bangalore',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(154,'Université catholique de Louvain (UCL)',75.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(155,'University of Vienna',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(156,'University of California, Irvine',73.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(157,'University of Liverpool',74.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,88.9),
	(158,'Dartmouth College',69.9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(159,'University of Bath',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(160,'Universitat de Barcelona',77.6,NULL,80.8,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(161,'Texas A&M University',69.8,79.1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,86.6),
	(162,'Michigan State University',72.4,83.3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,86.1),
	(163,'Albert-Ludwigs-Universitaet Freiburg',75.7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(164,'Technische Universität Berlin (TU Berlin)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(165,'The University of Exeter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,76.3,NULL),
	(166,'CentraleSupélec',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(167,'Eberhard Karls Universität Tübingen',75.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(168,'Newcastle University',75.1,NULL,NULL,NULL,78.7,NULL,NULL,NULL,NULL,NULL),
	(169,'University of Otago',79.1,NULL,83,NULL,79.8,NULL,NULL,NULL,NULL,NULL),
	(170,'University of Colorado Boulder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(171,'Hanyang University',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(172,'University of Virginia',69.4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,75.7,NULL),
	(173,'Maastricht University',75.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(174,'National Chiao Tung University',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(175,'University of Reading',NULL,81.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(176,'University College Dublin',72.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,79.3),
	(177,'University of Göttingen',74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(178,'École Normale Supérieure de Lyon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(179,'University of Bergen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(180,'University of Twente',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(181,'University of Bern',74.7,NULL,NULL,NULL,81.6,NULL,NULL,NULL,NULL,NULL),
	(182,'Vrije Universiteit Brussel (VUB)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(183,'Politecnico di Milano',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(184,'Vienna University of Technology',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(185,'University of Florida',76,78.2,NULL,NULL,76.7,NULL,NULL,NULL,NULL,79.1),
	(186,'Indian Institute of Technology Delhi (IITD)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(187,'University of Rochester',69.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(188,'University of Illinois, Chicago (UIC)',72.9,NULL,NULL,NULL,NULL,NULL,82.8,81.5,NULL,NULL),
	(189,'University of Sussex',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(190,'King Fahd University of Petroleum & Minerals',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(191,'Radboud University',74.5,NULL,NULL,NULL,77.7,NULL,NULL,NULL,NULL,NULL),
	(192,'Universidade Estadual de Campinas (Unicamp)',NULL,74,NULL,NULL,80.1,NULL,NULL,NULL,NULL,NULL),
	(193,'University of Cape Town',75.5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(194,'University of Technology Sydney',NULL,NULL,NULL,NULL,NULL,NULL,91.3,NULL,NULL,NULL),
	(195,'Queen\'s University Belfast',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(196,'Stockholm University',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(197,'University of Calgary',75.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,74),
	(198,'The University of Western Ontario',72.2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,77.6,NULL),
	(199,'Vrije Universiteit Amsterdam',70.6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(200,'Universidad de Chile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `university_life_sci` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
