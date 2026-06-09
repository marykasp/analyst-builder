CREATE DATABASE  IF NOT EXISTS `bakery` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bakery`;
-- MySQL dump 10.13  Distrib 8.0.46, for macos15 (arm64)
--
-- Host: localhost    Database: bakery
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `order_date` date NOT NULL,
  `order_total` decimal(4,2) NOT NULL,
  `tip` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_customers_orders__idx` (`customer_id`),
  KEY `fk_orders_shippers_idx` (`product_id`),
  CONSTRAINT `fk_customer_orders` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_orders`
--

LOCK TABLES `customer_orders` WRITE;
/*!40000 ALTER TABLE `customer_orders` DISABLE KEYS */;
INSERT INTO `customer_orders` VALUES (1,100101,1001,'2020-01-30',26.24,'2'),(2,100110,1002,'2021-08-25',6.19,'1'),(3,100106,1005,'2022-12-12',3.87,'0'),(4,100103,1007,'2018-03-22',4.00,'5'),(5,100102,1003,'2017-08-25',9.97,'10'),(6,100108,1009,'2018-11-18',87.01,'1'),(7,100101,1001,'2022-09-20',2.45,'5'),(8,100104,1008,'2018-06-08',16.42,'0'),(9,100105,1007,'2019-07-05',8.11,'1'),(10,100106,1006,'2018-04-22',53.12,'3'),(11,100103,1001,'2019-11-18',27.01,'1'),(12,100101,1003,'2018-09-20',10.45,'5'),(13,100106,1008,'2020-06-08',90.42,'0'),(14,100102,1009,'2022-07-05',11.11,'1'),(15,100104,1006,'2020-04-22',24.12,'3');
/*!40000 ALTER TABLE `customer_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_orders_review`
--

DROP TABLE IF EXISTS `customer_orders_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_orders_review` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `order_date` date NOT NULL,
  `Rating 1-10` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_orders_review`
--

