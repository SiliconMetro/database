-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: chat_bot
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can view log entry',1,'view_logentry'),(20,'Can view permission',2,'view_permission'),(21,'Can view group',3,'view_group'),(22,'Can view user',4,'view_user'),(23,'Can view content type',5,'view_contenttype'),(24,'Can view session',6,'view_session'),(25,'Can add Token',7,'add_token'),(26,'Can change Token',7,'change_token'),(27,'Can delete Token',7,'delete_token'),(28,'Can view Token',7,'view_token'),(29,'Can add token',8,'add_tokenproxy'),(30,'Can change token',8,'change_tokenproxy'),(31,'Can delete token',8,'delete_tokenproxy'),(32,'Can view token',8,'view_tokenproxy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$Lo4KdvOVGk93ohAayeP3ZK$MmRmhe6cwh/OCoWaaNfvZFVuVYrmzXHhWvwu4HcbYdg=',NULL,1,'raajan','','','rkaul@allianceapi.com',1,1,'2022-03-24 09:53:27.539403',NULL),(3,'pbkdf2_sha256$260000$DEYUFI9bsnagpsqEMKcalj$tvQ7MKqnqj0WQBasRoba/MEqRVmCGWa9P6sWg3rHXRA=',NULL,0,'rajan','','','raajan@gmail.com',0,1,'2022-10-19 06:23:28.056695',NULL),(5,'pbkdf2_sha256$260000$t4RDY2CGCRxIf2Wa2aymLv$GeKq08YmP7yZ9x1Flin0SgPu6DizagLc6o1uD+KgLwY=',NULL,0,'Buddha','','','dfghjk@vfghj.now',0,1,'2022-10-19 13:43:42.651763',NULL),(6,'pbkdf2_sha256$260000$BMTzmlPkef3Xg6xC7I9kt8$zrl0bTNawB8q2f0XqlMNXf7PIjWyLBBcjAkKxhDhD0I=',NULL,1,'rajankaul','','','raajan@hello.com',1,1,'2025-01-17 18:08:18.176160',NULL),(7,'pbkdf2_sha256$260000$gaSPOIWOc1lbH2pgu1Tcvu$2fiDnJ1cvxlsxBxp+sz/qgWxM3K3LSFkdGDtueGrqFM=',NULL,1,'raajan@hello.com','','','raajan@hello.com',1,1,'2025-01-17 18:11:37.441660',NULL);
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('dc5f082faa042f1235e0635c8fd88d2dc0eb014b','2022-10-19 06:24:30.677624',3),('f5ab939dbe00f7cb6e5922273a78d87e66455eed','2022-05-18 20:30:34.467785',1);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_businesscategory`
--

DROP TABLE IF EXISTS `companies_businesscategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_businesscategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_businesscategory`
--

LOCK TABLES `companies_businesscategory` WRITE;
/*!40000 ALTER TABLE `companies_businesscategory` DISABLE KEYS */;
INSERT INTO `companies_businesscategory` VALUES (1,'Automotive'),(2,'Business Support & Supplies'),(3,'Computers & Electronics'),(4,'Construction & Contractors'),(5,'Education'),(6,'Entertainment'),(7,'Food & Dining'),(8,'Health & Medicine'),(9,'Home & Garden'),(10,'Business Support & Supplies'),(11,'Manufacturing, Wholesale, Distribution'),(12,'Miscellaneous'),(13,'Personal Care & Services'),(14,'Real Estate'),(15,'Travel & Transportation'),(16,'Merchants (Retail)'),(17,'Others');
/*!40000 ALTER TABLE `companies_businesscategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_businesssubcategory`
--

DROP TABLE IF EXISTS `companies_businesssubcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_businesssubcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_category` varchar(50) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `companies_businesssubcategory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `companies_businesscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_businesssubcategory`
--

