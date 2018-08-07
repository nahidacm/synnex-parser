-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: synnex
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Table structure for table `New_Content_Append`
--

DROP TABLE IF EXISTS `New_Content_Append`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `New_Content_Append` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SYNNEX_SKU_number` varchar(511) DEFAULT NULL,
  `Synnex_Internal` varchar(511) DEFAULT NULL,
  `column_3` int(11) DEFAULT NULL,
  `column_5` int(11) DEFAULT NULL,
  `column_6` int(11) DEFAULT NULL,
  `column_7` int(11) DEFAULT NULL,
  `column_8` int(11) DEFAULT NULL,
  `column_9` int(11) DEFAULT NULL,
  `column_10` int(11) DEFAULT NULL,
  `column_11` int(11) DEFAULT NULL,
  `column_12` int(11) DEFAULT NULL,
  `column_13` int(11) DEFAULT NULL,
  `column_14` int(11) DEFAULT NULL,
  `column_15` int(11) DEFAULT NULL,
  `column_16` int(11) DEFAULT NULL,
  `column_17` int(11) DEFAULT NULL,
  `column_18` int(11) DEFAULT NULL,
  `column_19` int(11) DEFAULT NULL,
  `column_20` int(11) DEFAULT NULL,
  `column_21` int(11) DEFAULT NULL,
  `column_22` int(11) DEFAULT NULL,
  `column_23` int(11) DEFAULT NULL,
  `column_24` int(11) DEFAULT NULL,
  `column_25` int(11) DEFAULT NULL,
  `column_26` int(11) DEFAULT NULL,
  `column_27` int(11) DEFAULT NULL,
  `column_28` int(11) DEFAULT NULL,
  `column_29` int(11) DEFAULT NULL,
  `column_30` int(11) DEFAULT NULL,
  `column_31` int(11) DEFAULT NULL,
  `column_32` int(11) DEFAULT NULL,
  `column_4` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `New_Content_Append`
--

LOCK TABLES `New_Content_Append` WRITE;
/*!40000 ALTER TABLE `New_Content_Append` DISABLE KEYS */;
/*!40000 ALTER TABLE `New_Content_Append` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_list`
--