LOCK TABLES `customer_orders_review` WRITE;
/*!40000 ALTER TABLE `customer_orders_review` DISABLE KEYS */;
INSERT INTO `customer_orders_review` VALUES (1,100101,1001,'2020-01-30',8),(2,100110,1002,'2021-08-25',5),(3,100111,1005,'2022-12-12',10),(4,100103,1007,'2081-03-22',7),(5,100102,1003,'2017-08-25',6),(7,100101,1001,'2022-09-20',8),(8,100104,1008,'2018-06-08',9),(9,100105,1007,'2019-07-05',6),(10,100106,1006,'2018-04-22',8),(11,100103,1001,'2019-11-18',6),(12,1001001,1003,'2018-09-20',9),(13,100106,1008,'2020-06-08',10),(14,100102,1009,'2023-07-05',8),(15,100104,1006,'2020-04-22',7);
/*!40000 ALTER TABLE `customer_orders_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` char(2) NOT NULL,
  `total_money_spent` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (100101,'Kevin','Malone','1989-04-28','635-573-9754','1229 Main Street','Scranton','PA',11000),(100102,'Charles','Xavier','1965-04-11','729-287-9456','123 North Hill Drive','Dallas','TX',947),(100103,'Finley','Danish','1999-02-07','126-583-7856','432 Hilly Road','Austin','TX',534),(100104,'Obi','Kenobi','1921-04-22','975-357-7663','101 Alpine Avenue','New York','NY',3567),(100105,'Don','Draper','1948-11-07',NULL,'12 South Main Lane','San Francisco','CA',195),(100106,'Frodo','Baggins','2001-09-04',NULL,'1 Pastery Lane','Chicago','IL',56),(100107,'Michael','Scott','1978-08-20','235-357-3464','987 Croissant Street','Scranton','PA',2536),(100108,'Maggie','Muffin','2001-07-06','906-485-1542','701 North Street','Sarasota','FL',1009),(100109,'Kelly','Kapoor','1987-05-30','674-357-9151','62810 Julip Lane','Scranton','PA',540),(100110,'Anakin','Skywalker','1934-10-15','346-458-3370','122 South Street','Charleston','SC',36);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Christine','Freberg','Bakery','Lead Baker',70000),(2,'Dwight','Schrute','Bakery','Assistant to the Lead Baker',45000),(3,'Tom','Haveford','Bakery','Chocolatier',45000),(4,'Ann','Perkins','Bakery','Bakery Clerk',30000),(5,'Carl','Lorthner','Bakery','Dough Maker',40000),(6,'Ron','Swanson','Marketing','Director of Marketing',75000),(7,'Troy','Barnes','Marketing','Lead Marketer',60000),(8,'Jeff','Winger','Marketing','Marketing Analyst',60000),(9,'Annie','Edison','Marketing','Social Media Marketer',65000);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered_items`
--

DROP TABLE IF EXISTS `ordered_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordered_items` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `quantity` int NOT NULL,
  `unit_price` decimal(4,2) NOT NULL,
  `shipped_date` date DEFAULT NULL,
  `shipper_id` smallint DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `fk_orders_items_order_idx` (`order_id`),
  KEY `fk_order_items_products_idx` (`product_id`),
  KEY `fk_orders_order_statuses_idx` (`status`),
  KEY `fk_orders_shippers` (`shipper_id`),
  CONSTRAINT `fk_order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `ordered_items` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_order_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_order_statuses` FOREIGN KEY (`status`) REFERENCES `supplier_delivery_status` (`order_status_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_shippers` FOREIGN KEY (`shipper_id`) REFERENCES `suppliers` (`supplier_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered_items`
--

LOCK TABLES `ordered_items` WRITE;
/*!40000 ALTER TABLE `ordered_items` DISABLE KEYS */;
INSERT INTO `ordered_items` VALUES (1,1004,1,53,0.35,'2021-08-15',1),(2,1001,2,73,0.29,'2022-03-21',2),(2,1004,3,10,0.35,'2022-02-07',5),(2,1006,2,63,5.28,'2021-06-09',4),(3,1003,1,21,0.50,'2021-09-06',1),(4,1003,2,85,0.50,'2022-06-22',3),(4,1010,3,42,0.39,'2021-05-13',4),(5,1002,1,100,1.89,'2022-02-03',2),(6,1001,2,35,0.29,'2021-11-06',3),(6,1002,2,54,1.89,'2022-12-23',5),(6,1003,3,10,0.50,'2022-04-05',1),(6,1005,3,55,0.47,'2021-05-22',2),(7,1003,3,12,0.50,'2022-06-26',1),(8,1005,2,70,0.47,'2021-09-21',5),(8,1008,2,96,8.59,'2022-11-10',3),(9,1006,3,43,5.28,'2022-10-15',1),(10,1001,1,33,0.29,'2022-01-06',1),(10,1009,3,23,4.28,'2022-07-23',1);
/*!40000 ALTER TABLE `ordered_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `units_in_stock` int NOT NULL,
  `sale_price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1001,'Chocolate Chip Cookie',200,1.50),(1002,'Banana Nut Muffin',180,2.50),(1003,'Croissant',70,1.75),(1004,'Cheese Danish',55,1.85),(1005,'Cannoli',112,2.25),(1006,'Sweet Bread Loaf',32,15.50),(1007,'Strawberry Macaron',98,2.00),(1008,'Coffee Cake',25,13.00),(1009,'Carrot Cake',15,14.50),(1010,'Chocolate Covered Doughnut',80,1.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_delivery_status`
--

DROP TABLE IF EXISTS `supplier_delivery_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_delivery_status` (
  `order_status_id` tinyint NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`order_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_delivery_status`
--

LOCK TABLES `supplier_delivery_status` WRITE;
/*!40000 ALTER TABLE `supplier_delivery_status` DISABLE KEYS */;
INSERT INTO `supplier_delivery_status` VALUES (1,'Processed'),(2,'Shipped'),(3,'Delivered');
/*!40000 ALTER TABLE `supplier_delivery_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `supplier_id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Bakery LLC'),(2,'Goods 4 U'),(3,'Savory Loaf Delivery Co.'),(4,'Mrs. Yums'),(5,'Grain to Table LLC');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-09 17:04:58
