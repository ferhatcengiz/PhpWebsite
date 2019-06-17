# Host: localhost  (Version 5.5.5-10.1.37-MariaDB)
# Date: 2019-01-23 20:58:24
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "category"
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (9,0,'T-Shirt','tişört','tişört','true'),(10,0,'Pantolon','pantolon','pantolon','true'),(11,0,'Mont','mont','mont','true'),(12,0,'Ayakkabı','ayakkabı','ayakkabı','true'),(15,9,'Basic','basic','basic tişört','True'),(16,9,'Baskılı','baskılı','baskılı tişört','True'),(17,10,'Jean','jean','jean pantolon','True'),(18,10,'Slim Fit','slim fit','slim fit pantolon','True'),(19,11,'Yazlık','yazlık','yazlık mont','True'),(20,11,'Kışlık','kışlık','kışlık','True'),(21,12,'Spor','spor ayakkabı','Spor ayakkabı','True'),(22,12,'Bot','bot','bot','True');

#
# Structure for table "image"
#

DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "image"
#

INSERT INTO `image` VALUES (1,1,'6fda2199a88aefc38088da0e76d5afd0.png'),(2,25,'545bbbb0ff0fc6def2c19095bfcf3d50.jpeg'),(3,25,'0d98cf7b15f35cc80b4ba706261530ae.jpeg'),(5,25,'7d092b5e918e0835ade2f672698492ab.jpeg'),(6,25,'616f53287159d89f15233a65c7d7b654.jpeg'),(7,27,'e27d6d7a67044b7cf344d7851aa9a957.jpeg'),(8,27,'8f64a034fab557ae4d73de15f1051a22.jpeg'),(9,27,'56a5cd46f8e4496f8ae97fe65310c560.jpeg'),(10,27,'84887c08c4071404f1dde9960b693e18.jpeg'),(11,26,'4670721801e8ef12ee5e0225a1c45529.jpeg'),(12,26,'63918092133be97adb61d4795fcfbc33.jpeg'),(13,26,'6b955d7aa3946f6464468c732979dfa1.jpeg'),(14,26,'06008b23049ea55d220d1f4ea1b0094d.jpeg'),(15,28,'5db5ab8a3d6326de767ca4a0c849e021.jpeg'),(16,28,'9a0e86a316a55b05e43e31ee4dcc5245.jpeg'),(17,28,'233e8c4a765023df5dbf2fe2a6212c5b.jpeg'),(18,28,'ec4b36e2bb06f93b6df6141928525885.jpeg'),(19,29,'972bab3ec15670d4042acda1ed5171f2.jpeg'),(21,29,'3971d67225acbcd8fe90c18967cab780.jpeg'),(22,29,'38a6b25c0af736aeca6a84dbb701d6d6.jpeg'),(23,30,'27d01eeb26d02240e941ad01d2181e6a.jpeg'),(24,30,'54eeed25f6fb60ce862a0139b362353c.jpeg'),(26,30,'6e955850e4d59a8f8d918531ae2401cd.jpeg'),(27,32,'0a982e84e8936daaed38940ec1c83a93.jpeg'),(28,32,'3650723e95d2d25993f4c01b848a51b0.jpeg'),(29,32,'d92c1f9b3013d52a7b5ac549adacc53c.jpeg'),(30,33,'140b334a0ba400e0ebd8701f2cc6d97e.jpeg'),(31,33,'ec3f01151fadc694d4562d20a76db29e.jpeg'),(32,33,'8ec9f2cf8bff3108fb0b5bf5ed2ccd5f.jpeg'),(33,34,'40a52d407a111d183620f66301924990.jpeg'),(34,34,'98c65c96183b55f7b8b2cf11a9640942.jpeg'),(35,34,'cabbe4e9bac3395bb73a36f508b88ec3.jpeg'),(36,34,'4ecd108b8a8dc077a81f4d30e6a9b65b.jpeg'),(38,35,'d0d3527a1c39eece9c9626db09148448.jpeg'),(39,35,'73918350a41df5c31394eb41fdd840c0.jpeg'),(40,35,'6087304139ca0c5a83a5707e150a096a.jpeg');

