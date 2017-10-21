PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "authors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "authors" VALUES(1,'(none)','2016-02-03 00:10:47.165902','2016-02-03 00:10:47.165902');
INSERT INTO "authors" VALUES(2,'Anthology','2016-02-03 00:10:47.181502','2016-02-03 00:10:47.181502');
INSERT INTO "authors" VALUES(3,'Barbara Siegel, Scott Siegel','2016-02-03 00:10:47.197102','2016-02-03 00:10:47.197102');
INSERT INTO "authors" VALUES(4,'Brian Thompsen','2016-02-03 00:10:47.197102','2016-02-03 00:10:47.197102');
INSERT INTO "authors" VALUES(5,'Bruce R. Cordell','2016-02-03 00:10:47.212702','2016-02-03 00:10:47.212702');
INSERT INTO "authors" VALUES(6,'Cam Banks','2016-02-03 00:10:47.228302','2016-02-03 00:10:47.228302');
INSERT INTO "authors" VALUES(7,'Carrie A. Bebris','2016-02-03 00:10:47.228302','2016-02-03 00:10:47.228302');
INSERT INTO "authors" VALUES(8,'Chet Williamson','2016-02-03 00:10:47.243902','2016-02-03 00:10:47.243902');
INSERT INTO "authors" VALUES(9,'Chris Pierson','2016-02-03 00:10:47.259502','2016-02-03 00:10:47.259502');
INSERT INTO "authors" VALUES(10,'Christopher Rowe','2016-02-03 00:10:47.259502','2016-02-03 00:10:47.259502');
INSERT INTO "authors" VALUES(11,'Clayton Emery','2016-02-03 00:10:47.275102','2016-02-03 00:10:47.275102');
INSERT INTO "authors" VALUES(12,'Dan Parkinson','2016-02-03 00:10:47.275102','2016-02-03 00:10:47.275102');
INSERT INTO "authors" VALUES(13,'Dave Gross','2016-02-03 00:10:47.290702','2016-02-03 00:10:47.290702');
INSERT INTO "authors" VALUES(14,'Dave Gross, Don Bassingthwaite','2016-02-03 00:10:47.290702','2016-02-03 00:10:47.290702');
INSERT INTO "authors" VALUES(15,'David Cook','2016-02-03 00:10:47.306302','2016-02-03 00:10:47.306302');
INSERT INTO "authors" VALUES(16,'Dixie Lee McKeone','2016-02-03 00:10:47.321902','2016-02-03 00:10:47.321902');
INSERT INTO "authors" VALUES(17,'Don Bassingthwaite','2016-02-03 00:10:47.321902','2016-02-03 00:10:47.321902');
INSERT INTO "authors" VALUES(18,'Don Perrin','2016-02-03 00:10:47.337502','2016-02-03 00:10:47.337502');
INSERT INTO "authors" VALUES(19,'Don Perrin, Margaret Weis','2016-02-03 00:10:47.337502','2016-02-03 00:10:47.337502');
INSERT INTO "authors" VALUES(20,'Douglas Niles','2016-02-03 00:10:47.353102','2016-02-03 00:10:47.353102');
INSERT INTO "authors" VALUES(21,'Douglas W. Clark','2016-02-03 00:10:47.368702','2016-02-03 00:10:47.368702');
INSERT INTO "authors" VALUES(22,'Drew Karpyshyn','2016-02-03 00:10:47.384302','2016-02-03 00:10:47.384302');
INSERT INTO "authors" VALUES(23,'Ed Gentry','2016-02-03 00:10:47.399902','2016-02-03 00:10:47.399902');
INSERT INTO "authors" VALUES(24,'Ed Greenwood','2016-02-03 00:10:47.415502','2016-02-03 00:10:47.415502');
INSERT INTO "authors" VALUES(25,'Ed Greenwood, Troy Denning','2016-02-03 00:10:47.415502','2016-02-03 00:10:47.415502');
INSERT INTO "authors" VALUES(26,'Ed Greenwood, Elaine Cunningham','2016-02-03 00:10:47.431102','2016-02-03 00:10:47.431102');
INSERT INTO "authors" VALUES(27,'Ed Greenwood, Jeff Grubb','2016-02-03 00:10:47.431102','2016-02-03 00:10:47.431102');
INSERT INTO "authors" VALUES(28,'Edo Van Belkom','2016-02-03 00:10:47.446702','2016-02-03 00:10:47.446702');
INSERT INTO "authors" VALUES(29,'Edward Bolme','2016-02-03 00:10:47.462302','2016-02-03 00:10:47.462302');
INSERT INTO "authors" VALUES(30,'Elaine Cunningham','2016-02-03 00:10:47.462302','2016-02-03 00:10:47.462302');
INSERT INTO "authors" VALUES(31,'Ellen Dodge Severson','2016-02-03 00:10:47.477902','2016-02-03 00:10:47.477902');
INSERT INTO "authors" VALUES(32,'Ellen Porath','2016-02-03 00:10:47.477902','2016-02-03 00:10:47.477902');
INSERT INTO "authors" VALUES(33,'Erik Scott de Bie','2016-02-03 00:10:47.509102','2016-02-03 00:10:47.509102');
INSERT INTO "authors" VALUES(34,'Erin M. Evans','2016-02-03 00:10:47.509102','2016-02-03 00:10:47.509102');
INSERT INTO "authors" VALUES(35,'Fergus Ryan','2016-02-03 00:10:47.524702','2016-02-03 00:10:47.524702');
INSERT INTO "authors" VALUES(36,'J.Robert King','2016-02-03 00:10:47.540302','2016-02-03 00:10:47.540302');
INSERT INTO "authors" VALUES(37,'Jak Koke','2016-02-03 00:10:47.540302','2016-02-03 00:10:47.540302');
INSERT INTO "authors" VALUES(38,'Jaleigh Johnson','2016-02-03 00:10:47.555902','2016-02-03 00:10:47.555902');
INSERT INTO "authors" VALUES(39,'James Lowder','2016-02-03 00:10:47.555902','2016-02-03 00:10:47.555902');
INSERT INTO "authors" VALUES(40,'James M. Ward','2016-02-03 00:10:47.571502','2016-02-03 00:10:47.571502');
INSERT INTO "authors" VALUES(41,'James P. Davis','2016-02-03 00:10:47.587102','2016-02-03 00:10:47.587102');
INSERT INTO "authors" VALUES(42,'Jean Rabe','2016-02-03 00:10:47.587102','2016-02-03 00:10:47.587102');
INSERT INTO "authors" VALUES(43,'Jeff Crook','2016-02-03 00:10:47.602702','2016-02-03 00:10:47.602702');
INSERT INTO "authors" VALUES(44,'Jeff Grubb','2016-02-03 00:10:47.602702','2016-02-03 00:10:47.602702');
INSERT INTO "authors" VALUES(45,'Jeff Grubb, Kate Novak','2016-02-03 00:10:47.633902','2016-02-03 00:10:47.633902');
INSERT INTO "authors" VALUES(46,'Jeleigh Johnson','2016-02-03 00:10:47.649502','2016-02-03 00:10:47.649502');
INSERT INTO "authors" VALUES(47,'Jenna Helland','2016-02-03 00:10:47.649502','2016-02-03 00:10:47.649502');
INSERT INTO "authors" VALUES(48,'Jess Lebow','2016-02-03 00:10:47.665102','2016-02-03 00:10:47.665102');
INSERT INTO "authors" VALUES(49,'John Maddox Roberts','2016-02-03 00:10:47.665102','2016-02-03 00:10:47.665102');
INSERT INTO "authors" VALUES(50,'Kameron M. Franklin','2016-02-03 00:10:47.680702','2016-02-03 00:10:47.680702');
INSERT INTO "authors" VALUES(51,'Kate Novak','2016-02-03 00:10:47.680702','2016-02-03 00:10:47.680702');
INSERT INTO "authors" VALUES(52,'Keith Francis Strohm','2016-02-03 00:10:47.696302','2016-02-03 00:10:47.696302');
INSERT INTO "authors" VALUES(53,'Kevin Stein','2016-02-03 00:10:47.711902','2016-02-03 00:10:47.711902');
INSERT INTO "authors" VALUES(54,'Linda P. Baker','2016-02-03 00:10:47.711902','2016-02-03 00:10:47.711902');
INSERT INTO "authors" VALUES(55,'Linda P. Baker, Nancy Varian Berberick','2016-02-03 00:10:47.727502','2016-02-03 00:10:47.727502');
INSERT INTO "authors" VALUES(56,'Lisa Smedman','2016-02-03 00:10:47.727502','2016-02-03 00:10:47.727502');
INSERT INTO "authors" VALUES(57,'Lucien Soulban','2016-02-03 00:10:47.743102','2016-02-03 00:10:47.743102');
INSERT INTO "authors" VALUES(58,'Lynn Abbey','2016-02-03 00:10:47.758702','2016-02-03 00:10:47.758702');
INSERT INTO "authors" VALUES(59,'Margaret Weis','2016-02-03 00:10:47.758702','2016-02-03 00:10:47.758702');
INSERT INTO "authors" VALUES(60,'Margaret Weis, Tracy Hickman','2016-02-03 00:10:47.774302','2016-02-03 00:10:47.774302');
INSERT INTO "authors" VALUES(61,'Margaret Weis, Don Perrin','2016-02-03 00:10:47.774302','2016-02-03 00:10:47.774302');
INSERT INTO "authors" VALUES(62,'Mark Anthony','2016-02-03 00:10:47.789902','2016-02-03 00:10:47.789902');
INSERT INTO "authors" VALUES(63,'Mark Anthony, Ellen Porath','2016-02-03 00:10:47.805502','2016-02-03 00:10:47.805502');
INSERT INTO "authors" VALUES(64,'Mark Sehestedt','2016-02-03 00:10:47.805502','2016-02-03 00:10:47.805502');
INSERT INTO "authors" VALUES(65,'Marsheila Rockwell','2016-02-03 00:10:47.821102','2016-02-03 00:10:47.821102');
INSERT INTO "authors" VALUES(66,'Mary H. Herbert','2016-02-03 00:10:47.836702','2016-02-03 00:10:47.836702');
INSERT INTO "authors" VALUES(67,'Mary Kirchoff','2016-02-03 00:10:47.836702','2016-02-03 00:10:47.836702');
INSERT INTO "authors" VALUES(68,'Mary Kirchoff, Douglas Niles','2016-02-03 00:10:47.852302','2016-02-03 00:10:47.852302');
INSERT INTO "authors" VALUES(69,'Mary Kirchoff, Steve Winter','2016-02-03 00:10:47.852302','2016-02-03 00:10:47.852302');
INSERT INTO "authors" VALUES(70,'Mel Odom','2016-02-03 00:10:47.992702','2016-02-03 00:10:47.992702');
INSERT INTO "authors" VALUES(71,'Michael Williams','2016-02-03 00:10:48.008302','2016-02-03 00:10:48.008302');
INSERT INTO "authors" VALUES(72,'Monte Cook','2016-02-03 00:10:48.008302','2016-02-03 00:10:48.008302');
INSERT INTO "authors" VALUES(73,'Murray J. D. Leeder','2016-02-03 00:10:48.023902','2016-02-03 00:10:48.023902');
INSERT INTO "authors" VALUES(74,'Nancy Varian Berberick','2016-02-03 00:10:48.039502','2016-02-03 00:10:48.039502');
INSERT INTO "authors" VALUES(75,'Nancy Varian Berberick, Jeff Crook','2016-02-03 00:10:48.039502','2016-02-03 00:10:48.039502');
INSERT INTO "authors" VALUES(76,'Paul B. Thompson','2016-02-03 00:10:48.055102','2016-02-03 00:10:48.055102');
INSERT INTO "authors" VALUES(77,'Paul B. Thompson, Tonya C. Cook','2016-02-03 00:10:48.055102','2016-02-03 00:10:48.055102');
INSERT INTO "authors" VALUES(78,'Paul B. Thompson, Tonya R. Carter','2016-02-03 00:10:48.086302','2016-02-03 00:10:48.086302');
INSERT INTO "authors" VALUES(79,'Paul S. Kemp','2016-02-03 00:10:48.101902','2016-02-03 00:10:48.101902');
INSERT INTO "authors" VALUES(80,'Peter Archer','2016-02-03 00:10:48.117502','2016-02-03 00:10:48.117502');
INSERT INTO "authors" VALUES(81,'Philip Athans','2016-02-03 00:10:48.117502','2016-02-03 00:10:48.117502');
INSERT INTO "authors" VALUES(82,'R. A. Salvatore','2016-02-03 00:10:48.133102','2016-02-03 00:10:48.133102');
INSERT INTO "authors" VALUES(83,'Richard A. Knaak','2016-02-03 00:10:48.133102','2016-02-03 00:10:48.133102');
INSERT INTO "authors" VALUES(84,'Richard Baker','2016-02-03 00:10:48.148702','2016-02-03 00:10:48.148702');
INSERT INTO "authors" VALUES(85,'Richard Lee Byers','2016-02-03 00:10:48.148702','2016-02-03 00:10:48.148702');
INSERT INTO "authors" VALUES(86,'Roland J. Green','2016-02-03 00:10:48.164302','2016-02-03 00:10:48.164302');
INSERT INTO "authors" VALUES(87,'Rosemary Jones','2016-02-03 00:10:48.164302','2016-02-03 00:10:48.164302');
INSERT INTO "authors" VALUES(88,'Samantha Henderson','2016-02-03 00:10:48.179902','2016-02-03 00:10:48.179902');
INSERT INTO "authors" VALUES(89,'Scott Ciencin','2016-02-03 00:10:48.179902','2016-02-03 00:10:48.179902');
INSERT INTO "authors" VALUES(90,'Stephen D. Sullivan','2016-02-03 00:10:48.195502','2016-02-03 00:10:48.195502');
INSERT INTO "authors" VALUES(91,'Steven Brown, Mary H. Herbert','2016-02-03 00:10:48.195502','2016-02-03 00:10:48.195502');
INSERT INTO "authors" VALUES(92,'Steven E. Schend','2016-02-03 00:10:48.211102','2016-02-03 00:10:48.211102');
INSERT INTO "authors" VALUES(93,'Thomas M. Reid','2016-02-03 00:10:48.226702','2016-02-03 00:10:48.226702');
INSERT INTO "authors" VALUES(94,'Tim Pratt','2016-02-03 00:10:48.242302','2016-02-03 00:10:48.242302');
INSERT INTO "authors" VALUES(95,'Tina Daniell','2016-02-03 00:10:48.242302','2016-02-03 00:10:48.242302');
INSERT INTO "authors" VALUES(96,'Tina Daniell, Jean Rabe','2016-02-03 00:10:48.257902','2016-02-03 00:10:48.257902');
INSERT INTO "authors" VALUES(97,'Tonya C. Cook, Paul B. Thompson','2016-02-03 00:10:48.257902','2016-02-03 00:10:48.257902');
INSERT INTO "authors" VALUES(98,'Troy Denning','2016-02-03 00:10:48.273502','2016-02-03 00:10:48.273502');
INSERT INTO "authors" VALUES(99,'Victor Milan','2016-02-03 00:10:48.273502','2016-02-03 00:10:48.273502');
INSERT INTO "authors" VALUES(100,'Voronica Whitney-Robinson','2016-02-03 00:10:48.289102','2016-02-03 00:10:48.289102');
INSERT INTO "authors" VALUES(101,'Ellis Peters','2016-03-30 07:38:38.451698','2016-03-30 07:38:38.451698');
INSERT INTO "authors" VALUES(102,'池波正太郎','2016-03-30 09:44:49.176494','2016-03-30 09:44:49.176494');
COMMIT;
