-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2019 at 12:15 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cv`
--

-- --------------------------------------------------------

--
-- Table structure for table `busenos`
--

CREATE TABLE `busenos` (
  `id_Busenos` int(11) NOT NULL,
  `name` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `busenos`
--

INSERT INTO `busenos` (`id_Busenos`, `name`) VALUES
(1, 'Aktyvus'),
(2, 'Nebegalioja'),
(3, 'Sustabdytas');

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE `cv` (
  `id_CV` int(11) NOT NULL,
  `Pavadinimas` varchar(255) DEFAULT NULL,
  `Kelias` varchar(255) DEFAULT NULL,
  `fk_Kandidatasid_Kandidatas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `cv`
--

INSERT INTO `cv` (`id_CV`, `Pavadinimas`, `Kelias`, `fk_Kandidatasid_Kandidatas`) VALUES
(1, 'Orci.pdf', 'C:UsersDocuments', 1),
(2, 'NonLectusAliquam.xls', 'C:UsersDocuments', 2),
(3, 'SapienCumSociis.ppt', 'C:UsersDocuments', 3),
(4, 'AugueAliquam.ppt', 'C:UsersDocuments', 4),
(5, 'EuSapien.ppt', 'C:UsersDocuments', 5),
(6, 'TellusNullaUt.xls', 'C:UsersDocuments', 6),
(7, 'MassaVolutpat.xls', 'C:UsersDocuments', 7),
(8, 'Semper.ppt', 'C:UsersDocuments', 8),
(9, 'IdSapien.ppt', 'C:UsersDocuments', 9),
(10, 'NonPretiumQuis.ppt', 'C:UsersDocuments', 10),
(11, 'Sed.xls', 'C:UsersDocuments', 11),
(12, 'MorbiSemMauris.ppt', 'C:UsersDocuments', 12),
(13, 'EgetCongue.ppt', 'C:UsersDocuments', 13),
(14, 'Et.doc', 'C:UsersDocuments', 14),
(15, 'SitAmetJusto.pdf', 'C:UsersDocuments', 15),
(16, 'VenenatisTristique.xls', 'C:UsersDocuments', 16),
(17, 'ConsectetuerAdipiscing.ppt', 'C:UsersDocuments', 17),
(18, 'EratVestibulum.xls', 'C:UsersDocuments', 18),
(19, 'EuOrci.xls', 'C:UsersDocuments', 19),
(20, 'NullaIntegerPede.xls', 'C:UsersDocuments', 20),
(21, 'DonecQuisOrci.xls', 'C:UsersDocuments', 21),
(22, 'DisParturientMontes.ppt', 'C:UsersDocuments', 22),
(23, 'VivamusTortor.xls', 'C:UsersDocuments', 23),
(24, 'Volutpat.ppt', 'C:UsersDocuments', 24),
(25, 'ConsequatIn.xls', 'C:UsersDocuments', 25),
(26, 'Phasellus.xls', 'C:UsersDocuments', 26),
(27, 'VelSemSed.ppt', 'C:UsersDocuments', 27),
(28, 'FaucibusAccumsanOdio.xls', 'C:UsersDocuments', 28),
(29, 'QuisqueId.ppt', 'C:UsersDocuments', 29),
(30, 'Dapibus.ppt', 'C:UsersDocuments', 30),
(31, 'Posuere.ppt', 'C:UsersDocuments', 31),
(32, 'RhoncusDuiVel.ppt', 'C:UsersDocuments', 32),
(33, 'Nonummy.ppt', 'C:UsersDocuments', 33),
(34, 'Etiam.ppt', 'C:UsersDocuments', 34),
(35, 'Duis.xls', 'C:UsersDocuments', 35),
(36, 'Habitasse.ppt', 'C:UsersDocuments', 36),
(37, 'Dui.ppt', 'C:UsersDocuments', 37),
(38, 'AtNuncCommodo.xls', 'C:UsersDocuments', 38),
(39, 'Convallis.pdf', 'C:UsersDocuments', 39),
(40, 'PellentesqueAt.ppt', 'C:UsersDocuments', 40),
(41, 'TortorIdNulla.xls', 'C:UsersDocuments', 41),
(42, 'RisusSemperPorta.xls', 'C:UsersDocuments', 42),
(43, 'IdLobortis.xls', 'C:UsersDocuments', 43),
(44, 'TortorIdNulla.ppt', 'C:UsersDocuments', 44),
(45, 'SemFusceConsequat.ppt', 'C:UsersDocuments', 45),
(46, 'SapienCursusVestibulum.ppt', 'C:UsersDocuments', 46),
(47, 'NonMauris.pdf', 'C:UsersDocuments', 47),
(48, 'DictumstMaecenas.xls', 'C:UsersDocuments', 48),
(49, 'Nunc.xls', 'C:UsersDocuments', 49),
(50, 'EtiamPretium.xls', 'C:UsersDocuments', 50);

-- --------------------------------------------------------

--
-- Table structure for table `igudziai`
--