#
# Structure for table "massages"
#

DROP TABLE IF EXISTS `massages`;
CREATE TABLE `massages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "massages"
#

INSERT INTO `massages` VALUES (2,'ferhat','ferhat@deneme.com','aaa','bbbb','','Okundu'),(3,'murat','murat@deneme.com','konu','açıklama öneri','tamam','Okundu'),(4,'ahmet','ahmet@deneme.com','konu2','açıklama2','önemli..','Okundu');

#
# Structure for table "migration_versions"
#

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migration_versions"
#

INSERT INTO `migration_versions` VALUES ('20181213222715'),('20181214214756'),('20181214215846'),('20181214220918'),('20181214221650'),('20190119202427'),('20190119203026'),('20190119211743'),('20190119215200'),('20190119235747'),('20190120010412');

#
# Structure for table "order_detail"
#

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "order_detail"
#

INSERT INTO `order_detail` VALUES (1,1,2,6,6,3,18,'alt kategori1-4','Ordered'),(2,2,1,8,123,5,615,'sdf','Ordered'),(3,3,1,8,123,1,123,'sdf','Ordered'),(4,4,1,8,123,2,246,'sdf','Ordered'),(5,5,1,8,23,2,46,'Basic Tişört','Ordered'),(6,6,1,25,30,2,60,'Basic','Ordered'),(7,6,1,32,35,3,105,'Basic Tişört','Ordered'),(8,7,5,30,250,1,250,'Kışlık Mont','Ordered'),(9,8,1,25,30,3,90,'Basic','Ordered'),(10,9,1,25,30,5,150,'Basic','Ordered'),(11,9,1,41,330,2,660,'bot','Ordered'),(12,9,1,41,330,NULL,NULL,'bot','Ordered'),(13,9,1,41,330,NULL,NULL,'bot','Ordered'),(14,9,1,41,330,NULL,NULL,'bot','Ordered'),(15,9,1,25,30,3,90,'Basic','Ordered');

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "orders"
#

INSERT INTO `orders` VALUES (1,2,18,'emre','karabuk','karabuk','65432165412','ship info','Accepted','kargoda mı'),(2,1,615,'ferhat','zb','ist','13123123','okey','Canceled','okey'),(3,1,123,'ferhat','bk','ank','12312','','Inshipping',''),(4,1,246,'ferhat','eve','kb','123123123','cancel','Canceled','cancel'),(5,1,46,'ferhat','kkk','kkk','1323312','done','Completed','done'),(6,1,165,'ferhat','zeytinburnu','istanbul','555999333','shipping','Canceled','shipping'),(7,5,250,'kadir cengiz','bakırköy','İstanbul','123456654','tamamlandı','Completed','tamamlandı'),(8,1,90,'ferhat','bağcılar','istanbul','555963321',NULL,'New',NULL),(9,1,900,'ferhat','100.yıl','istanbul','555999','shipping','Inshipping','shipping');

#
# Structure for table "product"
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `bprice` double DEFAULT NULL,
  `sprice` double DEFAULT NULL,
  `minn` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (25,'Basic','Basic Tişört','Basic Tişört',NULL,NULL,NULL,100,20,30,NULL,'<p>Basic Tişört</p>','0f00340edec8bb6eed075381e30e5c57.jpeg',NULL,15,NULL,'True'),(26,'Jean Pantolon','Jean Pantolon','Jean Pantolon',NULL,NULL,NULL,200,80,120,NULL,'<p>Jean Pantolon</p>','09d213f5a6f8b47df9bcb9bd5f71e5a2.jpeg',NULL,17,NULL,'True'),(27,'Baskılı Tişört','Baskılı Tişört','Baskılı Tişört',NULL,NULL,NULL,150,20,30,NULL,'<p>Baskılı Tişört</p>','0e110eca371f3c9b1078a0a59bf00cca.jpeg',NULL,16,NULL,'True'),(28,'Slim Fit','Slim Fit','Slim Fit',NULL,NULL,NULL,200,100,150,NULL,'<p>Slim Fit</p>','bfa49bedc0159d444263ba82d73628e3.jpeg',NULL,18,NULL,'True'),(29,'Yazlık Mont','Yazlık Mont','Yazlık Mont',NULL,NULL,NULL,170,100,200,NULL,'<p>Yazlık Mont</p>','dddf9af2e75a4f60bebfec470be36bc0.jpeg',NULL,19,NULL,'True'),(30,'Kışlık Mont','Kışlık Mont','Kışlık Mont',NULL,NULL,NULL,300,150,250,NULL,'<p>Kışlık Mont</p>','cc1222cf2c0603ca4108dabcadcfa225.jpeg',NULL,20,NULL,'True'),(31,'Spor Ayakkabı','Spor Ayakkabı','Spor Ayakkabı',NULL,NULL,NULL,170,200,300,NULL,'<p>Spor Ayakkabı</p>','a680786b5307478fc6cdc489de0a566a.jpeg',NULL,21,NULL,'True'),(32,'Basic Tişört','Basic Tişört','Basic Tişört',NULL,NULL,NULL,75,15,35,NULL,'<p>Basic Tişört</p>','b0297313667aea754ad5f379842d3360.jpeg',NULL,15,NULL,'True'),(33,'Baskılı Tişört','Baskılı Tişört','Baskılı Tişört',NULL,NULL,NULL,85,20,40,NULL,'<p>Baskılı Tişört</p>','d77ac434a004493510d356295f0f5f3a.jpeg',NULL,16,NULL,'True'),(34,'Basic Tişört','Basic Tişört','Basic Tişört',NULL,NULL,NULL,50,20,40,NULL,'<p>Basic Tişört</p>','537079f398c87afe06cf8b28af7fd384.jpeg',NULL,15,NULL,'True'),(35,'Basic Tişört','Basic Tişört','Basic Tişört',NULL,NULL,NULL,90,25,45,NULL,'<p>Basic Tişört</p>','15c4995fb3edcc461a955af0b202e110.jpeg',NULL,15,NULL,'True'),(36,'jean','jean','jean',NULL,NULL,NULL,250,120,220,NULL,'<p>jean</p>','38a492783b6153b60ec81e82a6b028f3.jpeg',NULL,17,NULL,'True'),(37,'jean','jean','jean',NULL,NULL,NULL,125,100,200,NULL,'<p>jean pantolon</p>','6a7a55092cb95055189ee50b12e485e9.jpeg',NULL,17,NULL,'True'),(38,'jean','jean','jean',NULL,NULL,NULL,200,80,160,NULL,'<p>jean pantolon</p>','fb6479edd67c7b46a7c762798b1e47bb.jpeg',NULL,17,NULL,'True'),(39,'Kışlık Mont','Kışlık Mont','Kışlık Mont',NULL,NULL,NULL,275,200,300,NULL,'<p>Kışlık Mont</p>','7ad89282425aee2c9f0edf7cefe18b4a.jpeg',NULL,20,NULL,'True'),(40,'Bot','bot','bot',NULL,NULL,NULL,250,200,300,NULL,'<p>bot</p>','becce946bca13dab5c995ddd26b14aad.jpeg',NULL,22,NULL,'True'),(41,'bot','bot','bot',NULL,NULL,NULL,120,220,330,NULL,'<p>bot</p>','350535774e360dbf961b2e66e6c7798c.jpeg',NULL,22,NULL,'True');

#
# Structure for table "setting"
#

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` int(11) DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci,
  `contact` longtext COLLATE utf8mb4_unicode_ci,
  `referances` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "setting"
