-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: auction_project
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `auctions`
--

CREATE database auction_project;

DROP TABLE IF EXISTS `auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auctions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `start_price` decimal(10,2) NOT NULL,
  `end_price` decimal(10,2) DEFAULT NULL,
  `step` decimal(10,2) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` enum('pending','active','closed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auctions_item_id_foreign` (`item_id`),
  KEY `auctions_category_id_foreign` (`category_id`),
  CONSTRAINT `auctions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auctions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctions`
--

LOCK TABLES `auctions` WRITE;
/*!40000 ALTER TABLE `auctions` DISABLE KEYS */;
INSERT INTO `auctions` VALUES (1,1,1,1500.00,2000.00,100.00,'2023-09-01 10:00:00','2023-09-10 18:00:00','closed','2024-10-15 05:30:34','2024-10-15 05:30:34'),(2,2,1,2500.00,3000.00,200.00,'2023-09-15 09:00:00','2023-09-20 15:00:00','closed','2024-10-15 05:30:34','2024-10-15 05:30:34'),(3,3,1,12000.00,13000.00,500.00,'2023-09-05 12:00:00','2023-09-12 20:00:00','closed','2024-10-15 05:30:34','2024-10-15 05:30:34'),(4,4,1,4500.00,5000.00,300.00,'2023-09-10 12:00:00','2023-09-17 12:00:00','closed','2024-10-15 05:30:34','2024-10-15 05:30:34'),(5,5,1,8000.00,9000.00,500.00,'2023-09-12 08:00:00','2023-09-18 18:00:00','closed','2024-10-15 05:30:34','2024-10-15 05:30:34'),(6,6,2,100000.00,NULL,1000.00,'2024-10-01 12:00:00','2024-10-15 20:00:00','closed','2024-10-15 05:30:34','2024-10-15 13:00:50'),(7,7,2,85000.00,NULL,500.00,'2024-10-03 12:00:00','2024-10-18 18:00:00','active','2024-10-15 05:30:34','2024-10-15 05:30:34'),(8,8,2,500000.00,NULL,2000.00,'2024-10-05 09:00:00','2024-10-20 18:00:00','active','2024-10-15 05:30:34','2024-10-15 05:30:34'),(9,9,2,120000.00,NULL,1000.00,'2024-10-05 10:00:00','2024-10-19 17:00:00','active','2024-10-15 05:30:34','2024-10-15 05:30:34'),(10,10,2,95000.00,NULL,1000.00,'2024-10-01 11:00:00','2024-10-16 16:00:00','active','2024-10-15 05:30:34','2024-10-15 05:30:34'),(11,11,3,5000.00,NULL,100.00,'2024-12-01 10:00:00','2024-12-10 18:00:00','pending','2024-10-15 05:30:34','2024-10-15 05:30:34'),(12,12,3,7500.00,NULL,200.00,'2024-12-05 09:00:00','2024-12-15 18:00:00','pending','2024-10-15 05:30:34','2024-10-15 05:30:34'),(13,13,3,3000.00,NULL,100.00,'2024-12-10 12:00:00','2024-12-20 17:00:00','pending','2024-10-15 05:30:34','2024-10-15 05:30:34'),(14,14,3,10000.00,NULL,300.00,'2024-12-20 08:00:00','2024-12-30 20:00:00','pending','2024-10-15 05:30:34','2024-10-15 05:30:34'),(15,15,3,8000.00,NULL,200.00,'2024-12-15 10:00:00','2024-12-25 19:00:00','pending','2024-10-15 05:30:34','2024-10-15 05:30:34'),(16,16,1,0.00,0.00,100.00,'2024-10-15 16:22:00','2024-10-15 19:00:00','closed','2024-10-15 02:20:30','2024-10-15 12:20:04'),(17,17,4,0.00,0.00,1.00,'2024-10-15 20:45:00','2024-10-15 20:50:00','active','2024-10-15 13:45:24','2024-10-15 13:45:24');
/*!40000 ALTER TABLE `auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bids` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auction_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `bid_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bids_auction_id_foreign` (`auction_id`),
  KEY `bids_user_id_foreign` (`user_id`),
  KEY `bids_item_id_foreign` (`item_id`),
  CONSTRAINT `bids_auction_id_foreign` FOREIGN KEY (`auction_id`) REFERENCES `auctions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bids_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bids_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bids`
--

LOCK TABLES `bids` WRITE;
/*!40000 ALTER TABLE `bids` DISABLE KEYS */;
INSERT INTO `bids` VALUES (8,7,1,85500.00,'2024-10-15 12:54:40','2024-10-15 12:54:40',7),(9,7,2,86000.00,'2024-10-15 13:01:51','2024-10-15 13:01:51',7),(10,7,1,86500.00,'2024-10-15 13:33:52','2024-10-15 13:33:52',7),(11,8,1,502000.00,'2024-10-15 13:34:43','2024-10-15 13:34:43',8);
/*!40000 ALTER TABLE `bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'artiques','Description for artiques','2024-10-15 05:30:34','2024-10-15 05:30:34'),(2,'artwork','Description for artwork','2024-10-15 05:30:34','2024-10-15 05:30:34'),(3,'coin','Description for coin','2024-10-15 05:30:34','2024-10-15 05:30:34'),(4,'Abc',NULL,'2024-10-15 13:41:52','2024-10-15 13:41:52');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `bid_count` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `starting_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `items_category_id_foreign` (`category_id`),
  CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,1,'Ancient Roman Vase',0,'A rare Roman vase from the 1st century AD.',1500.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/roman_vase.png'),(2,1,'18th Century Pocket Watch',0,'An intricately designed pocket watch from the 1700s.',2500.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/pocket_watch.png'),(3,1,'Ming Dynasty Porcelain Vase',0,'An exquisite vase from the Ming Dynasty, China.',12000.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/ming_vase.png'),(4,1,'Victorian Era Jewelry Box',0,'A beautifully crafted jewelry box from the Victorian Era.',4500.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/victorian_box.png'),(5,1,'Medieval Knight Helmet',0,'A helmet used by a knight during the 14th century.',8000.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/knight_helmet.png'),(6,2,'Starry Night by Vincent Van Gogh',0,'A famous painting by Van Gogh, known for its swirling night sky.',100000.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/starry_night.png'),(7,2,'The Persistence of Memory by Salvador Dali',0,'A surreal masterpiece featuring melting clocks.',85000.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/persistence_of_memory.png'),(8,2,'Mona Lisa by Leonardo Da Vinci',0,'The iconic portrait of a woman with a mysterious smile.',500000.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/mona_lisa.png'),(9,2,'The Scream by Edvard Munch',0,'An expressionist painting depicting a figure with an agonized expression.',120000.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/the_scream.png'),(10,2,'Girl with a Pearl Earring by Johannes Vermeer',0,'A famous painting of a girl wearing a pearl earring.',95000.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/girl_pearl.png'),(11,3,'Ancient Greek Silver Coin',0,'A rare silver coin from ancient Greece, featuring the image of Alexander the Great.',5000.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/greek_coin.png'),(12,3,'Roman Gold Coin',0,'A solid gold Roman coin minted during the reign of Julius Caesar.',7500.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/roman_gold_coin.png'),(13,3,'British Sovereign Gold Coin',0,'A 19th century gold sovereign coin from Britain.',3000.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/british_coin.png'),(14,3,'Liberty Head Nickel',0,'A rare 1913 Liberty Head Nickel from the United States.',10000.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/liberty_nickel.png'),(15,3,'Indian Head Penny',0,'An 1877 Indian Head Penny from the United States.',8000.00,'2024-10-15 05:30:34','2024-10-15 05:30:34','images/indian_penny.png'),(16,1,'Trống Đồng Việt Nam',0,'Những chiếc nồi đồng luôn là cổ vật được nhiều người săn đón. Trong ảnh là chiếc nồi đồng của Má Xân - Bà mẹ Việt Nam anh hùng ở thôn Xuân Đông',1000.00,'2024-10-15 01:41:31','2024-10-15 01:41:43','images/trong-dong.png'),(17,4,'Trống Đồng Việt Nam',0,'ABC',120100.00,'2024-10-15 13:42:41','2024-10-15 13:42:41','images/trong-dong.png');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_09_24_135331_create_auction_project_tables',1),(5,'2024_10_08_094055_update_users_table',1),(6,'2024_10_15_085136_add_item_id_to_bids_table',2),(7,'2024_10_15_085337_add_item_id_to_bids_table',3),(8,'2024_10_15_090016_modify_end_price_nullable_in_auctions_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auction_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  `payment_status` enum('pending','completed','failed') NOT NULL DEFAULT 'pending',
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `payments_auction_id_foreign` (`auction_id`),
  KEY `payments_user_id_foreign` (`user_id`),
  CONSTRAINT `payments_auction_id_foreign` FOREIGN KEY (`auction_id`) REFERENCES `auctions` (`id`),
  CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `item_id` bigint(20) unsigned NOT NULL,
  `rating` int(11) NOT NULL,
  `review_text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_user_id_foreign` (`user_id`),
  KEY `reviews_item_id_foreign` (`item_id`),
  CONSTRAINT `reviews_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('2AxjnWa2njzKgLgY82WrBvImhi3k3jbuxaNDkosc',1,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMnZONXhiaXFMZDVGNDc2cWoxanp0Z1RkZlR5MzV2aFZTZHBuNTlyViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHA6Ly9sb2NhbGhvc3QvYXB0ZWNoL1NlbTFfRmluYWxQcm9qZWN0X0FwdGVjaC9wdWJsaWMvYWRtaW4vYXVjdGlvbnMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=',1728999986);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL DEFAULT 'user',
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_first_name_unique` (`first_name`),
  UNIQUE KEY `users_last_name_unique` (`last_name`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_number_unique` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'I am','Admin','admin','admin@gmail.com','$2y$12$UY4.CuUpQBP3kznkOIMGo.Q0/CJP833MvpRBleovbDJ2358Y.ZEQW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-10-14 22:31:04','2024-10-14 22:31:04',NULL,NULL),(2,'Tran','Khoa','user','tkhoa1122@gmail.com','$2y$12$eDivlQCwjIsTrn4qvOxU0..psRJ..MjFHZtQW5yp/JqiWjtVcjsMG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2024-10-14 22:31:23','2024-10-14 22:31:23',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'auction_project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-17 11:57:37
