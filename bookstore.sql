CREATE DATABASE  IF NOT EXISTS `bookstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookstore`;
-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.10.1

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Chinua Achebe','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(2,'Hans Christian Andersen','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(3,'Dante Alighieri','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(4,'Jane Austen','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(5,'Honoré de Balzac','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(6,'Samuel Beckett','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(7,'Giovanni Boccaccio','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(8,'Jorge Luis Borges','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(9,'Emily Brontë','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(10,'Albert Camus','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(11,'Paul Celan','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(12,'Louis-Ferdinand Céline','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(13,'Miguel de Cervantes','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com'),(14,'Geoffrey Chaucer','2023-05-27 16:52:48','2023-05-27 17:45:29','shriyash@yopmail.com');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_authors`
--

DROP TABLE IF EXISTS `book_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `book_id` bigint unsigned NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `book_authors_book_id_foreign` (`book_id`),
  KEY `book_authors_author_id_foreign` (`author_id`),
  CONSTRAINT `book_authors_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `book_authors_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_authors`
--

LOCK TABLES `book_authors` WRITE;
/*!40000 ALTER TABLE `book_authors` DISABLE KEYS */;
INSERT INTO `book_authors` VALUES (1,1,1,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(2,2,2,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(3,3,3,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(4,4,4,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(5,5,5,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(6,6,6,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(7,7,7,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(8,8,8,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(9,9,9,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(10,10,10,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(11,11,11,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(12,12,12,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(13,13,13,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(14,14,14,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(15,15,1,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(16,16,2,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(17,17,1,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(18,18,2,'2023-05-27 17:01:14','2023-05-27 17:01:14'),(19,19,4,'2023-05-27 17:01:14','2023-05-27 17:01:14');
/*!40000 ALTER TABLE `book_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `books_category_id_foreign` (`category_id`),
  CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,1,'The Canterbury Tales','The Canterbury Tales',399,'2023-05-27 16:56:20','2023-05-27 16:56:20'),(2,1,'Things Fall Apart','Things Fall Apart',99,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(3,2,'Fairy tales','Fairy tales',100,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(4,3,'The Divine Comedy','The Divine Comedy',199,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(5,2,'The Epic Of Gilgamesh','The Epic Of Gilgamesh',149,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(6,3,'The Book Of Job','The Book Of Job',290,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(7,1,'One Thousand and One Nights','One Thousand and One Nights',209,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(8,3,'Njál\'s Saga','Njál\'s Saga',299,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(9,4,'Pride and Prejudice','Pride and Prejudice',104,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(10,5,'Le Père Goriot','Le Père Goriot',23,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(11,6,'Molloy, Malone Dies, The Unnamable, the trilogy','Molloy, Malone Dies, The Unnamable, the trilogy',256,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(12,7,'The Decameron','The Decameron',233,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(13,8,'Ficciones','Ficciones',500,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(14,9,'Wuthering Heights','Wuthering Heights',599,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(15,1,'The Stranger','The Stranger',549,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(16,2,'Poems','Poems',552,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(17,3,'Journey to the End of the Night','Journey to the End of the Night',499,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(18,1,'Don Quijote De La Mancha','Don Quijote De La Mancha',200,'2023-05-27 16:56:23','2023-05-27 16:56:23'),(19,1,'The Canterbury Tales','The Canterbury Tales',399,'2023-05-27 16:56:23','2023-05-27 16:56:23');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Computers',NULL,NULL),(2,'Fiction and Literature',NULL,NULL),(3,'Harvard Classics',NULL,NULL),(4,'Romance',NULL,NULL),(5,'Fantasy',NULL,NULL),(6,'Science Fiction',NULL,NULL),(7,'African-American Studies',NULL,NULL),(8,'Art',NULL,NULL),(9,'Banned Books',NULL,NULL),(10,'Biography',NULL,NULL),(11,'Business',NULL,NULL),(12,'Canadian Literature',NULL,NULL),(13,'Classic',NULL,NULL),(14,'Computers',NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
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
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_05_27_061055_create_categories_table',1),(6,'2023_05_27_061120_create_authors_table',1),(7,'2023_05_27_061127_create_books_table',1),(8,'2023_05_27_061137_create_book_authors_table',1),(9,'2023_05_27_061147_create_reviews_table',1),(10,'2023_05_27_203621_create_jobs_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `book_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `rating` int NOT NULL DEFAULT '0',
  `review` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_book_id_foreign` (`book_id`),
  KEY `reviews_user_id_foreign_idx` (`user_id`),
  CONSTRAINT `reviews_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,11,1,5,'ded','2023-05-27 14:09:05','2023-05-27 14:09:05'),(2,11,1,5,'ded','2023-05-27 14:09:30','2023-05-27 14:09:30'),(3,2,1,4,'e3frfr','2023-05-27 14:22:13','2023-05-27 14:22:13'),(4,11,1,3,'23','2023-05-27 14:50:47','2023-05-27 14:50:47'),(5,1,1,1,'e4r','2023-05-27 15:09:42','2023-05-27 15:09:42'),(6,1,1,1,'e4r','2023-05-27 15:09:55','2023-05-27 15:09:55'),(7,1,1,3,'hihhihiw','2023-05-27 15:11:06','2023-05-27 15:11:06'),(8,1,1,4,'dde','2023-05-27 15:18:27','2023-05-27 15:18:27'),(9,1,1,4,'dde','2023-05-27 15:18:37','2023-05-27 15:18:37'),(10,1,1,4,'dde','2023-05-27 15:21:30','2023-05-27 15:21:30');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Shriyansh','shriyansh@gmail.com',NULL,'$2y$10$4sdjlKfEK4KbZKV3uYqTAeLaBXOk/72sHEg83QRwiU1XPZKKMAKIq',NULL,'2023-05-27 00:55:51','2023-05-27 00:55:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bookstore'
--

--
-- Dumping routines for database 'bookstore'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 12:15:26
