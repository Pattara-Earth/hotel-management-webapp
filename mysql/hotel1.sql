# MySQL-Front Dump 2.5
#
# Host: server1   Database: hotel
# --------------------------------------------------------
# Server version 4.0.11-gamma-nt

CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `hotel`;

SET character_set_results=utf8;
SET character_set_client=utf8;
SET character_set_connection=utf8;

#
# Table structure for table 'cust'
#

CREATE TABLE cust (
  CCODE varchar(255) NOT NULL PRIMARY KEY,
  CNAME varchar(255) default NULL,
  CADDR1 varchar(255) default NULL,
  CADDR2 varchar(255) default NULL,
  TEL varchar(255) default NULL,
  TCCODE varchar(255) default NULL,
  IDNO varchar(255) default NULL,
  NAME_BILL varchar(255) default NULL,
  BADDR1 varchar(255) default NULL,
  BADDR2 varchar(255) default NULL,
  TAXID varchar(255) default NULL,
  BDATE varchar(255) default NULL,
  EMAIL1 varchar(255) default NULL,
  LINE1 varchar(255) default NULL,
  FACEBOOK1 varchar(255) default NULL,
  WHATAPP1 varchar(255) default NULL,
  NATION1 varchar(255) default NULL,
  SUSER varchar(255) default NULL,
  SDATE varchar(255) default NULL,
  STIME varchar(255) default NULL
);

#
# Dumping data for table 'cust'
#

INSERT INTO cust VALUES("6600001", "PeteSterพีท", "-", "-", "-", "003", "_-____-_____-__-_", "-", "-", "-", "-", "__/__/____", "-", "-", "-", "-", "ไทย", "-", "-", "-");
INSERT INTO cust VALUES("6600011", "Saiphet  Yaovasopa", "-", "-", "-", "002", "_-____-_____-__-_", "-", "-", "-", "-", "__/__/____", "-", "-", "-", "-", "ไทย", "-", "-", "-");

#
# Table structure for table 'type_cust'
#

CREATE TABLE type_cust (
  TCCODE varchar(255) NOT NULL PRIMARY KEY,
  TCNAME varchar(255) default NULL
);

#
# Dumping data for table 'type_cust'
#

INSERT INTO type_cust VALUES("001", "WALK IN1");
INSERT INTO type_cust VALUES("002", "Agoda");
INSERT INTO type_cust VALUES("003", "Booking");
INSERT INTO type_cust VALUES("004", "Ascend Travel");
INSERT INTO type_cust VALUES("005", "Expedia");
INSERT INTO type_cust VALUES("006", "Traveloka");
INSERT INTO type_cust VALUES("007", "Air BNB");
INSERT INTO type_cust VALUES("008", "Complimentary");

#
# Table structure for table 'room1_status'
#

CREATE TABLE room1_status (
  RNO varchar(255) NOT NULL,
  STATUS1 varchar(255) NOT NULL,
  RDATE varchar(255) default NULL,
  TRDATE varchar(255) NOT NULL,
  REFNO varchar(255) default NULL,
  CONSTRAINT room1_status_pk PRIMARY KEY (RNO, STATUS1, TRDATE)
);

#
# Dumping data for table 'room1_status'
#

INSERT INTO room1_status VALUES("601", "จอง", "04/01/2567", "25670104", "MRS661000001");
INSERT INTO room1_status VALUES("601", "จอง", "03/01/2567", "25670103", "MRS661000001");

#
# Table structure for table 'room1'
#

CREATE TABLE room1 (
  CLASS1 varchar(255) default NULL,
  TRCODE varchar(255) default NULL,
  RNO varchar(255) NOT NULL PRIMARY KEY
);

#
# Dumping data for table 'room1'
#

