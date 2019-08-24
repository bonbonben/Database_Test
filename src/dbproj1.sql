-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018 年 12 朁E11 日 20:00
-- 伺服器版本: 10.1.36-MariaDB
-- PHP 版本： 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `dbproj1`
--

drop schema dbproj1;
create schema dbproj1;
use dbproj1;

-- --------------------------------------------------------

--
-- 資料表結構 `apply`
--

CREATE TABLE `apply` (
  `nid` int(11) DEFAULT NULL,
  `did` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `area`
--

CREATE TABLE `area` (
  `aid` int(11) NOT NULL,
  `aname` varchar(50) DEFAULT NULL,
  `alongitude` float(10,6) DEFAULT NULL,
  `alatitude` float(10,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `area`
--

INSERT INTO `area` (`aid`, `aname`, `alongitude`, `alatitude`) VALUES
(1, 'NYU Tandon', -73.986511, 40.694454),
(2, 'Time Square', -73.984634, 40.759113),
(3, 'The Mermaid Inn', -73.988579, 40.727058),
(4, 'Casa Mezcal', -73.990128, 40.717930),
(5, 'Maialino', -73.985893, 40.738552),
(6, 'Gyu-Kaku Japanese BBQ', -73.991486, 40.728237),
(7, 'ABC Kitchen', -73.989616, 40.737743),
(8, 'Poco - NYC', -73.982903, 40.722511),
(9, 'The 13th Step', -73.987274, 40.729481),
(10, 'Kumo Sushi', -73.982933, 40.730457),
(11, 'Edi & The Wolf', -73.978821, 40.723820),
(12, 'Baohaus', -73.985657, 40.732487),
(13, 'The Wren', -73.992203, 40.726322),
(14, 'Doughnut Plant', -73.988533, 40.716335),
(15, 'Awash', -73.986862, 40.726528),
(16, 'The DL', -73.989334, 40.718559),
(17, 'Odessa', -73.983490, 40.726475),
(18, 'The Halal Guys', -73.984398, 40.732342),
(19, 'Momofuku Noodle Bar', -73.984512, 40.729233),
(20, 'Beyond Sushi', -73.985886, 40.732922),
(21, 'IHOP', -73.985512, 40.732925),
(22, 'Shabu-Tatsu', -73.985886, 40.729221),
(23, 'Tick Tock Diner NY', -73.993515, 40.752403),
(24, 'Sofitel New York', -73.981873, 40.755676),
(25, 'Maialino', -73.985893, 40.738552),
(26, 'ABC Kitchen', -73.989616, 40.737743),
(27, 'Manzo', -73.989632, 40.742088),
(28, 'Connolly\'s', -73.983627, 40.757282),
(29, 'Lugo Cucina', -73.992973, 40.751377),
(30, 'The John Dory Oyster Bar', -73.988434, 40.745819),
(31, 'Minar', -73.984024, 40.757877),
(32, '48 Lounge', -73.982338, 40.759335),
(33, 'Hale and Hearty', -73.977654, 40.752934),
(34, 'Jazz Standard', -73.983780, 40.742294),
(35, 'Junoon', -73.990868, 40.743065),
(36, 'The Roosevelt Hotel', -73.977432, 40.754761),
(37, 'Bareburger', -73.978134, 40.746151),
(38, 'Kabooz\'s Bar & Grill', -73.993469, 40.750622),
(39, 'Lan Sheng', -73.988350, 40.751476),
(40, 'Hooters', -73.990425, 40.750202),
(41, 'The 40/40 Club', -73.989326, 40.743458),
(42, 'Forty Four', -73.982224, 40.755581),
(43, 'Hotel Pennsylvania', -73.990623, 40.749771),
(44, 'The Hotel @ Fifth Avenue', -73.986572, 40.747738),
(45, 'Hotel Stanford - New York', -73.987457, 40.748234),
(46, 'Life Hotel', -73.987007, 40.747231),
(47, 'U Hotel Fifth Avenue', -73.983704, 40.749084),
(48, 'Radisson Martinique on Broadway', -73.987823, 40.748272),
(49, 'Hotel Metro NYC', -73.985992, 40.750141),
(50, 'The Avalon Hotel', -73.984612, 40.746681),
(51, 'Hampton Inn Manhattan-35th St/Empire State Bldg', -73.986435, 40.750298),
(52, 'Hilton Garden Inn New York/West 35th Street', -73.986504, 40.750366),
(53, 'Hotel Wolcott', -73.986732, 40.746529),
(54, 'Holiday Inn Express Times Square South', -73.986061, 40.750504),
(55, 'Fairfield Inn & Suites by Marriott New York Manhat', -73.984573, 40.751179),
(56, 'The Roger New York', -73.984268, 40.745674),
(57, 'HGU New York', -73.983299, 40.746014),
(58, 'Kimpton Hotel Eventi', -73.989975, 40.747204),
(59, 'WNYE-TV New York', -73.985756, 40.748543),
(60, 'Macy\'s', -73.989487, 40.750801),
(61, 'Refinery Hotel', -73.985374, 40.752209),
(62, 'The Americana Inn', -73.985550, 40.752293),
(63, 'New York', -74.005974, 40.712776),
(64, 'Hotel Pennsylvania', -73.990623, 40.749771),
(65, 'The Hotel @ Fifth Avenue', -73.986572, 40.747738),
(66, 'Hotel Stanford - New York', -73.987457, 40.748234),
(67, 'Life Hotel', -73.987007, 40.747231),
(68, 'U Hotel Fifth Avenue', -73.983704, 40.749084),
(69, 'Radisson Martinique on Broadway', -73.987823, 40.748272),
(70, 'Hotel Metro NYC', -73.985992, 40.750141),
(71, 'The Avalon Hotel', -73.984612, 40.746681),
(72, 'Hampton Inn Manhattan-35th St/Empire State Bldg', -73.986435, 40.750298),
(73, 'Hilton Garden Inn New York/West 35th Street', -73.986504, 40.750366),
(74, 'Hotel Wolcott', -73.986732, 40.746529),
(75, 'Holiday Inn Express Times Square South', -73.986061, 40.750504),
(76, 'Fairfield Inn & Suites by Marriott New York Manhat', -73.984573, 40.751179),
(77, 'The Roger New York', -73.984268, 40.745674),
(78, 'HGU New York', -73.983299, 40.746014),
(79, 'Kimpton Hotel Eventi', -73.989975, 40.747204),
(80, 'WNYE-TV New York', -73.985756, 40.748543),
(81, 'Macy\'s', -73.989487, 40.750801),
(82, 'Midtown', -73.984016, 40.754932),
(83, 'New York Transit Museum Gallery Annex & Store', -73.977974, 40.753159),
(84, 'The Korea Society', -73.978409, 40.754711),
(85, 'Scandinavia House', -73.980026, 40.749428),
(86, 'Posters Please Inc', -73.993919, 40.738415),
(87, 'The Jazz Gallery', -73.988579, 40.744629),
(88, 'Art & Advisory LLC', -73.989365, 40.743786),
(89, 'Duggal Visual Solutions', -73.991310, 40.743347),
(90, 'Creative Art Works', -73.991913, 40.753658),
(91, 'Fine Art Imaging', -73.991562, 40.757587),
(92, 'Unicorn Art Studio Inc', -73.992882, 40.746773),
(93, 'Swann Auction Galleries', -73.985077, 40.741028),
(94, 'Schreiber', -73.988976, 40.749691),
(95, 'Council of Family & Child', -73.991768, 40.740986),
(96, 'Center For Book Arts Inc', -73.989929, 40.744770),
(97, 'Andrew Tedesco Studios', -73.992630, 40.745071),
(98, 'Greenlander LLC', -73.987419, 40.753407),
(99, 'Contemporary Art Partners LLC', -73.989082, 40.751446),
(100, 'Tower 49 Gallery', -73.976997, 40.757252),
(101, 'Messineo Art Projects', -73.993950, 40.748528),
(102, 'Joy Through Art Foundation', -73.984627, 40.758678),
(103, 'AMC Kips Bay 15', -73.976723, 40.742889),
(104, 'AMC Loews 19th St. East 6', -73.989777, 40.738556),
(105, 'AMC Empire 25', -73.989243, 40.756763),
(106, 'AMC Loews 34th Street 14', -73.994484, 40.752354),
(107, 'Regal Cinemas E-Walk 13 & RPX', -73.988976, 40.757030),
(108, 'Cin?polis Chelsea', -73.998070, 40.744835),
(109, 'SVA Theatre', -73.999748, 40.745972),
(110, 'Scandinavia House', -73.980026, 40.749428),
(111, 'Guild Enterprises', -73.992165, 40.749973),
(112, 'Kirk Theatre (The)', -73.993416, 40.758377),
(113, 'Film District', -73.975861, 40.754498),
(114, 'Warren Z Productions', -73.985222, 40.744068),
(115, 'Malaparte Theatre Co', -73.992188, 40.754505),
(116, 'Aerial Cimema Productions', -73.992188, 40.754505),
(117, 'Stuff Inc Theatre', -73.986771, 40.757252),
(118, 'Big Screen Plaza', -73.989914, 40.747196),
(119, '29 Street Repertory', -73.993797, 40.747990),
(120, 'Endemol Theatre Productions', -73.986534, 40.757153),
(121, 'new amsterdam theatre', -73.987968, 40.756115),
(122, 'Music Center', -73.987892, 40.756157),
(123, 'Madison Square Park', -73.987564, 40.742039),
(124, 'Chelsea Park', -74.001183, 40.750111),
(125, 'TCC Group Inc', -73.992912, 40.747463),
(126, 'New York Restoration Project', -73.994415, 40.749901),
(127, 'Dag Hammarskj?ld Plaza', -73.968796, 40.752323),
(128, 'Union Square Park', -73.990524, 40.735825),
(129, 'I D & Allc', -73.979492, 40.751728),
(130, 'Madison Square Dog Run', -73.988594, 40.742294),
(131, 'St. Vartan Park', -73.973633, 40.745113),
(132, 'Bryant Park', -73.983231, 40.753597),
(133, 'Worth Square', -73.988953, 40.742741),
(134, 'Robert Moses Playground', -73.969231, 40.748047),
(135, 'Hyungki Park', -73.985878, 40.750874),
(136, 'plantsfashion Inc', -73.996681, 40.743462),
(137, 'Madison Square Fountain', -73.988297, 40.741737),
(138, 'Pennoyer Newman', -73.980797, 40.745667),
(139, 'Bellevue South Park', -73.978050, 40.739979),
(140, 'Penn South Playground', -73.998711, 40.747627),
(141, 'Ralph Bunche Park', -73.969765, 40.749290),
(142, 'Vincent F. Albano, Jr. Playground', -73.978500, 40.741875),
(143, 'Manhattan Mall', -73.989311, 40.749268),
(144, 'Sunglass Hut', -73.988121, 40.750210),
(145, 'Limelight Shops', -73.993744, 40.741074),
(146, 'Sunglass Hut', -73.985260, 40.757992),
(147, 'PPYPLE', -73.979607, 40.751606),
(148, 'One Penn Plaza', -73.992241, 40.751167),
(149, 'Sunglass Hut', -73.983482, 40.754772),
(150, 'One Direction World', -73.992157, 40.750080),
(151, 'Sunglass Hut', -73.989235, 40.750839),
(152, 'Sunglass Hut', -73.977638, 40.757603),
(153, 'Prep Showroom LLC', -73.988831, 40.754032),
(154, 'Sunglass Hut', -73.985146, 40.759766),
(155, 'Sunglass Hut', -73.988068, 40.750092),
(156, 'Stretch House Inc', -73.990150, 40.753239),
(157, '42nd Street Entertainment Center', -73.988136, 40.756886),
(158, 'Ameya Home - Online Home Furnishing Retail Store', -73.985298, 40.749016),
(159, 'Mall Marketing Systems', -73.991776, 40.754974),
(160, 'Royal ConneXions', -73.985847, 40.747894),
(161, '345 Fifth Avenue', -73.984589, 40.747971),
(162, 'Sunglass Hut at Macy\'s', -73.988121, 40.750137),
(163, 'Trader Joe\'s', -73.994118, 40.742088),
(164, 'Whole Foods Market', -73.995354, 40.745079),
(165, 'Fairway Market Kips Bay', -73.977081, 40.742268),
(166, 'Jack\'s. 99? Discount Store', -73.980942, 40.751541),
(167, 'The Food Emporium', -73.986282, 40.761654),
(168, 'Morton Williams Supermarkets', -73.987190, 40.739464),
(169, 'Food Emporium', -73.994530, 40.759857),
(170, 'Brooklyn Fare', -73.996597, 40.756111),
(171, 'D\'Agostino', -73.977745, 40.746639),
(172, 'TECSYS, Inc. - U.S.', -73.985001, 40.753044),
(173, 'Morton Williams Wines and Spirits', -73.980133, 40.737576),
(174, 'Gristedes', -74.001167, 40.747215),
(175, 'Gristedes', -73.999519, 40.744362),
(176, 'Gristedes', -73.972733, 40.748615),
(177, 'D\'Agostino', -73.981880, 40.740257),
(178, 'Jack??.', -73.989571, 40.748657),
(179, 'Fairway Market Chelsea', -73.991287, 40.744549),
(180, 'K mart', -73.993134, 40.750725),
(181, 'Whole Foods Market', -73.984940, 40.754677),
(182, 'TigerTrade', -73.986351, 40.754707),
(183, 'Vanderbilt YMCA', -73.971054, 40.753284),
(184, 'SoulCycle Union Square', -73.991066, 40.737995),
(185, 'Planet Fitness', -73.993378, 40.746208),
(186, 'New York Sports Clubs', -73.981949, 40.759472),
(187, 'Reebok CrossFit 5th Ave', -73.983299, 40.750763),
(188, 'Equinox Park Avenue', -73.981506, 40.745907),
(189, 'CrossFit NYC', -73.990089, 40.745728),
(190, 'Pilates On Fifth', -73.980797, 40.753159),
(191, 'New York Health & Racquet Club', -73.992386, 40.742359),
(192, 'lululemon', -73.992691, 40.737907),
(193, 'Reflections, Center for Conscious Living & Yoga', -73.981361, 40.739090),
(194, 'Monarch Rooftop Bar', -73.986801, 40.750412),
(195, '24 Hour Fitness', -73.987549, 40.743740),
(196, 'Bode NYC - Flatiron', -73.990021, 40.741314),
(197, 'Tapout Fitness 32nd Street', -73.990257, 40.749371),
(198, 'Crunch Fitness - 38th Street', -73.988007, 40.753033),
(199, 'Equinox East 43rd Street', -73.979897, 40.754089),
(200, 'Flywheel Sports Flatiron', -73.992546, 40.741226),
(201, 'Crunch Fitness - 34th Street', -73.977104, 40.745033),
(202, 'Ronin Athletics', -73.991501, 40.753262),
(203, 'Central Park', -73.965355, 40.782864),
(204, 'Arthur Ross Pinetum', -73.966667, 40.783405),
(205, 'The Ramble', -73.969536, 40.777531),
(206, 'Cherry Hill Fountain', -73.972710, 40.774693),
(207, 'I LOVE W.A.L.K.S.', -73.952148, 40.776642),
(208, 'Wilson Barbara', -73.976555, 40.788857),
(209, 'North Meadow', -73.958282, 40.792137),
(210, 'Parks & Recreation Department Maintenance', -73.979111, 40.783478),
(211, 'West Side Community Garden', -73.971832, 40.789261),
(212, 'Theodore Roosevelt Park', -73.974762, 40.781853),
(213, 'The Great Lawn', -73.966591, 40.781269),
(214, 'East Meadow', -73.956184, 40.789867),
(215, 'Toll Family Playground', -73.969688, 40.784016),
(216, 'Glade Arch', -73.965660, 40.776352),
(217, 'Stroller Strides NYC :: Central Park (UES)', -73.955444, 40.788818),
(218, 'Central Park Jacqueline Onassis Reservoir', -73.959999, 40.783398),
(219, 'Arthur Ross Terrace', -73.973686, 40.781765),
(220, 'Playground Eighty Nine LXXXIX', -73.971886, 40.788647),
(221, 'NYC Parks Enforcement Patrol', -73.959259, 40.790989),
(222, 'Pest Control NYC Bed Bugs & Wildlife Removal', -73.950745, 40.779701),
(223, 'The Mark Hotel', -73.963326, 40.775341),
(224, 'Shake Shack', -73.976540, 40.780861),
(225, 'Stand Up NY', -73.980156, 40.782936),
(226, 'The Loeb Boathouse', -73.968735, 40.775330),
(227, 'Candle 79', -73.958733, 40.774624),
(228, 'Carmine\'s Italian Restaurant - Upper West Side', -73.973991, 40.791096),
(229, 'The Wright', -73.958885, 40.783001),
(230, 'Petrie Court', -73.964432, 40.779083),
(231, 'Calle Ocho', -73.973671, 40.783066),
(232, 'Sarabeth\'s', -73.955742, 40.784828),
(233, 'E.A.T.', -73.961662, 40.777367),
(234, 'Sarabeth\'s', -73.977425, 40.783878),
(235, 'Maison Kayser', -73.959747, 40.771343),
(236, 'Earl\'s Beer and Cheese', -73.951553, 40.787300),
(237, 'Shake Shack', -73.955017, 40.778957),
(238, 'Alice\'s Tea Cup', -73.978683, 40.778042),
(239, 'Talia\'s Steakhouse and Bar', -73.972145, 40.791927),
(240, 'Our Place China Chalet', -73.955818, 40.773396),
(241, 'George Keeley', -73.976051, 40.785858),
(242, 'The Carlyle Restaurant', -73.963158, 40.774418),
(243, 'Sheraton Brooklyn New York Hotel', -73.984619, 40.691521),
(244, 'LuAnne\'s Wild Ginger', -73.989807, 40.687904),
(245, 'Shake Shack', -73.988625, 40.692162),
(246, 'Rucola', -73.985855, 40.685612),
(247, 'The River Caf?', -73.994858, 40.703686),
(248, 'Pedro\'s', -73.986473, 40.702522),
(249, 'Colonie', -73.995842, 40.690845),
(250, 'Building On Bond', -73.985222, 40.686466),
(251, 'GRAN EL?CTRICA', -73.993118, 40.702667),
(252, '61 Local', -73.990997, 40.687019),
(253, 'Ozu Japanese Cuisine & Lounge', -73.993355, 40.697422),
(254, 'Buffalo Wild Wings', -73.977600, 40.684769),
(255, 'Yemen Caf?', -73.993698, 40.689854),
(256, 'Chipotle Mexican Grill', -73.991806, 40.694363),
(257, 'Mocha Hookah', -73.993584, 40.690166),
(258, 'Vinegar Hill House', -73.981285, 40.702755),
(259, 'Pronto Pizza', -73.992287, 40.689449),
(260, 'Kitchen at Cobble Hill', -73.994667, 40.685337),
(261, 'AlMar', -73.989174, 40.702663),
(262, 'Mile End Delicatessen', -73.987099, 40.687454),
(263, 'Hank\'s Saloon', -73.980965, 40.685246),
(264, 'Clover Club', -73.992134, 40.684582),
(265, 'Battersby', -73.992661, 40.683121),
(266, 'Nature\'s Grill', -73.992767, 40.689270),
(267, 'Henry Street Ale House', -73.992470, 40.699093),
(268, 'IHOP', -73.983742, 40.689026),
(269, 'Five Guys', -73.985954, 40.693554),
(270, 'Chuck E. Cheese\'s', -73.977425, 40.684441),
(271, 'Hanco\'s', -73.993401, 40.694660),
(272, 'Juliana\'s', -73.993446, 40.702694),
(273, 'Henry Public', -73.996216, 40.690277),
(274, 'Superfine', -73.987488, 40.702370),
(275, 'Dallas BBQ', -73.986877, 40.689930),
(276, 'Cafe Luluc', -73.992126, 40.684479),
(277, 'Subway Restaurants', -73.987076, 40.691921),
(278, 'Eight Turn Crepe', -73.982864, 40.690876),
(279, 'Sophie\'s Cuban Cuisine', -73.987602, 40.690651),
(280, 'Clark\'s', -73.993202, 40.697403),
(281, 'Hadramout yemeni food', -73.993813, 40.689934),
(282, 'Energy Fuel', -73.970497, 40.693054),
(283, 'St. Francis College', -73.992165, 40.693230),
(284, 'New York City College of Technology', -73.987915, 40.695477),
(285, 'New York University Tandon School of Engineering', -73.986580, 40.694202),
(286, 'ASA College', -73.986076, 40.692402),
(287, 'Brooklyn Law School', -73.989685, 40.691868),
(288, 'The Urban Assembly School for Law and Justice', -73.988319, 40.694614),
(289, 'StageCoach Theatre Arts Schools Brooklyn Heights, ', -73.993019, 40.687954),
(290, 'Global Wealth Foundation', -73.987823, 40.703308),
(291, 'LIU Athletic Center', -73.979424, 40.691299),
(292, 'Berkeley College - Brooklyn Location', -73.984306, 40.690517),
(293, 'Workforce Development Center', -73.986053, 40.697456),
(294, 'Allen School of Health Sciences', -73.991501, 40.693798),
(295, 'Financial Aid', -73.987572, 40.695492),
(296, 'CITE', -73.991325, 40.692421),
(297, 'Long Island University Brooklyn', -73.980507, 40.690849),
(298, 'Schwartz Athletic Center', -73.980751, 40.690319),
(299, 'Access Careers', -73.984459, 40.689301),
(300, 'Empire State College', -73.986671, 40.690388),
(301, 'Institute of Design & Construction', -73.983032, 40.692463),
(302, 'Poly Tech', -73.986778, 40.704189),
(303, 'D.A.Wagner Productions LLC/Lightroom Guy', -73.991341, 40.686497),
(304, 'Howard Building', -73.985817, 40.697437),
(305, 'Child\'s Play NY', -73.987473, 40.700863),
(306, 'AMG School of Licensed Practical Nursing', -73.982185, 40.692818),
(307, 'SOCAPA - Brooklyn NY', -73.986206, 40.695068),
(308, 'Namm Hall', -73.987572, 40.695492),
(309, 'Humanities Building', -73.980888, 40.690311),
(310, 'Registrar', -73.987396, 40.695358),
(311, 'Asa College: Pearl Street Building', -73.988083, 40.692513),
(312, 'Student Union', -73.981201, 40.690765),
(313, 'Environmental Center', -73.988068, 40.699543),
(314, 'Atrium', -73.987907, 40.695438),
(315, 'Midway Building', -73.987312, 40.697086),
(316, 'State University of Ny', -73.989929, 40.691418),
(317, 'Conolly Residence Hall', -73.980469, 40.691570),
(318, 'Wet Lab', -73.979958, 40.690754),
(319, 'Health Sciences Center', -73.980156, 40.690208),
(320, 'Renee Auriema, College Admissions Counselor', -73.989845, 40.702030),
(321, 'NYU Tandon Online', -73.986404, 40.693218),
(322, 'Pearl St. Building', -73.988289, 40.695709),
(323, 'Brooklyn Art Project', -73.990456, 40.703060),
(324, 'RMP Archive', -73.987129, 40.702621),
(325, 'Smack Mellon', -73.989746, 40.703793),
(326, 'Spring', -73.987320, 40.702354),
(327, 'Center For Cuban Studies', -73.986778, 40.704189),
(328, 'Gloria Kennedy Gallery', -73.988922, 40.702614),
(329, 'Gat Ramsick Fine Art', -73.975304, 40.698547),
(330, 'Awash', -73.994476, 40.685764),
(331, 'Shop Arts Import LLC', -73.991196, 40.687244),
(332, 'The McMahan Photo Art Gallery and Archive', -73.987129, 40.702621),
(333, 'PODpublishing', -73.986954, 40.704620),
(334, 'A.I.R. Gallery', -73.987068, 40.703846),
(335, 'Art in General', -73.987068, 40.704098),
(336, 'Janet Borden Inc', -73.990974, 40.703358),
(337, 'Collier West', -73.985619, 40.687481),
(338, 'Jubilee Gallery', -73.993050, 40.697136),
(339, 'CREATIVELAB Studio', -73.987320, 40.702812),
(340, 'Dennis Kardon Studio', -73.987320, 40.702812),
(341, 'Elsie Management', -73.986771, 40.697361),
(342, 'Ouchi Gallery / Zank and Mars LLC.', -73.983421, 40.695564),
(343, 'Clover\'s Fine Art Gallery', -73.987595, 40.687714),
(344, 'Goose Barnacle', -73.997223, 40.691261),
(345, 'KLOMPCHING GALLERY', -73.991096, 40.703358),
(346, 'MINUS SPACE', -73.990860, 40.703358),
(347, 'United Photo Industries', -73.990837, 40.703442),
(348, 'Fact & Fancy Gallery', -73.986618, 40.688122),
(349, 'Dynomighty Design Inc.', -73.984779, 40.704170),
(350, 'Art Wise', -73.987991, 40.704140),
(351, 'Artistic Wood Crafts', -73.975220, 40.698490),
(352, 'MF Gallery', -73.987473, 40.682846),
(353, 'xmark gallery', -73.974236, 40.695080),
(354, 'emh creative projects', -73.987129, 40.702621),
(355, '0.00156 acres', -73.989975, 40.687805),
(356, 'BrooklyNYC ?', -73.974190, 40.688408),
(357, 'LaShun Beal', -73.986855, 40.691856),
(358, 'Signum Collective Art', -73.985748, 40.687538),
(359, 'Collier West Annex', -73.985672, 40.687504),
(360, 'vintage moroccan carpets / art + objects', -73.984360, 40.686996),
(361, 'Redralion Rojo', -73.993393, 40.688068),
(362, 'C.A.N.V.A.S. (Creating A New View Around Society?)', -73.987129, 40.702621),
(363, 'Betty Bakery', -73.983429, 40.686234),
(364, 'Bien Cuit', -73.990028, 40.687698),
(365, 'Van Leeuwen Ice Cream', -73.990143, 40.686714),
(366, 'Panera Bread', -73.988480, 40.692600),
(367, 'La Defense Bistro', -73.985390, 40.693623),
(368, 'One Girl Cookies', -73.990417, 40.687431),
(369, 'Le Pain Quotidien', -73.994545, 40.695103),
(370, 'Au Bon Pain', -73.986542, 40.693604),
(371, 'Almondine Bakery', -73.991211, 40.703350),
(372, 'Montague Street Bagels', -73.995132, 40.694901),
(373, 'La Bagel Delight at Court St', -73.991837, 40.691158),
(374, 'Cafe Metro', -73.985001, 40.693905),
(375, 'La Bagel Delight', -73.975395, 40.687283),
(376, 'Dunkin\' Donuts', -73.991341, 40.692196),
(377, 'Damascus Bread & Pastry Shop', -73.993065, 40.690025),
(378, 'Oriental Pastry & Grocery', -73.993889, 40.689953),
(379, 'Cranberry\'s', -73.992149, 40.699574),
(380, 'La Bagel Delight at Dumbo', -73.988724, 40.702393),
(381, 'Cold Stone Creamery', -73.977722, 40.684429),
(382, 'Dunkin\' Donuts', -73.978653, 40.684326),
(383, 'The River Caf?', -73.994858, 40.703686),
(384, 'Pedro\'s', -73.986473, 40.702522),
(385, 'Building On Bond', -73.985222, 40.686466),
(386, 'GRAN EL?CTRICA', -73.993118, 40.702667),
(387, '61 Local', -73.990997, 40.687019),
(388, '68 Jay Street Bar', -73.986801, 40.703022),
(389, 'Ozu Japanese Cuisine & Lounge', -73.993355, 40.697422),
(390, 'Buffalo Wild Wings', -73.977600, 40.684769),
(391, 'EastVille Comedy Club', -73.981606, 40.685909),
(392, 'Vinegar Hill House', -73.981285, 40.702755),
(393, 'AlMar', -73.989174, 40.702663),
(394, 'Hank\'s Saloon', -73.980965, 40.685246),
(395, 'Clover Club', -73.992134, 40.684582),
(396, 'Battersby', -73.992661, 40.683121),
(397, 'Henry Street Ale House', -73.992470, 40.699093),
(398, 'Elsa', -73.995384, 40.690262),
(399, 'Henry Public', -73.996216, 40.690277),
(400, 'Superfine', -73.987488, 40.702370),
(401, 'Cafe Luluc', -73.992126, 40.684479),
(402, 'Floyd, NY', -73.995712, 40.690823),
(403, 'Brooklyn Historical Society', -73.992439, 40.694790),
(404, 'Museum of Contemporary African Diasporan Arts', -73.974304, 40.685200),
(405, 'New York Transit Museum', -73.989967, 40.690468),
(406, 'Micro Museum', -73.989731, 40.687607),
(407, 'Reid Farrington', -73.983421, 40.695564),
(408, 'Brooklyn Historical Society DUMBO', -73.991646, 40.703644),
(409, 'Spark by Brooklyn Children\'s Museum', -73.987953, 40.704510),
(410, 'Building 92', -73.973442, 40.698212),
(411, '227 Abolitionist Place Museum Heritage Center', -73.984123, 40.691311),
(412, 'Protocol Inc', -73.987907, 40.703857),
(413, 'House of Wax', -73.982864, 40.690876),
(414, 'CAM Adams Street Walls', -73.988625, 40.701591),
(415, 'Truman Capote\'s House', -73.995201, 40.699093),
(416, 'Foto dumbo.', -73.989334, 40.703270),
(417, 'Brooklyn Bridge Park', -73.996643, 40.699833),
(418, 'Brooklyn Bridge Instagold', -73.989555, 40.703506),
(419, 'JEmily Partners', -73.981400, 40.685020),
(420, 'Pier 3', -73.999809, 40.698063),
(421, 'ART SPACE', -74.000862, 40.693333),
(422, 'Brooklyn Bridge of Vortex', -73.995865, 40.702969),
(423, 'Fort Greene Park', -73.974945, 40.691395),
(424, 'Brooklyn Bridge Park', -73.997375, 40.699539),
(425, 'GRAN EL?CTRICA', -73.993118, 40.702667),
(426, 'Brooklyn War Memorial', -73.990669, 40.698460),
(427, 'Brooklyn Heights Promenade', -73.997505, 40.696194),
(428, 'Brooklyn Bridge Park Pier 5', -74.001724, 40.694870),
(429, 'Commodore Barry Park', -73.978966, 40.697376),
(430, 'Brooklyn5and10', -73.989388, 40.702827),
(431, 'Empire Fulton Ferry Park', -73.993378, 40.704224),
(432, 'Pier 6 Dog Run', -74.000038, 40.692722),
(433, 'Pier 1 Playground', -73.996178, 40.703102),
(434, 'Adam Yauch Park', -73.998886, 40.692093),
(435, 'Brooklyn Bridge Park Conservancy', -73.999298, 40.694130),
(436, 'Hillside Dog Park', -73.994377, 40.701511),
(437, 'Cobble Hill Park', -73.995949, 40.688274),
(438, 'Brooklyn Bridge Park Dog Run', -73.988510, 40.703987),
(439, 'Camp Kinderland Inc', -73.990814, 40.693588),
(440, 'McLaughlin Park', -73.986000, 40.696533),
(441, 'Van Voorhees Playground', -73.999489, 40.689793),
(442, 'Squibb Park', -73.995483, 40.700954),
(443, 'Internist Downtown Brooklyn: Dr. Anzhela Dvorkina', -73.986320, 40.689709),
(444, 'Dentistry At the Heights: Kevin Trotter, DDS', -73.993584, 40.692696),
(445, 'Surasi Swamy S MD', -73.993561, 40.692707),
(446, 'Nelson Menezes Vascular Specialist', -73.991837, 40.692417),
(447, 'Brooklyn Women\'s Pavilion OB/GYN, PLLC', -73.982384, 40.689732),
(448, 'Hanson Place Dental', -73.986671, 40.690388),
(449, 'Dr. Lester Toporovsky, DDS', -73.986778, 40.690224),
(450, 'Dr. Irwin M. Grosman, MD', -73.991325, 40.692421),
(451, 'Successful Office', -73.990257, 40.703075),
(452, 'Professional Gynecological Services', -73.982300, 40.689800),
(453, 'Helen Gorokhovsky, LMSW', -73.987015, 40.689896),
(454, 'The LASIK Vision Institute', -73.990829, 40.693508),
(455, 'Dr. Ronald M. Gasalberti, MD', -73.984436, 40.694271),
(456, 'Deutsch James A MD', -73.994270, 40.693825),
(457, 'Michael Amoashiy M.D., Ph.D.', -73.987549, 40.691833),
(458, 'Hirschy James C MD', -73.982956, 40.689175),
(459, 'Dr. Marcos A. Herrera, MD', -73.982765, 40.689281),
(460, 'Stephanie Carter-Robin, DPM, PC', -73.977844, 40.691681),
(461, 'Dr. Danko V. Vidovich, MD', -73.982956, 40.689175),
(462, 'Dr. Michael J. White, MD', -73.982956, 40.689175),
(463, 'Urban Outfitters', -73.994080, 40.689922),
(464, 'Brooklyn Fare', -73.986160, 40.688850),
(465, 'Shake Shack', -73.988625, 40.692162),
(466, 'Target', -73.976196, 40.684258),
(467, 'Macy\'s', -73.985954, 40.690434),
(468, 'FedEx Office Print & Ship Center', -73.990700, 40.693485),
(469, 'Modell\'s Sporting Goods', -73.988083, 40.691547),
(470, 'Trader Joe\'s', -73.992867, 40.689583),
(471, 'AT&T Store', -73.983894, 40.689831),
(472, 'Paper Source', -73.989639, 40.688210),
(473, 'Barnes & Noble', -73.992012, 40.690796),
(474, 'Etsy', -73.988144, 40.700581),
(475, 'Goodwill Industries Store & Donation Center', -73.983955, 40.688469),
(476, 'Greenlight Bookstore', -73.974564, 40.686176),
(477, 'Betty Bakery', -73.983429, 40.686234),
(478, 'Mile End Delicatessen', -73.987099, 40.687454),
(479, 'Evan Eisman Company', -73.975838, 40.698685),
(480, 'H&M', -73.985153, 40.690815),
(481, 'PetSmart', -73.991318, 40.689095),
(482, 'CVS Pharmacy', -73.976250, 40.684216),
(483, 'Trader Joe\'s', -73.992867, 40.689583),
(484, 'Perelandra Natural Food Center', -73.991432, 40.693356),
(485, 'Concord Market', -73.987366, 40.696369),
(486, 'NYC Fresh Market', -73.982964, 40.693443),
(487, 'Trader Joe\'s', -73.982918, 40.690990),
(488, 'Gristedes', -73.992661, 40.697571),
(489, 'Rocky\'s Deli & Supermarket', -73.976456, 40.687260),
(490, 'Fort Green Food Market', -73.972290, 40.689480),
(491, 'Malko Brothers Co', -73.993729, 40.689922),
(492, 'Gristede\'s', -73.979561, 40.693329),
(493, 'Whole Foods Market 365', -73.978394, 40.686405),
(494, 'Cobble Hill Mini Mart', -73.998146, 40.687511),
(495, 'Halal Natural Food', -73.979111, 40.684566),
(496, 'Equinox Brooklyn Heights', -73.991623, 40.692520),
(497, 'Dodge YMCA', -73.991547, 40.689667),
(498, 'Planet Fitness', -73.984169, 40.690681),
(499, 'Gleason\'s Gym', -73.988983, 40.702976),
(500, 'New York Sports Clubs', -73.991364, 40.688511),
(501, 'Abhaya Yoga Dumbo', -73.987541, 40.703896),
(502, 'Bridge Pilates', -73.980942, 40.703411),
(503, 'Crunch Fitness - Ft. Greene', -73.977859, 40.687939),
(504, 'New York Sports Clubs', -73.991112, 40.693287),
(505, 'Brooklyn Martial Arts', -73.981979, 40.688416),
(506, 'Ingersoll Community Center', -73.982170, 40.693829),
(507, 'Little Gym of Brooklyn Heights', -73.991684, 40.689716),
(508, 'Mala Yoga', -73.993202, 40.688271),
(509, 'CrossFit Dumbo', -73.987701, 40.703568),
(510, 'lululemon', -73.991127, 40.686020),
(511, 'Area Yoga', -73.993500, 40.682598),
(512, 'KRANK BROOKLYN', -73.982506, 40.697224),
(513, 'Body In Balance Studio', -73.994492, 40.687149),
(514, 'World Martial Arts Center', -73.980339, 40.684818),
(515, 'Shala', -73.974998, 40.687370),
(516, 'Fulton Mall', -73.987167, 40.690800),
(517, 'Atlantic Terminal Mall', -73.976982, 40.684589),
(518, 'Juniper Galaxy', -73.984680, 40.687305),
(519, 'Sunglass Hut at Macy\'s', -73.985893, 40.690231),
(520, 'City Point Shopping Center', -73.983063, 40.690987),
(521, 'City Point', -73.982574, 40.691265),
(522, 'Regular Visitors', -73.990395, 40.686565),
(523, 'James Hollomon iii', -73.990952, 40.693329),
(524, 'James Hollomon III', -73.991867, 40.694302),
(525, 'James hollomon iii', -73.985085, 40.689159),
(526, '395 Flatbush Avenue', -73.981018, 40.689358),
(527, '99 cent shop', -73.979446, 40.688431),
(528, 'Empire Stores', -73.991623, 40.703552),
(529, 'Mildred\'s Family Daycare', -73.988289, 40.683178),
(530, 'Jen-Mar electric Service Corp.', -73.972038, 40.700054),
(531, 'MDV ID', -73.975349, 40.683838),
(532, 'Planned Parenthood - Boro Hall Health Center', -73.991310, 40.692757),
(533, 'Mobile Health', -73.991325, 40.692421),
(534, 'NYC Health Hospitals/Gotham Health, Cumberland', -73.976524, 40.695385),
(535, 'Brooklyn GYN Place', -73.993584, 40.692696),
(536, 'Long Island Hospital-Larynclgy Dpt', -73.995415, 40.690376),
(537, 'Ageless Men\'s Health', -73.993637, 40.691319),
(538, 'SUNY Downstate Medical Center', -73.996544, 40.689556),
(539, 'Metrotech Medical Center', -73.987061, 40.692444),
(540, 'South Beach Psychiatric Center', -73.994736, 40.686089),
(541, 'Interboro Heart Associates', -73.978279, 40.691513),
(542, 'South Beach Psychiatric Center', -73.979904, 40.687977),
(543, 'Dialysis Services - The Brooklyn Hospital Center', -73.977684, 40.690571),
(544, 'Central Brooklyn Medical Group', -73.991219, 40.693748),
(545, 'Intermed Care PC', -73.987099, 40.692402),
(546, 'Mount Sinai Medical Center', -73.991127, 40.695118),
(547, 'New York Center for Aesthetic Rejuvenation', -73.993584, 40.692696),
(548, 'Philippa Gordon and Associates', -73.995377, 40.683998),
(549, 'Mount Sinai Doctors Urgent Care', -73.986946, 40.701366),
(550, 'Brooklyn Hospital Center - Downtown', -73.978416, 40.690495),
(551, 'The Brooklyn Hospital Center', -73.977997, 40.690849),
(552, 'Battery Gardens', -74.015137, 40.701443),
(553, 'North End Grill', -74.015450, 40.715431),
(554, 'Tamarind Tribeca', -74.009079, 40.719112),
(555, 'Chipotle Mexican Grill', -74.012978, 40.704266),
(556, 'Terroir Tribeca', -74.009956, 40.718922),
(557, 'Beckett\'s Bar & Grill', -74.010338, 40.704128),
(558, 'View of the World', -74.014069, 40.709717),
(559, 'KAFFE 1668 SOUTH', -74.011086, 40.715137),
(560, 'Sophie\'s Cuban Cuisine', -74.012543, 40.705585),
(561, 'The Dead Rabbit Grocery and Grog', -74.011032, 40.703297),
(562, 'Vintry Wine & Whiskey', -74.010269, 40.704521),
(563, 'Tribeca Grill', -74.010056, 40.719563),
(564, 'NINJA NEW YORK', -74.009346, 40.716736),
(565, 'McDonald\'s', -74.010086, 40.709438),
(566, 'Pita Express', -74.007881, 40.710953),
(567, 'Cucina Liberta', -74.015961, 40.704971),
(568, 'Shake Shack', -74.014801, 40.715275),
(569, 'Locanda Verde', -74.010025, 40.719894),
(570, 'Chipotle Mexican Grill', -74.006973, 40.706715),
(571, 'The Palm Tribeca', -74.012695, 40.716579),
(572, 'Borough of Manhattan Community College', -74.011520, 40.718792),
(573, 'New York Law School', -74.006989, 40.717983),
(574, 'Pace University', -74.004860, 40.711121),
(575, 'Adelphi University - Manhattan Center', -74.006447, 40.723511),
(576, 'Nyack College', -74.015694, 40.705639),
(577, 'GEOS Language Institute', -74.016022, 40.705276),
(578, 'Berkeley College - Lower Extension Center', -74.006622, 40.709248),
(579, 'New York Career Institute', -74.008278, 40.713062),
(580, 'New York Academy of Art', -74.006111, 40.718418),
(581, 'Mildred Elley - NYC Campus', -74.013710, 40.705547),
(582, 'Murry Bergtraum High School For Business Careers', -74.001991, 40.711342),
(583, 'Pace University Urban Edu', -74.006378, 40.711735),
(584, 'Metropolitan College of New York', -74.014954, 40.708721),
(585, 'The College of New Rochelle, DC-37 Campus', -74.012985, 40.714630),
(586, 'The King\'s College', -74.012337, 40.706680),
(587, 'Carnegie Mellon University', -74.010880, 40.705292),
(588, 'College Summit', -74.010246, 40.705788),
(589, 'Mildred Elley - NYC Campus', -74.013901, 40.705791),
(590, 'Collaborative Arts Project 21', -74.012611, 40.706417),
(591, 'New York Film Academy | Battery Place, New York', -74.015968, 40.705170),
(592, 'New York Academy of Art', -74.006111, 40.718418),
(593, 'ANGELLINO ARTE', -74.009766, 40.706963),
(594, 'Art By Naima Rauam', -74.002907, 40.706532),
(595, 'Art By Jeremy Johnson', -74.010185, 40.706463),
(596, 'Keya Gallery', -74.010994, 40.707657),
(597, 'hpgrp gallery New York', -74.009949, 40.722698),
(598, 'Todd Merrill Studio', -74.001846, 40.717144),
(599, 'R & Company', -74.004547, 40.718136),
(600, 'Jeffrey Deitch', -74.003059, 40.721436),
(601, 'BDDW', -74.000076, 40.719830),
(602, 'Leslie-Lohman Museum of Gay and Lesbian Art', -74.003090, 40.721668),
(603, 'Baby Grand', -73.999084, 40.719818),
(604, 'Alexander and Bonin', -74.003700, 40.718941),
(605, 'Artists Space', -74.002052, 40.717842),
(606, 'Postmasters Gallery', -74.002708, 40.717297),
(607, 'Gio-Art Productions', -74.008530, 40.711914),
(608, 'Soho Photo Gallery', -74.005493, 40.719036),
(609, 'Lower Manhattan Cultural Council', -74.006393, 40.706600),
(610, 'Oly Atelier', -74.010078, 40.721626),
(611, 'Philip Williams Posters', -74.008644, 40.715130),
(612, 'Bubby\'s', -74.008377, 40.719803),
(613, 'Sarabeth\'s Tribeca', -74.010292, 40.718330),
(614, 'Le Pain Quotidien', -74.009285, 40.715015),
(615, 'Billy\'s Bakery', -74.004486, 40.717712),
(616, 'Takahachi Bakery', -74.008514, 40.713730),
(617, 'Dunkin\' Donuts', -74.008934, 40.713982),
(618, 'Financier Patisserie', -74.010094, 40.708668),
(619, 'Le Pain Quotidien', -74.016365, 40.715511),
(620, 'Leo\'s Bagels', -74.009735, 40.704937),
(621, 'Grandaisy Bakery', -74.006119, 40.720097),
(622, 'Zucker\'s Bagels & Smoked Fish', -74.009834, 40.715618),
(623, 'Financier Patisserie', -74.009880, 40.704494),
(624, 'City Sweets & Confections', -74.000847, 40.719021),
(625, 'Le Pain Quotidien', -74.001549, 40.721504),
(626, 'Mei Li Wah', -73.997910, 40.715508),
(627, 'Dunkin\' Donuts', -74.013992, 40.707996),
(628, 'Dunkin\' Donuts', -74.005104, 40.716057),
(629, 'Pick A Bagel', -74.015114, 40.714508),
(630, 'Baked by Melissa', -74.007011, 40.709743),
(631, 'Tribeca Bagels', -74.004417, 40.720901),
(632, 'Battery Gardens', -74.015137, 40.701443),
(633, 'North End Grill', -74.015450, 40.715431),
(634, 'Tamarind Tribeca', -74.009079, 40.719112),
(635, 'Terroir Tribeca', -74.009956, 40.718922),
(636, 'Beckett\'s Bar & Grill', -74.010338, 40.704128),
(637, 'The Dead Rabbit Grocery and Grog', -74.011032, 40.703297),
(638, 'Vintry Wine & Whiskey', -74.010269, 40.704521),
(639, 'The Palm Tribeca', -74.012695, 40.716579),
(640, 'The Bailey', -74.008926, 40.706707),
(641, 'Delmonico\'s', -74.010376, 40.704903),
(642, 'Bubby\'s', -74.008377, 40.719803),
(643, 'Woodrow\'s', -74.009109, 40.714153),
(644, 'Gilligan\'s', -74.004410, 40.722027),
(645, 'Macao Trading Co', -74.003937, 40.719627),
(646, 'M1-5 Lounge', -74.003319, 40.719185),
(647, 'Harry\'s NYC', -74.009735, 40.704678),
(648, 'Trinity Place Restaurant and Bar', -74.011322, 40.708847),
(649, 'Killarney Rose', -74.008659, 40.705059),
(650, 'The Capital Grille', -74.010254, 40.707901),
(651, 'Reserve Cut', -74.011780, 40.706039),
(652, 'Regal Cinemas Battery Park 11', -74.015236, 40.714989),
(653, 'DCTV', -74.001190, 40.717323),
(654, 'Cinema Odyssey', -74.003990, 40.717510),
(655, 'One Solution', -74.008438, 40.723728),
(656, 'RGL', -74.015221, 40.715000),
(657, 'Roxy Cinema', -74.004929, 40.719406),
(658, 'iHeartRadio', -74.004631, 40.720097),
(659, 'Art in General', -74.001884, 40.718098),
(660, 'SUBSCRIBE TO PEWDIEPIE', -74.012161, 40.714493),
(661, '0NSTAGE IN aMERICA', -74.007675, 40.715965),
(662, 'iPic Theaters', -74.003288, 40.706783),
(663, 'Cuartel Cazafantasmas', -74.006615, 40.719566),
(664, 'TFF Headquarters & VR', -74.006142, 40.721077),
(665, 'Tribeca Immersive Virtual Arcade at TFF HUB', -74.006233, 40.721252),
(666, 'Tribeca Film Office', -74.006470, 40.723389),
(667, 'Bowling Green', -74.013649, 40.704975),
(668, 'Battery Park', -74.017029, 40.703278),
(669, 'Castle Clinton National Monument', -74.016800, 40.703442),
(670, 'Foley Square', -74.002991, 40.714352),
(671, 'Battery Park City Parks', -74.017174, 40.706768),
(672, 'Pier 25 at Hudson River Park', -74.014343, 40.720310),
(673, 'Irish Hunger Memorial', -74.016365, 40.715065),
(674, 'Columbus Park', -73.999992, 40.715660),
(675, 'Battery Park Authority', -74.014824, 40.715790),
(676, 'Conservancy-Historic Battery', -74.010597, 40.708469),
(677, 'New York Vietnam Veterans Memorial Plaza', -74.009789, 40.702679),
(678, 'Robert F Wagner Junior Park', -74.018806, 40.705311),
(679, 'Zuccotti Park', -74.011261, 40.709267),
(680, 'Tribeca Park', -74.005547, 40.720188),
(681, 'Titanic Memorial Park', -74.003830, 40.707436),
(682, 'Teardrop Park', -74.015526, 40.717072),
(683, 'Washington Market Park', -74.011467, 40.716972),
(684, 'Collect Pond Park', -74.001869, 40.716286),
(685, 'Pier 26 at Hudson River Park', -74.013153, 40.721134),
(686, 'Duane Park', -74.009377, 40.717175),
(687, 'Bobby Buka MD - South Street Seaport Dermatology', -74.002426, 40.707573),
(688, 'DOWNTOWN MANHATTAN PSYCHIATRIC GROUP', -74.008667, 40.711750),
(689, 'NewYork-Presbyterian Lower Manhattan Hospital', -74.005081, 40.710335),
(690, 'Charles B Wang Community Health Center', -74.001373, 40.718678),
(691, 'Peltz & Walker: Walker Paul E', -74.008629, 40.711094),
(692, 'Kahn Dermatology', -74.009308, 40.718590),
(693, 'New York Ketamine Infusions', -74.007393, 40.707760),
(694, 'Maiden Lane Medical', -74.007523, 40.706921),
(695, 'WALL STREET PSYCHOLOGISTS PLLC', -74.007774, 40.707123),
(696, 'Foley Plaza Medical PC', -74.005013, 40.716152),
(697, 'Hudson Medical', -74.006454, 40.714581),
(698, 'Nyu Medical Center', -73.999817, 40.717590),
(699, 'Weill Cornell Medicine Primary Care - Tribeca', -74.007011, 40.717098),
(700, 'Charles B. Wang Community Health Center', -73.999947, 40.717319),
(701, 'Modern Medical, PC', -74.008446, 40.711922),
(702, 'Comprehensive Pain Management', -74.007477, 40.707794),
(703, 'Hospital Medicine Advisors, LLC', -74.013382, 40.712742),
(704, 'LINA FiDi', -74.011436, 40.708881),
(705, 'NYU Langone at Trinity', -74.011665, 40.708698),
(706, 'NYU Langone Seaport Orthopedics', -74.008293, 40.712448),
(707, 'South Street Seaport', -74.002747, 40.705620),
(708, 'Wall Street Plaza', -74.006088, 40.705677),
(709, 'Brookfield Place', -74.015282, 40.712715),
(710, 'AETHER Apparel', -74.000275, 40.720211),
(711, 'Westfield World Trade Center', -74.011475, 40.711475),
(712, 'Zeel International Store', -74.015984, 40.714050),
(713, 'The Fulton Center', -74.008888, 40.710400),
(714, 'The Seaport District', -74.003548, 40.707088),
(715, 'The Seaport District', -74.003548, 40.707088),
(716, 'Empire Stores', -74.008896, 40.703323),
(717, 'New York Canal Street Co.', -74.000816, 40.719013),
(718, 'Ministry of Tomorrow - Vegan Luxury Designer Leath', -74.011749, 40.711040),
(719, 'The Oculus', -74.011147, 40.711399),
(720, 'World Trade Center NEW YORK', -74.011772, 40.709858),
(721, 'Fulton II', -74.009033, 40.710880),
(722, '150 Broadway, New York, NY 10038', -74.010185, 40.709305),
(723, 'Waterman', -74.008171, 40.710438),
(724, 'The Doon Stores', -74.009186, 40.714558),
(725, 'world trade center', -74.008911, 40.715534),
(726, 'oculus', -74.016380, 40.716766),
(727, 'Barnes & Noble', -74.011734, 40.715744),
(728, 'SEPHORA', -74.010330, 40.709194),
(729, 'Bed Bath & Beyond', -74.011902, 40.715790),
(730, 'TKTS South Street Seaport', -74.004486, 40.706684),
(731, 'KAFFE 1668 SOUTH', -74.011086, 40.715137),
(732, 'Whole Foods Market', -74.012054, 40.715534),
(733, 'AT&T Store', -74.008530, 40.711781),
(734, 'Staples', -74.008774, 40.711643),
(735, 'McDonald\'s', -74.010086, 40.709438),
(736, 'Opening Ceremony', -74.000984, 40.719612),
(737, 'Tiffany & Co.', -74.010223, 40.706524),
(738, 'Cucina Liberta', -74.015961, 40.704971),
(739, 'Shake Shack', -74.014801, 40.715275),
(740, 'Modell\'s Sporting Goods', -74.005783, 40.714119),
(741, 'Abercrombie & Fitch', -74.004318, 40.706902),
(742, 'Picasso Pizzeria', -74.016472, 40.710384),
(743, 'Bubby\'s', -74.008377, 40.719803),
(744, 'Pret A Manger', -74.011833, 40.705147),
(745, 'CVS', -74.007545, 40.710258),
(746, 'T.J. Maxx', -74.010803, 40.707474),
(747, 'Whole Foods Market', -74.012054, 40.715534),
(748, 'Zeytuna', -74.007584, 40.708691),
(749, 'Jubilee Market Place', -74.006363, 40.708260),
(750, 'Gristedes', -74.007576, 40.706879),
(751, 'CTown Supermarkets', -74.000275, 40.710922),
(752, 'Gristede\'s Foods', -74.017685, 40.708477),
(753, '55 Fulton Market', -74.004723, 40.708714),
(754, 'Key Food Supermarket', -74.004623, 40.708782),
(755, 'Gristedes', -74.016441, 40.710678),
(756, 'Ali Baba Organic Marketplace', -73.998802, 40.713730),
(757, 'Kula Yoga Project', -74.007919, 40.714390),
(758, 'Equinox Tribeca', -74.009651, 40.714054),
(759, 'The Wat Gym', -74.006042, 40.714943),
(760, 'SoulCycle', -74.012550, 40.716034),
(761, 'Equinox Wall Street', -74.010773, 40.707634),
(762, 'Asphalt Green', -74.014778, 40.716038),
(763, 'Planet Fitness', -74.013969, 40.705780),
(764, 'Tribeca Health & Fitness', -74.008141, 40.715122),
(765, 'Church Street Boxing Gym', -74.008934, 40.713238),
(766, 'Life Center', -74.004242, 40.715591),
(767, 'Modern Martial Arts Tribeca', -74.007179, 40.715492),
(768, 'Crunch Fitness - FiDi', -74.009651, 40.708412),
(769, 'New York Sports Clubs', -74.008598, 40.711754),
(770, 'New York Health & Racquet Club', -74.012749, 40.702934),
(771, 'Eden Day Spa NYC', -74.002686, 40.718258),
(772, 'Trinity Boxing Club', -74.006744, 40.715611),
(773, 'Barry\'s Bootcamp Tribeca', -74.005623, 40.721359),
(774, 'YogaWorks Soho', -74.000870, 40.720860),
(775, 'Five Points Academy', -73.999931, 40.719524),
(776, 'Do Yoga Do Pilates', -74.007202, 40.715427),
(777, 'ABC Kitchen', -73.989616, 40.737743),
(778, 'Maialino', -73.985893, 40.738552),
(779, 'The Mermaid Inn', -73.988579, 40.727058),
(780, 'Gyu-Kaku Japanese BBQ', -73.991486, 40.728237),
(781, 'Poco - NYC', -73.982903, 40.722511),
(782, 'The 13th Step', -73.987274, 40.729481),
(783, 'Kumo Sushi', -73.982933, 40.730457),
(784, 'Edi & The Wolf', -73.978821, 40.723820),
(785, 'The Wren', -73.992203, 40.726322),
(786, 'Baohaus', -73.985657, 40.732487),
(787, 'Awash', -73.986862, 40.726528),
(788, 'Odessa', -73.983490, 40.726475),
(789, 'Tarallucci e Vino - Union Square', -73.990608, 40.738201),
(790, 'The Halal Guys', -73.984398, 40.732342),
(791, 'Dos Toros Taqueria', -73.989677, 40.733658),
(792, 'Beyond Sushi', -73.985886, 40.732922),
(793, 'Momofuku Noodle Bar', -73.984512, 40.729233),
(794, 'IHOP', -73.985512, 40.732925),
(795, 'Max Brenner Chocolate Bar', -73.991089, 40.734379),
(796, 'Lafayette', -73.993706, 40.727592),
(797, 'The Cooper Union', -73.991608, 40.728081),
(798, 'New York University', -73.996460, 40.729511),
(799, 'Baruch College', -73.983154, 40.740486),
(800, 'NYU Stern School of Business', -73.996521, 40.729053),
(801, 'Princely International University', -73.986771, 40.740116),
(802, 'Invest Academy', -73.990486, 40.729408),
(803, 'nyu dental', -73.978218, 40.737949),
(804, 'NYU School of Law', -73.999496, 40.730537),
(805, 'Kimmel Center for University Life', -73.997826, 40.729939),
(806, 'NYU Stern Executive MBA program', -73.996223, 40.729073),
(807, 'Schools of Public Engagement | The New School', -73.994293, 40.735546),
(808, 'Gene Frankel Theatre', -73.993637, 40.726673),
(809, 'Cardozo School of Law', -73.994308, 40.734749),
(810, 'Baruch college', -73.984428, 40.738972),
(811, 'The New School Welcome Center', -73.994270, 40.735508),
(812, 'Lee Strasberg Theater Institute Inc', -73.988724, 40.735096),
(813, 'Milano School of International Affairs, Management', -73.994293, 40.735546),
(814, 'Institute of Audio Research', -73.993759, 40.733006),
(815, 'International College', -73.988319, 40.736805),
(816, 'MBA House', -73.996880, 40.724918),
(817, 'Casa Mezcal', -73.990128, 40.717930),
(818, 'La Mama Experimental Theatre Club', -73.990135, 40.726376),
(819, 'Posters Please Inc', -73.993919, 40.738415),
(820, 'Gallery Juno', -73.996880, 40.724918),
(821, 'WESTWOOD GALLERY NYC', -73.993286, 40.723358),
(822, 'MARCOART', -73.989845, 40.720860),
(823, 'Grey Art Gallery', -73.995872, 40.730270),
(824, 'John Derian Company Inc', -73.991486, 40.725563),
(825, 'Gulf and Western Gallery', -73.993790, 40.729416),
(826, 'Ethnix Tribal & African Arts', -73.995621, 40.726112),
(827, 'ILevel, Inc.', -73.988777, 40.728420),
(828, 'MFI Art Co', -73.997192, 40.724258),
(829, 'Specific Object Inc', -74.000656, 40.724384),
(830, 'Howl Arts Inc', -73.995621, 40.726112),
(831, 'Aragon Art Gallery', -73.985741, 40.721142),
(832, 'Michael Ingbar Gallery', -73.997192, 40.724258),
(833, 'Creative Pier', -73.991402, 40.733940),
(834, 'Participant Inc.', -73.985275, 40.721611),
(835, 'Swann Auction Galleries', -73.985077, 40.741028),
(836, 'Sperone Westwater', -73.992584, 40.723148),
(837, 'Spot Dessert Bar', -73.988922, 40.729389),
(838, 'Tarallucci e Vino - Union Square', -73.990608, 40.738201),
(839, 'Lafayette', -73.993706, 40.727592),
(840, 'Veniero\'s Pastry', -73.984520, 40.729488),
(841, 'Clinton St. Baking Company', -73.983849, 40.721264),
(842, 'Baked by Melissa', -73.992393, 40.735691),
(843, 'Russ & Daughters', -73.988274, 40.722584),
(844, 'Le Pain Quotidien', -73.989883, 40.740406),
(845, 'Balthazar', -73.998169, 40.722626),
(846, 'Milk Bar East Village', -73.985680, 40.731861),
(847, 'Lenwich', -73.999023, 40.734035),
(848, 'The City Bakery', -73.992424, 40.738857),
(849, 'Bagel Boss', -73.982094, 40.732307),
(850, 'Ess-a-Bagel', -73.979980, 40.734241),
(851, 'Tu-Lu\'s Gluten Free Bakery', -73.984688, 40.729507),
(852, 'Dean & DeLuca', -73.997681, 40.724049),
(853, 'Le Pain Quotidien', -73.995071, 40.726295),
(854, 'Georgetown Cupcake', -73.999435, 40.723820),
(855, 'Gramercy Bagels', -73.984604, 40.737221),
(856, 'Insomnia Cookies', -74.000580, 40.729767),
(857, 'ABC Kitchen', -73.989616, 40.737743),
(858, 'The Mermaid Inn', -73.988579, 40.727058),
(859, 'Spot Dessert Bar', -73.988922, 40.729389),
(860, 'Flatiron Lounge', -73.993217, 40.739979),
(861, 'Gyu-Kaku Japanese BBQ', -73.991486, 40.728237),
(862, 'Poco - NYC', -73.982903, 40.722511),
(863, 'The 13th Step', -73.987274, 40.729481),
(864, 'Edi & The Wolf', -73.978821, 40.723820),
(865, 'The Wren', -73.992203, 40.726322),
(866, 'Odessa', -73.983490, 40.726475),
(867, 'Tarallucci e Vino - Union Square', -73.990608, 40.738201),
(868, 'Pianos', -73.987694, 40.721024),
(869, 'Casa Mezcal', -73.990128, 40.717930),
(870, 'Ten Degrees Bar', -73.983482, 40.726952),
(871, 'The DL', -73.989334, 40.718559),
(872, 'Bob Bar', -73.989983, 40.722443),
(873, 'Gramercy Tavern', -73.988503, 40.738457),
(874, 'Please Don\'t Tell', -73.983765, 40.727093),
(875, 'Maharlika', -73.986107, 40.726944),
(876, 'Beauty & Essex', -73.986900, 40.720428),
(877, 'AMC Village 7', -73.988754, 40.731602),
(878, 'AMC Loews 19th St. East 6', -73.989777, 40.738556),
(879, 'Regal Union Square Stadium 14', -73.990761, 40.734009),
(880, 'Cinema Village', -73.993378, 40.734089),
(881, 'Village East Cinema', -73.986214, 40.730957),
(882, 'IFC Center', -74.001671, 40.731205),
(883, 'Reading International/City Cinemas', -73.986221, 40.730938),
(884, 'Paradise Factory', -73.990631, 40.726448),
(885, 'Cineplex Odeon Cinemas', -74.001701, 40.731213),
(886, 'Msk', -73.985008, 40.719757),
(887, 'Angelika Film Center & Caf? - New York', -73.997353, 40.725922),
(888, 'Judson Poets Theater', -73.998444, 40.730225),
(889, 'Quad Cinema', -73.996063, 40.735970),
(890, 'Mind Movie', -73.993996, 40.738884),
(891, 'Minetta Lane Theatre', -73.986237, 40.730911),
(892, 'Madstone Films', -73.992233, 40.737301),
(893, 'Liberty Theatres', -73.986221, 40.730938),
(894, 'Nigel The Cat', -73.980316, 40.728909),
(895, 'Fillmore East (former)', -73.988632, 40.727673),
(896, 'Club Bijou 82 Cinema', -73.989609, 40.726273),
(897, 'Washington Square Park', -73.997330, 40.730824),
(898, 'Madison Square Park', -73.987564, 40.742039),
(899, 'Sara D. Roosevelt Park', -73.991539, 40.721741),
(900, 'Union Square Park', -73.990524, 40.735825),
(901, 'La Lanterna di Vittorio', -74.000061, 40.730621),
(902, 'John V. Lindsay East River Park Track', -73.973434, 40.721699),
(903, 'Stuyvesant Square Park', -73.984108, 40.733948),
(904, 'West 4th Street Courts', -74.001984, 40.729244),
(905, '6BC Botanical Garden', -73.980705, 40.723816),
(906, 'Cooper Triangle', -73.990799, 40.728718),
(907, 'Dry Dock Playground', -73.975525, 40.725357),
(908, 'Jefferson Market Garden', -73.999542, 40.734470),
(909, 'Union Square Dog Run', -73.990967, 40.735603),
(910, 'Sixth Street and Avenue B Community Garden', -73.981995, 40.724304),
(911, 'Le Petit Versailles Garden', -73.981834, 40.721111),
(912, 'First Street Green Cultural Park', -73.990471, 40.723713),
(913, 'Madison Square Dog Run', -73.988594, 40.742294),
(914, 'Albert\'s Garden', -73.991035, 40.725391),
(915, 'Union Square Studios', -73.991058, 40.734646),
(916, 'Peretz Square', -73.988548, 40.723011),
(917, 'Planned Parenthood - Margaret Sanger Health Center', -73.993637, 40.725464),
(918, 'Bellevue Hospital Center', -73.975334, 40.738934),
(919, 'Mount Sinai Beth Israel', -73.981926, 40.733067),
(920, 'Center for Children', -73.983009, 40.734360),
(921, 'Eric Braverman MD', -73.987022, 40.740208),
(922, 'Bellevue Hospital Child/adlscnt', -73.975494, 40.739216),
(923, 'Bellevue Hospital-Psychiatry', -73.975563, 40.739307),
(924, 'NYU Sleep Disorders Center', -73.975494, 40.739216),
(925, 'Union Square TMS Center', -73.995537, 40.737076),
(926, 'Stuyvesant Square Program Beth', -73.982040, 40.733074),
(927, 'Giaccio-Willia Rosina', -73.987022, 40.740208),
(928, 'Bellevue Hospital Pul/crit Cr', -73.975639, 40.739365),
(929, 'West End Pediatrics', -73.996880, 40.732121),
(930, 'NYC Health Hospitals/Gotham Health, Judson', -73.995880, 40.721516),
(931, 'VA NY Harbor Healthcare System', -73.977272, 40.736874),
(932, 'SanaVita Center for Holistic Cleansing', -73.980804, 40.728683),
(933, 'Ultrasound-Medicine & Biology', -73.985428, 40.741928),
(934, 'Manhattan\'s Physician Group', -73.988335, 40.740349),
(935, 'Beth Israel Medical Center - Berger Dept. of Urolo', -73.989624, 40.734737),
(936, 'Student Health Center - New York University', -73.993019, 40.729321),
(937, 'Limelight Shops', -73.993744, 40.741074),
(938, 'Sunglass Hut', -73.997047, 40.736675),
(939, 'Bouteaque', -73.982155, 40.722145),
(940, 'Sunglass Hut', -73.992676, 40.730568),
(941, 'Artists & Fleas SoHo', -73.997383, 40.724297),
(942, 'Mayfair Division', -73.991493, 40.739254),
(943, 'Condor', -73.995514, 40.720680),
(944, 'Zeel International Store', -73.999886, 40.723801),
(945, 'Soho mall', -73.996834, 40.720173),
(946, 'Zeel International Store', -74.000435, 40.723980),
(947, 'Z', -73.984520, 40.729420),
(948, 'Spot Dessert Bar', -73.988922, 40.729389),
(949, 'Whole Foods Market', -73.992310, 40.723824),
(950, 'Housing Works Bookstore Cafe', -73.996483, 40.724567),
(951, 'Whole Foods Market', -73.991188, 40.734818),
(952, 'Supreme', -73.996407, 40.724056),
(953, 'Kmart', -73.991188, 40.730247),
(954, 'Crate & Barrel', -73.996758, 40.725739),
(955, 'REI', -73.995209, 40.724850),
(956, 'Best Buy', -73.996223, 40.725830),
(957, 'Best Buy', -73.990341, 40.734234),
(958, 'Halloween Adventure', -73.990463, 40.732357),
(959, 'Petco Animal Supplies', -73.989944, 40.737106),
(960, 'Barnes & Noble', -73.989517, 40.737068),
(961, 'Obscura Antiques & Oddities', -73.981232, 40.729649),
(962, 'Tarallucci e Vino - Union Square', -73.990608, 40.738201),
(963, 'BabyGap', -73.992371, 40.738213),
(964, 'Moncler', -73.998436, 40.724483),
(965, 'Converse Flagship Store', -73.997803, 40.723972),
(966, 'Victoria\'s Secret', -73.991127, 40.738766),
(967, 'AT&T Store', -73.989761, 40.737030),
(968, 'Whole Foods Market', -73.992310, 40.723824),
(969, 'Whole Foods Market', -73.991188, 40.734818),
(970, 'Trader Joe\'s', -73.987900, 40.733372),
(971, 'Morton Williams Supermarkets', -73.998764, 40.727608),
(972, 'The Food Emporium', -73.989494, 40.734493),
(973, 'Key Food Supermarkets', -73.984764, 40.724003),
(974, 'Morton Williams Supermarkets', -73.987190, 40.739464),
(975, 'Garden of Eden Marketplace', -73.992897, 40.735962),
(976, 'St Marks Market', -73.988609, 40.729195),
(977, 'Key Food Supermarkets', -73.980400, 40.717136),
(978, 'Gristedes', -73.973824, 40.737484),
(979, 'SHOP FAIR SUPERMARKETS', -73.980034, 40.721931),
(980, 'Morton Williams Wines and Spirits', -73.980133, 40.737576),
(981, 'Gristedes', -73.994324, 40.731903),
(982, 'Spring Mart', -73.995430, 40.721493),
(983, 'Associated Supermarkets', -73.978653, 40.724564);
INSERT INTO `area` (`aid`, `aname`, `alongitude`, `alatitude`) VALUES
(984, 'Associated Supermarkets', -73.981216, 40.731144),
(985, 'New Yorkers Foodmarket', -73.988617, 40.727844),
(986, 'Westside Market', -73.988632, 40.731861),
(987, 'Morton Williams Supermarkets', -73.980118, 40.737839),
(988, 'SoulCycle Union Square', -73.991066, 40.737995),
(989, 'Jivamukti Yoga Center New York', -73.991180, 40.734314),
(990, 'Strala Training Center', -73.995750, 40.726025),
(991, 'lululemon', -73.992691, 40.737907),
(992, 'Russian & Turkish Baths', -73.983589, 40.728233),
(993, 'Asser Levy Recreation Center', -73.975655, 40.736160),
(994, 'Crunch Fitness - Union Square', -73.989799, 40.732811),
(995, 'Reflections, Center for Conscious Living & Yoga', -73.981361, 40.739090),
(996, 'Yoga Vida', -73.995079, 40.726906),
(997, 'Equinox SoHo', -73.996948, 40.724129),
(998, 'lululemon', -73.999870, 40.725471),
(999, 'The 14th Street Y', -73.983253, 40.731342),
(1000, 'Movement & Beyond Inc', -73.997154, 40.724522),
(1001, 'SoulCycle NOHO - NoHo', -73.993408, 40.727875),
(1002, 'Mushin Mixed Martial Arts', -73.994194, 40.735806),
(1003, 'Work Train Fight', -73.995659, 40.726128),
(1004, 'Kundalini Yoga East', -73.990379, 40.738140),
(1005, 'Yoga Vida', -73.992653, 40.733700),
(1006, 'NYU Palladium Athletic Facility', -73.988327, 40.733208),
(1007, 'CrossFit 212', -73.995079, 40.726906);

-- --------------------------------------------------------

--
-- 資料表結構 `comment`
--

CREATE TABLE `comment` (
  `nid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `cdescription` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `comment`
--

INSERT INTO `comment` (`nid`, `uid`, `cdescription`) VALUES
(1, 1, 'agree'),
(1, 3, 'same feeling'),
(2, 1, 'you too'),
(2, 2, 'haha'),
(3, 2, 'HBD'),
(3, 3, 'thanks'),
(1, 1, 'test1');

-- --------------------------------------------------------

--
-- 資料表結構 `deal`
--

CREATE TABLE `deal` (
  `did` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `dstarttime` datetime DEFAULT NULL,
  `dendtime` datetime DEFAULT NULL,
  `ddescription` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 資料表結構 `filter`
--

CREATE TABLE `filter` (
  `fid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `ftime` time NOT NULL DEFAULT '00:00:00',
  `fcurrentstate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `filter`
--

INSERT INTO `filter` (`fid`, `uid`, `tid`, `ftime`, `fcurrentstate`) VALUES
(1, 1, 1, '07:00:00', ''),
(2, 1, 4, '00:00:00', ''),
(3, 2, 1, '00:00:00', ''),
(4, 2, 3, '00:00:00', ''),
(5, 3, 1, '00:00:00', ''),
(6, 3, 3, '00:00:00', ''),
(7, 3, 5, '00:00:00', ''),
(8, 1, 1, '08:00:00', ''),
(17, 1, 3, '08:00:00', '');

-- --------------------------------------------------------

--
-- 資料表結構 `friendship`
--

CREATE TABLE `friendship` (
  `uid1` int(11) DEFAULT NULL,
  `uid2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `friendship`
--

INSERT INTO `friendship` (`uid1`, `uid2`) VALUES
(1, 2),
(2, 3),
(1, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `note`
--

CREATE TABLE `note` (
  `nid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `nradius` int(11) DEFAULT NULL,
  `nstarttime` time DEFAULT NULL,
  `nendtime` time DEFAULT NULL,
  `privacy` varchar(50) DEFAULT NULL,
  `ndescription` varchar(200) DEFAULT NULL,
  `ncurrentstate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `note`
--

INSERT INTO `note` (`nid`, `uid`, `aid`, `nradius`, `nstarttime`, `nendtime`, `privacy`, `ndescription`, `ncurrentstate`) VALUES
(1, 1, 2, 300, '00:00:00', '12:00:00', 'everyone', 'finals are insane', 'null'),
(2, 2, 1, 100, '09:00:00', '21:00:00', 'me', 'merry christmas', 'null'),
(3, 3, 2, 500, '12:00:00', '18:00:00', 'friend', 'happy birthday', 'null'),
(4, 1, 3, 100, '06:00:00', '18:00:00', 'me', 'no state', 'null'),
(5, 1, 3, 50, '06:00:00', '18:00:00', 'me', 'state_test', 'state_test'),
(6, 1, 201, 1000, '06:00:00', '18:00:00', 'everyone', 'Nice weather!', 'null'),
(7, 1, 201, 1000, '06:00:00', '18:00:00', 'everyone', 'A big tree here!', 'null'),
(8, 1, 201, 1000, '06:00:00', '18:00:00', 'everyone', 'So many prople in Central Park!', 'null'),
(9, 1, 201, 1000, '06:00:00', '18:00:00', 'everyone', 'What a cute squirrel!', 'null'),
(10, 1, 201, 1000, '06:00:00', '18:00:00', 'everyone', 'Colorful Mandarin Duck Excites New Yorkers!', 'null'),
(11, 1, 201, 1000, '06:00:00', '18:00:00', 'everyone', 'Here are some of my favorite photos and memories from the Park this year.', 'null'),
(12, 1, 201, 1000, '06:00:00', '18:00:00', 'everyone', 'So many prople in Central Park!', 'null'),
(13, 1, 201, 1000, '06:00:00', '18:00:00', 'everyone', 'What a cute squirrel!', 'null'),
(14, 1, 201, 1000, '06:00:00', '18:00:00', 'everyone', 'Colorful Mandarin Duck Excites New Yorkers!', 'null'),
(15, 1, 201, 1000, '06:00:00', '18:00:00', 'everyone', 'Thank you to everyone who came out and participated in the 22nd Annual Central Park Holiday Lighting', 'null'),
(16, 1, 201, 1000, '06:00:00', '18:00:00', 'everyone', 'Good morning from CentralParkNYC', 'null'),
(17, 1, 283, 1000, '06:00:00', '18:00:00', 'everyone', 'Heavy Homework!', 'null'),
(18, 1, 283, 1000, '06:00:00', '18:00:00', 'everyone', 'The Christmas tree is lit up!', 'null'),
(19, 1, 283, 1000, '06:00:00', '18:00:00', 'everyone', 'Cold today!', 'null'),
(20, 1, 283, 1000, '06:00:00', '18:00:00', 'everyone', 'Sleepy in class!', 'null'),
(21, 1, 464, 1000, '06:00:00', '18:00:00', 'everyone', 'The store is close to campus!', 'null'),
(22, 1, 464, 1000, '06:00:00', '18:00:00', 'everyone', 'So many items here!', 'null'),
(23, 1, 480, 1000, '06:00:00', '18:00:00', 'everyone', 'Hope the medicine can cure my cold', 'null'),
(24, 1, 380, 2000, '06:00:00', '18:00:00', 'everyone', 'So sweet Donuts', 'null'),
(25, 1, 161, 2000, '06:00:00', '18:00:00', 'everyone', 'Good food here!', 'null'),
(26, 1, 161, 2000, '06:00:00', '18:00:00', 'everyone', 'I love the store!', 'null'),
(27, 1, 718, 2000, '06:00:00', '18:00:00', 'everyone', 'We visited the World Trade Center area. Impressive architecture at the Oculus shopping centre. But very sobering to see the two pools where the two towers stood. The Freedom Tower stood proud next to ', 'null'),
(28, 1, 718, 2000, '06:00:00', '18:00:00', 'everyone', 'Celebrating the holiday season at the Oculus.', 'null'),
(29, 1, 718, 2000, '06:00:00', '18:00:00', 'everyone', 'Sometimes NYC seems magical', 'null'),
(30, 1, 718, 2000, '06:00:00', '18:00:00', 'everyone', 'Beautiful at night.  Plus the light show and the Christmas tree at Three World Trade.', 'null'),
(31, 1, 718, 2000, '06:00:00', '18:00:00', 'everyone', ' It\'s the holiday season once again.', 'null'),
(32, 1, 718, 2000, '06:00:00', '18:00:00', 'everyone', 'Westfield World Trade Center.', 'null'),
(33, 1, 718, 2000, '06:00:00', '18:00:00', 'everyone', 'I\'ve been to One, Three, Four and Seven WTC.', 'null'),
(34, 1, 718, 2000, '06:00:00', '18:00:00', 'everyone', 'Truly a moving experience.', 'null'),
(35, 1, 58, 3000, '06:00:00', '18:00:00', 'everyone', 'Shopping time!', 'null'),
(36, 1, 103, 2000, '06:00:00', '18:00:00', 'everyone', 'A wonderful movie', 'null'),
(37, 1, 130, 2000, '06:00:00', '18:00:00', 'everyone', 'So far so good....', 'null'),
(38, 1, 130, 2000, '06:00:00', '18:00:00', 'everyone', 'I\'m in my happy place!', 'null'),
(39, 1, 130, 2000, '06:00:00', '18:00:00', 'everyone', 'It?s lit! Bryant Park Holiday Tree is lit!.', 'null'),
(40, 1, 130, 2000, '06:00:00', '18:00:00', 'everyone', 'Brisk night - so worth making a stop to check out the tree and ice skaters in #BryantPark.', 'null'),
(41, 1, 130, 2000, '06:00:00', '18:00:00', 'everyone', 'Christmas light switch on', 'null'),
(42, 1, 130, 2000, '06:00:00', '18:00:00', 'everyone', 'Fun night at the Bryant Park tree lighting ', 'null'),
(43, 1, 130, 2000, '06:00:00', '18:00:00', 'everyone', 'Holidays Market at Bryant Park. ', 'null'),
(44, 1, 130, 2000, '06:00:00', '18:00:00', 'everyone', 'Happy Saturday everyone!', 'null'),
(45, 1, 266, 2000, '06:00:00', '18:00:00', 'everyone', 'Breakfast!!', 'null'),
(46, 1, 266, 2000, '06:00:00', '18:00:00', 'everyone', 'Yummy hot chocolate,2000,1\nIHOP is my happy place\"', 'null'),
(47, 1, 266, 2000, '06:00:00', '18:00:00', 'everyone', 'Enjoyed my first-ever senior discounted meal! Thanks ', 'null'),
(48, 1, 266, 2000, '06:00:00', '18:00:00', 'everyone', 'Pancakes before', 'null'),
(49, 1, 266, 2000, '06:00:00', '18:00:00', 'everyone', 'These are delicious! ', 'null'),
(50, 1, 266, 2000, '06:00:00', '18:00:00', 'everyone', 'Friendly pork', 'null');

-- --------------------------------------------------------

--
-- 資料表結構 `notetag`
--

CREATE TABLE `notetag` (
  `nid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `notetag`
--

INSERT INTO `notetag` (`nid`, `tid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(7, 1),
(8, 1),
(17, 3),
(18, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `tag`
--

CREATE TABLE `tag` (
  `tid` int(11) NOT NULL,
  `tname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `tag`
--

INSERT INTO `tag` (`tid`, `tname`) VALUES
(1, 'tourism'),
(2, 'shopping'),
(3, 'food'),
(4, 'transportation'),
(5, 'me');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `uemail` varchar(50) DEFAULT NULL,
  `upassword` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `upassword`) VALUES
(1, 'ben', 'ben123@gmail.com', 'ec701117e727aed7b289e02684de3f49'),
(2, 'andy', 'andy456@gmail.com', 'a2f2a36f9a88383e4ca8de2c87ff692f'),
(3, 'roy', 'roy789@gmail.com', '789roy'),
(4, 'a', 'a@gmail.com', '5af43c965f7e20cdb88cb42e07b5d814');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `apply`
--
ALTER TABLE `apply`
  ADD KEY `nid` (`nid`),
  ADD KEY `did` (`did`);

--
-- 資料表索引 `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`aid`);

--
-- 資料表索引 `comment`
--
ALTER TABLE `comment`
  ADD KEY `nid` (`nid`),
  ADD KEY `uid` (`uid`);

--
-- 資料表索引 `deal`
--
ALTER TABLE `deal`
  ADD PRIMARY KEY (`did`),
  ADD KEY `uid` (`uid`);

--
-- 資料表索引 `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `tid` (`tid`);

--
-- 資料表索引 `friendship`
--
ALTER TABLE `friendship`
  ADD KEY `uid1` (`uid1`),
  ADD KEY `uid2` (`uid2`);

--
-- 資料表索引 `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `aid` (`aid`);

--
-- 資料表索引 `notetag`
--
ALTER TABLE `notetag`
  ADD KEY `nid` (`nid`),
  ADD KEY `tid` (`tid`);

--
-- 資料表索引 `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tid`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `area`
--
ALTER TABLE `area`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;

--
-- 使用資料表 AUTO_INCREMENT `deal`
--
ALTER TABLE `deal`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `filter`
--
ALTER TABLE `filter`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表 AUTO_INCREMENT `note`
--
ALTER TABLE `note`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- 使用資料表 AUTO_INCREMENT `tag`
--
ALTER TABLE `tag`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表 AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `apply_ibfk_1` FOREIGN KEY (`nid`) REFERENCES `note` (`nid`) ON DELETE CASCADE,
  ADD CONSTRAINT `apply_ibfk_2` FOREIGN KEY (`did`) REFERENCES `deal` (`did`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`nid`) REFERENCES `note` (`nid`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `deal`
--
ALTER TABLE `deal`
  ADD CONSTRAINT `deal_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `filter`
--
ALTER TABLE `filter`
  ADD CONSTRAINT `filter_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `filter_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `tag` (`tid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `friendship`
--
ALTER TABLE `friendship`
  ADD CONSTRAINT `friendship_ibfk_1` FOREIGN KEY (`uid1`) REFERENCES `user` (`uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `friendship_ibfk_2` FOREIGN KEY (`uid2`) REFERENCES `user` (`uid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `area` (`aid`) ON DELETE CASCADE;

--
-- 資料表的 Constraints `notetag`
--
ALTER TABLE `notetag`
  ADD CONSTRAINT `notetag_ibfk_1` FOREIGN KEY (`nid`) REFERENCES `note` (`nid`) ON DELETE CASCADE,
  ADD CONSTRAINT `notetag_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `tag` (`tid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
