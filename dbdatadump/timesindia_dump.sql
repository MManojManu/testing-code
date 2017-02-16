-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: timesindia
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1

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
-- Table structure for table `article_content`
--

DROP TABLE IF EXISTS `article_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_parsed_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_content_article_id` (`article_parsed_id`),
  CONSTRAINT `fk_content_article_id` FOREIGN KEY (`article_parsed_id`) REFERENCES `article_parsed` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_content`
--

LOCK TABLES `article_content` WRITE;
/*!40000 ALTER TABLE `article_content` DISABLE KEYS */;
INSERT INTO `article_content` VALUES (1,1,'e  n td ctnto,r t olwmceMhvtsw'),(2,2,' wl  to w eidaepdneepsteDoadi '),(3,1,'7pDit dn ae eadndplelod l rio)'),(4,3,'nli   ineee.rh arlhhaorwwh Ahi'),(5,4,'iist  oiwu eoeetrpaceruWioesai'),(6,5,'fy dangWtfh soth e  urftii  n '),(7,2,'asor  rald s a  e yh slRlmieoe'),(8,6,'di2padhfo,pgsss obe aaa tshusn'),(9,4,'nba,miu ynh ahleom hro thdn  d'),(10,4,'l s hawest\'hpe wafeae iDutrohm'),(11,3,' h  larsehn oo iwftteooeeiptxe'),(12,3,'a gemteatthaki  es(os et mb.et'),(13,5,'noiomwehst7edhal  tpeh waoyyle'),(14,14,'odwi b .slt o toeteoensyd hfge'),(15,15,'hewot l ir   hblor hdtmryasbrd'),(16,2,'Wih iwp yrete sgneonwet eanbne'),(17,9,'ui inplrlfiabsuedilwrhiun dise'),(18,17,'a  iCalhlyhecrl rnpdDeMprlcwfs'),(19,12,'llre bbaolen itlwilietwaef,nhe'),(20,19,'lfrthrwTdlscaio o) l,os l  go '),(21,4,'Ah reCabCr tbrdmyrdSr apahetsa'),(22,16,' wtlsipf rDwfwfiaeyto a    tsn'),(23,2,'ynCfs ol esrieohu rsbrydiwntDo'),(24,13,'edl i r  tseihsshataiatCo olmi'),(25,13,'g,ht mhfn agolf ss l otRtstnfg'),(26,6,'meae,sedl slauia wsunamdbiri u'),(27,13,'s,aiegpmfw asrroroaf  emav n ,'),(28,11,'f  rw eipr  gws Afsi ara hnert'),(29,8,'aeihaipat ( RerRtlo van  t  .l'),(30,27,'etr  sft seswna taihtliowirodw'),(31,16,'e bet  laosalwoitsfaye ko t   '),(32,18,'nrdyoaolbeosm ln  tlei ani C t'),(33,2,'l h imob sr.m.dstaerdb alpp ln'),(34,17,'ilicf weoe a irvhhlpdeMa hl  o'),(35,2,'aadwe snn elopndrro hacnhr wn '),(36,16,'cpywr,rheeyscefgnrti wtoeaiy.t'),(37,23,'rnso  lh bes  y.,kdo ,n.ip twm'),(38,4,'tsnsrn agfctgsle ndae thstc\'oa'),(39,5,'pimhntesh uiD ex enrla enSri e'),(40,17,'r iasWll uoie a ehs huwtoi pf '),(41,25,'l erafsCn ncif etrsdr w as is '),(42,8,'wetdsn dtag n nat stnvveet rf '),(43,40,'ttyawesodehavhd ok aa)sDisnvy '),(44,14,'i  lak  o,imb   ots  hellyv  m'),(45,18,'r(da reftvnW futi ret liss rds'),(46,17,'e rr uemyaairolwwooovoffwitd h'),(47,26,' .tpaeapi)adlo uaanthdiAhdptsl'),(48,43,'nen n t a  eeatfwvridioWnnesln'),(49,7,'h aa MrystyoRt    tWde igstean'),(50,20,'neiiwaDraa ao insf sMle osw ae'),(51,40,'a Wldaofnast o   oelro pnpiwit'),(52,42,' d. e naegr tfinho,l tidn  llp'),(53,12,'adlriebaaaslDrcsoi.aeshgcpAaew'),(54,41,'ta nawsua gotlse olehndmtaoere'),(55,12,' ie\' Wenedteoha ool .oiaTs slr'),(56,15,'ps,d.t eltt ii  eocestm,resnhs'),(57,14,'a oa gtytnffRhik.rr ewTaaooasa'),(58,44,'brcssweti rnnaiort ei    trDa '),(59,12,'aih ,ro sh nRs ad tDtts l dr t'),(60,55,'Rdh  hsde aao io sym eist olhi'),(61,17,'ravnosdbrc davc  tyeMseen(mnrf'),(62,24,'e Mf tpeel. t e cgila,raafb me'),(63,53,' asRwaso nv foaoi peeeppin  sm'),(64,61,'twa  h,nahdDa vd sbew   cnfa r'),(65,8,'moowtey iwdsoea diidvspdehoa h'),(66,2,' l dra amatslgasadr a t tirsew'),(67,12,'ltbhbaws slDna ilt serodiaet t'),(68,57,' i tbniy)eladtdanvrf eatoaCcwr'),(69,52,'rcbsgetw dsedtad  aaut bShsfad'),(70,34,'e 2c alai pleitaws  oor hgatie'),(71,29,' fnoen tteihg ,ahwefbo rcaoaee'),(72,70,'twraeth  ncoeii kmdpaDnayeTilf'),(73,39,'i ont trixR lrimwu vde ayyrs e'),(74,36,'amsWh,ldrhtwafi,iad aavc toor '),(75,6,'trn enti ao vlsb  wg  taes n s'),(76,25,'wrnlhfsr mtd\'olnt y   o ynxoee'),(77,77,'ahtoottsr, netwil  hvyroeihna '),(78,65,'mt e eeetlW eeaioxr inongoorst'),(79,7,'oholbty aR ve ave iaatR l.nnai'),(80,51,'redftwhsha yr.uo epttm)  cwlwu'),(81,51,'hchpaldwal nrsh aol r  esf ,.l'),(82,19,'iRnetaa.dfmal ddda cr anpnds o'),(83,31,'e   ldsh oty d ah   ceetd ilia'),(84,82,'i lrel rSivteuoeo2t.lD lingsra'),(85,8,'cltit s kesanaeywae te itni eh'),(86,20,'  naAi sraoofr urte w,nsr   tt'),(87,4,'nwdehaiiecpl wnfhmdtDatttr bha'),(88,36,'sswleeln Dro finp iiorap.p\'tna'),(89,17,'l s lna. teeahm oe C(uk asae e'),(90,72,'nar.   o fbs etsti )dd o.darc '),(91,83,'hewthsee  to esokr.epeapb.ribn'),(92,68,'di2sSraoadb iWogrixwtatigml oA'),(93,7,'harr dsfy fl,a e hy t ad olir '),(94,45,'ieri  iswnethbseeoa  iw  o eao'),(95,38,'rlef2ittiyt esnwkm vwriatRnips'),(96,91,'wiriiAosrdnt eneDi orae idetee'),(97,66,'b  asetwalbtm sld norasie(asom'),(98,87,'s   lsd e iera coaoab lgeaeioe'),(99,9,'l 7 oyeni the  ws st  lheitwfd');
/*!40000 ALTER TABLE `article_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_download`
--

DROP TABLE IF EXISTS `article_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_download_local_file_path` varchar(250) NOT NULL,
  `article_download_created_date` datetime NOT NULL,
  `article_download_last_updated_date` datetime NOT NULL,
  `article_download_url` varchar(250) NOT NULL,
  `article_download_unique_id` varchar(250) NOT NULL,
  `article_download_is_parsed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_download_unique_id` (`article_download_unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_download`
--

LOCK TABLES `article_download` WRITE;
/*!40000 ALTER TABLE `article_download` DISABLE KEYS */;
INSERT INTO `article_download` VALUES (1,'home/mis/times/NJJWTS1ZYTVS.txt','2017-02-08 11:38:14','2017-02-08 11:38:14','http://www.thehindu.com/ecwlqvvuubov','u6m',1),(2,'home/mis/times/J2PXSZ5UOYNJ.txt','2017-02-08 11:38:14','2017-02-08 11:38:14','http://www.thehindu.com/dyl//gytwaol','cxj',1),(3,'home/mis/times/TRKTWXNGRIWP.txt','2017-02-08 11:38:14','2017-02-08 11:38:14','http://www.thehindu.com/xo/pfikyedeg','p8o',1),(4,'home/mis/times/MYYLLYL5ZNPM.txt','2017-02-08 11:38:15','2017-02-08 11:38:15','http://www.thehindu.com/kbfjoyqlpjch','tug',1),(5,'home/mis/times/QLJUJMR5NR5O.txt','2017-02-08 11:38:15','2017-02-08 11:38:15','http://www.thehindu.com/wuvuuft/mynx','dwb',1),(6,'home/mis/times/OJNUZTKQJIUW.txt','2017-02-08 11:38:15','2017-02-08 11:38:15','http://www.thehindu.com/isqqjzd/f*cw','29n',1),(7,'home/mis/times/SGYN5RTU1SY1.txt','2017-02-08 11:38:15','2017-02-08 11:38:15','http://www.thehindu.com/kpnsqfrehkml','1ya',1),(8,'home/mis/times/5IZHOVWVUKNL.txt','2017-02-08 11:38:16','2017-02-08 11:38:16','http://www.thehindu.com/hlhhkuyqcuel','cfx',1),(9,'home/mis/times/N55OX3QM35GL.txt','2017-02-08 11:38:16','2017-02-08 11:38:16','http://www.thehindu.com/fohsqbddrmyt','rvy',1),(10,'home/mis/times/NVMTKNSZYOUL.txt','2017-02-08 11:38:16','2017-02-08 11:38:16','http://www.thehindu.com/so*cx/hxlrsi','cfh',1),(11,'home/mis/times/IUYTTGPXXHSV.txt','2017-02-08 11:38:17','2017-02-08 11:38:17','http://www.thehindu.com/wbzeblmeakj*','8go',1),(12,'home/mis/times/VZHMOY5MSGLT.txt','2017-02-08 11:38:17','2017-02-08 11:38:17','http://www.thehindu.com/aktjhj*kihpn','gs6',1),(13,'home/mis/times/QQRJ1ZU51V5G.txt','2017-02-08 11:38:17','2017-02-08 11:38:17','http://www.thehindu.com/w/bdoed*ngsd','ifl',1),(14,'home/mis/times/GPG5Q15SNRV2.txt','2017-02-08 11:38:17','2017-02-08 11:38:17','http://www.thehindu.com/sciqwhsfgkrz','8zo',1),(15,'home/mis/times/MTGXXMXP3SLL.txt','2017-02-08 11:38:18','2017-02-08 11:38:18','http://www.thehindu.com/dzpodyoqk/pq','1k5',1),(16,'home/mis/times/TKKZZJWHMTZ2.txt','2017-02-08 11:38:18','2017-02-08 11:38:18','http://www.thehindu.com/cyqzqdixjdkt','pjz',1),(17,'home/mis/times/LOMMZYQJ3UNM.txt','2017-02-08 11:38:18','2017-02-08 11:38:18','http://www.thehindu.com/pbslbt/mboaz','tcy',1),(18,'home/mis/times/1NOQZIUZQ2RZ.txt','2017-02-08 11:38:19','2017-02-08 11:38:19','http://www.thehindu.com/qegro*vmbpuz','djw',1),(19,'home/mis/times/RVHOSJJMJMXG.txt','2017-02-08 11:38:19','2017-02-08 11:38:19','http://www.thehindu.com/jzvbqb/u*zgt','3n7',1),(20,'home/mis/times/1GQLHHO1YGWW.txt','2017-02-08 11:38:19','2017-02-08 11:38:19','http://www.thehindu.com/wponvnpmgbkp','qux',1),(21,'home/mis/times/IKGM5ZR1ZW3P.txt','2017-02-08 11:38:19','2017-02-08 11:38:19','http://www.thehindu.com/rbchvdbkqyis','czl',1),(22,'home/mis/times/GJPHJSVWZRWO.txt','2017-02-08 11:38:20','2017-02-08 11:38:20','http://www.thehindu.com/givgly*n/ocg','bfc',1),(23,'home/mis/times/SVPSYRUTZ1PN.txt','2017-02-08 11:38:20','2017-02-08 11:38:20','http://www.thehindu.com/cuxw*ptzhcgl','l7w',1),(24,'home/mis/times/51KXLYHR31VG.txt','2017-02-08 11:38:20','2017-02-08 11:38:20','http://www.thehindu.com/lwtnqkmvilmw','clg',1),(25,'home/mis/times/GLKYTN3IWON1.txt','2017-02-08 11:38:20','2017-02-08 11:38:20','http://www.thehindu.com/vpbcfhhpbj/x','1wu',1),(26,'home/mis/times/IRYU5XPUPIJT.txt','2017-02-08 11:38:21','2017-02-08 11:38:21','http://www.thehindu.com/yx*d*c*mfgcj','mrz',1),(27,'home/mis/times/WJNPUNPVK2SI.txt','2017-02-08 11:38:21','2017-02-08 11:38:21','http://www.thehindu.com/sxizmbh*kt*l','rnm',1),(28,'home/mis/times/1WZ2PUHKRWTO.txt','2017-02-08 11:38:21','2017-02-08 11:38:21','http://www.thehindu.com//lgokac*wmgs','b12',1),(29,'home/mis/times/MW1URPHRHMI2.txt','2017-02-08 11:38:22','2017-02-08 11:38:22','http://www.thehindu.com/qrukma*i/jui','r7s',1),(30,'home/mis/times/XKIMMKQMK3UM.txt','2017-02-08 11:38:22','2017-02-08 11:38:22','http://www.thehindu.com/zkglrd/tnj*u','c8e',1),(31,'home/mis/times/G15IVL3MLWQY.txt','2017-02-08 11:38:23','2017-02-08 11:38:23','http://www.thehindu.com/nrtaylhpddu/','k8u',1),(32,'home/mis/times/PJYV1ZL13WY2.txt','2017-02-08 11:38:23','2017-02-08 11:38:23','http://www.thehindu.com/ianmnjohmwbt','mxv',1),(33,'home/mis/times/PRHYXYXIRKPI.txt','2017-02-08 11:38:24','2017-02-08 11:38:24','http://www.thehindu.com/uhzpzsju*liw','vmx',1),(34,'home/mis/times/3YV1MXVJLN3N.txt','2017-02-08 11:38:24','2017-02-08 11:38:24','http://www.thehindu.com/hhsgysbrmlnt','mcy',1),(35,'home/mis/times/RO1NHNGOVJ3H.txt','2017-02-08 11:38:25','2017-02-08 11:38:25','http://www.thehindu.com//neyduofcroy','8f6',1),(36,'home/mis/times/3HYZNKYQNXZI.txt','2017-02-08 11:38:25','2017-02-08 11:38:25','http://www.thehindu.com/uidtbbnjerik','okd',1),(37,'home/mis/times/VVLSPUJMJZZM.txt','2017-02-08 11:38:25','2017-02-08 11:38:25','http://www.thehindu.com/rpjybhqekzsu','2tv',1),(38,'home/mis/times/3JJKHIPGI1WH.txt','2017-02-08 11:38:26','2017-02-08 11:38:26','http://www.thehindu.com/gaptbsuvbywr','pox',1),(39,'home/mis/times/3OUNXQZLUU3U.txt','2017-02-08 11:38:26','2017-02-08 11:38:26','http://www.thehindu.com/wuxzbobuyewe','8vr',1),(40,'home/mis/times/UQY5XJPHJNMY.txt','2017-02-08 11:38:26','2017-02-08 11:38:26','http://www.thehindu.com/tptkfmsx/zho','9y7',1),(41,'home/mis/times/5VOLZIYMRN12.txt','2017-02-08 11:38:26','2017-02-08 11:38:26','http://www.thehindu.com/vnzfzqgrawhq','5gw',1),(42,'home/mis/times/J5TTGGO2HJTY.txt','2017-02-08 11:38:27','2017-02-08 11:38:27','http://www.thehindu.com/zko*uhwurtax','n4q',1),(43,'home/mis/times/RR5TVOWYMQUJ.txt','2017-02-08 11:38:27','2017-02-08 11:38:27','http://www.thehindu.com/cbob*gkawlci','cy2',1),(44,'home/mis/times/Q2QL2JVGMYNM.txt','2017-02-08 11:38:27','2017-02-08 11:38:27','http://www.thehindu.com/mordgeofdynv','kee',1),(45,'home/mis/times/JGN1ZOU25OIZ.txt','2017-02-08 11:38:28','2017-02-08 11:38:28','http://www.thehindu.com/*n/rzrooyipg','y44',1),(46,'home/mis/times/QZVLZXU3HPQ3.txt','2017-02-08 11:38:28','2017-02-08 11:38:28','http://www.thehindu.com/usoyerqsqimc','51i',1),(47,'home/mis/times/G5GHO5VVNIUT.txt','2017-02-08 11:40:03','2017-02-08 11:40:03','http://www.thehindu.com/cwzxemwanmte','n8l',1),(48,'home/mis/times/UTOUSXWZPVYI.txt','2017-02-08 11:40:03','2017-02-08 11:40:03','http://www.thehindu.com/yn/yna*tkclk','nn7',1),(49,'home/mis/times/KUYNW252ZY5L.txt','2017-02-08 11:40:04','2017-02-08 11:40:04','http://www.thehindu.com/obgnxsxqsyti','fpn',1),(50,'home/mis/times/QQVNPO3MIZHG.txt','2017-02-08 11:40:04','2017-02-08 11:40:04','http://www.thehindu.com/yinjbytzrvui','ynj',1),(51,'home/mis/times/THTVOXR5OIO3.txt','2017-02-08 11:40:04','2017-02-08 11:40:04','http://www.thehindu.com/yci/orhn/grm','twi',1),(52,'home/mis/times/5X3NSHO3OZ3G.txt','2017-02-08 11:40:05','2017-02-08 11:40:05','http://www.thehindu.com/okcpyvwbgbck','izu',1),(53,'home/mis/times/TWN5SIM2XQ2G.txt','2017-02-08 11:40:05','2017-02-08 11:40:05','http://www.thehindu.com/f/ba/xvuzlv*','t52',1),(54,'home/mis/times/U5OZZPKLSKUZ.txt','2017-02-08 11:40:05','2017-02-08 11:40:05','http://www.thehindu.com/kseg*stkjkcu','yqx',1),(55,'home/mis/times/LZGPISPHWYNP.txt','2017-02-08 11:40:05','2017-02-08 11:40:05','http://www.thehindu.com/caq*etgaarjw','siv',1),(56,'home/mis/times/RQG5V32LNQT5.txt','2017-02-08 11:40:06','2017-02-08 11:40:06','http://www.thehindu.com/zorxxklquqmn','6js',1),(57,'home/mis/times/IYOSVZIGNZI1.txt','2017-02-08 11:40:06','2017-02-08 11:40:06','http://www.thehindu.com/quuvqtq*fjet','3ti',1),(58,'home/mis/times/5HWL3JUWLOZG.txt','2017-02-08 11:40:06','2017-02-08 11:40:06','http://www.thehindu.com/ppmummvbnfxo','lu3',1),(59,'home/mis/times/5XRRSM3MKGGK.txt','2017-02-08 11:40:07','2017-02-08 11:40:07','http://www.thehindu.com/uozypvvhaqhm','z6d',1),(60,'home/mis/times/SGZ1TTV32ZT2.txt','2017-02-08 11:40:07','2017-02-08 11:40:07','http://www.thehindu.com/uimublndofes','tt1',1),(61,'home/mis/times/MZU5OUQYVK25.txt','2017-02-08 11:40:07','2017-02-08 11:40:07','http://www.thehindu.com/nhxevgrcgdix','356',1),(62,'home/mis/times/S5WNKLUTIVP2.txt','2017-02-08 11:40:07','2017-02-08 11:40:07','http://www.thehindu.com/jdjfyhajfxau','5ab',1),(63,'home/mis/times/SZJOIRHRWPSU.txt','2017-02-08 11:40:08','2017-02-08 11:40:08','http://www.thehindu.com//pcanqbmtkdi','k3z',1),(64,'home/mis/times/JUOHGSP3IZSH.txt','2017-02-08 11:40:08','2017-02-08 11:40:08','http://www.thehindu.com/dcnkpelqjl/b','nqr',1),(65,'home/mis/times/PMUHMVYOPOKL.txt','2017-02-08 11:40:08','2017-02-08 11:40:08','http://www.thehindu.com/l*vpmygcuvf*','8ml',1),(66,'home/mis/times/1X5INVHKP1RT.txt','2017-02-08 11:40:08','2017-02-08 11:40:08','http://www.thehindu.com/yeimzop*mwwm','682',1),(67,'home/mis/times/WKUVV2ROVY2M.txt','2017-02-08 11:40:09','2017-02-08 11:40:09','http://www.thehindu.com/sch/xwtubedo','v5x',1),(68,'home/mis/times/LJTKSOP21SJI.txt','2017-02-08 11:40:09','2017-02-08 11:40:09','http://www.thehindu.com/tqbowghlblxq','4n4',1),(69,'home/mis/times/TTLJQMNWQIJR.txt','2017-02-08 11:40:09','2017-02-08 11:40:09','http://www.thehindu.com/amjo*wtatpha','fm2',1),(70,'home/mis/times/IKS2SHTSOU3W.txt','2017-02-08 11:40:10','2017-02-08 11:40:10','http://www.thehindu.com/rszldzooarge','eg3',1),(71,'home/mis/times/V3GTOUWINPM2.txt','2017-02-08 11:40:10','2017-02-08 11:40:10','http://www.thehindu.com/mwvgdvzienn*','ut2',1),(72,'home/mis/times/MU2SN21W2PNH.txt','2017-02-08 11:40:10','2017-02-08 11:40:10','http://www.thehindu.com/osiyp/oy*mim','11v',1),(73,'home/mis/times/3US5LVURW11Z.txt','2017-02-08 11:40:10','2017-02-08 11:40:10','http://www.thehindu.com/aoejdzm/gipn','hnr',1),(74,'home/mis/times/M23LP11OP2TZ.txt','2017-02-08 11:40:11','2017-02-08 11:40:11','http://www.thehindu.com/djciavf/iory','bum',1),(75,'home/mis/times/IUGR1RRJLX3R.txt','2017-02-08 11:40:11','2017-02-08 11:40:11','http://www.thehindu.com/mmbnpuotl//r','ysu',1),(76,'home/mis/times/UTTVWVHP31NY.txt','2017-02-08 11:40:11','2017-02-08 11:40:11','http://www.thehindu.com/kldkzbwvrjeg','nbz',1),(77,'home/mis/times/MX3GG3GVMWZH.txt','2017-02-08 11:40:11','2017-02-08 11:40:11','http://www.thehindu.com/mmuxr/sxwuvu','ni7',1),(78,'home/mis/times/YNKYHYYGQYNP.txt','2017-02-08 11:40:12','2017-02-08 11:40:12','http://www.thehindu.com/*sgomkwsshoz','4k1',1),(79,'home/mis/times/5YGPTWYWHHNS.txt','2017-02-08 11:40:12','2017-02-08 11:40:12','http://www.thehindu.com/cy*wrnzfwowx','byh',1),(80,'home/mis/times/YS3JPI3XGG21.txt','2017-02-08 11:40:12','2017-02-08 11:40:12','http://www.thehindu.com/eteiqjadyszz','pk3',1),(81,'home/mis/times/YYWKSJGNO2JL.txt','2017-02-08 11:40:13','2017-02-08 11:40:13','http://www.thehindu.com/kj/or*tiyjjp','bvw',1),(82,'home/mis/times/VOSWG3NKQPMY.txt','2017-02-08 11:40:13','2017-02-08 11:40:13','http://www.thehindu.com/ggiomnuuhibc','e9h',1),(83,'home/mis/times/JGHYPJTWQ1UR.txt','2017-02-08 11:40:13','2017-02-08 11:40:13','http://www.thehindu.com/zjkzyjozjutt','di2',1),(84,'home/mis/times/OQ5P221MTHQG.txt','2017-02-08 11:40:14','2017-02-08 11:40:14','http://www.thehindu.com/tnczlhrjdgli','nm8',1),(85,'home/mis/times/TVWWYPYSYSH2.txt','2017-02-08 11:40:14','2017-02-08 11:40:14','http://www.thehindu.com/qg/xaybfjrci','z2t',1),(86,'home/mis/times/HG5JXMM3TSTL.txt','2017-02-08 11:40:14','2017-02-08 11:40:14','http://www.thehindu.com/bnhkeqsqafh/','gk7',1),(87,'home/mis/times/LWPVMXMWPLY1.txt','2017-02-08 11:40:15','2017-02-08 11:40:15','http://www.thehindu.com/tviadnruvldb','84v',1),(88,'home/mis/times/3QMWNGVPUIJM.txt','2017-02-08 11:40:15','2017-02-08 11:40:15','http://www.thehindu.com/u/fssdetwht*','v3l',1),(89,'home/mis/times/2T13UW3VP3ZW.txt','2017-02-08 11:40:15','2017-02-08 11:40:15','http://www.thehindu.com/qisvnwmc/nby','yde',1),(90,'home/mis/times/UKJG5LPUTQ2W.txt','2017-02-08 11:40:15','2017-02-08 11:40:15','http://www.thehindu.com/tq*xylwir/jz','3vo',1),(91,'home/mis/times/NPGLX5VJJVM5.txt','2017-02-08 11:40:16','2017-02-08 11:40:16','http://www.thehindu.com/hl*pkoyoeogd','t78',1),(92,'home/mis/times/K1J3YQNKMTW2.txt','2017-02-08 11:40:16','2017-02-08 11:40:16','http://www.thehindu.com/xjgsxud/gaza','ydx',1),(93,'home/mis/times/XIVI11GVQL1P.txt','2017-02-08 11:40:16','2017-02-08 11:40:16','http://www.thehindu.com/pepogztopqyq','d1w',1),(94,'home/mis/times/H5IJ5H1K5VWO.txt','2017-02-08 11:40:17','2017-02-08 11:40:17','http://www.thehindu.com/vnimrdkvmzsv','nc7',1),(95,'home/mis/times/SROXWYX5GPXK.txt','2017-02-08 11:40:17','2017-02-08 11:40:17','http://www.thehindu.com/y*nbegf/xviu','wu5',1),(96,'home/mis/times/NUKYLIVXJVVU.txt','2017-02-08 11:40:17','2017-02-08 11:40:17','http://www.thehindu.com/rhpoc*avlult','mqw',1),(97,'home/mis/times/ZPTHZG3N3N2H.txt','2017-02-08 11:40:18','2017-02-08 11:40:18','http://www.thehindu.com/himnmkhbjje/','p45',1),(98,'home/mis/times/TKPTQLQLHWR1.txt','2017-02-08 11:40:18','2017-02-08 11:40:18','http://www.thehindu.com/zgavwiedwclc','ybq',1),(99,'home/mis/times/XIKIKH1O1VY1.txt','2017-02-08 11:40:18','2017-02-08 11:40:18','http://www.thehindu.com/jkprlojxvldp','cgv',1),(100,'home/mis/times/JONMJHLU2135.txt','2017-02-08 11:40:18','2017-02-08 11:40:18','http://www.thehindu.com/mqnzfaecutal','9e2',1);
/*!40000 ALTER TABLE `article_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_parsed`
--

DROP TABLE IF EXISTS `article_parsed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_parsed` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_title` varchar(250) NOT NULL,
  `unresolved_news_type_id` smallint(5) unsigned NOT NULL,
  `published_date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `last_updated_date` datetime NOT NULL,
  `unresolved_location_id` smallint(5) unsigned DEFAULT NULL,
  `source_id` smallint(3) unsigned NOT NULL,
  `article_download_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_article_download_id` (`article_download_id`),
  KEY `fk_article_news_type` (`unresolved_news_type_id`),
  KEY `fk_article_location_id` (`unresolved_location_id`),
  KEY `fk_content_source_id` (`source_id`),
  CONSTRAINT `fk_article_download_id` FOREIGN KEY (`article_download_id`) REFERENCES `article_download` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `fk_article_news_type` FOREIGN KEY (`unresolved_news_type_id`) REFERENCES `unresolved_news_type` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `fk_article_location_id` FOREIGN KEY (`unresolved_location_id`) REFERENCES `unresolved_location` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `fk_content_source_id` FOREIGN KEY (`source_id`) REFERENCES `source` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_parsed`
