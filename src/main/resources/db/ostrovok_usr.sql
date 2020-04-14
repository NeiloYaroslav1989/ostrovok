-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ostrovok
-- ------------------------------------------------------
-- Server version	8.0.19

-- Table structure for table `usr`
--
DROP TABLE IF EXISTS `usr`;
CREATE TABLE `usr` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usr`
--
INSERT INTO `usr` VALUES 
(1,_binary '','3','111@1.com','3','Юшкевич Даша'),
(2,_binary '','1','1@1.com','1','Князэва Вита'),
(3,_binary '','admin','1@1.com','admin','admin'),
(14,_binary '','1','1@1.com','1','Демьянова Эрика');
