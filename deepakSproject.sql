CREATE DATABASE  IF NOT EXISTS `office` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `office`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: office
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `contactinfo`
--

DROP TABLE IF EXISTS `contactinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactinfo` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `contactinfo_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactinfo`
--

LOCK TABLES `contactinfo` WRITE;
/*!40000 ALTER TABLE `contactinfo` DISABLE KEYS */;
INSERT INTO `contactinfo` VALUES (1,1,'9876543210','amit.sharma@example.com','123 Main St, Delhi'),(2,2,'8765432109','neha.verma@example.com','456 Park Ave, Mumbai'),(3,3,'7654321098','rajesh.kumar@example.com','789 Broadway, Bangalore'),(4,4,'6543210987','priya.singh@example.com','1011 Elm St, Chennai'),(5,5,'5432109876','vikram.patel@example.com','1213 Oak St, Hyderabad'),(6,6,'4321098765','anjali.nair@example.com','1415 Pine St, Pune'),(7,7,'3210987654','rohit.gupta@example.com','1617 Maple St, Kolkata'),(8,8,'2109876543','suresh.reddy@example.com','1819 Cedar St, Jaipur'),(9,9,'1098765432','kavita.joshi@example.com','2021 Birch St, Ahmedabad'),(10,10,'0987654321','manoj.tiwari@example.com','2223 Spruce St, Surat'),(11,11,'9876543211','sunita.rao@example.com','2425 Willow St, Lucknow'),(12,12,'8765432108','arjun.mehta@example.com','2627 Ash St, Kanpur'),(13,13,'7654321097','pooja.desai@example.com','2829 Fir St, Nagpur'),(14,14,'6543210986','nikhil.bansal@example.com','3031 Palm St, Indore'),(15,15,'5432109875','ritu.kapoor@example.com','3233 Pine St, Bhopal'),(16,16,'4321098764','deepak.chawla@example.com','3435 Maple St, Patna'),(17,17,'3210987653','meena.iyer@example.com','3637 Cedar St, Vadodara'),(18,18,'2109876542','karan.malhotra@example.com','3839 Birch St, Ludhiana'),(19,19,'1098765431','sneha.agarwal@example.com','4041 Spruce St, Agra'),(20,20,'0987654320','vivek.saxena@example.com','4243 Willow St, Nashik'),(21,21,'9876543212','rashmi.jain@example.com','4445 Ash St, Faridabad'),(22,22,'8765432107','gaurav.bhatt@example.com','4647 Fir St, Meerut'),(23,23,'7654321096','shweta.pandey@example.com','4849 Palm St, Rajkot'),(24,24,'6543210985','anand.kulkarni@example.com','5051 Pine St, Varanasi'),(25,25,'5432109874','divya.menon@example.com','5253 Maple St, Srinagar'),(26,26,'4321098763','harish.nair@example.com','5455 Cedar St, Aurangabad'),(27,27,'3210987652','lakshmi.narayan@example.com','5657 Birch St, Dhanbad'),(28,28,'2109876541','rohan.das@example.com','5859 Spruce St, Amritsar'),(29,29,'1098765430','sanjay.sen@example.com','6061 Willow St, Allahabad'),(30,30,'0987654319','tina.dsouza@example.com','6263 Ash St, Ranchi');
/*!40000 ALTER TABLE `contactinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Human Resources'),(2,'Finance'),(3,'Engineering'),(4,'Marketing'),(5,'Sales'),(6,'Customer Support'),(7,'IT'),(8,'Research and Development'),(9,'Operations'),(10,'Legal'),(11,'Procurement'),(12,'Quality Assurance'),(13,'Logistics'),(14,'Public Relations'),(15,'Administration'),(16,'Training'),(17,'Security'),(18,'Maintenance'),(19,'Design'),(20,'Production'),(21,'Business Development'),(22,'Consulting'),(23,'Audit'),(24,'Compliance'),(25,'Risk Management'),(26,'Strategy'),(27,'Innovation'),(28,'Sustainability'),(29,'Investor Relations'),(30,'Corporate Affairs'),(31,'New Department');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeprojects`
--

DROP TABLE IF EXISTS `employeeprojects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeprojects` (
  `employee_id` int NOT NULL,
  `project_id` int NOT NULL,
  PRIMARY KEY (`employee_id`,`project_id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `employeeprojects_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  CONSTRAINT `employeeprojects_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeprojects`
--

LOCK TABLES `employeeprojects` WRITE;
/*!40000 ALTER TABLE `employeeprojects` DISABLE KEYS */;
INSERT INTO `employeeprojects` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30);
/*!40000 ALTER TABLE `employeeprojects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `department_id` int DEFAULT NULL,
  `job_title_id` int DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `department_id` (`department_id`),
  KEY `job_title_id` (`job_title_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`job_title_id`) REFERENCES `jobtitles` (`job_title_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Amit Sharma',1,2,'2020-01-15'),(2,'Neha Verma',2,3,'2019-03-22'),(3,'Rajesh Kumar',3,1,'2021-06-10'),(4,'Priya Singh',4,4,'2018-11-05'),(5,'Vikram Patel',5,5,'2020-09-12'),(6,'Anjali Nair',6,6,'2017-07-19'),(7,'Rohit Gupta',7,7,'2021-02-28'),(8,'Suresh Reddy',8,8,'2019-04-15'),(9,'Kavita Joshi',9,9,'2020-05-20'),(10,'Manoj Tiwari',10,10,'2018-06-25'),(11,'Sunita Rao',11,11,'2019-07-30'),(12,'Arjun Mehta',12,12,'2020-08-05'),(13,'Pooja Desai',13,13,'2018-09-10'),(14,'Nikhil Bansal',14,14,'2019-10-15'),(15,'Ritu Kapoor',15,15,'2020-11-20'),(16,'Deepak Chawla',16,16,'2018-12-25'),(17,'Meena Iyer',17,17,'2019-01-30'),(18,'Karan Malhotra',18,18,'2020-02-05'),(19,'Sneha Agarwal',19,19,'2018-03-10'),(20,'Vivek Saxena',20,20,'2019-04-15'),(21,'Rashmi Jain',21,21,'2020-05-20'),(22,'Gaurav Bhatt',22,22,'2018-06-25'),(23,'Shweta Pandey',23,23,'2019-07-30'),(24,'Anand Kulkarni',24,24,'2020-08-05'),(25,'Divya Menon',25,25,'2018-09-10'),(26,'Harish Nair',26,26,'2019-10-15'),(27,'Lakshmi Narayan',27,27,'2020-11-20'),(28,'Rohan Das',28,28,'2018-12-25'),(29,'Sanjay Sen',29,29,'2019-01-30'),(30,'Tina D\'Souza',30,30,'2020-02-05'),(31,'John Doe',1,1,'2023-01-01');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobtitles`
--

DROP TABLE IF EXISTS `jobtitles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobtitles` (
  `job_title_id` int NOT NULL AUTO_INCREMENT,
  `job_title_name` varchar(100) NOT NULL,
  PRIMARY KEY (`job_title_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobtitles`
--

LOCK TABLES `jobtitles` WRITE;
/*!40000 ALTER TABLE `jobtitles` DISABLE KEYS */;
INSERT INTO `jobtitles` VALUES (1,'Software Engineer'),(2,'HR Manager'),(3,'Financial Analyst'),(4,'Marketing Specialist'),(5,'Sales Executive'),(6,'Customer Support Representative'),(7,'IT Technician'),(8,'Research Scientist'),(9,'Operations Manager'),(10,'Legal Advisor'),(11,'Procurement Officer'),(12,'Quality Analyst'),(13,'Logistics Coordinator'),(14,'PR Specialist'),(15,'Administrative Assistant'),(16,'Training Coordinator'),(17,'Security Officer'),(18,'Maintenance Engineer'),(19,'Design Engineer'),(20,'Production Supervisor'),(21,'Business Development Manager'),(22,'Consultant'),(23,'Auditor'),(24,'Compliance Officer'),(25,'Risk Analyst'),(26,'Strategy Analyst'),(27,'Innovation Manager'),(28,'Sustainability Officer'),(29,'Investor Relations Manager'),(30,'Corporate Affairs Manager'),(31,'New Job Title');
/*!40000 ALTER TABLE `jobtitles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Digital Transformation Initiative','2021-01-01','2021-06-30'),(2,'Customer Relationship Management System','2020-07-01','2021-01-31'),(3,'E-commerce Platform Development','2021-02-01','2021-08-31'),(4,'Mobile Banking Application','2020-09-01','2021-03-31'),(5,'Supply Chain Optimization','2021-04-01','2021-10-31'),(6,'Cloud Migration Project','2020-11-01','2021-05-31'),(7,'Cybersecurity Enhancement','2021-06-01','2021-12-31'),(8,'Data Analytics Implementation','2021-07-01','2022-01-31'),(9,'Human Resources Management System','2021-08-01','2022-02-28'),(10,'Enterprise Resource Planning (ERP) Upgrade','2021-09-01','2022-03-31'),(11,'Marketing Automation Platform','2021-10-01','2022-04-30'),(12,'Customer Feedback System','2021-11-01','2022-05-31'),(13,'IoT Integration for Smart Devices','2021-12-01','2022-06-30'),(14,'Blockchain for Supply Chain','2022-01-01','2022-07-31'),(15,'Artificial Intelligence Chatbot','2022-02-01','2022-08-31'),(16,'Virtual Reality Training Program','2022-03-01','2022-09-30'),(17,'Renewable Energy Initiative','2022-04-01','2022-10-31'),(18,'Healthcare Management System','2022-05-01','2022-11-30'),(19,'Smart City Infrastructure','2022-06-01','2022-12-31'),(20,'Financial Risk Management System','2022-07-01','2023-01-31'),(21,'Online Learning Platform','2022-08-01','2023-02-28'),(22,'Automated Quality Assurance','2022-09-01','2023-03-31'),(23,'Customer Loyalty Program','2022-10-01','2023-04-30'),(24,'Inventory Management System','2022-11-01','2023-05-31'),(25,'Social Media Engagement Strategy','2022-12-01','2023-06-30'),(26,'Telemedicine Platform','2023-01-01','2023-07-31'),(27,'Green Building Certification','2023-02-01','2023-08-31'),(28,'Employee Wellness Program','2023-03-01','2023-09-30'),(29,'Digital Payment Gateway','2023-04-01','2023-10-31'),(30,'Smart Home Automation','2023-05-01','2023-11-30');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaries` (
  `salary_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`salary_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
INSERT INTO `salaries` VALUES (1,1,55000.00),(2,2,60000.00),(3,3,70000.00),(4,4,55000.00),(5,5,65000.00),(6,6,48000.00),(7,7,52000.00),(8,8,75000.00),(9,9,62000.00),(10,10,58000.00),(11,11,54000.00),(12,12,63000.00),(13,13,47000.00),(14,14,51000.00),(15,15,76000.00),(16,16,61000.00),(17,17,57000.00),(18,18,53000.00),(19,19,64000.00),(20,20,46000.00),(21,21,50000.00),(22,22,77000.00),(23,23,62000.00),(24,24,58000.00),(25,25,54000.00),(26,26,63000.00),(27,27,47000.00),(28,28,51000.00),(29,29,76000.00),(30,30,61000.00);
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'office'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-27  9:39:43