#

INSERT INTO `setting` VALUES (1,'Ferhat Cengiz','Ferhat Cengiz','Ferhat Cengiz','Ferhat Cengiz','İstanbul','12312312312323',NULL,NULL,NULL,NULL,NULL,NULL,'<p>&nbsp; &nbsp; &nbsp; 10 Haziran 2013 itibariyle yayın hayatına başladı.&nbsp;</p><p>&nbsp; &nbsp; &nbsp; Akıllı telefonlar ve tablet bilgisayarlar ile ilgili haberler, gelişmeler, incelemeler, videolar, ipuçları, rehber yazıları, nasıl yapılır içerikleri, derlemeler, mobil oyun ve uygulama tanıtımları sitemizin içerik alanlarını oluşturmaktadır.</p><p>&nbsp; &nbsp; &nbsp; Mobil dünyaya dair kaliteli bir içerik üretim merkezi olmasını hedeflediğimiz üzerinde yer alan içerikler belirli ilkeler etrafında şekillenir.</p><p>&nbsp; &nbsp; &nbsp; Başlangıçta iki kişi tarafından yayın hayatına başlayan , geçen zaman içinde bir ekip haline gelen birçok emekçi ile birlikte hayatını sürdürmektedir.</p><p>&nbsp; &nbsp; &nbsp; Bizimle iletişim kurmak isterseniz iletişim sayfamızı, hakkımızda daha fazla bilgi sahibi olmak isterseniz künye sayfamızı ziyaret edebilirsiniz.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;FERHAT CENGİZ</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <i><strong>ferhat@deneme.com</strong></i></p>',NULL,'<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mucizeler Yarattığımız 400+ Projemiz bulunmaktadır.&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Projeler sayfamız üzerinden tüm detaylara ulaşabilirsiniz.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mevcut referanslarımız arasında, web tasarım, seo, dijital pazarlama, adwords, sosyal medya, yazılım, eticaret hizmeti sunduğumuz müşterilerimiz bulunmaktadır.&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Müşterilerimize verdiğimiz hizmet detayları ve yine ilgili projelerin süreçlerinin nasıl takip edildikleri hususunda proje detay sayfalarımızı inceleyebilirsiniz.&nbsp;</p><p>&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sizleri de referanslarımız arasında görmekten memnuniyet duyarız.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; FERHAT CENGİZ</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <i><strong>ferhat@deneme.com</strong></i></p>','True');