INSERT INTO room1 VALUES("3", "02", "301");
INSERT INTO room1 VALUES("3", "01", "302");
INSERT INTO room1 VALUES("3", "01", "308");
INSERT INTO room1 VALUES("3", "01", "309");
INSERT INTO room1 VALUES("3", "01", "310");
INSERT INTO room1 VALUES("3", "02", "311");
INSERT INTO room1 VALUES("3", "01", "312");
INSERT INTO room1 VALUES("3", "01", "314");
INSERT INTO room1 VALUES("4", "02", "401");
INSERT INTO room1 VALUES("4", "01", "402");
INSERT INTO room1 VALUES("4", "02", "408");
INSERT INTO room1 VALUES("4", "02", "409");
INSERT INTO room1 VALUES("4", "02", "410");
INSERT INTO room1 VALUES("4", "02", "411");
INSERT INTO room1 VALUES("4", "02", "412");
INSERT INTO room1 VALUES("4", "02", "414");
INSERT INTO room1 VALUES("5", "02", "506");
INSERT INTO room1 VALUES("5", "02", "509");
INSERT INTO room1 VALUES("5", "02", "510");
INSERT INTO room1 VALUES("5", "02", "511");
INSERT INTO room1 VALUES("3", "03", "303");
INSERT INTO room1 VALUES("3", "04", "304");
INSERT INTO room1 VALUES("3", "04", "305");
INSERT INTO room1 VALUES("3", "04", "306");
INSERT INTO room1 VALUES("3", "04", "307");
INSERT INTO room1 VALUES("3", "04", "315");
INSERT INTO room1 VALUES("4", "03", "403");
INSERT INTO room1 VALUES("4", "04", "404");
INSERT INTO room1 VALUES("4", "04", "405");
INSERT INTO room1 VALUES("4", "04", "406");
INSERT INTO room1 VALUES("4", "04", "407");
INSERT INTO room1 VALUES("4", "04", "415");
INSERT INTO room1 VALUES("5", "04", "502");
INSERT INTO room1 VALUES("5", "03", "503");
INSERT INTO room1 VALUES("5", "03", "504");
INSERT INTO room1 VALUES("5", "04", "505");
INSERT INTO room1 VALUES("5", "04", "508");
INSERT INTO room1 VALUES("5", "04", "512");
INSERT INTO room1 VALUES("5", "04", "514");
INSERT INTO room1 VALUES("5", "04", "515");
INSERT INTO room1 VALUES("5", "05", "501");
INSERT INTO room1 VALUES("5", "05", "507");
INSERT INTO room1 VALUES("6", "02", "606");
INSERT INTO room1 VALUES("6", "02", "609");
INSERT INTO room1 VALUES("6", "02", "610");
INSERT INTO room1 VALUES("6", "02", "611");
INSERT INTO room1 VALUES("7", "02", "706");
INSERT INTO room1 VALUES("6", "04", "602");
INSERT INTO room1 VALUES("6", "03", "603");
INSERT INTO room1 VALUES("6", "03", "604");
INSERT INTO room1 VALUES("6", "04", "605");
INSERT INTO room1 VALUES("6", "04", "608");
INSERT INTO room1 VALUES("6", "04", "612");
INSERT INTO room1 VALUES("6", "04", "614");
INSERT INTO room1 VALUES("6", "04", "615");
INSERT INTO room1 VALUES("7", "04", "702");
INSERT INTO room1 VALUES("7", "03", "703");
INSERT INTO room1 VALUES("7", "03", "704");
INSERT INTO room1 VALUES("7", "04", "705");
INSERT INTO room1 VALUES("7", "04", "708");
INSERT INTO room1 VALUES("7", "04", "709");
INSERT INTO room1 VALUES("7", "04", "710");
INSERT INTO room1 VALUES("7", "04", "711");
INSERT INTO room1 VALUES("7", "04", "712");
INSERT INTO room1 VALUES("7", "04", "714");
INSERT INTO room1 VALUES("6", "05", "601");
INSERT INTO room1 VALUES("6", "05", "607");
INSERT INTO room1 VALUES("7", "05", "701");
INSERT INTO room1 VALUES("7", "05", "707");

#
# Table structure for table 'otas1'
#

CREATE TABLE otas1 (
  OCODE varchar(255) NOT NULL PRIMARY KEY,
  ONAME varchar(255) default NULL,
  OADDR1 varchar(255) default NULL,
  OADDR2 varchar(255) default NULL,
  TEL varchar(255) default NULL,
  CONTACT1 varchar(255) default NULL,
  TAXID varchar(255) default NULL,
  acode1 varchar(255) default NULL,
  acode2 varchar(255) default NULL
);

#
# Dumping data for table 'otas1'
#

INSERT INTO otas1 VALUES("001", "Ascend Travel", "101 True Digital Park,Griffin Building,12A Floor,", "Sukhumvit Road,Bangchak Sub-Distric,Phra Khanong Distrit Bangkok 10260", "-", "0105559069212", "0105559069212", "4100-01", "1130-01");
INSERT INTO otas1 VALUES("002", "Booking.com", "Oosterdokskade 163 1011 DL Amsterdam Netherlands", "-", "-", "--", "NL805734958B01", "4100-01", "1130-01");
INSERT INTO otas1 VALUES("003", "Agoda", "-", "-", "-", "-", "-", "4100-01", "1130-01");
INSERT INTO otas1 VALUES("004", "Expedia", "-", "-", "-", "-", "-", "4100-01", "1130-01");
INSERT INTO otas1 VALUES("005", "Traveloka", "-", "-", "+66639920272", "Jetniphit Boonma", "-", "4100-01", "1130-01");

#
# Table structure for table 'msanya1'
#

CREATE TABLE msanya1 (
  MYEAR varchar(255) default NULL,
  MONTHH double default NULL,
  REFNO varchar(255) default NULL,
  RDATE varchar(255) default NULL,
  TRDATE varchar(255) default NULL,
  STATUS1 varchar(255) default NULL,
  SDATE varchar(255) default NULL,
  STIME varchar(255) default NULL,
  SUSER varchar(255) default NULL,
  CCODE varchar(255) default NULL,
  PAY1 double default 0,
  BCODE varchar(255) default NULL,
  BNO varchar(255) default NULL,
  RMK1 varchar(255) default NULL,
  TMCODE varchar(255) default NULL,
  VISANO varchar(255) default NULL,
  RMK2 varchar(255) default NULL,
  RNO varchar(255) default NULL,
  BDATE varchar(255) default NULL,
  TBDATE varchar(255) default NULL,
  EDATE varchar(255) default NULL,
  TEDATE varchar(255) default NULL,
  QTY varchar(255) default NULL,
  UPRICE varchar(255) default NULL,
  TOTAL double default 0,
  GTOTAL double default 0,
  REFNO1 varchar(255) default NULL,
  RMK varchar(255) default NULL,
  ENO double default 0
);

