-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.44-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema tcc
--

CREATE DATABASE IF NOT EXISTS tcc;
USE tcc;

--
-- Definition of table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `codigo_categoria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo_categoria`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoria`
--

/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`codigo_categoria`,`nome`) VALUES 
 (1,'Área'),
 (2,'Comprimento'),
 (3,'Potência'),
 (4,'Massa'),
 (5,'Pressão'),
 (6,'Temperatura'),
 (7,'Tempo'),
 (8,'Velocidade'),
 (9,'Volume');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;


--
-- Definition of table `formula`
--

DROP TABLE IF EXISTS `formula`;
CREATE TABLE `formula` (
  `codformula` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codcategoria` int(10) unsigned NOT NULL,
  `entrada` varchar(45) NOT NULL,
  `saida` varchar(45) NOT NULL,
  PRIMARY KEY (`codformula`,`codcategoria`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formula`
--

/*!40000 ALTER TABLE `formula` DISABLE KEYS */;
INSERT INTO `formula` (`codformula`,`codcategoria`,`entrada`,`saida`) VALUES 
 (1,1,'Metro Quadrado (m²)','Centímetro Quadrado (cm²)'),
 (2,1,'Metro Quadrado (m²)','Quilômetro Quadrado (km²)'),
 (3,1,'Centímetro Quadrado (cm²)','Metro Quadrado (m²)'),
 (4,1,'Centímetro Quadrado (cm²)','Quilômetro Quadrado (km²)'),
 (5,1,'Quilômetro Quadrado (km²)','Metro Quadrado (m²)'),
 (6,1,'Quilômetro Quadrado (km²)','Centímetro Quadrado (cm²)'),
 (7,2,'Metro (m)','Centímetro (cm)'),
 (8,2,'Metro (m)','Milímetro (mm)'),
 (9,2,'Metro (m)','Quilômetro (km)'),
 (10,2,'Metro (m)','Milha (mi)'),
 (11,2,'Metro (m)','Polegada (in)'),
 (12,2,'Centímetro (cm)','Metro (m)'),
 (13,2,'Centímetro (cm)','Milímetro (mm)'),
 (14,2,'Centímetro (cm)','Quilômetro (km)'),
 (15,2,'Centímetro (cm)','Milha (mi)'),
 (16,2,'Centímetro (cm)','Polegada (in)'),
 (17,2,'Milímetro (mm)','Metro (m)'),
 (18,2,'Milímetro (mm)','Centímetro (cm)'),
 (19,2,'Milímetro (mm)','Quilômetro (km)'),
 (20,2,'Milímetro (mm)','Milha (mi)'),
 (21,2,'Milímetro (mm)','Polegada (in)');
INSERT INTO `formula` (`codformula`,`codcategoria`,`entrada`,`saida`) VALUES 
 (22,2,'Quilômetro (km)','Metro (m)'),
 (23,2,'Quilômetro (km)','Centímetro (cm)'),
 (24,2,'Quilômetro (km)','Milímetro (mm)'),
 (25,2,'Quilômetro (km)','Milha (mi)'),
 (26,2,'Quilômetro (km)','Polegada (in)'),
 (27,2,'Milha (mi)','Metro (m)'),
 (28,2,'Milha (mi)','Centímetro (cm)'),
 (29,2,'Milha (mi)','Milímetro (mm)'),
 (30,2,'Milha (mi)','Quilômetro (km)'),
 (31,2,'Milha (mi)','Polegada (in)'),
 (32,2,'Polegada (in)','Metro (m)'),
 (33,2,'Polegada (in)','Centímetro (cm)'),
 (34,2,'Polegada (in)','Milímetro (mm)'),
 (35,2,'Polegada (in)','Quilômetro (km)'),
 (36,2,'Polegada (in)','Milha (mil)'),
 (37,3,'Joule por Segundo (J/s)','Watt (W)'),
 (38,3,'Joule por Segundo (J/s)','Quilowatt (kW)'),
 (39,3,'Joule por Segundo (J/s)','Megawatt (MW)'),
 (40,3,'Joule por Segundo (J/s)','Cavalo-Vapor (hp)'),
 (41,3,'Watt (W)','Joule por Segundo (J/s)'),
 (42,3,'Watt (W)','Quilowatt (kW)'),
 (43,3,'Watt (W)','Megawatt (MW)'),
 (44,3,'Watt (W)','Cavalo-Vapor (hp)');
INSERT INTO `formula` (`codformula`,`codcategoria`,`entrada`,`saida`) VALUES 
 (45,3,'Quilowatt (kW)','Joule por Segundo (J/s)'),
 (46,3,'Quilowatt (kW)','Watt (W)'),
 (47,3,'Quilowatt (kW)','Megawatt (MW)'),
 (48,3,'Quilowatt (kW)','Cavalo-Vapor (hp)'),
 (49,3,'Megawatt (MW)','Joule por Segundo (J/s)'),
 (50,3,'Megawatt (MW)','Watt (W)'),
 (51,3,'Megawatt (MW)','Quilowatt (kW)'),
 (52,3,'Megawatt (MW)','Cavalo-Vapor (hp)'),
 (53,3,'Cavalo-Vapor (hp)','Joule por Segundo (J/s)'),
 (54,3,'Cavalo-Vapor (hp)','Watt (W)'),
 (55,3,'Cavalo-Vapor (hp)','Quilowatt (kW)'),
 (56,3,'Cavalo-Vapor (hp)','Megawatt (MW)'),
 (57,4,'Miligrama (mg)','Grama (g)'),
 (58,4,'Miligrama (mg)','Quilograma (kg)'),
 (59,4,'Miligrama (mg)','Tonelada (t)'),
 (60,4,'Grama (g)','Miligrama (mg)'),
 (61,4,'Grama (g)','Quilograma (kg)'),
 (62,4,'Grama (g)','Tonelada (t)'),
 (63,4,'Quilograma (kg)','Miligrama (mg)'),
 (64,4,'Quilograma (kg)','Grama (g)'),
 (65,4,'Quilograma (kg)','Tonelada (t)'),
 (66,4,'Tonelada (t)','Miligrama (mg)'),
 (67,4,'Tonelada (t)','Grama (g)');
INSERT INTO `formula` (`codformula`,`codcategoria`,`entrada`,`saida`) VALUES 
 (68,4,'Tonelada (t)','Quilograma (kg)'),
 (69,5,'Atmosfera (atm)','Pascal (Pa)'),
 (70,5,'Atmosfera (atm)','Bar (bar)'),
 (71,5,'Pascal (Pa)','Atmosfera (atm)'),
 (72,5,'Pascal (Pa)','Bar (bar)'),
 (73,5,'Bar (bar)','Atmosfera (atm)'),
 (74,5,'Bar (bar)','Pascal (Pa)'),
 (75,6,'Celsius (°C)','Fahrenheit (°F)'),
 (76,6,'Celsius (°C)','Kelvin (K)'),
 (77,6,'Fahrenheit (°F)','Celsius (°C)'),
 (78,6,'Fahrenheit (°F)','Kelvin (K)'),
 (79,6,'Kelvin (K)','Celsius (°C)'),
 (80,6,'Kelvin (K)','Fahrenheit (°F)'),
 (81,7,'Segundo (s)','Minuto (min)'),
 (82,7,'Segundo (s)','Hora (h)'),
 (83,7,'Minuto (min)','Segundo (s)'),
 (84,7,'Minuto (min)','Hora (h)'),
 (85,7,'Hora (h)','Segundo (s)'),
 (86,7,'Hora (h)','Minuto (min)'),
 (87,8,'Metro por Segundo (m/s)','Quilômetro por Hora (km/h)'),
 (88,8,'Metro por Segundo (m/s)','Milha por Hora (Mph)'),
 (89,8,'Quilômetro por Hora (km/h)','Metro por Segundo (m/s)'),
 (90,8,'Quilômetro por Hora (km/h)','Milha por Hora (Mph)'),
 (91,8,'Milha por Hora (Mph)','Metro por Segundo (m/s)');
INSERT INTO `formula` (`codformula`,`codcategoria`,`entrada`,`saida`) VALUES 
 (92,8,'Milha por Hora (Mph)','Quilômetro por Hora (km/h)'),
 (93,9,'Metro Cúbico (m³)','Centímetro Cúbico (cm³)'),
 (94,9,'Metro Cúbico (m³)','Litro (L)'),
 (95,9,'Centímetro Cúbico (cm³)','Metro Cúbico (cm³)'),
 (96,9,'Centímetro Cúbico (cm³)','Litro (L)'),
 (97,9,'Litro (L)','Metro Cúbico (m³)'),
 (98,9,'Litro (L)','Centímetro Cúbico (cm³)'),
 (99,1,'Metro Quadrado (m²)','Hectare (ha)'),
 (100,1,'Centímetro Quadrado (cm²)','Hectare (ha)'),
 (101,1,'Quilômetro Quadrado (km²)','Hectare (ha)'),
 (102,1,'Hectare (ha)','Metro Quadrado (m²)'),
 (103,1,'Hectare (ha)','Centímetro Quadrado (cm²)'),
 (104,1,'Hectare (ha)','Quilômetro Quadrado (km²)');
/*!40000 ALTER TABLE `formula` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