#
# Structure for table "shopcart"
#

DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "shopcart"
#


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'ferhat@deneme.com','ROLE_ADMIN','$2y$10$Vh4ouopPhzTMLeNeWne2h./H3DSUs.G8lXchHfGkoC3bQykKi2UyO','ferhat',NULL,'','',''),(3,'emre@emre.com','ROLE_USER','$2y$10$roEK0ynTNRbxJj3jkJwrnuSHgA4GWoYVM9IWDbHjpUpltXx4M1XBy','emre öztürk',NULL,'çubuq','213123123','Ankara'),(4,'mehmet@deneme.com','ROLE_USER','$2y$10$BtC1IdKtv0/lJ1ttTGHkDuCoIVa92HqkvxNrkNMPcAxsfuwUkFn0G','mehmet cengiz',NULL,'zeytinburnu','123132','İstanbul'),(5,'kadir@deneme.com','ROLE_USER','$2y$10$QPqOhOI5u0lKJ/CdFuSb6.Sl7DV5/bR16MvAOslgVZcQABQy0ZBgm','kadir cengiz',NULL,'bakırköy','123456654','İstanbul'),(6,'murat@deneme.com','ROLE_USER','$2y$10$iOKx43AOnwqD2mL5u6SgCedxxmxrpjyekt2evWqrOx19CDT3Pkg0y','murat cengiz',NULL,'beylikdüzü','55588996','İstanbul'),(7,'ali@deneme.com','ROLE_USER','$2y$10$7Wz6ZexVdRlqRHJ4i5wXCezXhVK9W7i.YIyImOMiy596iLW0zVcs6','ali cengiz',NULL,'esenler','555651','İstanbul');

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (2,'Ferhat cengiz','frcg@gmail.com','234','user','false','2018-12-14 01:45:13','0000-00-00 00:00:00'),(3,'Pacho','pachocat@gmail.com','345','user','ture','2018-12-14 01:45:33','0000-00-00 00:00:00'),(4,'ali veli','aliverli@hotmail.com','123','Admin','True','0000-00-00 00:00:00','0000-00-00 00:00:00');
