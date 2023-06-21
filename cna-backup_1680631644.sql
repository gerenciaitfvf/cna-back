
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
DROP TABLE IF EXISTS `competitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competitions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_comet` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `competition_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discipline` enum('campo','sala','playa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
INSERT INTO `competitions` VALUES (1,'93','Prof. Pedro Hilpert IV','senior','sala','2023-03-28 15:53:41','2023-03-28 15:53:41'),(2,'24','Prof. Kristian Bahringer','senior','playa','2023-03-28 15:53:41','2023-03-28 15:53:41'),(3,'35','Rosendo Powlowski','sub-23','playa','2023-03-28 15:53:42','2023-03-28 15:53:42'),(4,'59','Ms. Dianna Johns','sub-19','playa','2023-03-28 15:53:42','2023-03-28 15:53:42'),(5,'28','Litzy Jacobs','senior','campo','2023-03-28 15:53:42','2023-03-28 15:53:42'),(6,'83','Odessa Jenkins','sub-23','campo','2023-03-28 15:53:42','2023-03-28 15:53:42'),(7,'65','Johann Lubowitz','sub-23','sala','2023-03-28 15:53:42','2023-03-28 15:53:42'),(8,'47','Tyree Torphy','senior','playa','2023-03-28 15:53:42','2023-03-28 15:53:42'),(9,'80','Mr. Estevan Wilderman I','senior','playa','2023-03-28 15:53:42','2023-03-28 15:53:42'),(10,'20','Laurie Wisoky','sub-23','sala','2023-03-28 15:53:42','2023-03-28 15:53:42'),(11,'7','Kylie Robel III','sub-23','playa','2023-03-28 15:53:42','2023-03-28 15:53:42'),(12,'61','Ella Hauck','senior','playa','2023-03-28 15:53:42','2023-03-28 15:53:42'),(13,'84','Della Wunsch','senior','sala','2023-03-28 15:53:42','2023-03-28 15:53:42'),(14,'4','Porter Lubowitz','senior','sala','2023-03-28 15:53:42','2023-03-28 15:53:42'),(15,'9','Ally Murphy','senior','sala','2023-03-28 15:53:43','2023-03-28 15:53:43'),(16,'23','Karley Wintheiser','senior','campo','2023-03-28 15:53:43','2023-03-28 15:53:43'),(17,'95','Vanessa Heathcote','sub-19','campo','2023-03-28 15:53:43','2023-03-28 15:53:43'),(18,'79','Leopold Bode','sub-21','campo','2023-03-28 15:53:43','2023-03-28 15:53:43'),(19,'27','Spencer Lowe III','senior','sala','2023-03-28 15:53:43','2023-03-28 15:53:43'),(20,'5','Leatha Cronin I','senior','campo','2023-03-28 15:53:43','2023-03-28 15:53:43'),(21,'68','Nickolas Morar','sub-23','sala','2023-03-28 15:53:43','2023-03-28 15:53:43'),(22,'99','Mrs. Janet Beahan III','sub-23','sala','2023-03-28 15:53:43','2023-03-28 15:53:43'),(23,'11','Sonia Cassin','senior','sala','2023-03-28 15:53:43','2023-03-28 15:53:43'),(24,'88','Margot D\'Amore','sub-23','sala','2023-03-28 15:53:43','2023-03-28 15:53:43'),(25,'58','Dr. Mortimer Jacobs Sr.','sub-23','playa','2023-03-28 15:53:44','2023-03-28 15:53:44'),(26,'66','Ismael Lockman','sub-21','playa','2023-03-28 15:53:44','2023-03-28 15:53:44'),(27,'57','Dr. Brody Dietrich IV','sub-21','sala','2023-03-28 15:53:44','2023-03-28 15:53:44'),(28,'51','Candace Toy','sub-19','sala','2023-03-28 15:53:44','2023-03-28 15:53:44'),(29,'63','Nella Stoltenberg','sub-23','campo','2023-03-28 15:53:44','2023-03-28 15:53:44'),(30,'56','Sigmund Mitchell','senior','campo','2023-03-28 15:53:44','2023-03-28 15:53:44');
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_02_28_183433_create_referees_table',1),(6,'2023_03_28_140555_create_competitions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `referees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fifa_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_fitness` tinyint(1) NOT NULL,
  `discipline` enum('campo','sala','playa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `referees_cedula_unique` (`cedula`),
  UNIQUE KEY `referees_fifa_id_unique` (`fifa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `referees` WRITE;
/*!40000 ALTER TABLE `referees` DISABLE KEYS */;
INSERT INTO `referees` VALUES (1,'Zackary Emmerich','Becker','11641582','0.@V92EWP.URM','+1-347-225-0462',1,'campo','2023-03-28 15:53:34','2023-03-28 15:53:34'),(2,'Mr. Lance Reichert','Pouros','14454829','%_K@FW.IHSG','360.555.6131',1,'campo','2023-03-28 15:53:34','2023-03-28 15:53:34'),(3,'Mrs. Alycia Windler II','Feeney','16944564','I2@L.EQ','442-818-3949',0,'campo','2023-03-28 15:53:34','2023-03-28 15:53:34'),(4,'Roel Bashirian','Herzog','16811234','S-@SG.EMPP','469-822-5152',1,'playa','2023-03-28 15:53:34','2023-03-28 15:53:34'),(5,'Miss Kenyatta Schimmel','Stiedemann','13588291','Z@7.ZUW','484-351-7307',1,'playa','2023-03-28 15:53:34','2023-03-28 15:53:34'),(6,'Mr. Francesco Hickle','Rempel','11807280','W@O.ZJJT','1-785-693-7306',1,'playa','2023-03-28 15:53:34','2023-03-28 15:53:34'),(7,'Ben Williamson','Douglas','16386159','H4U@6C.NIJ','1-847-220-2200',1,'campo','2023-03-28 15:53:34','2023-03-28 15:53:34'),(8,'Brennon Mayer IV','Baumbach','13610455','G0@GA.DMWB','(314) 998-5271',0,'playa','2023-03-28 15:53:34','2023-03-28 15:53:34'),(9,'Ruthe Wilkinson','Lubowitz','10477899','2_@G6.RXOW','+1-719-806-8764',1,'sala','2023-03-28 15:53:34','2023-03-28 15:53:34'),(10,'Prof. Monique Larson','Hickle','13147684','V@PK.RL','+18136385224',1,'sala','2023-03-28 15:53:34','2023-03-28 15:53:34'),(11,'Hiram Rau','Hartmann','13791408','QV0@8R.QZ','+18083565229',1,'campo','2023-03-28 15:53:34','2023-03-28 15:53:34'),(12,'Clare Terry IV','Eichmann','11934801','GQQ@36.ZHV','+1-339-716-6978',1,'playa','2023-03-28 15:53:34','2023-03-28 15:53:34'),(13,'Mr. Lennie Goldner I','Mohr','12321351','A@2.QSA','+16317530985',1,'playa','2023-03-28 15:53:35','2023-03-28 15:53:35'),(14,'Arvel Zieme','Satterfield','12780958','E@C2N.T3CKV.QQAV','+1-520-690-1267',1,'playa','2023-03-28 15:53:35','2023-03-28 15:53:35'),(15,'Mr. Arden Swift','Stanton','11212221','G@H.XFO','(918) 734-8045',1,'campo','2023-03-28 15:53:35','2023-03-28 15:53:35'),(16,'Prof. Hayley O\'Kon PhD','Kassulke','13098955','09@J.BWC','1-814-774-9125',1,'sala','2023-03-28 15:53:35','2023-03-28 15:53:35'),(17,'Jillian Ziemann','Turcotte','11929355','4C_.%5@UV-.ZKK','+12342136008',1,'playa','2023-03-28 15:53:35','2023-03-28 15:53:35'),(18,'Gage Stehr I','Gulgowski','10273232','AXEP4D@RMR.ZU','808-454-0441',1,'sala','2023-03-28 15:53:35','2023-03-28 15:53:35'),(19,'Ima Christiansen','Stiedemann','13082213','SAVR@Y4TU.PN','248.887.8867',0,'playa','2023-03-28 15:53:35','2023-03-28 15:53:35'),(20,'Reginald Ondricka','Keeling','10096810','9%RBN@VZTL.BY','(785) 670-4999',1,'sala','2023-03-28 15:53:35','2023-03-28 15:53:35'),(21,'Rhiannon Dietrich','Ryan','13276108','U@9SR6.WZO','+1-785-618-1071',1,'sala','2023-03-28 15:53:35','2023-03-28 15:53:35'),(22,'Dr. Ignatius Armstrong','Champlin','12516107','XA@8D8L.HNJ','732.240.3835',1,'playa','2023-03-28 15:53:35','2023-03-28 15:53:35'),(23,'Immanuel Denesik','Bergnaum','14499791','P7@89N.LVCH','(732) 705-3452',1,'sala','2023-03-28 15:53:35','2023-03-28 15:53:35'),(24,'Cora Robel','Rolfson','10302017','Y@C.EP','+1-409-803-7301',0,'playa','2023-03-28 15:53:35','2023-03-28 15:53:35'),(25,'Kylee Goldner','Kreiger','11984682','W9SPA@0.LF','+1 (718) 454-2359',1,'campo','2023-03-28 15:53:36','2023-03-28 15:53:36'),(26,'Sylvia Kutch','O\'Keefe','13244622','-.@2N.LOX','740-323-9574',1,'campo','2023-03-28 15:53:36','2023-03-28 15:53:36'),(27,'Prudence Maggio','Smith','16789389','G@L8.RU','1-304-202-9461',1,'campo','2023-03-28 15:53:36','2023-03-28 15:53:36'),(28,'Garth Runte','Torphy','14829287','M@7.MELQ','(740) 796-1554',0,'sala','2023-03-28 15:53:36','2023-03-28 15:53:36'),(29,'Mrs. Rafaela Lindgren DVM','Kuvalis','11249587','_.9%@V.KTH','(480) 437-3773',1,'playa','2023-03-28 15:53:36','2023-03-28 15:53:36'),(30,'Dr. Harvey Moore','Schulist','15304581','MEF@JRHVE.HDPI','717-397-0681',1,'sala','2023-03-28 15:53:36','2023-03-28 15:53:36'),(31,'Henri Kuhic','Runolfsson','12740450','1@P.TS','270.578.2480',1,'playa','2023-03-28 15:53:36','2023-03-28 15:53:36'),(32,'Delilah Davis DVM','Becker','16128325','_%M@XIUGXZ.IM','+1 (831) 513-3870',1,'campo','2023-03-28 15:53:36','2023-03-28 15:53:36'),(33,'Parker Dicki','Morar','15566483','%@LXEY.THK','+12769944949',1,'sala','2023-03-28 15:53:36','2023-03-28 15:53:36'),(34,'Carlo Rodriguez','O\'Keefe','11405335','_N.@4W.WU','+1 (361) 589-1372',0,'sala','2023-03-28 15:53:36','2023-03-28 15:53:36'),(35,'Agustina Kuphal','Conroy','16836360','ESH@GYJ9Y.CUX','445-802-4256',1,'sala','2023-03-28 15:53:36','2023-03-28 15:53:36'),(36,'Flo Waters','Renner','13714401','X%%2UK@SP2I.RTE','+1-681-804-7093',1,'sala','2023-03-28 15:53:36','2023-03-28 15:53:36'),(37,'Dr. Blake Wolf','Mosciski','14387294','UKN3@CP5W.FRLH','940-727-1829',0,'campo','2023-03-28 15:53:36','2023-03-28 15:53:36'),(38,'Sigurd Hermiston','Lowe','14519872','3%4M@A.RJZ','+14698440294',1,'sala','2023-03-28 15:53:37','2023-03-28 15:53:37'),(39,'Ms. Priscilla Renner II','Bednar','10084124','K@O.NF','(971) 844-9041',1,'campo','2023-03-28 15:53:37','2023-03-28 15:53:37'),(40,'Raegan Sporer MD','Ferry','14213131','H@Y766D.TON','+1-762-281-0104',1,'campo','2023-03-28 15:53:37','2023-03-28 15:53:37'),(41,'Ahmad Welch','Daniel','12847207','6E%@YPUP90B.VU','+1 (619) 894-2688',1,'sala','2023-03-28 15:53:37','2023-03-28 15:53:37'),(42,'Alphonso West','Larkin','14805351','3R@PFX.FLC','860.616.0424',1,'campo','2023-03-28 15:53:37','2023-03-28 15:53:37'),(43,'Mr. Cole Konopelski','Glover','16321586','8@YGRFHN.DD','(325) 587-8764',1,'sala','2023-03-28 15:53:37','2023-03-28 15:53:37'),(44,'Miss Zora Zieme','Cronin','13171424','B@V09.FZ','(678) 816-6954',1,'campo','2023-03-28 15:53:37','2023-03-28 15:53:37'),(45,'Boyd Kulas','Labadie','11017448','HO%@23D.JXCE','(918) 873-9233',1,'campo','2023-03-28 15:53:37','2023-03-28 15:53:37'),(46,'Ervin Turner','Schamberger','16570314','OO%QR@D.ZJJA','+17573691550',0,'campo','2023-03-28 15:53:37','2023-03-28 15:53:37'),(47,'Hank Cassin','Treutel','15478009','E@3HL0.KQ','1-765-337-0625',1,'playa','2023-03-28 15:53:37','2023-03-28 15:53:37'),(48,'Mr. Richard Cole','Friesen','14134850','A@O.HYV','(417) 462-3197',1,'campo','2023-03-28 15:53:37','2023-03-28 15:53:37'),(49,'Elva Hudson','Gusikowski','13047265','T@L.VSW','445.528.8533',1,'sala','2023-03-28 15:53:37','2023-03-28 15:53:37'),(50,'Liana Miller','Smith','16134426','%RD@C-H.AEPN','+1 (341) 451-2477',1,'campo','2023-03-28 15:53:37','2023-03-28 15:53:37'),(51,'Ms. Laura Crona','Yost','12621803','%YV7@G8LL.YUMD','+1-425-541-3134',1,'campo','2023-03-28 15:53:37','2023-03-28 15:53:37'),(52,'Augusta Ledner','Schuppe','11369513','%J2@I6L3KMU.AX','585-621-6117',1,'sala','2023-03-28 15:53:38','2023-03-28 15:53:38'),(53,'Candace Schumm','Halvorson','14030854','VBJ5VM@BKRF8A.TCS','+1 (607) 547-8934',1,'playa','2023-03-28 15:53:38','2023-03-28 15:53:38'),(54,'Ethyl Beatty','Hickle','14289229','1V@5.IQ','731.986.4852',1,'playa','2023-03-28 15:53:38','2023-03-28 15:53:38'),(55,'Milford Schumm','Adams','13412058','3@0LSW.YYL','678-905-6729',0,'campo','2023-03-28 15:53:38','2023-03-28 15:53:38'),(56,'Addie Zboncak','Lindgren','13731953','2-F%3NQ@75-79T.HD','718.650.9697',1,'playa','2023-03-28 15:53:38','2023-03-28 15:53:38'),(57,'Dr. Nikolas Homenick','Rogahn','13158383','UPQ1@7O81DA.UM','985-394-2515',1,'campo','2023-03-28 15:53:38','2023-03-28 15:53:38'),(58,'Darius Olson','Fahey','10161914','%FD9@72R5.OPEE','+19792480310',1,'playa','2023-03-28 15:53:38','2023-03-28 15:53:38'),(59,'Jeanne Parker','Cormier','13895187','%F@9X.QL','+1 (541) 202-9619',1,'campo','2023-03-28 15:53:38','2023-03-28 15:53:38'),(60,'Prof. Mertie Brown MD','Gaylord','10051865','XH@V9WUY.ZT','1-424-549-1936',1,'sala','2023-03-28 15:53:38','2023-03-28 15:53:38'),(61,'Natalie Treutel','Welch','15489896','7%KYSV@8E.RHBQ','+1-351-897-6097',1,'playa','2023-03-28 15:53:38','2023-03-28 15:53:38'),(62,'Cayla Leffler','Maggio','16380756','1@AN.YMP','1-520-802-7439',1,'playa','2023-03-28 15:53:38','2023-03-28 15:53:38'),(63,'Shawn Upton','Dach','16710695','LE3Y@IZZT.FP','732.892.1090',1,'playa','2023-03-28 15:53:39','2023-03-28 15:53:39'),(64,'Alphonso Sanford','Ratke','12916266','4OWPT@7-NETH.LHTC','856.506.6018',1,'sala','2023-03-28 15:53:39','2023-03-28 15:53:39'),(65,'Ottis Kunde','Wisozk','13785667','A2X@-PT.OF','+1 (667) 496-9591',1,'sala','2023-03-28 15:53:39','2023-03-28 15:53:39'),(66,'Madison Donnelly','Jacobson','13615421','9JZQ4%BS@LR22.VYJL','1-858-578-8171',1,'playa','2023-03-28 15:53:39','2023-03-28 15:53:39'),(67,'Dr. Glennie Price III','Emard','10816997','6@P.WWRN','+1-281-752-7764',1,'sala','2023-03-28 15:53:39','2023-03-28 15:53:39'),(68,'Ayana Wilkinson','Schuppe','10779521','HY@9I.TLO','283.926.3114',1,'campo','2023-03-28 15:53:39','2023-03-28 15:53:39'),(69,'Providenci Padberg','Quigley','13515266','T_0@11WV.V.SGNF','(786) 886-6736',1,'playa','2023-03-28 15:53:39','2023-03-28 15:53:39'),(70,'Eric Beatty DDS','Schultz','13435835','WU@1GP.TNZF','+16604925280',0,'playa','2023-03-28 15:53:39','2023-03-28 15:53:39'),(71,'Frank Rogahn','Keeling','10618579','WX2@IW7K3DG.PVFR','+15716241372',1,'campo','2023-03-28 15:53:39','2023-03-28 15:53:39'),(72,'Howell Goodwin','Douglas','15744412','H@X.BPU','928.322.5094',1,'sala','2023-03-28 15:53:39','2023-03-28 15:53:39'),(73,'Dr. Jacinto Gorczany PhD','Pouros','13614727','Z@..VO','+18088244314',0,'campo','2023-03-28 15:53:40','2023-03-28 15:53:40'),(74,'Dr. Nash Kling I','Heller','16916751','UEO@-5KBJOS.PQ','1-601-462-2086',1,'sala','2023-03-28 15:53:40','2023-03-28 15:53:40'),(75,'Chanel Bednar Jr.','Muller','15493738','2@7.ZHIE','+1 (760) 324-5176',1,'campo','2023-03-28 15:53:40','2023-03-28 15:53:40'),(76,'Dorcas Yost','Schuster','16919425','8P@..WEZ','+1-857-976-4192',0,'campo','2023-03-28 15:53:40','2023-03-28 15:53:40'),(77,'Martine Russel','Reinger','11268922','_4O@4I6G.LS','+1-804-475-9354',1,'campo','2023-03-28 15:53:40','2023-03-28 15:53:40'),(78,'Roderick O\'Connell Sr.','Quigley','15454061','28M@JM0.CWVE','+1.541.722.8464',1,'sala','2023-03-28 15:53:40','2023-03-28 15:53:40'),(79,'Marjolaine Becker PhD','Mayer','15055548','QSS@KYMX4WIWP.SJ','(626) 398-6426',1,'campo','2023-03-28 15:53:40','2023-03-28 15:53:40'),(80,'Mr. Jensen Jenkins Jr.','Moen','11761797','EH@WRK3A.QFDS','248.784.7310',1,'playa','2023-03-28 15:53:40','2023-03-28 15:53:40'),(81,'Marie Wolff','Runolfsson','16710472','IZWH@WD..QF','806.568.8248',0,'playa','2023-03-28 15:53:40','2023-03-28 15:53:40'),(82,'Ms. Pearline Gleason','Rath','11406820','OK@.2.6.CTYJ','+1.608.370.2431',1,'playa','2023-03-28 15:53:40','2023-03-28 15:53:40'),(83,'Kaylee Cummings','Carter','14041385','%@12.YJV','+1-916-534-3106',1,'playa','2023-03-28 15:53:40','2023-03-28 15:53:40'),(84,'Lisette McClure IV','Hegmann','11815722','C%KNQ39@9VKB9V.RFXD','+1.262.950.6283',0,'campo','2023-03-28 15:53:40','2023-03-28 15:53:40'),(85,'Luther Howe','Schmidt','12973080','7@MU.YYK','463-743-2290',1,'sala','2023-03-28 15:53:40','2023-03-28 15:53:40'),(86,'Abigale O\'Hara','Nikolaus','10560001','Q@W.TDY','629-772-7433',1,'playa','2023-03-28 15:53:41','2023-03-28 15:53:41'),(87,'Elsie Osinski','Yundt','16535171','H68K4@PHIILBE.SHO','(252) 544-9557',0,'campo','2023-03-28 15:53:41','2023-03-28 15:53:41'),(88,'Jermaine Stokes','Hodkiewicz','13237170','LA@IY8S.EE','(779) 795-4240',0,'playa','2023-03-28 15:53:41','2023-03-28 15:53:41'),(89,'Joyce Hettinger','Weber','15872729','MIQBJ1%@Z8.AHY','845-650-1643',1,'playa','2023-03-28 15:53:41','2023-03-28 15:53:41'),(90,'Madisyn Leffler','Carroll','11402734','O8@Q1C.AGK','+1-580-953-2955',1,'campo','2023-03-28 15:53:41','2023-03-28 15:53:41'),(91,'Dr. Stefan Nicolas V','Haag','14619238','J@F.RXRK','(314) 651-8544',1,'playa','2023-03-28 15:53:41','2023-03-28 15:53:41'),(92,'Nadia Hills','Cruickshank','14603582','DCN@5VBQ3.FQQU','(240) 685-4565',1,'sala','2023-03-28 15:53:41','2023-03-28 15:53:41'),(93,'Miss Ella Borer','Glover','12070084','K34G@O0PEZ.ATGA','706-402-0923',1,'playa','2023-03-28 15:53:41','2023-03-28 15:53:41'),(94,'Brittany Schowalter DDS','Hermiston','12775100','RE@G7.BG','774-220-0036',1,'sala','2023-03-28 15:53:41','2023-03-28 15:53:41'),(95,'Dr. Paolo Ledner','Leffler','11393112','7VU13@3Q180-.YEX','(603) 832-3372',1,'sala','2023-03-28 15:53:41','2023-03-28 15:53:41'),(96,'Ms. Amya Ritchie PhD','Dibbert','15837621','L7I@2Y4CNF.GSC','(763) 352-1271',1,'campo','2023-03-28 15:53:41','2023-03-28 15:53:41'),(97,'Laury Dare','Wolf','11179083','%.@OREKECV.PT','1-864-598-8082',1,'sala','2023-03-28 15:53:41','2023-03-28 15:53:41'),(98,'Delphia Morissette','Stehr','15026139','K@S.EAUK','(650) 316-8555',1,'sala','2023-03-28 15:53:41','2023-03-28 15:53:41'),(99,'Bobbie Brekke','Johnston','15082109','N@O.LGX','+1-551-729-1639',1,'campo','2023-03-28 15:53:41','2023-03-28 15:53:41'),(100,'Peggie Hagenes','Tillman','11540219','G@Y94ODW.DST','1-512-561-6900',0,'campo','2023-03-28 15:53:41','2023-03-28 15:53:41');
/*!40000 ALTER TABLE `referees` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Maverick Kiehn','hassie.becker@example.com','2023-03-28 15:53:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','F1dDt36OHA','2023-03-28 15:53:32','2023-03-28 15:53:32'),(2,'Dr. Lela Murphy','berneice.lehner@example.com','2023-03-28 15:53:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','oSebmC2w4y','2023-03-28 15:53:32','2023-03-28 15:53:32'),(3,'Velva Conn','vdaugherty@example.net','2023-03-28 15:53:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','AZbTXacxSX','2023-03-28 15:53:33','2023-03-28 15:53:33'),(4,'Creola Hyatt','cristina56@example.org','2023-03-28 15:53:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','XSXVDnRYMG','2023-03-28 15:53:33','2023-03-28 15:53:33'),(5,'Chandler Littel','yprohaska@example.net','2023-03-28 15:53:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','KCR7JiHeXV','2023-03-28 15:53:33','2023-03-28 15:53:33'),(6,'Macy Feil','ehowell@example.net','2023-03-28 15:53:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2GzILTk8Pm','2023-03-28 15:53:33','2023-03-28 15:53:33'),(7,'Roberto Gusikowski','hickle.ewell@example.net','2023-03-28 15:53:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ODRpo6pWmn','2023-03-28 15:53:33','2023-03-28 15:53:33'),(8,'Christian Aufderhar','thessel@example.com','2023-03-28 15:53:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','FSmi7NROVd','2023-03-28 15:53:33','2023-03-28 15:53:33'),(9,'Dr. Sheila Heathcote','eleonore.hackett@example.org','2023-03-28 15:53:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tADKNlilGl','2023-03-28 15:53:33','2023-03-28 15:53:33'),(10,'Donny Raynor','prosacco.karson@example.org','2023-03-28 15:53:32','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dboUGjmSW7','2023-03-28 15:53:33','2023-03-28 15:53:33'),(11,'Rafael Velasquez','rafael.velasquez@fvf.com.ve','2023-03-28 15:53:33','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3z9r3xLbia','2023-03-28 15:53:33','2023-03-28 15:53:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