--

LOCK TABLES `article_parsed` WRITE;
/*!40000 ALTER TABLE `article_parsed` DISABLE KEYS */;
INSERT INTO `article_parsed` VALUES (1,'PCKIAJUEMPQJHFEGXTSGFWQSH',1,'2016-12-27 05:35:19','2017-02-08 11:38:14','2017-02-08 11:38:14',1,1,1),(2,'KOVQEVOHIQYHFQOYJCMZAHHWK',2,'2016-04-17 04:35:19','2017-02-08 11:38:14','2017-02-08 11:38:14',2,1,2),(3,'GRUSPLAQWYDQNMWQOPALDZUUF',1,'2016-03-17 05:35:19','2017-02-08 11:38:14','2017-02-08 11:38:14',1,1,1),(4,'EMMLAXIUQKICOSUZBUQHZGOWA',3,'2016-01-17 05:35:19','2017-02-08 11:38:15','2017-02-08 11:38:15',1,1,4),(5,'FERWUMYHMIMNTHMFCBIRVPBYX',4,'2016-03-17 05:35:19','2017-02-08 11:38:15','2017-02-08 11:38:15',3,1,4),(6,'UINOTEYIRBGEHLWDUBTSKYQJS',4,'2016-08-17 05:35:19','2017-02-08 11:38:15','2017-02-08 11:38:15',5,1,1),(7,'CWMISEFJKHXNPGKPLKVDMHUWU',3,'2016-03-17 05:35:19','2017-02-08 11:38:16','2017-02-08 11:38:16',6,1,5),(8,'WLUMHIYANYQEMDECHXQSMJDVI',8,'2016-12-27 05:35:19','2017-02-08 11:38:16','2017-02-08 11:38:16',2,1,6),(9,'FSSWUAQFSDHKECJHJPXMKQWRM',6,'2016-03-17 05:35:19','2017-02-08 11:38:16','2017-02-08 11:38:16',8,1,8),(10,'RRSINHEVFROUQSYXCGKJHBZOU',6,'2016-03-17 05:35:19','2017-02-08 11:38:16','2017-02-08 11:38:16',9,1,6),(11,'UHSLXVMBDACVVLPLBSAWWGPGU',7,'2016-12-27 05:35:19','2017-02-08 11:38:17','2017-02-08 11:38:17',2,1,3),(12,'QTQRHVURYLOMKAMHQFHXOYPUG',12,'2016-08-17 05:35:19','2017-02-08 11:38:17','2017-02-08 11:38:17',12,1,3),(13,'JZAATRVKFNFGTIOZGPKXJTOVC',6,'2016-02-17 05:35:19','2017-02-08 11:38:17','2017-02-08 11:38:17',3,1,3),(14,'QQTZSQKAPWHZBWRNOXIELCGXS',3,'2016-03-17 05:35:19','2017-02-08 11:38:18','2017-02-08 11:38:18',11,1,11),(15,'VBPMGHYENLKFTWEYQTQSNRWDX',12,'2016-03-17 05:35:19','2017-02-08 11:38:18','2017-02-08 11:38:18',7,1,5),(16,'VPSXKEVCJJGBKUPJWCIYEVPLI',1,'2016-08-17 05:35:19','2017-02-08 11:38:18','2017-02-08 11:38:18',7,1,10),(17,'LKMMXODYQAEPTKKNKWHPNSXPP',9,'2016-12-27 05:35:19','2017-02-08 11:38:18','2017-02-08 11:38:18',12,1,12),(18,'GCWPPQDKFCWAKUFXVXMQEPMOM',2,'2016-07-17 05:35:19','2017-02-08 11:38:19','2017-02-08 11:38:19',11,1,2),(19,'RWJWKBVFPKHOQMAFOTVOVGCTA',14,'2016-03-17 05:35:19','2017-02-08 11:38:19','2017-02-08 11:38:19',19,1,6),(20,'YZKPEZLKCNGQNIJRRJEVRGXOQ',2,'2016-02-17 05:35:19','2017-02-08 11:38:19','2017-02-08 11:38:19',20,1,9),(21,'BRKWATLHWPLSHEPISWTESNYAM',19,'2016-02-17 05:35:19','2017-02-08 11:38:20','2017-02-08 11:38:20',13,1,9),(22,'EVAUXAQKBJIRMSWWTEUCFMORH',11,'2016-12-27 05:35:19','2017-02-08 11:38:20','2017-02-08 11:38:20',3,1,5),(23,'FFNRREMGYQRNUPNCEDCPLWQVE',4,'2016-07-17 05:35:19','2017-02-08 11:38:20','2017-02-08 11:38:20',17,1,4),(24,'HMRAOAJHKTUDSLVJPNYQJQOCI',21,'2016-12-27 05:35:19','2017-02-08 11:38:20','2017-02-08 11:38:20',3,1,16),(25,'YTBWDMDTNJXHYNPCGJEDMZBXZ',19,'2016-07-17 05:35:19','2017-02-08 11:38:21','2017-02-08 11:38:21',2,1,13),(26,'AIIRIQTMYEKGOESGWUSAUXHDL',20,'2016-03-17 05:35:19','2017-02-08 11:38:21','2017-02-08 11:38:21',15,1,22),(27,'SYVEETBMIPBVYZKMHSGBGMJKW',15,'2016-03-17 05:35:19','2017-02-08 11:38:21','2017-02-08 11:38:21',2,1,20),(28,'JJJUWKWPKHNSJTISBSNSZQLED',2,'2016-03-17 05:35:19','2017-02-08 11:38:22','2017-02-08 11:38:22',27,1,14),(29,'OBSURJIGADOFASWGCYQNBLKSN',15,'2016-03-17 05:35:19','2017-02-08 11:38:22','2017-02-08 11:38:22',19,1,12),(30,'ODXHXVMJICMDQGFZQMCTIZCUM',27,'2016-08-17 05:35:19','2017-02-08 11:38:23','2017-02-08 11:38:23',20,1,13),(31,'DCJHFXQZYXKUXKTUHIZRSSLDS',30,'2016-12-27 05:35:19','2017-02-08 11:38:23','2017-02-08 11:38:23',25,1,17),(32,'MNMSAYXMQHEOKWOOTYRZPVAOK',16,'2016-04-17 04:35:19','2017-02-08 11:38:23','2017-02-08 11:38:23',4,1,14),(33,'CUSWYRYYEUDTJQKXKDICZPNKR',33,'2016-03-17 05:35:19','2017-02-08 11:38:24','2017-02-08 11:38:24',33,1,9),(34,'JAXUCKXFUNIEJNLIFZKZIPJUV',6,'2016-01-17 05:35:19','2017-02-08 11:38:25','2017-02-08 11:38:25',26,1,2),(35,'AQOFTLINHSLESCSUMEFNHBJYS',21,'2016-02-17 05:35:19','2017-02-08 11:38:25','2017-02-08 11:38:25',30,1,13),(36,'DQRNZJSPVPVNHEPENMWLPHROK',30,'2016-07-17 05:35:19','2017-02-08 11:38:25','2017-02-08 11:38:25',34,1,3),(37,'XYSYVZTOTDPSCPKWQHNJWBLCZ',22,'2016-04-17 04:35:19','2017-02-08 11:38:25','2017-02-08 11:38:25',34,1,10),(38,'RKMUWUKRAZKKHFZFHKXGWHOXQ',38,'2016-01-17 05:35:19','2017-02-08 11:38:26','2017-02-08 11:38:26',31,1,2),(39,'DMKUWUBFEGWQGPZIJEKQNZMBG',15,'2016-12-27 05:35:19','2017-02-08 11:38:26','2017-02-08 11:38:26',22,1,1),(40,'LMLTYXNXAWMNCXOBOSEGRMKPZ',16,'2016-03-17 05:35:19','2017-02-08 11:38:26','2017-02-08 11:38:26',31,1,31),(41,'NXEVBJNNBCWBYZBUNWWYHTJCD',38,'2016-01-17 05:35:19','2017-02-08 11:38:27','2017-02-08 11:38:27',7,1,5),(42,'KDTDXDJDPQDBSJAUJFZAJLEFQ',2,'2016-01-17 05:35:19','2017-02-08 11:38:27','2017-02-08 11:38:27',13,1,2),(43,'NCHZSLNTGELGTNLARBUMOZPGD',13,'2016-03-17 05:35:19','2017-02-08 11:38:27','2017-02-08 11:38:27',33,1,26),(44,'PLKTPWCHCEIRCNOGVYAFCFRAW',11,'2016-03-17 05:35:19','2017-02-08 11:38:27','2017-02-08 11:38:27',28,1,44),(45,'HMSHUPVHBIWYEBRWPFVTWNMUK',42,'2016-02-17 05:35:19','2017-02-08 11:38:28','2017-02-08 11:38:28',34,1,13),(46,'WFPSTDNSPVPKMXRYPOZBGWUHJ',29,'2016-04-17 04:35:19','2017-02-08 11:40:03','2017-02-08 11:40:03',6,1,36),(47,'TXSXHTPKUJPGWAQLYZUZSIOVH',30,'2016-03-17 05:35:19','2017-02-08 11:40:04','2017-02-08 11:40:04',9,1,39),(48,'YBIRVGQHPIDPKQXJHIFLSBCKK',17,'2016-08-17 05:35:19','2017-02-08 11:40:04','2017-02-08 11:40:04',45,1,24),(49,'QTBDDATZUGUFUPIDBYZXEYQKE',21,'2016-04-17 04:35:19','2017-02-08 11:40:04','2017-02-08 11:40:04',29,1,15),(50,'RUELQKLPRCLHOFFCOYXOXETAV',8,'2016-03-17 05:35:19','2017-02-08 11:40:04','2017-02-08 11:40:04',11,1,22),(51,'DVBRHOIZIRZDAGWMXORXBFKUT',6,'2016-03-17 05:35:19','2017-02-08 11:40:05','2017-02-08 11:40:05',14,1,11),(52,'FRWLXXIDWQQQFIAJHLIYUBIDQ',18,'2016-03-17 05:35:19','2017-02-08 11:40:05','2017-02-08 11:40:05',50,1,27),(53,'BVDIRSFPGEPQJDXDTKEWVXHUR',28,'2016-01-17 05:35:19','2017-02-08 11:40:05','2017-02-08 11:40:05',1,1,50),(54,'XNIRQAODJDJLYELKYBHFZXVYU',26,'2016-03-17 05:35:19','2017-02-08 11:40:06','2017-02-08 11:40:06',48,1,12),(55,'IUDAUABLUTDIIXWLSJBMATJSM',3,'2016-07-17 05:35:19','2017-02-08 11:40:06','2017-02-08 11:40:06',2,1,49),(56,'RTWLJJIUBIGAQLTLUPLNWOSFZ',21,'2016-12-27 05:35:19','2017-02-08 11:40:06','2017-02-08 11:40:06',45,1,22),(57,'LNEYOFQYTWNOONGCNPLXRBZUU',33,'2016-03-17 05:35:19','2017-02-08 11:40:06','2017-02-08 11:40:06',14,1,32),(58,'TUOUGJLKXQNKFLEZSFVNBQUAJ',23,'2016-03-17 05:35:19','2017-02-08 11:40:07','2017-02-08 11:40:07',4,1,55),(59,'UQVIUCXDXXASXPMQLVZCRZDUD',17,'2016-03-17 05:35:19','2017-02-08 11:40:07','2017-02-08 11:40:07',20,1,38),(60,'AUQYJKSZSNOLVHATRGJPABSCZ',33,'2016-03-17 05:35:19','2017-02-08 11:40:07','2017-02-08 11:40:07',16,1,5),(61,'MFNHWTDBYMHGUVJYHOSRNTXDZ',40,'2016-02-17 05:35:19','2017-02-08 11:40:08','2017-02-08 11:40:08',17,1,34),(62,'PRMLKAOVIXANYUDDELSWKVWKN',62,'2016-02-17 05:35:19','2017-02-08 11:40:08','2017-02-08 11:40:08',41,1,33),(63,'CEBKZAGOIXTNQMBHOITNBXLDW',12,'2016-01-17 05:35:19','2017-02-08 11:40:08','2017-02-08 11:40:08',39,1,39),(64,'XOYTZHPPDULHEURKOVKCAZNAJ',2,'2016-04-17 04:35:19','2017-02-08 11:40:08','2017-02-08 11:40:08',26,1,13),(65,'BFTGOVWXESYYDNMVKENSUNKCT',12,'2016-08-17 05:35:19','2017-02-08 11:40:09','2017-02-08 11:40:09',32,1,3),(66,'AKCLMZDMJOHQRCUEZOBTHRZOP',8,'2016-03-17 05:35:19','2017-02-08 11:40:09','2017-02-08 11:40:09',56,1,32),(67,'GJNYKYETZKNYAASDKLIZTRMRV',46,'2016-04-17 04:35:19','2017-02-08 11:40:09','2017-02-08 11:40:09',40,1,8),(68,'ZVMVDVCPJLAMFFTDVOIPBYPSN',9,'2016-07-17 05:35:19','2017-02-08 11:40:09','2017-02-08 11:40:09',9,1,40),(69,'WVQWLHKNVRDLOEUZYOHQFEDHQ',37,'2016-02-17 05:35:19','2017-02-08 11:40:10','2017-02-08 11:40:10',47,1,51),(70,'CALOYJJZSZSCZGOAMDIIGHVVM',58,'2016-04-17 04:35:19','2017-02-08 11:40:10','2017-02-08 11:40:10',48,1,59),(71,'UBUNBISMVPSWSNTZFSZOMXLPA',61,'2016-08-17 05:35:19','2017-02-08 11:40:10','2017-02-08 11:40:10',34,1,5),(72,'BFGDOKKPOWFEHDRZKNJZQEYQP',59,'2016-02-17 05:35:19','2017-02-08 11:40:11','2017-02-08 11:40:11',40,1,4),(73,'HLFGUMNEPGJBMOTLPFVMDTZXG',15,'2016-02-17 05:35:19','2017-02-08 11:40:11','2017-02-08 11:40:11',30,1,62),(74,'NGKCKZLKMAGFDPGOTRDTVRAZK',17,'2016-03-17 05:35:19','2017-02-08 11:40:11','2017-02-08 11:40:11',9,1,27),(75,'DPURGDTGGTZEKMYBSFHFDBRDA',36,'2016-02-17 05:35:19','2017-02-08 11:40:11','2017-02-08 11:40:11',54,1,13),(76,'MZSHCZOVCVZQQORKVGYUFDGGD',12,'2016-12-27 05:35:19','2017-02-08 11:40:12','2017-02-08 11:40:12',51,1,59),(77,'DSHMHFIMDRPOATCYYHXCJQTKK',26,'2016-08-17 05:35:19','2017-02-08 11:40:12','2017-02-08 11:40:12',10,1,10),(78,'KCWOJHAFOIRBMJEITICIGLLLP',69,'2016-07-17 05:35:19','2017-02-08 11:40:12','2017-02-08 11:40:12',71,1,45),(79,'ACZJWEXICMQSVRNQOSOEZDJCV',28,'2016-08-17 05:35:19','2017-02-08 11:40:12','2017-02-08 11:40:12',19,1,74),(80,'OYVXKQSGOFOJTTMROEOATBOGI',75,'2016-01-17 05:35:19','2017-02-08 11:40:13','2017-02-08 11:40:13',40,1,38),(81,'JCYCLMBMXHPOOTVMIZTBAUXYL',67,'2016-01-17 05:35:19','2017-02-08 11:40:13','2017-02-08 11:40:13',2,1,29),(82,'YTBZNKIFKXLCXHYUEBUHBPDDN',49,'2016-03-17 05:35:19','2017-02-08 11:40:13','2017-02-08 11:40:13',56,1,71),(83,'FNJRNMMHZUOVJZYVMSZQAHUOP',11,'2016-03-17 05:35:19','2017-02-08 11:40:14','2017-02-08 11:40:14',80,1,33),(84,'XQVYQDXADHQJKCCJTLANPNWAV',5,'2016-04-17 04:35:19','2017-02-08 11:40:14','2017-02-08 11:40:14',5,1,29),(85,'GLDJULZVZRMDMUNCUUSLSCSYZ',54,'2016-08-17 05:35:19','2017-02-08 11:40:15','2017-02-08 11:40:15',33,1,77),(86,'VSAEUPAFKDQVEWSMQVXDRSENN',77,'2016-12-27 05:35:19','2017-02-08 11:40:15','2017-02-08 11:40:15',82,1,68),(87,'WHWJTPASHGGOIOTZZWMLQZNEP',62,'2016-02-17 05:35:19','2017-02-08 11:40:15','2017-02-08 11:40:15',80,1,62),(88,'KKLYPAATSFQXKUZHUIFDSDYDQ',27,'2016-07-17 05:35:19','2017-02-08 11:40:15','2017-02-08 11:40:15',56,1,76),(89,'EHLMUQMLDHUJMCKQQQJYFYSPX',44,'2016-04-17 04:35:19','2017-02-08 11:40:16','2017-02-08 11:40:16',55,1,72),(90,'FETABMHMRZPVJUPRFJWSFZROY',32,'2016-08-17 05:35:19','2017-02-08 11:40:16','2017-02-08 11:40:16',57,1,33),(91,'SAVAKYEKRWIAPYWCAPAVVKJAO',13,'2016-07-17 05:35:19','2017-02-08 11:40:16','2017-02-08 11:40:16',49,1,17),(92,'KZUXVJIQKDKXOHGBGDODLLDGA',68,'2016-01-17 05:35:19','2017-02-08 11:40:17','2017-02-08 11:40:17',28,1,1),(93,'VBWTJTEHUAQMOHACKEPFBDZTA',71,'2016-12-27 05:35:19','2017-02-08 11:40:17','2017-02-08 11:40:17',64,1,21),(94,'QHPOKQFEWUKSJZLUZSYFQYTWM',82,'2016-12-27 05:35:19','2017-02-08 11:40:17','2017-02-08 11:40:17',70,1,20),(95,'EQUPWPXEKJMMFZPPDYLGTDZGC',87,'2016-03-17 05:35:19','2017-02-08 11:40:17','2017-02-08 11:40:17',69,1,19),(96,'HCLUYTJICFVIWMRYBOIVTLXPN',82,'2016-03-17 05:35:19','2017-02-08 11:40:18','2017-02-08 11:40:18',65,1,62),(97,'OPVJKMTYOYEPSTKEOEAVLEIGA',22,'2016-07-17 05:35:19','2017-02-08 11:40:18','2017-02-08 11:40:18',1,1,27),(98,'DUSKUBAZIPEGDMMJCRFISQDMR',19,'2016-12-27 05:35:19','2017-02-08 11:40:18','2017-02-08 11:40:18',53,1,27),(99,'CIIOCXKNYWCPCSPBLWMACYEVO',52,'2016-03-17 05:35:19','2017-02-08 11:40:19','2017-02-08 11:40:19',33,1,56);
/*!40000 ALTER TABLE `article_parsed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add Article Content',1,'add_articlecontent'),(2,'Can change Article Content',1,'change_articlecontent'),(3,'Can delete Article Content',1,'delete_articlecontent'),(4,'Can add Article Download',2,'add_articledownload'),(5,'Can change Article Download',2,'change_articledownload'),(6,'Can delete Article Download',2,'delete_articledownload'),(7,'Can add Article Parsed',3,'add_articleparsed'),(8,'Can change Article Parsed',3,'change_articleparsed'),(9,'Can delete Article Parsed',3,'delete_articleparsed'),(10,'Can add Author',4,'add_author'),(11,'Can change Author',4,'change_author'),(12,'Can delete Author',4,'delete_author'),(13,'Can add Resolved Location',5,'add_resolvedlocation'),(14,'Can change Resolved Location',5,'change_resolvedlocation'),(15,'Can delete Resolved Location',5,'delete_resolvedlocation'),(16,'Can add Resolved Location Unresolved Location Map',6,'add_resolvedlocationunresolvedlocationmap'),(17,'Can change Resolved Location Unresolved Location Map',6,'change_resolvedlocationunresolvedlocationmap'),(18,'Can delete Resolved Location Unresolved Location Map',6,'delete_resolvedlocationunresolvedlocationmap'),(19,'Can add Resolved News Type',7,'add_resolvednewstype'),(20,'Can change Resolved News Type',7,'change_resolvednewstype'),(21,'Can delete Resolved News Type',7,'delete_resolvednewstype'),(22,'Can add Resolved News Type Unresolved News Type Map',8,'add_resolvednewstypeunresolvednewstypemap'),(23,'Can change Resolved News Type Unresolved News Type Map',8,'change_resolvednewstypeunresolvednewstypemap'),(24,'Can delete Resolved News Type Unresolved News Type Map',8,'delete_resolvednewstypeunresolvednewstypemap'),(25,'Can add Source',9,'add_source'),(26,'Can change Source',9,'change_source'),(27,'Can delete Source',9,'delete_source'),(28,'Can add Unresolved Location',10,'add_unresolvedlocation'),(29,'Can change Unresolved Location',10,'change_unresolvedlocation'),(30,'Can delete Unresolved Location',10,'delete_unresolvedlocation'),(31,'Can add UnResolved News Type',11,'add_unresolvednewstype'),(32,'Can change UnResolved News Type',11,'change_unresolvednewstype'),(33,'Can delete UnResolved News Type',11,'delete_unresolvednewstype'),(34,'Can add log entry',12,'add_logentry'),(35,'Can change log entry',12,'change_logentry'),(36,'Can delete log entry',12,'delete_logentry'),(37,'Can add permission',13,'add_permission'),(38,'Can change permission',13,'change_permission'),(39,'Can delete permission',13,'delete_permission'),(40,'Can add user',14,'add_user'),(41,'Can change user',14,'change_user'),(42,'Can delete user',14,'delete_user'),(43,'Can add group',15,'add_group'),(44,'Can change group',15,'change_group'),(45,'Can delete group',15,'delete_group'),(46,'Can add content type',16,'add_contenttype'),(47,'Can change content type',16,'change_contenttype'),(48,'Can delete content type',16,'delete_contenttype'),(49,'Can add session',17,'add_session'),(50,'Can change session',17,'change_session'),(51,'Can delete session',17,'delete_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$VXhImGYADOVP$jWLeUUwAddLY/k/NJF74jO9Hnlvq+UvV5YpuBud/ACo=','2017-02-08 06:09:26',1,'tester1','','','',1,1,'2017-02-08 06:09:07');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_name` varchar(250) NOT NULL,
  `article_parsed_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `author_name` (`author_name`),
  KEY `fk_author_article_id` (`article_parsed_id`),
  CONSTRAINT `fk_author_article_id` FOREIGN KEY (`article_parsed_id`) REFERENCES `article_parsed` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'ajlbg',1),(2,'hgjjc',1),(3,'iSlff',3),(4,'mmhcj',3),(5,'kgdbl',1),(6,'Sjieb',5),(7,'hagag',1),(8,'ieiek',7),(9,'ejecc',3),(10,'amjhi',4),(11,'hamhk',7),(12,'afmfl',8),(13,'dfmig',6),(14,'ibafR',1),(15,'himdb',14),(16,'eSmfk',3),(17,'SiRil',4),(18,'fbahl',16),(19,'bahim',3),(20,'efmaR',15),(21,'Rfmag',15),(22,'mkcea',11),(23,'ehhla',10),(24,'mlhme',1),(25,'efaih',17),(26,'eelSb',9),(27,'liajm',15),(28,'ahkcj',22),(29,'amfam',18),(30,'mefbe',27),(31,'jjkcm',5),(32,'lceae',27),(33,'lhcha',26),(34,'lafcR',16),(35,'llmif',4),(36,'mjamd',32),(37,'hmela',34),(38,'lemde',10),(39,'bihmc',29),(40,'SSkmS',28),(41,'ddcjb',26),(42,'fjmah',27),(43,'ajaSh',1),(44,'lmklg',44),(45,'cmlcS',2),(46,'fdRab',38),(47,'mhRek',24),(48,'bmaja',16),(49,'kbmma',19),(50,'adSch',43),(51,'aRmdd',10),(52,'Rhhag',15),(53,'mfald',53),(54,'ameaR',39),(55,'hmbkl',36),(56,'RbdRm',51),(57,'ScSSk',16),(58,'jRfmd',19),(59,'ahijc',51),(60,'hiadd',39),(61,'jSgme',4),(62,'ahamm',43),(63,'eafia',63),(64,'gafbc',34),(65,'aRShb',19),(66,'haiaS',19),(67,'ildhm',37),(68,'dRmmg',33),(69,'hjaRm',34),(70,'mhRba',19),(71,'gccha',42),(72,'aScee',7),(73,'bhdhh',28),(74,'idlcm',8),(75,'kehib',54),(76,'hdhac',5),(77,'fRihm',1),(78,'mRhai',67),(79,'mgmSd',38),(80,'gmkii',74),(81,'eafmb',9),(82,'ceecj',51),(83,'lgmch',59),(84,'dekjc',23),(85,'RcgSi',69),(86,'Rmigj',2),(87,'almhh',84),(88,'mjelm',35),(89,'iaeee',28),(90,'ebleh',29),(91,'hjaje',27),(92,'kajja',69),(93,'jfkdj',22),(94,'dadgb',68),(95,'bfmca',4),(96,'kmaaS',7),(97,'aiahS',72),(98,'hlaSm',11),(99,'mjhkb',97);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-02-08 06:10:54','1','Technology',1,'[{\"added\": {}}, {\"added\": {\"object\": \"Technology\", \"name\": \"Resolved News Type Unresolved News Type Map\"}}]',7,1),(2,'2017-02-08 06:11:14','2','News',1,'[{\"added\": {}}, {\"added\": {\"object\": \"News\", \"name\": \"Resolved News Type Unresolved News Type Map\"}}, {\"added\": {\"object\": \"News\", \"name\": \"Resolved News Type Unresolved News Type Map\"}}, {\"added\": {\"object\": \"News\", \"name\": \"Resolved News Type Unresolved News Type Map\"}}]',7,1),(3,'2017-02-08 06:11:24','3','Entertainment',1,'[{\"added\": {}}, {\"added\": {\"object\": \"Entertainment\", \"name\": \"Resolved News Type Unresolved News Type Map\"}}]',7,1),(4,'2017-02-08 06:11:32','4','Health',1,'[{\"added\": {}}, {\"added\": {\"object\": \"Health\", \"name\": \"Resolved News Type Unresolved News Type Map\"}}]',7,1),(5,'2017-02-08 06:11:47','1','Kerala',1,'[{\"added\": {}}, {\"added\": {\"object\": \"Kerala\", \"name\": \"Resolved Location Unresolved Location Map\"}}, {\"added\": {\"object\": \"Kerala\", \"name\": \"Resolved Location Unresolved Location Map\"}}]',5,1),(6,'2017-02-08 06:11:55','2','Tamilnadu',1,'[{\"added\": {}}, {\"added\": {\"object\": \"Tamilnadu\", \"name\": \"Resolved Location Unresolved Location Map\"}}]',5,1),(7,'2017-02-08 06:12:33','3','Karnataka',1,'[{\"added\": {}}, {\"added\": {\"object\": \"Karnataka\", \"name\": \"Resolved Location Unresolved Location Map\"}}, {\"added\": {\"object\": \"Karnataka\", \"name\": \"Resolved Location Unresolved Location Map\"}}, {\"added\": {\"object\": \"Karnataka\", \"name\": \"Resolved Location Unresolved Location Map\"}}]',5,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (12,'admin','logentry'),(15,'auth','group'),(13,'auth','permission'),(14,'auth','user'),(16,'contenttypes','contenttype'),(1,'newsdb','articlecontent'),(2,'newsdb','articledownload'),(3,'newsdb','articleparsed'),(4,'newsdb','author'),(5,'newsdb','resolvedlocation'),(6,'newsdb','resolvedlocationunresolvedlocationmap'),(7,'newsdb','resolvednewstype'),(8,'newsdb','resolvednewstypeunresolvednewstypemap'),(9,'newsdb','source'),(10,'newsdb','unresolvedlocation'),(11,'newsdb','unresolvednewstype'),(17,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-02-08 06:08:45'),(2,'auth','0001_initial','2017-02-08 06:08:48'),(3,'admin','0001_initial','2017-02-08 06:08:48'),(4,'admin','0002_logentry_remove_auto_add','2017-02-08 06:08:48'),(5,'contenttypes','0002_remove_content_type_name','2017-02-08 06:08:49'),(6,'auth','0002_alter_permission_name_max_length','2017-02-08 06:08:49'),(7,'auth','0003_alter_user_email_max_length','2017-02-08 06:08:49'),(8,'auth','0004_alter_user_username_opts','2017-02-08 06:08:49'),(9,'auth','0005_alter_user_last_login_null','2017-02-08 06:08:50'),(10,'auth','0006_require_contenttypes_0002','2017-02-08 06:08:50'),(11,'auth','0007_alter_validators_add_error_messages','2017-02-08 06:08:50'),(12,'auth','0008_alter_user_username_max_length','2017-02-08 06:08:50'),(13,'newsdb','0001_initial','2017-02-08 06:08:50'),(14,'sessions','0001_initial','2017-02-08 06:08:50');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1pqnm31r064nrds0bfa8qi4f62jw7vnv','Nzc4NGE1MDc0ZWEzMzMyNTQwZTZlYWM2OWQ1NjNlY2ZmZmQwMDQzMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImU4ZWExNjEzODEwYzkwNjExNjQyMDgyNGE5MGZlYzcxMjVkMzU5NDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-22 06:09:26');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolved_location`
--

DROP TABLE IF EXISTS `resolved_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolved_location` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `resolved_location_name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resolved_location_name` (`resolved_location_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolved_location`
--

LOCK TABLES `resolved_location` WRITE;
/*!40000 ALTER TABLE `resolved_location` DISABLE KEYS */;
INSERT INTO `resolved_location` VALUES (3,'Karnataka'),(1,'Kerala'),(2,'Tamilnadu');
/*!40000 ALTER TABLE `resolved_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolved_location_unresolved_location_map`
--

DROP TABLE IF EXISTS `resolved_location_unresolved_location_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolved_location_unresolved_location_map` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `resolved_location_id` smallint(5) unsigned NOT NULL,
  `unresolved_location_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unresolved_location_id` (`unresolved_location_id`),
  KEY `fk_resolved_location_id` (`resolved_location_id`),
  CONSTRAINT `fk_resolved_location_id` FOREIGN KEY (`resolved_location_id`) REFERENCES `resolved_location` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `fk_unresolved_location_id` FOREIGN KEY (`unresolved_location_id`) REFERENCES `unresolved_location` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolved_location_unresolved_location_map`
--

LOCK TABLES `resolved_location_unresolved_location_map` WRITE;
/*!40000 ALTER TABLE `resolved_location_unresolved_location_map` DISABLE KEYS */;
INSERT INTO `resolved_location_unresolved_location_map` VALUES (1,1,19),(2,1,27),(3,2,17),(4,3,25),(5,3,2),(6,3,16);
/*!40000 ALTER TABLE `resolved_location_unresolved_location_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolved_news_type`
--

DROP TABLE IF EXISTS `resolved_news_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolved_news_type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `resolved_news_type_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resolved_news_type_name` (`resolved_news_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolved_news_type`
--

LOCK TABLES `resolved_news_type` WRITE;
/*!40000 ALTER TABLE `resolved_news_type` DISABLE KEYS */;
INSERT INTO `resolved_news_type` VALUES (3,'Entertainment'),(4,'Health'),(2,'News'),(1,'Technology');
/*!40000 ALTER TABLE `resolved_news_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolved_news_type_unresolved_news_type_map`
--

DROP TABLE IF EXISTS `resolved_news_type_unresolved_news_type_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolved_news_type_unresolved_news_type_map` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `resolved_news_type_id` smallint(5) unsigned NOT NULL,
  `unresolved_news_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_news_type` (`resolved_news_type_id`),
  KEY `fk_unresolved_news_type` (`unresolved_news_type_id`),
  CONSTRAINT `fk_news_type` FOREIGN KEY (`resolved_news_type_id`) REFERENCES `resolved_news_type` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `fk_unresolved_news_type` FOREIGN KEY (`unresolved_news_type_id`) REFERENCES `unresolved_news_type` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolved_news_type_unresolved_news_type_map`
--

LOCK TABLES `resolved_news_type_unresolved_news_type_map` WRITE;
/*!40000 ALTER TABLE `resolved_news_type_unresolved_news_type_map` DISABLE KEYS */;
INSERT INTO `resolved_news_type_unresolved_news_type_map` VALUES (1,1,8),(2,2,19),(3,2,6),(4,2,7),(5,3,15),(6,4,14);
/*!40000 ALTER TABLE `resolved_news_type_unresolved_news_type_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `source_name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_name` (`source_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
INSERT INTO `source` VALUES (1,'Times of India');
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unresolved_location`
--

DROP TABLE IF EXISTS `unresolved_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unresolved_location` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `unresolved_location_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unresolved_location`
--

LOCK TABLES `unresolved_location` WRITE;
/*!40000 ALTER TABLE `unresolved_location` DISABLE KEYS */;
INSERT INTO `unresolved_location` VALUES (1,'cochi'),(2,'mysore'),(3,'chennai'),(4,'mysore'),(5,'mysore'),(6,'mysore'),(7,'dk'),(8,'cochi'),(9,'udupi'),(10,'mysore'),(11,'cochi'),(12,'chennai'),(13,'cochi'),(14,'mysore'),(15,'udupi'),(16,'udupi'),(17,'chennai'),(18,'cochi'),(19,'cochi'),(20,'cochi'),(21,'mysore'),(22,'cochi'),(23,'cochi'),(24,'udupi'),(25,'dk'),(26,'udupi'),(27,'aluva'),(28,'cochi'),(29,'aluva'),(30,'chennai'),(31,'dk'),(32,'dk'),(33,'mysore'),(34,'chennai'),(35,'aluva'),(36,'chennai'),(37,'mysore'),(38,'udupi'),(39,'dk'),(40,'chennai'),(41,'cochi'),(42,'mysore'),(43,'udupi'),(44,'dk'),(45,'cochi'),(46,'dk'),(47,'udupi'),(48,'aluva'),(49,'mysore'),(50,'aluva'),(51,'aluva'),(52,'cochi'),(53,'udupi'),(54,'udupi'),(55,'cochi'),(56,'dk'),(57,'udupi'),(58,'aluva'),(59,'cochi'),(60,'udupi'),(61,'mysore'),(62,'dk'),(63,'dk'),(64,'mysore'),(65,'mysore'),(66,'udupi'),(67,'dk'),(68,'cochi'),(69,'cochi'),(70,'chennai'),(71,'dk'),(72,'dk'),(73,'mysore'),(74,'dk'),(75,'chennai'),(76,'aluva'),(77,'mysore'),(78,'chennai'),(79,'mysore'),(80,'cochi'),(81,'dk'),(82,'cochi'),(83,'udupi'),(84,'dk'),(85,'cochi'),(86,'mysore'),(87,'chennai'),(88,'chennai'),(89,'chennai'),(90,'aluva'),(91,'chennai'),(92,'chennai'),(93,'udupi'),(94,'chennai'),(95,'udupi'),(96,'aluva'),(97,'cochi'),(98,'dk'),(99,'dk');
/*!40000 ALTER TABLE `unresolved_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unresolved_news_type`
--

DROP TABLE IF EXISTS `unresolved_news_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unresolved_news_type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `unresolved_news_type_name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unresolved_news_type`
--

LOCK TABLES `unresolved_news_type` WRITE;
/*!40000 ALTER TABLE `unresolved_news_type` DISABLE KEYS */;
INSERT INTO `unresolved_news_type` VALUES (1,'city'),(2,'city'),(3,'science'),(4,'fitness'),(5,'fitness'),(6,'cities'),(7,'city'),(8,'science'),(9,'city'),(10,'news'),(11,'fitness'),(12,'magazine'),(13,'cities'),(14,'fitness'),(15,'magazine'),(16,'cities'),(17,'magazine'),(18,'magazine'),(19,'news'),(20,'cities'),(21,'news'),(22,'science'),(23,'news'),(24,'magazine'),(25,'science'),(26,'cities'),(27,'fitness'),(28,'city'),(29,'cities'),(30,'fitness'),(31,'cities'),(32,'fitness'),(33,'magazine'),(34,'cities'),(35,'magazine'),(36,'fitness'),(37,'fitness'),(38,'news'),(39,'city'),(40,'fitness'),(41,'magazine'),(42,'magazine'),(43,'science'),(44,'science'),(45,'magazine'),(46,'science'),(47,'news'),(48,'science'),(49,'cities'),(50,'fitness'),(51,'cities'),(52,'city'),(53,'fitness'),(54,'news'),(55,'news'),(56,'cities'),(57,'magazine'),(58,'science'),(59,'science'),(60,'news'),(61,'news'),(62,'news'),(63,'news'),(64,'city'),(65,'science'),(66,'cities'),(67,'cities'),(68,'fitness'),(69,'news'),(70,'news'),(71,'city'),(72,'magazine'),(73,'cities'),(74,'news'),(75,'cities'),(76,'magazine'),(77,'cities'),(78,'science'),(79,'fitness'),(80,'science'),(81,'magazine'),(82,'science'),(83,'magazine'),(84,'cities'),(85,'news'),(86,'fitness'),(87,'news'),(88,'fitness'),(89,'cities'),(90,'science'),(91,'science'),(92,'cities'),(93,'magazine'),(94,'fitness'),(95,'science'),(96,'cities'),(97,'news'),(98,'magazine'),(99,'cities'),(100,'magazine');
/*!40000 ALTER TABLE `unresolved_news_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08 11:45:00
