/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.18-MariaDB : Database - final
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`final` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `final`;

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activo` bit(1) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `categoria` */

insert  into `categoria`(`id`,`activo`,`nombre`) values 
(1,'','Simulacion Social'),
(2,'','Accion'),
(3,'','Guerra'),
(4,'','Rol');

/*Table structure for table `estudio` */

DROP TABLE IF EXISTS `estudio`;

CREATE TABLE `estudio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activo` bit(1) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `estudio` */

insert  into `estudio`(`id`,`activo`,`nombre`) values 
(1,'','EA'),
(2,'','Rockstar Games'),
(3,'','Valve Corporation'),
(4,'','Square Enix '),
(5,'','Sledgehammer Games');

/*Table structure for table `videojuego` */

DROP TABLE IF EXISTS `videojuego`;

CREATE TABLE `videojuego` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activo` bit(1) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha_lanzamiento` datetime NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `fk_categoria` bigint(20) NOT NULL,
  `fk_estudio` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5d922d3f7ikxnd3rlh60wm9x4` (`fk_categoria`),
  KEY `FKi847s8l6jlnpll1vkrjaejm34` (`fk_estudio`),
  CONSTRAINT `FK5d922d3f7ikxnd3rlh60wm9x4` FOREIGN KEY (`fk_categoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `FKi847s8l6jlnpll1vkrjaejm34` FOREIGN KEY (`fk_estudio`) REFERENCES `estudio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `videojuego` */

insert  into `videojuego`(`id`,`activo`,`descripcion`,`fecha_lanzamiento`,`imagen`,`precio`,`stock`,`titulo`,`fk_categoria`,`fk_estudio`) values 
(1,'','Videojuego de simulación social para PC, Mac. Tercera entrega de la popular serie Los Sims','2021-10-05 03:00:00','1635029378357.png',650,5,'Los sims 3',1,1),
(2,'','Videojuego de acción-aventura de mundo abierto ','2021-06-17 03:00:00','1635029509288.jpg',1000,10,'GTA IV',2,2),
(3,'\0','Videojuego de acción-aventura de mundo abierto','2021-10-09 03:00:00','1635029583688.jpg',500,3,'GTA San Andreas',2,2),
(4,'','Videojuego de disparos en primera persona','2021-10-12 03:00:00','1635029813304.jpg',300,8,'Counter-Strike',3,3),
(5,'\0',' Videojuego de simulación social y de vida. Cuarta entrega de la aclamada serie ','2021-04-14 03:00:00','1635029928888.png',800,5,'Los sims 4',1,1),
(6,'','Videojuego de simulación social. Segunda entrega ','2021-10-03 03:00:00','1635029993866.png',430,3,'Los sims 2',1,1),
(7,'','La franquicia se centra en una serie de fantasía y ciencia ficción de videojuegos RPG.','2021-10-13 03:00:00','1635030302684.png',1500,12,'Final Fantasy VII',4,4),
(8,'','Videojuego de disparos en primera persona. Cuarta entrega de la saga. ','2021-10-11 03:00:00','1635030439487.jpg',1200,6,'Call of Duty: WWII',3,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
