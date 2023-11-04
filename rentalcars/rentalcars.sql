-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: rentalcars
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car_model`
--

DROP TABLE IF EXISTS `car_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `availability` tinyint DEFAULT NULL,
  `bail` decimal(38,2) DEFAULT NULL,
  `body` tinyint DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `fuel_type` tinyint DEFAULT NULL,
  `gearbox` tinyint DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `mileage` int DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `number_of_doors` int DEFAULT NULL,
  `number_of_seats` int DEFAULT NULL,
  `price` decimal(38,2) DEFAULT NULL,
  `production_date` int DEFAULT NULL,
  `trunk` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `car_model_chk_1` CHECK ((`availability` between 0 and 2)),
  CONSTRAINT `car_model_chk_2` CHECK ((`body` between 0 and 7)),
  CONSTRAINT `car_model_chk_3` CHECK ((`fuel_type` between 0 and 2)),
  CONSTRAINT `car_model_chk_4` CHECK ((`gearbox` between 0 and 1))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_model`
--

LOCK TABLES `car_model` WRITE;
/*!40000 ALTER TABLE `car_model` DISABLE KEYS */;
INSERT INTO `car_model` VALUES (1,0,500.00,0,'Red',1,1,'Opel',128000,'Corsa',4,5,1111.00,2004,'aaa'),(2,0,500.00,2,'Black',2,1,'Opel',45000,'Astra',4,5,456.00,2019,'aaa'),(3,0,500.00,3,'Black',2,1,'BMW',45000,'E3śmieć',4,5,124.00,2019,'aaa'),(4,0,500.00,2,'Black',2,1,'AUDI',45000,'80',4,5,123.00,2019,'aaa');
/*!40000 ALTER TABLE `car_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_model`
--

DROP TABLE IF EXISTS `company_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_address` varchar(255) DEFAULT NULL,
  `company_domain_url` varchar(255) DEFAULT NULL,
  `company_logotype` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_model`
--

