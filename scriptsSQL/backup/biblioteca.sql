-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: db_biblioteca
-- ------------------------------------------------------
-- Server version	5.6.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `buscalivros`
--

DROP TABLE IF EXISTS `buscalivros`;
/*!50001 DROP VIEW IF EXISTS `buscalivros`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `buscalivros` (
  `ID` tinyint NOT NULL,
  `referencia` tinyint NOT NULL,
  `Titulo` tinyint NOT NULL,
  `Desc_autor` tinyint NOT NULL,
  `Desc_Editora` tinyint NOT NULL,
  `Desc_Genero` tinyint NOT NULL,
  `Desc_Categoria` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `doacoes`
--

DROP TABLE IF EXISTS `doacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doacoes` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Doador` int(11) NOT NULL,
  `ID_Funcionario` int(11) NOT NULL,
  `Data_Doacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doacoes`
--

LOCK TABLES `doacoes` WRITE;
/*!40000 ALTER TABLE `doacoes` DISABLE KEYS */;
INSERT INTO `doacoes` VALUES (1,1,1,'2013-07-29 20:33:21'),(2,1,1,'2013-07-29 20:42:23'),(3,1,2,'2013-07-29 23:30:30');
/*!40000 ALTER TABLE `doacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doacoes_items`
--

DROP TABLE IF EXISTS `doacoes_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doacoes_items` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Doacao` int(11) NOT NULL,
  `ID_Livro` int(11) NOT NULL,
  `Quantidade` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doacoes_items`
--

LOCK TABLES `doacoes_items` WRITE;
/*!40000 ALTER TABLE `doacoes_items` DISABLE KEYS */;
INSERT INTO `doacoes_items` VALUES (1,1,6,5),(2,1,7,3),(3,2,5,1),(4,3,6,1),(5,3,7,1);
/*!40000 ALTER TABLE `doacoes_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doadores`
--

DROP TABLE IF EXISTS `doadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doadores` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nome` char(20) NOT NULL,
  `SobreNome` char(20) NOT NULL,
  `Sexo` enum('Masculino','Feminino') DEFAULT NULL,
  `Cidade` int(11) DEFAULT NULL,
  `Bairro` varchar(30) DEFAULT NULL,
  `Rua` varchar(30) DEFAULT NULL,
  `Numero_Casa` smallint(6) DEFAULT NULL,
  `Complemento` varchar(20) DEFAULT NULL,
  `RG` varchar(20) DEFAULT NULL,
  `Data_Nascto` date DEFAULT NULL,
  `Data_Cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Telefone` char(14) DEFAULT NULL,
  `Celular` char(14) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '-1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doadores`
--

LOCK TABLES `doadores` WRITE;
/*!40000 ALTER TABLE `doadores` DISABLE KEYS */;
INSERT INTO `doadores` VALUES (1,'João Antonio','Freitas','Masculino',0,'Centro','Rua do centro',301,'Praça Matriz',NULL,'1980-01-20','2013-07-29 17:55:14','(14)3664-3300','(14)9124-9632',-1);
/*!40000 ALTER TABLE `doadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livros` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `referencia` char(20) DEFAULT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Autor` int(11) DEFAULT NULL,
  `Editora` int(11) DEFAULT NULL,
  `Genero` int(11) DEFAULT NULL,
  `Categoria` int(11) DEFAULT NULL,
  `Fornecedor` int(11) DEFAULT NULL,
  `Qtd_Estoque` smallint(6) DEFAULT NULL,
  `Data_Cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` tinyint(1) DEFAULT '-1',
  `locavel` tinyint(4) DEFAULT '-1',
  `Observacoes` text,
  `Armario` smallint(6) DEFAULT NULL,
  `Nivel` smallint(6) DEFAULT NULL,
  `Tombo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (5,NULL,'teste',6,4,8,2,NULL,12,'2013-07-23 02:21:42',-1,-1,'livro dahora tche',1,2,33),(6,NULL,'Alice no país das maravílhas',7,5,8,1,NULL,1,'2013-07-25 19:38:02',-1,-1,NULL,1,2,31),(7,NULL,'Guia Musical numero 3',7,4,8,1,NULL,2,'2013-07-26 18:58:40',-1,-1,'teste',1,2,33),(8,'H43','Guia do mochileiro das GALAÇA',7,5,8,2,NULL,2,'2013-07-29 23:32:32',-1,-1,'MUITO LEGAL',10,10,5);
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacao_livros`
--

DROP TABLE IF EXISTS `locacao_livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locacao_livros` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Usuario` int(11) NOT NULL,
  `ID_Funcionario` int(11) NOT NULL,
  `Data_Locacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` tinyint(4) DEFAULT '0',
  `Data_Finalizacao` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Usuario` (`ID_Usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao_livros`
--

LOCK TABLES `locacao_livros` WRITE;
/*!40000 ALTER TABLE `locacao_livros` DISABLE KEYS */;
INSERT INTO `locacao_livros` VALUES (1,1,1,'2013-07-26 18:51:21',-1,'2013-07-26'),(2,1,1,'2013-07-27 01:31:49',-1,'2013-07-26'),(3,2,1,'2013-07-27 02:14:25',-1,'2013-07-26'),(4,1,1,'2013-07-27 02:08:31',-1,'2013-07-26'),(5,1,1,'2013-07-27 02:19:44',-1,'2013-07-26'),(6,2,1,'2013-07-27 02:20:10',-1,'2013-07-26'),(7,1,1,'2013-07-29 23:36:17',-1,'2013-07-29'),(8,1,1,'2013-07-29 20:23:54',0,NULL),(9,2,2,'2013-07-30 16:43:58',-1,'2013-07-30'),(10,3,2,'2013-07-30 20:26:29',0,NULL);
/*!40000 ALTER TABLE `locacao_livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacao_livros_items`
--

DROP TABLE IF EXISTS `locacao_livros_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locacao_livros_items` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Locacao` int(11) NOT NULL,
  `ID_Livro` int(11) NOT NULL,
  `ID_Funcionario` int(11) NOT NULL,
  `Data_Devolucao` date NOT NULL,
  `Devolvido_Em` date DEFAULT NULL,
  `Numero_Renovacoes` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Livro` (`ID_Livro`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao_livros_items`
--

LOCK TABLES `locacao_livros_items` WRITE;
/*!40000 ALTER TABLE `locacao_livros_items` DISABLE KEYS */;
INSERT INTO `locacao_livros_items` VALUES (1,1,6,1,'2013-08-06','2013-07-26',5),(2,1,5,0,'2013-08-02','2013-07-26',1),(3,2,6,0,'2013-08-02','2013-07-26',1),(4,2,7,1,'2013-08-09','2013-07-26',2),(5,3,5,1,'2013-08-09','2013-07-26',2),(6,3,6,0,'2013-08-02','2013-07-26',1),(7,4,6,0,'2013-08-02','2013-07-26',1),(8,5,5,0,'2013-08-02','2013-07-26',1),(9,5,6,0,'2013-08-02','2013-07-26',1),(10,6,7,0,'2013-08-02','2013-07-26',1),(11,7,6,2,'2013-08-23','2013-07-29',4),(12,9,8,0,'2013-08-05','2013-07-30',1),(13,10,6,0,'2013-08-06',NULL,1);
/*!40000 ALTER TABLE `locacao_livros_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcadastro`
--

DROP TABLE IF EXISTS `subcadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcadastro` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(50) NOT NULL,
  `Tipo_Cadastro` smallint(6) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcadastro`
--

LOCK TABLES `subcadastro` WRITE;
/*!40000 ALTER TABLE `subcadastro` DISABLE KEYS */;
INSERT INTO `subcadastro` VALUES (1,'Literatura',1),(2,'Matemática',1),(3,'Culinária',1),(4,'Editora Marte',2),(5,'Editora Abril',2),(6,'Machado de Assis',4),(7,'Carlos Drumond de Andrade',4),(8,'Infantil',3),(9,'Estudante',5),(10,'Comum',5),(11,'Funcionário',5),(12,'Visitante',5);
/*!40000 ALTER TABLE `subcadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nome` char(20) NOT NULL,
  `SobreNome` char(20) NOT NULL,
  `Sexo` enum('Masculino','Feminino') NOT NULL,
  `Tipo_Usuario` int(11) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `Bairro` varchar(30) DEFAULT NULL,
  `Rua` varchar(30) DEFAULT NULL,
  `Numero_Casa` smallint(6) DEFAULT NULL,
  `Complemento` varchar(20) DEFAULT NULL,
  `RG` varchar(20) DEFAULT NULL,
  `Data_Nascto` date DEFAULT NULL,
  `Status` tinyint(1) DEFAULT '-1',
  `Nivel` tinyint(4) DEFAULT '3',
  `Telefone` char(14) DEFAULT NULL,
  `Celular` char(14) DEFAULT NULL,
  `EMail` varchar(100) DEFAULT NULL,
  `Observacoes` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Saulo','andrioli','Masculino',NULL,'0','Irmãos Franceschi','Anacleto Fachim',14,'Fundos',NULL,'1988-05-17',0,5,NULL,NULL,NULL,NULL),(2,'João do Pulo','andrioli','Masculino',NULL,'0','Irmãos Franceschi','Anacleto Fachim',14,'Fundos',NULL,'1988-05-17',0,5,NULL,NULL,NULL,NULL),(3,'Marcos Antonio','Feliciano','Masculino',NULL,'Itapui','Irmãos Franceschi','Anacleto Fachim',14,'Fundos','99999999999999999999','1975-01-01',-1,3,'(14)3664-3301','(14)8157-3010','Saulo_metallica@hotmail.com','As Árveres, Somo nozes');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_sistema`
--

DROP TABLE IF EXISTS `usuarios_sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios_sistema` (
  `Login` varchar(255) DEFAULT NULL,
  `Senha` varchar(255) DEFAULT NULL,
  `Nivel` tinyint(4) NOT NULL DEFAULT '3',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` char(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_sistema`
--

LOCK TABLES `usuarios_sistema` WRITE;
/*!40000 ALTER TABLE `usuarios_sistema` DISABLE KEYS */;
INSERT INTO `usuarios_sistema` VALUES ('Saulo','3f0ea65c19fde9689ff88d0e4c2882cc',3,1,NULL),('Jao','b07c153de98af7e6ecda7ebf6d1a5e25',3,2,NULL),('Zago','202cb962ac59075b964b07152d234b70',1,3,NULL);
/*!40000 ALTER TABLE `usuarios_sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `buscalivros`
--

/*!50001 DROP TABLE IF EXISTS `buscalivros`*/;
/*!50001 DROP VIEW IF EXISTS `buscalivros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `buscalivros` AS select `livros`.`ID` AS `ID`,`livros`.`referencia` AS `referencia`,`livros`.`Titulo` AS `Titulo`,`autor`.`Descricao` AS `Desc_autor`,`editora`.`Descricao` AS `Desc_Editora`,`genero`.`Descricao` AS `Desc_Genero`,`categoria`.`Descricao` AS `Desc_Categoria` from ((((`livros` left join `subcadastro` `autor` on((`livros`.`Autor` = `autor`.`ID`))) left join `subcadastro` `editora` on((`livros`.`Editora` = `editora`.`ID`))) left join `subcadastro` `genero` on((`livros`.`Genero` = `genero`.`ID`))) left join `subcadastro` `categoria` on((`livros`.`Categoria` = `categoria`.`ID`))) where (`livros`.`locavel` = -(1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-30 22:25:58
