-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: dmoj
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.22.04.1

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
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add blog post',2,'add_blogpost'),(6,'Can change blog post',2,'change_blogpost'),(7,'Can delete blog post',2,'delete_blogpost'),(8,'Can view blog post',2,'view_blogpost'),(9,'Edit all posts',2,'edit_all_post'),(10,'Edit post visibility',2,'change_post_visibility'),(11,'Can add comment',3,'add_comment'),(12,'Can change comment',3,'change_comment'),(13,'Can delete comment',3,'delete_comment'),(14,'Can view comment',3,'view_comment'),(15,'Can add comment lock',4,'add_commentlock'),(16,'Can change comment lock',4,'change_commentlock'),(17,'Can delete comment lock',4,'delete_commentlock'),(18,'Can view comment lock',4,'view_commentlock'),(19,'Override comment lock',4,'override_comment_lock'),(20,'Can add comment vote',5,'add_commentvote'),(21,'Can change comment vote',5,'change_commentvote'),(22,'Can delete comment vote',5,'delete_commentvote'),(23,'Can view comment vote',5,'view_commentvote'),(24,'Can add contest',6,'add_contest'),(25,'Can change contest',6,'change_contest'),(26,'Can delete contest',6,'delete_contest'),(27,'Can view contest',6,'view_contest'),(28,'See private contests',6,'see_private_contest'),(29,'Edit own contests',6,'edit_own_contest'),(30,'Edit all contests',6,'edit_all_contest'),(31,'Clone contest',6,'clone_contest'),(32,'MOSS contest',6,'moss_contest'),(33,'Rate contests',6,'contest_rating'),(34,'Contest access codes',6,'contest_access_code'),(35,'Create private contests',6,'create_private_contest'),(36,'Change contest visibility',6,'change_contest_visibility'),(37,'Edit contest problem label script',6,'contest_problem_label'),(38,'Change lock status of contest',6,'lock_contest'),(39,'Override performance ceiling of contest',6,'override_performance_ceiling'),(40,'Can add contest participation',7,'add_contestparticipation'),(41,'Can change contest participation',7,'change_contestparticipation'),(42,'Can delete contest participation',7,'delete_contestparticipation'),(43,'Can view contest participation',7,'view_contestparticipation'),(44,'Can add contest problem',8,'add_contestproblem'),(45,'Can change contest problem',8,'change_contestproblem'),(46,'Can delete contest problem',8,'delete_contestproblem'),(47,'Can view contest problem',8,'view_contestproblem'),(48,'Can add contest submission',9,'add_contestsubmission'),(49,'Can change contest submission',9,'change_contestsubmission'),(50,'Can delete contest submission',9,'delete_contestsubmission'),(51,'Can view contest submission',9,'view_contestsubmission'),(52,'Can add contest tag',10,'add_contesttag'),(53,'Can change contest tag',10,'change_contesttag'),(54,'Can delete contest tag',10,'delete_contesttag'),(55,'Can view contest tag',10,'view_contesttag'),(56,'Can add judge',11,'add_judge'),(57,'Can change judge',11,'change_judge'),(58,'Can delete judge',11,'delete_judge'),(59,'Can view judge',11,'view_judge'),(60,'Can add language',12,'add_language'),(61,'Can change language',12,'change_language'),(62,'Can delete language',12,'delete_language'),(63,'Can view language',12,'view_language'),(64,'Can add language-specific resource limit',13,'add_languagelimit'),(65,'Can change language-specific resource limit',13,'change_languagelimit'),(66,'Can delete language-specific resource limit',13,'delete_languagelimit'),(67,'Can view language-specific resource limit',13,'view_languagelimit'),(68,'Can add license',14,'add_license'),(69,'Can change license',14,'change_license'),(70,'Can delete license',14,'delete_license'),(71,'Can view license',14,'view_license'),(72,'Can add configuration item',15,'add_miscconfig'),(73,'Can change configuration item',15,'change_miscconfig'),(74,'Can delete configuration item',15,'delete_miscconfig'),(75,'Can view configuration item',15,'view_miscconfig'),(76,'Can add navigation item',16,'add_navigationbar'),(77,'Can change navigation item',16,'change_navigationbar'),(78,'Can delete navigation item',16,'delete_navigationbar'),(79,'Can view navigation item',16,'view_navigationbar'),(80,'Can add organization',17,'add_organization'),(81,'Can change organization',17,'change_organization'),(82,'Can delete organization',17,'delete_organization'),(83,'Can view organization',17,'view_organization'),(84,'Administer organizations',17,'organization_admin'),(85,'Edit all organizations',17,'edit_all_organization'),(86,'Can add organization join request',18,'add_organizationrequest'),(87,'Can change organization join request',18,'change_organizationrequest'),(88,'Can delete organization join request',18,'delete_organizationrequest'),(89,'Can view organization join request',18,'view_organizationrequest'),(90,'Can add problem',19,'add_problem'),(91,'Can change problem',19,'change_problem'),(92,'Can delete problem',19,'delete_problem'),(93,'Can view problem',19,'view_problem'),(94,'See hidden problems',19,'see_private_problem'),(95,'Edit own problems',19,'edit_own_problem'),(96,'Edit all problems',19,'edit_all_problem'),(97,'Edit all public problems',19,'edit_public_problem'),(98,'Edit problems with full markup',19,'problem_full_markup'),(99,'Clone problem',19,'clone_problem'),(100,'Change is_public field',19,'change_public_visibility'),(101,'Change is_manually_managed field',19,'change_manually_managed'),(102,'See organization-private problems',19,'see_organization_problem'),(103,'Create private problems',19,'create_private_problem'),(104,'Can add problem clarification',20,'add_problemclarification'),(105,'Can change problem clarification',20,'change_problemclarification'),(106,'Can delete problem clarification',20,'delete_problemclarification'),(107,'Can view problem clarification',20,'view_problemclarification'),(108,'Can add problem data',21,'add_problemdata'),(109,'Can change problem data',21,'change_problemdata'),(110,'Can delete problem data',21,'delete_problemdata'),(111,'Can view problem data',21,'view_problemdata'),(112,'Can add problem group',22,'add_problemgroup'),(113,'Can change problem group',22,'change_problemgroup'),(114,'Can delete problem group',22,'delete_problemgroup'),(115,'Can view problem group',22,'view_problemgroup'),(116,'Can add problem test case',23,'add_problemtestcase'),(117,'Can change problem test case',23,'change_problemtestcase'),(118,'Can delete problem test case',23,'delete_problemtestcase'),(119,'Can view problem test case',23,'view_problemtestcase'),(120,'Can add problem translation',24,'add_problemtranslation'),(121,'Can change problem translation',24,'change_problemtranslation'),(122,'Can delete problem translation',24,'delete_problemtranslation'),(123,'Can view problem translation',24,'view_problemtranslation'),(124,'Can add problem type',25,'add_problemtype'),(125,'Can change problem type',25,'change_problemtype'),(126,'Can delete problem type',25,'delete_problemtype'),(127,'Can view problem type',25,'view_problemtype'),(128,'Can add user profile',26,'add_profile'),(129,'Can change user profile',26,'change_profile'),(130,'Can delete user profile',26,'delete_profile'),(131,'Can view user profile',26,'view_profile'),(132,'Shows in-progress development stuff',26,'test_site'),(133,'Edit TOTP settings',26,'totp'),(134,'Can add contest rating',27,'add_rating'),(135,'Can change contest rating',27,'change_rating'),(136,'Can delete contest rating',27,'delete_rating'),(137,'Can view contest rating',27,'view_rating'),(138,'Can add runtime version',28,'add_runtimeversion'),(139,'Can change runtime version',28,'change_runtimeversion'),(140,'Can delete runtime version',28,'delete_runtimeversion'),(141,'Can view runtime version',28,'view_runtimeversion'),(142,'Can add solution',29,'add_solution'),(143,'Can change solution',29,'change_solution'),(144,'Can delete solution',29,'delete_solution'),(145,'Can view solution',29,'view_solution'),(146,'See hidden solutions',29,'see_private_solution'),(147,'Can add submission',30,'add_submission'),(148,'Can change submission',30,'change_submission'),(149,'Can delete submission',30,'delete_submission'),(150,'Can view submission',30,'view_submission'),(151,'Abort any submission',30,'abort_any_submission'),(152,'Rejudge the submission',30,'rejudge_submission'),(153,'Rejudge a lot of submissions',30,'rejudge_submission_lot'),(154,'Submit without limit',30,'spam_submission'),(155,'View all submission',30,'view_all_submission'),(156,'Resubmit others\' submission',30,'resubmit_other'),(157,'Change lock status of submission',30,'lock_submission'),(158,'Can add submission test case',31,'add_submissiontestcase'),(159,'Can change submission test case',31,'change_submissiontestcase'),(160,'Can delete submission test case',31,'delete_submissiontestcase'),(161,'Can view submission test case',31,'view_submissiontestcase'),(162,'Can add ticket',32,'add_ticket'),(163,'Can change ticket',32,'change_ticket'),(164,'Can delete ticket',32,'delete_ticket'),(165,'Can view ticket',32,'view_ticket'),(166,'Can add ticket message',33,'add_ticketmessage'),(167,'Can change ticket message',33,'change_ticketmessage'),(168,'Can delete ticket message',33,'delete_ticketmessage'),(169,'Can view ticket message',33,'view_ticketmessage'),(170,'Can add submission source',34,'add_submissionsource'),(171,'Can change submission source',34,'change_submissionsource'),(172,'Can delete submission source',34,'delete_submissionsource'),(173,'Can view submission source',34,'view_submissionsource'),(174,'Can add contest moss result',35,'add_contestmoss'),(175,'Can change contest moss result',35,'change_contestmoss'),(176,'Can delete contest moss result',35,'delete_contestmoss'),(177,'Can view contest moss result',35,'view_contestmoss'),(178,'Can add WebAuthn credential',36,'add_webauthncredential'),(179,'Can change WebAuthn credential',36,'change_webauthncredential'),(180,'Can delete WebAuthn credential',36,'delete_webauthncredential'),(181,'Can view WebAuthn credential',36,'view_webauthncredential'),(182,'Can add class',37,'add_class'),(183,'Can change class',37,'change_class'),(184,'Can delete class',37,'delete_class'),(185,'Can view class',37,'view_class'),(186,'Can add problem vote',38,'add_problempointsvote'),(187,'Can change problem vote',38,'change_problempointsvote'),(188,'Can delete problem vote',38,'delete_problempointsvote'),(189,'Can view problem vote',38,'view_problempointsvote'),(190,'Can add permission',39,'add_permission'),(191,'Can change permission',39,'change_permission'),(192,'Can delete permission',39,'delete_permission'),(193,'Can view permission',39,'view_permission'),(194,'Can add group',40,'add_group'),(195,'Can change group',40,'change_group'),(196,'Can delete group',40,'delete_group'),(197,'Can view group',40,'view_group'),(198,'Can add user',41,'add_user'),(199,'Can change user',41,'change_user'),(200,'Can delete user',41,'delete_user'),(201,'Can view user',41,'view_user'),(202,'Can add content type',42,'add_contenttype'),(203,'Can change content type',42,'change_contenttype'),(204,'Can delete content type',42,'delete_contenttype'),(205,'Can view content type',42,'view_contenttype'),(206,'Can add flat page',43,'add_flatpage'),(207,'Can change flat page',43,'change_flatpage'),(208,'Can delete flat page',43,'delete_flatpage'),(209,'Can view flat page',43,'view_flatpage'),(210,'Can add session',44,'add_session'),(211,'Can change session',44,'change_session'),(212,'Can delete session',44,'delete_session'),(213,'Can view session',44,'view_session'),(214,'Can add redirect',45,'add_redirect'),(215,'Can change redirect',45,'change_redirect'),(216,'Can delete redirect',45,'delete_redirect'),(217,'Can view redirect',45,'view_redirect'),(218,'Can add site',46,'add_site'),(219,'Can change site',46,'change_site'),(220,'Can delete site',46,'delete_site'),(221,'Can view site',46,'view_site'),(222,'Can add registration profile',47,'add_registrationprofile'),(223,'Can change registration profile',47,'change_registrationprofile'),(224,'Can delete registration profile',47,'delete_registrationprofile'),(225,'Can view registration profile',47,'view_registrationprofile'),(226,'Can add supervised registration profile',48,'add_supervisedregistrationprofile'),(227,'Can change supervised registration profile',48,'change_supervisedregistrationprofile'),(228,'Can delete supervised registration profile',48,'delete_supervisedregistrationprofile'),(229,'Can view supervised registration profile',48,'view_supervisedregistrationprofile'),(230,'Can add revision',49,'add_revision'),(231,'Can change revision',49,'change_revision'),(232,'Can delete revision',49,'delete_revision'),(233,'Can view revision',49,'view_revision'),(234,'Can add version',50,'add_version'),(235,'Can change version',50,'change_version'),(236,'Can delete version',50,'delete_version'),(237,'Can view version',50,'view_version'),(238,'Can add association',51,'add_association'),(239,'Can change association',51,'change_association'),(240,'Can delete association',51,'delete_association'),(241,'Can view association',51,'view_association'),(242,'Can add code',52,'add_code'),(243,'Can change code',52,'change_code'),(244,'Can delete code',52,'delete_code'),(245,'Can view code',52,'view_code'),(246,'Can add nonce',53,'add_nonce'),(247,'Can change nonce',53,'change_nonce'),(248,'Can delete nonce',53,'delete_nonce'),(249,'Can view nonce',53,'view_nonce'),(250,'Can add user social auth',54,'add_usersocialauth'),(251,'Can change user social auth',54,'change_usersocialauth'),(252,'Can delete user social auth',54,'delete_usersocialauth'),(253,'Can view user social auth',54,'view_usersocialauth'),(254,'Can add partial',55,'add_partial'),(255,'Can change partial',55,'change_partial'),(256,'Can delete partial',55,'delete_partial'),(257,'Can view partial',55,'view_partial'),(258,'Can add impersonation log',56,'add_impersonationlog'),(259,'Can change impersonation log',56,'change_impersonationlog'),(260,'Can delete impersonation log',56,'delete_impersonationlog'),(261,'Can view impersonation log',56,'view_impersonationlog');
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
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$NSd1tBQvPH1Vi1e0WCzJAJ$d3fyUF4gSjezArOfGaPMSJzBZW2Iu5dTbScTHMNJ9Bw=','2025-06-02 06:54:57.956607',1,'admin','','','thanhnghiacntt@gmail.com',1,1,'2025-05-25 22:53:08.730000');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-05-26 15:49:09.888652','2','kaiwa.vn',1,'[{\"added\": {}}]',46,1),(2,'2025-05-26 15:49:47.764382','1','PRO ABC',1,'[{\"added\": {}}]',22,1),(3,'2025-05-27 12:57:43.665056','2','Proble Groud',1,'[{\"added\": {}}]',22,1),(4,'2025-05-27 13:00:55.289849','2','Python',1,'[{\"added\": {}}]',12,1),(5,'2025-05-27 13:01:35.670335','1','Test',1,'[{\"added\": {}}]',11,1),(6,'2025-05-27 13:02:21.050978','1','Trang Chủ',1,'[{\"added\": {}}]',16,1),(7,'2025-05-27 13:03:15.907057','2','Problems',1,'[{\"added\": {}}]',16,1),(8,'2025-05-27 13:03:59.684509','1','Trang Chủ',3,'',16,1),(9,'2025-05-27 13:04:26.469811','3','Submissions',1,'[{\"added\": {}}]',16,1),(10,'2025-05-27 13:05:27.126139','4','Thành Viên Nhãn',1,'[{\"added\": {}}]',16,1),(11,'2025-05-27 13:06:41.321697','4','Thành Viên Nhãn',3,'',16,1),(12,'2025-05-27 13:07:00.661254','5','Users',1,'[{\"added\": {}}]',16,1),(13,'2025-05-27 13:07:23.982084','6','Contests',1,'[{\"added\": {}}]',16,1),(14,'2025-05-27 13:07:55.566258','7','Organizations',1,'[{\"added\": {}}]',16,1),(15,'2025-05-27 13:10:42.773386','7','Organizations',2,'[{\"changed\": {\"fields\": [\"Link path\"]}}]',16,1),(16,'2025-05-27 13:11:11.281573','2','Problems',2,'[{\"changed\": {\"fields\": [\"Link path\"]}}]',16,1),(17,'2025-05-27 13:11:15.832942','3','Submissions',2,'[{\"changed\": {\"fields\": [\"Link path\"]}}]',16,1),(18,'2025-05-27 13:11:20.269750','5','Users',2,'[{\"changed\": {\"fields\": [\"Link path\"]}}]',16,1),(19,'2025-05-27 13:11:24.896479','6','Contests',2,'[{\"changed\": {\"fields\": [\"Link path\"]}}]',16,1),(20,'2025-05-27 13:13:50.182318','2','Problems',2,'[]',16,1),(21,'2025-05-27 13:23:36.003645','8','Status',1,'[{\"added\": {}}]',16,1),(22,'2025-05-27 13:24:20.491146','9','runtimes',1,'[{\"added\": {}}]',16,1),(23,'2025-05-27 13:24:43.581373','9','runtimes',2,'[{\"changed\": {\"fields\": [\"Identifier\"]}}]',16,1),(24,'2025-05-27 13:39:43.821707','2','Problems',2,'[{\"changed\": {\"fields\": [\"Identifier\"]}}]',16,1),(25,'2025-05-27 13:47:06.365911','2','{{ _(\'Problem\') }}',2,'[{\"changed\": {\"fields\": [\"Label\"]}}]',16,1),(26,'2025-05-27 13:47:26.965281','2','Problem',2,'[{\"changed\": {\"fields\": [\"Label\"]}}]',16,1),(27,'2025-05-27 13:53:12.602351','2','Problems',2,'[{\"changed\": {\"fields\": [\"Identifier\", \"Label\"]}}]',16,1),(28,'2025-05-27 13:54:46.645845','2','Problems',2,'[{\"changed\": {\"fields\": [\"Identifier\"]}}]',16,1),(29,'2025-05-27 13:55:43.162312','2','Problems',2,'[{\"changed\": {\"fields\": [\"Highlight regex\"]}}]',16,1),(30,'2025-05-27 13:57:43.410595','2','Problems',2,'[{\"changed\": {\"fields\": [\"Highlight regex\"]}}]',16,1),(31,'2025-05-27 14:19:31.949546','9','Runtimes',2,'[{\"changed\": {\"fields\": [\"Label\"]}}]',16,1),(32,'2025-05-27 15:07:48.748327','1','Python 3',2,'[{\"changed\": {\"fields\": [\"Short name\", \"Common name\", \"Ace mode name\", \"Pygments name\", \"Runtime info override\"]}}]',12,1),(33,'2025-05-27 15:08:57.409052','1','Python 3',2,'[{\"changed\": {\"fields\": [\"Short name\"]}}]',12,1),(34,'2025-05-27 15:09:08.329118','2','Python2',2,'[{\"changed\": {\"fields\": [\"Short identifier\", \"Long name\", \"Short name\"]}}]',12,1),(35,'2025-05-27 15:09:34.121542','1','Python 3',2,'[]',12,1),(36,'2025-05-27 15:09:59.717283','2','Python 2',2,'[{\"changed\": {\"fields\": [\"Long name\", \"Runtime info override\"]}}]',12,1),(37,'2025-05-27 15:10:44.568063','3','PHP',1,'[{\"added\": {}}]',12,1),(38,'2025-05-27 15:10:59.898004','3','PHP',2,'[{\"changed\": {\"fields\": [\"Runtime info override\"]}}]',12,1),(39,'2025-05-27 15:14:36.160229','4','Node JS',1,'[{\"added\": {}}]',12,1),(40,'2025-05-28 14:24:00.377538','1','Bài Tập Lập Trình',1,'[{\"added\": {}}]',25,1),(41,'2025-05-28 14:27:59.808293','1','Trò chơi',1,'[{\"added\": {}}, {\"added\": {\"name\": \"language-specific resource limit\", \"object\": \"LanguageLimit object (1)\"}}, {\"added\": {\"name\": \"language-specific resource limit\", \"object\": \"LanguageLimit object (2)\"}}, {\"added\": {\"name\": \"language-specific resource limit\", \"object\": \"LanguageLimit object (3)\"}}]',19,1),(42,'2025-06-01 15:28:56.508893','1','PRO ABC',3,'',22,1),(43,'2025-06-01 15:28:56.515561','2','Proble Groud',3,'',22,1),(44,'2025-06-01 15:30:45.310848','3','Group',1,'[{\"added\": {}}]',22,1),(45,'2025-06-01 15:31:08.072814','3','Group 1',2,'[{\"changed\": {\"fields\": [\"Problem group name\"]}}]',22,1),(46,'2025-06-01 15:34:19.501137','2','sdfafsd asdfdsf s',1,'[{\"added\": {}}]',25,1),(47,'2025-06-01 15:59:38.270552','2','Trò CHơi',1,'[{\"added\": {}}]',19,1);
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
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(40,'auth','group'),(39,'auth','permission'),(41,'auth','user'),(42,'contenttypes','contenttype'),(43,'flatpages','flatpage'),(56,'impersonate','impersonationlog'),(2,'judge','blogpost'),(37,'judge','class'),(3,'judge','comment'),(4,'judge','commentlock'),(5,'judge','commentvote'),(6,'judge','contest'),(35,'judge','contestmoss'),(7,'judge','contestparticipation'),(8,'judge','contestproblem'),(9,'judge','contestsubmission'),(10,'judge','contesttag'),(11,'judge','judge'),(12,'judge','language'),(13,'judge','languagelimit'),(14,'judge','license'),(15,'judge','miscconfig'),(16,'judge','navigationbar'),(17,'judge','organization'),(18,'judge','organizationrequest'),(19,'judge','problem'),(20,'judge','problemclarification'),(21,'judge','problemdata'),(22,'judge','problemgroup'),(38,'judge','problempointsvote'),(23,'judge','problemtestcase'),(24,'judge','problemtranslation'),(25,'judge','problemtype'),(26,'judge','profile'),(27,'judge','rating'),(28,'judge','runtimeversion'),(29,'judge','solution'),(30,'judge','submission'),(34,'judge','submissionsource'),(31,'judge','submissiontestcase'),(32,'judge','ticket'),(33,'judge','ticketmessage'),(36,'judge','webauthncredential'),(45,'redirects','redirect'),(47,'registration','registrationprofile'),(48,'registration','supervisedregistrationprofile'),(49,'reversion','revision'),(50,'reversion','version'),(44,'sessions','session'),(46,'sites','site'),(51,'social_django','association'),(52,'social_django','code'),(53,'social_django','nonce'),(55,'social_django','partial'),(54,'social_django','usersocialauth');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage`
--

DROP TABLE IF EXISTS `django_flatpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_flatpage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_flatpage_url_41612362` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage`
--

