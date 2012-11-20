# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: landmarks
# Generation Time: 2011-07-08 10:20:34 +0100
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table landmarks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `landmarks`;

CREATE TABLE `landmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(50) DEFAULT NULL,
  `l_lat` decimal(18,12) DEFAULT NULL,
  `l_long` decimal(18,12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `landmarks` WRITE;
/*!40000 ALTER TABLE `landmarks` DISABLE KEYS */;
INSERT INTO `landmarks` (`id`,`l_name`,`l_lat`,`l_long`)
VALUES
	(1,'Big Ben',51.500600000000,-0.124610000000),
	(2,'Stonehenge',51.178850000000,-1.826446000000),
	(3,'White Cliffs of Dover',51.132020000000,1.334070000000),
	(4,'Hadrian\'s Wall',55.024453000000,2.142310000000);

/*!40000 ALTER TABLE `landmarks` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;