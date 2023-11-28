-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: pra_pas
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `kucings`
--

DROP TABLE IF EXISTS `kucings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kucings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_daerah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int NOT NULL,
  `skill` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kucings`
--

LOCK TABLES `kucings` WRITE;
/*!40000 ALTER TABLE `kucings` DISABLE KEYS */;
INSERT INTO `kucings` VALUES (1,'Kucing Jawir','Ponorogo','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F1c%2F8b%2F20%2F1c8b20084e352b83c236c55fa9150882.jpg&f=1&nofb=1&ipt=d6ac0c3b375671e5b2737d9ba06869df42673125a2bd62d4b695c58e560f5634&ipo=images',29,'Jilatan Kebab','1990-07-06',NULL,NULL),(2,'Kucing Ngambek','Bekasi','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fthecaninebuddy.com%2Fwp-content%2Fuploads%2F2021%2F08%2Fcrying-cat-meme.jpg&f=1&nofb=1&ipt=62bcac32d35523e3cf8865556b4ee82f9341f6712dbab5c0e92a876abec33905&ipo=images',36,'Tangisin Hidup','1999-09-02',NULL,NULL),(3,'Kucing Nolep','Depok','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.ytimg.com%2Fvi%2FbdS6HXhQDb0%2Fmaxresdefault.jpg&f=1&nofb=1&ipt=dcf2853ab7a7f81cba4e97fc115383684f0f1c44cbc8ee27ae95edd9457a9d78&ipo=images',40,'Nolep','1997-12-10',NULL,NULL),(4,'Kucing Penasaran','Demak','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F564x%2Fa2%2Fb2%2Fc6%2Fa2b2c68e4d3e4126816424920fcdd4fe.jpg&f=1&nofb=1&ipt=8dbf19025c3bcc1466669bbc7899d38637a2c79ba0c5db7a58f17cec7d4355fa&ipo=images',18,'No Kedip 300s','2003-11-01',NULL,NULL),(5,'Kucing Low Quality','Surakarta','https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.imgflip.com%2F6tjy2m.png&f=1&nofb=1&ipt=3a176e44477c71b2f0d425ced1d253f35b550468c871f4d82e46f31e8b1b9164&ipo=images',24,'Super Compression','2000-01-01',NULL,NULL);
/*!40000 ALTER TABLE `kucings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `makanan_kucings`
--

DROP TABLE IF EXISTS `makanan_kucings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makanan_kucings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disukai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popularitas` double unsigned NOT NULL,
  `harga` int NOT NULL,
  `terakhir_beli` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makanan_kucings`
--

LOCK TABLES `makanan_kucings` WRITE;
/*!40000 ALTER TABLE `makanan_kucings` DISABLE KEYS */;
INSERT INTO `makanan_kucings` VALUES (1,'Nasi Goreng Whiskas','Kucing Jawir',7,35000,'2023-10-14',NULL,NULL),(2,'Sate Tikus','Kucing Nolep',6.8,15000,'2023-08-23',NULL,NULL);
/*!40000 ALTER TABLE `makanan_kucings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `makanans`
--

DROP TABLE IF EXISTS `makanans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makanans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_daerah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makanans`
--

LOCK TABLES `makanans` WRITE;
/*!40000 ALTER TABLE `makanans` DISABLE KEYS */;
INSERT INTO `makanans` VALUES (1,'Sate Ponorogo','Ponorogo','Jenis sate yang berasal dari Kota Ponorogo, Jawa Timur. Terbuat dari potongan daging ayam yang direndam dalam bumbu kecap, disajikan dengan bumbu kacang dan sambal dengan irisan bawang merah dan cabai rawit serta jeruk nipis.','https://upload.wikimedia.org/wikipedia/commons/a/ad/Sate_Ponorogo.jpg',7.9,NULL,NULL),(2,'Soto Kudus','Kudus','Soto Kudus (Hanacaraka: ꦱꦺꦴꦠꦺꦴ​ꦏꦸꦢꦸꦱ꧀) adalah soto yang berasal dari Kudus, Jawa Tengah . Soto kudus, hampir mirip dengan soto Lamongan, soto kudus berisi suwiran ayam dan taoge. Terkadang soto kudus juga menggunakan daging kerbau. Kuahnya lebih bening.','https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Soto_Kudus_nasi.JPG/1280px-Soto_Kudus_nasi.JPG',8.1,NULL,NULL),(3,'Selat Solo','Solo','Selat solo atau racikan salat adalah sebuah hidangan khas Solo, Jawa Tengah yang mendapat pengaruh dari hidangan Eropa. ','https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/40._Selat_1.jpg/1280px-40._Selat_1.jpg',8.2,NULL,NULL),(4,'Karedok','Bogor','Karedok (Aksara Sunda Baku: ᮊᮛᮦᮓᮧᮊ᮪, Karédok) adalah salah satu makanan khas Sunda di Indonesia.','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Karedok_platter.JPG/1280px-Karedok_platter.JPG',7.2,NULL,NULL),(5,'Pempek','Palembang','Pempek adalah makanan yang dibuat dari daging ikan yang digiling lembut yang dicampur tepung kanji atau tepung sagu, serta komposisi beberapa bahan lain seperti telur, bawang putih yang dihaluskan, penyedap rasa, dan garam.','https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Pempek_Kuah_Cuko.jpg/1024px-Pempek_Kuah_Cuko.jpg',7.5,NULL,NULL);
/*!40000 ALTER TABLE `makanans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (10,'2019_12_14_000001_create_personal_access_tokens_table',1),(11,'2023_11_14_014630_create_makanans_table',1),(12,'2023_11_14_015047_create_kucings_table',1),(14,'2023_11_21_010528_create_makanan_kucings_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21  8:44:21