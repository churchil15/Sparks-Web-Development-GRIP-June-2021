-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: churchildb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uname` char(25) DEFAULT NULL,
  `pwd` char(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'churchil','churchil123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiary3`
--

DROP TABLE IF EXISTS `beneficiary3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiary3` (
  `benef_id` int NOT NULL AUTO_INCREMENT,
  `benef_cust_id` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int DEFAULT NULL,
  PRIMARY KEY (`benef_id`),
  UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `account_no` (`account_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary3`
--

LOCK TABLES `beneficiary3` WRITE;
/*!40000 ALTER TABLE `beneficiary3` DISABLE KEYS */;
INSERT INTO `beneficiary3` VALUES (1,4,'vidit.nigam@gmail.com','8918332797 ',1233556739);
/*!40000 ALTER TABLE `beneficiary3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiary5`
--

DROP TABLE IF EXISTS `beneficiary5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiary5` (
  `benef_id` int NOT NULL AUTO_INCREMENT,
  `benef_cust_id` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int DEFAULT NULL,
  PRIMARY KEY (`benef_id`),
  UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `account_no` (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary5`
--

LOCK TABLES `beneficiary5` WRITE;
/*!40000 ALTER TABLE `beneficiary5` DISABLE KEYS */;
/*!40000 ALTER TABLE `beneficiary5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiary6`
--

DROP TABLE IF EXISTS `beneficiary6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiary6` (
  `benef_id` int NOT NULL AUTO_INCREMENT,
  `benef_cust_id` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int DEFAULT NULL,
  PRIMARY KEY (`benef_id`),
  UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `account_no` (`account_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary6`
--

LOCK TABLES `beneficiary6` WRITE;
/*!40000 ALTER TABLE `beneficiary6` DISABLE KEYS */;
INSERT INTO `beneficiary6` VALUES (1,3,'kamalN@gmail.com','123456789',1122338457);
/*!40000 ALTER TABLE `beneficiary6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiary7`
--

DROP TABLE IF EXISTS `beneficiary7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiary7` (
  `benef_id` int NOT NULL AUTO_INCREMENT,
  `benef_cust_id` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int DEFAULT NULL,
  PRIMARY KEY (`benef_id`),
  UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `account_no` (`account_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiary7`
--

LOCK TABLES `beneficiary7` WRITE;
/*!40000 ALTER TABLE `beneficiary7` DISABLE KEYS */;
/*!40000 ALTER TABLE `beneficiary7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `aadhar_no` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `account_no` int DEFAULT NULL,
  `pin` int DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `aadhar_no` (`aadhar_no`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_no` (`phone_no`),
  UNIQUE KEY `account_no` (`account_no`),
  UNIQUE KEY `uname` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (3,'KamalNayan','Sharma','male','2000-02-03',125656765,'kamalN@gmail.com','123456789','Eiffel Tower, Paris, France','paris',1122338457,1357,'kamal','kamal123'),(5,'Abcd','Xyz','male','2001-02-15',126893789,'abcd.xyz@gmail.com','4567891237','Amity University, Gwalior, Madhya Pradesh','delhi',1322556688,8978,'abcd','abcd123'),(6,'Anand','Singh','male','1999-05-12',127793789,'anand@gmail.com','9567891237','skjdncsdkncsdlncksld','delhi',1111786688,3333,'anand','anand123'),(7,'Kshitij','Agrawal','male','2001-11-28',123456789,'kshitij.agrawal0209@gmail.com','9039777360','22/10, Tansen Nagar, Near DD Nagar, Gwalior.','delhi',1122334455,1234,'kshitij','kshitij123');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passbook1`
--

DROP TABLE IF EXISTS `passbook1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passbook1` (
  `trans_id` int NOT NULL AUTO_INCREMENT,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int DEFAULT NULL,
  `credit` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passbook1`
--

LOCK TABLES `passbook1` WRITE;
/*!40000 ALTER TABLE `passbook1` DISABLE KEYS */;
INSERT INTO `passbook1` VALUES (1,'2017-09-26 18:23:03','Opening Balance',0,50000,50000),(2,'2017-09-26 18:42:41','Cash Deposit',0,123456,173456),(3,'2017-09-26 18:42:52','Cash to Self',5698,0,167758),(4,'2017-09-26 18:43:05','Cash to Self',9658,0,158100),(5,'2017-09-26 18:43:23','Cash to Self',1569,0,156531),(6,'2017-09-26 18:43:32','Cash to Self',12369,0,144162),(7,'2017-09-26 18:43:53','Cash to Self',100000,0,44162),(8,'2017-09-26 18:44:14','Cash Deposit',0,200000,244162),(9,'2017-09-29 19:27:10','Cash to Self',10000,0,234162),(10,'2021-10-20 15:34:18','Cash to Self',14930,0,219232),(11,'2021-10-20 21:18:56','Cash to Self',50000,0,169232),(12,'2021-10-20 21:19:44','Cash to Self',50000,0,119232),(13,'2021-10-20 21:19:55','Cash to Self',50000,0,69232),(14,'2021-10-20 22:24:31','Sent to: Vidit Nigam, AC/No: 1233556739',50000,0,19232),(15,'2021-10-27 22:31:34','Received from: Pradumn Dubey, AC/No: 981254321',0,20000,39232),(16,'2022-02-23 02:09:16','Received from: Anand Singh, AC/No: 1111786688',0,1000,40232);
/*!40000 ALTER TABLE `passbook1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passbook2`
--

DROP TABLE IF EXISTS `passbook2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passbook2` (
  `trans_id` int NOT NULL AUTO_INCREMENT,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int DEFAULT NULL,
  `credit` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passbook2`
--

LOCK TABLES `passbook2` WRITE;
/*!40000 ALTER TABLE `passbook2` DISABLE KEYS */;
INSERT INTO `passbook2` VALUES (1,'2021-12-07 04:00:02','Opening Balance',0,500000,500000);
/*!40000 ALTER TABLE `passbook2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passbook3`
--

DROP TABLE IF EXISTS `passbook3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passbook3` (
  `trans_id` int NOT NULL AUTO_INCREMENT,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int DEFAULT NULL,
  `credit` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passbook3`
--

LOCK TABLES `passbook3` WRITE;
/*!40000 ALTER TABLE `passbook3` DISABLE KEYS */;
INSERT INTO `passbook3` VALUES (1,'2021-12-09 21:05:16','Opening Balance',0,1200000,1200000),(2,'2021-12-09 21:06:22','Cash Deposit',0,20000,1220000),(3,'2022-02-23 02:09:16','Sent to: KamalNayan Sharma, AC/No: 1122338457',1000,0,1219000);
/*!40000 ALTER TABLE `passbook3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passbook7`
--

DROP TABLE IF EXISTS `passbook7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passbook7` (
  `trans_id` int NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int DEFAULT NULL,
  `credit` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  PRIMARY KEY (`trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passbook7`
--

LOCK TABLES `passbook7` WRITE;
/*!40000 ALTER TABLE `passbook7` DISABLE KEYS */;
/*!40000 ALTER TABLE `passbook7` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-23 16:14:37