DROP TABLE IF EXISTS `category_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CatCode` varchar(127) DEFAULT NULL,
  `Level1Description` varchar(511) DEFAULT NULL,
  `Level2Description` varchar(511) DEFAULT NULL,
  `Level3Description` varchar(511) DEFAULT NULL,
  `UNSPSC` varchar(127) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_list`
--

LOCK TABLES `category_list` WRITE;
/*!40000 ALTER TABLE `category_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat_file`
--

DROP TABLE IF EXISTS `flat_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flat_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Trading_Partner_Code` varchar(511) DEFAULT NULL,
  `Detail_Record_ID` varchar(511) DEFAULT NULL,
  `Manufacturer_Part_number` varchar(511) DEFAULT NULL,
  `SYNNEX_Internal_Use_1` varchar(511) DEFAULT NULL,
  `SYNNEX_SKU_number` varchar(511) DEFAULT NULL,
  `Status_Code` varchar(511) DEFAULT NULL,
  `Part_Description` text,
  `Manufacturer_Name` varchar(511) DEFAULT NULL,
  `SYNNEX_Internal_Use_2` varchar(511) DEFAULT NULL,
  `Qty_on_Hand_Total` varchar(511) DEFAULT NULL,
  `SYNNEX_Internal_Use_3` varchar(511) DEFAULT NULL,
  `SYNNEX_Internal_Use_4` varchar(511) DEFAULT NULL,
  `Contract_Price_With_Promo_Rebate` float DEFAULT NULL,
  `MSRP` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Miami_FL_CA_Chicago_IL` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Fremont_CA_CA_Halifax_NS` varchar(511) DEFAULT NULL,
  `Returnable_Flag` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Chantilly_VA` varchar(511) DEFAULT NULL,
  `Parcel_Shippable` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_USRichardson_TX_CA_Calgary_Alberta` varchar(511) DEFAULT NULL,
  `Unit_Cost_w_o_Promo_Rebate` float DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Chicago_IL_CA_Guelph_Ontario` varchar(511) DEFAULT NULL,
  `Media_Type` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Olive_Branch_MS_CA_Markham_ON` varchar(511) DEFAULT NULL,
  `SYNNEX_CAT_Code` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Keasby_NJ_CA_Richmond_BC` varchar(511) DEFAULT NULL,
  `SYNNEX_Internal_Use_5` varchar(511) DEFAULT NULL,
  `Ship_Weight` varchar(511) DEFAULT NULL,
  `Serialized_Flag` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Beaverton_OR` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Norcross_GA` varchar(511) DEFAULT NULL,
  `SYNNEX_Reserved_Use_1` varchar(511) DEFAULT NULL,
  `SYNNEX_HC_Price` varchar(511) DEFAULT NULL,
  `UPC_Code` varchar(511) DEFAULT NULL,
  `UNSPSC_Code` varchar(511) DEFAULT NULL,
  `SYNNEX_Internal_Use_6` varchar(511) DEFAULT NULL,
  `SKU_Created_Date` varchar(511) DEFAULT NULL,
  `SKU_ATTRIBUTES` varchar(511) DEFAULT NULL,
  `ETA_Date` varchar(511) DEFAULT NULL,
  `ABC_Code` varchar(511) DEFAULT NULL,
  `Kit_Stand_Alone_Flag` varchar(511) DEFAULT NULL,
  `State_GOV_Price` varchar(511) DEFAULT NULL,
  `Federal_GOV_Price` varchar(511) DEFAULT NULL,
  `EDUcational_Price` varchar(511) DEFAULT NULL,
  `TAA_Flag` varchar(511) DEFAULT NULL,
  `GSA_Pricing` varchar(511) DEFAULT NULL,
  `Promotion_Flag` varchar(511) DEFAULT NULL,
  `Promotion_Comment` varchar(511) DEFAULT NULL,
  `Promotion_Expiration_Date` varchar(511) DEFAULT NULL,
  `Long_Description_1` text,
  `Long_Description_2` text,
  `Long_Description_3` text,
  `Length` varchar(511) DEFAULT NULL,
  `Width` varchar(511) DEFAULT NULL,
  `Height` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Olive_Branch_MS` varchar(511) DEFAULT NULL,
  `GSA_NTE_Price` varchar(511) DEFAULT NULL,
  `Platform_Type` varchar(511) DEFAULT NULL,
  `Product_Description_FR` varchar(511) DEFAULT NULL,
  `SYNNEX_Reserved_Use_2` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Ontario_CA_qa` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Keasby_NJ` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Ontario_CA_cgpa` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Columbus_OH_cgpa` varchar(511) DEFAULT NULL,
  `Replacement_Sku` varchar(511) DEFAULT NULL,
  `Minimum_Order_Qty` varchar(511) DEFAULT NULL,
  `Purchasing_Requirements` varchar(511) DEFAULT NULL,
  `Gov_Class` varchar(511) DEFAULT NULL,
  `Warehouse_Qty_on_Hand_US_Columbus_OH_qa` varchar(511) DEFAULT NULL,
  `MFG_Drop_Ship_Warehouse_QT` varchar(511) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_file`
--

LOCK TABLES `flat_file` WRITE;
/*!40000 ALTER TABLE `flat_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `flat_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_report_without_0_qty`
--

DROP TABLE IF EXISTS `inv_report_without_0_qty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inv_report_without_0_qty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SYNNEX_SKU_number` varchar(511) DEFAULT NULL,
  `Qty_on_Hand_Total` float DEFAULT NULL,
  `c3` varchar(511) DEFAULT NULL,
  `c4` varchar(511) DEFAULT NULL,
  `c5` varchar(511) DEFAULT NULL,
  `c6` varchar(511) DEFAULT NULL,
  `c7` varchar(511) DEFAULT NULL,
  `c8` varchar(511) DEFAULT NULL,
  `c9` varchar(511) NOT NULL,
  `c10` varchar(511) NOT NULL,
  `c11` varchar(511) NOT NULL,
  `c12` varchar(511) NOT NULL,
  `SYNNEX_Internal_Use_1` varchar(511) DEFAULT NULL,
  `Manufacturer_Name` varchar(511) DEFAULT NULL,
  `c15` varchar(511) NOT NULL,
  `c16` varchar(511) NOT NULL,
  `c17` varchar(511) NOT NULL,
  `c18` varchar(511) NOT NULL,
  `c19` varchar(511) NOT NULL,
  `c20` varchar(511) DEFAULT NULL,
  `Part_Description` text,
  `c22` varchar(511) DEFAULT NULL,
  `c23` varchar(511) DEFAULT NULL,
  `c24` varchar(511) DEFAULT NULL,
  `c25` varchar(511) DEFAULT NULL,
  `c26` varchar(511) DEFAULT NULL,
  `SYNNEX_CAT_Code` varchar(511) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_report_without_0_qty`
--

LOCK TABLES `inv_report_without_0_qty` WRITE;
/*!40000 ALTER TABLE `inv_report_without_0_qty` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_report_without_0_qty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-08  5:46:54