#
# Dumping data for table 'msanya1'
#

INSERT INTO msanya1 VALUES("2566", "7", "MSY660700001", "02/07/2566", "25660702", "ยกเลิก", "11/09/2566", "16:22:18", "001", "6600045", "0", "05", "550-243562-0", "", "003", "", "", "306", "29/06/2566", "25660629", "29/09/2566", "25660929", "3", "20500", "20500", "20500", "-", "-", "0");
INSERT INTO msanya1 VALUES("2566", "4", "MSY660400001", "13/04/2566", "25660413", "ทำงานอยู่", "11/09/2566", "13:29:58", "888", "6600036", "0", "05", "550-243562-0", "", "003", "", "", "607", "13/04/2566", "25660413", "13/04/2568", "25680413", "24", "20000", "18000", "18000", "-", "-", "0");
INSERT INTO msanya1 VALUES("2566", "5", "MSY660500001", "29/05/2566", "25660529", "ทำงานอยู่", "11/09/2566", "16:14:56", "001", "6600044", "0", "05", "550-243562-0", "", "003", "", "", "515", "09/09/2566", "25660909", "09/09/2567", "25670909", "12", "18000", "18000", "18000", "-", "-", "0");
INSERT INTO msanya1 VALUES("2566", "6", "MSY660600001", "03/06/2566", "25660603", "ยกเลิก", "11/09/2566", "17:14:37", "001", "6600049", "0", "05", "550-243562-0", "", "003", "", "", "407", "03/06/2566", "25660603", "03/02/2567", "25670203", "8", "19000", "19000", "19000", "-", "-", "0");
INSERT INTO msanya1 VALUES("2566", "8", "MSY660800001", "09/08/2566", "25660809", "ยกเลิก", "11/09/2566", "17:37:30", "001", "6600050", "0", "-", "-", "", "002", "", "", "415", "09/08/2566", "25660809", "09/10/2566", "25661009", "2", "19500", "19500", "19500", "-", "-", "0");
INSERT INTO msanya1 VALUES("2566", "7", "MSY660700002", "10/07/2566", "25660710", "ยกเลิก", "11/09/2566", "18:26:18", "001", "6600051", "0", "05", "550-243562-0", "", "003", "", "", "502", "21/08/2566", "25660821", "21/08/2567", "25670821", "12", "19000", "21000", "21000", "-", "-", "0");
INSERT INTO msanya1 VALUES("2566", "7", "MSY660700003", "07/07/2566", "25660707", "ยกเลิก", "11/09/2566", "18:36:19", "001", "6600052", "0", "05", "550-243562-0", "", "003", "", "", "505", "07/07/2566", "25660707", "07/10/2566", "25661007", "3", "19000", "19000", "19000", "-", "-", "0");
INSERT INTO msanya1 VALUES("2566", "6", "MSY660600002", "29/06/2566", "25660629", "Check Out", "12/09/2566", "10:04:01", "002", "6600059", "0", "02", "390-4-51714-5", "", "004", "", "", "306", "29/06/2566", "25660629", "29/09/2566", "25660929", "3", "20500", "20500", "20500", "-", "-", "0");
INSERT INTO msanya1 VALUES("2565", "12", "MSY651200001", "07/12/2565", "25651207", "ทำงานอยู่", "12/09/2566", "10:11:46", "002", "6600060", "0", "-", "-", "", "002", "", "", "406", "07/12/2565", "25651207", "07/12/2566", "25661207", "12", "17500", "17500", "17500", "-", "-", "0");

#
# Table structure for table 'type_room'
#

CREATE TABLE type_room (
  TRCODE varchar(255) NOT NULL PRIMARY KEY,
  TRNAME varchar(255) default NULL,
  UPRICE float default NULL,
  MUPRICE float default NULL,
  UPRICE2 int(11) default NULL,
  TRNAME1 varchar(255) default NULL,
  type_bed varchar(255) default NULL
);

#
# Dumping data for table 'type_room'
#

INSERT INTO type_room VALUES("01", "Studio-Twin", 1150, 1050, 15000, "ST", "Twin Bed");
INSERT INTO type_room VALUES("02", "Studio-Double", 1150, 1050, 15000, "SD", "Double Bed");
INSERT INTO type_room VALUES("03", "1 Bed Room -T", 1450, 1300, 15000, "1BT", "Twin Bed");
INSERT INTO type_room VALUES("04", "1 Bed Room-D", 1450, 1000, 19000, "1BD", "Double Bed");
INSERT INTO type_room VALUES("05", "2 Bed Room", 1700, 1700, 25000, "2B", "-");