LOCK TABLES `django_flatpage` WRITE;
/*!40000 ALTER TABLE `django_flatpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_flatpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage_sites`
--

DROP TABLE IF EXISTS `django_flatpage_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_flatpage_sites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flatpage_id` int NOT NULL,
  `site_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_flatpage_sites_flatpage_id_site_id_0d29d9d1_uniq` (`flatpage_id`,`site_id`),
  KEY `django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id` (`site_id`),
  CONSTRAINT `django_flatpage_sites_flatpage_id_078bbc8b_fk_django_flatpage_id` FOREIGN KEY (`flatpage_id`) REFERENCES `django_flatpage` (`id`),
  CONSTRAINT `django_flatpage_sites_site_id_bfd8ea84_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage_sites`
--

LOCK TABLES `django_flatpage_sites` WRITE;
/*!40000 ALTER TABLE `django_flatpage_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_flatpage_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-05-25 22:43:53.241238'),(2,'auth','0001_initial','2025-05-25 22:43:54.327260'),(3,'admin','0001_initial','2025-05-25 22:43:54.565714'),(4,'admin','0002_logentry_remove_auto_add','2025-05-25 22:43:54.575805'),(5,'admin','0003_logentry_add_action_flag_choices','2025-05-25 22:43:54.590245'),(6,'contenttypes','0002_remove_content_type_name','2025-05-25 22:43:54.744082'),(7,'auth','0002_alter_permission_name_max_length','2025-05-25 22:43:54.845037'),(8,'auth','0003_alter_user_email_max_length','2025-05-25 22:43:54.874475'),(9,'auth','0004_alter_user_username_opts','2025-05-25 22:43:54.888884'),(10,'auth','0005_alter_user_last_login_null','2025-05-25 22:43:54.961074'),(11,'auth','0006_require_contenttypes_0002','2025-05-25 22:43:54.968982'),(12,'auth','0007_alter_validators_add_error_messages','2025-05-25 22:43:54.979433'),(13,'auth','0008_alter_user_username_max_length','2025-05-25 22:43:55.080311'),(14,'auth','0009_alter_user_last_name_max_length','2025-05-25 22:43:55.182921'),(15,'auth','0010_alter_group_name_max_length','2025-05-25 22:43:55.207236'),(16,'auth','0011_update_proxy_permissions','2025-05-25 22:43:55.217884'),(17,'auth','0012_alter_user_first_name_max_length','2025-05-25 22:43:55.319994'),(18,'sites','0001_initial','2025-05-25 22:43:55.367003'),(19,'flatpages','0001_initial','2025-05-25 22:43:55.669775'),(20,'impersonate','0001_initial','2025-05-25 22:43:55.909262'),(21,'judge','0001_initial','2025-05-25 22:44:09.383222'),(22,'judge','0002_license','2025-05-25 22:44:09.390715'),(23,'judge','0003_license_key','2025-05-25 22:44:09.396777'),(24,'judge','0004_language_limit','2025-05-25 22:44:09.407687'),(25,'judge','0005_nav_path_len','2025-05-25 22:44:09.416570'),(26,'judge','0006_language_extension','2025-05-25 22:44:09.426595'),(27,'judge','0007_test_site_perm','2025-05-25 22:44:09.441107'),(28,'judge','0008_contestproblem_order','2025-05-25 22:44:09.450932'),(29,'judge','0009_solution_problem','2025-05-25 22:44:09.462890'),(30,'judge','0010_comment_page_index','2025-05-25 22:44:09.472265'),(31,'judge','0011_organization_is_open','2025-05-25 22:44:09.482395'),(32,'judge','0012_organization_perms','2025-05-25 22:44:09.492693'),(33,'judge','0013_private_contests','2025-05-25 22:44:09.502864'),(34,'judge','0014_multi_organization','2025-05-25 22:44:09.517620'),(35,'judge','0015_remove_single_organization','2025-05-25 22:44:09.528219'),(36,'judge','0016_organizationrequest','2025-05-25 22:44:09.540730'),(37,'judge','0017_edit_public_problem_perm','2025-05-25 22:44:09.553303'),(38,'judge','0018_django_1_9','2025-05-25 22:44:09.565359'),(39,'judge','0019_og_images','2025-05-25 22:44:09.575300'),(40,'judge','0020_profile_user_script','2025-05-25 22:44:09.585312'),(41,'judge','0021_output_prefix_override','2025-05-25 22:44:09.595124'),(42,'judge','0022_judge_last_ping','2025-05-25 22:44:09.604809'),(43,'judge','0023_contest_tag','2025-05-25 22:44:09.614669'),(44,'judge','0024_submission_judge','2025-05-25 22:44:09.621909'),(45,'judge','0025_submission_rejudge_flag','2025-05-25 22:44:09.627215'),(46,'judge','0026_change_public_visibility_perm','2025-05-25 22:44:09.637323'),(47,'judge','0027_bridge_revert','2025-05-25 22:44:09.645804'),(48,'judge','0028_judge_ip','2025-05-25 22:44:09.656040'),(49,'judge','0029_problem_translation','2025-05-25 22:44:09.665865'),(50,'judge','0030_remove_contest_profile','2025-05-25 22:44:09.675685'),(51,'judge','0031_judge_versions','2025-05-25 22:44:09.685292'),(52,'judge','0032_hide_problem_tags_in_contest','2025-05-25 22:44:09.694656'),(53,'judge','0033_proper_pretest_support','2025-05-25 22:44:09.703971'),(54,'judge','0034_submission_is_pretested','2025-05-25 22:44:09.713753'),(55,'judge','0035_contest_spectate_mode','2025-05-25 22:44:09.723859'),(56,'judge','0036_contest_participation_unique','2025-05-25 22:44:09.739530'),(57,'judge','0037_user_count_ac_rate_field','2025-05-25 22:44:09.749345'),(58,'judge','0038_profile_problem_count','2025-05-25 22:44:09.759132'),(59,'judge','0039_remove_contest_is_external','2025-05-25 22:44:09.769121'),(60,'judge','0040_profile_math_engine','2025-05-25 22:44:09.784033'),(61,'judge','0041_virtual_contest_participation','2025-05-25 22:44:09.797074'),(62,'judge','0042_remove_spectate_field','2025-05-25 22:44:09.810136'),(63,'judge','0043_contest_user_count','2025-05-25 22:44:09.822984'),(64,'judge','0044_organization_slots','2025-05-25 22:44:09.835937'),(65,'judge','0045_organization_access_code','2025-05-25 22:44:09.848483'),(66,'judge','0046_blogpost_authors','2025-05-25 22:44:09.861263'),(67,'judge','0047_site_managed_data','2025-05-25 22:44:09.874480'),(68,'judge','0048_site_managed_checkers','2025-05-25 22:44:09.887191'),(69,'judge','0049_contest_summary','2025-05-25 22:44:09.899984'),(70,'judge','0050_problem_tester_field','2025-05-25 22:44:09.912946'),(71,'judge','0051_was_rejudged_field','2025-05-25 22:44:09.925570'),(72,'judge','0052_switch_to_durationfield','2025-05-25 22:44:09.932436'),(73,'judge','0053_opengraph_problems','2025-05-25 22:44:09.937715'),(74,'judge','0054_tickets','2025-05-25 22:44:09.943797'),(75,'judge','0055_add_performance_points','2025-05-25 22:44:09.949529'),(76,'judge','0056_ticket_is_open','2025-05-25 22:44:09.955769'),(77,'judge','0057_blue_pretests','2025-05-25 22:44:09.961461'),(78,'judge','0058_problem_curator_field','2025-05-25 22:44:09.968899'),(79,'judge','0059_problem_is_manually_managed','2025-05-25 22:44:09.976190'),(80,'judge','0060_contest_clarifications','2025-05-25 22:44:09.982232'),(81,'judge','0061_language_template','2025-05-25 22:44:09.989455'),(82,'judge','0062_add_contest_submission_limit','2025-05-25 22:44:09.995332'),(83,'judge','0063_new_solutions','2025-05-25 22:44:10.005148'),(84,'judge','0064_unique_solution','2025-05-25 22:44:10.013534'),(85,'judge','0065_blogpost_perms','2025-05-25 22:44:10.022741'),(86,'judge','0066_submission_date_index','2025-05-25 22:44:10.030922'),(87,'judge','0067_contest_access_code','2025-05-25 22:44:10.041997'),(88,'judge','0068_hide_scoreboard','2025-05-25 22:44:10.051423'),(89,'judge','0069_judge_blocking','2025-05-25 22:44:10.070008'),(90,'judge','0070_organization_slug','2025-05-25 22:44:10.083739'),(91,'judge','0071_organization_private_problems','2025-05-25 22:44:10.091709'),(92,'judge','0072_contest_logo_override_image','2025-05-25 22:44:10.105803'),(93,'judge','0073_comment_lock','2025-05-25 22:44:10.117379'),(94,'judge','0074_totp','2025-05-25 22:44:10.127253'),(95,'judge','0075_organization_admin_reverse','2025-05-25 22:44:10.134833'),(96,'judge','0076_problem_statistics','2025-05-25 22:44:10.143701'),(97,'judge','0077_remove_organization_key','2025-05-25 22:44:10.152938'),(98,'judge','0078_add_user_notes','2025-05-25 22:44:10.159564'),(99,'judge','0079_remove_comment_title','2025-05-25 22:44:10.165006'),(100,'judge','0080_contest_banned_users','2025-05-25 22:44:10.170731'),(101,'judge','0081_unlisted_users','2025-05-25 22:44:10.177061'),(102,'judge','0082_remove_profile_name','2025-05-25 22:44:10.183116'),(103,'judge','0083_extended_feedback','2025-05-25 22:44:10.189158'),(104,'judge','0084_contest_formats','2025-05-25 22:44:10.195322'),(105,'judge','0085_submission_source','2025-05-25 22:44:10.563636'),(106,'judge','0086_rating_ceiling','2025-05-25 22:44:10.860084'),(107,'judge','0087_problem_resource_limits','2025-05-25 22:44:11.340931'),(108,'judge','0088_private_contests','2025-05-25 22:44:12.037897'),(109,'judge','0089_submission_to_contest','2025-05-25 22:44:12.292651'),(110,'judge','0090_fix_contest_visibility','2025-05-25 22:44:12.302478'),(111,'judge','0091_compiler_message_ansi2html','2025-05-25 22:44:12.369206'),(112,'judge','0092_contest_clone','2025-05-25 22:44:12.413336'),(113,'judge','0093_contest_moss','2025-05-25 22:44:12.820566'),(114,'judge','0094_submissiontestcase_unique_together','2025-05-25 22:44:12.877260'),(115,'judge','0095_organization_logo_override','2025-05-25 22:44:13.139794'),(116,'judge','0096_profile_language_set_default','2025-05-25 22:44:13.510770'),(117,'judge','0097_participation_is_disqualified','2025-05-25 22:44:13.703235'),(118,'judge','0098_view_contest_scoreboard','2025-05-25 22:44:14.007265'),(119,'judge','0099_contest_problem_label','2025-05-25 22:44:14.242989'),(120,'judge','0100_contest_visiblity_permission','2025-05-25 22:44:14.288089'),(121,'judge','0101_submission_judged_date','2025-05-25 22:44:14.479099'),(122,'judge','0102_api_token','2025-05-25 22:44:14.649332'),(123,'judge','0103_contest_participation_tiebreak_field','2025-05-25 22:44:14.871704'),(124,'judge','0104_contestproblem_maxsubs','2025-05-25 22:44:15.039446'),(125,'judge','0105_webauthn','2025-05-25 22:44:15.481050'),(126,'judge','0106_user_data_download','2025-05-25 22:44:15.651103'),(127,'judge','0107_submission_lock','2025-05-25 22:44:16.229829'),(128,'judge','0108_bleach_problems','2025-05-25 22:44:16.459473'),(129,'judge','0109_scratch_codes','2025-05-25 22:44:16.646184'),(130,'judge','0110_default_output_prefix_override','2025-05-25 22:44:16.705247'),(131,'judge','0111_blank_assignees_ticket','2025-05-25 22:44:16.757208'),(132,'judge','0112_language_extensions','2025-05-25 22:44:16.812828'),(133,'judge','0113_contest_decimal_points','2025-05-25 22:44:17.149120'),(134,'judge','0114_remove_org_registrant','2025-05-25 22:44:17.452236'),(135,'judge','0115_contest_scoreboard_visibility','2025-05-25 22:44:17.840772'),(136,'judge','0116_contest_curator_and_tester','2025-05-25 22:44:18.519879'),(137,'judge','0117_remove_private_messages','2025-05-25 22:44:18.630094'),(138,'judge','0118_convert_to_dates','2025-05-25 22:44:19.758364'),(139,'judge','0119_hide_problem_authors','2025-05-25 22:44:19.936451'),(140,'judge','0120_totp_no_reuse','2025-05-25 22:44:20.203485'),(141,'judge','0121_per_problem_sub_access_control','2025-05-25 22:44:20.445700'),(142,'judge','0122_username_display_override','2025-05-25 22:44:20.683415'),(143,'judge','0123_contest_rating_elo_mmr','2025-05-25 22:44:21.262309'),(144,'judge','0124_contest_show_short_display','2025-05-25 22:44:21.436003'),(145,'judge','0125_organization_classes','2025-05-25 22:44:22.749969'),(146,'judge','0126_infer_private_bools','2025-05-25 22:44:22.916758'),(147,'judge','0127_tester_see_scoreboard','2025-05-25 22:44:23.152856'),(148,'judge','0128_limit_join_organizations','2025-05-25 22:44:23.623819'),(149,'judge','0129_see_scoreboard_subs','2025-05-25 22:44:24.227911'),(150,'judge','0130_blogpost_change_visibility','2025-05-25 22:44:24.259325'),(151,'judge','0131_spectate_contests','2025-05-25 22:44:24.770446'),(152,'judge','0132_no_self_vote','2025-05-25 22:44:24.824214'),(153,'judge','0133_add_problem_data_hints','2025-05-25 22:44:28.621097'),(154,'judge','0134_add_voting_functionality','2025-05-25 22:44:29.272916'),(155,'judge','0135_disable_judge','2025-05-25 22:44:29.404644'),(156,'judge','0136_remove_zombie_editorials','2025-05-25 22:44:29.768258'),(157,'judge','0137_profile_site_theme','2025-05-25 22:44:30.010464'),(158,'judge','0138_dark_ace_theme','2025-05-25 22:44:30.098481'),(159,'judge','0139_user_index_refactor','2025-05-25 22:44:30.896737'),(160,'judge','0140_submission_index_refactor','2025-05-25 22:44:31.413821'),(161,'judge','0141_submission_extra_index','2025-05-25 22:44:31.846765'),(162,'judge','0142_comment_revision_count','2025-05-25 22:44:32.053963'),(163,'judge','0143_contest_problem_rank_index','2025-05-25 22:44:32.130527'),(164,'judge','0144_submission_index_cleanup','2025-05-25 22:44:33.717649'),(165,'judge','0145_site_data_batch_prerequisites','2025-05-25 22:44:33.836872'),(166,'judge','0146_comment_revision_count_v2','2025-05-25 22:44:33.942878'),(167,'judge','0147_judge_add_tiers','2025-05-25 22:44:34.137816'),(168,'judge','0148_clarify_rate_all_desc','2025-05-25 22:44:34.216246'),(169,'judge','0149_add_organization_private_problems_permission','2025-05-25 22:44:34.336890'),(170,'judge','0150_add_performance_ceiling','2025-05-25 22:44:34.520557'),(171,'redirects','0001_initial','2025-05-25 22:44:34.698936'),(172,'redirects','0002_alter_redirect_new_path_help_text','2025-05-25 22:44:34.709349'),(173,'registration','0001_initial','2025-05-25 22:44:34.886132'),(174,'registration','0002_registrationprofile_activated','2025-05-25 22:44:34.983807'),(175,'registration','0003_migrate_activatedstatus','2025-05-25 22:44:35.033510'),(176,'registration','0004_supervisedregistrationprofile','2025-05-25 22:44:35.198777'),(177,'registration','0005_activation_key_sha256','2025-05-25 22:44:35.305904'),(178,'reversion','0001_squashed_0004_auto_20160611_1202','2025-05-25 22:44:35.909718'),(179,'reversion','0002_add_index_on_version_for_content_type_and_db','2025-05-25 22:44:35.955843'),(180,'sessions','0001_initial','2025-05-25 22:44:36.043903'),(181,'sites','0002_alter_domain_unique','2025-05-25 22:44:36.093657'),(182,'default','0001_initial','2025-05-25 22:44:36.510836'),(183,'social_auth','0001_initial','2025-05-25 22:44:36.518157'),(184,'default','0002_add_related_name','2025-05-25 22:44:36.585461'),(185,'social_auth','0002_add_related_name','2025-05-25 22:44:36.593835'),(186,'default','0003_alter_email_max_length','2025-05-25 22:44:36.616165'),(187,'social_auth','0003_alter_email_max_length','2025-05-25 22:44:36.624404'),(188,'default','0004_auto_20160423_0400','2025-05-25 22:44:36.642507'),(189,'social_auth','0004_auto_20160423_0400','2025-05-25 22:44:36.651409'),(190,'social_auth','0005_auto_20160727_2333','2025-05-25 22:44:36.692600'),(191,'social_django','0006_partial','2025-05-25 22:44:36.752937'),(192,'social_django','0007_code_timestamp','2025-05-25 22:44:36.885235'),(193,'social_django','0008_partial_timestamp','2025-05-25 22:44:37.009037'),(194,'social_django','0009_auto_20191118_0520','2025-05-25 22:44:37.229954'),(195,'social_django','0010_uid_db_index','2025-05-25 22:44:37.276719'),(196,'judge','0001_squashed_0084_contest_formats','2025-05-25 22:44:37.291518'),(197,'social_django','0003_alter_email_max_length','2025-05-25 22:44:37.297998'),(198,'social_django','0002_add_related_name','2025-05-25 22:44:37.309619'),(199,'social_django','0004_auto_20160423_0400','2025-05-25 22:44:37.315036'),(200,'social_django','0005_auto_20160727_2333','2025-05-25 22:44:37.321208'),(201,'social_django','0001_initial','2025-05-25 22:44:37.327326'),(202,'judge','0151_alter_contest_private_contestants_and_more','2025-05-26 13:23:12.965952');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_redirect`
--

DROP TABLE IF EXISTS `django_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_redirect` (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_id` int NOT NULL,
  `old_path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_redirect_site_id_old_path_ac5dd16b_uniq` (`site_id`,`old_path`),
  KEY `django_redirect_old_path_c6cc94d3` (`old_path`),
  CONSTRAINT `django_redirect_site_id_c3e37341_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_redirect`
--

LOCK TABLES `django_redirect` WRITE;
/*!40000 ALTER TABLE `django_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('k6rq16fxl3sxcv6uixqek0dwoecnt5s3','.eJxVjEEOgyAQRe_CuiGA0qlddu8ZyMCM1daAAY2LpndvSdy4_O-9_I9YsJQ9ZXLLHpnEfcC58EU43NbRbYWzm_5UaHFiHsObYxX0wvhMMqS45snLmsjDFtkn4vlxtKeDEctYb-E6eEvcaVCAjbUDGssBjL4xGKsaYGx9nQAEHWmPjQ6mQ0Wt1UGJ7w8CCD_d:1uKJsn:A1dS_gz_4QAFjTj091r37qComR_mR0Rc_nU8HuGbRYM','2025-06-11 16:44:01.230679'),('pu4ylju9jxv2lqd3m2gkhmg7sedg1h1k','.eJxVjEEOgyAQRe_CuiGA0qlddu8ZyMCM1daAAY2LpndvSdy4_O-9_I9YsJQ9ZXLLHpnEfcC58EU43NbRbYWzm_5UaHFiHsObYxX0wvhMMqS45snLmsjDFtkn4vlxtKeDEctYb-E6eEvcaVCAjbUDGssBjL4xGKsaYGx9nQAEHWmPjQ6mQ0Wt1UGJ7w8CCD_d:1uLz4T:QjDTaoGzRdHdEG5z9LKaR4w-PoK08_JMOMobXRxqPPU','2025-06-16 06:54:57.967768');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com'),(2,'kaiwa.vn','KAIWA');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impersonate_impersonationlog`
--

DROP TABLE IF EXISTS `impersonate_impersonationlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impersonate_impersonationlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_started_at` datetime(6) DEFAULT NULL,
  `session_ended_at` datetime(6) DEFAULT NULL,
  `impersonating_id` int NOT NULL,
  `impersonator_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `impersonate_imperson_impersonating_id_afd114fc_fk_auth_user` (`impersonating_id`),
  KEY `impersonate_imperson_impersonator_id_1ecfe8ce_fk_auth_user` (`impersonator_id`),
  CONSTRAINT `impersonate_imperson_impersonating_id_afd114fc_fk_auth_user` FOREIGN KEY (`impersonating_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `impersonate_imperson_impersonator_id_1ecfe8ce_fk_auth_user` FOREIGN KEY (`impersonator_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impersonate_impersonationlog`
--

LOCK TABLES `impersonate_impersonationlog` WRITE;
/*!40000 ALTER TABLE `impersonate_impersonationlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `impersonate_impersonationlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_blogpost`
--

DROP TABLE IF EXISTS `judge_blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_blogpost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `sticky` tinyint(1) NOT NULL,
  `publish_on` datetime(6) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_blogpost_slug_eb303bae` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_blogpost`
--

LOCK TABLES `judge_blogpost` WRITE;
/*!40000 ALTER TABLE `judge_blogpost` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_blogpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_blogpost_authors`
--

DROP TABLE IF EXISTS `judge_blogpost_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_blogpost_authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blogpost_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_blogpost_authors_blogpost_id_profile_id_e53f2daf_uniq` (`blogpost_id`,`profile_id`),
  KEY `judge_blogpost_authors_profile_id_18d1d3e2_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_blogpost_authors_blogpost_id_43745d7c_fk_judge_blogpost_id` FOREIGN KEY (`blogpost_id`) REFERENCES `judge_blogpost` (`id`),
  CONSTRAINT `judge_blogpost_authors_profile_id_18d1d3e2_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_blogpost_authors`
--

LOCK TABLES `judge_blogpost_authors` WRITE;
/*!40000 ALTER TABLE `judge_blogpost_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_blogpost_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_class`
--

DROP TABLE IF EXISTS `judge_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `access_code` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `judge_class_organization_id_61de0a34_fk_judge_organization_id` (`organization_id`),
  KEY `judge_class_slug_17cf0657` (`slug`),
  CONSTRAINT `judge_class_organization_id_61de0a34_fk_judge_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_class`
--

LOCK TABLES `judge_class` WRITE;
/*!40000 ALTER TABLE `judge_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_class_admins`
--

DROP TABLE IF EXISTS `judge_class_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_class_admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_class_admins_class_id_profile_id_57d3c53c_uniq` (`class_id`,`profile_id`),
  KEY `judge_class_admins_profile_id_101db2a9_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_class_admins_class_id_bfb8582e_fk_judge_class_id` FOREIGN KEY (`class_id`) REFERENCES `judge_class` (`id`),
  CONSTRAINT `judge_class_admins_profile_id_101db2a9_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_class_admins`
--

LOCK TABLES `judge_class_admins` WRITE;
/*!40000 ALTER TABLE `judge_class_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_class_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_class_members`
--

DROP TABLE IF EXISTS `judge_class_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_class_members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_class_members_class_id_profile_id_49696836_uniq` (`class_id`,`profile_id`),
  KEY `judge_class_members_profile_id_e78dc0af_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_class_members_class_id_b96416d5_fk_judge_class_id` FOREIGN KEY (`class_id`) REFERENCES `judge_class` (`id`),
  CONSTRAINT `judge_class_members_profile_id_e78dc0af_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_class_members`
--

LOCK TABLES `judge_class_members` WRITE;
/*!40000 ALTER TABLE `judge_class_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_class_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_comment`
--

DROP TABLE IF EXISTS `judge_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime(6) NOT NULL,
  `page` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `lft` int unsigned NOT NULL,
  `rght` int unsigned NOT NULL,
  `tree_id` int unsigned NOT NULL,
  `level` int unsigned NOT NULL,
  `author_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `revisions` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_comment_author_id_ec3f8371_fk_judge_profile_id` (`author_id`),
  KEY `judge_comment_page_66eb6c11` (`page`),
  KEY `judge_comment_tree_id_cdde24bd` (`tree_id`),
  KEY `judge_comment_parent_id_e16fe797` (`parent_id`),
  CONSTRAINT `judge_comment_author_id_ec3f8371_fk_judge_profile_id` FOREIGN KEY (`author_id`) REFERENCES `judge_profile` (`id`),
  CONSTRAINT `judge_comment_parent_id_e16fe797_fk_judge_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `judge_comment` (`id`),
  CONSTRAINT `judge_comment_chk_1` CHECK ((`lft` >= 0)),
  CONSTRAINT `judge_comment_chk_2` CHECK ((`rght` >= 0)),
  CONSTRAINT `judge_comment_chk_3` CHECK ((`tree_id` >= 0)),
  CONSTRAINT `judge_comment_chk_4` CHECK ((`level` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_comment`
--

LOCK TABLES `judge_comment` WRITE;
/*!40000 ALTER TABLE `judge_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_commentlock`
--

DROP TABLE IF EXISTS `judge_commentlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_commentlock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_commentlock_page_3aec2c30` (`page`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_commentlock`
--

LOCK TABLES `judge_commentlock` WRITE;
/*!40000 ALTER TABLE `judge_commentlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_commentlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_commentvote`
--

DROP TABLE IF EXISTS `judge_commentvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_commentvote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `score` int NOT NULL,
  `comment_id` int NOT NULL,
  `voter_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_commentvote_voter_id_comment_id_2fa9cd9b_uniq` (`voter_id`,`comment_id`),
  KEY `judge_commentvote_comment_id_9711d946_fk_judge_comment_id` (`comment_id`),
  CONSTRAINT `judge_commentvote_comment_id_9711d946_fk_judge_comment_id` FOREIGN KEY (`comment_id`) REFERENCES `judge_comment` (`id`),
  CONSTRAINT `judge_commentvote_voter_id_49326699_fk_judge_profile_id` FOREIGN KEY (`voter_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_commentvote`
--

LOCK TABLES `judge_commentvote` WRITE;
/*!40000 ALTER TABLE `judge_commentvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_commentvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest`
--

DROP TABLE IF EXISTS `judge_contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `time_limit` bigint DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL,
  `is_rated` tinyint(1) NOT NULL,
  `use_clarifications` tinyint(1) NOT NULL,
  `rate_all` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `hide_problem_tags` tinyint(1) NOT NULL,
  `run_pretests_only` tinyint(1) NOT NULL,
  `og_image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_override_image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_count` int NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format_config` longtext COLLATE utf8mb4_unicode_ci,
  `rating_ceiling` int DEFAULT NULL,
  `rating_floor` int DEFAULT NULL,
  `is_organization_private` tinyint(1) NOT NULL,
  `problem_label_script` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb4''),
  `points_precision` int NOT NULL,
  `scoreboard_visibility` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locked_after` datetime(6) DEFAULT NULL,
  `hide_problem_authors` tinyint(1) NOT NULL,
  `show_short_display` tinyint(1) NOT NULL,
  `tester_see_scoreboard` tinyint(1) NOT NULL,
  `limit_join_organizations` tinyint(1) NOT NULL,
  `tester_see_submissions` tinyint(1) NOT NULL,
  `performance_ceiling_override` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `judge_contest_name_23b5c29c` (`name`),
  KEY `judge_contest_start_time_8dd80870` (`start_time`),
  KEY `judge_contest_end_time_f0179778` (`end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest`
--

LOCK TABLES `judge_contest` WRITE;
/*!40000 ALTER TABLE `judge_contest` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_authors`
--

DROP TABLE IF EXISTS `judge_contest_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_organizers_contest_id_profile_id_35f37708_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_organizers_profile_id_fe54f029_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_contest_organizers_contest_id_266a7461_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_organizers_profile_id_fe54f029_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_authors`
--

LOCK TABLES `judge_contest_authors` WRITE;
/*!40000 ALTER TABLE `judge_contest_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_banned_users`
--

DROP TABLE IF EXISTS `judge_contest_banned_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_banned_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_banned_users_contest_id_profile_id_b0570b33_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_banned_profile_id_ae615b59_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_contest_banned_contest_id_14d2192a_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_banned_profile_id_ae615b59_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_banned_users`
--

LOCK TABLES `judge_contest_banned_users` WRITE;
/*!40000 ALTER TABLE `judge_contest_banned_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_banned_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_classes`
--

DROP TABLE IF EXISTS `judge_contest_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_classes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `class_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_classes_contest_id_class_id_68b80e19_uniq` (`contest_id`,`class_id`),
  KEY `judge_contest_classes_class_id_ec8aa197_fk_judge_class_id` (`class_id`),
  CONSTRAINT `judge_contest_classes_class_id_ec8aa197_fk_judge_class_id` FOREIGN KEY (`class_id`) REFERENCES `judge_class` (`id`),
  CONSTRAINT `judge_contest_classes_contest_id_23496dec_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_classes`
--

LOCK TABLES `judge_contest_classes` WRITE;
/*!40000 ALTER TABLE `judge_contest_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_curators`
--

DROP TABLE IF EXISTS `judge_contest_curators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_curators` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_curators_contest_id_profile_id_6bcc5bc0_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_curators_profile_id_73c4ada2_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_contest_curators_contest_id_06a850b7_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_curators_profile_id_73c4ada2_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_curators`
--

LOCK TABLES `judge_contest_curators` WRITE;
/*!40000 ALTER TABLE `judge_contest_curators` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_curators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_join_organizations`
--

DROP TABLE IF EXISTS `judge_contest_join_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_join_organizations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `organization_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_join_organ_contest_id_organization__0ec22fca_uniq` (`contest_id`,`organization_id`),
  KEY `judge_contest_join_o_organization_id_3a85e2ca_fk_judge_org` (`organization_id`),
  CONSTRAINT `judge_contest_join_o_contest_id_af9687f0_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_join_o_organization_id_3a85e2ca_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_join_organizations`
--

LOCK TABLES `judge_contest_join_organizations` WRITE;
/*!40000 ALTER TABLE `judge_contest_join_organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_join_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_organizations`
--

DROP TABLE IF EXISTS `judge_contest_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_organizations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `organization_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_organizati_contest_id_organization__f8aafa91_uniq` (`contest_id`,`organization_id`),
  KEY `judge_contest_organi_organization_id_6ccef0d9_fk_judge_org` (`organization_id`),
  CONSTRAINT `judge_contest_organi_contest_id_8b6686ce_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_organi_organization_id_6ccef0d9_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_organizations`
--

LOCK TABLES `judge_contest_organizations` WRITE;
/*!40000 ALTER TABLE `judge_contest_organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_private_contestants`
--

DROP TABLE IF EXISTS `judge_contest_private_contestants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_private_contestants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_private_co_contest_id_profile_id_ef23dc8d_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_privat_profile_id_34a11bc5_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_contest_privat_contest_id_a30921fe_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_privat_profile_id_34a11bc5_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_private_contestants`
--

LOCK TABLES `judge_contest_private_contestants` WRITE;
/*!40000 ALTER TABLE `judge_contest_private_contestants` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_private_contestants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_rate_exclude`
--

DROP TABLE IF EXISTS `judge_contest_rate_exclude`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_rate_exclude` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_rate_exclude_contest_id_profile_id_2b34d7a9_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_rate_e_profile_id_6c9400fa_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_contest_rate_e_contest_id_30174232_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_rate_e_profile_id_6c9400fa_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_rate_exclude`
--

LOCK TABLES `judge_contest_rate_exclude` WRITE;
/*!40000 ALTER TABLE `judge_contest_rate_exclude` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_rate_exclude` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_spectators`
--

DROP TABLE IF EXISTS `judge_contest_spectators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_spectators` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_spectators_contest_id_profile_id_681c4e60_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_spectators_profile_id_bbe7dd96_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_contest_spectators_contest_id_1bee62ed_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_spectators_profile_id_bbe7dd96_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_spectators`
--

LOCK TABLES `judge_contest_spectators` WRITE;
/*!40000 ALTER TABLE `judge_contest_spectators` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_spectators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_tags`
--

DROP TABLE IF EXISTS `judge_contest_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `contesttag_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_tags_contest_id_contesttag_id_eedb695b_uniq` (`contest_id`,`contesttag_id`),
  KEY `judge_contest_tags_contesttag_id_5d9788bd_fk_judge_contesttag_id` (`contesttag_id`),
  CONSTRAINT `judge_contest_tags_contest_id_998f99f7_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_tags_contesttag_id_5d9788bd_fk_judge_contesttag_id` FOREIGN KEY (`contesttag_id`) REFERENCES `judge_contesttag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_tags`
--

LOCK TABLES `judge_contest_tags` WRITE;
/*!40000 ALTER TABLE `judge_contest_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_testers`
--

DROP TABLE IF EXISTS `judge_contest_testers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_testers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_testers_contest_id_profile_id_52e96be5_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_testers_profile_id_d62d1c9b_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_contest_testers_contest_id_6122faf2_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_testers_profile_id_d62d1c9b_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_testers`
--

LOCK TABLES `judge_contest_testers` WRITE;
/*!40000 ALTER TABLE `judge_contest_testers` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_testers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_view_contest_scoreboard`
--

DROP TABLE IF EXISTS `judge_contest_view_contest_scoreboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_view_contest_scoreboard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_view_conte_contest_id_profile_id_5fbd08d1_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_view_c_profile_id_60bb0f4a_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_contest_view_c_contest_id_30aa03fe_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_view_c_profile_id_60bb0f4a_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_view_contest_scoreboard`
--

LOCK TABLES `judge_contest_view_contest_scoreboard` WRITE;
/*!40000 ALTER TABLE `judge_contest_view_contest_scoreboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_view_contest_scoreboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contest_view_contest_submissions`
--

DROP TABLE IF EXISTS `judge_contest_view_contest_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contest_view_contest_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contest_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contest_view_conte_contest_id_profile_id_129488b6_uniq` (`contest_id`,`profile_id`),
  KEY `judge_contest_view_c_profile_id_7d10b3c7_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_contest_view_c_contest_id_d5c1c6cb_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contest_view_c_profile_id_7d10b3c7_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contest_view_contest_submissions`
--

LOCK TABLES `judge_contest_view_contest_submissions` WRITE;
/*!40000 ALTER TABLE `judge_contest_view_contest_submissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contest_view_contest_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contestmoss`
--

DROP TABLE IF EXISTS `judge_contestmoss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contestmoss` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission_count` int unsigned NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contest_id` int NOT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contestmoss_contest_id_problem_id_language_52b59ba8_uniq` (`contest_id`,`problem_id`,`language`),
  KEY `judge_contestmoss_problem_id_5d8c1e4e_fk_judge_problem_id` (`problem_id`),
  CONSTRAINT `judge_contestmoss_contest_id_24908198_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contestmoss_problem_id_5d8c1e4e_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_contestmoss_chk_1` CHECK ((`submission_count` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contestmoss`
--

LOCK TABLES `judge_contestmoss` WRITE;
/*!40000 ALTER TABLE `judge_contestmoss` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contestmoss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contestparticipation`
--

DROP TABLE IF EXISTS `judge_contestparticipation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contestparticipation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start` datetime(6) NOT NULL,
  `score` double NOT NULL,
  `cumtime` int unsigned NOT NULL,
  `virtual` int NOT NULL,
  `format_data` longtext COLLATE utf8mb4_unicode_ci,
  `contest_id` int NOT NULL,
  `user_id` int NOT NULL,
  `is_disqualified` tinyint(1) NOT NULL,
  `tiebreaker` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contestparticipati_contest_id_user_id_virtu_dc257b0c_uniq` (`contest_id`,`user_id`,`virtual`),
  KEY `judge_contestparticipation_user_id_5896ee2e_fk_judge_profile_id` (`user_id`),
  KEY `judge_contestparticipation_score_4098b84f` (`score`),
  CONSTRAINT `judge_contestpartici_contest_id_ab097823_fk_judge_con` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contestparticipation_user_id_5896ee2e_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`),
  CONSTRAINT `judge_contestparticipation_chk_1` CHECK ((`cumtime` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contestparticipation`
--

LOCK TABLES `judge_contestparticipation` WRITE;
/*!40000 ALTER TABLE `judge_contestparticipation` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contestparticipation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contestproblem`
--

DROP TABLE IF EXISTS `judge_contestproblem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contestproblem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `points` int NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `is_pretested` tinyint(1) NOT NULL,
  `order` int unsigned NOT NULL,
  `output_prefix_override` int DEFAULT NULL,
  `max_submissions` int DEFAULT NULL,
  `contest_id` int NOT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_contestproblem_problem_id_contest_id_4ae77fe0_uniq` (`problem_id`,`contest_id`),
  KEY `judge_contestproblem_contest_id_b28b7107_fk_judge_contest_id` (`contest_id`),
  KEY `judge_contestproblem_order_05ce0638` (`order`),
  CONSTRAINT `judge_contestproblem_contest_id_b28b7107_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_contestproblem_problem_id_fc63c700_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_contestproblem_chk_1` CHECK ((`order` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contestproblem`
--

LOCK TABLES `judge_contestproblem` WRITE;
/*!40000 ALTER TABLE `judge_contestproblem` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contestproblem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contestsubmission`
--

DROP TABLE IF EXISTS `judge_contestsubmission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contestsubmission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `points` double NOT NULL,
  `is_pretest` tinyint(1) NOT NULL,
  `participation_id` int NOT NULL,
  `problem_id` int NOT NULL,
  `submission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `submission_id` (`submission_id`),
  KEY `judge_contestsubmiss_participation_id_cf83bbb0_fk_judge_con` (`participation_id`),
  KEY `judge_contestsubmiss_problem_id_1b1240d4_fk_judge_con` (`problem_id`),
  CONSTRAINT `judge_contestsubmiss_participation_id_cf83bbb0_fk_judge_con` FOREIGN KEY (`participation_id`) REFERENCES `judge_contestparticipation` (`id`),
  CONSTRAINT `judge_contestsubmiss_problem_id_1b1240d4_fk_judge_con` FOREIGN KEY (`problem_id`) REFERENCES `judge_contestproblem` (`id`),
  CONSTRAINT `judge_contestsubmiss_submission_id_1384e5aa_fk_judge_sub` FOREIGN KEY (`submission_id`) REFERENCES `judge_submission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contestsubmission`
--

LOCK TABLES `judge_contestsubmission` WRITE;
/*!40000 ALTER TABLE `judge_contestsubmission` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contestsubmission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_contesttag`
--

DROP TABLE IF EXISTS `judge_contesttag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_contesttag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_contesttag`
--

LOCK TABLES `judge_contesttag` WRITE;
/*!40000 ALTER TABLE `judge_contesttag` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_contesttag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_judge`
--

DROP TABLE IF EXISTS `judge_judge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_judge` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `auth_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_blocked` tinyint(1) NOT NULL,
  `online` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `ping` double DEFAULT NULL,
  `load` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` char(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL,
  `tier` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  CONSTRAINT `judge_judge_chk_1` CHECK ((`tier` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_judge`
--

LOCK TABLES `judge_judge` WRITE;
/*!40000 ALTER TABLE `judge_judge` DISABLE KEYS */;
INSERT INTO `judge_judge` VALUES (1,'Test','2025-05-27 13:01:35.669183','859XIU0NviI6EqsK0opnKCccPg+eT8WUf0d/veOTImAO9fAtCm2lOl9FRog3v+qqmOMARnAfwn8b2l5sQ/n3TlVxxWKEF34CuyNB',0,0,NULL,NULL,NULL,'',NULL,0,1);
/*!40000 ALTER TABLE `judge_judge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_judge_problems`
--

DROP TABLE IF EXISTS `judge_judge_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_judge_problems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `judge_id` int NOT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_judge_problems_judge_id_problem_id_7cc4b18b_uniq` (`judge_id`,`problem_id`),
  KEY `judge_judge_problems_problem_id_fa0f569c_fk_judge_problem_id` (`problem_id`),
  CONSTRAINT `judge_judge_problems_judge_id_e0c28fa3_fk_judge_judge_id` FOREIGN KEY (`judge_id`) REFERENCES `judge_judge` (`id`),
  CONSTRAINT `judge_judge_problems_problem_id_fa0f569c_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_judge_problems`
--

LOCK TABLES `judge_judge_problems` WRITE;
/*!40000 ALTER TABLE `judge_judge_problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_judge_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_judge_runtimes`
--

DROP TABLE IF EXISTS `judge_judge_runtimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_judge_runtimes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `judge_id` int NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_judge_runtimes_judge_id_language_id_ececbd6e_uniq` (`judge_id`,`language_id`),
  KEY `judge_judge_runtimes_language_id_9575fc7b_fk_judge_language_id` (`language_id`),
  CONSTRAINT `judge_judge_runtimes_judge_id_770ad6a5_fk_judge_judge_id` FOREIGN KEY (`judge_id`) REFERENCES `judge_judge` (`id`),
  CONSTRAINT `judge_judge_runtimes_language_id_9575fc7b_fk_judge_language_id` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_judge_runtimes`
--

LOCK TABLES `judge_judge_runtimes` WRITE;
/*!40000 ALTER TABLE `judge_judge_runtimes` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_judge_runtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_language`
--

DROP TABLE IF EXISTS `judge_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `common_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ace` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pygments` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_language`
--

LOCK TABLES `judge_language` WRITE;
/*!40000 ALTER TABLE `judge_language` DISABLE KEYS */;
INSERT INTO `judge_language` VALUES (1,'PY3','Python 3',NULL,'','','','','','','py'),(2,'PY2','Python 2','PY2','Python','Python','Python','','python 2.7.18','','Python'),(3,'PHP','PHP','PHP','PHP','PHP','PHP','','php 8.4.6','','PHP'),(4,'Node','Node JS','Node','Node','Node','Node','','node 20.19.2','','js');
/*!40000 ALTER TABLE `judge_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_languagelimit`
--

DROP TABLE IF EXISTS `judge_languagelimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_languagelimit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time_limit` double NOT NULL,
  `memory_limit` int NOT NULL,
  `language_id` int NOT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_languagelimit_problem_id_language_id_fbd3d3fc_uniq` (`problem_id`,`language_id`),
  KEY `judge_languagelimit_language_id_b81fe043_fk_judge_language_id` (`language_id`),
  CONSTRAINT `judge_languagelimit_language_id_b81fe043_fk_judge_language_id` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`),
  CONSTRAINT `judge_languagelimit_problem_id_bb544679_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_languagelimit`
--

LOCK TABLES `judge_languagelimit` WRITE;
/*!40000 ALTER TABLE `judge_languagelimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_languagelimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_license`
--

DROP TABLE IF EXISTS `judge_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_license` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_license`
--

LOCK TABLES `judge_license` WRITE;
/*!40000 ALTER TABLE `judge_license` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_miscconfig`
--

DROP TABLE IF EXISTS `judge_miscconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_miscconfig` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_miscconfig_key_bb230360` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_miscconfig`
--

LOCK TABLES `judge_miscconfig` WRITE;
/*!40000 ALTER TABLE `judge_miscconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_miscconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_navigationbar`
--

DROP TABLE IF EXISTS `judge_navigationbar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_navigationbar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order` int unsigned NOT NULL,
  `key` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regex` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lft` int unsigned NOT NULL,
  `rght` int unsigned NOT NULL,
  `tree_id` int unsigned NOT NULL,
  `level` int unsigned NOT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `judge_navigationbar_order_48c84306` (`order`),
  KEY `judge_navigationbar_tree_id_e12b3b53` (`tree_id`),
  KEY `judge_navigationbar_parent_id_806f64e3` (`parent_id`),
  CONSTRAINT `judge_navigationbar_parent_id_806f64e3_fk_judge_navigationbar_id` FOREIGN KEY (`parent_id`) REFERENCES `judge_navigationbar` (`id`),
  CONSTRAINT `judge_navigationbar_chk_1` CHECK ((`order` >= 0)),
  CONSTRAINT `judge_navigationbar_chk_2` CHECK ((`lft` >= 0)),
  CONSTRAINT `judge_navigationbar_chk_3` CHECK ((`rght` >= 0)),
  CONSTRAINT `judge_navigationbar_chk_4` CHECK ((`tree_id` >= 0)),
  CONSTRAINT `judge_navigationbar_chk_5` CHECK ((`level` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_navigationbar`
--

LOCK TABLES `judge_navigationbar` WRITE;
/*!40000 ALTER TABLE `judge_navigationbar` DISABLE KEYS */;
INSERT INTO `judge_navigationbar` VALUES (2,1,'Problems','Problems','/problems','Problems',1,2,2,0,NULL),(3,2,'submission','Submissions','/submissions','Submissions',1,2,3,0,NULL),(5,3,'users','Users','/users','users',1,2,4,0,NULL),(6,4,'contests','Contests','/contests','contests',1,2,5,0,NULL),(7,5,'organizati','Organizations','/organizations','organizations',1,2,6,0,NULL),(8,6,'status','Status','/status','status',1,2,7,0,NULL),(9,7,'Runtimes','Runtimes','/runtimes','runtimes',1,2,8,0,NULL);
/*!40000 ALTER TABLE `judge_navigationbar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_organization`
--

DROP TABLE IF EXISTS `judge_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_organization` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  `slots` int DEFAULT NULL,
  `access_code` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_override_image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_organization_slug_5e7161c5` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_organization`
--

LOCK TABLES `judge_organization` WRITE;
/*!40000 ALTER TABLE `judge_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_organization_admins`
--

DROP TABLE IF EXISTS `judge_organization_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_organization_admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_organization_admin_organization_id_profile__7528cebe_uniq` (`organization_id`,`profile_id`),
  KEY `judge_organization_a_profile_id_b5559f11_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_organization_a_organization_id_b2125a57_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`),
  CONSTRAINT `judge_organization_a_profile_id_b5559f11_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_organization_admins`
--

LOCK TABLES `judge_organization_admins` WRITE;
/*!40000 ALTER TABLE `judge_organization_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_organization_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_organizationrequest`
--

DROP TABLE IF EXISTS `judge_organizationrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_organizationrequest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime(6) NOT NULL,
  `state` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` int NOT NULL,
  `user_id` int NOT NULL,
  `request_class_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_organizationrequest_user_id_b721da81_fk_judge_profile_id` (`user_id`),
  KEY `judge_organizationre_organization_id_e2ab3e9a_fk_judge_org` (`organization_id`),
  KEY `judge_organizationre_request_class_id_e58835fe_fk_judge_cla` (`request_class_id`),
  CONSTRAINT `judge_organizationre_organization_id_e2ab3e9a_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`),
  CONSTRAINT `judge_organizationre_request_class_id_e58835fe_fk_judge_cla` FOREIGN KEY (`request_class_id`) REFERENCES `judge_class` (`id`),
  CONSTRAINT `judge_organizationrequest_user_id_b721da81_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_organizationrequest`
--

LOCK TABLES `judge_organizationrequest` WRITE;
/*!40000 ALTER TABLE `judge_organizationrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_organizationrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem`
--

DROP TABLE IF EXISTS `judge_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_limit` double NOT NULL,
  `memory_limit` int unsigned NOT NULL,
  `short_circuit` tinyint(1) NOT NULL,
  `points` double NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_manually_managed` tinyint(1) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `og_image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_count` int NOT NULL,
  `ac_rate` double NOT NULL,
  `is_organization_private` tinyint(1) NOT NULL,
  `group_id` int NOT NULL,
  `license_id` int DEFAULT NULL,
  `is_full_markup` tinyint(1) NOT NULL,
  `submission_source_visibility_mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `judge_problem_group_id_1b7ca650_fk_judge_problemgroup_id` (`group_id`),
  KEY `judge_problem_license_id_32ca8b1a_fk_judge_license_id` (`license_id`),
  KEY `judge_problem_name_c48e19b2` (`name`),
  KEY `judge_problem_is_public_c5da02a8` (`is_public`),
  KEY `judge_problem_is_manually_managed_56d3b634` (`is_manually_managed`),
  KEY `judge_problem_date_f1f729a4` (`date`),
  CONSTRAINT `judge_problem_group_id_1b7ca650_fk_judge_problemgroup_id` FOREIGN KEY (`group_id`) REFERENCES `judge_problemgroup` (`id`),
  CONSTRAINT `judge_problem_license_id_32ca8b1a_fk_judge_license_id` FOREIGN KEY (`license_id`) REFERENCES `judge_license` (`id`),
  CONSTRAINT `judge_problem_memory_limit_a129f739_check` CHECK ((`memory_limit` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem`
--

LOCK TABLES `judge_problem` WRITE;
/*!40000 ALTER TABLE `judge_problem` DISABLE KEYS */;
INSERT INTO `judge_problem` VALUES (2,'trochoi','Trò CHơi','Trò chơi là gì',10,100,0,1,0,1,0,NULL,'','',0,0,0,3,NULL,0,'F');
/*!40000 ALTER TABLE `judge_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_allowed_languages`
--

DROP TABLE IF EXISTS `judge_problem_allowed_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_allowed_languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `problem_id` int NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_allowed_la_problem_id_language_id_f6265ceb_uniq` (`problem_id`,`language_id`),
  KEY `judge_problem_allowe_language_id_67ad291b_fk_judge_lan` (`language_id`),
  CONSTRAINT `judge_problem_allowe_language_id_67ad291b_fk_judge_lan` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`),
  CONSTRAINT `judge_problem_allowe_problem_id_1020494d_fk_judge_pro` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_allowed_languages`
--

LOCK TABLES `judge_problem_allowed_languages` WRITE;
/*!40000 ALTER TABLE `judge_problem_allowed_languages` DISABLE KEYS */;
INSERT INTO `judge_problem_allowed_languages` VALUES (5,2,1),(6,2,2),(7,2,3),(8,2,4);
/*!40000 ALTER TABLE `judge_problem_allowed_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_authors`
--

DROP TABLE IF EXISTS `judge_problem_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `problem_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_authors_problem_id_profile_id_4c5741b5_uniq` (`problem_id`,`profile_id`),
  KEY `judge_problem_authors_profile_id_e9577295_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_problem_authors_problem_id_e7c69267_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_problem_authors_profile_id_e9577295_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_authors`
--

LOCK TABLES `judge_problem_authors` WRITE;
/*!40000 ALTER TABLE `judge_problem_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problem_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_banned_users`
--

DROP TABLE IF EXISTS `judge_problem_banned_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_banned_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `problem_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_banned_users_problem_id_profile_id_068a01f9_uniq` (`problem_id`,`profile_id`),
  KEY `judge_problem_banned_profile_id_4dcfff77_fk_judge_pro` (`profile_id`),
  CONSTRAINT `judge_problem_banned_problem_id_f5f73ac2_fk_judge_pro` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_problem_banned_profile_id_4dcfff77_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_banned_users`
--

LOCK TABLES `judge_problem_banned_users` WRITE;
/*!40000 ALTER TABLE `judge_problem_banned_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problem_banned_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_curators`
--

DROP TABLE IF EXISTS `judge_problem_curators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_curators` (
  `id` int NOT NULL AUTO_INCREMENT,
  `problem_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_curators_problem_id_profile_id_daffe335_uniq` (`problem_id`,`profile_id`),
  KEY `judge_problem_curators_profile_id_46e87efb_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_problem_curators_problem_id_6babca8c_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_problem_curators_profile_id_46e87efb_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_curators`
--

LOCK TABLES `judge_problem_curators` WRITE;
/*!40000 ALTER TABLE `judge_problem_curators` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problem_curators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_organizations`
--

DROP TABLE IF EXISTS `judge_problem_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_organizations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `problem_id` int NOT NULL,
  `organization_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_organizati_problem_id_organization__2745924c_uniq` (`problem_id`,`organization_id`),
  KEY `judge_problem_organi_organization_id_0eb88735_fk_judge_org` (`organization_id`),
  CONSTRAINT `judge_problem_organi_organization_id_0eb88735_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`),
  CONSTRAINT `judge_problem_organi_problem_id_d3edc28b_fk_judge_pro` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_organizations`
--

LOCK TABLES `judge_problem_organizations` WRITE;
/*!40000 ALTER TABLE `judge_problem_organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problem_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_testers`
--

DROP TABLE IF EXISTS `judge_problem_testers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_testers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `problem_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_testers_problem_id_profile_id_3ff28b2a_uniq` (`problem_id`,`profile_id`),
  KEY `judge_problem_testers_profile_id_dadcfbad_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_problem_testers_problem_id_0796300b_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_problem_testers_profile_id_dadcfbad_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_testers`
--

LOCK TABLES `judge_problem_testers` WRITE;
/*!40000 ALTER TABLE `judge_problem_testers` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problem_testers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problem_types`
--

DROP TABLE IF EXISTS `judge_problem_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problem_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `problem_id` int NOT NULL,
  `problemtype_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problem_types_problem_id_problemtype_id_db67c44c_uniq` (`problem_id`,`problemtype_id`),
  KEY `judge_problem_types_problemtype_id_f51f1eea_fk_judge_pro` (`problemtype_id`),
  CONSTRAINT `judge_problem_types_problem_id_1c63e65f_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_problem_types_problemtype_id_f51f1eea_fk_judge_pro` FOREIGN KEY (`problemtype_id`) REFERENCES `judge_problemtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problem_types`
--

LOCK TABLES `judge_problem_types` WRITE;
/*!40000 ALTER TABLE `judge_problem_types` DISABLE KEYS */;
INSERT INTO `judge_problem_types` VALUES (2,2,1);
/*!40000 ALTER TABLE `judge_problem_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemclarification`
--

DROP TABLE IF EXISTS `judge_problemclarification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemclarification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime(6) NOT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_problemclarifi_problem_id_3d9eb049_fk_judge_pro` (`problem_id`),
  CONSTRAINT `judge_problemclarifi_problem_id_3d9eb049_fk_judge_pro` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemclarification`
--

LOCK TABLES `judge_problemclarification` WRITE;
/*!40000 ALTER TABLE `judge_problemclarification` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problemclarification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemdata`
--

DROP TABLE IF EXISTS `judge_problemdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemdata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zipfile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generator` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `output_prefix` int DEFAULT NULL,
  `output_limit` int DEFAULT NULL,
  `feedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `checker` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checker_args` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem_id` int NOT NULL,
  `nobigmath` tinyint(1) DEFAULT NULL,
  `unicode` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `problem_id` (`problem_id`),
  CONSTRAINT `judge_problemdata_problem_id_d825e6f8_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemdata`
--

LOCK TABLES `judge_problemdata` WRITE;
/*!40000 ALTER TABLE `judge_problemdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problemdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemgroup`
--

DROP TABLE IF EXISTS `judge_problemgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemgroup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemgroup`
--

LOCK TABLES `judge_problemgroup` WRITE;
/*!40000 ALTER TABLE `judge_problemgroup` DISABLE KEYS */;
INSERT INTO `judge_problemgroup` VALUES (3,'group','Group 1');
/*!40000 ALTER TABLE `judge_problemgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problempointsvote`
--

DROP TABLE IF EXISTS `judge_problempointsvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problempointsvote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `points` int NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem_id` int NOT NULL,
  `voter_id` int NOT NULL,
  `vote_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_problempointsvote_problem_id_ae3ad4d5_fk_judge_problem_id` (`problem_id`),
  KEY `judge_problempointsvote_voter_id_79027a88_fk_judge_profile_id` (`voter_id`),
  CONSTRAINT `judge_problempointsvote_problem_id_ae3ad4d5_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_problempointsvote_voter_id_79027a88_fk_judge_profile_id` FOREIGN KEY (`voter_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problempointsvote`
--

LOCK TABLES `judge_problempointsvote` WRITE;
/*!40000 ALTER TABLE `judge_problempointsvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problempointsvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemtestcase`
--

DROP TABLE IF EXISTS `judge_problemtestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemtestcase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order` int NOT NULL,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `output_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `generator_args` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int DEFAULT NULL,
  `is_pretest` tinyint(1) NOT NULL,
  `output_prefix` int DEFAULT NULL,
  `output_limit` int DEFAULT NULL,
  `checker` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checker_args` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset_id` int NOT NULL,
  `batch_dependencies` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb4''),
  PRIMARY KEY (`id`),
  KEY `judge_problemtestcase_dataset_id_964229fd_fk_judge_problem_id` (`dataset_id`),
  CONSTRAINT `judge_problemtestcase_dataset_id_964229fd_fk_judge_problem_id` FOREIGN KEY (`dataset_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemtestcase`
--

LOCK TABLES `judge_problemtestcase` WRITE;
/*!40000 ALTER TABLE `judge_problemtestcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problemtestcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemtranslation`
--

DROP TABLE IF EXISTS `judge_problemtranslation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemtranslation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_problemtranslation_problem_id_language_ed6ab873_uniq` (`problem_id`,`language`),
  KEY `judge_problemtranslation_name_3bfcdd8c` (`name`),
  CONSTRAINT `judge_problemtranslation_problem_id_7acb27a7_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemtranslation`
--

LOCK TABLES `judge_problemtranslation` WRITE;
/*!40000 ALTER TABLE `judge_problemtranslation` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_problemtranslation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_problemtype`
--

DROP TABLE IF EXISTS `judge_problemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_problemtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_problemtype`
--

LOCK TABLES `judge_problemtype` WRITE;
/*!40000 ALTER TABLE `judge_problemtype` DISABLE KEYS */;
INSERT INTO `judge_problemtype` VALUES (1,'Bài Lập Trình','Bài Tập Lập Trình'),(2,'avcsdfsf sdf sdf','sdfafsd asdfdsf s');
/*!40000 ALTER TABLE `judge_problemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_profile`
--

DROP TABLE IF EXISTS `judge_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `about` longtext COLLATE utf8mb4_unicode_ci,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` double NOT NULL,
  `performance_points` double NOT NULL,
  `problem_count` int NOT NULL,
  `ace_theme` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime(6) NOT NULL,
  `ip` char(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_rank` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mute` tinyint(1) NOT NULL,
  `is_unlisted` tinyint(1) NOT NULL,
  `rating` int DEFAULT NULL,
  `user_script` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `math_engine` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_totp_enabled` tinyint(1) NOT NULL,
  `totp_key` longblob,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `current_contest_id` int DEFAULT NULL,
  `language_id` int NOT NULL,
  `user_id` int NOT NULL,
  `api_token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_webauthn_enabled` tinyint(1) NOT NULL,
  `data_last_downloaded` datetime(6) DEFAULT NULL,
  `scratch_codes` longblob,
  `last_totp_timecode` int NOT NULL,
  `username_display_override` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_banned_from_problem_voting` tinyint(1) NOT NULL,
  `site_theme` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `current_contest_id` (`current_contest_id`),
  KEY `judge_profile_language_id_87d3cab1_fk_judge_language_id` (`language_id`),
  KEY `judge_profi_is_unli_1410d8_idx` (`is_unlisted`,`performance_points` DESC),
  KEY `judge_profi_is_unli_bcf16a_idx` (`is_unlisted`,`rating` DESC),
  KEY `judge_profi_is_unli_171bf3_idx` (`is_unlisted`,`problem_count` DESC),
  CONSTRAINT `judge_profile_current_contest_id_ca595142_fk_judge_con` FOREIGN KEY (`current_contest_id`) REFERENCES `judge_contestparticipation` (`id`),
  CONSTRAINT `judge_profile_language_id_87d3cab1_fk_judge_language_id` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`),
  CONSTRAINT `judge_profile_user_id_b62d6977_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_profile`
--

LOCK TABLES `judge_profile` WRITE;
/*!40000 ALTER TABLE `judge_profile` DISABLE KEYS */;
INSERT INTO `judge_profile` VALUES (1,NULL,'America/Toronto',0,0,0,'auto','2025-06-02 06:58:16.234763','127.0.0.1','user',0,0,NULL,'','auto',0,NULL,NULL,NULL,1,1,NULL,0,NULL,NULL,0,'',0,'auto');
/*!40000 ALTER TABLE `judge_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_profile_organizations`
--

DROP TABLE IF EXISTS `judge_profile_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_profile_organizations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort_value` int NOT NULL,
  `profile_id` int NOT NULL,
  `organization_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_profile_organizati_profile_id_organization__39a6d8b0_uniq` (`profile_id`,`organization_id`),
  KEY `judge_profile_organi_organization_id_da2a4d7d_fk_judge_org` (`organization_id`),
  CONSTRAINT `judge_profile_organi_organization_id_da2a4d7d_fk_judge_org` FOREIGN KEY (`organization_id`) REFERENCES `judge_organization` (`id`),
  CONSTRAINT `judge_profile_organi_profile_id_6b79e464_fk_judge_pro` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_profile_organizations`
--

LOCK TABLES `judge_profile_organizations` WRITE;
/*!40000 ALTER TABLE `judge_profile_organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_profile_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_rating`
--

DROP TABLE IF EXISTS `judge_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank` int NOT NULL,
  `rating` int NOT NULL,
  `last_rated` datetime(6) NOT NULL,
  `contest_id` int NOT NULL,
  `participation_id` int NOT NULL,
  `user_id` int NOT NULL,
  `mean` double NOT NULL,
  `performance` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `participation_id` (`participation_id`),
  UNIQUE KEY `judge_rating_user_id_contest_id_461d7897_uniq` (`user_id`,`contest_id`),
  KEY `judge_rating_contest_id_0e97ae8c_fk_judge_contest_id` (`contest_id`),
  KEY `judge_rating_last_rated_65ff05f9` (`last_rated`),
  CONSTRAINT `judge_rating_contest_id_0e97ae8c_fk_judge_contest_id` FOREIGN KEY (`contest_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_rating_participation_id_c8cf9d76_fk_judge_con` FOREIGN KEY (`participation_id`) REFERENCES `judge_contestparticipation` (`id`),
  CONSTRAINT `judge_rating_user_id_82072996_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_rating`
--

LOCK TABLES `judge_rating` WRITE;
/*!40000 ALTER TABLE `judge_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_runtimeversion`
--

DROP TABLE IF EXISTS `judge_runtimeversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_runtimeversion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int NOT NULL,
  `judge_id` int NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_runtimeversion_judge_id_96482e9d_fk_judge_judge_id` (`judge_id`),
  KEY `judge_runtimeversion_language_id_3ad8be59_fk_judge_language_id` (`language_id`),
  CONSTRAINT `judge_runtimeversion_judge_id_96482e9d_fk_judge_judge_id` FOREIGN KEY (`judge_id`) REFERENCES `judge_judge` (`id`),
  CONSTRAINT `judge_runtimeversion_language_id_3ad8be59_fk_judge_language_id` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_runtimeversion`
--

LOCK TABLES `judge_runtimeversion` WRITE;
/*!40000 ALTER TABLE `judge_runtimeversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_runtimeversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_solution`
--

DROP TABLE IF EXISTS `judge_solution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_solution` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(1) NOT NULL,
  `publish_on` datetime(6) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `problem_id` (`problem_id`),
  CONSTRAINT `judge_solution_problem_id_44bbf556_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_solution`
--

LOCK TABLES `judge_solution` WRITE;
/*!40000 ALTER TABLE `judge_solution` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_solution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_solution_authors`
--

DROP TABLE IF EXISTS `judge_solution_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_solution_authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `solution_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_solution_authors_solution_id_profile_id_e45470e0_uniq` (`solution_id`,`profile_id`),
  KEY `judge_solution_authors_profile_id_685bd965_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_solution_authors_profile_id_685bd965_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`),
  CONSTRAINT `judge_solution_authors_solution_id_eab0d5e6_fk_judge_solution_id` FOREIGN KEY (`solution_id`) REFERENCES `judge_solution` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_solution_authors`
--

LOCK TABLES `judge_solution_authors` WRITE;
/*!40000 ALTER TABLE `judge_solution_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_solution_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_submission`
--

DROP TABLE IF EXISTS `judge_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_submission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `time` double DEFAULT NULL,
  `memory` double DEFAULT NULL,
  `points` double DEFAULT NULL,
  `status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error` longtext COLLATE utf8mb4_unicode_ci,
  `current_testcase` int NOT NULL,
  `batch` tinyint(1) NOT NULL,
  `case_points` double NOT NULL,
  `case_total` double NOT NULL,
  `is_pretested` tinyint(1) NOT NULL,
  `judged_on_id` int DEFAULT NULL,
  `language_id` int NOT NULL,
  `problem_id` int NOT NULL,
  `user_id` int NOT NULL,
  `contest_object_id` int DEFAULT NULL,
  `judged_date` datetime(6) DEFAULT NULL,
  `locked_after` datetime(6) DEFAULT NULL,
  `rejudged_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_submission_judged_on_id_ef7707ef_fk_judge_judge_id` (`judged_on_id`),
  KEY `judge_submission_date_14094309` (`date`),
  KEY `judge_submission_status_3f629ced` (`status`),
  KEY `judge_submi_problem_8d5e0a_idx` (`problem_id`,`user_id`,`points` DESC,`time` DESC),
  KEY `judge_submi_result_7a005c_idx` (`result`,`id` DESC),
  KEY `judge_submi_result_ba9a62_idx` (`result`,`language_id`,`id` DESC),
  KEY `judge_submi_languag_dfe850_idx` (`language_id`,`id` DESC),
  KEY `judge_submi_result_a77e42_idx` (`result`,`problem_id`),
  KEY `judge_submi_languag_380ab4_idx` (`language_id`,`problem_id`,`result`),
  KEY `judge_submi_problem_49f8ec_idx` (`problem_id`,`result`),
  KEY `judge_submi_user_id_650db3_idx` (`user_id`,`problem_id`,`result`),
  KEY `judge_submi_user_id_ec9a4b_idx` (`user_id`,`result`),
  KEY `judge_submi_contest_59fbe3_idx` (`contest_object_id`,`problem_id`,`user_id`,`points` DESC,`time` DESC),
  CONSTRAINT `judge_submission_contest_object_id_c5586240_fk_judge_contest_id` FOREIGN KEY (`contest_object_id`) REFERENCES `judge_contest` (`id`),
  CONSTRAINT `judge_submission_judged_on_id_ef7707ef_fk_judge_judge_id` FOREIGN KEY (`judged_on_id`) REFERENCES `judge_judge` (`id`),
  CONSTRAINT `judge_submission_language_id_48a75504_fk_judge_language_id` FOREIGN KEY (`language_id`) REFERENCES `judge_language` (`id`),
  CONSTRAINT `judge_submission_problem_id_d2fabe38_fk_judge_problem_id` FOREIGN KEY (`problem_id`) REFERENCES `judge_problem` (`id`),
  CONSTRAINT `judge_submission_user_id_9764487f_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_submission`
--

LOCK TABLES `judge_submission` WRITE;
/*!40000 ALTER TABLE `judge_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_submissionsource`
--

DROP TABLE IF EXISTS `judge_submissionsource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_submissionsource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `submission_id` (`submission_id`),
  CONSTRAINT `judge_submissionsour_submission_id_d4abc888_fk_judge_sub` FOREIGN KEY (`submission_id`) REFERENCES `judge_submission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_submissionsource`
--

LOCK TABLES `judge_submissionsource` WRITE;
/*!40000 ALTER TABLE `judge_submissionsource` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_submissionsource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_submissiontestcase`
--

DROP TABLE IF EXISTS `judge_submissiontestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_submissiontestcase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `case` int NOT NULL,
  `status` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` double DEFAULT NULL,
  `memory` double DEFAULT NULL,
  `points` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `batch` int DEFAULT NULL,
  `feedback` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extended_feedback` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `output` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_submissiontestcase_submission_id_case_7aba3b7b_uniq` (`submission_id`,`case`),
  CONSTRAINT `judge_submissiontest_submission_id_a69f2d0e_fk_judge_sub` FOREIGN KEY (`submission_id`) REFERENCES `judge_submission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_submissiontestcase`
--

LOCK TABLES `judge_submissiontestcase` WRITE;
/*!40000 ALTER TABLE `judge_submissiontestcase` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_submissiontestcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_ticket`
--

DROP TABLE IF EXISTS `judge_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime(6) NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` int unsigned NOT NULL,
  `is_open` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_ticket_content_type_id_376ebcf9_fk_django_content_type_id` (`content_type_id`),
  KEY `judge_ticket_user_id_5a5c0bce_fk_judge_profile_id` (`user_id`),
  CONSTRAINT `judge_ticket_content_type_id_376ebcf9_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `judge_ticket_user_id_5a5c0bce_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`),
  CONSTRAINT `judge_ticket_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_ticket`
--

LOCK TABLES `judge_ticket` WRITE;
/*!40000 ALTER TABLE `judge_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_ticket_assignees`
--

DROP TABLE IF EXISTS `judge_ticket_assignees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_ticket_assignees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ticket_id` int NOT NULL,
  `profile_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `judge_ticket_assignees_ticket_id_profile_id_6bdac784_uniq` (`ticket_id`,`profile_id`),
  KEY `judge_ticket_assignees_profile_id_84d298d8_fk_judge_profile_id` (`profile_id`),
  CONSTRAINT `judge_ticket_assignees_profile_id_84d298d8_fk_judge_profile_id` FOREIGN KEY (`profile_id`) REFERENCES `judge_profile` (`id`),
  CONSTRAINT `judge_ticket_assignees_ticket_id_0fd7b2f7_fk_judge_ticket_id` FOREIGN KEY (`ticket_id`) REFERENCES `judge_ticket` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_ticket_assignees`
--

LOCK TABLES `judge_ticket_assignees` WRITE;
/*!40000 ALTER TABLE `judge_ticket_assignees` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_ticket_assignees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_ticketmessage`
--

DROP TABLE IF EXISTS `judge_ticketmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_ticketmessage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime(6) NOT NULL,
  `ticket_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `judge_ticketmessage_ticket_id_5e413158_fk_judge_ticket_id` (`ticket_id`),
  KEY `judge_ticketmessage_user_id_1dbfbfb0_fk_judge_profile_id` (`user_id`),
  CONSTRAINT `judge_ticketmessage_ticket_id_5e413158_fk_judge_ticket_id` FOREIGN KEY (`ticket_id`) REFERENCES `judge_ticket` (`id`),
  CONSTRAINT `judge_ticketmessage_user_id_1dbfbfb0_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_ticketmessage`
--

LOCK TABLES `judge_ticketmessage` WRITE;
/*!40000 ALTER TABLE `judge_ticketmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_ticketmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_webauthncredential`
--

DROP TABLE IF EXISTS `judge_webauthncredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_webauthncredential` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cred_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cred_id` (`cred_id`),
  KEY `judge_webauthncredential_user_id_8eaad7d2_fk_judge_profile_id` (`user_id`),
  CONSTRAINT `judge_webauthncredential_user_id_8eaad7d2_fk_judge_profile_id` FOREIGN KEY (`user_id`) REFERENCES `judge_profile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_webauthncredential`
--

LOCK TABLES `judge_webauthncredential` WRITE;
/*!40000 ALTER TABLE `judge_webauthncredential` DISABLE KEYS */;
/*!40000 ALTER TABLE `judge_webauthncredential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activation_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `activated` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `registration_registr_user_id_5fcbf725_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_supervisedregistrationprofile`
--

DROP TABLE IF EXISTS `registration_supervisedregistrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_supervisedregistrationprofile` (
  `registrationprofile_ptr_id` int NOT NULL,
  PRIMARY KEY (`registrationprofile_ptr_id`),
  CONSTRAINT `registration_supervi_registrationprofile__0a59f3b2_fk_registrat` FOREIGN KEY (`registrationprofile_ptr_id`) REFERENCES `registration_registrationprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_supervisedregistrationprofile`
--

LOCK TABLES `registration_supervisedregistrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_supervisedregistrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_supervisedregistrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_revision`
--

DROP TABLE IF EXISTS `reversion_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reversion_revision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_user_id_17095f45_fk_auth_user_id` (`user_id`),
  KEY `reversion_revision_date_created_96f7c20c` (`date_created`),
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_revision`
--

LOCK TABLES `reversion_revision` WRITE;
/*!40000 ALTER TABLE `reversion_revision` DISABLE KEYS */;
INSERT INTO `reversion_revision` VALUES (1,'2025-05-27 13:00:55.283886','Added.',1),(2,'2025-05-27 13:01:35.666767','Added.',1),(3,'2025-05-27 15:07:48.740216','Đã thay đổi Short name, Common name, Ace mode name, Pygments name và Runtime info override.',1),(4,'2025-05-27 15:08:57.404081','Đã thay đổi Short name.',1),(5,'2025-05-27 15:09:08.324096','Đã thay đổi Short identifier, Long name và Short name.',1),(6,'2025-05-27 15:09:34.116712','Không có trường nào thay đổi',1),(7,'2025-05-27 15:09:59.712324','Đã thay đổi Long name và Runtime info override.',1),(8,'2025-05-27 15:10:44.564413','Được thêm.',1),(9,'2025-05-27 15:10:59.893086','Đã thay đổi Runtime info override.',1),(10,'2025-05-27 15:14:36.156416','Được thêm.',1),(11,'2025-05-28 14:27:59.733611','Được thêm. Đã thêm giới hạn tài nguyên theo ngôn ngữ “LanguageLimit object (1)”. Đã thêm giới hạn tài nguyên theo ngôn ngữ “LanguageLimit object (2)”. Đã thêm giới hạn tài nguyên theo ngôn ngữ “LanguageLimit object (3)”.',1),(12,'2025-06-01 15:59:38.208775','Added.',1);
/*!40000 ALTER TABLE `reversion_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_version`
--

DROP TABLE IF EXISTS `reversion_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reversion_version` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialized_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_repr` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `revision_id` int NOT NULL,
  `db` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reversion_version_db_content_type_id_objec_b2c54f65_uniq` (`db`,`content_type_id`,`object_id`,`revision_id`),
  KEY `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` (`revision_id`),
  KEY `reversion_v_content_f95daf_idx` (`content_type_id`,`db`),
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_version`
--

LOCK TABLES `reversion_version` WRITE;
/*!40000 ALTER TABLE `reversion_version` DISABLE KEYS */;
INSERT INTO `reversion_version` VALUES (1,'2','json','[{\"model\": \"judge.language\", \"pk\": 2, \"fields\": {\"key\": \"Python\", \"name\": \"Python\", \"short_name\": \"Python\", \"common_name\": \"Python\", \"ace\": \"Python\", \"pygments\": \"Python\", \"template\": \"\", \"info\": \"Python\", \"description\": \"\", \"extension\": \"Python\"}}]','Python',12,1,'default'),(2,'1','json','[{\"model\": \"judge.judge\", \"pk\": 1, \"fields\": {\"name\": \"Test\", \"created\": \"2025-05-27T13:01:35.669Z\", \"auth_key\": \"859XIU0NviI6EqsK0opnKCccPg+eT8WUf0d/veOTImAO9fAtCm2lOl9FRog3v+qqmOMARnAfwn8b2l5sQ/n3TlVxxWKEF34CuyNB\", \"description\": \"\"}}]','Test',11,2,'default'),(3,'1','json','[{\"model\": \"judge.language\", \"pk\": 1, \"fields\": {\"key\": \"PY3\", \"name\": \"Python 3\", \"short_name\": \"PY2\", \"common_name\": \"python\", \"ace\": \"python\", \"pygments\": \"Python\", \"template\": \"\", \"info\": \"python3 3.13.3\", \"description\": \"\", \"extension\": \"py\"}}]','Python 3',12,3,'default'),(4,'1','json','[{\"model\": \"judge.language\", \"pk\": 1, \"fields\": {\"key\": \"PY3\", \"name\": \"Python 3\", \"short_name\": \"PY3\", \"common_name\": \"python\", \"ace\": \"python\", \"pygments\": \"Python\", \"template\": \"\", \"info\": \"python3 3.13.3\", \"description\": \"\", \"extension\": \"py\"}}]','Python 3',12,4,'default'),(5,'2','json','[{\"model\": \"judge.language\", \"pk\": 2, \"fields\": {\"key\": \"PY2\", \"name\": \"Python2\", \"short_name\": \"PY2\", \"common_name\": \"Python\", \"ace\": \"Python\", \"pygments\": \"Python\", \"template\": \"\", \"info\": \"Python\", \"description\": \"\", \"extension\": \"Python\"}}]','Python2',12,5,'default'),(6,'1','json','[{\"model\": \"judge.language\", \"pk\": 1, \"fields\": {\"key\": \"PY3\", \"name\": \"Python 3\", \"short_name\": \"PY3\", \"common_name\": \"python\", \"ace\": \"python\", \"pygments\": \"Python\", \"template\": \"\", \"info\": \"python3 3.13.3\", \"description\": \"\", \"extension\": \"py\"}}]','Python 3',12,6,'default'),(7,'2','json','[{\"model\": \"judge.language\", \"pk\": 2, \"fields\": {\"key\": \"PY2\", \"name\": \"Python 2\", \"short_name\": \"PY2\", \"common_name\": \"Python\", \"ace\": \"Python\", \"pygments\": \"Python\", \"template\": \"\", \"info\": \"python 2.7.18\", \"description\": \"\", \"extension\": \"Python\"}}]','Python 2',12,7,'default'),(8,'3','json','[{\"model\": \"judge.language\", \"pk\": 3, \"fields\": {\"key\": \"PHP\", \"name\": \"PHP\", \"short_name\": \"PHP\", \"common_name\": \"PHP\", \"ace\": \"PHP\", \"pygments\": \"PHP\", \"template\": \"\", \"info\": \"PHP\", \"description\": \"\", \"extension\": \"PHP\"}}]','PHP',12,8,'default'),(9,'3','json','[{\"model\": \"judge.language\", \"pk\": 3, \"fields\": {\"key\": \"PHP\", \"name\": \"PHP\", \"short_name\": \"PHP\", \"common_name\": \"PHP\", \"ace\": \"PHP\", \"pygments\": \"PHP\", \"template\": \"\", \"info\": \"php 8.4.6\", \"description\": \"\", \"extension\": \"PHP\"}}]','PHP',12,9,'default'),(10,'4','json','[{\"model\": \"judge.language\", \"pk\": 4, \"fields\": {\"key\": \"Node\", \"name\": \"Node JS\", \"short_name\": \"Node\", \"common_name\": \"Node\", \"ace\": \"Node\", \"pygments\": \"Node\", \"template\": \"\", \"info\": \"node 20.19.2\", \"description\": \"\", \"extension\": \"js\"}}]','Node JS',12,10,'default'),(11,'1','json','[{\"model\": \"judge.problem\", \"pk\": 1, \"fields\": {\"code\": \"trochoi\", \"name\": \"Trò chơi\", \"description\": \"rong vòng Gameshow Tìm kiếm tài năng năm 2019 tại lớp 10 chuyên Tin cho các Đội học sinh tham gia; Trò chơi cho các đội là trò chơi với các con số như sau: cho một số có \\r\\nN\\r\\nN chữ số (gồm \\r\\nN\\r\\nN chữ số viết trong hệ thập phân: \\r\\n0\\r\\n,\\r\\n1\\r\\n,\\r\\n2\\r\\n,\\r\\n3\\r\\n,\\r\\n4\\r\\n,\\r\\n5\\r\\n,\\r\\n6\\r\\n,\\r\\n7\\r\\n,\\r\\n8\\r\\n,\\r\\n9\\r\\n0,1,2,3,4,5,6,7,8,9); tiếp theo: Người dẫn chương trình sẽ tách rời số \\r\\nN\\r\\nN này thành một dãy số gồm \\r\\nM\\r\\nM số bất kỳ theo đúng thứ tự của \\r\\nN\\r\\nN (\\r\\nM\\r\\n≤\\r\\nN\\r\\nM≤N). Người dẫn chương trình sẽ yêu cầu các đội đưa ra độ dài của dãy con tăng dài nhất từ dãy \\r\\nM\\r\\nM số này;\\r\\n\\r\\nVí dụ: Dãy chữ số thập phân \\r\\n314159265358979\\r\\n314159265358979\\r\\n\\r\\nNếu tách dãy trên thành dãy số gồm \\r\\n6\\r\\n6 số: \\r\\n3\\r\\n,\\r\\n14\\r\\n,\\r\\n159\\r\\n,\\r\\n26\\r\\n,\\r\\n53\\r\\n,\\r\\n58979\\r\\n3,14,159,26,53,58979 thì chúng ta tìm được dãy con tăng dài nhất gồm \\r\\n5\\r\\n5 số là: \\r\\n3\\r\\n,\\r\\n14\\r\\n,\\r\\n26\\r\\n,\\r\\n53\\r\\n,\\r\\n58979\\r\\n3,14,26,53,58979.\\r\\nNhưng nếu tách thành dãy số gồm \\r\\n10\\r\\n10 số: \\r\\n3\\r\\n,\\r\\n1\\r\\n,\\r\\n4\\r\\n,\\r\\n1\\r\\n,\\r\\n5\\r\\n,\\r\\n9\\r\\n,\\r\\n26\\r\\n,\\r\\n53\\r\\n,\\r\\n58\\r\\n,\\r\\n979\\r\\n3,1,4,1,5,9,26,53,58,979 thì chúng ta sẽ tìm được dãy con tăng dài nhất gồm \\r\\n8\\r\\n8 số là: \\r\\n3\\r\\n,\\r\\n4\\r\\n,\\r\\n5\\r\\n,\\r\\n9\\r\\n,\\r\\n26\\r\\n,\\r\\n53\\r\\n,\\r\\n58\\r\\n,\\r\\n979\\r\\n3,4,5,9,26,53,58,979.\\r\\nYêu cầu: Cho dãy \\r\\nN\\r\\nN chữ số thập phân, hỏi với cách chơi như trên thì các Đội sẽ tìm được dãy con tăng dài nhất tối đa là bao nhiêu phần tử?\\r\\n\\r\\nInput\\r\\nDòng đầu tiên ghi số nguyên dương \\r\\nN\\r\\nN (\\r\\n1\\r\\n≤\\r\\nN\\r\\n≤\\r\\n1000\\r\\n1≤N≤1000).\\r\\nDòng thứ hai là một xâu gồm \\r\\nN\\r\\nN chữ số thập phân.\\r\\nOutput\\r\\nMột số duy nhất là độ dài của dãy con tăng dài nhất tìm được.\\r\\nScoring\\r\\nSubtask \\r\\n1\\r\\n1 (\\r\\n50\\r\\n%\\r\\n50% số điểm): \\r\\nn\\r\\n≤\\r\\n20\\r\\nn≤20.\\r\\nSubtask \\r\\n2\\r\\n2 (\\r\\n25\\r\\n%\\r\\n25% số điểm): \\r\\nn\\r\\n≤\\r\\n200\\r\\nn≤200.\\r\\nExample\\r\\nTest 1\\r\\n\\r\\nInput\\r\\nCopy\\r\\n15 \\r\\n314159265358979 \\r\\nOutput\\r\\nCopy\\r\\n8\", \"group\": 1, \"time_limit\": 12.0, \"memory_limit\": 2, \"short_circuit\": true, \"points\": 10.0, \"partial\": false, \"is_public\": true, \"is_manually_managed\": true, \"date\": \"2025-05-28T21:21:36-04:00\", \"license\": null, \"og_image\": \"\", \"summary\": \"\", \"user_count\": 0, \"ac_rate\": 0, \"is_full_markup\": true, \"submission_source_visibility_mode\": \"F\", \"is_organization_private\": false, \"authors\": [], \"curators\": [], \"testers\": [], \"types\": [1], \"allowed_languages\": [4, 3, 2, 1], \"banned_users\": [], \"organizations\": []}}]','Trò chơi',19,11,'default'),(12,'1','json','[{\"model\": \"judge.languagelimit\", \"pk\": 1, \"fields\": {\"problem\": 1, \"language\": 4, \"time_limit\": 1.0, \"memory_limit\": 2}}]','LanguageLimit object (1)',13,11,'default'),(13,'2','json','[{\"model\": \"judge.languagelimit\", \"pk\": 2, \"fields\": {\"problem\": 1, \"language\": 3, \"time_limit\": 2.0, \"memory_limit\": 2}}]','LanguageLimit object (2)',13,11,'default'),(14,'3','json','[{\"model\": \"judge.languagelimit\", \"pk\": 3, \"fields\": {\"problem\": 1, \"language\": 1, \"time_limit\": 1.0, \"memory_limit\": 2}}]','LanguageLimit object (3)',13,11,'default'),(15,'2','json','[{\"model\": \"judge.problem\", \"pk\": 2, \"fields\": {\"code\": \"trochoi\", \"name\": \"Trò CHơi\", \"description\": \"Trò chơi là gì\", \"group\": 3, \"time_limit\": 10.0, \"memory_limit\": 100, \"short_circuit\": false, \"points\": 1.0, \"partial\": false, \"is_public\": false, \"is_manually_managed\": false, \"date\": null, \"license\": null, \"og_image\": \"\", \"summary\": \"\", \"user_count\": 0, \"ac_rate\": 0, \"is_full_markup\": false, \"submission_source_visibility_mode\": \"F\", \"is_organization_private\": false, \"authors\": [], \"curators\": [], \"testers\": [], \"types\": [1], \"allowed_languages\": [4, 3, 2, 1], \"banned_users\": [], \"organizations\": []}}]','Trò CHơi',19,12,'default');
/*!40000 ALTER TABLE `reversion_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_association` (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued` int NOT NULL,
  `lifetime` int NOT NULL,
  `assoc_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_code` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_nonce` (
  `id` int NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int NOT NULL,
  `salt` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_partial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_step` smallint unsigned NOT NULL,
  `backend` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`),
  CONSTRAINT `social_auth_partial_chk_1` CHECK ((`next_step` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`),
  KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`),
  CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-02  9:41:53