CREATE TABLE `igudziai` (
  `id_Igudziai` int(11) NOT NULL,
  `Igudis` varchar(255) DEFAULT NULL,
  `Ivertinimas` varchar(255) DEFAULT NULL,
  `fk_Kandidatasid_Kandidatas` int(11) DEFAULT NULL,
  `fk_Testasid_Testas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `igudziai`
--

INSERT INTO `igudziai` (`id_Igudziai`, `Igudis`, `Ivertinimas`, `fk_Kandidatasid_Kandidatas`, `fk_Testasid_Testas`) VALUES
(1, 'Intercollegiate Athletics', '10', 12, 19),
(2, 'Java Enterprise Edition', '10', 44, 1),
(3, 'JVM', '7', 22, 48),
(4, 'MSDS', '1', 10, 22),
(5, 'Rock Climbing', '6', 26, 14),
(6, 'Yard Work', '4', 17, 31),
(7, 'SOA BPEL', '4', 5, 30),
(8, 'Attendance Management', '4', 37, 41),
(9, 'English', '8', 38, 14),
(10, 'GS1', '10', 17, 18),
(11, 'IGMP Snooping', '1', 35, 26),
(12, 'Hypnosis', '10', 13, 5),
(13, 'QSI', '2', 1, 1),
(14, 'Uveitis', '7', 38, 38),
(15, 'TF-CBT', '5', 8, 2),
(16, 'SnagIt', '1', 47, 3),
(17, 'European History', '9', 39, 9),
(18, 'GML', '10', 44, 50),
(19, 'Microsoft Word', '9', 40, 30),
(20, 'Banquets', '5', 9, 15),
(21, 'GNU C', '9', 49, 8),
(22, 'CNS disorders', '1', 20, 43),
(23, 'Revenue Cycle Management', '1', 20, 9),
(24, 'iReport', '7', 13, 9),
(25, 'Lymphoma', '10', 24, 2),
(26, 'NCSim', '2', 36, 20),
(27, 'PDM Works', '4', 34, 47),
(28, 'Modeling', '3', 13, 47),
(29, 'NNMi', '3', 24, 9),
(30, 'First Aid', '5', 25, 47),
(31, 'MLP', '4', 32, 34),
(32, 'NSN', '4', 33, 13),
(33, 'AutoCAD Civil 3D', '8', 36, 17),
(34, 'KDB', '5', 45, 37),
(35, 'Mythology', '6', 15, 10),
(36, 'Print On Demand', '6', 46, 24),
(37, 'HF', '9', 8, 35),
(38, 'Land Use Planning', '3', 36, 44),
(39, 'Big Data', '10', 33, 50),
(40, 'Medical Ultrasound', '3', 29, 49),
(41, 'Vendor Relationship Management', '7', 6, 49),
(42, 'IMS DB/DC', '4', 27, 46),
(43, 'TTP', '4', 26, 15),
(44, 'Ocean', '6', 17, 19),
(45, 'X-ray', '3', 40, 13),
(46, 'Non-linear Editing', '7', 17, 3),
(47, 'BMP design', '6', 11, 15),
(48, 'Technical Support', '10', 42, 17),
(49, 'Lunch', '2', 1, 32),
(50, 'RNAi', '8', 22, 41);

-- --------------------------------------------------------

--
-- Table structure for table `imone`
--

CREATE TABLE `imone` (
  `id_Imone` int(11) NOT NULL,
  `Pavadinimas` varchar(255) DEFAULT NULL,
  `El_pastas` varchar(255) DEFAULT NULL,
  `Tel_nr` varchar(255) DEFAULT NULL,
  `Veikla` varchar(255) DEFAULT NULL,
  `DarbuotojuSk` int(11) DEFAULT NULL,
  `Apyvarta` int(11) DEFAULT NULL,
  `Tinklapis` varchar(255) DEFAULT NULL,
  `VidutinisAtlyginimas` int(11) DEFAULT NULL,
  `Faksas` varchar(255) DEFAULT NULL,
  `ImonesKodas` varchar(255) DEFAULT NULL,
  `fk_Vietoveid_Vietove` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `imone`
--

INSERT INTO `imone` (`id_Imone`, `Pavadinimas`, `El_pastas`, `Tel_nr`, `Veikla`, `DarbuotojuSk`, `Apyvarta`, `Tinklapis`, `VidutinisAtlyginimas`, `Faksas`, `ImonesKodas`, `fk_Vietoveid_Vietove`) VALUES
(1, 'Flashpoint', 'pmacnally0@nasa.gov', '+57 404 887 1153', 'IT', 1258, 0, 'http://exblog.jp', 0, '+63 215 991 7594', '673754621', 1),
(2, 'Youspan', 'hrosborough1@cbslocal.com', '+64 658 405 1151', 'Kinas', 4307, 0, 'http://wikispaces.com', 0, '+353 560 114 7266', '615058097', 2),
(3, 'Skinix', 'abeauchamp2@ifeng.com', '+86 472 404 2915', 'Statybos', 1888, 0, 'https://narod.ru', 0, '+54 708 506 4582', '970495557', 3),
(4, 'Ntags', 'gmarshal3@digg.com', '+381 675 475 5872', 'Karine', 4692, 0, 'https://seattletimes.com', 0, '+62 807 955 5724', '598186962', 4),
(5, 'Fivespan', 'fchallenor4@comcast.net', '+56 657 615 7951', 'IT', 365, 0, 'https://senate.gov', 0, '+86 962 106 7092', '350823312', 5),
(6, 'Vidoo', 'descudier5@ucoz.com', '+995 732 988 4702', 'Statybos', 3321, 0, 'http://blinklist.com', 0, '+389 763 739 6287', '673678584', 6),
(7, 'Shuffletag', 'lbushill6@nhs.uk', '+260 347 141 9165', 'Karine', 874, 0, 'https://cbc.ca', 0, '+7 169 731 3528', '435767884', 7),
(8, 'Edgetag', 'rketts7@about.me', '+63 961 695 7556', 'Prekyba', 1525, 0, 'http://prnewswire.com', 0, '+216 677 594 8602', '471370390', 8),
(9, 'Jetpulse', 'fmaclean8@guardian.co.uk', '+63 321 774 4831', 'IT', 2124, 0, 'https://jalbum.net', 0, '+86 222 500 8639', '555550909', 9),
(10, 'Livefish', 'bheed9@geocities.com', '+20 264 610 4682', 'IT', 427, 0, 'http://hc360.com', 0, '+355 813 841 5206', '471600972', 10),
(11, 'Skipfire', 'clangmana@dropbox.com', '+62 750 971 1556', 'IT', 1459, 0, 'http://deliciousdays.com', 0, '+967 812 471 8174', '553889037', 11),
(12, 'Divavu', 'gaskewb@sciencedaily.com', '+7 679 167 4050', 'Prekyba', 3555, 0, 'https://umich.edu', 0, '+7 404 565 3006', '341788852', 12),
(13, 'Photojam', 'gbeernaertc@shinystat.com', '+86 104 676 3857', 'Karine', 2424, 0, 'http://ox.ac.uk', 0, '+86 975 173 0943', '468004292', 13),
(14, 'Zoonoodle', 'aguidottid@google.com.br', '+48 632 737 5612', 'IT', 3511, 0, 'http://auda.org.au', 0, '+1 967 181 0610', '195113462', 14),
(15, 'Lazz', 'cayrtone@craigslist.org', '+359 588 152 3059', 'IT', 3944, 0, 'http://bloomberg.com', 0, '+62 856 584 8407', '872956374', 15),
(16, 'Youbridge', 'rmatchettf@yelp.com', '+62 421 691 6093', 'Karine', 4897, 0, 'https://tripod.com', 0, '+55 569 114 0852', '653396338', 16),
(17, 'Reallinks', 'kalmang@cisco.com', '+81 138 600 8395', 'Karine', 792, 0, 'https://disqus.com', 0, '+86 631 864 7635', '181684639', 17),
(18, 'Zoonder', 'jmeenehanh@domainmarket.com', '+86 745 139 9595', 'Karine', 411, 0, 'http://elegantthemes.com', 0, '+55 274 656 1693', '789204672', 18),
(19, 'Mudo', 'tcleaveri@cmu.edu', '+63 824 992 5004', 'Prekyba', 1545, 0, 'https://toplist.cz', 0, '+504 329 750 5789', '886424224', 19),
(20, 'Kazio', 'bfishendenj@pbs.org', '+63 822 508 6545', 'Kinas', 964, 0, 'http://spiegel.de', 0, '+86 709 516 6832', '420119150', 20),
(21, 'Yamia', 'cbeagriek@prnewswire.com', '+86 526 290 4332', 'IT', 3714, 0, 'https://gnu.org', 0, '+55 238 147 4248', '959339155', 21),
(22, 'Flipopia', 'jwinnisterl@opera.com', '+33 658 327 6546', 'Statybos', 1828, 0, 'https://senate.gov', 0, '+380 535 663 5094', '465241358', 22),
(23, 'Browsebug', 'akleinem@slate.com', '+54 345 100 5817', 'IT', 1670, 0, 'https://google.fr', 0, '+62 812 151 6219', '609099451', 23),
(24, 'Jaxspan', 'fstoylesn@furl.net', '+62 610 481 3018', 'Prekyba', 1978, 0, 'https://dyndns.org', 0, '+63 266 272 6191', '648449617', 24),
(25, 'Tekfly', 'bmaskewo@comsenz.com', '+1 718 800 3861', 'IT', 4728, 0, 'http://abc.net.au', 0, '+976 164 942 2102', '653303351', 25),
(26, 'Omba', 'burianp@icq.com', '+86 901 541 3651', 'Kinas', 822, 0, 'https://rakuten.co.jp', 0, '+62 222 275 9325', '708636430', 26),
(27, 'Wikido', 'efaberq@shutterfly.com', '+63 382 534 0720', 'Kinas', 854, 0, 'http://so-net.ne.jp', 0, '+963 406 126 6583', '792504760', 27),
(28, 'Jatri', 'rdobererr@wix.com', '+55 574 303 3553', 'IT', 695, 0, 'https://squarespace.com', 0, '+81 557 774 3731', '658450827', 28),
(29, 'Aimbo', 'cbrehauts@unblog.fr', '+1 817 943 5602', 'Statybos', 3982, 0, 'https://squarespace.com', 0, '+86 635 141 2276', '129894051', 29),
(30, 'Voolia', 'bbarochet@accuweather.com', '+251 602 533 8099', 'Prekyba', 3917, 0, 'https://blog.com', 0, '+33 831 342 3432', '280853680', 30),
(31, 'Quimm', 'mburleu@google.co.uk', '+53 713 202 5581', 'Statybos', 81, 0, 'http://livejournal.com', 0, '+62 856 494 2618', '898690680', 31),
(32, 'Zoomlounge', 'cnichollsv@salon.com', '+63 693 289 1988', 'IT', 98, 0, 'http://narod.ru', 0, '+53 725 617 3785', '138611451', 32),
(33, 'Aivee', 'tstaresw@psu.edu', '+386 475 173 7776', 'IT', 2872, 0, 'http://livejournal.com', 0, '+47 255 325 5917', '990918766', 33),
(34, 'Skiba', 'lrangellx@drupal.org', '+98 802 264 4183', 'Statybos', 1630, 0, 'http://furl.net', 0, '+7 655 387 4606', '623667763', 34),
(35, 'Katz', 'fkienleiny@kickstarter.com', '+57 740 736 9086', 'Karine', 721, 0, 'https://cbc.ca', 0, '+86 669 816 6779', '222810283', 35),
(36, 'Tagchat', 'dfranceschielliz@flavors.me', '+86 993 593 8651', 'Karine', 687, 0, 'http://nifty.com', 0, '+229 779 345 3983', '613098017', 36),
(37, 'Voomm', 'ilittlefair10@mozilla.org', '+86 592 310 4493', 'Prekyba', 4324, 0, 'https://reference.com', 0, '+62 317 327 6045', '712987966', 37),
(38, 'Blognation', 'gtrout11@ezinearticles.com', '+52 809 202 0836', 'Statybos', 2923, 0, 'http://indiatimes.com', 0, '+84 551 113 4967', '270176043', 38),
(39, 'Wordpedia', 'hshadbolt12@businessweek.com', '+48 160 539 8217', 'Karine', 3485, 0, 'https://soup.io', 0, '+84 174 892 3153', '427122378', 39),
(40, 'Snaptags', 'xevennett13@discovery.com', '+380 169 605 2582', 'Karine', 4689, 0, 'https://imdb.com', 0, '+63 458 415 6960', '469875067', 40),
(41, 'Eamia', 'kjorissen14@ning.com', '+351 747 861 2727', 'Prekyba', 3900, 0, 'https://github.io', 0, '+595 142 487 8802', '383863240', 41),
(42, 'Twinte', 'glincoln15@amazon.co.uk', '+33 720 916 5462', 'Kinas', 3632, 0, 'https://squarespace.com', 0, '+51 255 704 9463', '369738266', 42),
(43, 'Realmix', 'hferson16@craigslist.org', '+98 718 886 1693', 'Karine', 3220, 0, 'http://usatoday.com', 0, '+81 396 389 6100', '638525102', 43),
(44, 'Rhyloo', 'pcrunkhurn17@hugedomains.com', '+63 535 667 0124', 'Prekyba', 3556, 0, 'https://ifeng.com', 0, '+86 139 119 0928', '845643363', 44),
(45, 'Podcat', 'lskylett18@cdbaby.com', '+420 229 349 0251', 'Kinas', 3238, 0, 'http://tmall.com', 0, '+86 254 527 0528', '973853669', 45),
(46, 'Oba', 'ocesaric19@abc.net.au', '+389 393 607 1925', 'Karine', 3560, 0, 'https://squarespace.com', 0, '+33 751 200 4979', '436440762', 46),
(47, 'Tagcat', 'bfarfalameev1a@stumbleupon.com', '+48 322 583 4634', 'IT', 4017, 0, 'https://google.com.hk', 0, '+86 895 879 4208', '779084466', 47),
(48, 'Yodel', 'kstranieri1b@angelfire.com', '+62 824 733 2392', 'Karine', 3773, 0, 'http://bravesites.com', 0, '+48 177 833 1052', '901269668', 48),
(49, 'Thoughtbeat', 'rchristol1c@cbsnews.com', '+373 662 476 1656', 'IT', 3386, 0, 'http://accuweather.com', 0, '+964 903 923 4583', '887919921', 49),
(50, 'Divavu', 'gmclauchlin1d@blogspot.com', '+54 516 691 3124', 'Karine', 1007, 0, 'https://admin.ch', 0, '+255 426 722 4997', '996412777', 50);

-- --------------------------------------------------------

--
-- Table structure for table `kandidatas`
--

CREATE TABLE `kandidatas` (
  `id_Kandidatas` int(11) NOT NULL,
  `Vardas` varchar(255) DEFAULT NULL,
  `Pavarde` varchar(255) DEFAULT NULL,
  `Gimimo_data` date DEFAULT NULL,
  `Telefonas` varchar(255) DEFAULT NULL,
  `El_Pastas` varchar(255) DEFAULT NULL,
  `Lytis` varchar(255) DEFAULT NULL,
  `fk_Vietoveid_Vietove` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `kandidatas`
--

INSERT INTO `kandidatas` (`id_Kandidatas`, `Vardas`, `Pavarde`, `Gimimo_data`, `Telefonas`, `El_Pastas`, `Lytis`, `fk_Vietoveid_Vietove`) VALUES
(1, 'Gearard', 'Mulholland', '1976-03-04', '+84 943 689 4566', 'gmulholland0@elpais.com', 'Male', 1),
(2, 'Fina', 'Edens', '1943-10-06', '+994 790 925 9231', 'fedens1@miitbeian.gov.cn', 'Female', 2),
(3, 'Beauregard', 'Jensen', '1938-10-09', '+355 654 628 1135', 'bjensen2@instagram.com', 'Male', 3),
(4, 'Bridie', 'McNeilley', '1989-10-23', '+504 745 849 4257', 'bmcneilley3@people.com.cn', 'Female', 4),
(5, 'Alexio', 'Petchell', '1945-09-16', '+66 189 304 6928', 'apetchell4@bizjournals.com', 'Male', 5),
(6, 'Cathleen', 'Caffin', '1959-07-28', '+63 140 190 6609', 'ccaffin5@sourceforge.net', 'Female', 6),
(7, 'Kristina', 'Widdicombe', '1966-12-25', '+359 485 170 9114', 'kwiddicombe6@paginegialle.it', 'Female', 7),
(8, 'Jeffie', 'Abazi', '1943-09-01', '+86 748 156 9727', 'jabazi7@google.co.uk', 'Male', 8),
(9, 'Henrietta', 'Lemmon', '2000-10-09', '+62 246 642 7873', 'hlemmon8@bing.com', 'Female', 9),
(10, 'Yovonnda', 'Ackroyd', '1979-05-08', '+351 233 655 8037', 'yackroyd9@biglobe.ne.jp', 'Female', 10),
(11, 'Eldin', 'Beavis', '1977-10-21', '+383 567 135 3364', 'ebeavisa@answers.com', 'Male', 11),
(12, 'Sergeant', 'Sends', '1966-10-27', '+7 647 616 8683', 'ssendsb@alexa.com', 'Male', 12),
(13, 'Easter', 'Harrow', '1984-07-10', '+55 948 430 0628', 'eharrowc@ovh.net', 'Female', 13),
(14, 'Robbi', 'Killgus', '1941-04-16', '+420 157 284 5111', 'rkillgusd@cmu.edu', 'Female', 14),
(15, 'Chandler', 'Alexander', '2001-08-15', '+63 365 873 5724', 'calexandere@so-net.ne.jp', 'Male', 15),
(16, 'Wyndham', 'Sloegrave', '1965-05-10', '+86 309 866 6192', 'wsloegravef@livejournal.com', 'Male', 16),
(17, 'Irvine', 'Deverell', '1969-10-30', '+994 235 979 3021', 'ideverellg@wix.com', 'Male', 17),
(18, 'Larisa', 'Shaw', '1945-02-02', '+45 750 818 8409', 'lshawh@wikipedia.org', 'Female', 18),
(19, 'Blakeley', 'Clarridge', '1979-12-07', '+86 324 928 2072', 'bclarridgei@mac.com', 'Female', 19),
(20, 'Patin', 'Jansik', '1991-05-12', '+998 610 177 0449', 'pjansikj@elpais.com', 'Male', 20),
(21, 'Sydney', 'Buy', '1952-07-22', '+86 496 347 0834', 'sbuyk@goo.ne.jp', 'Male', 21),
(22, 'Gavan', 'Critchard', '1967-03-13', '+1 650 956 8160', 'gcritchardl@sfgate.com', 'Male', 22),
(23, 'Carolyne', 'Caraher', '1954-11-01', '+86 856 711 9561', 'ccaraherm@adobe.com', 'Female', 23),
(24, 'Chrystal', 'McGuiney', '1980-08-09', '+62 304 794 9668', 'cmcguineyn@yelp.com', 'Female', 24),
(25, 'Melesa', 'Sorey', '1942-05-06', '+62 481 465 3253', 'msoreyo@ocn.ne.jp', 'Female', 25),
(26, 'Derick', 'Vannet', '1965-08-03', '+86 224 104 7361', 'dvannetp@cnn.com', 'Male', 26),
(27, 'Viviene', 'Cordeix', '1961-09-15', '+1 370 605 0227', 'vcordeixq@foxnews.com', 'Female', 27),
(28, 'Diego', 'Gentsch', '1964-10-10', '+234 184 388 0674', 'dgentschr@constantcontact.com', 'Male', 28),
(29, 'Enrika', 'Pryn', '1953-09-16', '+84 537 494 2133', 'epryns@bloomberg.com', 'Female', 29),
(30, 'Eddie', 'Greystock', '1973-04-07', '+62 796 915 1874', 'egreystockt@dedecms.com', 'Male', 30),
(31, 'Lilia', 'Woodyear', '1987-03-07', '+86 697 764 7105', 'lwoodyearu@live.com', 'Female', 31),
(32, 'Elie', 'Tidswell', '1985-06-17', '+62 854 105 4812', 'etidswellv@nps.gov', 'Female', 32),
(33, 'Germain', 'Davidavidovics', '1989-02-28', '+86 524 657 7946', 'gdavidavidovicsw@si.edu', 'Male', 33),
(34, 'Delcine', 'Patrono', '1960-03-11', '+992 589 751 3942', 'dpatronox@quantcast.com', 'Female', 34),
(35, 'Fidelio', 'Legrand', '1938-12-29', '+47 141 898 0894', 'flegrandy@columbia.edu', 'Male', 35),
(36, 'Ettore', 'Robers', '1955-07-22', '+86 537 111 4608', 'erobersz@smugmug.com', 'Male', 36),
(37, 'Grange', 'Davies', '1948-08-15', '+48 161 398 2210', 'gdavies10@oracle.com', 'Male', 37),
(38, 'Cletus', 'Wetherill', '1995-05-16', '+62 613 119 4305', 'cwetherill11@columbia.edu', 'Male', 38),
(39, 'Honey', 'Chamberlin', '1977-02-25', '+62 522 797 6452', 'hchamberlin12@harvard.edu', 'Female', 39),
(40, 'Hillary', 'Palia', '1991-07-30', '+62 811 771 7935', 'hpalia13@sciencedaily.com', 'Male', 40),
(41, 'Darrin', 'Rudgerd', '1999-06-01', '+352 182 997 3937', 'drudgerd14@deviantart.com', 'Male', 41),
(42, 'Celestine', 'Jopp', '1971-06-30', '+86 913 488 0910', 'cjopp15@dailymotion.com', 'Female', 42),
(43, 'Frank', 'Bleiman', '1940-01-24', '+992 426 453 6066', 'fbleiman16@samsung.com', 'Female', 43),
(44, 'Dewain', 'Chifney', '1991-09-28', '+63 586 957 9597', 'dchifney17@canalblog.com', 'Male', 44),
(45, 'Lorain', 'Whalley', '1961-04-27', '+850 555 315 5951', 'lwhalley18@linkedin.com', 'Female', 45),
(46, 'Logan', 'Hinkensen', '1965-01-22', '+95 626 358 6027', 'lhinkensen19@51.la', 'Male', 46),
(47, 'Hildy', 'Petroselli', '1987-02-23', '+51 208 946 5071', 'hpetroselli1a@mayoclinic.com', 'Female', 47),
(48, 'Debora', 'Edy', '1989-01-22', '+387 615 872 2544', 'dedy1b@tinyurl.com', 'Female', 48),
(49, 'Dedie', 'Liptrot', '2003-01-12', '+86 793 212 0219', 'dliptrot1c@amazon.co.uk', 'Female', 49),
(50, 'Druci', 'Sherry', '1975-07-21', '+62 228 110 6304', 'dsherry1d@ebay.co.uk', 'Female', 50);

-- --------------------------------------------------------

--
-- Table structure for table `naudotojas`
--

CREATE TABLE `naudotojas` (
  `id_Naudotojas` int(11) NOT NULL,
  `PrisijungimoVardas` varchar(255) DEFAULT NULL,
  `PrisijungimoSlaptazodis` varchar(255) DEFAULT NULL,
  `SlaptasKlausimas` varchar(255) DEFAULT NULL,
  `fk_Kandidatasid_Kandidatas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `naudotojas`
--

INSERT INTO `naudotojas` (`id_Naudotojas`, `PrisijungimoVardas`, `PrisijungimoSlaptazodis`, `SlaptasKlausimas`, `fk_Kandidatasid_Kandidatas`) VALUES
(1, 'gkenn0', 's5cWMbj', 'Shawnee Mission', 1),
(2, 'adericot1', '2CrNJaIB7a1', 'Trieste', 2),
(3, 'kgribbin2', 'aqVlYgabSrxa', 'Walichnowy', 3),
(4, 'okhrishtafovich3', 'qHcd2SM2', 'El Quetzal', 4),
(5, 'nseeking4', 'YsLAWghuZ', 'Dhaka', 5),
(6, 'cbungey5', 'YQmmVp4zMf', 'Xiashitai', 6),
(7, 'mgogay6', 'AqrnnbMPTcWh', 'Huangpu', 7),
(8, 'cmartschik7', 'OxNQEvHTvi', 'Labuan', 8),
(9, 'mdorracott8', 'dNzvB3', 'La Rochelle', 9),
(10, 'fstickells9', '4pxnbdsUnsp4', 'Kallíthiron', 10),
(11, 'dmutimera', 'QUOx6SZ', 'Niort', 11),
(12, 'gcartnerb', 'oQZnFZ', 'Sumberan', 12),
(13, 'rkembleyc', '3j4xPKDo', 'Oeiras', 13),
(14, 'jlewerenzd', 'JggjYujyeN', 'Shangchewan', 14),
(15, 'cheningheme', 'AbDUjgIy', 'Leidian', 15),
(16, 'hbettaneyf', 'pt79zoA', 'Myanaung', 16),
(17, 'mgillbeg', 'eZr5lAQBv7Cv', 'Chengmagang', 17),
(18, 'corgillh', 'Hcbh33GFwa', 'Marinhais', 18),
(19, 'aklimushevi', 'QbKfzPCdsJS', 'Kolodeznyy', 19),
(20, 'bkroonj', 'sbkLg1KK9Hh', 'Kafr Mandā', 20),
(21, 'jscorrerk', 'dJFYRqAw', 'Sujiazhuang', 21),
(22, 'lmckeemanl', 'i4bP4D6Y', 'Daoukro', 22),
(23, 'aheggisonm', 'WyBKG8YjAnC', 'Tinabogan', 23),
(24, 'dfredyn', '0gIeLwDTIMw', 'Misasi', 24),
(25, 'byeeleso', 'jS6Bem1gh64', 'Yanggang', 25),
(26, 'sstratleyp', 'boDTSI', 'Domanín', 26),
(27, 'nblofeldq', 'oTpDHaKGu4C', 'Milove', 27),
(28, 'zoldcoter', '7FihD64q3', 'Sagana', 28),
(29, 'hbullass', 'B6h6cTuev', 'Pasarbaru', 29),
(30, 'haguirrezabalat', '7GPE3DF', 'Serrinha', 30),
(31, 'acordneru', 'SGf1ek77oTGQ', 'Tampocon', 31),
(32, 'etruesdalev', 'jNUcnvxz3L', 'Sitangkai', 32),
(33, 'gleblancw', 'ucct3Qh0SI0', 'Longtou’an', 33),
(34, 'vaudrittx', '0RycCIQS', 'Wucheng', 34),
(35, 'bgoomsy', 'MDYHgoBVu', 'Kharkhorin', 35),
(36, 'ttreasurez', 'yOC1O6xpZyFJ', 'Eman', 36),
(37, 'emcleary10', 'HXghAFxO', 'Dalianwan', 37),
(38, 'rbernardotti11', 'wM8hR16gct5', 'Mingshuihe', 38),
(39, 'agriffey12', 'ue9c2LwNDI8r', 'Jiatou', 39),
(40, 'slanning13', 'eYZlBJnSWhpH', 'Eauripik', 40),
(41, 'msargison14', 'RlhpKuOq', 'Suisan', 41),
(42, 'ahenriet15', 'kTomy0Hfv', 'Vilque Chico', 42),
(43, 'plopes16', 'nCzQ1SOtQQ', 'Salvacion', 43),
(44, 'dbullough17', 'as1tB5dU', 'Villamontes', 44),
(45, 'djohansen18', 'MnBgNF', 'Baltiysk', 45),
(46, 'pclementi19', 'nVu3j8IFHoY', 'Monte de Fralães', 46),
(47, 'scolquhoun1a', 'FCXCKeq04MX', 'Hernando', 47),
(48, 'pdenyagin1b', '4TuXHDMp', 'Villeneuve-sur-Lot', 48),
(49, 'lhamsson1c', 'DrZ13f7jgB', 'Aimadamodo', 49),
(50, 'bsmithson1d', 'iGHhoMmEjolq', 'Diébougou', 50);

-- --------------------------------------------------------

--
-- Table structure for table `paraiska`
--

CREATE TABLE `paraiska` (
  `id_Paraiska` int(11) NOT NULL,
  `Data` date DEFAULT NULL,
  `Komentaras` varchar(255) DEFAULT NULL,
  `fk_Kandidatasid_Kandidatas` int(11) NOT NULL,
  `fk_Skelbimasid_Skelbimas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `paraiska`
--

INSERT INTO `paraiska` (`id_Paraiska`, `Data`, `Komentaras`, `fk_Kandidatasid_Kandidatas`, `fk_Skelbimasid_Skelbimas`) VALUES
(1, '2016-10-29', 'Balanced foreground Graphical User Interface', 49, 45),
(2, '2014-03-26', 'Future-proofed real-time interface', 38, 35),
(3, '2015-03-13', 'Versatile zero defect paradigm', 3, 43),
(4, '2018-08-08', 'Cross-platform client-driven frame', 38, 16),
(5, '2012-10-10', 'Realigned leading edge knowledge base', 38, 13),
(6, '2014-05-17', 'Automated 24 hour initiative', 3, 38),
(7, '2014-12-06', 'Distributed zero defect secured line', 34, 29),
(8, '2017-09-29', 'Managed demand-driven product', 46, 33),
(9, '2012-04-02', 'Assimilated real-time groupware', 39, 25),
(10, '2016-06-19', 'Managed empowering local area network', 16, 45),
(11, '2015-02-17', 'Digitized motivating contingency', 38, 18),
(12, '2017-09-18', 'Ameliorated fresh-thinking access', 42, 31),
(13, '2017-03-06', 'Enhanced composite interface', 28, 12),
(14, '2017-01-20', 'Persevering object-oriented encoding', 40, 48),
(15, '2016-10-07', 'Synergistic intermediate matrix', 36, 27),
(16, '2013-09-24', 'Re-engineered grid-enabled archive', 29, 18),
(17, '2015-12-09', 'Horizontal object-oriented migration', 42, 8),
(18, '2014-04-04', 'Adaptive attitude-oriented function', 18, 50),
(19, '2015-04-16', 'Upgradable tangible emulation', 34, 8),
(20, '2013-05-20', 'Enhanced mobile info-mediaries', 35, 3),
(21, '2018-09-19', 'Future-proofed context-sensitive info-mediaries', 16, 4),
(22, '2016-03-28', 'Assimilated foreground software', 37, 23),
(23, '2018-03-12', 'Intuitive national superstructure', 11, 16),
(24, '2018-03-17', 'Implemented bi-directional website', 25, 36),
(25, '2018-09-12', 'Integrated asymmetric throughput', 8, 14),
(26, '2013-08-13', 'Centralized multi-state parallelism', 49, 35),
(27, '2018-01-07', 'Self-enabling object-oriented analyzer', 32, 13),
(28, '2018-07-14', 'Assimilated full-range artificial intelligence', 2, 27),
(29, '2014-08-26', 'Inverse systemic software', 1, 5),
(30, '2012-03-16', 'De-engineered zero administration hierarchy', 39, 34),
(31, '2015-12-08', 'Multi-lateral regional circuit', 35, 17),
(32, '2012-11-15', 'Cross-platform empowering application', 45, 43),
(33, '2016-05-18', 'Enhanced real-time superstructure', 27, 1),
(34, '2014-02-08', 'Universal well-modulated structure', 42, 29),
(35, '2017-11-23', 'Compatible transitional capacity', 4, 39),
(36, '2016-12-10', 'Diverse optimal model', 41, 18),
(37, '2013-03-15', 'Front-line real-time attitude', 6, 46),
(38, '2016-09-19', 'Innovative even-keeled archive', 45, 22),
(39, '2015-05-03', 'Public-key empowering capacity', 49, 4),
(40, '2018-03-04', 'Multi-channelled regional Graphic Interface', 27, 37),
(41, '2016-08-19', 'Polarised uniform toolset', 20, 29),
(42, '2013-01-19', 'Enterprise-wide secondary application', 13, 17),
(43, '2013-12-14', 'Decentralized clear-thinking project', 24, 49),
(44, '2013-10-03', 'Intuitive optimizing hierarchy', 15, 38),
(45, '2015-10-21', 'Exclusive radical complexity', 19, 42),
(46, '2012-09-03', 'Business-focused zero administration definition', 33, 30),
(47, '2015-11-05', 'Adaptive object-oriented firmware', 34, 19),
(48, '2016-09-04', 'Right-sized systematic success', 41, 50),
(49, '2018-10-20', 'Expanded optimizing product', 1, 24),
(50, '2017-09-11', 'Customer-focused multimedia support', 24, 47);

-- --------------------------------------------------------

--
-- Table structure for table `reklama`
--

CREATE TABLE `reklama` (
  `id_Reklama` int(11) NOT NULL,
  `Nuolaida` int(11) DEFAULT NULL,
  `Tipas` int(11) DEFAULT NULL,
  `fk_Skelbimasid_Skelbimas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reklama`
--

INSERT INTO `reklama` (`id_Reklama`, `Nuolaida`, `Tipas`, `fk_Skelbimasid_Skelbimas`) VALUES
(1, 11, 1, 24),
(2, 30, 1, 41),
(3, 55, 2, 18),
(4, 59, 1, 33),
(5, 32, 1, 42),
(6, 46, 2, 6),
(7, 75, 1, 43),
(8, 61, 2, 46),
(9, 15, 2, 45),
(10, 62, 4, 20),
(11, 10, 1, 24),
(12, 73, 1, 12),
(13, 25, 3, 44),
(14, 18, 1, 18),
(15, 28, 2, 5),
(16, 19, 4, 19),
(17, 33, 3, 30),
(18, 80, 3, 29),
(19, 51, 3, 23),
(20, 36, 1, 33),
(21, 21, 2, 31),
(22, 25, 1, 10),
(23, 14, 1, 49),
(24, 53, 4, 42),
(25, 11, 2, 8),
(26, 56, 2, 18),
(27, 45, 4, 8),
(28, 76, 4, 28),
(29, 19, 3, 39),
(30, 35, 1, 45),
(31, 50, 1, 31),
(32, 47, 4, 38),
(33, 38, 1, 15),
(34, 50, 1, 13),
(35, 47, 4, 30),
(36, 27, 1, 41),
(37, 55, 1, 6),
(38, 59, 4, 15),
(39, 20, 1, 42),
(40, 57, 2, 23),
(41, 64, 1, 13),
(42, 68, 4, 5),
(43, 56, 1, 10),
(44, 42, 1, 19),
(45, 80, 2, 38),
(46, 74, 2, 47),
(47, 52, 1, 35),
(48, 48, 2, 24),
(49, 80, 4, 12),
(50, 69, 3, 35);

-- --------------------------------------------------------

--
-- Table structure for table `reklamos`
--

CREATE TABLE `reklamos` (
  `id_Reklamos` int(11) NOT NULL,
  `name` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reklamos`
--

INSERT INTO `reklamos` (`id_Reklamos`, `name`) VALUES
(1, 'Tradicine'),
(2, 'PopUp'),
(3, 'Plaukiojanti'),
(4, 'Juostine');

-- --------------------------------------------------------

--
-- Table structure for table `skelbimas`
--

CREATE TABLE `skelbimas` (
  `id_Skelbimas` int(11) NOT NULL,
  `Pavadinimas` varchar(255) DEFAULT NULL,
  `Pozicija` varchar(255) DEFAULT NULL,
  `Sritis` varchar(255) DEFAULT NULL,
  `PerziuruSk` int(11) DEFAULT NULL,
  `KandidatuSk` int(11) DEFAULT NULL,
  `Kaina` int(11) DEFAULT NULL,
  `GaliojaNuo` date DEFAULT NULL,
  `GaliojaIki` date DEFAULT NULL,
  `Busena` int(11) DEFAULT NULL,
  `fk_Imoneid_Imone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `skelbimas`
--

INSERT INTO `skelbimas` (`id_Skelbimas`, `Pavadinimas`, `Pozicija`, `Sritis`, `PerziuruSk`, `KandidatuSk`, `Kaina`, `GaliojaNuo`, `GaliojaIki`, `Busena`, `fk_Imoneid_Imone`) VALUES
(1, 'Geba', 'Associate Professor', 'Support', 8804, 90, 0, '2017-12-22', '2019-04-20', 2, 11),
(2, 'Topicblab', 'Statistician IV', 'Support', 6923, 157, 0, '2017-07-19', '2019-05-26', 2, 33),
(3, 'Digitube', 'Registered Nurse', 'Support', 2541, 20, 0, '2018-03-25', '2019-05-14', 3, 5),
(4, 'Gabtype', 'Health Coach II', 'Support', 6070, 291, 0, '2018-10-03', '2019-03-31', 2, 49),
(5, 'Teklist', 'Geologist II', 'Human Resources', 2095, 325, 0, '2018-05-07', '2019-03-18', 3, 7),
(6, 'Flipstorm', 'Developer IV', 'Engineering', 5301, 75, 0, '2017-11-16', '2019-04-23', 1, 44),
(7, 'Innojam', 'Project Manager', 'Engineering', 6885, 8, 0, '2017-05-07', '2019-05-11', 2, 45),
(8, 'Jaxnation', 'Accounting Assistant III', 'Research and Development', 9497, 171, 0, '2017-12-06', '2019-06-06', 2, 34),
(9, 'Eazzy', 'Environmental Specialist', 'Product Management', 5824, 220, 0, '2018-03-26', '2019-04-26', 3, 48),
(10, 'Oyoyo', 'GIS Technical Architect', 'Product Management', 595, 104, 0, '2019-02-07', '2019-03-21', 1, 26),
(11, 'Linktype', 'Pharmacist', 'Engineering', 8174, 83, 0, '2018-08-02', '2019-05-26', 2, 27),
(12, 'Livefish', 'Database Administrator IV', 'Legal', 8599, 196, 0, '2018-06-26', '2019-05-21', 1, 38),
(13, 'Realbridge', 'Teacher', 'Support', 9714, 145, 0, '2018-11-02', '2019-06-04', 1, 15),
(14, 'Meedoo', 'Software Test Engineer I', 'Services', 9346, 281, 0, '2017-06-15', '2019-03-26', 3, 9),
(15, 'Divape', 'Automation Specialist IV', 'Support', 8770, 2, 0, '2018-03-30', '2019-05-24', 2, 37),
(16, 'Innojam', 'Senior Quality Engineer', 'Legal', 6741, 129, 0, '2018-09-22', '2019-04-13', 1, 2),
(17, 'Mymm', 'Nuclear Power Engineer', 'Business Development', 5046, 77, 0, '2018-01-26', '2019-05-18', 2, 4),
(18, 'Edgeclub', 'Help Desk Technician', 'Business Development', 9761, 56, 0, '2018-10-04', '2019-06-11', 2, 50),
(19, 'Meeveo', 'Nuclear Power Engineer', 'Legal', 9300, 35, 0, '2018-11-20', '2019-06-06', 2, 17),
(20, 'Avamba', 'Software Consultant', 'Research and Development', 9366, 58, 0, '2018-12-25', '2019-03-24', 1, 50),
(21, 'Brainbox', 'Actuary', 'Human Resources', 5521, 8, 0, '2018-01-12', '2019-06-01', 2, 29),
(22, 'Wikizz', 'Occupational Therapist', 'Sales', 6187, 196, 0, '2017-12-12', '2019-04-19', 2, 42),
(23, 'Quatz', 'Financial Analyst', 'Accounting', 8374, 292, 0, '2017-07-14', '2019-04-02', 3, 24),
(24, 'Babblestorm', 'Financial Advisor', 'Product Management', 8728, 333, 0, '2017-05-01', '2019-06-09', 1, 25),
(25, 'Cogidoo', 'Programmer II', 'Support', 5430, 80, 0, '2017-03-15', '2019-06-10', 1, 36),
(26, 'Buzzster', 'Quality Control Specialist', 'Support', 5515, 204, 0, '2018-08-06', '2019-03-31', 1, 26),
(27, 'Centizu', 'Analyst Programmer', 'Human Resources', 667, 339, 0, '2017-10-10', '2019-04-28', 2, 48),
(28, 'Oloo', 'Biostatistician I', 'Accounting', 2737, 199, 0, '2018-01-14', '2019-05-10', 3, 13),
(29, 'Brightbean', 'Social Worker', 'Training', 4207, 59, 0, '2018-10-03', '2019-05-05', 2, 19),
(30, 'Yodo', 'Developer II', 'Legal', 4102, 217, 0, '2018-09-09', '2019-06-10', 1, 22),
(31, 'Meembee', 'Office Assistant II', 'Product Management', 6095, 313, 0, '2019-03-10', '2019-04-07', 1, 6),
(32, 'Wikibox', 'Nurse', 'Engineering', 9590, 192, 0, '2017-09-01', '2019-04-21', 3, 40),
(33, 'Quire', 'Assistant Manager', 'Product Management', 2171, 124, 0, '2017-05-10', '2019-03-31', 3, 23),
(34, 'Brainbox', 'Senior Cost Accountant', 'Marketing', 3091, 51, 0, '2017-10-26', '2019-03-30', 3, 2),
(35, 'Dabshots', 'Software Engineer II', 'Engineering', 3564, 13, 0, '2017-11-02', '2019-03-24', 1, 47),
(36, 'Digitube', 'Human Resources Manager', 'Engineering', 7567, 350, 0, '2018-09-12', '2019-04-11', 1, 46),
(37, 'Tagtune', 'Research Nurse', 'Accounting', 7407, 190, 0, '2018-10-01', '2019-06-05', 2, 47),
(38, 'Feednation', 'VP Product Management', 'Services', 2352, 60, 0, '2018-03-06', '2019-06-10', 3, 42),
(39, 'Realmix', 'Design Engineer', 'Legal', 9077, 315, 0, '2017-07-29', '2019-04-02', 2, 6),
(40, 'Dynazzy', 'Electrical Engineer', 'Sales', 4174, 269, 0, '2017-07-17', '2019-05-11', 2, 10),
(41, 'Skipstorm', 'VP Marketing', 'Services', 6632, 232, 0, '2019-02-16', '2019-04-06', 3, 6),
(42, 'Topiclounge', 'Staff Scientist', 'Accounting', 8254, 241, 0, '2019-01-23', '2019-04-30', 1, 23),
(43, 'Devpoint', 'Analog Circuit Design manager', 'Legal', 558, 231, 0, '2018-04-04', '2019-05-15', 3, 29),
(44, 'Devbug', 'Physical Therapy Assistant', 'Human Resources', 5998, 182, 0, '2017-04-14', '2019-05-11', 2, 43),
(45, 'Realcube', 'Database Administrator IV', 'Support', 6127, 53, 0, '2019-01-31', '2019-05-19', 3, 47),
(46, 'Blogtag', 'Dental Hygienist', 'Research and Development', 7571, 155, 0, '2018-09-15', '2019-04-22', 1, 21),
(47, 'Oyoyo', 'Operator', 'Business Development', 9637, 104, 0, '2017-09-02', '2019-03-17', 2, 2),
(48, 'Oloo', 'Media Manager I', 'Engineering', 2774, 133, 0, '2018-07-08', '2019-04-15', 3, 34),
(49, 'Omba', 'Sales Associate', 'Business Development', 6564, 330, 0, '2019-01-24', '2019-04-30', 2, 7),
(50, 'Jabbertype', 'Software Test Engineer I', 'Services', 8094, 297, 0, '2017-10-24', '2019-05-19', 3, 16);

-- --------------------------------------------------------

--
-- Table structure for table `sudetingumas`
--

CREATE TABLE `sudetingumas` (
  `id_Sudetingumas` int(11) NOT NULL,
  `name` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `sudetingumas`
--

INSERT INTO `sudetingumas` (`id_Sudetingumas`, `name`) VALUES
(1, 'Lengvas'),
(2, 'Vidutinis'),
(3, 'Sunkus'),
(4, 'Labai_sunkus');

-- --------------------------------------------------------

--
-- Table structure for table `testas`
--

CREATE TABLE `testas` (
  `id_Testas` int(11) NOT NULL,
  `Trukme` varchar(255) DEFAULT NULL,
  `Pagalba` varchar(255) DEFAULT NULL,
  `Sudetingumas` int(11) DEFAULT NULL,
  `fk_Skelbimasid_Skelbimas` int(11) DEFAULT NULL,
  `fk_Imoneid_Imone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `testas`
--

INSERT INTO `testas` (`id_Testas`, `Trukme`, `Pagalba`, `Sudetingumas`, `fk_Skelbimasid_Skelbimas`, `fk_Imoneid_Imone`) VALUES
(1, '90', 'klarret0@bluehost.com', 1, 42, 17),
(2, '120', 'rmeysham1@ox.ac.uk', 2, 13, 50),
(3, '45', 'doppery2@163.com', 1, 20, 50),
(4, '20', 'dlafferty3@japanpost.jp', 2, 22, 15),
(5, '90', 'cgeibel4@soundcloud.com', 2, 30, 17),
(6, '10', 'ldesouza5@51.la', 4, 23, 43),
(7, '60', 'crickman6@ameblo.jp', 2, 39, 15),
(8, '90', 'aiczokvitz7@geocities.com', 3, 21, 32),
(9, '300', 'bproudman8@booking.com', 2, 27, 23),
(10, '300', 'ldarinton9@illinois.edu', 3, 21, 37),
(11, '120', 'gecclesa@examiner.com', 2, 26, 50),
(12, '10', 'jtatnellb@issuu.com', 1, 31, 17),
(13, '30', 'vjacquesc@auda.org.au', 4, 50, 2),
(14, '90', 'kkynseyd@sciencedirect.com', 4, 32, 9),
(15, '45', 'ashimone@umn.edu', 1, 44, 47),
(16, '45', 'wbolducf@friendfeed.com', 1, 31, 18),
(17, '20', 'cprierg@discuz.net', 1, 31, 48),
(18, '10', 'dfloryh@ifeng.com', 3, 39, 15),
(19, '45', 'apeeblesi@qq.com', 4, 27, 2),
(20, '10', 'mfaulknerj@dailymail.co.uk', 1, 39, 16),
(21, '120', 'tantukk@desdev.cn', 4, 21, 7),
(22, '60', 'cbaurerichl@ucsd.edu', 3, 24, 12),
(23, '20', 'afranzelm@constantcontact.com', 1, 19, 48),
(24, '45', 'atravesn@blog.com', 1, 31, 43),
(25, '90', 'helleno@telegraph.co.uk', 2, 23, 19),
(26, '120', 'rurryp@tuttocitta.it', 3, 45, 15),
(27, '20', 'gpaleyq@ow.ly', 2, 18, 45),
(28, '120', 'dburressr@phpbb.com', 1, 11, 44),
(29, '120', 'tclemendots@ted.com', 3, 8, 9),
(30, '10', 'bgearet@storify.com', 2, 35, 37),
(31, '45', 'gwalfordu@wired.com', 2, 48, 18),
(32, '45', 'mlonsbroughv@cam.ac.uk', 4, 20, 22),
(33, '300', 'kplankw@weibo.com', 1, 5, 1),
(34, '30', 'dtartx@discovery.com', 2, 34, 3),
(35, '20', 'apattemorey@hibu.com', 2, 11, 33),
(36, '20', 'lscrewtonz@etsy.com', 1, 31, 17),
(37, '60', 'ewiszniewski10@earthlink.net', 1, 40, 28),
(38, '90', 'apetchell11@cocolog-nifty.com', 1, 19, 38),
(39, '20', 'akeal12@archive.org', 1, 50, 47),
(40, '60', 'ttroctor13@jugem.jp', 1, 50, 37),
(41, '120', 'bbiles14@redcross.org', 3, 42, 43),
(42, '120', 'bwimes15@businessinsider.com', 4, 42, 32),
(43, '90', 'sauchterlony16@feedburner.com', 4, 36, 32),
(44, '10', 'skilius17@baidu.com', 1, 28, 47),
(45, '90', 'gknill18@sina.com.cn', 3, 39, 29),
(46, '30', 'msewart19@illinois.edu', 4, 34, 49),
(47, '45', 'aorritt1a@aol.com', 1, 26, 18),
(48, '120', 'rcauldfield1b@tiny.cc', 2, 24, 36),
(49, '120', 'miacopo1c@gravatar.com', 2, 28, 47),
(50, '20', 'aweek1d@usgs.gov', 1, 38, 29);

-- --------------------------------------------------------

--
-- Table structure for table `vietove`
--

CREATE TABLE `vietove` (
  `id_Vietove` int(11) NOT NULL,
  `Miestas` varchar(255) DEFAULT NULL,
  `PastoKodas` varchar(255) DEFAULT NULL,
  `Valstybe` varchar(255) DEFAULT NULL,
  `Gatve` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `vietove`
--

INSERT INTO `vietove` (`id_Vietove`, `Miestas`, `PastoKodas`, `Valstybe`, `Gatve`) VALUES
(1, 'Socorro', '13960-000', 'Brazil', '7102 Eastlawn Drive'),
(2, 'Curridabat', '11801', 'Costa Rica', '72473 Swallow Plaza'),
(3, 'Frolovo', '403538', 'Russia', '80 Dixon Drive'),
(4, 'Oliveira', '3660-622', 'Portugal', '9636 Vahlen Parkway'),
(5, 'Haukipudas', '90840', 'Finland', '2 Delaware Trail'),
(6, 'Jagabaya Dua', NULL, 'Indonesia', '37075 Walton Court'),
(7, 'Ciranca', NULL, 'Indonesia', '60054 Graceland Pass'),
(8, 'Engenho', '4620-207', 'Portugal', '45623 Stuart Court'),
(9, 'Gerelayang', NULL, 'Indonesia', '930 Loeprich Drive'),
(10, 'Marolambo', NULL, 'Madagascar', '691 Cody Crossing'),
(11, 'Craigavon', 'BT66', 'United Kingdom', '86 Del Sol Park'),
(12, 'Chowṉêy', NULL, 'Afghanistan', '7953 Kedzie Terrace'),
(13, 'Maiduguri', NULL, 'Nigeria', '0819 Elgar Pass'),
(14, 'Shimeitang', NULL, 'China', '559 Crowley Center'),
(15, 'Yingwusitang', NULL, 'China', '1770 Harbort Drive'),
(16, 'Deauville', '14804 CEDEX', 'France', '54 Fisk Place'),
(17, 'Černošice', '252 28', 'Czech Republic', '782 Mesta Place'),
(18, 'Dengjia', NULL, 'China', '2 Kings Pass'),
(19, 'Buštěhrad', '273 43', 'Czech Republic', '017 Bobwhite Street'),
(20, 'Ngoc Hon Doc', NULL, 'Vietnam', '341 North Park'),
(21, 'Socota', NULL, 'Peru', '8 Moland Park'),
(22, 'Sātkhira', '9283', 'Bangladesh', '2849 North Plaza'),
(23, 'Iwanuma', '299-4336', 'Japan', '9376 Arkansas Pass'),
(24, 'San Diego', '202038', 'Colombia', '9154 Coleman Street'),
(25, 'Cikarang', NULL, 'Indonesia', '1 Ridgeview Junction'),
(26, 'Rubio', NULL, 'Venezuela', '31309 Dawn Street'),
(27, 'Aserrí', '10601', 'Costa Rica', '01683 Vidon Court'),
(28, 'Khartsyz’k', NULL, 'Ukraine', '99677 2nd Alley'),
(29, 'Casal do Relvas', '2440-341', 'Portugal', '0159 Haas Street'),
(30, 'Pereval\'noe', NULL, 'Ukraine', '90111 Longview Lane'),
(31, 'Puerto Natales', NULL, 'Chile', '7122 Parkside Trail'),
(32, 'Wingham', 'T5K', 'Canada', '8 Center Crossing'),
(33, 'Abbotsford', 'L9T', 'Canada', '238 Mayer Place'),
(34, 'Lianpeng', NULL, 'China', '4 Oakridge Road'),
(35, 'Jinpanling', NULL, 'China', '83 Lawn Way'),
(36, 'Hepo', NULL, 'China', '9 Sauthoff Lane'),
(37, 'Bangrat', NULL, 'Indonesia', '2 Norway Maple Point'),
(38, 'Koutsopódi', NULL, 'Greece', '3 Shoshone Point'),
(39, 'Taisen-ri', NULL, 'South Korea', '372 Prentice Center'),
(40, 'Haninge', '136 44', 'Sweden', '08500 Manufacturers Terrace'),
(41, 'Okcheon', NULL, 'South Korea', '2 Dwight Place'),
(42, 'Seoam', NULL, 'Indonesia', '4 Melody Point'),
(43, 'Sargatskoye', '646400', 'Russia', '12655 Logan Way'),
(44, 'Baoxing', NULL, 'China', '991 Jay Way'),
(45, 'Harjavalta', '29201', 'Finland', '925 Marcy Circle'),
(46, 'Labuan', '87018', 'Malaysia', '4677 Stoughton Drive'),
(47, 'Laocheng', NULL, 'China', '0266 Birchwood Hill'),
(48, 'Areeiro', '7300-440', 'Portugal', '6 Springs Plaza'),
(49, 'Kolokani', NULL, 'Mali', '73 Corry Pass'),
(50, 'Solna', '169 70', 'Sweden', '78 Clarendon Pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `busenos`
--
ALTER TABLE `busenos`
  ADD PRIMARY KEY (`id_Busenos`);

--
-- Indexes for table `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`id_CV`),
  ADD KEY `Ikelia` (`fk_Kandidatasid_Kandidatas`);

--
-- Indexes for table `igudziai`
--
ALTER TABLE `igudziai`
  ADD PRIMARY KEY (`id_Igudziai`),
  ADD KEY `Turi` (`fk_Kandidatasid_Kandidatas`),
  ADD KEY `Nustato` (`fk_Testasid_Testas`);

--
-- Indexes for table `imone`
--
ALTER TABLE `imone`
  ADD PRIMARY KEY (`id_Imone`),
  ADD KEY `isikurusi` (`fk_Vietoveid_Vietove`);

--
-- Indexes for table `kandidatas`
--
ALTER TABLE `kandidatas`
  ADD PRIMARY KEY (`id_Kandidatas`),
  ADD KEY `gyvena` (`fk_Vietoveid_Vietove`);

--
-- Indexes for table `naudotojas`
--
ALTER TABLE `naudotojas`
  ADD PRIMARY KEY (`id_Naudotojas`),
  ADD KEY `kuria` (`fk_Kandidatasid_Kandidatas`);

--
-- Indexes for table `paraiska`
--
ALTER TABLE `paraiska`
  ADD PRIMARY KEY (`id_Paraiska`),
  ADD KEY `Teikia` (`fk_Kandidatasid_Kandidatas`),
  ADD KEY `Aplikuoja` (`fk_Skelbimasid_Skelbimas`);

--
-- Indexes for table `reklama`
--
ALTER TABLE `reklama`
  ADD PRIMARY KEY (`id_Reklama`),
  ADD KEY `Tipas` (`Tipas`),
  ADD KEY `Taikoma` (`fk_Skelbimasid_Skelbimas`);

--
-- Indexes for table `reklamos`
--
ALTER TABLE `reklamos`
  ADD PRIMARY KEY (`id_Reklamos`);

--
-- Indexes for table `skelbimas`
--
ALTER TABLE `skelbimas`
  ADD PRIMARY KEY (`id_Skelbimas`),
  ADD KEY `Busena` (`Busena`),
  ADD KEY `Kuria1` (`fk_Imoneid_Imone`);

--
-- Indexes for table `sudetingumas`
--
ALTER TABLE `sudetingumas`
  ADD PRIMARY KEY (`id_Sudetingumas`);

--
-- Indexes for table `testas`
--
ALTER TABLE `testas`
  ADD PRIMARY KEY (`id_Testas`),
  ADD KEY `Sudetingumas` (`Sudetingumas`),
  ADD KEY `Parengtas` (`fk_Skelbimasid_Skelbimas`),
  ADD KEY `Padeda` (`fk_Imoneid_Imone`);

--
-- Indexes for table `vietove`
--
ALTER TABLE `vietove`
  ADD PRIMARY KEY (`id_Vietove`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cv`
--
ALTER TABLE `cv`
  ADD CONSTRAINT `Ikelia` FOREIGN KEY (`fk_Kandidatasid_Kandidatas`) REFERENCES `kandidatas` (`id_Kandidatas`);

--
-- Constraints for table `igudziai`
--
ALTER TABLE `igudziai`
  ADD CONSTRAINT `Nustato` FOREIGN KEY (`fk_Testasid_Testas`) REFERENCES `testas` (`id_Testas`),
  ADD CONSTRAINT `Turi` FOREIGN KEY (`fk_Kandidatasid_Kandidatas`) REFERENCES `kandidatas` (`id_Kandidatas`);

--
-- Constraints for table `imone`
--
ALTER TABLE `imone`
  ADD CONSTRAINT `isikurusi` FOREIGN KEY (`fk_Vietoveid_Vietove`) REFERENCES `vietove` (`id_Vietove`);

--
-- Constraints for table `kandidatas`
--
ALTER TABLE `kandidatas`
  ADD CONSTRAINT `gyvena` FOREIGN KEY (`fk_Vietoveid_Vietove`) REFERENCES `vietove` (`id_Vietove`);

--
-- Constraints for table `naudotojas`
--
ALTER TABLE `naudotojas`
  ADD CONSTRAINT `kuria` FOREIGN KEY (`fk_Kandidatasid_Kandidatas`) REFERENCES `kandidatas` (`id_Kandidatas`);

--
-- Constraints for table `paraiska`
--
ALTER TABLE `paraiska`
  ADD CONSTRAINT `Aplikuoja` FOREIGN KEY (`fk_Skelbimasid_Skelbimas`) REFERENCES `skelbimas` (`id_Skelbimas`),
  ADD CONSTRAINT `Teikia` FOREIGN KEY (`fk_Kandidatasid_Kandidatas`) REFERENCES `kandidatas` (`id_Kandidatas`);

--
-- Constraints for table `reklama`
--
ALTER TABLE `reklama`
  ADD CONSTRAINT `Taikoma` FOREIGN KEY (`fk_Skelbimasid_Skelbimas`) REFERENCES `skelbimas` (`id_Skelbimas`),
  ADD CONSTRAINT `reklama_ibfk_1` FOREIGN KEY (`Tipas`) REFERENCES `reklamos` (`id_Reklamos`);

--
-- Constraints for table `skelbimas`
--
ALTER TABLE `skelbimas`
  ADD CONSTRAINT `Kuria1` FOREIGN KEY (`fk_Imoneid_Imone`) REFERENCES `imone` (`id_Imone`),
  ADD CONSTRAINT `skelbimas_ibfk_1` FOREIGN KEY (`Busena`) REFERENCES `busenos` (`id_Busenos`);

--
-- Constraints for table `testas`
--
ALTER TABLE `testas`
  ADD CONSTRAINT `Padeda` FOREIGN KEY (`fk_Imoneid_Imone`) REFERENCES `imone` (`id_Imone`),
  ADD CONSTRAINT `Parengtas` FOREIGN KEY (`fk_Skelbimasid_Skelbimas`) REFERENCES `skelbimas` (`id_Skelbimas`),
  ADD CONSTRAINT `testas_ibfk_1` FOREIGN KEY (`Sudetingumas`) REFERENCES `sudetingumas` (`id_Sudetingumas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