LOCK TABLES `companies_businesssubcategory` WRITE;
/*!40000 ALTER TABLE `companies_businesssubcategory` DISABLE KEYS */;
INSERT INTO `companies_businesssubcategory` VALUES (1,'Auto Accessories',1),(2,'Auto Dealers – New',1),(3,'Auto Dealers – Used',1),(4,'Detail & Carwash',1),(5,'Gas Stations',1),(6,'Motorcycle Sales & Repair',1),(7,'Rental & Leasing',1),(8,'Service, Repair & Parts',1),(9,'Towing',1),(10,'Consultants',2),(11,'Employment Agency',2),(12,'Marketing & Communications',2),(13,'Office Supplies',2),(14,'Printing & Publishing',2),(15,'Computer Programming & Support',3),(16,'Consumer Electronics & Accessories',3),(17,'Architects, Landscape Architects',4),(18,'Engineers & Surveyors',4),(19,'Blasting & Demolition',4),(20,'Building Materials & Supplies',4),(21,'Construction Companies',4),(22,'Electricians',4),(23,'Engineer, Survey',4),(24,'Environmental Assessments',4),(25,'Inspectors',4),(26,'Plaster & Concrete',4),(27,'Plumbers',4),(28,'Roofers',4),(29,'Adult & Continuing Education',5),(30,'Early Childhood Education',5),(31,'Educational Resources',5),(32,'Other Educational',5),(33,'Artists, Writers',6),(34,'Event Planners & Supplies',6),(35,'Golf Courses',6),(36,'Movies',6),(37,'Productions',6),(38,'Desserts, Catering & Supplies',7),(39,'Fast Food & Carry Out',7),(40,'Grocery, Beverage & Tobacco',7),(41,'Restaurants',7),(42,'Acupuncture',8),(43,'Assisted Living & Home Health Care',8),(44,'Audiologist',8),(45,'Chiropractic',8),(46,'Clinics & Medical Centers',8),(47,'Dental',8),(48,'Diet I& Nutrition',8),(49,'Laboratory, Imaging & Diagnostic',8),(50,'Massage Therapy',8),(51,'Mental Health',8),(52,'Nurse',8),(53,'Optical',8),(54,'Pharmacy, Drug & Vitamin Stores',8),(55,'Physical Therapy',8),(56,'Physicians & Assistants',8),(57,'Podiatry',8),(58,'Social Worker',8),(59,'Animal Hospital',8),(60,'Veterinary & Animal Surgeons',8),(61,'Antiques & Collectibles',9),(62,'Cleaning',9),(63,'Crafts, Hobbies & Sports',9),(64,'Flower Shops',9),(65,'Home Furnishings',9),(66,'Home Goods',9),(67,'Home Improvements & Repairs',9),(68,'Landscape & Lawn Service',9),(69,'Pest Control',9),(70,'Pool Supplies & Service',9),(71,'Security System & Services',9),(72,'Accountants',10),(73,'Attorneys',10),(74,'Financial Institutions',10),(75,'Financial Services',10),(76,'Insurance',10),(77,'Other Legal',10),(78,'Distribution, Import/Export',11),(79,'Manufacturing',11),(80,'Wholesale',11),(81,'Civic Groups',12),(82,'Funeral Service Providers & Cemetaries',12),(83,'Miscellaneous',12),(84,'Utility Companies',12),(85,'Animal Care & Supplies',13),(86,'Barber & Beauty Salons',13),(87,'Beauty Supplies',13),(88,'Dry Cleaners & Laundromats',13),(89,'Exercise & Fitness',13),(90,'Massage & Body Works',13),(91,'Nail Salons',13),(92,'Shoe Repairs',13),(93,'Tailors',13),(94,'Agencies & Brokerage',14),(95,'Agents & Brokers',14),(96,'Apartment & Home Rental',14),(97,'Mortgage Broker & Lender',14),(98,'Property Management',14),(99,'Title Company',14),(100,'Hotel, Motel & Extended Stay',15),(101,'Moving & Storage',15),(102,'Packaging & Shipping',15),(103,'Transportation',15),(104,'Travel & Tourism',15),(105,'Cards & Gifts',16),(106,'Clothing & Accessories',16),(107,'Department Stores, Sporting Goods',16),(108,'General',16),(109,'Jewelry',16),(110,'Shoes',16);
/*!40000 ALTER TABLE `companies_businesssubcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_company`
--

DROP TABLE IF EXISTS `companies_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` varchar(10) DEFAULT NULL,
  `sub_category_id` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `trade_currency` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_company`
--

LOCK TABLES `companies_company` WRITE;
/*!40000 ALTER TABLE `companies_company` DISABLE KEYS */;
INSERT INTO `companies_company` VALUES (12,1,'Venucia','2022-10-18 13:30:58','2022-10-18 13:30:58','13','87','raajankaul101991@gmail.com','+353894899363','Tara Street, Dublin 1','Co. Dublin','Ireland','26.9201514','75.8001897','$'),(13,1,'luka chuppi','2022-10-18 14:12:20','2022-10-18 14:12:20','15','104','rkaul@topmail.com','+353894899363','qwerty','gfds','fdx','26.9201541','75.8001867','€'),(14,3,'pita pit','2022-10-19 06:32:58','2022-10-19 06:32:58','1','1','raajankaul@gmail.com','+353894899363','C-89, Sector 52','Noida','U.P.','26.920149','75.8001859','$'),(15,1,'Top Gun','2022-11-06 13:58:23','2022-11-06 13:58:23','13','93','topgun@support.com','+353894899363','New York City','New York','United States of America','28.58714','77.3698782','€ - Euro');
/*!40000 ALTER TABLE `companies_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_entity`
--

DROP TABLE IF EXISTS `companies_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_entity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `parameter` text,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `companies_entity_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies_company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_entity`
--

LOCK TABLES `companies_entity` WRITE;
/*!40000 ALTER TABLE `companies_entity` DISABLE KEYS */;
INSERT INTO `companies_entity` VALUES (1,'Employees','2022-10-19 02:46:45','2022-10-19 02:46:45',NULL,'{\"parameter\": [\"Name\", \"Email\", \"Phone\", \"Address\", \"Age\", \"Gender\"]}'),(2,'Taxi','2022-10-19 04:42:38','2022-10-19 04:42:38',13,'{\"parameter\": [\"Name\", \"Model\", \"Price\", \"Seats\", \"Condition\"]}'),(3,'Lip Stick','2022-10-19 14:37:36','2022-10-19 14:37:36',12,'{\"parameter\": [\"colour\", \"Brand\", \"Price\"]}'),(4,'poop','2022-11-03 12:41:36','2022-11-03 12:41:36',13,'{\"parameter\": [\"hi\", \"bye\"]}'),(5,'Nail Polish','2022-11-05 16:13:50','2022-11-05 16:13:50',12,'{\"parameter\": [\"Colour\", \"Base\", \"Code\", \"Price\"]}'),(6,'Automatic Guns','2022-11-06 14:25:36','2022-11-06 14:25:36',15,'{\"parameter\": [\"Name\", \"Mass\", \"Length\", \"Rate of fire\", \"firing range\", \"Feed system\", \"Cartridge\", \"Action\"]}'),(7,'Pistols','2022-11-06 14:45:38','2022-11-06 14:45:38',15,'{\"parameter\": [\"Name\", \"Manufacturer\", \"Case type\", \"Bullet diameter\", \"Velocity\", \"Energy\"]}'),(9,'Shotgun','2022-11-06 15:16:13','2022-11-06 15:16:13',15,'{\"parameter\": [\"Name\", \"bullet size\"]}'),(10,'bazooka','2022-11-17 16:40:08','2022-11-17 16:40:08',15,'{\"parameter\": [\"length\", \"diameter\"]}'),(11,'Hand gun','2022-11-28 16:17:02','2022-11-28 16:17:02',15,'{\"parameter\": [\"Name\", \"Size\", \"Country of origin\"]}'),(12,'make up','2023-02-01 16:14:44','2023-02-01 16:14:44',12,'{\"parameter\": [\"colour\", \"brand\"]}'),(13,'boots','2024-12-29 13:53:13','2024-12-29 13:53:13',12,'{\"parameter\": [\"size\", \"colour\"]}');
/*!40000 ALTER TABLE `companies_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_item`
--

DROP TABLE IF EXISTS `companies_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_item`
--

LOCK TABLES `companies_item` WRITE;
/*!40000 ALTER TABLE `companies_item` DISABLE KEYS */;
INSERT INTO `companies_item` VALUES (1,'2022-06-13 16:29:47','2022-06-13 16:29:47',1,1,'{\"name\": \"Rajan\", \"Age\": \"30\", \"Phone\": \"9810202806\", \"Email\": \"rkaul91@gmail.com\"}'),(2,'2022-06-14 07:31:00','2022-06-14 07:31:00',1,1,'{\"name\": \"Amit\", \"Age\": \"58\", \"Phone\": \"9865456\", \"Email\": \"maduban@gmail.com\"}'),(3,'2022-06-14 07:33:17','2022-06-14 07:33:17',1,1,'{\"name\": \"Veena\", \"Age\": \"53\"}'),(4,'2022-06-14 09:24:21','2022-06-14 09:24:21',1,1,'{\"name\": \"Rajan\", \"Age\": \"30\", \"Phone\": \"8926223806\", \"Email\": \"raajankaul101991@gmail.com\"}'),(5,'2022-06-14 09:34:02','2022-06-14 09:34:02',1,2,'{\"name\": \"Chicken Pizza\", \"toppings\": \"chicken, cheese and green peppers\", \"description\": \"best spicy chicken pizza\", \"price\": \"$20\"}'),(6,'2022-06-14 12:57:18','2022-06-14 12:57:18',2,1,'{\"name\": \"Jenny\", \"age\": \"33\", \"phone\": \"660877546587\", \"email\": \"vannida@gmail.com\", \"address\": \"condo town, Bangkok\"}'),(7,'2022-06-14 12:57:55','2022-06-14 12:57:55',2,3,'{\"model\": \"2017\", \"type\": \"Sedan\", \"brand\": \"Hyundai\", \"price\": \"$10,000\"}'),(8,'2022-06-20 16:27:57','2022-06-20 16:27:57',1,4,'{\"name\": \"Coca cola\", \"quantity\": \"330\", \"price\": \"2\"}'),(9,'2022-10-19 02:48:15','2022-10-19 02:48:15',13,1,'{\"Name\": \"Rajan KAul\", \"Email\": \"raajankaul101991@gmail.com\", \"Phone\": \"+91 8826223806\", \"Address\": \"C-89, Sector - 52, Noida, U.P.\", \"Age\": \"31\", \"Gender\": \"Male\"}'),(10,'2022-10-19 14:38:29','2022-10-19 14:38:29',12,3,'{\"colour\": \"pink\", \"Brand\": \"Lakme\", \"Price\": \"$ 2\"}'),(11,'2022-10-27 14:04:31','2022-10-27 14:04:31',12,1,'{\"Name\": \"Raajan KAul\", \"Email\": \"raajankaul@gmail.com\", \"Phone\": \"+353894899363\", \"Address\": \"Dublin 2, Co. Dublin, Ireland\", \"Age\": \"31\", \"Gender\": \"Male\"}'),(12,'2022-10-27 14:05:01','2022-10-27 14:05:01',12,3,'{\"colour\": \"Red\", \"Brand\": \"Polar\", \"Price\": \"$16\"}'),(13,'2022-11-05 16:15:10','2022-11-05 16:15:10',12,5,'{\"Colour\": \"Skin Colour\", \"Base\": \"Oil\", \"Code\": \"C32P\", \"Price\": \"5\"}'),(14,'2022-11-05 16:27:06','2022-11-05 16:27:06',12,3,'{\"colour\": \"green\", \"Brand\": \"lakme\", \"Price\": \"7\"}'),(15,'2022-11-05 16:29:05','2022-11-05 16:29:05',12,3,'{\"colour\": \"yellow\", \"Brand\": \"lakme\", \"Price\": \"89\"}'),(16,'2022-11-05 17:34:32','2022-11-05 17:34:32',12,5,'{\"Colour\": \"Pink\", \"Base\": \"Gel\", \"Code\": \"CT09\", \"Price\": \"$ 5\"}'),(17,'2022-11-05 17:35:34','2022-11-05 17:35:34',12,5,'{\"Colour\": \"Silver Sparkle\", \"Base\": \"Oil\", \"Code\": \"SL098\", \"Price\": \"$ 16\"}'),(18,'2022-11-05 17:53:53','2022-11-05 17:53:53',12,5,'{\"Colour\": \"Red\", \"Base\": \"Oil\", \"Code\": \"RD183\", \"Price\": \"$ 7\"}'),(21,'2022-11-06 14:40:23','2022-11-06 14:40:23',15,6,'{\"Name\": \"AK-47\", \"Mass\": \"3.47 kg\", \"Length\": \"880 mm\", \"Rate of fire\": \"600 rds/mi\", \"firing range\": \"350 m (380 yd)\", \"Feed system\": \"20-round, 30-round detachable box magazine\", \"Cartridge\": \"7.62\\u00d739mm\", \"Action\": \"Gas-operated, closed rotating bolt\"}'),(22,'2022-11-06 14:41:49','2022-11-06 14:41:49',15,6,'{\"Name\": \"Atchisson AA-12\", \"Mass\": \"5.2 kg\", \"Length\": \"991 mm\", \"Rate of fire\": \"\\t300 rounds/min\", \"firing range\": \"100 m - 200 m\", \"Feed system\": \"8 rounds in box magazine\", \"Cartridge\": \"\\t12 Gauge\", \"Action\": \"\\tAPI blowback\"}'),(23,'2022-11-06 14:43:38','2022-11-06 14:43:38',15,6,'{\"Name\": \"AN-94\", \"Mass\": \"3.85 kg\", \"Length\": \"943 mm\", \"Rate of fire\": \"1800 (2 round burst) \", \"firing range\": \"700 m\", \"Feed system\": \"30, 45 round AK-74 compatible box\", \"Cartridge\": \"5.45\\u00d739mm\", \"Action\": \"Gas-operated\"}'),(24,'2022-11-06 14:46:58','2022-11-06 14:46:58',15,7,'{\"Name\": \"2mm Kolibri\", \"Manufacturer\": \"Franz Pfannl (Kolibri)\", \"Case type\": \"Rimless, straight\", \"Bullet diameter\": \"2.7mm\", \"Velocity\": \"200 m/s \", \"Energy\": \"4 J (3.0 ft\\u22c5lbf)\"}'),(25,'2022-11-06 14:53:36','2022-11-06 14:53:36',15,7,'{\"Name\": \"Glock 17\", \"Manufacturer\": \"Glock Ges.m.b.H.\", \"Case type\": \"Rimless\", \"Bullet diameter\": \"9\\u00d719mm Parabellum\", \"Velocity\": \"\\t375 m/s\", \"Energy\": \"9.8 J (7.0 ft\\u22c5lbf)\"}'),(26,'2022-11-17 16:40:36','2022-11-17 16:40:36',15,10,'{\"length\": \"7 m\", \"diameter\": \"0.5m\"}'),(27,'2022-11-28 16:18:16','2022-11-28 16:18:16',15,11,'{\"Name\": \"xyz\", \"Size\": \"10 in\", \"Country of origin\": \"Russia\"}'),(28,'2024-12-29 13:53:27','2024-12-29 13:53:27',12,13,'{\"size\": \"6\", \"colour\": \"brown\"}'),(29,'2024-12-29 13:53:42','2024-12-29 13:53:42',12,13,'{\"size\": \"7\", \"colour\": \"black\"}'),(30,'2025-01-02 11:34:25','2025-01-02 11:34:25',12,3,'{\"colour\": \"purple\", \"Brand\": \"nyka\", \"Price\": \"$ 39\"}');
/*!40000 ALTER TABLE `companies_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'authtoken','token'),(8,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-03-11 23:36:11.409330'),(2,'auth','0001_initial','2022-03-11 23:36:12.110017'),(3,'admin','0001_initial','2022-03-11 23:36:12.298614'),(4,'admin','0002_logentry_remove_auto_add','2022-03-11 23:36:12.315696'),(5,'contenttypes','0002_remove_content_type_name','2022-03-11 23:36:12.433243'),(6,'auth','0002_alter_permission_name_max_length','2022-03-11 23:36:12.513347'),(7,'auth','0003_alter_user_email_max_length','2022-03-11 23:36:12.546124'),(8,'auth','0004_alter_user_username_opts','2022-03-11 23:36:12.561212'),(9,'auth','0005_alter_user_last_login_null','2022-03-11 23:36:12.631039'),(10,'auth','0006_require_contenttypes_0002','2022-03-11 23:36:12.636513'),(11,'auth','0007_alter_validators_add_error_messages','2022-03-11 23:36:12.648704'),(12,'auth','0008_alter_user_username_max_length','2022-03-11 23:36:12.858850'),(13,'auth','0009_alter_user_last_name_max_length','2022-03-11 23:36:12.963898'),(14,'sessions','0001_initial','2022-03-11 23:36:13.021831'),(15,'admin','0003_logentry_add_action_flag_choices','2022-03-13 01:06:29.536327'),(16,'auth','0010_alter_group_name_max_length','2022-03-13 01:06:29.744738'),(17,'auth','0011_update_proxy_permissions','2022-03-13 01:06:29.763923'),(18,'auth','0012_alter_user_first_name_max_length','2022-03-13 01:06:29.956108'),(19,'authtoken','0001_initial','2022-03-24 09:25:32.664893'),(20,'authtoken','0002_auto_20160226_1747','2022-03-24 09:25:32.735762'),(21,'authtoken','0003_tokenproxy','2022-03-24 09:25:32.751539');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-19 19:19:12