LOCK TABLES `company_model` WRITE;
/*!40000 ALTER TABLE `company_model` DISABLE KEYS */;
INSERT INTO `company_model` VALUES (1,'','','','Gruz-rental','');
/*!40000 ALTER TABLE `company_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_model`
--

DROP TABLE IF EXISTS `customer_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `driver_licence_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `pesel` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_koya85a1915ftx0nv9jnc73it` (`user_id`),
  CONSTRAINT `FK8t92roec6q9kj0i1y2dm8fxow` FOREIGN KEY (`user_id`) REFERENCES `user_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_model`
--

LOCK TABLES `customer_model` WRITE;
/*!40000 ALTER TABLE `customer_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_model`
--

DROP TABLE IF EXISTS `department_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_model`
--

LOCK TABLES `department_model` WRITE;
/*!40000 ALTER TABLE `department_model` DISABLE KEYS */;
INSERT INTO `department_model` VALUES (1,NULL,'Lublin'),(2,NULL,'Kraków'),(3,NULL,'Katowice'),(4,NULL,'Warszawa');
/*!40000 ALTER TABLE `department_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_model_cars`
--

DROP TABLE IF EXISTS `department_model_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_model_cars` (
  `department_model_id` bigint NOT NULL,
  `cars_id` bigint NOT NULL,
  UNIQUE KEY `UK_sxj9k6lq69yloy9hi7ha47wma` (`cars_id`),
  KEY `FKjn1anb8tvdxbj2f781664lba7` (`department_model_id`),
  CONSTRAINT `FKede6nh3dh6p4droy8x2p51dik` FOREIGN KEY (`cars_id`) REFERENCES `car_model` (`id`),
  CONSTRAINT `FKjn1anb8tvdxbj2f781664lba7` FOREIGN KEY (`department_model_id`) REFERENCES `department_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_model_cars`
--

LOCK TABLES `department_model_cars` WRITE;
/*!40000 ALTER TABLE `department_model_cars` DISABLE KEYS */;
INSERT INTO `department_model_cars` VALUES (1,1),(1,4),(2,3),(3,2);
/*!40000 ALTER TABLE `department_model_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_model_employees`
--

DROP TABLE IF EXISTS `department_model_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_model_employees` (
  `department_model_id` bigint NOT NULL,
  `employees_id` bigint NOT NULL,
  PRIMARY KEY (`department_model_id`,`employees_id`),
  UNIQUE KEY `UK_8xfo7676jvfv9bfulnpfora5j` (`employees_id`),
  CONSTRAINT `FKb5h09q6h8ejhpaq9rapvp9x6p` FOREIGN KEY (`department_model_id`) REFERENCES `department_model` (`id`),
  CONSTRAINT `FKpyamh3e2f5f4dwnpp95xv0hu` FOREIGN KEY (`employees_id`) REFERENCES `employee_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_model_employees`
--

LOCK TABLES `department_model_employees` WRITE;
/*!40000 ALTER TABLE `department_model_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_model_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_model`
--

DROP TABLE IF EXISTS `employee_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `position` tinyint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_8q6y05bxy87s9lp0gfr70hvy5` (`user_id`),
  CONSTRAINT `FKa6xi3dv3hfqdgt8mggvxdm2vp` FOREIGN KEY (`user_id`) REFERENCES `user_model` (`id`),
  CONSTRAINT `employee_model_chk_1` CHECK ((`position` between 0 and 2))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_model`
--

LOCK TABLES `employee_model` WRITE;
/*!40000 ALTER TABLE `employee_model` DISABLE KEYS */;
INSERT INTO `employee_model` VALUES (1,'Jan','Kowalski',0,2),(2,'Karol','Nowak',1,3);
/*!40000 ALTER TABLE `employee_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_model`
--

DROP TABLE IF EXISTS `rental_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comments` varchar(255) DEFAULT NULL,
  `date_of_rental` date DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `reservation_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_45n5cwl6x276o1njlag9ahqos` (`reservation_id`),
  KEY `FKg42lumre3l5ng5fkbf66yb7fj` (`employee_id`),
  CONSTRAINT `FKebydrd6i1d8drww6pesspj9t2` FOREIGN KEY (`reservation_id`) REFERENCES `reservation_model` (`id`),
  CONSTRAINT `FKg42lumre3l5ng5fkbf66yb7fj` FOREIGN KEY (`employee_id`) REFERENCES `employee_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_model`
--

LOCK TABLES `rental_model` WRITE;
/*!40000 ALTER TABLE `rental_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `rental_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_model`
--

DROP TABLE IF EXISTS `reservation_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `price` decimal(38,2) DEFAULT NULL,
  `car_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `reception_venue_id` bigint DEFAULT NULL,
  `return_venue_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr974ot26dyoq20en7ynkx4g3d` (`car_id`),
  KEY `FKec0y0jbn8a3y3xprcruna3mm0` (`customer_id`),
  KEY `FKkqnbggbpx9yxn1rhkb1f4arv2` (`reception_venue_id`),
  KEY `FKlfswk5ft6wrwlvmo7tui32ot3` (`return_venue_id`),
  CONSTRAINT `FKec0y0jbn8a3y3xprcruna3mm0` FOREIGN KEY (`customer_id`) REFERENCES `customer_model` (`id`),
  CONSTRAINT `FKkqnbggbpx9yxn1rhkb1f4arv2` FOREIGN KEY (`reception_venue_id`) REFERENCES `department_model` (`id`),
  CONSTRAINT `FKlfswk5ft6wrwlvmo7tui32ot3` FOREIGN KEY (`return_venue_id`) REFERENCES `department_model` (`id`),
  CONSTRAINT `FKr974ot26dyoq20en7ynkx4g3d` FOREIGN KEY (`car_id`) REFERENCES `car_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_model`
--

LOCK TABLES `reservation_model` WRITE;
/*!40000 ALTER TABLE `reservation_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_model`
--

DROP TABLE IF EXISTS `return_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `return_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comments` varchar(255) DEFAULT NULL,
  `date_of_return` date DEFAULT NULL,
  `supplement` decimal(38,2) DEFAULT NULL,
  `total_cost` decimal(38,2) DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `reservation_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r7nwxq17xfgiy6f35orc7fvl7` (`reservation_id`),
  KEY `FKdbrtfnqnujrafo8k6140t8r3y` (`employee_id`),
  CONSTRAINT `FKdbrtfnqnujrafo8k6140t8r3y` FOREIGN KEY (`employee_id`) REFERENCES `employee_model` (`id`),
  CONSTRAINT `FKfko22u0uf649rbl82d56hrfjc` FOREIGN KEY (`reservation_id`) REFERENCES `reservation_model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_model`
--

LOCK TABLES `return_model` WRITE;
/*!40000 ALTER TABLE `return_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_model`
--

DROP TABLE IF EXISTS `role_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_model`
--

LOCK TABLES `role_model` WRITE;
/*!40000 ALTER TABLE `role_model` DISABLE KEYS */;
INSERT INTO `role_model` VALUES (1,'ADMIN'),(2,'USER');
/*!40000 ALTER TABLE `role_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_model`
--

DROP TABLE IF EXISTS `user_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_model` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmxf33ugxv0f2fs2djs08sh2rb` (`role_id`),
  CONSTRAINT `FKmxf33ugxv0f2fs2djs08sh2rb` FOREIGN KEY (`role_id`) REFERENCES `role_model` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_model`
--

LOCK TABLES `user_model` WRITE;
/*!40000 ALTER TABLE `user_model` DISABLE KEYS */;
INSERT INTO `user_model` VALUES (1,_binary '','admin@co_ja_nie_potrafie.pl','admin','admin',1),(2,_binary '','kowalski@rentalcars.pl','kowalski','1234',1),(3,_binary '','nowak@rentalcars.pl','nowak','1234',1);
/*!40000 ALTER TABLE `user_model` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-04 14:28:19
