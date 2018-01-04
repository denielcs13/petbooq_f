-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2018 at 11:05 PM
-- Server version: 5.6.36-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `petbooq_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `addfriend`
--

CREATE TABLE IF NOT EXISTS `addfriend` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) NOT NULL,
  `child_id` int(10) NOT NULL,
  `status` enum('0','1','2','3','4') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=157 ;

--
-- Dumping data for table `addfriend`
--

INSERT INTO `addfriend` (`id`, `parent_id`, `child_id`, `status`) VALUES
(1, 7705898, 7705898, '2'),
(2, 2372791, 2372791, '2'),
(4, 2395741, 2395741, '2'),
(5, 4460738, 4460738, '2'),
(8, 4558759, 4460738, '4'),
(9, 6612052, 6612052, '2'),
(10, 9656796, 9656796, '2'),
(14, 6270311, 7705898, '4'),
(15, 5170933, 5170933, '2'),
(16, 7705898, 2395741, '1'),
(21, 4460738, 2372791, '1'),
(22, 1925873, 4460738, '4'),
(23, 5013361, 5013361, '2'),
(26, 2212013, 2372791, '4'),
(28, 2212013, 7705898, '4'),
(29, 1925873, 2212013, '4'),
(30, 1925873, 7705898, '4'),
(38, 7705898, 2372791, '1'),
(39, 7705898, 4460738, '1'),
(44, 9183749, 6331589, '4'),
(50, 8456389, 8456389, '2'),
(54, 9183749, 7705898, '4'),
(56, 6331589, 7705898, '4'),
(57, 9644365, 9644365, '2'),
(59, 9183749, 2212013, '4'),
(60, 2580830, 2580830, '2'),
(61, 7025846, 7025846, '2'),
(62, 6331589, 7025846, '4'),
(63, 2212013, 7025846, '4'),
(64, 1936465, 1936465, '2'),
(65, 9826366, 9826366, '2'),
(66, 5255976, 5255976, '2'),
(67, 3177307, 3177307, '2'),
(68, 1925873, 7025846, '4'),
(69, 9183749, 7025846, '4'),
(70, 5815213, 2660679, '4'),
(71, 5815213, 7025846, '4'),
(72, 6230533, 6230533, '2'),
(73, 7025846, 2580830, '1'),
(74, 7025846, 7705898, '1'),
(75, 9183749, 1925873, '4'),
(76, 6331589, 1925873, '4'),
(77, 2580830, 7705898, '1'),
(78, 9422157, 9422157, '2'),
(79, 2784077, 2784077, '2'),
(80, 3503364, 3503364, '2'),
(81, 1928902, 1928902, '2'),
(82, 1928902, 7705898, '1'),
(83, 1928902, 2580830, '1'),
(84, 7101212, 7101212, '2'),
(85, 1928902, 7101212, '1'),
(86, 7101212, 2580830, '1'),
(87, 6331589, 4292983, '4'),
(88, 7646850, 7646850, '2'),
(89, 6331589, 2395741, '4'),
(90, 8961011, 8961011, '2'),
(91, 2660679, 7705898, '4'),
(93, 7705898, 1925873, '0'),
(94, 2660679, 4460738, '4'),
(95, 7705898, 7101212, '0'),
(96, 2395741, 1928902, '0'),
(99, 7025846, 7025846, '0'),
(100, 7705898, 7705898, '0'),
(101, 7705898, 7705898, '0'),
(103, 6230533, 4460738, '1'),
(104, 6912754, 6912754, '2'),
(105, 6230533, 7705898, '1'),
(107, 7378268, 7378268, '2'),
(110, 7378268, 2395741, '1'),
(111, 3312322, 3312322, '2'),
(112, 3312322, 5013361, '1'),
(115, 7811366, 5013361, '4'),
(116, 7811366, 1128770, '4'),
(121, 1925873, 2660679, '4'),
(124, 7861609, 7861609, '2'),
(125, 8584153, 8584153, '2'),
(126, 8743989, 8743989, '2'),
(127, 2378571, 2378571, '2'),
(128, 8351695, 8351695, '2'),
(129, 3009753, 3009753, '2'),
(130, 6861755, 6861755, '2'),
(131, 8968168, 8968168, '2'),
(132, 8009563, 8009563, '2'),
(133, 8918319, 8918319, '2'),
(134, 7096470, 7096470, '2'),
(135, 6915518, 6915518, '2'),
(136, 5445207, 5445207, '2'),
(137, 9390708, 9390708, '2'),
(138, 9183749, 2660679, '4'),
(139, 9572256, 9572256, '2'),
(140, 3396801, 3396801, '2'),
(141, 7139126, 7139126, '2'),
(142, 5685284, 5685284, '2'),
(143, 5685284, 3312322, '1'),
(144, 8326214, 8326214, '2'),
(145, 2170131, 2170131, '2'),
(146, 2602490, 2602490, '2'),
(147, 9754021, 2660679, '4'),
(148, 8645510, 8645510, '2'),
(149, 8645510, 5013361, '1'),
(150, 8645510, 3312322, '0'),
(151, 8645510, 6230533, '1'),
(152, 8645510, 7646850, '0'),
(153, 9754021, 1925873, '4'),
(154, 2660679, 1925873, '4'),
(155, 1128770, 2660679, '4'),
(156, 4365404, 2660679, '4');

-- --------------------------------------------------------

--
-- Table structure for table `addfriendold`
--

CREATE TABLE IF NOT EXISTS `addfriendold` (
  `parent_id` int(10) NOT NULL,
  `child_id` int(10) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addfriendold`
--

INSERT INTO `addfriendold` (`parent_id`, `child_id`, `status`) VALUES
(1177777, 1177777, '2'),
(1177777, 1155933, '1'),
(1177777, 1114028, '1'),
(1177777, 1116427, '1'),
(1177777, 1143635, '1'),
(1143635, 1143635, '2'),
(1143635, 1128315, '1'),
(1143635, 1127711, '1'),
(1155933, 1155933, '2'),
(1155933, 1119053, '1'),
(1155933, 1126918, '1'),
(1155933, 1123484, '1'),
(1155933, 1125695, '1'),
(1114028, 1114028, '2'),
(1114028, 1127176, '1'),
(1114028, 1128486, '1'),
(1114028, 1124540, '1'),
(1114028, 1129250, '1'),
(1116427, 1116427, '2'),
(1116427, 1132100, '1'),
(1116427, 1133029, '1'),
(1116427, 1134226, '1'),
(1116427, 1134790, '1'),
(1143635, 1143879, '1'),
(1143635, 1145906, '1'),
(1119053, 1155933, '1'),
(1155933, 1114028, '0'),
(1155933, 1116427, '0'),
(1155933, 1124540, '0'),
(1155933, 1127176, '0'),
(1155933, 1128315, '0'),
(1155933, 1132100, '0'),
(1155933, 1133029, '0'),
(1155933, 1129250, '0'),
(1155933, 1134226, '0'),
(1155933, 1145906, '0'),
(1155933, 1128486, '0'),
(1155933, 1143635, '0'),
(1155933, 1134790, '0'),
(1155933, 1177777, '0'),
(1155933, 1143879, '0'),
(1119053, 1119053, '0');

-- --------------------------------------------------------

--
-- Table structure for table `addfriends`
--

CREATE TABLE IF NOT EXISTS `addfriends` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(100) NOT NULL,
  `child_id` int(100) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `adopt_pet`
--

CREATE TABLE IF NOT EXISTS `adopt_pet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `adopt_pet_unique_id` int(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `breed` varchar(100) NOT NULL,
  `pet_name_adopt` varchar(100) NOT NULL,
  `pet_photo` varchar(200) NOT NULL,
  `bg_image` varchar(200) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `about_pet` varchar(1000) NOT NULL,
  `status` int(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `createdOn` datetime NOT NULL,
  `updateOn` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `adopt_pet`
--

INSERT INTO `adopt_pet` (`id`, `adopt_pet_unique_id`, `location`, `type`, `breed`, `pet_name_adopt`, `pet_photo`, `bg_image`, `sex`, `age`, `email`, `about_pet`, `status`, `country`, `state`, `createdOn`, `updateOn`) VALUES
(1, 7705898, 'Kishan Garh Gaon', 'Dog', 'Gentle Giants', 'Charlie', '7705898/Adopt/dog-hovawart-black-pet-89775.jpeg', '', 'male', '4', 'ask04@yahoo.com', 'In fact, many of the most popular dog names in 2015 closely tracked the most popular baby names', 1, 'India', 'New Delhi', '2017-11-22 23:20:53', '0000-00-00 00:00:00'),
(2, 2395741, 'b-9, vasant kunj, new delhi', 'Dog', '', 'new', '', '', 'male', '15 days', 'sarojianand16@gmail.com', 'cute indi', 1, 'India', '', '2017-11-27 05:23:46', '0000-00-00 00:00:00'),
(3, 2395741, '4th avenue', 'Dog', 'Gentle Giants', 'Johnas', '2395741/Adopt/nature-animal-dog-pet.jpg', '', 'male', '2', 'alexjohnsa@gmail.com', 'These beautiful dogs are a unique crossbreed of blue merle shepherds imported from England', 1, 'India', 'Kerala', '2017-11-27 22:23:47', '0000-00-00 00:00:00'),
(4, 2395741, 'Mascow', 'Cat', 'Poodle', 'Mini', '2395741/Adopt/pexels-photo-127028.jpeg', '', 'female', '2', 'alexjohn123@gmail.com', 'These beautiful dogs are a unique crossbreed of blue merle shepherds imported from England and the native Australian dingo. High energy and hard working', 1, 'India', 'Chhattisgarh', '2017-11-27 22:56:47', '0000-00-00 00:00:00'),
(5, 2395741, '4th avenue', 'Cat', 'Shetland sheepdog', 'Tangoas', '2395741/Adopt/pexels-photo-177809.jpeg', '', 'female', '2', 'alexjoh23423n@gmail.com', 'These beautiful dogs are a unique crossbreed of blue merle shepherds imported from England and the native Australian dingo. High energy and hard working', 1, 'India', 'Haryana', '2017-11-27 23:27:44', '0000-00-00 00:00:00'),
(6, 2395741, '4th avenue', 'Cat', 'Shetland sheepdog', 'Tangoas', '2395741/Adopt/pexels-photo-177809.jpeg', '', 'female', '2', 'alexjoh23423n@gmail.com', 'These beautiful dogs are a unique crossbreed of blue merle shepherds imported from England and the native Australian dingo. High energy and hard working', 1, 'India', 'Haryana', '2017-11-27 23:27:56', '0000-00-00 00:00:00'),
(9, 1925873, 'Vasant kunj D14', 'Dog', 'Poodle', 'Frankie', '1925873/Adopt/the-name-game-social.jpg', '', 'male', '10', 'lahegapu@crymail2.com', 'Most of us put a lot of thought into naming our new dog or puppy. We realize our dog''s name will speak volumes about our own personality, insights', 1, 'India', 'New Delhi', '2017-12-01 02:18:52', '0000-00-00 00:00:00'),
(8, 2660679, 'Vasant kunj D14', 'Dog', 'Poodle', 'Apollo', '2660679/Adopt/french-bulldog-summer-smile-joy-160846.jpeg', '', 'male', '10', 'ask04@yahoo.com', 'Throughout history, animals have played a key role in human life. People have come to depend on animals for food, clothing, and transportation.', 1, 'India', 'New Delhi', '2017-12-01 01:51:18', '0000-00-00 00:00:00'),
(10, 3312322, 'C-107 Palam Vihar Gurgaon', 'Dog', '', 'Dollar', '3312322/Adopt/photo-1466921583968-f07aa80c526e.jpg', '', 'male', '5', 'noidahod@gmaill.com', 'Unique Breed', 1, 'India', 'Haryana', '2017-12-18 05:35:01', '0000-00-00 00:00:00'),
(56, 4460738, 'vasant kunj', 'Cat', 'Poodle', 'nony', '4460738/Adopt/cat-silhouette-cats-silhouette-cat-s-eyes.jpg', '', 'male', '7', 'mudit.pant11@gmail.com', 'sad', 1, 'India', 'New Delhi', '2017-12-18 23:50:47', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE IF NOT EXISTS `ads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) NOT NULL,
  `user_id_fk` int(10) NOT NULL,
  `banner_image` varchar(100) NOT NULL,
  `heading` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `link` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `stauts` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `client_name`, `user_id_fk`, `banner_image`, `heading`, `description`, `link`, `country`, `state`, `stauts`) VALUES
(5, '1', 7705898, 'ads/5a16735bc805c.jpg', 'Ora Care Smile Dental ', 'Oraa CareÂ Smile DentalÂ Clinic, Dwarka provides the best Prosthodontic, Endodontic, Orthodontic and all treatments uses advanced dental techniques and\r\n', 'http://www.drraodentalclinic.com', 'India', 'Jammu and Kashmir', 1),
(6, '2', 7705898, 'ads/5a1673757bda2.jpg', 'Practo: Your home for health', 'Find & book appointments with doctors, diagnostic labs. Ask free health questions to doctors or get free tips from health experts.\r\n', 'https://www.practo.com', 'India', 'New Delhi', 1),
(7, '3', 7705898, 'ads/5a16739a87ad6.jpg', 'Lybrate: Online Doctor', 'Find best doctors in India and consult online with them for any kind of medical assistance. Ask health queries, book appointment and get useful health tips\r\n', 'https://www.lybrate.com', 'India', 'Sikkim', 1),
(8, '5', 7705898, 'ads/5a1673e1a364b.jpg', 'Dog & Pet Accessories Delhi', 'Being the best dog shop in Delhi, Red Paws Pet Spa & Shop also offers dog products and pet accessories like; food for dog, dog collars and leashes, dogÂ \r\n', 'https://www.redpawsonline.com/pet_shop.htm', 'India', 'Uttaranchal', 1),
(9, '11', 7705898, 'ads/5a1674b4c6c5a.jpg', ' Used cars in Delhi', 'Currently, 5364Â Used carsÂ are on sale in Delhi starting at Rs 1.35 Lakh. Check out the largest stock of certified, good condition Second HandÂ CarsÂ in all over ... CarDekho.com - Best place tobuyÂ New andÂ Used CarsÂ in India.\r\n', 'https://www.cardekho.com/used-cars+in+delhi', 'India', 'Punjab', 1),
(10, '12', 2395741, 'ads/5a1674d18db24.jpg', 'Used Cars in New Delhi', 'Used CarsÂ in New Delhi at CarTrade. Find certified and good conditionÂ used carsÂ in New Delhi with great deals.\r\n', 'https://www.cartrade.com/buy-used-cars/new-delhi/c', 'India', 'Sikkim', 1),
(11, '14', 2395741, 'ads/5a1674ffb7b51.jpg', 'Buy Used Car Online', 'BuyÂ aÂ used carÂ online at CarnationÂ Auto, India s largest integrated multi brandÂ autoÂ solutions network. CarnationÂ AutoÂ offers allÂ used carsÂ models at the best\r\n', 'https://www.carnation.in/used-cars/', 'India', 'Tripura', 1),
(12, '15', 2395741, 'ads/5a1675180d444.jpg', 'Dentist on Call', 'Get all dental treatments at your doorsteps at affordable prices. Denist On Call\r\n', 'http://www.dialdent.in', 'India', 'Haryana', 1),
(13, '17', 2395741, 'ads/5a167552ba9b2.jpg', 'Eye Specialist', 'EyeÂ and GlaucomaÂ SpecialistÂ for LaserÂ EyeÂ Surgery, Cataract Surgery, Spectacles Removal Surgery, LasikÂ EyeÂ Surgery, Corneal Surgery\r\n', 'http://www.completeeyecare.in/', 'India', 'Sikkim', 1),
(14, '18', 5013361, 'ads/5a167569360a0.jpg', 'Dr Shroff Eye Centre', 'Shroff Eye Centre is a super specialtyÂ eye careÂ facility offering world class ... Delhi including South Delhi, Central Delhi,Â GurgaonÂ and at Kaushambi Ghaziabad.\r\n', 'http://www.shroffeyecentre.com', 'India', 'New Delhi', 1),
(15, '19', 5013361, 'ads/5a1675827f4c4.jpg', 'Big Dance Centre', 'Big Dance Centre offers bestÂ dance classesÂ inÂ Delhi. It has the vision of bringing together the best names in the industry, accomplished teachers\r\n', 'http://www.bigdancecentre.com/', 'Iceland', 'Myrasysla', 1),
(16, '20', 5013361, 'ads/5a16759a7ab6d.jpg', 'BEST DANCE ACADEMY ', 'Zenith is the bestÂ dance academyÂ inÂ DelhiÂ and Mumbai with above 15 years of experience and 10000 of Shows across the globe.\r\n', 'http://zenithdancetroupe.com/academy/index.html', 'India', 'Jammu and Kashmir', 1),
(17, '21', 2212013, 'ads/5a1675b0e61f0.jpg', 'Sanjay Gandhi Animal Care Centre', 'We have many animals at the Sanjay GandhiÂ AnimalÂ Care Centre up for adoption from puppies to ... From walkingÂ dogs, feeding animals Read More.. FundraiseÂ ..\r\n', 'http://www.sanjaygandhianimalcarecentre.org/', 'India', 'Haryana', 1),
(18, '22', 2212013, 'ads/5a1675c6923e8.jpg', 'Veterinary HospitalÂ ', 'DoesÂ veterinary hospitalÂ function in the night? OPD Services are from 08:00AM to 08.00 PM on working days and services are not available in the night.\r\n', 'https://www.ndmc.gov.in/faq/veterinary_faqs.aspx', 'India', 'Karnataka', 1),
(19, '23', 2212013, 'ads/5a1675dd8d800.jpg', 'Online groceryÂ store', 'Online groceryÂ store of India.Â Online SupermarketÂ includes online vegetable store, food shopping online and groceries online.Â Online GroceryÂ Shopping nowÂ ...\r\n', 'https://www.bigbasket.com/', 'India', 'Kerala', 1),
(20, '24', 4460738, 'ads/5a1675efc3fa1.jpg', 'BazaarCart', 'Save upto 70% while doingÂ online groceryÂ shopping & Other daily needs from your one stopÂ online groceryÂ store in Delhi Noida Ghaziabad.âœ“ Free ShippingÂ ...\r\n', 'https://www.bazaarcart.com/', 'India', 'Karnataka', 1),
(21, '25', 4460738, 'ads/5a1676033eef2.jpg', 'For Happy Thriving Pets', 'MyPet offers pet owners the ultimate online resource for pet care, pet health information and pet health solutions and services.\r\n', 'http;//www.mypet.com/', 'India', 'Dadra and Nagar Haveli', 1),
(22, '26', 4460738, 'ads/5a16761893479.jpg', 'Find a vet - Petplan', 'Find Vets and Animal Hospitals Near Me. search by ZIP code', 'https://www.gopetplan.com', 'India', 'Karnataka', 1),
(23, '27', 4460738, 'ads/5a16762cecc34.jpg', 'Local Vets Near You', 'Find a vet in your local area. Enter your postcode in to see available vets\r\n', 'http://www.animalemergencyservice.com.au/find-a-local-vet/', 'India', 'Chandigarh', 1),
(24, '28', 5170933, 'ads/5a167642cf853.jpg', 'Find a local vet', 'Search for your local vets, animal clinics and veterinary hospitals, read veterinary advice and find information & offers on pet vaccinations.\r\n', 'http://www.mypetonline.co.uk/vets', 'India', 'Gujarat', 1),
(25, '30', 5170933, 'ads/5a167683371cd.jpg', 'Mission Veterinary Hospital', 'The internet is a wealth of information â€“ so much so that sometimes locating quality websites can be challenging.\r\n', 'http://vetclinicmission.com/', 'India', 'New Delhi', 1),
(26, '31', 5170933, 'ads/5a18034a73469.jpg', 'Mission Veterinary Hospital', 'The internet is a wealth of information â€“ so much so that sometimes locating quality websites can be challenging.\r\n', 'http://vetclinicmission.com/', 'India', 'Jharkhand', 1),
(29, 'tes', 7705898, 'ads/5a2796118ff0e.jpg', 'VETERINARY HOSPITAL ', 'Does veterinary hospital function in the night? OPD Services are from 08:00AM to 08.00 PM on working', 'https://petbooqtesting.com', 'India', 'New Delhi', 1),
(30, 'Rocky', 7705898, 'ads/5a2797c412ce2.jpg', 'LYBRATE: ONLINE DOCTOR', 'Find best doctors in India and consult online with them for any kind of medical assistance. Ask heal', 'https://petbooqtesting.com', 'India', 'New Delhi', 1),
(31, 'Charlie', 7025846, 'ads/5a28e2672de58.jpg', 'Banfield Pet Hospital', 'In 1955, veterinarian Warren J. Wegert had a vision to provide high-quality veterinary medicine in Portland, Oregon.', 'https://www.banfield.com/', 'India', 'New Delhi', 1),
(35, 'holiday gifts shop', 6331589, 'ads/5a2920c3855a3.jpg', 'Holiday Gifts', 'gift shop for pets', 'https://holidaygiftshop.com', 'India', 'New Delhi', 1),
(36, 'Jacob', 1925873, 'ads/5a292266ade93.jpg', 'Dog Boarding & Cattery in Delhi', 'Grooming requires special attention depending upon the breed of the pet and the season. Also on our panel are renowned vets of Delhi so vet services provided for your pet during their boarding will be exemplary.', 'https://www.canineelite.com/', 'India', 'New Delhi', 1),
(40, 'Hmedia', 4460738, 'ads/5a38ba10c5188.jpeg', 'My AD 1', 'dadadasd', 'https://www.petbooq.com', 'India', 'New Delhi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `article_id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `article_like`
--

CREATE TABLE IF NOT EXISTS `article_like` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(100) NOT NULL,
  `article` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bgimage`
--

CREATE TABLE IF NOT EXISTS `bgimage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pet_unique_id` int(10) NOT NULL,
  `bg_image` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE IF NOT EXISTS `business` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `business_uniqueid` int(100) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `business_type` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `bg_image` varchar(255) NOT NULL,
  `profile_image` varchar(200) NOT NULL,
  `default_type` varchar(100) NOT NULL,
  `craetedOn` datetime NOT NULL,
  `updateOn` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `business_uniqueid` (`business_uniqueid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `business_uniqueid`, `status`, `business_type`, `description`, `website`, `email`, `password`, `company_name`, `country`, `phone`, `bg_image`, `profile_image`, `default_type`, `craetedOn`, `updateOn`) VALUES
(1, 1925873, '1', 'Fashion', 'Pet-owners naturally conjugate- whether it is because of their daily walks..', 'www.companyjob.com', 'akanshacharan@hays.ml', 'e10adc3949ba59abbe56e057f20f883e', 'Tesla', 'India', '2147483647', '1925873/bgImage/user_image10.jpg', '1925873/profile_pic/17.jpg', 'Business', '0000-00-00 00:00:00', '2017-12-11 04:38:09'),
(2, 9754021, '1', 'Pet Food', 'ave is a form to update meeting places with certain data.', 'www.companyjob.com', 'shashikantkumar01@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Dolce and Gabbana', 'Albania', '91', '9754021/bgImage/cat-animal-cat-portrait-mackerel.jpg', '9754021/profile_pic/french-bulldog-summer-smile-joy-160846.jpeg', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3209508, '1', 'Accessories', '$phone_number', 'www.companyjob.com', 'shashikantkuasdmar01@gmail.com', '5546a17c03441cb9cbad4e0be31a0a90', 'martini', 'Bangladesh', '1246-8484848484', '', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 6270311, '1', 'Veteran', 'setting the useCapture parameter', 'www.companyjob.com', 'alexjohn@gmail.com', '14e1b600b1fd579f47433b88e8d85291', 'Johnny', 'Azerbaijan', '91-8484848484', '', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2658901, '1', 'Fashion', 'setting the useCapture parameter', 'www.compaasdasdnyjob.com', 'albertjohnAS@gmail.com', '14e1b600b1fd579f47433b88e8d85291', 'Dolce ', 'Austria', '91-9878987898', '', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 4967682, '1', 'Pet Paathology Lab', 'BD', 'www.bd.com', 'mudit.pant011@mail.com', '6cfdca6f9633968c72a2a6e0fe2756ca', 'MD', 'Iceland', '91-8586979990', '4967682/bgImage/nature-animal-dog-pet.jpg', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 9839944, '1', 'Other', 'Johnny alean marks goes here for you', 'http://alexjohn.com', 'rikomi@ether123.net', '14e1b600b1fd579f47433b88e8d85291', 'Marks', 'Austria', '91-9878987898', '', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 3932061, '1', 'Pet Traders', 'Hello john', 'www.companyjob.com', 'alexjohn987@gmail.com', '14e1b600b1fd579f47433b88e8d85291', 'martinios fetch', 'Wallis and Futana Islands', '91-8484848484', '', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 4980256, '1', 'Accessories', 'Description goes here for you', 'www.companyjob.com', 'alexjojo@gmail.com', '14e1b600b1fd579f47433b88e8d85291', 'Johnny matt', 'Bahrain', '375-8798789878', '', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 6489343, '1', 'Other', 'Description details goes here', 'www.companyjob.com', 'johnyenglish@gmail.com', '14e1b600b1fd579f47433b88e8d85291', 'Max Mart', 'India', '91-8475321565', '', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 2274159, '1', 'Other', 'Details goes some where', 'http://alexwerwerwerjohn.com', 'rikomi121@ether123.net', '14e1b600b1fd579f47433b88e8d85291', 'Manges', 'Armenia', '91-4242342', '', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 4609971, '1', 'Pet Paathology Lab', 'Description', 'www.compaasdasdnyjob.com', 'sleyteemitali@emailr.win', '14e1b600b1fd579f47433b88e8d85291', 'Marks', 'Bangladesh', '91-9878987898', '', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 4593368, '1', 'Mamels', 'description goes here for you', 'www.companyjob.com', 'juyuyuwani@roys.ml', '14e1b600b1fd579f47433b88e8d85291', 'Dol', 'Bangladesh', '91-9878987898', '4593368/bgImage/pexels-photo-236606.jpeg', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 6331589, '1', 'Accessories', 'accessories and all', 'gift shop.com', 'josuvos@muimail.com', 'be7149a3778d031f60337051f3d35060', 'holiday gift shop', 'India', '91-99999999', '6331589/bgImage/lovely_christmas_cat_rabbit_dog_highdefinition_picture_168916.jpg', '6331589/profile_pic/christmas_dog_highdefinition_picture_168935.jpg', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 5815213, '1', 'Breeders', 'A recent study by an international team of researchers has settled an age-old argument between dog and cat enthusiasts.', 'http://www.petbusiness.com/', 'pacugi@crymail2.com', '037e975f6e68c58524ba43d12a29a278', 'Pet Business Magazine', 'India', '91-7800987210', '', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 1665774, '1', 'Pet Traders', 'Come on down for all of pet supplies and accessories in Winnipeg whether it be reptile, fish, dog, cat, rodent or whatever pet you love. We probably h', 'petbooq.com', 'sagar.hgtv@gmail.com', '63ee451939ed580ef3c4b6f0109d1fd0', 'pet', 'Australia', '973-5454656', '', '', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 3078323, '1', 'Accessories', 'So I placed an order for a Furminator, some pedigree and a bunch of chew treats - must say, excellent service and prompt delivery. Goods were priced w', 'http://pet-club-india.business.site/', 'ashok.petbooq@gmail.com', '1dcd1332b4771735fbbac13b184b3bea', 'Pet Club India', 'India', '91-8467090963', '3078323/profile_pic/bulldog-puppy-dog-pet.jpg', '3078323/profile_pic/dog-training-joy-fun-159692.jpeg', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 7811366, '1', 'Veteran', 'best vet hospital in India', 'www.societyscars.com', 'coffee.mohit@gmail.com', '555b64f9ecb74ab9c2b4213b33c34ce9', 'Pet Hospital', 'India', '91-9716680125', '7811366/profile_pic/Tub-Icon-Reflect.png', '7811366/profile_pic/best friens.jpg', 'Business', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `business_like`
--

CREATE TABLE IF NOT EXISTS `business_like` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `group_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `status` enum('0','1') DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `business_like`
--

INSERT INTO `business_like` (`id`, `group_id`, `user_id`, `status`) VALUES
(4, 6270311, 7705898, '1'),
(7, 1925873, 4460738, '1'),
(8, 1925873, 2212013, '1'),
(9, 1925873, 7705898, '1'),
(12, 6331589, 7705898, '1'),
(13, 6331589, 7025846, '1'),
(14, 1925873, 7025846, '1'),
(15, 5815213, 2660679, '1'),
(16, 5815213, 7025846, '1'),
(17, 6331589, 1925873, '1'),
(18, 6331589, 4292983, '1'),
(19, 6331589, 2395741, '1'),
(20, 7811366, 5013361, '1'),
(21, 7811366, 1128770, '1'),
(25, 1925873, 2660679, '1'),
(28, 9754021, 1925873, '1'),
(27, 9754021, 2660679, '1');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(100) NOT NULL,
  `commenter_unique_id` int(100) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `notified` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=417 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `commenter_unique_id`, `comment`, `time`, `notified`) VALUES
(1, 2, 2372791, 'Hello ....', '0000-00-00 00:00:00', '0'),
(2, 2, 2372791, 'John', '0000-00-00 00:00:00', '0'),
(3, 3, 2372791, 'Hiii....', '0000-00-00 00:00:00', '0'),
(4, 7, 2372791, 'cute...', '0000-00-00 00:00:00', '0'),
(5, 4, 7705898, 'good', '0000-00-00 00:00:00', '0'),
(6, 5, 7705898, 'acs', '0000-00-00 00:00:00', '0'),
(7, 9, 7705898, 'as', '0000-00-00 00:00:00', '0'),
(8, 9, 7705898, 'afsd', '0000-00-00 00:00:00', '0'),
(9, 9, 7705898, 'dsa', '0000-00-00 00:00:00', '0'),
(10, 9, 7705898, 'dsa2222', '0000-00-00 00:00:00', '0'),
(11, 9, 7705898, 'sad2222222222', '0000-00-00 00:00:00', '0'),
(12, 10, 7705898, 'ads222', '0000-00-00 00:00:00', '0'),
(13, 4, 2372791, 'sda21', '0000-00-00 00:00:00', '0'),
(14, 4, 2372791, 'sa21111', '0000-00-00 00:00:00', '0'),
(15, 11, 2372791, 'sda2111111111', '0000-00-00 00:00:00', '0'),
(16, 6, 2372791, 'sad1`11', '0000-00-00 00:00:00', '0'),
(17, 9, 2372791, '211111111as', '0000-00-00 00:00:00', '0'),
(18, 9, 2372791, 'qwas21`1', '0000-00-00 00:00:00', '0'),
(19, 12, 1925873, 'Cute puppy....', '0000-00-00 00:00:00', '0'),
(20, 13, 1925873, 'asd12', '0000-00-00 00:00:00', '0'),
(21, 13, 1925873, 'sad', '0000-00-00 00:00:00', '0'),
(22, 13, 1925873, 'fdrescaw', '0000-00-00 00:00:00', '0'),
(23, 13, 1925873, '54', '0000-00-00 00:00:00', '0'),
(24, 13, 1925873, 'asd', '0000-00-00 00:00:00', '0'),
(25, 13, 1925873, 'sd', '0000-00-00 00:00:00', '0'),
(26, 13, 1925873, '23', '0000-00-00 00:00:00', '0'),
(27, 12, 1925873, 'dsa2', '0000-00-00 00:00:00', '0'),
(28, 12, 1925873, 'sa', '0000-00-00 00:00:00', '0'),
(31, 4, 2372791, 'sdf', '0000-00-00 00:00:00', '0'),
(32, 4, 2372791, 'sdf', '0000-00-00 00:00:00', '0'),
(33, 4, 2372791, 'sdf', '0000-00-00 00:00:00', '0'),
(34, 4, 2372791, 'sdfsd', '0000-00-00 00:00:00', '0'),
(35, 4, 2372791, 'sdfsdf', '0000-00-00 00:00:00', '0'),
(36, 14, 4558759, 'fdgdgdf', '0000-00-00 00:00:00', '0'),
(37, 13, 1925873, 'asqqw', '0000-00-00 00:00:00', '0'),
(38, 16, 4460738, 'sdad3', '0000-00-00 00:00:00', '0'),
(39, 16, 4460738, '23', '0000-00-00 00:00:00', '0'),
(40, 16, 4460738, '45', '0000-00-00 00:00:00', '0'),
(41, 16, 7705898, 'ascds3', '0000-00-00 00:00:00', '0'),
(42, 16, 7705898, '45666', '0000-00-00 00:00:00', '0'),
(43, 16, 7705898, '8777676', '0000-00-00 00:00:00', '0'),
(44, 16, 7705898, '344343', '0000-00-00 00:00:00', '1'),
(45, 16, 4460738, 'dfs33', '0000-00-00 00:00:00', '0'),
(46, 15, 4460738, 'sdf3', '0000-00-00 00:00:00', '0'),
(47, 10, 4460738, 'fsd4', '0000-00-00 00:00:00', '0'),
(48, 10, 4460738, 'fd232', '0000-00-00 00:00:00', '0'),
(49, 16, 4460738, 'fd3', '0000-00-00 00:00:00', '0'),
(50, 13, 1925873, 'dsa232', '0000-00-00 00:00:00', '0'),
(51, 17, 1925873, 'adf23', '0000-00-00 00:00:00', '0'),
(52, 17, 1925873, 'dfs2', '0000-00-00 00:00:00', '0'),
(53, 17, 1925873, 'fds223', '0000-00-00 00:00:00', '0'),
(54, 17, 1925873, 'afdc2', '0000-00-00 00:00:00', '0'),
(55, 17, 1925873, 'dsf3', '0000-00-00 00:00:00', '0'),
(61, 17, 1925873, 'sadf2', '0000-00-00 00:00:00', '0'),
(62, 18, 1925873, 'ef3', '0000-00-00 00:00:00', '0'),
(63, 18, 1925873, 'ds', '0000-00-00 00:00:00', '0'),
(64, 19, 4558759, 'dfsa2', '0000-00-00 00:00:00', '0'),
(65, 19, 4558759, 'dfs23', '0000-00-00 00:00:00', '0'),
(66, 20, 4558759, 'fgsdg4', '0000-00-00 00:00:00', '0'),
(67, 20, 4558759, 'ds', '0000-00-00 00:00:00', '0'),
(68, 20, 4558759, 'sadad333', '0000-00-00 00:00:00', '0'),
(69, 20, 4460738, 'asdsad22', '0000-00-00 00:00:00', '0'),
(70, 20, 4460738, 'sadasd2', '0000-00-00 00:00:00', '0'),
(71, 20, 4460738, '6555555', '0000-00-00 00:00:00', '0'),
(72, 20, 4460738, '8777777777', '0000-00-00 00:00:00', '0'),
(73, 20, 4460738, 'kjl8888', '0000-00-00 00:00:00', '0'),
(74, 20, 4460738, 'zdzdz44', '0000-00-00 00:00:00', '0'),
(75, 20, 4460738, 'sds54', '0000-00-00 00:00:00', '0'),
(76, 25, 2372791, 'wao ', '0000-00-00 00:00:00', '0'),
(77, 25, 2372791, 'good', '0000-00-00 00:00:00', '0'),
(78, 25, 2372791, 'nice', '0000-00-00 00:00:00', '0'),
(79, 25, 2372791, 'awesome', '0000-00-00 00:00:00', '0'),
(80, 26, 2660679, 'ewfewrwqeqegre', '0000-00-00 00:00:00', '0'),
(81, 27, 2660679, 'as23', '0000-00-00 00:00:00', '0'),
(82, 20, 4460738, 'as32', '0000-00-00 00:00:00', '0'),
(83, 31, 4967682, 'cute...', '0000-00-00 00:00:00', '0'),
(84, 27, 2660679, 'ASSSSS2', '0000-00-00 00:00:00', '0'),
(85, 32, 4460738, 'xsasadx', '0000-00-00 00:00:00', '0'),
(86, 20, 4460738, 'fvt54', '0000-00-00 00:00:00', '0'),
(87, 32, 4460738, 'asas', '0000-00-00 00:00:00', '0'),
(88, 32, 4460738, 'fgfg56', '0000-00-00 00:00:00', '0'),
(89, 27, 2660679, 'sds3', '0000-00-00 00:00:00', '0'),
(90, 40, 4460738, 'sa', '0000-00-00 00:00:00', '0'),
(91, 41, 1925873, 'ghf', '0000-00-00 00:00:00', '0'),
(92, 41, 1925873, 'h', '0000-00-00 00:00:00', '0'),
(93, 41, 1925873, 'fghfhfgh', '0000-00-00 00:00:00', '0'),
(94, 24, 2372791, 'fdgf', '0000-00-00 00:00:00', '0'),
(96, 65, 1925873, 'szcff', '0000-00-00 00:00:00', '0'),
(97, 65, 1925873, 'dsfvsdfg', '0000-00-00 00:00:00', '0'),
(98, 50, 4460738, 'asddsa32', '0000-00-00 00:00:00', '0'),
(99, 50, 4460738, 'asdas2333', '0000-00-00 00:00:00', '0'),
(100, 50, 4460738, 'sfdedsf344', '0000-00-00 00:00:00', '0'),
(101, 50, 4460738, '324', '0000-00-00 00:00:00', '0'),
(102, 50, 4460738, 'dccxcc', '0000-00-00 00:00:00', '0'),
(103, 50, 4460738, 'sa21', '0000-00-00 00:00:00', '0'),
(104, 50, 4460738, 'as', '0000-00-00 00:00:00', '0'),
(105, 32, 4460738, 'zc2', '0000-00-00 00:00:00', '0'),
(106, 32, 4460738, 'dfcvv', '0000-00-00 00:00:00', '0'),
(107, 10, 2372791, 'fd', '0000-00-00 00:00:00', '0'),
(108, 65, 1925873, 'asdasd', '0000-00-00 00:00:00', '0'),
(109, 55, 1925873, 'sadfaf2', '0000-00-00 00:00:00', '0'),
(110, 70, 1925873, 'asdasd', '0000-00-00 00:00:00', '0'),
(111, 70, 1925873, 'asd21', '0000-00-00 00:00:00', '0'),
(112, 70, 1925873, 'asd1', '0000-00-00 00:00:00', '0'),
(113, 55, 1925873, 'asdfasf22', '0000-00-00 00:00:00', '0'),
(114, 55, 1925873, 'dsafef222', '0000-00-00 00:00:00', '0'),
(115, 71, 1925873, 'sad222', '0000-00-00 00:00:00', '0'),
(116, 71, 1925873, 'sacdf22', '0000-00-00 00:00:00', '0'),
(117, 47, 2660679, 'asd222', '0000-00-00 00:00:00', '0'),
(118, 47, 2660679, 'ad222', '0000-00-00 00:00:00', '0'),
(119, 47, 2660679, 'asd2', '0000-00-00 00:00:00', '0'),
(122, 77, 2660679, 'fdgfgfd', '0000-00-00 00:00:00', '0'),
(123, 76, 2660679, 'gffgfdhdh', '0000-00-00 00:00:00', '0'),
(124, 77, 2660679, 'ghghghf', '0000-00-00 00:00:00', '0'),
(125, 77, 2660679, 'hgfhgfhghghghfghgfhgfhgf', '0000-00-00 00:00:00', '0'),
(126, 78, 1925873, 'drrt', '0000-00-00 00:00:00', '0'),
(127, 78, 1925873, 'xfr55', '0000-00-00 00:00:00', '0'),
(128, 78, 7705898, 'fgh', '0000-00-00 00:00:00', '0'),
(129, 81, 2395741, 'Hiii... ', '0000-00-00 00:00:00', '0'),
(130, 50, 4460738, 'ds44', '0000-00-00 00:00:00', '0'),
(131, 32, 4460738, '45', '0000-00-00 00:00:00', '0'),
(132, 50, 4460738, '45', '0000-00-00 00:00:00', '0'),
(133, 50, 4460738, '466', '0000-00-00 00:00:00', '0'),
(134, 50, 4460738, '998', '0000-00-00 00:00:00', '0'),
(135, 40, 4460738, 'gh56', '0000-00-00 00:00:00', '0'),
(136, 32, 4460738, '56rdee', '0000-00-00 00:00:00', '0'),
(137, 82, 4365404, 'gffdgd', '0000-00-00 00:00:00', '0'),
(138, 84, 2212013, 'wao!', '0000-00-00 00:00:00', '0'),
(139, 78, 4460738, 'safd45', '0000-00-00 00:00:00', '1'),
(140, 84, 2372791, 'good', '0000-00-00 00:00:00', '0'),
(142, 10, 2395741, 'utyutyutyutyu', '0000-00-00 00:00:00', '0'),
(143, 84, 7705898, 'awesome!!', '0000-00-00 00:00:00', '0'),
(146, 78, 4460738, 'sde22', '0000-00-00 00:00:00', '0'),
(148, 71, 4460738, 'sd322', '0000-00-00 00:00:00', '0'),
(150, 96, 2395741, 'hi...', '0000-00-00 00:00:00', '0'),
(152, 98, 4460738, 'as22', '0000-00-00 00:00:00', '0'),
(153, 83, 4460738, '44ll', '0000-00-00 00:00:00', '0'),
(155, 77, 2660679, 'sa21', '0000-00-00 00:00:00', '0'),
(156, 26, 2660679, 'gggdfsgdg', '0000-00-00 00:00:00', '0'),
(161, 77, 2660679, 'fgfgfdgfgfd', '0000-00-00 00:00:00', '0'),
(164, 104, 2395741, 'hi.....', '0000-00-00 00:00:00', '0'),
(165, 78, 7705898, 'asDSA', '0000-00-00 00:00:00', '0'),
(177, 89, 5013361, 'heh heh', '0000-00-00 00:00:00', '0'),
(178, 89, 5013361, 'heh heh', '0000-00-00 00:00:00', '0'),
(179, 89, 5013361, 'heh heh', '0000-00-00 00:00:00', '0'),
(180, 89, 5013361, 'heh heh', '0000-00-00 00:00:00', '0'),
(181, 87, 2395741, 'fghfgh', '0000-00-00 00:00:00', '0'),
(182, 87, 2395741, 'dfgdfgfdg', '0000-00-00 00:00:00', '0'),
(184, 76, 2660679, 'fdgggsdfgdf', '0000-00-00 00:00:00', '0'),
(191, 76, 2660679, 'test', '0000-00-00 00:00:00', '0'),
(192, 74, 2660679, 'test!!', '0000-00-00 00:00:00', '0'),
(193, 75, 2660679, 'gsdfgdf', '0000-00-00 00:00:00', '0'),
(194, 75, 2660679, 'hgfghfffdh', '0000-00-00 00:00:00', '0'),
(195, 75, 2660679, 'xxcvcxc', '0000-00-00 00:00:00', '0'),
(196, 75, 2660679, 'test', '0000-00-00 00:00:00', '0'),
(197, 47, 2660679, 'feeew', '0000-00-00 00:00:00', '0'),
(198, 72, 2660679, 'sdfsdfsdf', '0000-00-00 00:00:00', '0'),
(199, 75, 2660679, 'dsddagdg', '0000-00-00 00:00:00', '0'),
(200, 74, 2660679, 'asdsasdsad', '0000-00-00 00:00:00', '0'),
(201, 76, 2660679, 'dfdfff', '0000-00-00 00:00:00', '0'),
(202, 75, 2660679, 'fsdfssasfd', '0000-00-00 00:00:00', '0'),
(203, 75, 2660679, 'dfdssfsafs', '0000-00-00 00:00:00', '0'),
(204, 75, 2660679, 'dsfsddfd', '0000-00-00 00:00:00', '0'),
(205, 75, 2660679, 'sfdssadfs', '0000-00-00 00:00:00', '0'),
(206, 74, 2660679, 'bxvcvbvn', '0000-00-00 00:00:00', '0'),
(207, 78, 1925873, 'vzxcvxc', '0000-00-00 00:00:00', '0'),
(208, 78, 1925873, 'vxcvcxvxzc', '0000-00-00 00:00:00', '0'),
(209, 70, 1925873, 'vzxcvxxccv', '0000-00-00 00:00:00', '0'),
(210, 71, 1925873, 'cXZZCCX', '0000-00-00 00:00:00', '0'),
(211, 70, 1925873, 'vXZVXZVV', '0000-00-00 00:00:00', '0'),
(212, 70, 1925873, 'cxzxvxvx', '0000-00-00 00:00:00', '0'),
(213, 78, 1925873, 'cxvxcvxzcvv', '0000-00-00 00:00:00', '0'),
(214, 65, 1925873, 'xcvxcxzvxc', '0000-00-00 00:00:00', '0'),
(215, 65, 1925873, 'xcvxcxzvxc', '0000-00-00 00:00:00', '0'),
(216, 70, 1925873, 'xvcxzcvc', '0000-00-00 00:00:00', '0'),
(217, 70, 1925873, 'xvcxzcvc', '0000-00-00 00:00:00', '0'),
(218, 70, 1925873, 'xvcxzcvc', '0000-00-00 00:00:00', '0'),
(219, 70, 1925873, 'xvcxzcvc', '0000-00-00 00:00:00', '0'),
(220, 70, 1925873, 'xvcxzcvc', '0000-00-00 00:00:00', '0'),
(221, 70, 1925873, 'vxcvcxzcvv', '0000-00-00 00:00:00', '0'),
(222, 105, 7705898, 'xvxcxvc', '0000-00-00 00:00:00', '0'),
(223, 83, 7705898, 'xvxzcvxcxcv', '0000-00-00 00:00:00', '0'),
(224, 78, 7705898, 'vxcvxcv', '0000-00-00 00:00:00', '0'),
(225, 24, 7705898, 'sdasdfsfd', '0000-00-00 00:00:00', '0'),
(226, 24, 7705898, 'cvxcxxcvzxcxv', '0000-00-00 00:00:00', '0'),
(227, 24, 7705898, 'vxcvxcxzcvxc', '0000-00-00 00:00:00', '0'),
(228, 70, 1925873, 'gdfgdfg', '0000-00-00 00:00:00', '0'),
(229, 70, 1925873, 'fgvdfdg', '0000-00-00 00:00:00', '0'),
(230, 77, 2660679, 'dgfsdgdfg', '0000-00-00 00:00:00', '0'),
(231, 107, 4460738, 'sad11', '0000-00-00 00:00:00', '0'),
(232, 107, 4460738, 'df11', '0000-00-00 00:00:00', '0'),
(233, 107, 4460738, 'fdddv', '0000-00-00 00:00:00', '0'),
(234, 109, 6331589, 'Awesome!', '0000-00-00 00:00:00', '0'),
(235, 78, 7705898, 'dfdggfg', '0000-00-00 00:00:00', '0'),
(236, 78, 7705898, 'vvcvxcb', '0000-00-00 00:00:00', '0'),
(237, 84, 2212013, 'sssssssh', '0000-00-00 00:00:00', '0'),
(238, 84, 2212013, 'test', '0000-00-00 00:00:00', '0'),
(239, 102, 2395741, 'trrttr', '0000-00-00 00:00:00', '0'),
(240, 102, 2395741, 'trrttr', '0000-00-00 00:00:00', '0'),
(241, 102, 2395741, 'fhyfghgf', '0000-00-00 00:00:00', '0'),
(242, 102, 2395741, 'rtyrty', '0000-00-00 00:00:00', '0'),
(243, 102, 2395741, 'rtyrty', '0000-00-00 00:00:00', '0'),
(244, 103, 2395741, 'jkgjkgjhkgjk', '0000-00-00 00:00:00', '0'),
(245, 50, 7705898, 'as222222', '0000-00-00 00:00:00', '0'),
(246, 108, 7705898, 'asww32', '0000-00-00 00:00:00', '0'),
(247, 102, 2395741, 'fghfg', '0000-00-00 00:00:00', '0'),
(248, 102, 2395741, 'yrr', '0000-00-00 00:00:00', '0'),
(249, 50, 7705898, '99999', '0000-00-00 00:00:00', '0'),
(250, 50, 7705898, 'kk399', '0000-00-00 00:00:00', '0'),
(251, 110, 9754021, 'hkhhjhhhj', '0000-00-00 00:00:00', '0'),
(252, 46, 1925873, 'fdr44', '0000-00-00 00:00:00', '0'),
(253, 55, 1925873, 'sasd', '0000-00-00 00:00:00', '0'),
(254, 75, 2660679, '32ew23', '0000-00-00 00:00:00', '0'),
(255, 87, 7705898, 'saadss', '0000-00-00 00:00:00', '0'),
(256, 44, 2660679, 'd2sss', '0000-00-00 00:00:00', '0'),
(257, 76, 2660679, '23ww', '0000-00-00 00:00:00', '0'),
(258, 74, 2660679, 'das1132wq', '0000-00-00 00:00:00', '0'),
(259, 77, 2660679, '2aaaaaaa', '0000-00-00 00:00:00', '0'),
(260, 42, 2660679, 'sdccccccccccc', '0000-00-00 00:00:00', '0'),
(261, 42, 2660679, 'sa111', '0000-00-00 00:00:00', '0'),
(262, 115, 2660679, 'dscc', '0000-00-00 00:00:00', '0'),
(263, 50, 7705898, 'vvvxcvz', '0000-00-00 00:00:00', '0'),
(264, 27, 2660679, 'cccccccc', '0000-00-00 00:00:00', '0'),
(265, 103, 7705898, 'adada', '0000-00-00 00:00:00', '0'),
(266, 77, 2660679, '34eeed', '0000-00-00 00:00:00', '0'),
(267, 115, 2660679, 'a11', '0000-00-00 00:00:00', '0'),
(268, 115, 7705898, '34wwe', '0000-00-00 00:00:00', '0'),
(269, 77, 7705898, '34wwd', '0000-00-00 00:00:00', '0'),
(270, 76, 7705898, 'dddeee', '0000-00-00 00:00:00', '0'),
(271, 78, 1925873, 'vxvccvxcc', '0000-00-00 00:00:00', '0'),
(272, 116, 7705898, 'ds22', '0000-00-00 00:00:00', '0'),
(273, 116, 7705898, 'e455', '0000-00-00 00:00:00', '0'),
(274, 118, 2660679, 'ads54', '0000-00-00 00:00:00', '0'),
(275, 115, 4460738, 'sdfg44', '0000-00-00 00:00:00', '0'),
(276, 121, 4460738, 'g45', '0000-00-00 00:00:00', '0'),
(277, 103, 7705898, 'fsdfsdff', '0000-00-00 00:00:00', '0'),
(278, 122, 4460738, 'sdad332', '0000-00-00 00:00:00', '0'),
(279, 123, 2372791, 'df33', '0000-00-00 00:00:00', '0'),
(280, 106, 7705898, 'test', '0000-00-00 00:00:00', '0'),
(281, 120, 7705898, 'sdsssff', '0000-00-00 00:00:00', '0'),
(282, 120, 4460738, 'cxz22', '0000-00-00 00:00:00', '0'),
(283, 124, 4460738, 'cxzd22', '0000-00-00 00:00:00', '0'),
(284, 120, 4460738, '34rtff', '0000-00-00 00:00:00', '0'),
(285, 119, 4460738, 'w322we', '0000-00-00 00:00:00', '0'),
(286, 137, 7705898, 'cute.....', '0000-00-00 00:00:00', '0'),
(287, 139, 4460738, 'nyhg', '0000-00-00 00:00:00', '0'),
(288, 140, 7705898, '4fff', '0000-00-00 00:00:00', '0'),
(289, 123, 7705898, '3rfff', '0000-00-00 00:00:00', '1'),
(290, 84, 7705898, 'bvcbvcbv', '0000-00-00 00:00:00', '0'),
(291, 84, 7705898, 'hfhjgh', '0000-00-00 00:00:00', '0'),
(292, 70, 7705898, 'sacssdsdd', '0000-00-00 00:00:00', '0'),
(293, 142, 7025846, 'nice collection', '0000-00-00 00:00:00', '0'),
(294, 84, 2212013, 'hello', '0000-00-00 00:00:00', '0'),
(295, 78, 7025846, 'hello', '0000-00-00 00:00:00', '0'),
(296, 71, 7025846, 'hello', '0000-00-00 00:00:00', '0'),
(297, 56, 7025846, 'hello this', '0000-00-00 00:00:00', '1'),
(298, 51, 7025846, 'hello these dogs are for sale', '0000-00-00 00:00:00', '1'),
(299, 109, 7025846, 'nice!', '0000-00-00 00:00:00', '0'),
(300, 148, 6230533, 'weee', '0000-00-00 00:00:00', '0'),
(301, 148, 6230533, 'edfff', '0000-00-00 00:00:00', '0'),
(302, 138, 1925873, 'greate!', '0000-00-00 00:00:00', '0'),
(303, 109, 1925873, 'he he!!!\n', '0000-00-00 00:00:00', '0'),
(304, 106, 1925873, 'hello!', '0000-00-00 00:00:00', '0'),
(305, 149, 2580830, 'nice collection', '0000-00-00 00:00:00', '0'),
(306, 149, 2580830, 'helooo', '0000-00-00 00:00:00', '0'),
(307, 122, 2372791, 'hello', '0000-00-00 00:00:00', '1'),
(308, 131, 2372791, 'khjh', '0000-00-00 00:00:00', '0'),
(309, 73, 2660679, 'hello', '0000-00-00 00:00:00', '0'),
(310, 121, 4460738, '655fgfg', '0000-00-00 00:00:00', '0'),
(311, 155, 1928902, 'nice!', '0000-00-00 00:00:00', '0'),
(312, 156, 1928902, 'nice!', '0000-00-00 00:00:00', '0'),
(313, 154, 4460738, 'sdfsd', '0000-00-00 00:00:00', '0'),
(314, 130, 4460738, 'asdf3', '0000-00-00 00:00:00', '0'),
(315, 157, 7101212, 'hello', '0000-00-00 00:00:00', '0'),
(316, 160, 7101212, 'nice!', '0000-00-00 00:00:00', '0'),
(317, 161, 2580830, 'nice collection!', '0000-00-00 00:00:00', '0'),
(318, 162, 4292983, 'hello', '0000-00-00 00:00:00', '0'),
(319, 106, 4292983, 'hello i am bingo business!', '0000-00-00 00:00:00', '0'),
(320, 163, 4292983, 'hello', '0000-00-00 00:00:00', '0'),
(321, 163, 4292983, 'hello', '0000-00-00 00:00:00', '0'),
(322, 163, 4292983, 'grr', '0000-00-00 00:00:00', '0'),
(323, 164, 7025846, 'hello', '0000-00-00 00:00:00', '0'),
(324, 158, 4460738, 'der4', '0000-00-00 00:00:00', '0'),
(325, 152, 4460738, 'fdee', '0000-00-00 00:00:00', '0'),
(326, 151, 4460738, 'dcxxx', '0000-00-00 00:00:00', '0'),
(327, 18, 1925873, 'hdfr5', '0000-00-00 00:00:00', '0'),
(328, 152, 2660679, 'sq1', '0000-00-00 00:00:00', '0'),
(329, 76, 2660679, 'cd1ww', '0000-00-00 00:00:00', '0'),
(330, 73, 2660679, 'w2ww', '0000-00-00 00:00:00', '0'),
(331, 158, 1925873, 'dsq11', '0000-00-00 00:00:00', '0'),
(332, 158, 4460738, 'sa1', '0000-00-00 00:00:00', '0'),
(333, 158, 1925873, 'dfcc22', '0000-00-00 00:00:00', '0'),
(334, 34, 1925873, 'ads2', '0000-00-00 00:00:00', '0'),
(335, 78, 1925873, 'sa21', '0000-00-00 00:00:00', '0'),
(336, 45, 1925873, 'sqq', '0000-00-00 00:00:00', '0'),
(337, 149, 7705898, 'nice!\n', '0000-00-00 00:00:00', '0'),
(338, 152, 7705898, 'sdw', '0000-00-00 00:00:00', '0'),
(339, 118, 7705898, 'dsf', '0000-00-00 00:00:00', '0'),
(340, 152, 2660679, 'as', '0000-00-00 00:00:00', '0'),
(341, 152, 2660679, '56656', '0000-00-00 00:00:00', '0'),
(342, 152, 4460738, 'ds', '0000-00-00 00:00:00', '0'),
(343, 152, 2660679, 'sd', '0000-00-00 00:00:00', '0'),
(344, 135, 2660679, 'sdw', '0000-00-00 00:00:00', '0'),
(345, 107, 2660679, 'dff', '0000-00-00 00:00:00', '0'),
(346, 85, 2372791, 'wao!', '0000-00-00 00:00:00', '0'),
(347, 169, 1665774, 'wao ', '0000-00-00 00:00:00', '0'),
(348, 170, 1665774, 'good', '0000-00-00 00:00:00', '0'),
(349, 149, 7705898, 'fsdfdfd', '0000-00-00 00:00:00', '0'),
(350, 174, 4460738, 'fewsa', '0000-00-00 00:00:00', '0'),
(351, 175, 7705898, 'nice!', '0000-00-00 00:00:00', '0'),
(352, 168, 7705898, 'texa limina', '0000-00-00 00:00:00', '0'),
(353, 168, 7025846, 'nice one', '0000-00-00 00:00:00', '0'),
(354, 171, 1925873, ' qw', '0000-00-00 00:00:00', '0'),
(355, 175, 4460738, 'df', '0000-00-00 00:00:00', '0'),
(356, 158, 4460738, 'sdaaaa', '0000-00-00 00:00:00', '0'),
(357, 174, 4460738, 'd4', '0000-00-00 00:00:00', '0'),
(358, 176, 2372791, 'dsfff', '0000-00-00 00:00:00', '1'),
(359, 176, 7705898, 'cxvxvx', '0000-00-00 00:00:00', '1'),
(360, 176, 4460738, 'bbnbbb', '0000-00-00 00:00:00', '0'),
(361, 164, 2395741, 'hello john.....', '0000-00-00 00:00:00', '0'),
(362, 176, 4460738, 'cdffvvt', '2017-12-13 12:48:05', '0'),
(363, 175, 2395741, 'nice!!', '2017-12-13 18:50:24', '0'),
(364, 178, 4460738, 'kfffffffff', '2017-12-14 11:05:39', '1'),
(365, 178, 4460738, 'asdwqqw', '2017-12-14 12:39:17', '0'),
(366, 176, 4460738, 'asdwww', '2017-12-14 12:46:28', '0'),
(367, 180, 7705898, 'asdwww', '2017-12-14 15:44:15', '0'),
(368, 176, 7705898, 'dsafwsf', '2017-12-14 16:55:06', '1'),
(369, 126, 7705898, 'asdw2', '2017-12-14 17:25:26', '1'),
(370, 83, 7705898, 'dsaf3', '2017-12-14 17:29:24', '0'),
(371, 83, 7705898, 'gb4e3', '2017-12-14 17:29:33', '0'),
(372, 151, 4460738, 'phobox', '2017-12-15 15:56:56', '0'),
(373, 139, 4460738, 'nbhhvid', '2017-12-15 17:01:46', '0'),
(374, 180, 7705898, 'Wao', '2017-12-18 13:03:57', '0'),
(375, 182, 7705898, 'Hiii', '2017-12-18 13:46:04', '0'),
(376, 179, 5013361, 'Hii', '2017-12-18 14:08:31', '0'),
(377, 186, 7378268, 'Explore your business goes here for you and me which help for you improve me ', '2017-12-18 14:20:53', '0'),
(378, 133, 7378268, 'hiiiiiiiiii...................', '2017-12-18 14:30:33', '0'),
(379, 180, 7705898, 'hiii', '2017-12-18 14:33:44', '0'),
(380, 153, 7705898, 'hi', '2017-12-18 15:27:08', '1'),
(381, 190, 5013361, 'amazing pachis\n', '2017-12-18 17:52:52', '0'),
(382, 190, 3312322, 'thanks assi', '2017-12-18 17:53:39', '0'),
(383, 186, 2395741, 'hiii....', '2017-12-18 18:01:26', '0'),
(384, 171, 7705898, 'hi', '2017-12-18 18:15:37', '1'),
(385, 180, 7705898, 'Hiii', '2017-12-19 11:37:56', '1'),
(386, 164, 7705898, 'Hello bailey ', '2017-12-19 11:51:38', '0'),
(387, 102, 7025846, 'cvccvb', '2017-12-19 14:36:30', '1'),
(388, 185, 2395741, 'Wai', '2017-12-19 14:42:18', '0'),
(389, 188, 4460738, 'dhgj', '2017-12-19 14:56:57', '0'),
(390, 188, 4460738, 'kl99', '2017-12-19 14:57:18', '0'),
(391, 180, 4460738, 'kjklj', '2017-12-19 14:59:47', '0'),
(392, 188, 4460738, 'fg455', '2017-12-19 15:14:03', '0'),
(393, 140, 4460738, 'cvb453', '2017-12-19 17:15:41', '0'),
(394, 192, 4460738, '54', '2017-12-19 17:16:53', '0'),
(395, 178, 6230533, 'fd456', '2017-12-19 17:22:15', '0'),
(396, 191, 2395741, 'Gghh', '2017-12-19 17:30:46', '0'),
(397, 197, 6230533, 'dstfasg', '2017-12-19 17:43:01', '1'),
(399, 42, 2660679, 'hello', '2017-12-22 14:17:37', '0'),
(400, 218, 1128770, 'heh heh', '0000-00-00 00:00:00', '0'),
(401, 154, 4460738, 'Vghhhhh', '2017-12-22 22:22:49', '0'),
(402, 109, 2660679, 'tgsg', '2017-12-26 17:16:26', '0'),
(403, 190, 5685284, 'Good', '2017-12-27 12:54:42', '1'),
(404, 228, 5685284, 'So sweet ', '2017-12-27 12:58:04', '1'),
(405, 241, 2395741, 'cmnt', '2017-12-27 16:16:30', '0'),
(406, 223, 4460738, 'dwsf', '2018-01-01 13:58:19', '0'),
(407, 275, 2395741, 'nice', '2018-01-02 14:51:47', '0'),
(408, 277, 2660679, 'hkj\n', '0000-00-00 00:00:00', '0'),
(409, 253, 7025846, 'nice!', '2018-01-03 11:51:47', '0'),
(410, 302, 4460738, 'asd', '2018-01-03 12:21:16', '0'),
(411, 245, 4460738, 'asasas', '2018-01-03 13:03:45', '0'),
(412, 82, 2660679, '3232', '2018-01-03 15:48:24', '0'),
(413, 82, 2660679, '3213', '2018-01-03 15:48:56', '0'),
(414, 218, 2660679, 'cxgbbb', '2018-01-03 15:50:54', '0'),
(415, 306, 2395741, 'sdf', '2018-01-03 16:50:38', '0'),
(416, 269, 2395741, 'sfg', '2018-01-03 16:50:57', '0');

-- --------------------------------------------------------

--
-- Table structure for table `conversation`
--

CREATE TABLE IF NOT EXISTS `conversation` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `user_one` (`user_one`),
  KEY `user_two` (`user_two`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `conversation`
--

INSERT INTO `conversation` (`c_id`, `user_one`, `user_two`, `ip`, `time`) VALUES
(1, 2395741, 7025846, '157.119.89.228', '2017-12-21 16:50:44'),
(2, 2395741, 5170933, '157.119.89.228', '2017-12-21 17:02:18'),
(3, 2395741, 4460738, '157.119.89.228', '2017-12-21 17:12:39'),
(4, 2395741, 7101212, '157.119.89.228', '2017-12-21 17:16:57'),
(5, 2395741, 7705898, '157.119.89.228', '2017-12-21 17:56:17'),
(6, 2395741, 2372791, '157.119.89.228', '2017-12-21 17:57:37'),
(7, 2395741, 9644365, '157.119.89.228', '2017-12-21 17:59:11'),
(8, 2395741, 2580830, '157.119.89.228', '2017-12-21 18:00:41'),
(9, 2395741, 8456389, '157.119.89.228', '2017-12-21 18:02:26'),
(18, 1925873, 5013361, '103.69.6.133', '2017-12-22 15:18:49'),
(17, 7811366, 5013361, '103.69.6.133', '2017-12-22 15:02:51'),
(23, 4460738, 6230533, '103.69.6.252', '2018-01-03 14:48:04'),
(14, 2660679, 1925873, '103.69.6.133', '2017-12-22 12:23:10'),
(15, 1128770, 5013361, '103.69.6.133', '2017-12-22 14:27:27'),
(16, 2660679, 5013361, '103.69.6.133', '2017-12-22 14:59:41'),
(19, 1925873, 2395741, '103.69.6.133', '2017-12-22 15:24:19'),
(20, 1925873, 9644365, '103.69.6.133', '2017-12-22 15:35:32'),
(21, 2660679, 7025846, '103.69.6.133', '2017-12-22 17:10:22'),
(22, 1128770, 5685284, '103.69.7.213', '2018-01-02 13:55:11'),
(24, 7025846, 4460738, '103.69.6.252', '2018-01-03 15:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `conversation_reply`
--

CREATE TABLE IF NOT EXISTS `conversation_reply` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `reply` text,
  `user_id_fk` int(11) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `time` datetime NOT NULL,
  `c_id_fk` int(11) NOT NULL,
  PRIMARY KEY (`cr_id`),
  KEY `user_id_fk` (`user_id_fk`),
  KEY `c_id_fk` (`c_id_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `conversation_reply`
--

INSERT INTO `conversation_reply` (`cr_id`, `reply`, `user_id_fk`, `ip`, `time`, `c_id_fk`) VALUES
(1, 'hi duke', 2395741, '157.119.89.228', '2017-12-21 16:50:44', 1),
(10, 'hey please add me as friend', 2395741, '157.119.89.228', '2017-12-21 17:02:18', 2),
(3, 'hi leela', 7025846, '157.119.89.228', '2017-12-21 16:53:10', 1),
(4, 'how is the day', 7025846, '157.119.89.228', '2017-12-21 16:54:50', 1),
(5, 'great', 2395741, '157.119.89.228', '2017-12-21 16:55:38', 1),
(6, 'what about you', 2395741, '157.119.89.228', '2017-12-21 16:56:01', 1),
(7, 'same here', 7025846, '157.119.89.228', '2017-12-21 16:56:34', 1),
(8, 'wow good', 2395741, '157.119.89.228', '2017-12-21 16:57:37', 1),
(9, 'hmm', 7025846, '157.119.89.228', '2017-12-21 16:58:33', 1),
(12, 'hi buzo', 2395741, '157.119.89.228', '2017-12-21 17:12:39', 3),
(13, 'how is the day', 2395741, '157.119.89.228', '2017-12-21 17:13:21', 3),
(14, 'is that fine', 2395741, '157.119.89.228', '2017-12-21 17:14:18', 3),
(15, 'hi molly ', 2395741, '157.119.89.228', '2017-12-21 17:16:57', 4),
(16, 'what''s up', 2395741, '157.119.89.228', '2017-12-21 17:17:30', 4),
(17, 'hhhe', 2395741, '157.119.89.228', '2017-12-21 17:54:20', 4),
(18, 'hello bailey', 2395741, '157.119.89.228', '2017-12-21 17:56:17', 5),
(19, 'what are you doing', 2395741, '157.119.89.228', '2017-12-21 17:56:44', 5),
(20, 'hello Matt ', 2395741, '157.119.89.228', '2017-12-21 17:57:37', 6),
(21, 'how are you ', 2395741, '157.119.89.228', '2017-12-21 17:58:02', 6),
(22, 'hi Maximus', 2395741, '157.119.89.228', '2017-12-21 17:59:11', 7),
(23, 'how are the day', 2395741, '157.119.89.228', '2017-12-21 17:59:32', 7),
(24, 'hello Tucker', 2395741, '157.119.89.228', '2017-12-21 18:00:41', 8),
(25, 'what are you doing', 2395741, '157.119.89.228', '2017-12-21 18:01:02', 8),
(26, 'hi alex', 2395741, '157.119.89.228', '2017-12-21 18:02:26', 9),
(27, 'what are you doing', 2395741, '157.119.89.228', '2017-12-21 18:03:07', 9),
(28, 'hiiii', 7811366, '103.69.6.133', '2017-12-22 11:35:23', 10),
(29, 'hi', 2660679, '103.69.6.133', '2017-12-22 11:35:41', 11),
(30, 'hi', 2660679, '103.69.6.133', '2017-12-22 11:36:06', 11),
(31, 'hi', 2660679, '103.69.6.133', '2017-12-22 11:36:25', 11),
(32, 'hi', 2660679, '103.69.6.133', '2017-12-22 11:36:46', 11),
(33, 'hi', 2395741, '103.69.6.133', '2017-12-22 11:44:39', 12),
(34, 'fdvfvdvvd', 2395741, '103.69.6.133', '2017-12-22 11:58:59', 12),
(35, 'sadsdsadd', 2395741, '103.69.6.133', '2017-12-22 11:59:21', 12),
(36, 'xcxcxzcz', 2395741, '103.69.6.133', '2017-12-22 11:59:37', 12),
(37, 'xccxzcc', 2395741, '103.69.6.133', '2017-12-22 11:59:55', 12),
(38, 'cxzcxcxvcv', 2395741, '103.69.6.133', '2017-12-22 12:00:05', 9),
(39, 'xzccxcx', 2395741, '103.69.6.133', '2017-12-22 12:00:23', 9),
(40, 'hello', 2395741, '103.69.6.133', '2017-12-22 12:03:19', 13),
(41, 'hi', 2660679, '103.69.6.133', '2017-12-22 12:23:10', 14),
(42, 'hello assi', 1128770, '103.69.6.133', '2017-12-22 14:27:27', 15),
(43, 'what are you doing', 1128770, '103.69.6.133', '2017-12-22 14:28:21', 15),
(44, 'fine@@', 5013361, '103.69.6.133', '2017-12-22 14:52:14', 15),
(45, 'hello', 5013361, '103.69.6.133', '2017-12-22 14:53:08', 15),
(46, 'dcdds', 5013361, '103.69.6.133', '2017-12-22 14:53:13', 15),
(47, 'hfddffdf', 1128770, '103.69.6.133', '2017-12-22 14:53:51', 15),
(48, 'hello', 2660679, '103.69.6.133', '2017-12-22 14:58:23', 14),
(49, 'hello', 2660679, '103.69.6.133', '2017-12-22 14:58:45', 14),
(50, 'geek', 2660679, '103.69.6.133', '2017-12-22 14:59:41', 16),
(51, '80125', 7811366, '103.69.6.133', '2017-12-22 15:02:51', 17),
(52, '97166', 5013361, '103.69.6.133', '2017-12-22 15:03:48', 17),
(53, 'h0w are u', 1925873, '103.69.6.133', '2017-12-22 15:18:49', 18),
(54, 'hello leela', 1925873, '103.69.6.133', '2017-12-22 15:24:19', 19),
(55, 'hello what are you doing', 1925873, '103.69.6.133', '2017-12-22 15:35:32', 20),
(56, 'hello', 2660679, '103.69.6.133', '2017-12-22 16:38:13', 16),
(57, 'fddfgfg', 1925873, '103.69.6.133', '2017-12-22 17:04:06', 14),
(58, 'hello duke', 2660679, '103.69.6.133', '2017-12-22 17:10:22', 21),
(59, 'what are you doing', 2660679, '103.69.6.133', '2017-12-22 17:11:29', 21),
(60, 'sdfdfdf', 1925873, '103.69.6.133', '2017-12-22 17:32:23', 14),
(61, 'how is the day', 2660679, '103.69.5.151', '2017-12-28 11:27:51', 16),
(62, 'hello buddy', 1128770, '103.69.7.213', '2018-01-02 13:55:11', 22),
(63, 'what,s going on??', 1128770, '103.69.7.213', '2018-01-02 13:55:49', 22),
(64, 'hi', 5013361, '103.69.7.213', '2018-01-02 17:51:12', 17),
(65, 'hello hi\r\n', 5013361, '103.69.7.213', '2018-01-02 17:56:19', 17),
(66, 'fine! and you', 7025846, '103.69.6.252', '2018-01-03 11:53:01', 21),
(67, 'seems good', 7025846, '103.69.6.252', '2018-01-03 11:53:39', 21),
(68, 'fdfdddddddddd', 2395741, '103.69.6.252', '2018-01-03 14:46:12', 19),
(69, 'zxcccccccc', 4460738, '103.69.6.252', '2018-01-03 14:48:04', 23),
(70, 'aszxxxxxxxxx', 4460738, '103.69.6.252', '2018-01-03 14:48:40', 23),
(71, 'ssssssssssssssssssss1', 4460738, '103.69.6.252', '2018-01-03 14:50:43', 23),
(72, 'xccxcxcxxxxxxxxx', 7025846, '103.69.6.252', '2018-01-03 15:55:58', 24),
(73, 'sfd', 7025846, '103.69.6.252', '2018-01-03 15:56:07', 24);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) DEFAULT NULL,
  `event_by` varchar(200) NOT NULL,
  `event_loc` varchar(100) DEFAULT NULL,
  `event_desc` varchar(200) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time NOT NULL,
  `user_id_fk` int(11) DEFAULT NULL,
  `e_profile_pic` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `status` enum('0','1') DEFAULT '1',
  PRIMARY KEY (`event_id`),
  KEY `user_id_fk` (`user_id_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_by`, `event_loc`, `event_desc`, `event_date`, `event_time`, `user_id_fk`, `e_profile_pic`, `created`, `updated`, `status`) VALUES
(1, 'Demo1', 'Matt demon', 'Noida', 'Event', '2017-12-11', '11:58:00', 2372791, '', '2017-11-23 00:00:17', '0000-00-00 00:00:00', '1'),
(2, 'Pet Day', 'Bailey', 'vasant kunj Delhi', 'A survey performed by Rover.com concluded that almost half of pets in the United', '2017-11-24', '13:51:00', 7705898, '7705898/Events/Pet Day/profile_pic/1.jpg', '2017-11-23 00:24:17', '0000-00-00 00:00:00', '1'),
(23, 'Myevent11', 'Buzo', 'Vasant Kunj', 'My Event', '2017-12-20', '10:58:00', 4460738, '', '2017-12-20 03:53:28', '0000-00-00 00:00:00', '1'),
(4, 'Pet_Day1', 'PEOPLE FOR ANIMALS', 'Vasant Kunj,Delhi', 'The cover of my book Pets in America: A History (the hardcover edition) features a photograph from the 1880s of a man getting ready', '2017-11-28', '12:11:00', 4365404, '4365404/Events/Pet_Day1/profile_pic/1.jpg', '2017-11-27 22:18:31', '2017-11-28 01:16:28', '1'),
(5, 'Pet_Day', 'PEOPLE FOR ANIMALS', 'Vasant Kunj,Delhi', '4th Edition of India Biggest Pet Festival. Join in for the Cutest Weekend of the Year with or without your pet and chill with thousands of furry friends! Spread across 3 acres of lush green area to gi', '2017-11-06', '12:45:00', 4365404, '', '2017-11-27 22:51:02', '0000-00-00 00:00:00', '1'),
(24, 'Pet Care Event', 'Pet Care NGO', 'vasant kunj Delhi', 'The history of pets is intertwined with the process of animal domestication, and it is likely that the dog', '2017-12-22', '16:45:00', 1128770, '1128770/Events/Pet Care Event/profile_pic/animal-dog-pet-brown.jpg', '2017-12-22 03:26:36', '0000-00-00 00:00:00', '1'),
(7, 'Pet_Day_test', 'PEOPLE FOR ANIMALS', 'D14 Vasant Kunj,Delhi', '4th Edition of India Biggest Pet Festival. Join in for the Cutest Weekend of the Year with or without your pet and chill with thousands of furry friends! Spread across 3 acres of lush green area', '2017-11-28', '12:45:00', 4365404, '', '2017-11-27 22:59:28', '2017-11-27 23:55:55', '1'),
(11, 'tesla_events', 'Tesla', 'vasant kunj Delhi', 'Image result for pet history\r\nlandofholisticpets.co.uk\r\nThe history of pets is intertwined with the process of animal domestication, and it is likely that the dog, as the first domesticated species, w', '2017-11-29', '12:45:00', 1925873, '1925873/Events/tesla_events/profile_pic/box-turtle-wildlife-animal-reptile-159758.jpeg', '2017-11-29 01:48:01', '0000-00-00 00:00:00', '1'),
(12, 'Tesla_new_event', 'Tesla', 'Noida', 'Historians are not sure when humans first started keeping animals as pets. Keeping an animal for pleasure rather than for food or work was possible only for', '2017-11-29', '16:57:00', 1925873, '', '2017-11-29 05:11:14', '2017-12-07 01:57:36', '1'),
(25, 'Leela Events', 'leela', 'vasant kunj Delhi', 'A pet or companion animal is an animal kept primarily for a person''s company, protection, or entertainment rather than as a working animal, livestock, or laboratory animal. Popular pets are often note', '2018-01-03', '16:45:00', 2395741, '2395741/Events/Leela Events/profile_pic/animal-dog-pet-brown.jpg', '2018-01-03 04:09:29', '0000-00-00 00:00:00', '1'),
(20, 'PAWS India Events', 'PAWS India', 'vasant kunj Delhi', 'The history of pets is intertwined with the process of animal domestication, and it is likely that the dog, as the first domesticated species, was also the first pet. ', '2017-12-04', '16:05:00', 2212013, '2212013/Events/PAWS India Events/profile_pic/animal-dog-pet-brown.jpg', '2017-12-02 02:30:24', '0000-00-00 00:00:00', '1'),
(22, 'Duke Events', 'Duke', 'vasant kunj Delhi', 'Most of us put a lot of thought into naming our new dog or puppy. We realize our dogs name will speak volumes about our own personality, insights, or sense of humor.', '2017-12-07', '22:21:00', 7025846, '7025846/Events/Duke Events/profile_pic/photo-1455103493930-a116f655b6c5.jpg', '2017-12-07 00:22:49', '0000-00-00 00:00:00', '1'),
(15, 'Event_SECA', 'Friendicoes SECA', 'D14 Vasant Kunj,Delhi', 'Canine Elite organizes pet and dog events at outdoor and indoor parties that are especially designed for the pets accompanied by their owners. We also', '2017-11-30', '12:30:00', 2660679, '2660679/Events/Event_SECA/profile_pic/animal-dog-pet-brown.jpg', '2017-11-30 00:04:49', '0000-00-00 00:00:00', '1'),
(19, 'Test_30_events', 'Friendicoes SECA', 'Vasant Kunj,Delhi', 'Edition of India Biggest Pet Festival', '2017-12-21', '12:54:00', 2660679, '', '2017-11-30 05:40:38', '0000-00-00 00:00:00', '1'),
(21, 'Petfed', 'assi', 'vasant kunj', 'best Petfed in vasant kunj', '2017-12-12', '09:02:00', 5013361, '', '2017-12-02 03:01:14', '0000-00-00 00:00:00', '1'),
(17, 'Demoevent', 'Bailey', 'Noida', 'derrr', '2017-12-02', '12:59:00', 7705898, '7705898/Events/Demoevent/profile_pic/user_image49.jpg', '2017-11-30 02:21:25', '0000-00-00 00:00:00', '1'),
(26, 'Pet Events Leela', 'leela', 'D14 Vasant Kunj,Delhi', 'A pet or companion animal is an animal kept primarily for a person''s company, protection, or entertainment rather than as a working animal, livestock, or laboratory animal. Popular pets are often note', '2018-01-04', '12:45:00', 2395741, '2395741/Events/Pet Events Leela/profile_pic/20311lpr.jpg', '2018-01-03 22:42:52', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `event_comments`
--

CREATE TABLE IF NOT EXISTS `event_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `commenter_unique_id` int(11) NOT NULL,
  `comment` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `event_comments`
--

INSERT INTO `event_comments` (`id`, `post_id`, `commenter_unique_id`, `comment`) VALUES
(1, 1, 7705898, 'nice pic'),
(2, 1, 7705898, 'wow'),
(3, 2, 2372791, 'hello'),
(26, 1, 2660679, 'fgfdfdgfd'),
(25, 21, 2660679, 'fggfdgfd'),
(24, 6, 2660679, 'fdgfdgfdgfd'),
(23, 1, 4460738, 'ders'),
(22, 19, 4460738, 'uyt'),
(21, 19, 4460738, 'ujj'),
(13, 12, 2660679, 'dfgdgdgsgfg'),
(14, 15, 2660679, 'nice events!'),
(15, 15, 2660679, 'events_new'),
(16, 16, 2660679, 'great!!@'),
(17, 16, 2660679, 'wow!'),
(18, 16, 2660679, ' Eventbrite - Wellness Pet Food presents PAW-sitive: Interactive Art for Pets by Wellness - Saturday, 30 ... Find event and ticket information.'),
(19, 16, 2660679, 'Join us on Saturday, March 25 at the WBAY Pet Expo for the Pet Adoption Parade followed by Pet Adoption Speed Dating opportunities! Participating rescues and shelters will bring adoptable animals to the event on Saturday for you to see and have short meet & greets with to see it they would be a good fit for you.'),
(20, 17, 2660679, 'Great'),
(27, 22, 2660679, 'dddfdsfd'),
(28, 23, 2660679, 'gfdfgfdg'),
(29, 25, 2212013, 'aaaaaaa'),
(30, 26, 4460738, 'as33'),
(31, 28, 4460738, 'yes i am coming'),
(32, 22, 7705898, 'vfvfvvfdv'),
(33, 29, 7025846, 'hello'),
(34, 30, 7705898, 'nice!'),
(35, 29, 7705898, 'nice!'),
(36, 30, 7025846, 'wow!'),
(37, 14, 2660679, 'hi'),
(38, 14, 2660679, 'good'),
(39, 9, 1925873, 'hello'),
(40, 9, 1925873, 'xzczxdcdx'),
(41, 31, 1128770, 'nice collection'),
(42, 31, 1128770, 'vcvcbvbc');

-- --------------------------------------------------------

--
-- Table structure for table `event_likes`
--

CREATE TABLE IF NOT EXISTS `event_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `liker_unique_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `event_likes`
--

INSERT INTO `event_likes` (`id`, `post_id`, `liker_unique_id`) VALUES
(2, 1, 7705898),
(3, 6, 0),
(4, 7, 0),
(6, 10, 0),
(7, 12, 0),
(8, 15, 2660679),
(9, 16, 2660679),
(10, 17, 2660679),
(11, 18, 7705898),
(13, 19, 4460738),
(14, 20, 7705898),
(15, 1, 4460738),
(16, 25, 2212013),
(17, 26, 4460738),
(18, 28, 4460738),
(20, 22, 7705898),
(21, 29, 7025846),
(22, 30, 7705898),
(23, 29, 7705898),
(24, 30, 7025846),
(25, 9, 1925873),
(26, 11, 1925873),
(27, 14, 2660679),
(28, 31, 1128770);

-- --------------------------------------------------------

--
-- Table structure for table `event_updates`
--

CREATE TABLE IF NOT EXISTS `event_updates` (
  `e_update_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_fk` varchar(45) DEFAULT NULL,
  `event_id_fk` int(11) DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `event_data` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` mediumtext NOT NULL,
  `img_count` int(11) NOT NULL,
  `video` mediumtext NOT NULL,
  `vid_count` int(11) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`e_update_id`),
  KEY `user_id_fk` (`user_id_fk`),
  KEY `event_id_fk` (`event_id_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `event_updates`
--

INSERT INTO `event_updates` (`e_update_id`, `user_id_fk`, `event_id_fk`, `title`, `event_data`, `url`, `image`, `img_count`, `video`, `vid_count`, `created`, `ip`) VALUES
(1, '7705898', 1, '', '', '', '7705898/Events/Demo1/post_images/c3737173096e51b1f67e7d1e81058103.jpg,7705898/Events/Demo1/post_images/e6b82d32797add79fae0baff4f990327.jpeg,7705898/Events/Demo1/post_images/108c4e25058fad1e389d9e3e5d4f47ae.jpeg', 3, '', 0, 2017, NULL),
(2, '7705898', 1, '', 'Note that 12 out of the 20 most popular dog names end in a long â€œeâ€ sound. According to New Dog Survival Guide', '', '', 0, '', 0, 2017, NULL),
(3, '7705898', 2, '', '', '', '7705898/Events/Pet Day/post_images/3be4218ef354e9fde2584c375cd9e032.jpg,7705898/Events/Pet Day/post_images/7dd33f855b8e88b6a796b7a60e0b35da.jpeg', 2, '', 0, 2017, NULL),
(4, '', 6, '', '', '', '', 4, '', 0, 2017, NULL),
(5, '4365404', 6, '', '', '', '4365404/Events/Pet_Day/post_images/f452f47d9008c66bec437876db3c524e.jpg', 1, '', 0, 2017, NULL),
(6, '4365404', 5, '', '', '', '4365404/Events/Pet_Day/post_images/082755ab6a9e785e3ac3054ea0484f40.jpeg', 1, '', 0, 2017, NULL),
(7, '4365404', 4, '', '', '', '4365404/Events/Pet_Day1/post_images/df4f6093ca0687335c34da6bd81865d6.jpeg,4365404/Events/Pet_Day1/post_images/4c769309047ac86558289408e8cea6c0.jpg,4365404/Events/Pet_Day1/post_images/d5d88d601a3b3201a14cfab2f508a679.jpg', 3, '', 0, 2017, NULL),
(8, '7705898', 10, '', '', '', '7705898/Events/Dogs and Cat show/post_images/a4c65afdc797208baaa85d8e115900e7.jpg,7705898/Events/Dogs and Cat show/post_images/3bfea31603314b3e402c8a61e8ca8280.jpg,7705898/Events/Dogs and Cat show/post_images/619721ca2f8580272250778241f7657f.jpg', 3, '', 0, 2017, NULL),
(9, '1925873', 11, '', '', '', '1925873/Events/tesla_events/post_images/c03e4a4ececbbe29082a9cb0e4d060e2.jpg', 1, '', 0, 2017, NULL),
(10, '1925873', 12, '', '', '', '1925873/Events/Tesla_new_event/post_images/c1685fdd36cd65fc433a712dc5de03d4.jpg,1925873/Events/Tesla_new_event/post_images/25313a823abbd4fe9228ed5b9c84e91a.jpg', 2, '', 0, 2017, NULL),
(11, '1925873', 11, '', 'Historians are not sure when humans first started keeping animals as pets. Keeping an animal for pleasure rather than for food or work was possible only for ...', '', '', 0, '', 0, 2017, NULL),
(12, '2660679', 14, '', '', '', '2660679/Events/Pet Events NGO/post_images/8002e9ae4b494e28f96491b48cb5097d.jpeg,2660679/Events/Pet Events NGO/post_images/eb81f85effcfac99448aacd8940199f7.jpg', 2, '', 0, 2017, NULL),
(13, '2660679', 9, '', '', '', '2660679/Events/Events_1/post_images/9875c74a3c47e8658babb336fe90ae96.jpg', 1, '', 0, 2017, NULL),
(14, '2660679', 15, '', '', '', '2660679/Events/Event_SECA/post_images/9a42c3b1d24fc15fec71f90cc1b63346.jpg,2660679/Events/Event_SECA/post_images/75f8e53693265c79b11f61c8b49c12ed.jpeg', 2, '', 0, 2017, NULL),
(15, '2660679', 16, '', '', '', '2660679/Events/Event_SECA_New/post_images/b31c62d1e63c2c6a661071832acb6815.jpg,2660679/Events/Event_SECA_New/post_images/4602716895572c6c84c93208690b0375.jpg', 2, '', 0, 2017, NULL),
(16, '2660679', 16, '', ' Eventbrite - Wellness Pet Food presents PAW-sitive: Interactive Art for Pets by Wellness - Saturday, 30 ... Find event and ticket information.', '', '', 0, '', 0, 2017, NULL),
(17, '2660679', 14, '', 'Join us on Saturday, March 25 at the WBAY Pet Expo for the Pet Adoption Parade followed by Pet Adoption Speed Dating opportunities! Participating rescues and shelters will bring adoptable animals to the event on Saturday for you to see and have short meet', '', '', 0, '', 0, 2017, NULL),
(18, '7705898', 2, 'Demo', '', 'www.google.com', '7705898/Events/Pet Day/post_images/3b61c29ca38c48f241d01a16630661fa.jpg', 1, '', 0, 2017, NULL),
(19, '4460738', 17, 'DDD99', '', 'www.google.com', '4460738/Events/Demoevent/post_images/31f6f725336606776db859f93f169aa2.jpg', 1, '', 0, 2017, NULL),
(20, '7705898', 17, 'My doggt', '', 'www.google.com', '7705898/Events/Demoevent/post_images/6ec551527fb49ca0666d65570fa99ce9.jpg,7705898/Events/Demoevent/post_images/2cf8ec6e822663ea122a01dbb1e49844.jpeg', 2, '', 0, 2017, NULL),
(21, '2660679', 5, '', '', '', '2660679/Events/Pet_Day/post_images/7723263334b7d8df1a0316c753c870f2.jpeg', 1, '', 0, 2017, NULL),
(22, '2660679', 1, '', '', '', '2660679/Events/Demo1/post_images/bb0c6d08a9defaf9b53db66ac871971e.jpg,2660679/Events/Demo1/post_images/4d4d8406a25b795c5d66d213337fbddc.jpeg', 2, '', 0, 2017, NULL),
(23, '2660679', 19, '', '', '', '2660679/Events/Test_30_events/post_images/4b33b0545d41e27660d54ce09b630375.jpeg', 1, '', 0, 2017, NULL),
(24, '7705898', 8, '', '', '', '7705898/Events/Dog day/post_images/d3a100cf242845534b9e2cf274261d0d.jpg', 1, '', 0, 2017, NULL),
(25, '2212013', 20, '', '', '', '2212013/Events/PAWS India Events/post_images/99423d111f092c2f2d0987e2d3d79aff.jpeg', 1, '', 0, 2017, NULL),
(26, '4460738', 3, 'My dog2222', '', 'www.google.com', '4460738/Events/Demo22/post_images/31eabf59c66ab9160056657f0454e317.jpg,4460738/Events/Demo22/post_images/7b0cc8428cbebe14ee623de2398ce8ae.jpeg', 2, '', 0, 2017, NULL),
(27, '2395741', 2, '', '', '', '2395741/Events/Pet Day/post_images/0d49a7dce634d2b4d55548e4f6be9137.jpg', 1, '', 0, 2017, NULL),
(28, '5013361', 21, 'hello guys ', 'are you coming?', '', '', 0, '', 0, 2017, NULL),
(29, '7025846', 22, '', '', '', '7025846/Events/Duke Events/post_images/7e4413cb966c1cf1486d57d6a4c3887f.jpg,7025846/Events/Duke Events/post_images/2ea9ce999de0b733080c84cde6431518.jpg,7025846/Events/Duke Events/post_images/33f96abf9fe58c8d236008439f4c98cd.jpg,7025846/Events/Duke Events/post_images/9a871c9255e140251497bed9f040bdd1.jpg,7025846/Events/Duke Events/post_images/5988cdad28a6b7b6075265353b6ca410.jpg', 5, '', 0, 2017, NULL),
(30, '7705898', 22, '', '', '', '7705898/Events/Duke Events/post_images/c25f0ab7a806e5b82f2c9b4348e8fe69.jpg,7705898/Events/Duke Events/post_images/2cc6b19d9571420557286f1b6018e3f9.jpg', 2, '', 0, 2017, NULL),
(31, '1128770', 24, '', '', '', '1128770/Events/Pet Care Event/post_images/dad3bf20d57e88fb7857ddff8834aece.jpeg,1128770/Events/Pet Care Event/post_images/aed3d1845a2368614416e411d78dcded.jpeg,1128770/Events/Pet Care Event/post_images/0ea0cabdc274fddabfd600e03a55d4d3.jpg,1128770/Events/Pet Care Event/post_images/5f8258a8cb5297b339d73937c2e2f3dd.jpg', 4, '', 0, 2017, NULL),
(32, '1128770', 24, '', '', '', '1128770/Events/Pet Care Event/post_images/2bf06c968875b7f6b5b06ca029a04c25.jpeg', 1, '', 0, 2018, NULL),
(33, '2395741', 25, '', '', '', '2395741/Events/Leela Events/post_images/1958fdb6fef0423d783bc6f553c5412e.jpeg', 1, '', 0, 2018, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_users`
--

CREATE TABLE IF NOT EXISTS `event_users` (
  `event_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id_fk` int(11) DEFAULT NULL,
  `user_id_fk` int(11) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `time` datetime NOT NULL,
  PRIMARY KEY (`event_user_id`),
  KEY `user_id_fk` (`user_id_fk`),
  KEY `event_id_fk` (`event_id_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `event_users`
--

INSERT INTO `event_users` (`event_user_id`, `event_id_fk`, `user_id_fk`, `status`, `time`) VALUES
(1, 1, 2372791, '1', '0000-00-00 00:00:00'),
(2, 1, 7705898, '1', '0000-00-00 00:00:00'),
(3, 2, 7705898, '1', '0000-00-00 00:00:00'),
(4, 2, 2372791, '0', '0000-00-00 00:00:00'),
(5, 3, 4460738, '1', '0000-00-00 00:00:00'),
(25, 16, 2660679, '1', '0000-00-00 00:00:00'),
(24, 15, 2660679, '1', '0000-00-00 00:00:00'),
(23, 14, 2660679, '1', '0000-00-00 00:00:00'),
(41, 19, 2660679, '1', '0000-00-00 00:00:00'),
(38, 0, 2660679, '1', '0000-00-00 00:00:00'),
(39, 0, 2660679, '1', '0000-00-00 00:00:00'),
(12, 8, 2395741, '1', '0000-00-00 00:00:00'),
(37, 0, 2660679, '1', '0000-00-00 00:00:00'),
(17, 8, 7705898, '1', '0000-00-00 00:00:00'),
(18, 10, 7705898, '1', '0000-00-00 00:00:00'),
(19, 10, 2395741, '1', '0000-00-00 00:00:00'),
(72, 4, 2660679, '1', '0000-00-00 00:00:00'),
(40, 0, 2660679, '1', '0000-00-00 00:00:00'),
(22, 12, 1925873, '1', '0000-00-00 00:00:00'),
(36, 1, 2660679, '1', '0000-00-00 00:00:00'),
(27, 17, 7705898, '1', '0000-00-00 00:00:00'),
(61, 23, 4460738, '1', '0000-00-00 00:00:00'),
(29, 14, 1925873, '1', '0000-00-00 00:00:00'),
(30, 18, 1925873, '1', '0000-00-00 00:00:00'),
(31, 1, 4460738, '1', '0000-00-00 00:00:00'),
(42, 20, 2212013, '1', '0000-00-00 00:00:00'),
(62, 23, 7705898, '0', '0000-00-00 00:00:00'),
(46, 21, 5013361, '1', '0000-00-00 00:00:00'),
(47, 21, 4460738, '1', '0000-00-00 00:00:00'),
(50, 3, 2395741, '1', '0000-00-00 00:00:00'),
(51, 3, 8456389, '0', '0000-00-00 00:00:00'),
(54, 11, 7705898, '1', '0000-00-00 00:00:00'),
(55, 0, 7025846, '1', '0000-00-00 00:00:00'),
(56, 22, 7025846, '1', '0000-00-00 00:00:00'),
(57, 22, 7705898, '1', '0000-00-00 00:00:00'),
(58, 22, 1925873, '1', '0000-00-00 00:00:00'),
(59, 2, 7378268, '1', '0000-00-00 00:00:00'),
(68, 23, 2395741, '0', '2017-12-20 16:50:43'),
(67, 23, 6230533, '0', '2017-12-20 16:50:43'),
(70, 17, 4460738, '0', '2017-12-21 14:12:35'),
(71, 17, 6230533, '0', '2017-12-21 14:12:35'),
(73, 24, 1128770, '1', '0000-00-00 00:00:00'),
(74, 25, 2395741, '1', '0000-00-00 00:00:00'),
(75, 26, 2395741, '1', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_type` varchar(100) NOT NULL,
  `group_name` varchar(100) DEFAULT NULL,
  `group_by` varchar(200) NOT NULL,
  `group_desc` varchar(200) DEFAULT NULL,
  `user_id_fk` int(11) DEFAULT NULL,
  `gr_profile_pic` varchar(255) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `user_id_fk` (`user_id_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_type`, `group_name`, `group_by`, `group_desc`, `user_id_fk`, `gr_profile_pic`, `created`, `status`) VALUES
(1, 'Group', 'Pet Day Awareness', 'Bailey', 'Thereâ€™s something special about dog.....', 7705898, '7705898/Groups/Pet Day Awareness/profile_pic/animal-dog-pet-indoors.jpg', NULL, '1'),
(5, 'Group', 'Grp54', 'Bailey', 'dfre', 7705898, '7705898/Groups/Grp54/profile_pic/1.jpg', NULL, '1'),
(7, 'Group', 'Group 45', 'Tesla', 'hgddd', 1925873, '1925873/Groups/Group 45/profile_pic/1.jpg', NULL, '1'),
(23, 'Group', 'Friendicoes Grp', 'Friendicoes SECA', 'friendicoes grp', 2660679, '2660679/Groups/Friendicoes Grp/profile_pic/night-ball-tennis-eyes-75346.jpeg', NULL, '1'),
(8, 'Group', 'Grp4355', 'PAWS India', 'dermo', 2212013, '2212013/Groups/Grp4355/profile_pic/dog-1812002_960_720.jpg', NULL, '1'),
(9, 'Group', 'Group DEmo33', 'Tesla', 'group demo de', 1925873, '', NULL, '1'),
(10, 'Group', 'Testgrp', 'Bailey', 'test group', 7705898, '', NULL, '1'),
(11, 'Group', 'Testgroup11', 'Tesla', 'test group 11', 1925873, '1925873/Groups/Testgroup11/profile_pic/1.jpg', NULL, '1'),
(12, 'Group', 'Dodo Dog Community', 'leela', 'Best group for dogs.', 2395741, '2395741/Groups/Dodo Dog Community/profile_pic/pexels-photo-193035.jpeg', NULL, '1'),
(13, 'Group', 'NGO grp11', 'Buzo', 'ngo grp 11', 4460738, '4460738/Groups/NGO grp11/profile_pic/dog-animal-friend-loyalty-67304.jpeg', NULL, '1'),
(14, 'Group', 'Matt Grp', 'Matt demon', 'matt grp', 2372791, '', NULL, '1'),
(15, 'Group', 'SECA', 'Friendicoes SECA', 'seca', 2660679, '2660679/Groups/SECA/profile_pic/cat-face-close-view-115011.jpeg', NULL, '1'),
(16, 'Group', 'Pet compitition ', 'Bailey', 'Pet shows for all pet ', 7705898, '7705898/Groups/Pet compitition /profile_pic/photo-1426287658398-5a912ce1ed0a.jpg', NULL, '1'),
(17, 'Group', 'tesla_gp', 'Tesla', 'The history of pets is intertwined with the process of animal domestication, and it is likely that the dog', 1925873, '1925873/Groups/tesla_gp/profile_pic/cat-animal-cat-portrait-mackerel.jpg', NULL, '1'),
(18, 'Group', 'Tesla motor', 'Tesla', 'Tesla hyperloop is here for you', 1925873, '', NULL, '1'),
(19, 'Group', 'Tesla motor', 'Tesla', 'Tesla motor', 1925873, '', NULL, '1'),
(20, 'Group', 'Tesla motor', 'Tesla', 'Tesla motor', 1925873, '', NULL, '1'),
(21, 'Group', 'dfg', 'Tesla', 'gf', 1925873, '', NULL, '1'),
(22, 'Group', 'Bailey_page_12', 'Bailey', 'The history of pets is intertwined with the process of animal domestication, and it is likely that the dog, as the first domesticated species, was also the first pet. Perhaps the initial steps toward ', 7705898, '', NULL, '1'),
(24, 'Group', 'pets event', 'Matt demon', 'pets event', 2372791, '2372791/Groups/pets event/profile_pic/user_image08.jpg', NULL, '1'),
(25, 'Group', 'SCBB', 'Friendicoes SECA', 'scbb', 2660679, '', NULL, '1'),
(26, 'Group', 'eightys group', 'assi', 'Best group for dogs and pets', 5013361, '5013361/Groups/eightys group/profile_pic/bakri small.jpg', NULL, '1'),
(27, 'Group', 'Pet comp', 'Alexaa', 'Hello image compitiontion', 8456389, '8456389/Groups/Pet comp/profile_pic/bulldog-puppy-dog-pet.jpg', NULL, '1'),
(28, 'Group', 'Duke Group', 'Duke', 'nice one', 7025846, '7025846/Groups/Duke Group/profile_pic/photo-1424709746721-b8fd0ff52499.jpg', NULL, '1'),
(29, 'Group', 'ShaggyGroup', 'Shaggy', 'Mygrp', 6230533, '', NULL, '1'),
(30, 'Group', 'Animals Lovers', 'Pachis', 'Pet society for all animals lovers', 3312322, '3312322/Groups/Animals Lovers/profile_pic/photo-1437234943979-513b9d0f00d2.jpg', NULL, '1'),
(31, 'Group', 'mobile test', 'leela', 'This is for mobile testing.', 2395741, '2395741/Groups/mobile test/profile_pic/user_image50.jpg', NULL, '1'),
(32, 'Group', 'Cats and Dogs Lovers', 'Pet Hospital', 'This group is for Cats and Dogs Lovers', 7811366, '7811366/Groups/Cats and Dogs Lovers/profile_pic/dogbaby.jpg', NULL, '1'),
(34, 'Group', 'Leela Group', 'leela', 'demo', 2395741, '2395741/Groups/Leela Group/profile_pic/chihuahua-dog-puppy-cute-39317.jpeg', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `group_comments`
--

CREATE TABLE IF NOT EXISTS `group_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `commenter_unique_id` int(11) NOT NULL,
  `comment` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `group_comments`
--

INSERT INTO `group_comments` (`id`, `post_id`, `commenter_unique_id`, `comment`) VALUES
(1, 1, 2372791, 'ds2'),
(2, 1, 2372791, 'sad221`1'),
(3, 2, 2372791, 'add22222'),
(4, 2, 2372791, 'as211'),
(5, 2, 7705898, 'dsf3'),
(6, 3, 7705898, 'asd22'),
(7, 4, 7705898, 'asd'),
(8, 4, 7705898, 'asx222'),
(12, 7, 1925873, 'sad32'),
(13, 7, 1925873, 'sad212212'),
(14, 8, 1925873, 'asd221221`'),
(15, 8, 1925873, 'ads21212'),
(16, 8, 1925873, 'sad111'),
(17, 8, 1925873, 'sf34'),
(18, 8, 1925873, 'asd2111111111111111'),
(19, 9, 7705898, 'sd222'),
(20, 9, 7705898, 'asd222'),
(21, 10, 1925873, 'sa2221'),
(22, 4, 4460738, 'cvx43'),
(23, 8, 7705898, 'asfde32'),
(24, 11, 7705898, 'sad333333'),
(25, 11, 7705898, 'asD3'),
(26, 11, 1925873, 'das32222222'),
(27, 11, 1925873, 'sda321111111'),
(28, 12, 2395741, 'superb'),
(29, 13, 4460738, 'as2'),
(30, 14, 2372791, 'asd3234'),
(31, 15, 2372791, 'ew2323'),
(32, 15, 2372791, '32wsda'),
(33, 16, 2660679, 'asd12'),
(34, 16, 2660679, 'svfd3e'),
(35, 16, 4460738, 'adc32'),
(36, 17, 4460738, 'sad3'),
(37, 18, 4460738, 'ds22'),
(38, 18, 4460738, '23wws'),
(39, 19, 1925873, 'd2'),
(40, 17, 2660679, 'feffsadaf'),
(41, 24, 2395741, 'de'),
(42, 3, 4460738, 'sa1'),
(43, 25, 4460738, 'cd22'),
(44, 2, 4460738, 'as1'),
(45, 25, 4460738, 'as111111'),
(46, 3, 4460738, '1wss'),
(47, 29, 1925873, 'teasacsa'),
(48, 26, 1925873, 'dfr54'),
(49, 34, 2660679, 'as32'),
(50, 35, 2660679, 'as21'),
(51, 36, 2660679, 'asd'),
(52, 36, 2660679, 'sad2'),
(53, 37, 7705898, '8p'),
(54, 39, 4460738, 'fdf'),
(55, 39, 4460738, '34rfee'),
(56, 39, 4460738, '4rttt'),
(57, 39, 4460738, '4rteee'),
(58, 38, 4460738, '4redfdd'),
(59, 38, 4460738, '45'),
(60, 34, 2660679, 'hello'),
(61, 39, 7025846, 'hello'),
(62, 25, 7025846, 'hello'),
(63, 40, 2660679, 'hello'),
(64, 44, 1925873, 'saqa'),
(65, 30, 1925873, 'dsss'),
(66, 45, 2395741, 'sdfsdf'),
(67, 46, 2395741, 'nice! collection');

-- --------------------------------------------------------

--
-- Table structure for table `group_likes`
--

CREATE TABLE IF NOT EXISTS `group_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `liker_unique_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `group_likes`
--

INSERT INTO `group_likes` (`id`, `post_id`, `liker_unique_id`) VALUES
(2, 1, 2372791),
(4, 2, 2372791),
(7, 2, 7705898),
(8, 1, 7705898),
(10, 3, 7705898),
(11, 4, 7705898),
(16, 7, 1925873),
(22, 8, 1925873),
(23, 9, 7705898),
(24, 10, 1925873),
(26, 8, 7705898),
(30, 11, 7705898),
(32, 11, 1925873),
(33, 12, 2395741),
(34, 4, 4460738),
(36, 13, 4460738),
(37, 14, 2372791),
(39, 15, 2372791),
(42, 16, 2660679),
(44, 16, 4460738),
(46, 17, 4460738),
(64, 18, 4460738),
(49, 19, 1925873),
(50, 24, 2395741),
(56, 3, 4460738),
(55, 25, 4460738),
(54, 2, 4460738),
(57, 29, 1925873),
(58, 26, 4460738),
(59, 33, 1925873),
(60, 26, 1925873),
(61, 34, 2660679),
(62, 34, 4460738),
(63, 35, 2660679),
(65, 36, 2660679),
(66, 37, 7705898),
(67, 39, 4460738),
(68, 38, 7705898),
(69, 33, 7025846),
(70, 26, 7025846),
(71, 25, 7025846),
(72, 3, 7025846),
(73, 40, 2660679),
(74, 44, 1925873),
(75, 46, 2395741),
(76, 47, 7811366);

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE IF NOT EXISTS `group_users` (
  `group_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id_fk` int(11) DEFAULT NULL,
  `user_id_fk` int(11) DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT '1',
  `time` datetime NOT NULL,
  PRIMARY KEY (`group_user_id`),
  KEY `user_id_fk` (`user_id_fk`,`group_id_fk`),
  KEY `group_id_fk` (`group_id_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`group_user_id`, `group_id_fk`, `user_id_fk`, `status`, `time`) VALUES
(1, 1, 7705898, '1', '0000-00-00 00:00:00'),
(2, 1, 2372791, '1', '0000-00-00 00:00:00'),
(11, 9, 1925873, '1', '0000-00-00 00:00:00'),
(13, 10, 2372791, '1', '0000-00-00 00:00:00'),
(12, 10, 7705898, '1', '0000-00-00 00:00:00'),
(69, 5, 1925873, '2', '0000-00-00 00:00:00'),
(7, 5, 7705898, '1', '0000-00-00 00:00:00'),
(8, 6, 1925873, '1', '0000-00-00 00:00:00'),
(71, 12, 7025846, '1', '0000-00-00 00:00:00'),
(10, 8, 2212013, '1', '0000-00-00 00:00:00'),
(14, 11, 1925873, '1', '0000-00-00 00:00:00'),
(15, 10, 4460738, '1', '0000-00-00 00:00:00'),
(43, 1, 1925873, '1', '0000-00-00 00:00:00'),
(17, 5, 4460738, '1', '0000-00-00 00:00:00'),
(19, 4, 7705898, '1', '0000-00-00 00:00:00'),
(20, 12, 2395741, '1', '0000-00-00 00:00:00'),
(21, 12, 2372791, '1', '0000-00-00 00:00:00'),
(22, 13, 4460738, '1', '0000-00-00 00:00:00'),
(42, 1, 4460738, '1', '0000-00-00 00:00:00'),
(24, 14, 2372791, '1', '0000-00-00 00:00:00'),
(47, 5, 2660679, '1', '0000-00-00 00:00:00'),
(26, 14, 7705898, '2', '0000-00-00 00:00:00'),
(27, 15, 2660679, '1', '0000-00-00 00:00:00'),
(45, 23, 2660679, '1', '0000-00-00 00:00:00'),
(29, 16, 7705898, '1', '0000-00-00 00:00:00'),
(30, 16, 2395741, '1', '0000-00-00 00:00:00'),
(31, 4, 2395741, '0', '0000-00-00 00:00:00'),
(32, 17, 1925873, '1', '0000-00-00 00:00:00'),
(40, 9, 4460738, '1', '0000-00-00 00:00:00'),
(34, 18, 1925873, '1', '0000-00-00 00:00:00'),
(35, 19, 1925873, '1', '0000-00-00 00:00:00'),
(36, 20, 1925873, '1', '0000-00-00 00:00:00'),
(37, 21, 1925873, '1', '0000-00-00 00:00:00'),
(38, 22, 7705898, '1', '0000-00-00 00:00:00'),
(46, 23, 4460738, '1', '0000-00-00 00:00:00'),
(48, 7, 2660679, '1', '0000-00-00 00:00:00'),
(50, 24, 2372791, '1', '0000-00-00 00:00:00'),
(57, 13, 7705898, '1', '0000-00-00 00:00:00'),
(52, 25, 2660679, '1', '0000-00-00 00:00:00'),
(53, 26, 5013361, '1', '0000-00-00 00:00:00'),
(54, 26, 4460738, '1', '0000-00-00 00:00:00'),
(55, 27, 8456389, '1', '0000-00-00 00:00:00'),
(56, 27, 2395741, '1', '0000-00-00 00:00:00'),
(58, 1, 2212013, '1', '0000-00-00 00:00:00'),
(59, 23, 2212013, '2', '0000-00-00 00:00:00'),
(60, 1, 7025846, '1', '0000-00-00 00:00:00'),
(97, 23, 7025846, '2', '2017-12-19 14:57:45'),
(62, 23, 7705898, '1', '0000-00-00 00:00:00'),
(63, 23, 2580830, '1', '0000-00-00 00:00:00'),
(64, 28, 7025846, '1', '0000-00-00 00:00:00'),
(65, 28, 7705898, '1', '0000-00-00 00:00:00'),
(66, 28, 2660679, '1', '0000-00-00 00:00:00'),
(67, 28, 2580830, '2', '0000-00-00 00:00:00'),
(68, 8, 1925873, '2', '0000-00-00 00:00:00'),
(72, 22, 1925873, '2', '0000-00-00 00:00:00'),
(73, 22, 2372791, '1', '0000-00-00 00:00:00'),
(74, 29, 6230533, '1', '0000-00-00 00:00:00'),
(78, 29, 7705898, '0', '2017-12-16 14:11:21'),
(77, 29, 4460738, '0', '2017-12-16 14:11:21'),
(79, 16, 4460738, '0', '2017-12-16 14:17:10'),
(80, 22, 4460738, '1', '2017-12-16 14:18:01'),
(82, 16, 7378268, '1', '2017-12-18 14:15:05'),
(83, 30, 3312322, '1', '0000-00-00 00:00:00'),
(84, 30, 5013361, '1', '2017-12-18 17:55:21'),
(85, 30, 2395741, '1', '2017-12-18 17:59:19'),
(86, 9, 2395741, '1', '2017-12-19 10:21:17'),
(87, 7, 2395741, '2', '2017-12-19 10:46:39'),
(88, 8, 2395741, '2', '2017-12-19 10:48:18'),
(89, 13, 2395741, '2', '2017-12-19 10:50:46'),
(90, 14, 2395741, '2', '2017-12-19 10:53:56'),
(91, 5, 7025846, '2', '2017-12-19 14:45:27'),
(92, 8, 7025846, '2', '2017-12-19 14:46:33'),
(93, 11, 7025846, '2', '2017-12-19 14:53:20'),
(94, 13, 7025846, '2', '2017-12-19 14:53:46'),
(95, 14, 7025846, '2', '2017-12-19 14:54:28'),
(96, 10, 7025846, '2', '2017-12-19 14:56:18'),
(98, 31, 2395741, '1', '0000-00-00 00:00:00'),
(99, 32, 7811366, '1', '0000-00-00 00:00:00'),
(100, 30, 5685284, '1', '2017-12-27 13:53:37'),
(101, 33, 2395741, '1', '0000-00-00 00:00:00'),
(102, 34, 2395741, '1', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `imageupload`
--

CREATE TABLE IF NOT EXISTS `imageupload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `img_name` varchar(200) NOT NULL,
  `img_type` varchar(200) NOT NULL,
  `img_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `liker_unique_id` int(100) NOT NULL,
  `time` datetime NOT NULL,
  `notified` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=535 ;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `liker_unique_id`, `time`, `notified`) VALUES
(1, 2, 2372791, '0000-00-00 00:00:00', '0'),
(7, 5, 2372791, '0000-00-00 00:00:00', '0'),
(9, 3, 2372791, '0000-00-00 00:00:00', '0'),
(12, 5, 7705898, '0000-00-00 00:00:00', '0'),
(16, 9, 7705898, '0000-00-00 00:00:00', '0'),
(17, 10, 7705898, '0000-00-00 00:00:00', '0'),
(20, 4, 2372791, '0000-00-00 00:00:00', '0'),
(21, 11, 2372791, '0000-00-00 00:00:00', '0'),
(24, 12, 1925873, '0000-00-00 00:00:00', '0'),
(33, 15, 4460738, '0000-00-00 00:00:00', '0'),
(35, 16, 4460738, '0000-00-00 00:00:00', '0'),
(36, 13, 1925873, '0000-00-00 00:00:00', '0'),
(48, 18, 1925873, '0000-00-00 00:00:00', '0'),
(50, 19, 4558759, '0000-00-00 00:00:00', '0'),
(55, 20, 4558759, '0000-00-00 00:00:00', '0'),
(61, 26, 2660679, '0000-00-00 00:00:00', '0'),
(65, 31, 4967682, '0000-00-00 00:00:00', '0'),
(84, 34, 1925873, '0000-00-00 00:00:00', '0'),
(89, 9, 2372791, '0000-00-00 00:00:00', '0'),
(108, 41, 1925873, '0000-00-00 00:00:00', '0'),
(127, 48, 2372791, '0000-00-00 00:00:00', '0'),
(128, 10, 2372791, '0000-00-00 00:00:00', '0'),
(130, 65, 1925873, '0000-00-00 00:00:00', '0'),
(148, 47, 2660679, '0000-00-00 00:00:00', '0'),
(157, 50, 7705898, '0000-00-00 00:00:00', '1'),
(158, 81, 2395741, '0000-00-00 00:00:00', '0'),
(166, 25, 2372791, '0000-00-00 00:00:00', '0'),
(169, 85, 5013361, '0000-00-00 00:00:00', '0'),
(171, 89, 2395741, '0000-00-00 00:00:00', '1'),
(172, 81, 2372791, '0000-00-00 00:00:00', '0'),
(176, 24, 4460738, '0000-00-00 00:00:00', '0'),
(184, 81, 7705898, '0000-00-00 00:00:00', '0'),
(185, 80, 7705898, '0000-00-00 00:00:00', '0'),
(186, 79, 7705898, '0000-00-00 00:00:00', '1'),
(189, 71, 4460738, '0000-00-00 00:00:00', '0'),
(190, 91, 2395741, '0000-00-00 00:00:00', '0'),
(192, 96, 2395741, '0000-00-00 00:00:00', '0'),
(201, 98, 4460738, '0000-00-00 00:00:00', '0'),
(202, 83, 4460738, '0000-00-00 00:00:00', '0'),
(205, 40, 7705898, '0000-00-00 00:00:00', '0'),
(206, 96, 7705898, '0000-00-00 00:00:00', '0'),
(207, 78, 7705898, '0000-00-00 00:00:00', '0'),
(209, 105, 7705898, '0000-00-00 00:00:00', '0'),
(210, 104, 7705898, '0000-00-00 00:00:00', '0'),
(211, 103, 7705898, '0000-00-00 00:00:00', '0'),
(214, 78, 2372791, '0000-00-00 00:00:00', '0'),
(219, 74, 2660679, '0000-00-00 00:00:00', '0'),
(223, 106, 6331589, '0000-00-00 00:00:00', '0'),
(226, 108, 4460738, '0000-00-00 00:00:00', '0'),
(227, 104, 2395741, '0000-00-00 00:00:00', '0'),
(228, 103, 2395741, '0000-00-00 00:00:00', '0'),
(229, 105, 4460738, '0000-00-00 00:00:00', '0'),
(230, 109, 9183749, '0000-00-00 00:00:00', '0'),
(232, 109, 2395741, '0000-00-00 00:00:00', '0'),
(235, 56, 2395741, '0000-00-00 00:00:00', '0'),
(236, 110, 9754021, '0000-00-00 00:00:00', '0'),
(237, 102, 5013361, '0000-00-00 00:00:00', '0'),
(240, 46, 1925873, '0000-00-00 00:00:00', '0'),
(241, 55, 1925873, '0000-00-00 00:00:00', '0'),
(243, 75, 2660679, '0000-00-00 00:00:00', '0'),
(244, 87, 7705898, '0000-00-00 00:00:00', '0'),
(245, 72, 2660679, '0000-00-00 00:00:00', '0'),
(246, 44, 2660679, '0000-00-00 00:00:00', '0'),
(247, 76, 2660679, '0000-00-00 00:00:00', '0'),
(249, 43, 2660679, '0000-00-00 00:00:00', '0'),
(252, 27, 2660679, '0000-00-00 00:00:00', '0'),
(253, 115, 2660679, '0000-00-00 00:00:00', '0'),
(254, 77, 7705898, '0000-00-00 00:00:00', '0'),
(256, 116, 7705898, '0000-00-00 00:00:00', '0'),
(258, 119, 7705898, '0000-00-00 00:00:00', '0'),
(259, 121, 4460738, '0000-00-00 00:00:00', '0'),
(260, 122, 4460738, '0000-00-00 00:00:00', '0'),
(261, 123, 2372791, '0000-00-00 00:00:00', '0'),
(262, 124, 2372791, '0000-00-00 00:00:00', '0'),
(263, 120, 4460738, '0000-00-00 00:00:00', '0'),
(264, 119, 4460738, '0000-00-00 00:00:00', '0'),
(265, 134, 4460738, '0000-00-00 00:00:00', '0'),
(266, 133, 7705898, '0000-00-00 00:00:00', '0'),
(267, 137, 7705898, '0000-00-00 00:00:00', '0'),
(269, 140, 7705898, '0000-00-00 00:00:00', '0'),
(272, 136, 7705898, '0000-00-00 00:00:00', '0'),
(273, 123, 7705898, '0000-00-00 00:00:00', '0'),
(275, 142, 7025846, '0000-00-00 00:00:00', '0'),
(276, 71, 7025846, '0000-00-00 00:00:00', '0'),
(277, 109, 7025846, '0000-00-00 00:00:00', '0'),
(279, 148, 6230533, '0000-00-00 00:00:00', '0'),
(280, 138, 1925873, '0000-00-00 00:00:00', '0'),
(281, 141, 1925873, '0000-00-00 00:00:00', '0'),
(282, 137, 1925873, '0000-00-00 00:00:00', '0'),
(283, 149, 2580830, '0000-00-00 00:00:00', '0'),
(284, 150, 2580830, '0000-00-00 00:00:00', '0'),
(286, 73, 2660679, '0000-00-00 00:00:00', '0'),
(287, 155, 2580830, '0000-00-00 00:00:00', '0'),
(288, 155, 1928902, '0000-00-00 00:00:00', '0'),
(289, 156, 1928902, '0000-00-00 00:00:00', '0'),
(291, 130, 4460738, '0000-00-00 00:00:00', '0'),
(292, 157, 7101212, '0000-00-00 00:00:00', '0'),
(294, 160, 7101212, '0000-00-00 00:00:00', '0'),
(296, 163, 4292983, '0000-00-00 00:00:00', '0'),
(297, 161, 2580830, '0000-00-00 00:00:00', '0'),
(298, 159, 2580830, '0000-00-00 00:00:00', '0'),
(299, 164, 7025846, '0000-00-00 00:00:00', '0'),
(303, 77, 2660679, '0000-00-00 00:00:00', '0'),
(307, 71, 1925873, '0000-00-00 00:00:00', '0'),
(309, 158, 1925873, '0000-00-00 00:00:00', '0'),
(310, 78, 1925873, '0000-00-00 00:00:00', '0'),
(311, 70, 1925873, '0000-00-00 00:00:00', '0'),
(312, 45, 1925873, '0000-00-00 00:00:00', '0'),
(313, 164, 7705898, '0000-00-00 00:00:00', '0'),
(314, 129, 7705898, '0000-00-00 00:00:00', '0'),
(315, 128, 7705898, '0000-00-00 00:00:00', '0'),
(316, 154, 7705898, '0000-00-00 00:00:00', '0'),
(317, 126, 7705898, '0000-00-00 00:00:00', '0'),
(319, 125, 7705898, '0000-00-00 00:00:00', '0'),
(327, 165, 7705898, '0000-00-00 00:00:00', '0'),
(328, 102, 7705898, '0000-00-00 00:00:00', '0'),
(333, 140, 4460738, '0000-00-00 00:00:00', '0'),
(334, 153, 4460738, '0000-00-00 00:00:00', '0'),
(335, 23, 7705898, '0000-00-00 00:00:00', '0'),
(337, 152, 7705898, '0000-00-00 00:00:00', '0'),
(338, 75, 7705898, '0000-00-00 00:00:00', '0'),
(339, 74, 7705898, '0000-00-00 00:00:00', '1'),
(345, 118, 2660679, '0000-00-00 00:00:00', '0'),
(346, 151, 2660679, '0000-00-00 00:00:00', '1'),
(348, 135, 2660679, '0000-00-00 00:00:00', '0'),
(349, 152, 2660679, '0000-00-00 00:00:00', '0'),
(351, 91, 2372791, '0000-00-00 00:00:00', '1'),
(353, 131, 7705898, '0000-00-00 00:00:00', '0'),
(355, 144, 7705898, '0000-00-00 00:00:00', '0'),
(356, 149, 7705898, '0000-00-00 00:00:00', '0'),
(370, 103, 2372791, '0000-00-00 00:00:00', '0'),
(372, 175, 7705898, '0000-00-00 00:00:00', '0'),
(373, 175, 7025846, '0000-00-00 00:00:00', '0'),
(374, 168, 7025846, '0000-00-00 00:00:00', '0'),
(376, 174, 1925873, '0000-00-00 00:00:00', '0'),
(377, 171, 1925873, '0000-00-00 00:00:00', '0'),
(387, 152, 4460738, '0000-00-00 00:00:00', '1'),
(389, 174, 4460738, '0000-00-00 00:00:00', '1'),
(390, 158, 4460738, '0000-00-00 00:00:00', '0'),
(392, 154, 4460738, '0000-00-00 00:00:00', '0'),
(393, 148, 4460738, '0000-00-00 00:00:00', '1'),
(398, 175, 4460738, '0000-00-00 00:00:00', '0'),
(399, 171, 4460738, '0000-00-00 00:00:00', '0'),
(402, 176, 6230533, '0000-00-00 00:00:00', '0'),
(403, 176, 2372791, '0000-00-00 00:00:00', '0'),
(407, 107, 4460738, '2017-12-14 12:46:40', '0'),
(408, 176, 4460738, '2017-12-14 12:47:08', '0'),
(410, 177, 4460738, '2017-12-14 13:44:00', '1'),
(413, 83, 7705898, '2017-12-14 17:27:17', '0'),
(414, 120, 7705898, '2017-12-14 18:28:04', '0'),
(416, 117, 4460738, '2017-12-15 15:59:27', '0'),
(421, 151, 4460738, '2017-12-15 18:12:15', '0'),
(422, 88, 2395741, '2017-12-16 10:43:22', '0'),
(423, 182, 4460738, '2017-12-16 11:46:13', '0'),
(424, 32, 4460738, '2017-12-16 11:54:25', '0'),
(425, 177, 6230533, '2017-12-16 12:16:56', '0'),
(436, 179, 5013361, '2017-12-17 10:34:53', '0'),
(447, 176, 7705898, '2017-12-18 14:00:28', '1'),
(448, 185, 7378268, '2017-12-18 14:08:35', '0'),
(449, 185, 2395741, '2017-12-18 14:08:56', '0'),
(450, 186, 7378268, '2017-12-18 14:20:47', '0'),
(451, 133, 7378268, '2017-12-18 14:30:15', '1'),
(452, 180, 7705898, '2017-12-18 14:32:53', '1'),
(453, 153, 7705898, '2017-12-18 15:27:04', '0'),
(457, 175, 2395741, '2017-12-18 16:27:30', '0'),
(460, 182, 7705898, '2017-12-19 14:41:02', '1'),
(462, 180, 4460738, '2017-12-19 14:59:40', '0'),
(465, 5, 4460738, '2017-12-19 17:17:41', '0'),
(466, 123, 4460738, '2017-12-19 17:17:44', '0'),
(467, 50, 4460738, '2017-12-19 17:18:29', '0'),
(468, 178, 6230533, '2017-12-19 17:22:27', '0'),
(470, 197, 6230533, '2017-12-19 17:43:03', '1'),
(472, 188, 4460738, '2017-12-20 12:36:09', '0'),
(473, 139, 4460738, '2017-12-20 14:30:16', '0'),
(474, 179, 7811366, '2017-12-21 15:23:42', '1'),
(475, 89, 7811366, '2017-12-21 15:23:46', '1'),
(476, 179, 1128770, '2017-12-21 15:54:18', '0'),
(477, 89, 1128770, '2017-12-21 15:54:19', '1'),
(478, 216, 1128770, '2017-12-21 15:59:43', '0'),
(479, 174, 2660679, '2017-12-21 16:36:26', '1'),
(480, 42, 2660679, '2017-12-22 14:17:28', '0'),
(481, 216, 5013361, '2017-12-22 14:22:06', '1'),
(482, 218, 1128770, '0000-00-00 00:00:00', '0'),
(483, 197, 4460738, '2017-12-22 22:19:49', '0'),
(484, 223, 4460738, '2017-12-22 22:29:44', '0'),
(485, 89, 5013361, '2017-12-23 23:31:09', '0'),
(486, 158, 2660679, '0000-00-00 00:00:00', '0'),
(487, 114, 1925873, '2017-12-26 15:10:38', '0'),
(488, 56, 1925873, '2017-12-26 15:50:12', '0'),
(489, 109, 2660679, '2017-12-26 17:16:31', '0'),
(490, 190, 5685284, '2017-12-27 12:54:35', '0'),
(491, 228, 5685284, '2017-12-27 12:57:54', '0'),
(494, 191, 2395741, '2017-12-27 16:18:09', '0'),
(495, 240, 2395741, '2017-12-28 10:13:50', '1'),
(496, 244, 4460738, '2017-12-28 15:09:49', '0'),
(497, 253, 2395741, '2017-12-29 15:21:24', '0'),
(500, 228, 5013361, '2017-12-31 13:02:24', '0'),
(501, 256, 4460738, '2018-01-01 12:42:54', '0'),
(502, 245, 4460738, '2018-01-02 12:08:20', '0'),
(503, 274, 2660679, '0000-00-00 00:00:00', '0'),
(504, 275, 2395741, '2018-01-02 14:51:31', '0'),
(505, 262, 2395741, '2018-01-02 15:06:35', '0'),
(512, 260, 2395741, '2018-01-02 15:32:49', '0'),
(513, 227, 2395741, '2018-01-02 15:33:41', '0'),
(514, 110, 2660679, '2018-01-02 16:26:59', '0'),
(515, 277, 2660679, '0000-00-00 00:00:00', '0'),
(516, 277, 1925873, '0000-00-00 00:00:00', '0'),
(517, 244, 6230533, '2018-01-02 17:20:36', '0'),
(518, 279, 6230533, '2018-01-02 17:22:52', '0'),
(519, 280, 4460738, '2018-01-02 17:25:22', '0'),
(520, 301, 6230533, '2018-01-03 12:19:05', '0'),
(522, 258, 5013361, '2018-01-03 13:56:39', '0'),
(523, 302, 4460738, '2018-01-03 14:08:02', '0'),
(524, 178, 4460738, '2018-01-03 14:21:28', '0'),
(525, 238, 4460738, '2018-01-03 14:21:38', '0'),
(526, 302, 1925873, '2018-01-03 15:05:47', '1'),
(527, 261, 2660679, '0000-00-00 00:00:00', '0'),
(530, 82, 2660679, '2018-01-03 15:48:33', '0'),
(531, 218, 2660679, '2018-01-03 15:50:36', '0'),
(532, 306, 2395741, '2018-01-03 16:50:32', '0'),
(533, 303, 2395741, '2018-01-03 16:50:45', '0'),
(534, 269, 2395741, '2018-01-03 16:50:52', '0');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `unique_id`, `type`) VALUES
(1, 'abc@zhorachu.com', '2a0cfe893d891c41d6f46f1843794879', 7705898, 'user'),
(2, 'hamidomidian@fizmail.win', '733d7be2196ff70efaf6913fc8bdcabf', 2372791, 'user'),
(3, 'akanshacharan@hays.ml', 'e10adc3949ba59abbe56e057f20f883e', 1925873, 'business'),
(4, 'fepapac@averdov.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 4558759, 'ngo'),
(5, 'saroji.anand@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 2395741, 'user'),
(6, 'mudit.pant11@gmail.com', '3a714b07ec44c1f6eca4bb7b7bddad1f', 4460738, 'user'),
(7, 'shashikantkumar01@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9754021, 'business'),
(8, 'shashikantkuasdmar01@gmail.com', '5546a17c03441cb9cbad4e0be31a0a90', 3209508, 'business'),
(11, 'alexjohn@gmail.com', '14e1b600b1fd579f47433b88e8d85291', 6270311, 'business'),
(12, 'albertjohnAS@gmail.com', '14e1b600b1fd579f47433b88e8d85291', 2658901, 'business'),
(13, 'mudit.pant011@mail.com', '6cfdca6f9633968c72a2a6e0fe2756ca', 4967682, 'business'),
(14, 'giyicuyi@zhorachu.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 2660679, 'ngo'),
(15, 'rikomi@ether123.net', '14e1b600b1fd579f47433b88e8d85291', 9839944, 'business'),
(16, 'alexjohn987@gmail.com', '14e1b600b1fd579f47433b88e8d85291', 3932061, 'business'),
(17, 'faku@tinoza.org', '32cc05ae2f9e0b3878d28fa3f5515b68', 4365404, 'ngo'),
(18, 'alexjojo@gmail.com', '14e1b600b1fd579f47433b88e8d85291', 4980256, 'business'),
(19, 'johnyenglish@gmail.com', '14e1b600b1fd579f47433b88e8d85291', 6489343, 'business'),
(20, 'rikomi121@ether123.net', '14e1b600b1fd579f47433b88e8d85291', 2274159, 'business'),
(21, 'sleyteemitali@emailr.win', '14e1b600b1fd579f47433b88e8d85291', 4609971, 'business'),
(22, 'anilmalik@sapbox.bid', 'e10adc3949ba59abbe56e057f20f883e', 6382532, 'ngo'),
(23, 'juyuyuwani@roys.ml', '14e1b600b1fd579f47433b88e8d85291', 4593368, 'business'),
(24, 'grishapink@emailr.win', 'e10adc3949ba59abbe56e057f20f883e', 6612052, 'user'),
(25, 'irenevyshinsky@eyed.ml', 'e10adc3949ba59abbe56e057f20f883e', 9656796, 'user'),
(26, 'lilypopular@sapbox.bid', 'e10adc3949ba59abbe56e057f20f883e', 5170933, 'user'),
(27, 'petbooq@gmail.com', '25f9e794323b453885f5181f1b624d0b', 5013361, 'user'),
(28, 'josuvos@muimail.com', 'be7149a3778d031f60337051f3d35060', 6331589, 'business'),
(29, 'famot@muimail.com', '6cca93f5eacb0756859b7c3e1f12ae44', 9183749, 'ngo'),
(30, 'bepigus@tm2mail.com', 'e10adc3949ba59abbe56e057f20f883e', 8456389, 'user'),
(31, 'mipucu@tm2mail.com', 'e10adc3949ba59abbe56e057f20f883e', 9644365, 'user'),
(32, 'xopuc@balanc3r.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 2580830, 'user'),
(33, 'ask04ask@gmail.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 7025846, 'user'),
(47, 'pacugi@crymail2.com', '037e975f6e68c58524ba43d12a29a278', 5815213, 'business'),
(48, 'mudit.pant011@gmail.com', '040b7cf4a55014e185813e0644502ea9', 6230533, 'user'),
(54, 'raya@ax80mail.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 1928902, 'user'),
(57, 'fefi@cobin2hood.com', 'a931d0c7d800a61ecb0495e3968a8c68', 7101212, 'user'),
(59, 'labaf@tm2mail.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 8182998, 'ngo'),
(60, 'sagarpradeep888@gmail.com', '65b20e102f369c75c169aef14d2fb9f6', 7646850, 'user'),
(61, 'bhumi06.2003@gmail.com', '0707d9930275bb8be3046c554399c343', 8961011, 'user'),
(62, 'sagar.hgtv@gmail.com', '63ee451939ed580ef3c4b6f0109d1fd0', 1665774, 'business'),
(64, 'cuposu@balanc3r.com', 'e10adc3949ba59abbe56e057f20f883e', 7378268, 'user'),
(65, 'noidahod@gmail.com', '25f9e794323b453885f5181f1b624d0b', 3312322, 'user'),
(66, 'ashok.petbooq@gmail.com', '1dcd1332b4771735fbbac13b184b3bea', 3078323, 'business'),
(67, 'coffee.mohit@gmail.com', '555b64f9ecb74ab9c2b4213b33c34ce9', 7811366, 'business'),
(68, 'mohit.coffee@gmail.com', '0f561808e71b0730f55a76792945050e', 1128770, 'ngo'),
(73, 'brian@hdjd.cio', '7eae3e48cf88f80737fdd71d25a2e7b9', 8351695, 'user'),
(74, 'brian@hdjd.cio', '7eae3e48cf88f80737fdd71d25a2e7b9', 3009753, 'user'),
(75, 'brill@gdhhd.com', '7eae3e48cf88f80737fdd71d25a2e7b9', 6861755, 'user'),
(78, 'naveen@jdjjf.com', '7eae3e48cf88f80737fdd71d25a2e7b9', 8918319, 'user'),
(86, 'Mohit.petbooq@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 5685284, 'user'),
(90, 'sagar.hgtv@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 2602490, 'user'),
(91, 'dcehod@gmail.com', '25f9e794323b453885f5181f1b624d0b', 8645510, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `name`
--

CREATE TABLE IF NOT EXISTS `name` (
  `user_name` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `net_master`
--

CREATE TABLE IF NOT EXISTS `net_master` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `master_key` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `master` (`master_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ngo_like`
--

CREATE TABLE IF NOT EXISTS `ngo_like` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ngo_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `status` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `ngo_like`
--

INSERT INTO `ngo_like` (`id`, `ngo_id`, `user_id`, `status`) VALUES
(1, 4558759, 4460738, 1),
(5, 2212013, 7705898, 1),
(3, 2212013, 2372791, 1),
(10, 9183749, 6331589, 1),
(18, 2660679, 7705898, 1),
(20, 2660679, 4460738, 1),
(13, 9183749, 7705898, 1),
(14, 9183749, 2212013, 1),
(15, 2212013, 7025846, 1),
(16, 9183749, 7025846, 1),
(17, 9183749, 1925873, 1),
(24, 2660679, 1925873, 1),
(23, 9183749, 2660679, 1),
(25, 1128770, 2660679, 1),
(26, 4365404, 2660679, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ngo_resgitration`
--

CREATE TABLE IF NOT EXISTS `ngo_resgitration` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `ngo_unique_id` int(100) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `ngo_name` varchar(100) NOT NULL,
  `ngo_type` varchar(100) NOT NULL,
  `ngo_desc` varchar(200) NOT NULL,
  `website` varchar(100) NOT NULL,
  `ngo` varchar(100) NOT NULL DEFAULT 'ngo',
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `bg_image` varchar(100) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `craetedOn` datetime NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `ngo_resgitration`
--

INSERT INTO `ngo_resgitration` (`id`, `ngo_unique_id`, `status`, `ngo_name`, `ngo_type`, `ngo_desc`, `website`, `ngo`, `email`, `password`, `country`, `phone`, `bg_image`, `profile_image`, `craetedOn`, `updatedOn`) VALUES
(3, 2660679, '1', 'Friendicoes SECA', 'Non-Profit Organisation', 'The history of pets is intertwined with the process of animal domestication, and it is likely that the dog, as the first domesticated species, was also the first pet', 'https://friendicoes.org/origin-present/', 'ngo', 'giyicuyi@zhorachu.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 'India', '91-7800987279', '2660679/profile_pic/116410-004-41102F1C.jpg', '2660679/profile_pic/8160-004-991E073E.jpg', '2017-11-24 01:38:55', '2017-12-03 23:17:27'),
(7, 7348856, '1', 'John', 'Non-Profit Organisation', 'tyrty', 'www.desc.org', 'ngo', 'monish.petbooq@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'India', '973-0989786534', '', '', '2017-12-06 02:16:53', '0000-00-00 00:00:00'),
(4, 4365404, '1', 'PEOPLE FOR ANIMALS', 'Non-Profit Organisation', 'Animal welfare is not just about animals. It is about us. Our living conditions, our children, our earth. Cruelty to animals has a significant and irreversible impact on human health', 'https://www.peopleforanimalsindia.org/aboutus.php', 'ngo', 'faku@tinoza.org', '32cc05ae2f9e0b3878d28fa3f5515b68', 'India', '91-7800987279', '', '4365404/profile_pic/night-animal-dog-pet.jpg', '2017-11-27 00:24:10', '0000-00-00 00:00:00'),
(5, 6382532, '1', 'John', 'Non-Profit Organisation', 'Description goes here for you', 'www.desc.org', 'ngo', 'anilmalik@sapbox.bid', 'e10adc3949ba59abbe56e057f20f883e', 'Bahrain', '237-0989786534', '', '', '2017-11-27 02:23:01', '0000-00-00 00:00:00'),
(13, 1128770, '1', 'Pet Care NGO', 'Non-Profit Organisation', 'Best NGO of pets and animals', 'www.fb.com', 'ngo', 'mohit.coffee@gmail.com', '0f561808e71b0730f55a76792945050e', 'India', '91-9716680125', '1128770/profile_pic/xmas.png', '1128770/profile_pic/best friens.jpg', '2017-12-21 03:23:10', '0000-00-00 00:00:00'),
(6, 9183749, '1', 'petindiahelp', 'Non-Profit Organisation', 'help for pets', 'pet.india.help', 'ngo', 'famot@muimail.com', '6cca93f5eacb0756859b7c3e1f12ae44', 'India', '91-98989899', '9183749/bgImage/innocent_but_jailed_dog_515096.jpg', '9183749/profile_pic/paw_prints_186208.jpg', '2017-12-01 05:39:58', '0000-00-00 00:00:00'),
(12, 8182998, '1', 'Circle of Animals Lovers', 'Non-Profit Organisation', 'We are a registered under society Registration Act 1860 as a non government, non-profit, charitable animal welfare organization recognized by the Animal Welfare Board of India, Chennai, India', 'http://www.circleofanimallovers.org/', 'ngo', 'labaf@tm2mail.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 'India', '91-7800987279', '8182998/profile_pic/photo-1453227588063-bb302b62f50b.jpg', '8182998/profile_pic/photo-1426287658398-5a912ce1ed0a.jpg', '2017-12-07 23:05:17', '0000-00-00 00:00:00'),
(14, 3477787, '1', 'John', 'Non-Profit Organisation', 'asdasd', 'www.desc.org', 'ngo', 'monish.petbooq@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'India', '880-0989786534', '', '', '2017-12-27 03:40:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_resgitration_new`
--

CREATE TABLE IF NOT EXISTS `ngo_resgitration_new` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `ngo_unique_id` int(100) NOT NULL,
  `ngo_name` varchar(100) NOT NULL,
  `ngo_type` varchar(100) NOT NULL,
  `ngo_desc` varchar(200) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `bg_image` varchar(100) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `craetedOn` datetime NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ngo_resgitration_new`
--

INSERT INTO `ngo_resgitration_new` (`id`, `ngo_unique_id`, `ngo_name`, `ngo_type`, `ngo_desc`, `website`, `email`, `password`, `country`, `phone`, `bg_image`, `profile_image`, `craetedOn`, `updatedOn`) VALUES
(2, 2212013, 'PAWS India', 'Non-Profit Organisation', 'sdfsdfsdf', 'http://www.pawsindia.org/', 'ashok.petbooq@gmail.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 'Australia', '61-7800987279', '', '', '2017-11-24 00:00:50', '0000-00-00 00:00:00'),
(3, 2660679, 'Friendicoes SECA', 'Non-Profit Organisation', 'Sometime in the 1970s a group of school kids got together and started a kindness club for distressed stray animals under the Defence Colony flyover. The space was provided for by the then Prime Minis', 'https://friendicoes.org/origin-present/', 'giyicuyi@zhorachu.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 'India', '91-7800987279', '', '', '2017-11-24 01:38:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE IF NOT EXISTS `organisation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_organisation` varchar(255) NOT NULL,
  `type_organisation` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(100) NOT NULL,
  `country` varchar(255) NOT NULL,
  `createdOn` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `otp_verfication`
--

CREATE TABLE IF NOT EXISTS `otp_verfication` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `otp` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `createdOn` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=214 ;

--
-- Dumping data for table `otp_verfication`
--

INSERT INTO `otp_verfication` (`id`, `otp`, `email`, `createdOn`) VALUES
(150, 7910128, 'fefi@cobin2hood.com', '2017-12-07 17:06:10'),
(151, 2490502, 'ashok.kumar.lko4@gmail.com', '2017-12-07 05:07:57'),
(153, 3478223, 'sagar.hgtv@gmail.com', '2017-12-07 17:44:08'),
(156, 3605113, 'labaf@tm2mail.com', '2017-12-07 22:49:26'),
(157, 3603568, 'sagarpradeep888@gmail.com', '2017-12-08 12:07:21'),
(158, 7566229, 'miapriam@fakeinbox.info', '2017-12-08 12:23:47'),
(159, 7812678, 'Allegs@einrot.com', '2017-12-08 12:26:51'),
(160, 3141046, 'gosed1971@rhyta.com', '2017-12-08 12:29:13'),
(161, 6301279, 'thankyou-mailer-banner', '2017-12-08 14:10:37'),
(162, 9548546, 'bhumi06.2003@gmail.com', '2017-12-08 15:15:08'),
(163, 5633166, 'sagar.hgtv@gmail.com', '2017-12-10 23:58:34'),
(164, 3017667, 'ia.r.jamhourm@âœ‰.flu.cc', '2017-12-11 04:10:34'),
(165, 1095411, 'demo@email', '2017-12-13 12:05:09'),
(167, 7682304, 'cuposu@balanc3r.com', '2017-12-18 13:54:09'),
(168, 7762480, 'noidahod@gmail.com', '2017-12-18 17:40:02'),
(169, 6362338, 'ashok.petbooq@gmail.com', '2017-12-18 05:30:55'),
(170, 7282785, 'coffee.mohit@gmail.com', '2017-12-21 02:27:58'),
(171, 5875295, 'mohit.coffee@gmail.com', '2017-12-21 03:17:09'),
(183, 1184691, 'brian@hdjd.cio', '2017-12-26 16:17:44'),
(184, 9495867, 'brill@gdhhd.com', '2017-12-26 16:30:06'),
(187, 5913536, 'naveen@jdjjf.com', '2017-12-26 16:41:17'),
(203, 2716515, 'Mohit.petbooq@gmail.com', '2017-12-27 12:38:27'),
(211, 7429538, 'sagar.hgtv@gmail.com', '2017-12-29 14:15:04'),
(212, 7570656, 'monish.petbooq@gmail.com', '2017-12-29 14:20:46'),
(213, 2054743, 'dcehod@gmail.com', '2018-01-02 17:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_type` varchar(100) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `page_desc` varchar(200) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `user_id_fk` int(11) DEFAULT NULL,
  `pg_profile_pic` varchar(255) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT '1',
  PRIMARY KEY (`page_id`),
  KEY `user_id_fk` (`user_id_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_type`, `page_name`, `page_desc`, `website`, `user_id_fk`, `pg_profile_pic`, `created`, `status`) VALUES
(1, 'page', 'Pet Day', 'MY AUDIO PET is brought to you by Essential for Play, a division of JAKAB Solutions Inc. We are a family owned and operated business bringing music to you', 'https://www.petful.com/buzz/10-most-popular-dog-names/', 7705898, '7705898/Pages/Pet Day/profile_pic/animal-dog-pet-brown.jpg', NULL, '1'),
(2, 'page', 'Demo', 'Pet-owners naturally conjugate- whether it is because of their daily walks, or for pet-shows, or for just comparing notes- Pet Owners are very passionate about their pets! PetBooq is one such', 'www.test.com', 2372791, '', NULL, '1'),
(4, 'page', 'Demo2', 'sdhd', 'http://petbooq.com', 1925873, '1925873/Pages/Demo2/profile_pic/pexels-photo-46024.jpeg', NULL, '1'),
(5, 'page', 'b_page', 'Pet, any animal kept by human beings as a source of companionship and pleasure.', 'https://www.britannica.com/animal/pet', 1925873, '', NULL, '1'),
(6, 'page', 'test1', 'Pets are animals that are kept for pleasure, and they have been tamed and domesticated. ', 'petbooqtesting.com', 1925873, '', NULL, '1'),
(7, 'page', 'NGO_Page', 'HUMANS have kept animals as pets since ancient times and now, a new book charts some of the extraordinary facts about our reverence and affection for all kinds of creatures', 'petbooqtesting.com', 2660679, '2660679/Pages/NGO_Page/profile_pic/cat-silhouette-cats-silhouette-cat-s-eyes.jpg', NULL, '1'),
(8, 'page', 'ngo_page1', 'sdffsdsfd', 'petbooqtesting.com', 2660679, '2660679/Pages/ngo_page1/profile_pic/box-turtle-wildlife-animal-reptile-159758.jpeg', NULL, '1'),
(9, 'page', 'Pet Care1', 'Pet Care Med', 'www.petcaremed.com', 1925873, '1925873/Pages/Pet Care1/profile_pic/e0c6df2dfada0984153fbdd0bf7b01c0.jpg', NULL, '1'),
(10, 'page', 'Prime Dog Food', 'Prime Dog provides best food in delhi-ncr. If you are looking for best pet food contact us.\r\n', '', 2395741, '2395741/Pages/Prime Dog Food/profile_pic/cat-animal-eyes-grey-54632.jpeg', NULL, '1'),
(11, 'page', 'Brand', 'Brand', 'www.brandj.com', 4460738, '4460738/Pages/Brand/profile_pic/dog-animal-friend-loyalty-67304.jpeg', NULL, '1'),
(12, 'page', 'Pet Ambulance', 'Ambulance service for pets', 'www.petamb.com', 7705898, '7705898/Pages/Pet Ambulance/profile_pic/pexels-photo-460823.jpeg', NULL, '1'),
(31, 'page', 'Product', 'kasjdkajdh', 'www.products.com', 4460738, '4460738/Pages/Product/profile_pic/1.jpg', NULL, '1'),
(32, 'page', 'petday', 'petday', 'https://www.britannica.com/animal/pet', 2212013, '2212013/Pages/petday/profile_pic/img3.jpg', NULL, '1'),
(33, 'page', 'NGO Demo', 'ngo demo', 'www.ngodemo.com', 2660679, '2660679/Pages/NGO Demo/profile_pic/pexels-photo-257577.jpeg', NULL, '1'),
(34, 'page', 'Medicos Sevice', 'Medical service provide to dog', 'www.medicos.com', 2395741, '2395741/Pages/Medicos Sevice/profile_pic/pexels-photo-271824.jpeg', NULL, '1'),
(35, 'page', 'Page_Tesla', 'Image result for pet history\r\nlandofholisticpets.co.uk\r\nThe history of pets is intertwined with the process of animal domestication, and it is likely that the dog, as the first domesticated species, w', 'https://www.britannica.com/animal/pet', 1925873, '', NULL, '1'),
(36, 'page', 'Myshoppe', 'myshop', 'www.myshop.com', 4460738, '', NULL, '1'),
(38, 'page', 'Page_Tesla_new', 'Image result for pet history\r\nlandofholisticpets.co.uk\r\nThe history of pets is intertwined with the process of animal domestication, and it is likely that the dog, as the first domesticated species, w', 'https://www.britannica.com/', 1925873, '', NULL, '1'),
(39, 'page', 'Pagetesla', 'tesla page', 'www.pagetesla.com', 1925873, '1925873/Pages/Pagetesla/profile_pic/1.jpg', NULL, '1'),
(40, 'page', 'NewSECA', 'new seca', 'www.newseca.com', 2660679, '', NULL, '1'),
(41, 'page', 'test_page', 'test', 'petbooqtesting.com', 2395741, '', NULL, '1'),
(42, 'page', 'Medpets', 'medpets', 'www.medpet.com', 4460738, '', NULL, '1'),
(45, 'page', 'pets gift', 'gift and accessories for pets', 'giftshop.com', 6331589, '6331589/Pages/pets gift/profile_pic/cat-favorite-relaxation-rest-39255.jpeg', NULL, '1'),
(48, 'page', 'asdads', 'asdads', 'asdasd', 7705898, '7705898/Pages/asdads/profile_pic/1.jpg', NULL, '1'),
(49, 'page', 'scvc', 'scva', 'www.scva.com', 2660679, '2660679/Pages/scvc/profile_pic/dog-1812002_960_720.jpg', NULL, '1'),
(50, 'page', 'Eighty Productions', 'Eighty production is associates with best pet food in delhi NCR', '', 5013361, '', NULL, '1'),
(51, 'page', 'Pet Clinic', 'pet clinic', 'www.peclinic.com', 7705898, '7705898/Pages/Pet Clinic/profile_pic/download11.png', NULL, '1'),
(52, 'page', 'debr', 'sdsada', 'http://petbooq.com', 7705898, '7705898/Pages/debr/profile_pic/1.jpg', NULL, '1'),
(53, 'page', 'Friendicoes Page', 'Most of us put a lot of thought into naming our new dog or puppy. We realize our dog''s name will speak volumes about our own personality,', 'https://www.britannica.com/', 2660679, '2660679/Pages/Friendicoes Page/profile_pic/photo-1424709746721-b8fd0ff52499.jpg', NULL, '1'),
(54, 'page', 'Duke Page', 'Most of us put a lot of thought into naming our new dog or puppy. We realize our dog''s name will speak volumes about our own personality,', 'https://www.britannica.com/', 7025846, '7025846/Pages/Duke Page/profile_pic/photo-1437957146754-f6377debe171.jpg', NULL, '1'),
(55, 'page', 'Aeff', 'adsd', 'http://petbooq.com', 4460738, '4460738/Pages/Aeff/profile_pic/cat-sweet-kitty-animals-57416.jpeg', NULL, '1'),
(56, 'page', 'Shaggypage', 'shaggy', 'www.shaggy.com', 6230533, '6230533/Pages/Shaggypage/profile_pic/cat-silhouette-cats-silhouette-cat-s-eyes.jpg', NULL, '1'),
(57, 'page', 'Cats Care', 'Best Cats Vets in NCR', '', 1128770, '1128770/Pages/Cats Care/profile_pic/cat hand.jpg', NULL, '1'),
(58, 'page', 'Cats Care', 'Best Cats Vets in NCR', '', 1128770, '1128770/Pages/Cats Care/profile_pic/cat-animal-eyes-grey-54632.jpeg', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `page_comments`
--

CREATE TABLE IF NOT EXISTS `page_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `commenter_unique_id` int(11) NOT NULL,
  `comment` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `page_comments`
--

INSERT INTO `page_comments` (`id`, `post_id`, `commenter_unique_id`, `comment`) VALUES
(1, 1, 7705898, 'nice combination'),
(2, 1, 7705898, 'great pic'),
(9, 19, 1925873, 'asdf3222222222222222222222'),
(8, 19, 1925873, 'asdffggg3333'),
(7, 19, 1925873, 'asd32'),
(10, 20, 1925873, 'sadds222'),
(11, 20, 1925873, '12dsdssd'),
(12, 24, 4460738, 'asd234234324'),
(13, 24, 4460738, 'asd32222222222222'),
(14, 24, 7705898, 'asd3232'),
(15, 24, 7705898, 'dsac3e232'),
(16, 25, 7705898, 'sf32'),
(17, 25, 7705898, '54fgfb'),
(18, 26, 7705898, 'fd5'),
(19, 26, 7705898, '55'),
(20, 27, 7705898, 'f5'),
(21, 28, 4460738, 'sad12'),
(22, 28, 4460738, 'sf3'),
(23, 29, 2372791, 'sda2'),
(24, 20, 1925873, 'sa221'),
(25, 30, 1925873, '222222'),
(26, 28, 1925873, 'sa32'),
(27, 28, 1925873, 'sa21'),
(28, 27, 1925873, 'sx111'),
(29, 27, 1925873, 'cx12'),
(30, 31, 1925873, 'ss2'),
(31, 30, 7705898, 'ads21'),
(32, 23, 7705898, 'sw3333'),
(33, 29, 7705898, 'sss222'),
(34, 33, 2660679, 'qd222'),
(35, 34, 2660679, 'asaswqwq'),
(36, 34, 4460738, 'sfg43w'),
(37, 34, 4460738, 'dsa23'),
(38, 35, 4460738, 'asdasd2222'),
(39, 36, 2372791, 'fdas3'),
(40, 21, 2372791, 'sad21'),
(41, 35, 2660679, 'ads32'),
(42, 23, 4460738, 'das2'),
(43, 30, 1925873, 'd2'),
(44, 34, 2660679, 'fddf'),
(45, 40, 2395741, 'fgfhhgfhgf'),
(46, 42, 7705898, 'gty66'),
(47, 47, 2660679, 'sddd'),
(48, 49, 2395741, 'gfdfgfd'),
(49, 51, 1925873, 'hi'),
(50, 23, 7705898, 'asadsa'),
(51, 55, 2660679, 'sssdq'),
(52, 57, 4460738, '6ytn'),
(53, 58, 4460738, 'f444'),
(54, 58, 7705898, '4gfgf'),
(55, 59, 7705898, 're4'),
(56, 59, 7705898, '3rgg'),
(57, 59, 7705898, '44gg'),
(58, 60, 2660679, 'sdffsdf'),
(59, 61, 7025846, 'Hello!'),
(60, 61, 7025846, 'he he he!!!'),
(61, 29, 1925873, 'good\n'),
(62, 51, 1925873, 'sssssss'),
(63, 62, 1925873, 'ssd');

-- --------------------------------------------------------

--
-- Table structure for table `page_likes`
--

CREATE TABLE IF NOT EXISTS `page_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `liker_unique_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `page_likes`
--

INSERT INTO `page_likes` (`id`, `post_id`, `liker_unique_id`) VALUES
(1, 1, 7705898),
(13, 22, 4460738),
(30, 20, 1925873),
(53, 19, 1925873),
(14, 24, 4460738),
(18, 25, 7705898),
(20, 24, 7705898),
(22, 26, 7705898),
(23, 27, 7705898),
(59, 28, 4460738),
(27, 27, 4460738),
(28, 29, 2372791),
(29, 28, 2372791),
(31, 30, 1925873),
(32, 28, 1925873),
(33, 27, 1925873),
(34, 31, 1925873),
(40, 30, 7705898),
(37, 23, 7705898),
(38, 22, 7705898),
(39, 29, 7705898),
(41, 32, 4460738),
(42, 33, 2660679),
(50, 34, 2660679),
(45, 34, 4460738),
(47, 35, 4460738),
(48, 36, 2372791),
(49, 35, 2660679),
(51, 23, 4460738),
(52, 39, 2395741),
(65, 40, 7705898),
(55, 41, 7705898),
(56, 40, 2395741),
(57, 42, 7705898),
(58, 46, 1925873),
(60, 25, 4460738),
(61, 47, 2660679),
(62, 48, 2660679),
(63, 54, 6331589),
(64, 55, 2660679),
(67, 58, 4460738),
(68, 58, 7705898),
(71, 59, 7705898),
(72, 60, 2660679),
(73, 61, 7025846),
(74, 51, 1925873),
(75, 62, 1925873),
(77, 42, 2395741),
(79, 29, 2395741),
(80, 28, 2395741),
(81, 67, 2395741);

-- --------------------------------------------------------

--
-- Table structure for table `page_shares`
--

CREATE TABLE IF NOT EXISTS `page_shares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `sharer_id` int(11) NOT NULL,
  `share_with` int(11) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `page_shares`
--

INSERT INTO `page_shares` (`id`, `page_id`, `sharer_id`, `share_with`, `time`) VALUES
(7, 10, 2395741, 8456389, '2017-12-04 14:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `page_users`
--

CREATE TABLE IF NOT EXISTS `page_users` (
  `page_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id_fk` int(11) DEFAULT NULL,
  `user_id_fk` int(11) DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT '1',
  `time` datetime NOT NULL,
  PRIMARY KEY (`page_user_id`),
  KEY `user_id_fk` (`user_id_fk`,`page_id_fk`),
  KEY `page_id_fk` (`page_id_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=127 ;

--
-- Dumping data for table `page_users`
--

INSERT INTO `page_users` (`page_user_id`, `page_id_fk`, `user_id_fk`, `status`, `time`) VALUES
(56, 9, 1925873, '1', '0000-00-00 00:00:00'),
(2, 2, 2372791, '1', '0000-00-00 00:00:00'),
(89, 10, 8456389, '1', '0000-00-00 00:00:00'),
(17, 12, 2372791, '1', '0000-00-00 00:00:00'),
(5, 4, 1925873, '1', '0000-00-00 00:00:00'),
(6, 5, 1925873, '0', '0000-00-00 00:00:00'),
(7, 6, 1925873, '1', '0000-00-00 00:00:00'),
(8, 7, 2660679, '1', '0000-00-00 00:00:00'),
(9, 8, 2660679, '1', '0000-00-00 00:00:00'),
(10, 9, 1925873, '1', '0000-00-00 00:00:00'),
(11, 10, 2395741, '1', '0000-00-00 00:00:00'),
(66, 39, 1925873, '1', '0000-00-00 00:00:00'),
(13, 11, 4460738, '1', '0000-00-00 00:00:00'),
(55, 9, 1925873, '1', '0000-00-00 00:00:00'),
(94, 1, 4460738, '1', '0000-00-00 00:00:00'),
(73, 12, 4460738, '1', '0000-00-00 00:00:00'),
(105, 54, 7705898, '1', '0000-00-00 00:00:00'),
(19, 9, 7705898, '1', '0000-00-00 00:00:00'),
(20, 13, 4460738, '1', '0000-00-00 00:00:00'),
(21, 14, 4460738, '1', '0000-00-00 00:00:00'),
(22, 15, 4460738, '1', '0000-00-00 00:00:00'),
(23, 16, 4460738, '1', '0000-00-00 00:00:00'),
(24, 17, 4460738, '1', '0000-00-00 00:00:00'),
(25, 18, 4460738, '1', '0000-00-00 00:00:00'),
(26, 19, 4460738, '1', '0000-00-00 00:00:00'),
(27, 20, 4460738, '1', '0000-00-00 00:00:00'),
(28, 21, 4460738, '1', '0000-00-00 00:00:00'),
(29, 22, 4460738, '1', '0000-00-00 00:00:00'),
(30, 23, 4460738, '1', '0000-00-00 00:00:00'),
(31, 24, 4460738, '1', '0000-00-00 00:00:00'),
(32, 25, 4460738, '1', '0000-00-00 00:00:00'),
(33, 26, 4460738, '1', '0000-00-00 00:00:00'),
(34, 27, 4460738, '1', '0000-00-00 00:00:00'),
(35, 28, 4460738, '1', '0000-00-00 00:00:00'),
(36, 29, 4460738, '1', '0000-00-00 00:00:00'),
(37, 30, 4460738, '1', '0000-00-00 00:00:00'),
(38, 31, 4460738, '1', '0000-00-00 00:00:00'),
(39, 32, 2212013, '1', '0000-00-00 00:00:00'),
(40, 33, 2660679, '1', '0000-00-00 00:00:00'),
(62, 36, 4460738, '1', '0000-00-00 00:00:00'),
(42, 2, 2212013, '1', '0000-00-00 00:00:00'),
(43, 1, 2372791, '1', '0000-00-00 00:00:00'),
(44, 5, 7705898, '1', '0000-00-00 00:00:00'),
(45, 1, 2395741, '1', '0000-00-00 00:00:00'),
(65, 32, 2395741, '1', '0000-00-00 00:00:00'),
(68, 1, 2660679, '1', '0000-00-00 00:00:00'),
(48, 34, 2395741, '1', '0000-00-00 00:00:00'),
(84, 50, 5013361, '1', '0000-00-00 00:00:00'),
(54, 35, 1925873, '1', '0000-00-00 00:00:00'),
(51, 34, 2372791, '1', '0000-00-00 00:00:00'),
(57, 9, 1925873, '1', '0000-00-00 00:00:00'),
(58, 9, 1925873, '1', '0000-00-00 00:00:00'),
(59, 9, 1925873, '1', '0000-00-00 00:00:00'),
(60, 9, 1925873, '1', '0000-00-00 00:00:00'),
(61, 4, 1925873, '1', '0000-00-00 00:00:00'),
(63, 37, 4460738, '1', '0000-00-00 00:00:00'),
(64, 38, 1925873, '1', '0000-00-00 00:00:00'),
(69, 36, 2660679, '1', '0000-00-00 00:00:00'),
(70, 40, 2660679, '1', '0000-00-00 00:00:00'),
(71, 41, 2395741, '1', '0000-00-00 00:00:00'),
(72, 1, 7705898, '1', '0000-00-00 00:00:00'),
(74, 42, 4460738, '1', '0000-00-00 00:00:00'),
(81, 48, 7705898, '1', '0000-00-00 00:00:00'),
(78, 45, 6331589, '1', '0000-00-00 00:00:00'),
(82, 49, 2660679, '1', '0000-00-00 00:00:00'),
(85, 50, 2395741, '1', '0000-00-00 00:00:00'),
(88, 11, 7705898, '1', '0000-00-00 00:00:00'),
(90, 48, 2395741, '1', '0000-00-00 00:00:00'),
(95, 48, 4460738, '1', '0000-00-00 00:00:00'),
(96, 12, 2395741, '1', '0000-00-00 00:00:00'),
(97, 51, 7705898, '1', '0000-00-00 00:00:00'),
(98, 0, 7025846, '1', '0000-00-00 00:00:00'),
(99, 52, 7705898, '1', '0000-00-00 00:00:00'),
(100, 0, 7025846, '1', '0000-00-00 00:00:00'),
(101, 53, 2660679, '1', '0000-00-00 00:00:00'),
(102, 54, 7025846, '1', '0000-00-00 00:00:00'),
(104, 54, 1925873, '1', '0000-00-00 00:00:00'),
(106, 48, 2580830, '0', '0000-00-00 00:00:00'),
(108, 9, 4460738, '1', '0000-00-00 00:00:00'),
(109, 55, 4460738, '1', '0000-00-00 00:00:00'),
(110, 41, 9644365, '0', '0000-00-00 00:00:00'),
(111, 10, 7705898, '0', '0000-00-00 00:00:00'),
(112, 56, 6230533, '1', '0000-00-00 00:00:00'),
(113, 56, 4460738, '0', '0000-00-00 00:00:00'),
(114, 11, 6230533, '0', '2017-12-16 14:51:33'),
(116, 1, 7378268, '1', '0000-00-00 00:00:00'),
(117, 35, 7025846, '1', '0000-00-00 00:00:00'),
(118, 57, 1128770, '1', '0000-00-00 00:00:00'),
(119, 58, 1128770, '1', '0000-00-00 00:00:00'),
(120, 57, 7811366, '1', '0000-00-00 00:00:00'),
(121, 54, 3078323, '1', '0000-00-00 00:00:00'),
(122, 54, 2395741, '1', '0000-00-00 00:00:00'),
(123, 54, 4460738, '1', '0000-00-00 00:00:00'),
(124, 54, 5013361, '1', '0000-00-00 00:00:00'),
(125, 58, 2395741, '1', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `petowner`
--

CREATE TABLE IF NOT EXISTS `petowner` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `typeofpet` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `sex` enum('Male','Female','','') NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(100) NOT NULL,
  `country` varchar(255) NOT NULL,
  `otp` int(100) NOT NULL,
  `status` int(10) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pet_meet`
--

CREATE TABLE IF NOT EXISTS `pet_meet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pet_met_unique_id` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `breed` varchar(100) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `pet_photo` varchar(200) NOT NULL,
  `bg_image` varchar(200) NOT NULL,
  `age` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `about_pet` varchar(255) NOT NULL,
  `pedigree` varchar(100) NOT NULL,
  `status` int(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `createdOn` datetime NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `pet_meet`
--

INSERT INTO `pet_meet` (`id`, `pet_met_unique_id`, `type`, `breed`, `pet_name`, `pet_photo`, `bg_image`, `age`, `email`, `sex`, `location`, `about_pet`, `pedigree`, `status`, `country`, `state`, `createdOn`, `updatedOn`) VALUES
(1, 7705898, 'Dog', 'Gentle Giants', 'Buddy', '7705898/Mate/dog-animal-friend-loyalty-67304.jpeg', '', '8', 'ask04@yahoo.com', 'male', 'Kishan Garh Gaon', '12 out of the 20 most popular dog names end in a long â€œeâ€ sound', 'yes', 0, 'India', 'New Delhi', '2017-11-22 23:26:37', '2017-11-22 23:26:37'),
(2, 2372791, 'Dog', 'Mid-Sized Mutts', 'Tango', '2372791/Mate/nature-animal-dog-pet.jpg', '', '2', 'alexjohn@gmail.com', 'male', '4th avenue', 'Pet-owners naturally conjugate- whether it is because of their daily walks, or for\r\npet-shows, or for just comparing notes', 'yes', 1, 'India', 'Gujarat', '2017-11-22 23:39:07', '2017-11-22 23:39:07'),
(3, 2395741, 'Dog', 'German shepherd', 'Aldo', '2395741/Mate/pexels-photo-169524.jpeg', '', '2', 'rikomi@ether123.net', 'male', 'Mascow', 'These beautiful dogs are a unique crossbreed of blue merle shepherds imported from England and the native Australian dingo. High energy and hard working', 'yes', 1, 'India', 'Jammu and Kashmir', '2017-11-27 22:37:02', '2017-11-27 22:37:02'),
(5, 2395741, 'Dog', 'German shepherd', 'Tangoses', '2395741/Mate/pexels-photo-313979.jpeg', '', '2', 'rikomi@ether123.net', 'male', 'Morroco', 'These beautiful dogs are a unique crossbreed of blue merle shepherds imported from England and the native Australian dingo. High energy and hard working', 'yes', 1, 'India', 'Daman and Diu', '2017-11-27 23:25:50', '2017-11-27 23:25:50'),
(7, 2395741, 'Dog', 'Indie', 'Juno', '2395741/Mate/pexels-photo-332974.jpeg', '', '3', 'rikomi@ether123.net', 'male', 'Mascow', 'I started thinking and doubting my capabilities and getting more and more frustrated.', 'yes', 1, 'India', 'Dadra and Nagar Haveli', '2017-11-29 23:59:47', '2017-11-29 23:59:47'),
(10, 2660679, 'Dog', 'German shepherd', 'Sam', '2660679/Mate/dog-1812002_960_720.jpg', '', '10', 'david@mail.com', 'male', 'Vasant kunj D14', 'Perhaps the initial steps toward domestication were taken largely through the widespread human practice of making pets of captured young wild ', 'no', 1, 'India', 'New Delhi', '2017-12-01 01:20:57', '2017-12-01 01:20:57'),
(11, 4460738, 'Cat', 'Poodle', 'ninny', '4460738/Mate/cat-sweet-kitty-animals-57416.jpeg', '', '7', 'mudit.pant11@gmail.com', 'female', 'vasant kunj', 'gfhug', 'yes', 1, 'India', 'New Delhi', '2017-12-18 23:55:50', '2017-12-18 23:55:50'),
(9, 1925873, 'Dog', 'Border collie', 'Rocky', '1925873/Mate/cat-favorite-relaxation-rest-39255.jpeg', '', '10', 'sahadev.sagar786@yahoo.com', 'male', 'Vasant kunj D14', 'The history of pets is intertwined with the process of animal domestication, and it is likely that the dog, as the first domesticated species, was also the first pet. Perhaps the initial steps toward domestication were taken largely through the widespread', 'yes', 1, 'India', 'New Delhi', '2017-12-01 00:30:01', '2017-12-01 00:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `pet_rehome`
--

CREATE TABLE IF NOT EXISTS `pet_rehome` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `species` varchar(100) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `pet_photo` varchar(200) NOT NULL,
  `bg_image` varchar(200) NOT NULL,
  `user_id_fk` int(10) NOT NULL,
  `about_pet` varchar(1000) NOT NULL,
  `colour` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `createdOn` datetime NOT NULL,
  `updatedOn` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `pet_rehome`
--

INSERT INTO `pet_rehome` (`id`, `species`, `pet_name`, `pet_photo`, `bg_image`, `user_id_fk`, `about_pet`, `colour`, `sex`, `age`, `email`, `phone`, `address`, `status`, `country`, `state`, `createdOn`, `updatedOn`) VALUES
(1, 'Dog', 'Max', '7705898/Rehome/night-ball-tennis-eyes-75346.jpeg', '', 7705898, 'States were given traditionally human names this year. In fact, many of the most popular dog names in 2015 closely tracked the most popular baby names.', 'red', 'male', '7', 'david@mail.com', '7800987279', 'Vasant Kunj, Delhi', '1', 'India', 'New Delhi', '2017-11-22 23:12:35', '0000-00-00 00:00:00'),
(3, 'Cat', 'Maxii', '2372791/Rehome/cat-animal-cat-portrait-mackerel.jpg', '', 2372791, 'Pet-owners naturally conjugate- whether it is because of their daily walks, or for\r\npet-shows, or for just comparing notes', 'Black', 'Male', '2', 'alexjohn@gmail.com', '9848681532', '4th Avenue', '1', 'India', 'Lakshadweep', '2017-11-22 23:28:50', '0000-00-00 00:00:00'),
(4, 'Cat', 'Joxy', '2395741/Rehome/animal-dog-pet-indoors.jpg', '', 2395741, 'Pet-owners naturally conjugate- whether it is because of their daily walks', 'Red', 'Male', '32', 'alexjo@gmail.com', '9848681532', '4th Avenue', '1', 'India', 'Gujarat', '2017-11-27 21:58:05', '0000-00-00 00:00:00'),
(5, 'Dog', 'Ron', '2660679/Rehome/dog-hovawart-black-pet-89775.jpeg', '', 2660679, 'HUMANS have kept animals as pets since ancient times and now, a new book charts some of the extraordinary facts about our reverence and affection for all kinds of creatures', 'Black', 'male', '4', 'ask04@yahoo.com', '7800987279', 'D14 vasant kunj', '1', 'India', 'New Delhi', '2017-12-01 01:35:31', '0000-00-00 00:00:00'),
(6, 'Dog', 'Finn', '1925873/Rehome/bulldog-puppy-dog-pet.jpg', '', 1925873, 'Most of us put a lot of thought into naming our new dog or puppy. We realize our dog''s name will speak volumes about our own personality, insights', 'black and white', 'male', '10', 'lahegapu@crymail2.com', '7800987279', 'D14 vasant kunj', '1', 'India', 'New Delhi', '2017-12-01 02:14:21', '0000-00-00 00:00:00'),
(7, 'Cat', 'canny', '5013361/Rehome/beautiful cats.jpg', '', 5013361, 'she is very preety and looking for new house', 'white', 'female', '2', 'mohit.petbooq@gmail.com', '9716680125', '22-2 UL, LA', '1', 'Austria', 'Steiermark', '2017-12-02 03:16:03', '0000-00-00 00:00:00'),
(8, 'Dog', 'Bear', '7705898/Rehome/photo-1440484433300-c3317c44152e.jpg', '', 7705898, 'The PET scanner is a new kind of medical instrument which is radically different from the tools which the physicians had to make images of the brain in a non-invasive way, that is, without having to open the skull in order to peer inside or to actually take samples of brain tissue.', 'brown', 'male', '10', 'pacugi@crymail2.com', '7800987279', 'D14 vasant kunj', '1', 'India', 'New Delhi', '2017-12-06 22:41:01', '0000-00-00 00:00:00'),
(9, 'Dog', 'Toby', '7705898/Rehome/photo-1437957146754-f6377debe171.jpg', '', 7705898, 'The dog has been used by humans for many years for hunting, protection and working with livestock. Read the history of how the dog came to be a popular pet.', 'black and white', 'male', '10', 'bujar@minex-coin.com', '7800987279', 'D14 vasant kunj', '1', 'India', 'New Delhi', '2017-12-06 22:42:34', '0000-00-00 00:00:00'),
(10, 'Dog', 'Rocky', '7705898/Rehome/photo-1447029080250-270ded608d91.jpg', '', 7705898, 'Historians are not sure when humans first started keeping animals as pets. Keeping an animal for pleasure rather than for food or work was possible only for people who were well off and had the resources to feed extra mouths. Dogs most likely were the first pets, because they were domesticated so long ago. ', 'red', 'male', '10', 'raya@ax80mail.com', '7800987279', 'D14 vasant kunj', '1', 'India', 'New Delhi', '2017-12-06 22:44:37', '0000-00-00 00:00:00'),
(11, 'Cat', 'Mitty', '3312322/Rehome/photo-1493236296276-d17357e28888.jpg', '', 3312322, 'She is 2 yrs old with black hairs', 'black', 'female', '2', 'noidahod@gmaill.com', '9910225483', 'D-17 vasant Kunj 110070', '1', 'India', 'New Delhi', '2017-12-18 05:40:29', '0000-00-00 00:00:00'),
(12, 'Rabbit', 'Ass', '7811366/Rehome/1 alam.jpg', '', 7811366, 'I am looking for good family who can adopt my dog name assi', 'brown and black', 'male', '6', 'petbooq@gmail.com', '9716680125', '3-4 panchilla nivas nagar nagar palaika', '1', 'India', 'Daman and Diu', '2018-01-02 04:50:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pg_updates`
--

CREATE TABLE IF NOT EXISTS `pg_updates` (
  `p_update_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_fk` varchar(45) DEFAULT NULL,
  `page_id_fk` int(11) DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `page_data` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` mediumtext NOT NULL,
  `img_count` int(11) NOT NULL,
  `video` mediumtext NOT NULL,
  `vid_count` int(11) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`p_update_id`),
  KEY `user_id_fk` (`user_id_fk`),
  KEY `page_id_fk` (`page_id_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `pg_updates`
--

INSERT INTO `pg_updates` (`p_update_id`, `user_id_fk`, `page_id_fk`, `title`, `page_data`, `url`, `image`, `img_count`, `video`, `vid_count`, `created`, `ip`) VALUES
(1, '7705898', 1, '', '', '', '7705898/Pages/Pet Day/post_images/5b80eeab290761513d098c3a03e97c08.jpg,7705898/Pages/Pet Day/post_images/a46f6bc5edc00115045081c77f47943e.jpeg,7705898/Pages/Pet Day/post_images/8bd9796e1856de7153e62847b4fc8b93.jpg,7705898/Pages/Pet Day/post_images/737734a63d17390a288209334dd5f85e.jpg', 4, '', 0, 2017, NULL),
(32, '4460738', 31, 'My dog', '', 'www.petbooq.com', '4460738/Pages/Product/post_images/e5905b14c314ad13bc4662ab515a6f3a.jpg,4460738/Pages/Product/post_images/76493bfaf2982b7fe3bc10c41fa5d55b.jpeg', 2, '', 0, 2017, NULL),
(31, '1925873', 5, 'My dog', '', 'www.google.com', '1925873/Pages/b_page/post_images/335d6f91efd165f39a6f25ca8b615108.jpg,1925873/Pages/b_page/post_images/af58fd6e41380ad048305b80bef25985.jpeg', 2, '', 0, 2017, NULL),
(13, '2660679', 8, '', '', '', '2660679/Pages/ngo_page1/post_images/1ac9d00128a77ed862caa580b3b57a60.jpeg,2660679/Pages/ngo_page1/post_images/acdf0078f8b865349304a5e06e490d22.jpg,2660679/Pages/ngo_page1/post_images/7718c7f830a52d073ee5620792b5c75d.jpeg', 3, '', 0, 2017, NULL),
(16, '2660679', 8, '', '', '', '2660679/Pages/ngo_page1/post_images/5d9edd6618e91ba830b9f61d7e1b0f0a.jpg', 1, '', 0, 2017, NULL),
(17, '2660679', 8, '', 'The history of pets is intertwined with the process of animal domestication, and it is likely that the dog', '', '', 0, '', 0, 2017, NULL),
(18, '2660679', 8, '', '', '', '2660679/Pages/ngo_page1/post_images/3c3ca3cca261333e75f90230c2c61d54.jpeg', 1, '', 0, 2017, NULL),
(19, '1925873', 9, 'Demo', '', 'www.google.com', '1925873/Pages/Pet Care1/post_images/59ec9e594ab39077e9aab60025741811.jpg', 1, '', 0, 2017, NULL),
(20, '1925873', 9, 'My dog221', '', 'www.google.com', '1925873/Pages/Pet Care1/post_images/5465dcbaabe622d8d5b343b9a344312c.jpg,1925873/Pages/Pet Care1/post_images/947d54f835244a6fab746e08c9dfe248.jpeg', 2, '', 0, 2017, NULL),
(21, '7705898', 2, 'My dog22', '', '', '7705898/Pages/Demo/post_images/df8aa15629aa4e4c0e1f9ebd833cf9b4.jpg', 1, '', 0, 2017, NULL),
(22, '4460738', 1, 'Demo', '', 'www.google.com', '4460738/Pages/Pet Day/post_images/4e5faf1f75b90a83555c8ace64a03716.jpg', 1, '', 0, 2017, NULL),
(23, '4460738', 1, '', '', '', '4460738/Pages/Pet Day/post_images/b97d21390f1cfd48f6b7073462b84b05.jpg,4460738/Pages/Pet Day/post_images/e38cf9cd1ad0d9c8670085f5ac7b7ec8.jpeg', 2, '', 0, 2017, NULL),
(24, '4460738', 11, 'My dogsa', '', 'www.google.com', '4460738/Pages/Brand/post_images/221d861a7227b05b53a8d3283c41dabd.jpg', 1, '', 0, 2017, NULL),
(25, '7705898', 11, 'My dog22112', '', 'www.google.com', '7705898/Pages/Brand/post_images/616aabebc646432af97ba0406d9c02e7.jpg,7705898/Pages/Brand/post_images/0956ddb1932a0ef2480e2273e9b596ed.jpeg', 2, '', 0, 2017, NULL),
(26, '7705898', 12, 'My dog', '', 'www.google.com', '7705898/Pages/Pet Ambulance/post_images/c963b89f6347c94a4440196adecdab98.jpg', 1, '', 0, 2017, NULL),
(27, '7705898', 12, 'Derrr', '', 'www.google.com', '7705898/Pages/Pet Ambulance/post_images/a8dfb5b45ef80e6556215a965d86a2d3.jpg', 1, '', 0, 2017, NULL),
(28, '4460738', 12, 'My dog', '', 'www.google.com', '4460738/Pages/Pet Ambulance/post_images/944c6292819aa159ee061683e3d7d89c.jpg,4460738/Pages/Pet Ambulance/post_images/178d9507915115b5f35c7de350088f99.jpeg', 2, '', 0, 2017, NULL),
(29, '2372791', 12, 'Demo', '', 'www.google.com', '2372791/Pages/Pet Ambulance/post_images/773458a6b9f691ab0d629cf42785bc1d.jpeg,2372791/Pages/Pet Ambulance/post_images/05d975dabba1fc0d80b250800145a83c.jpeg', 2, '', 0, 2017, NULL),
(30, '1925873', 9, 'My dog1111', '', 'www.google.com', '1925873/Pages/Pet Care1/post_images/f74bd6755d049baf55fcd232131ad734.jpeg,1925873/Pages/Pet Care1/post_images/25dc01c9072dc13e6c9f95da9cc0709c.jpg', 2, '', 0, 2017, NULL),
(33, '2660679', 33, 'Demo', '', 'www.petbooq.com', '2660679/Pages/NGO Demo/post_images/a27af3cdaeaa711f7ae8151b0ed7ff06.jpg', 1, '', 0, 2017, NULL),
(34, '2660679', 33, 'Demo', '', 'www.google.com', '2660679/Pages/NGO Demo/post_images/f7a81d501aad47caea99e507079c2677.jpg,2660679/Pages/NGO Demo/post_images/f095163b93f99c2a6508b96082c02835.jpeg', 2, '', 0, 2017, NULL),
(35, '4460738', 33, 'Demo22222222', '', 'www.google.com', '4460738/Pages/NGO Demo/post_images/ed3c75943fb6cab1eb846a1714dcd7f6.jpg,4460738/Pages/NGO Demo/post_images/8d357c632889589b3401aebb228d188e.jpeg,4460738/Pages/NGO Demo/post_images/e3d70e00756f1dfa1f277ede76b1104d.jpeg,4460738/Pages/NGO Demo/post_images/800d72420c7172f082db38e83517d4d8.jpeg', 4, '', 0, 2017, NULL),
(36, '2372791', 2, '', '', 'www.google.com', '2372791/Pages/Demo/post_images/ebbac00669e6b775e696758baaf11269.jpg,2372791/Pages/Demo/post_images/bc7408c5150be2fa3c9131c9a85ceec0.jpeg', 2, '', 0, 2017, NULL),
(37, '7705898', 5, '', '', '', '7705898/Pages/b_page/post_images/d08062bbb692e517b61517628e1ab8ae.jpg', 1, '', 0, 2017, NULL),
(38, '7705898', 2, '', '', '', '7705898/Pages/Demo/post_images/f82fb094f930c0b002268d75b9076811.jpg,7705898/Pages/Demo/post_images/6e1c96193614cf4abb65565ce27e9576.jpg', 2, '', 0, 2017, NULL),
(39, '2212013', 32, '', '', '', '2212013/Pages/petday/post_images/a4aeb5e73cfa25e3444544573f42a4de.jpeg', 1, '', 0, 2017, NULL),
(40, '2395741', 1, '', '', '', '2395741/Pages/Pet Day/post_images/8ca25e7845f91d8caafd78722bc457bc.jpg,2395741/Pages/Pet Day/post_images/6fa905e930e9a61dfd23edd12e78e15b.jpeg,2395741/Pages/Pet Day/post_images/d3e501d50945697b0f04a4a58c521907.jpeg,2395741/Pages/Pet Day/post_images/3464cd622800bc2fd6eab939121971c2.jpg', 4, '', 0, 2017, NULL),
(41, '7705898', 2, '', '', '', '7705898/Pages/Demo/post_images/73a9a3cd039b790e4da860f6af7d93cc.jpeg', 1, '', 0, 2017, NULL),
(42, '7705898', 34, 'My dogiii', '', '', '7705898/Pages/Medicos Sevice/post_images/7f26d0e8d5e8e93752ba851b05897e14.jpg', 1, '', 0, 2017, NULL),
(43, '1925873', 38, '', '', '', '1925873/Pages/Page_Tesla_new/post_images/fde655ecd996fab4c852f344a1a391c3.jpg', 1, '', 0, 2017, NULL),
(44, '2660679', 7, '', '', '', '2660679/Pages/NGO_Page/post_images/eb5ac68aa3e35b96a9b8c9b5ec39ffa8.jpeg', 1, '', 0, 2017, NULL),
(45, '2660679', 7, '', '', '', '2660679/Pages/NGO_Page/post_images/d5248c6a82a446da8d0569e310852f30.jpg', 1, '', 0, 2017, NULL),
(46, '1925873', 39, 'My dog', '', 'www.google.com', '1925873/Pages/Pagetesla/post_images/aac05b78403b6f3a14cd13b5231030b0.jpg', 1, '', 0, 2017, NULL),
(47, '2660679', 36, 'Demoas', '', 'www.google.com', '2660679/Pages/Myshoppe/post_images/127348a0980bce9410d173991ad535fb.jpg', 1, '', 0, 2017, NULL),
(48, '2660679', 40, 'Derrr', '', 'www.google.com', '2660679/Pages/NewSECA/post_images/769dfa146db4d61bb7e98ec55d90c11c.jpg,2660679/Pages/NewSECA/post_images/73d6caf906db2012e806fa545af6411b.jpg,2660679/Pages/NewSECA/post_images/a9a791c21bd2d9a96eb651ce2daeb3ef.jpeg', 3, '', 0, 2017, NULL),
(49, '2395741', 41, '', '', '', '2395741/Pages/test_page/post_images/c3f2ce8f2c11f082f4b3ef2539ae39b1.jpeg,2395741/Pages/test_page/post_images/0bc1f1a2a2254d168fc3fce08d6c438d.jpg', 2, '', 0, 2017, NULL),
(50, '2395741', 10, '', '', 'www.google.com', '2395741/Pages/Prime Dog Food/post_images/aff2199e36a5cfd11366c52c7c7fbd2b.jpeg,2395741/Pages/Prime Dog Food/post_images/1acedb65a784b39e8d8d28627fe5525f.jpeg', 2, '', 0, 2017, NULL),
(51, '1925873', 4, 'ISO German Shepherd or Belgian', '', 'google.com', '', 0, '', 0, 2017, NULL),
(52, '6331589', 45, '', '', '', '', 0, '', 0, 2017, NULL),
(53, '7705898', 48, 'DDDDDDDDDDDD', '', 'www.petbooq.com', '7705898/Pages/asdads/post_images/a1ba4698552f1f502c5bfdec8f873ec0.jpg', 1, '', 0, 2017, NULL),
(54, '6331589', 45, '', '', '', '6331589/Pages/pets gift/post_images/837e7dbfcb40b3cb5529f32993b6ada9.jpg', 1, '', 0, 2017, NULL),
(55, '2660679', 49, 'My dog', '', 'www.google.com', '2660679/Pages/scvc/post_images/0f6d35fa034905364aa5bafc2fcddbca.jpg', 1, '', 0, 2017, NULL),
(56, '5013361', 50, 'Hello', 'welcome to eighty n productions', 'www.societyscars.com', '5013361/Pages/Eighty Productions/post_images/1713b437a98878958438154160cbc96b.jpg', 1, '', 0, 2017, NULL),
(57, '4460738', 11, 'nice', 'good', '', '4460738/Pages/Brand/post_images/aa5101a8bda53a93721079cbb4bf87d1.jpg', 1, '', 0, 2017, NULL),
(58, '4460738', 1, 'hello', 'jjdjd', 'w', '4460738/Pages/Pet Day/post_images/e255f6df2e617c8e5f6e6454d4abc714.jpg', 1, '4460738/Pages/Pet Day/Videos/0930a7839a6f108589723756a4e9ee52.mp4', 1, 2017, NULL),
(59, '7705898', 51, 'eddxc', 'ccc', 'www.google.com', '7705898/Pages/Pet Clinic/post_images/7768e02ba76e07c8596b481ed86539ba.png,7705898/Pages/Pet Clinic/post_images/d0ca4deb9ce2a5794f8f92e669768e7a.png', 2, '', 0, 2017, NULL),
(60, '2660679', 53, '', '', '', '2660679/Pages/Friendicoes Page/post_images/e6e2215cae0ebce233f83734eab20f58.jpg', 1, '', 0, 2017, NULL),
(61, '7025846', 54, '', '', '', '7025846/Pages/Duke Page/post_images/5d18a1e87681c28f33996583b7cbbe72.jpg,7025846/Pages/Duke Page/post_images/67770d652c88df0026a3118e3b7a2bf5.jpg,7025846/Pages/Duke Page/post_images/fd742d3a555fbfe995752fe76048db2e.jpg', 3, '', 0, 2017, NULL),
(62, '1925873', 4, 'dsss', '', '', '1925873/Pages/Demo2/post_images/300f9a3e25615b314f91c7a478478132.jpg,1925873/Pages/Demo2/post_images/9d82d6b2e755d0058c1b46b12617567d.jpeg,1925873/Pages/Demo2/post_images/4d591458a9ffd322ba8715f5d0fc4290.jpeg', 3, '', 0, 2017, NULL),
(63, '1128770', 57, '', 'My cat daizy', '', '1128770/Pages/Cats Care/post_images/12a41a8120b3a2689f8ebd9899c798f5.jpg', 1, '', 0, 2017, NULL),
(64, '1128770', 57, '', '', '', '1128770/Pages/Cats Care/post_images/7635f730735202996a3d9a7fe81f0442.jpg', 1, '', 0, 2018, NULL),
(65, '2395741', 1, '', '', '', '2395741/Pages/Pet Day/post_images/ae906fd8b874e1f15fe48ebecee11d85.jpg', 1, '', 0, 2018, NULL),
(66, '2395741', 10, '', 'A pet or companion animal is an animal kept primarily for a person''s company, protection, or entertainment rather than as a working animal, livestock, or laboratory animal. Popular pets are often noted for their attractive appearances and their loyal or p', '', '', 0, '', 0, 2018, NULL),
(67, '2395741', 12, '', 'A pet or companion animal is an animal kept primarily for a person''s company, protection, or entertainment rather than as a working animal, livestock, or laboratory animal. Popular pets are often noted for their attractive appearances and their loyal or p', '', '', 0, '', 0, 2018, NULL),
(68, '2395741', 12, '', 'A pet or companion animal is an animal kept primarily for a person''s company, protection, or entertainment rather than as a working animal, livestock, or laboratory animal. Popular pets are often noted for their attractive appearances and their loyal or p', '', '', 0, '', 0, 2018, NULL),
(69, '2395741', 58, '', '', '', '2395741/Pages/Cats Care/post_images/cc404d361d687694708f1873d9014c49.jpeg', 1, '', 0, 2018, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_post_id` int(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `posts` varchar(255) NOT NULL,
  `url` varchar(200) NOT NULL,
  `image` mediumtext NOT NULL,
  `img_count` int(11) NOT NULL,
  `video` mediumtext NOT NULL,
  `vid_count` int(11) NOT NULL,
  `wall_post_id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `share_with` int(11) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=307 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `child_post_id`, `title`, `posts`, `url`, `image`, `img_count`, `video`, `vid_count`, `wall_post_id`, `type`, `share_with`, `time`) VALUES
(2, 2372791, 'Explore your business goes here for you and me which help for you improve me ', 'Explore your business goes here for you and me which help for you improve me Explore your business goes here for you and me which help for you improve me Explore your business goes here for you and me which help for you improve me ', 'www.google.com', '2372791/post_images/597505b0b0b76d1a4a3c75a610c24709.jpg', 1, '', 0, 0, '', 0, '2017-11-23 11:04:27'),
(3, 7705898, '', '', '', '7705898/post_images/03f280a25bc4fdd401b160a93047320c.jpg,7705898/post_images/d3f2542f11d250cd37f03ca04a3fcfb4.jpeg,7705898/post_images/1711fd7cf674c9b6809f5e56da75b371.jpg,7705898/post_images/fb6ed3ee620a83e7216408804c5b2d5a.jpg', 4, '', 0, 0, '', 0, '2017-11-23 11:07:36'),
(4, 2372791, '', 'Musk is a class of aromatic substances commonly used as base notes in perfumery. They include glandular secretions from animals such as the musk deer, numerous plants emitting similar fragrances, and artificial substances with similar odors.', '', '2372791/post_images/9191e3794a876924940fe19a5d0207d9.jpg', 1, '', 0, 0, '', 0, '2017-11-23 11:08:54'),
(5, 2372791, '', '', '', '2372791/post_images/43be31388db5a6d6816eaec9abdf524c.jpeg,2372791/post_images/525a9b5b61b6ae44d7b3f65d1d8604de.jpeg,2372791/post_images/e58b515a4c33e22234450961a01a2b00.jpg,2372791/post_images/b378ec64a6f62b45d7124d387cef517b.jpg,2372791/post_images/0ff42a94358c83e11c076561f63621ba.jpeg,2372791/post_images/7ef5625f68cc95ed789df7c3b7b7d739.jpg,2372791/post_images/81edd43c189caa2a90b2f42abcc4f39a.jpeg,2372791/post_images/268dbb1d50c3a1941616de2fac5305d5.jpeg', 8, '', 0, 0, '', 0, '2017-11-23 11:09:35'),
(6, 7705898, '', '', '', '7705898/post_images/c29141bc4f0255636b07e79b6c28b956.jpeg,7705898/post_images/e7a09de5d02b66ba68a66bd6d23716d9.jpeg,7705898/post_images/0a766947fc05f6fd0e473478e6377660.jpeg,7705898/post_images/9aa3ed4a60f8724b823363fd960c360f.jpg,7705898/post_images/239b6e0a5dbda4433df942be5fafd07f.jpg', 5, '', 0, 2372791, '', 0, '2017-11-23 11:11:56'),
(7, 2372791, '', '', '', '2372791/post_images/198e48325cdffb19a60cf9fba5c62205.jpg', 1, '', 0, 7705898, '', 0, '2017-11-23 11:17:05'),
(8, 8181890, 'Demo', 'wdq', 'www.google.com', '', 2, '', 0, 0, '', 0, '2017-11-23 11:41:38'),
(9, 7705898, 'Demo2121', 'as', 'www.google.com', '7705898/post_images/61d1f217a3e4c6be7e4145789ce37ace.jpg,7705898/post_images/109f628cdb11b4bdfe77fb1fe80de16d.jpeg', 2, '', 0, 0, '', 0, '2017-11-23 11:43:49'),
(10, 7705898, '', '', '', '7705898/post_images/45d0a79930def8707e8f4d601c96216e.jpg,7705898/post_images/d48bd80f6bbf24f462ef1e2cf5ac84dc.jpeg', 2, '', 0, 0, '', 0, '2017-11-23 12:20:27'),
(11, 2372791, '', '', 'www.petbooq.com', '2372791/post_images/d7f008e661eb019995b4cc39525f4214.jpg,2372791/post_images/1e704fc866823ed65df1fdf675d2d18c.jpg', 2, '', 0, 7705898, '', 0, '2017-11-23 12:25:29'),
(12, 1925873, '', '', '', '1925873/post_images/efee0680e9198f20ba1eac720a2a10f3.jpg', 1, '', 0, 0, '', 0, '2017-11-23 12:30:10'),
(13, 1925873, '', '', '', '1925873/post_images/64da17b1dc83ad60b6c505aa7704e2ff.jpg,1925873/post_images/f10a6e74bba4fbddad4ec90c947f535d.jpg', 2, '', 0, 0, '', 0, '2017-11-23 12:37:20'),
(14, 4558759, '', '', '', '4558759/post_images/40c174cba31e060da574b5e9fda828c2.jpg,4558759/post_images/3285a71237f5116d87e7d7c966e607ea.jpeg', 2, '', 0, 0, '', 0, '2017-11-23 14:24:22'),
(15, 4460738, 'My dog', 'as', 'www.google.com', '4460738/post_images/9075079f610ddd119ae6a57082b95382.jpg,4460738/post_images/b3556a23b10c9f2c2860922e38e457e6.jpg', 2, '', 0, 0, '', 0, '2017-11-23 16:35:11'),
(16, 4460738, 'Derrr', '', '', '4460738/post_images/e8532ea3e0b5b45fdeb272c7333fcd4a.jpg,4460738/post_images/af1af5653d550d7aca185c45bbbd304c.jpg', 2, '', 0, 0, '', 0, '2017-11-23 16:35:25'),
(17, 1925873, 'DDDDDDDDDDDD', '', 'www.google.com', '1925873/post_images/ad4765f3dd1d01d1f3ab5322655e9251.jpg,1925873/post_images/854d6a27ca287c8edc4377e7a0a7c4ad.jpg', 2, '', 0, 0, '', 0, '2017-11-23 17:58:21'),
(18, 1925873, '', '', '', '1925873/post_images/fab0e1884d8488836f55a506e36f4cd2.jpg', 1, '', 0, 0, '', 0, '2017-11-24 10:58:35'),
(19, 4558759, '', '', '', '4558759/post_images/6678a3afc54dcc65f09f0d9b4db48d1e.jpg', 1, '', 0, 0, '', 0, '2017-11-24 11:00:32'),
(20, 4558759, 'Demo', 'dsafafd', 'www.petbooq.com', '4558759/post_images/740088840d95a03d375f65e2b2f4e849.jpg', 1, '', 0, 0, '', 0, '2017-11-24 11:07:52'),
(21, 1155933, 'Protect your pets', 'Hello Protect your pets', 'http://petbooqtesting.com', '', 2, '', 0, 0, '', 0, '2017-11-24 12:10:08'),
(22, 1155933, '', '', '', '', 1, '', 0, 0, '', 0, '2017-11-24 12:10:49'),
(23, 1155933, '', '', '', '', 1, '', 0, 0, '', 0, '2017-11-24 12:11:39'),
(24, 2372791, '', '', '', '2372791/post_images/73805da81920d3e38bc609c80257e9f3.jpg', 1, '', 0, 0, '', 0, '2017-11-24 12:12:42'),
(25, 2372791, '', '', '', '2372791/post_images/5c21e8b7ced1af7402ea5dff1f1a0329.jpg', 1, '', 0, 0, '', 0, '2017-11-24 12:13:41'),
(26, 2660679, '', '', '', '2660679/post_images/1f7963330c4b30c3f6b957af9b5791df.jpg,2660679/post_images/6080f648a282a2229dda2674cc0a2ae5.jpg,2660679/post_images/44cff533bfe8e6d257af7155813145ef.jpg,2660679/post_images/de1bef46440ea4689271f2cbdec7e08b.jpg', 4, '', 0, 0, '', 0, '2017-11-24 14:49:46'),
(27, 2660679, 'Demo', '', 'www.petbooq.com', '2660679/post_images/edcf5ded1f668f92d3f907ed443d63ba.jpg', 1, '', 0, 0, '', 0, '2017-11-24 14:49:56'),
(31, 4967682, '', '', '', '4967682/post_images/6c0348c38d1bfd2913206e0f7914fb8f.jpg', 1, '', 0, 0, '', 0, '2017-11-24 14:53:58'),
(32, 4460738, '', '', '', '4460738/post_images/b888b6c2dbb51fe34bd56a434d669e5a.jpg', 1, '', 0, 0, '', 0, '2017-11-24 15:42:40'),
(34, 1925873, '', '', 'www.google.com', '1925873/post_images/78bbe14af86b6266cb007fb0cb8401fa.jpeg', 1, '', 0, 0, '', 0, '2017-11-24 16:00:35'),
(39, 2660679, '', '', '', '2660679/post_images/aa604a73be7ecf7231f87d4e486369d8.jpeg,2660679/post_images/85146d5b5450c6cbd6cda7e22f32c1e4.jpg,2660679/post_images/451c59b9cfb5cdb3801674745669e485.jpeg,2660679/post_images/93c08b18340be09ffb38c1636fd03524.jpg', 4, '', 0, 0, '', 0, '2017-11-24 16:08:47'),
(40, 4460738, 'DDDDDDDDDDDD', 'sdsdsd', '', '4460738/post_images/0e74ee18925a12a58110ce664aab2dc0.jpg', 1, '', 0, 0, '', 0, '2017-11-24 16:09:31'),
(41, 1925873, '', '', '', '1925873/post_images/7968d05848f2ed8b2392930da2577118.jpg', 1, '', 0, 0, '', 0, '2017-11-24 16:12:46'),
(42, 2660679, 'Demowa', '', '', '2660679/post_images/d7d0f08dd9f0759e29d7d2f1c6831dd7.jpg', 1, '', 0, 0, '', 0, '2017-11-24 16:18:58'),
(43, 2660679, 'DDDDDDDDDDDDas', '', 'www.petbooq.com', '2660679/post_images/6155eaa4d5f2e0e19418bba39d96a19b.jpg', 1, '', 0, 0, '', 0, '2017-11-24 16:19:23'),
(44, 2660679, 'Derrrqw', '', 'www.google.com', '2660679/post_images/657247ae09ace997fed5fa32037439dd.jpg', 1, '', 0, 0, '', 0, '2017-11-24 16:23:26'),
(45, 1925873, '', '', '', '1925873/post_images/a8755c632bc64cbf6c337e88813ace25.jpg', 1, '', 0, 0, '', 0, '2017-11-24 16:44:10'),
(46, 1925873, '', '', '', '1925873/post_images/0a19ff3e1cfdf3352bf94268b63a6cf4.jpeg', 1, '', 0, 0, '', 0, '2017-11-24 16:44:40'),
(47, 2660679, 'DDDDDDDDDDDD', 's', 'www.google.com', '2660679/post_images/e763c9123a9437d8c71e85ada6d66230.jpg,2660679/post_images/5e8ab23220a0e998e19053c2dfb89bca.jpg,2660679/post_images/e801c57163c0d612ab5355a414c1e952.jpg', 3, '', 0, 0, '', 0, '2017-11-24 16:45:14'),
(50, 4460738, 'Demo', 'sss', '', '4460738/post_images/f031493bd40acc43a88dd8d458b3de61.jpg,4460738/post_images/fc45edeb381868e002d099aa45e6ee02.jpg,4460738/post_images/bd16e3a6b1c1225733bf4f8193fcd6e8.jpg', 3, '', 0, 0, '', 0, '2017-11-24 16:49:17'),
(51, 1925873, 'Demo', '', '', '1925873/post_images/4b4cd9f98de69be2521bbf5157ee5bf0.jpg,1925873/post_images/fec090d3ae3d59c561efd9365e6a127a.jpg', 2, '', 0, 0, '', 0, '2017-11-24 16:50:37'),
(55, 1925873, 'Demo', '', 'www.petbooq.com', '1925873/post_images/d964fb67d6fc5711b95778dcf9391485.jpg,1925873/post_images/45cbad1a5b1bb1cdddd8195f6871af3e.jpg', 2, '', 0, 0, '', 0, '2017-11-24 16:53:32'),
(58, 1921698, '', '', '', '', 0, '', 0, 0, '', 0, '2017-11-24 17:07:24'),
(59, 1921698, '', '', '', '', 0, '', 0, 0, '', 0, '2017-11-24 17:07:29'),
(61, 1921698, '', '', '', '', 1, '', 0, 0, '', 0, '2017-11-24 17:08:17'),
(62, 1921698, '', '', '', '', 0, '', 0, 0, '', 0, '2017-11-24 17:08:25'),
(64, 1921698, '', '', '', '', 0, '', 0, 0, '', 0, '2017-11-24 17:10:12'),
(65, 1925873, 'My dog', '', 'www.petbooq.com', '1925873/post_images/11fd20dbce71a1f58cdeb6935513bc5c.jpeg,1925873/post_images/82c8378c56feb87aa7136d1a585ed284.jpg', 2, '', 0, 0, '', 0, '2017-11-24 17:12:46'),
(66, 1921698, '', '', '', '', 0, '', 0, 0, '', 0, '2017-11-24 17:31:05'),
(67, 1921698, '', '', '', '', 0, '', 0, 0, '', 0, '2017-11-24 17:31:08'),
(68, 1921698, '', '', '', '', 0, '', 0, 0, '', 0, '2017-11-24 17:31:10'),
(69, 1921698, '', '', '', '', 1, '', 0, 0, '', 0, '2017-11-24 17:32:18'),
(70, 1925873, '', '', 'www.petbooq.com', '1925873/post_images/197a9d9e8eed47d160231b63b04c7001.jpeg,1925873/post_images/d7e5836cbf2adc441b9f7901243dd270.jpg', 2, '', 0, 0, '', 0, '2017-11-24 17:41:34'),
(71, 1925873, 'Demo', '', 'www.google.com', '1925873/post_images/725062dadd00f94148c8514003bc6772.jpg', 1, '', 0, 0, '', 0, '2017-11-24 17:54:04'),
(72, 2660679, 'Demo', '', 'www.petbooq.com', '2660679/post_images/d110883bb15f0f1b12150fc658e2de70.jpg,2660679/post_images/d3daeac8b9b48355c66935cba6569b27.jpg', 2, '', 0, 0, '', 0, '2017-11-24 18:00:46'),
(73, 2660679, '', '', '', '2660679/post_images/f2b342360cbfc31bcf293cb55e4e5f67.jpg', 1, '', 0, 0, '', 0, '2017-11-24 18:05:54'),
(74, 2660679, 'Demosas', 'asa', 'www.petbooq.com', '2660679/post_images/1b02e00c617b2696c24a8ec69ad381d0.jpeg', 1, '', 0, 0, '', 0, '2017-11-24 18:15:35'),
(75, 2660679, '', '', '', '2660679/post_images/21d030275f1ab24b425aeb88705f4be6.jpeg,2660679/post_images/befd5f44073588ae3504267f216f528c.jpg,2660679/post_images/55c91db4811d232346db793741e6b483.jpg', 3, '', 0, 0, '', 0, '2017-11-25 11:38:05'),
(76, 2660679, '', '', '', '2660679/post_images/975a9970cc8b30d38e244dffec3d0d3e.jpg,2660679/post_images/ff887f1b3346ae89b6da87254a60aadc.jpg,2660679/post_images/d3862127eadba0524dae0ca019d40755.jpg,2660679/post_images/f5b1ccab861ff568f20b9235fd4fab48.jpeg', 4, '', 0, 0, '', 0, '2017-11-25 11:38:54'),
(77, 2660679, '', '', '', '2660679/post_images/cdb3fa078f6aac382f2d54a8b95ea13b.jpeg,2660679/post_images/605117bd42cca0d612769648dba76b1e.jpg', 2, '', 0, 0, '', 0, '2017-11-25 11:40:16'),
(78, 1925873, 'My dog44', '', 'www.petbooq.com', '1925873/post_images/d718e979f0bede6126137da12c007c88.jpeg,1925873/post_images/5b80b15d134d426d73d1cdec385bfbf5.jpg', 2, '', 0, 0, '', 0, '2017-11-27 11:25:47'),
(79, 2395741, '', '', '', '2395741/post_images/40110e142a44888e9d19aefe7157e4cd.JPG', 1, '', 0, 0, '', 0, '2017-11-27 17:12:09'),
(80, 2395741, '', '', '', '2395741/post_images/5dd71a5a5029eeb03c5f2c4d08d02cf5.JPG', 1, '', 0, 0, '', 0, '2017-11-27 17:13:59'),
(81, 2395741, '', '', '', '', 0, '', 0, 0, '', 0, '2017-11-27 18:01:34'),
(82, 4365404, '', '', '', '4365404/post_images/625ace2d775fc225892a5666dfb95962.jpeg,4365404/post_images/268d64b51d87e965530f60f55e040580.jpg,4365404/post_images/91047002b5f777b2787821ff14ea7100.jpg,4365404/post_images/e96d3ce932bf2eefd3acada174f2ac89.jpg', 4, '', 0, 0, '', 0, '2017-11-28 12:32:04'),
(83, 7705898, 'My dog', '', 'www.google.com', '7705898/post_images/1660ad68bedaf0829d2ffec52ebefb51.jpg', 1, '', 0, 2372791, '', 0, '2017-11-28 15:41:35'),
(84, 2212013, 'Hello this post', 'Hello this post Hello this post Hello this post v', 'https://petpartners.org', '', 0, '', 0, 0, '', 0, '2017-11-28 16:20:36'),
(85, 5013361, 'Its Food Time', 'assi want to eat mice cream', '', '5013361/post_images/10dca0db6a4268e323a3286f9216e16e.jpeg', 1, '', 0, 0, '', 0, '2017-11-28 17:13:11'),
(86, 2395741, '', '', '', '2395741/post_images/e766bde719a3517e413fe56c2aff70f8.jpg', 1, '', 0, 5013361, '', 0, '2017-11-28 17:23:11'),
(87, 2395741, '', '', '', '2395741/post_images/7264b28f072ba1bb89c5d3e501c49e55.jpg', 1, '', 0, 0, '', 0, '2017-11-28 17:24:04'),
(88, 2395741, '', '', '', '2395741/post_images/0337b21d0027c93ccfe55c9db8853320.jpg', 1, '', 0, 5013361, '', 0, '2017-11-28 17:24:28'),
(89, 5013361, '', '80', '', '5013361/post_images/6ee23a5eecfc6fce3ab9a031bb3e8d70.jpg', 1, '', 0, 0, '', 0, '2017-11-28 17:25:11'),
(90, 2395741, '', '', '', '2395741/post_images/9b3697ad45a0c75c1cc4be60438ea504.jpg', 1, '', 0, 5013361, '', 0, '2017-11-28 17:26:09'),
(91, 5013361, '', '', '', '5013361/post_images/8ea12ac309a06b9b43b45d61bee7fe34.jpg', 1, '', 0, 2395741, '', 0, '2017-11-28 17:28:28'),
(92, 0, '', '', '', '', 1, '', 0, 0, '', 0, '2017-11-28 18:23:11'),
(93, 4593368, '', '', '', '4593368/post_images/310d9b6f27593d90931ffd4afe0ea7ce.jpg', 1, '', 0, 0, '', 0, '2017-11-28 18:34:13'),
(94, 4593368, '', '', '', '4593368/post_images/cad5a792185d2a8a50cec8ae37a8820e.jpeg', 1, '', 0, 0, '', 0, '2017-11-28 18:34:46'),
(95, 2395741, '', '', '', '2395741/post_images/7b6abec3668a810964a4e4ab0d9f42fa.jpeg,2395741/post_images/a9fc81c61d7372a096d61e1b87f4bc0c.jpg,2395741/post_images/f662fa59507cbe07501f718e13a3cd03.jpg', 3, '', 0, 0, '', 0, '2017-11-29 10:28:56'),
(96, 2395741, 'Explore your business goes here for you and me which help for you improve me ', 'Explore your business goes here for you and me which help for you improve me  Explore your business goes here for you and me which help for you improve me Explore your business goes here for you and me which help for you improve me ', '', '2395741/post_images/097f0b4a1153ecee043e9c4e0c06f543.jpeg,2395741/post_images/2ef42cd0a45eacbb3c2fd45ec822c19b.jpeg', 2, '', 0, 0, '', 0, '2017-11-29 11:12:18'),
(97, 2395741, '', '', '', '2395741/post_images/b1c20c15a1fee9caf3db50e014b24c41.jpeg', 1, '', 0, 5013361, '', 0, '2017-11-29 11:14:37'),
(98, 7705898, '', 'Teaching commands Teaching commands Teaching commands', 'https://www.pedigree.com/dog-care/training/teaching-commands', '', 0, '', 0, 0, '', 0, '2017-11-29 12:04:31'),
(99, 7705898, '', '', '', '7705898/post_images/5eea366addf1ab7fba90df25208da975.jpeg', 1, '', 0, 2372791, '', 0, '2017-11-29 12:09:03'),
(100, 2395741, 'Teaching commands', '', 'https://www.pedigree.com/dog-care/training/teaching-commands', '', 0, '', 0, 0, '', 0, '2017-11-29 15:29:17'),
(102, 2395741, '', '', '', '2395741/post_images/d97c6535b9a07cdbc7b36f323bf4cd2e.jpg', 1, '', 0, 0, '', 0, '2017-11-30 14:30:34'),
(103, 2395741, 'Explore your business goes here for you and me which help for you improve me ', 'Explore your business goes here for you and me which help for you improve me  Explore your business goes here for you and me which help for you improve me ', '', '2395741/post_images/39c1fe17db0858014ff183526c054636.jpeg', 1, '', 0, 0, '', 0, '2017-11-30 14:31:01'),
(104, 7705898, 'Demowqwww', '', 'www.google.com', '7705898/post_images/4c0e57a0fe8ae73cc162a2ba80e4cfe0.jpg', 1, '', 0, 0, '', 0, '2017-11-30 14:31:04'),
(105, 2395741, '', '', 'www.google.com', '2395741/post_images/9485c1e7f1d42530d67a64a5138d08f4.jpg', 1, '', 0, 0, '', 0, '2017-11-30 14:44:34'),
(106, 6331589, '', '', '', '6331589/post_images/4562fde5c2812eeb575e09c13eec87b4.jpg', 1, '', 0, 0, '', 0, '2017-12-01 13:56:24'),
(107, 4460738, 'qwaa', 'a', 'www.google.com', '4460738/post_images/a0766d34ac1e4122fee89fadc1e5c627.jpg,4460738/post_images/588cc4636645fdf61ad4e5cb5046a7ad.jpeg', 2, '', 0, 0, '', 0, '2017-12-01 16:47:27'),
(108, 4460738, '', '', '', '4460738/post_images/35a3945148aa9a9e07e2c4757b088f54.jpg', 1, '', 0, 0, '', 0, '2017-12-01 17:51:09'),
(109, 9183749, '', '', '', '9183749/post_images/5b7750f0210e156f611a9feff61ae2ba.jpg', 1, '', 0, 0, '', 0, '2017-12-01 18:20:03'),
(110, 9754021, '', '', '', '9754021/post_images/b2bd4a7f1e41975c0bfa42e719ad76f1.jpeg', 1, '', 0, 0, '', 0, '2017-12-02 15:36:52'),
(111, 0, 'Explore your business goes here for you and me which help for you improve me ', 'Explore your business goes here for you and me which help for you improve me  Explore your business goes here for you and me which help for you improve me ', '', '', 1, '', 0, 0, '', 0, '2017-12-02 15:38:26'),
(112, 0, '', '', '', '', 1, '', 0, 0, '', 0, '2017-12-02 15:38:43'),
(113, 0, '', '', '', '', 0, '', 0, 0, '', 0, '2017-12-02 15:38:44'),
(114, 9754021, '', '', '', '9754021/post_images/ed71698b7ba4087839e8759a76acb3a3.jpeg', 1, '', 0, 0, '', 0, '2017-12-02 15:39:05'),
(115, 2660679, 'asaa', '', 'www.google.com', '2660679/post_images/d3629e7594cdcc71740a319cff4c735a.jpg,2660679/post_images/878694596cfa985d5d69c89effae4d4b.jpeg', 2, '', 0, 0, '', 0, '2017-12-04 11:48:25'),
(116, 7705898, 'aaaa11', 'asd', '', '7705898/post_images/3c5f77f233524eaabc2653c184996e7d.jpeg,7705898/post_images/6557dcf30845c84a3585d53bb9ea43f5.jpeg', 2, '', 0, 0, '', 0, '2017-12-04 14:00:20'),
(117, 4460738, 'Demo21221', 'sss', '', '4460738/post_images/2030ed0d9bb7872dc6d37dba2b657d34.jpg', 1, '', 0, 7705898, '', 0, '2017-12-04 15:29:32'),
(118, 2660679, 'dsaff', 'ffgggg', '', '2660679/post_images/52d0a0bdb9b21f9973c94d53b74fc36a.jpg', 1, '', 0, 0, '', 0, '2017-12-04 15:55:49'),
(119, 4460738, 'aaaa11', 'asd', '', '7705898/post_images/3c5f77f233524eaabc2653c184996e7d.jpeg,7705898/post_images/6557dcf30845c84a3585d53bb9ea43f5.jpeg', 2, '', 0, 0, 'shared', 7705898, '2017-12-04 14:00:20'),
(120, 7705898, 'fftyu55', 'dfr', 'www.google.com', '7705898/post_images/2455b6d95119ba2b3712bf77292720a1.jpg,7705898/post_images/5a58be6cc593763c0a2aa64c7f94f55f.jpeg', 2, '', 0, 0, '', 0, '2017-12-04 17:02:13'),
(121, 7705898, '', '', 'www.google.com', '2395741/post_images/9485c1e7f1d42530d67a64a5138d08f4.jpg', 1, '', 0, 0, 'shared', 4460738, '2017-11-30 14:44:34'),
(122, 4460738, 'df444', 'der', 'www.google.com', '4460738/post_images/4b548c25e4ec1c0c5fb83da87d0500ff.jpg,4460738/post_images/858e917dd13c14c9f77d65bbf1f53d10.jpeg,4460738/post_images/cdacb8bf89711d629c4052909593fc5f.jpeg', 3, '', 0, 0, '', 0, '2017-12-04 17:17:34'),
(123, 4460738, 'df444', 'der', 'www.google.com', '4460738/post_images/4b548c25e4ec1c0c5fb83da87d0500ff.jpg,4460738/post_images/858e917dd13c14c9f77d65bbf1f53d10.jpeg,4460738/post_images/cdacb8bf89711d629c4052909593fc5f.jpeg', 3, '', 0, 0, 'shared', 2372791, '2017-12-04 17:17:34'),
(124, 2372791, 'hgt', 'dsd', 'www.google.com', '2372791/post_images/35a15e55cd9764d434a792c6c21f0804.jpeg,2372791/post_images/921837ce114745871482b256d7747eb8.jpeg', 2, '', 0, 0, '', 0, '2017-12-04 17:33:35'),
(125, 2395741, 'Demo', 'sss', '', '4460738/post_images/f031493bd40acc43a88dd8d458b3de61.jpg,4460738/post_images/fc45edeb381868e002d099aa45e6ee02.jpg,4460738/post_images/bd16e3a6b1c1225733bf4f8193fcd6e8.jpg', 3, '', 0, 0, 'shared', 7705898, '2017-11-24 16:49:17'),
(126, 2395741, 'hgt', 'dsd', 'www.google.com', '2372791/post_images/35a15e55cd9764d434a792c6c21f0804.jpeg,2372791/post_images/921837ce114745871482b256d7747eb8.jpeg', 2, '', 0, 0, 'shared', 7705898, '2017-12-04 17:33:35'),
(127, 7705898, 'Teaching', 'Teaching TeachingTeachingTeachingTeachingTeachingTeachingTeachingTeachingTeaching', 'https://www.pedigree.com/dog-care/training/teaching-commands', '', 0, '', 0, 0, '', 0, '2017-12-05 11:52:52'),
(128, 7705898, 'Teaching commands', 'TeachingTeachingTeachingTeachingTeaching', '', '', 0, '', 0, 0, '', 0, '2017-12-05 11:53:28'),
(129, 2395741, 'Demowa', '', '', '2660679/post_images/d7d0f08dd9f0759e29d7d2f1c6831dd7.jpg', 1, '', 0, 0, 'shared', 7705898, '2017-11-24 16:18:58'),
(130, 2395741, 'DDDDDDDDDDDD', 'sdsdsd', '', '4460738/post_images/0e74ee18925a12a58110ce664aab2dc0.jpg', 1, '', 0, 0, 'shared', 7705898, '2017-11-24 16:09:31'),
(131, 2395741, '', '', '', '2660679/post_images/aa604a73be7ecf7231f87d4e486369d8.jpeg,2660679/post_images/85146d5b5450c6cbd6cda7e22f32c1e4.jpg,2660679/post_images/451c59b9cfb5cdb3801674745669e485.jpeg,2660679/post_images/93c08b18340be09ffb38c1636fd03524.jpg', 4, '', 0, 0, 'shared', 7705898, '2017-11-24 16:08:47'),
(132, 2395741, 'Teaching commands', 'TeachingTeachingTeachingTeachingTeaching', '', '', 0, '', 0, 0, 'shared', 7705898, '2017-12-05 11:53:28'),
(133, 2395741, '', '', '', '', 0, '', 0, 0, '', 0, '2017-12-05 12:22:50'),
(134, 7705898, '', '', '', '7705898/Pages/Pet Day/post_images/5b80eeab290761513d098c3a03e97c08.jpg,7705898/Pages/Pet Day/post_images/a46f6bc5edc00115045081c77f47943e.jpeg,7705898/Pages/Pet Day/post_images/8bd9796e1856de7153e62847b4fc8b93.jpg,7705898/Pages/Pet Day/post_images/737734a63d17390a288209334dd5f85e.jpg', 4, '', 0, 0, 'shared', 4460738, '2017-12-05 13:10:41'),
(135, 7705898, 'DDDDDDDDDDDD', 'sdsdsd', '', '4460738/post_images/0e74ee18925a12a58110ce664aab2dc0.jpg', 1, '', 0, 0, 'shared', 4460738, '2017-11-24 16:09:31'),
(136, 7705898, 'My dog1111', '', 'www.google.com', '1925873/Pages/Pet Care1/post_images/f74bd6755d049baf55fcd232131ad734.jpeg,1925873/Pages/Pet Care1/post_images/25dc01c9072dc13e6c9f95da9cc0709c.jpg', 2, '', 0, 0, 'shared', 2395741, '2017-12-05 14:15:47'),
(137, 7705898, '', '', '', '7705898/post_images/60ab27765cc05c6965f5e68e4023bb47.jpeg', 1, '', 0, 0, '', 0, '2017-12-05 14:24:05'),
(138, 7705898, 'Demo', '', 'www.google.com', '1925873/Pages/Pet Care1/post_images/59ec9e594ab39077e9aab60025741811.jpg', 1, '', 0, 0, 'shared', 2395741, '2017-12-05 14:49:30'),
(139, 4460738, 'csdd', 'ssss', 'www.google.com', '4460738/post_images/ab3bd81d4d8d6c83296d048977f02710.jpg', 1, '4460738/Videos/c5312fe086265f4dab124c00b91608cc.mp4', 1, 0, '', 0, '2017-12-05 16:10:18'),
(140, 4460738, 'hello', 'jjdjd', 'w', '4460738/Pages/Pet Day/post_images/e255f6df2e617c8e5f6e6454d4abc714.jpg', 1, '4460738/Pages/Pet Day/Videos/0930a7839a6f108589723756a4e9ee52.mp4', 1, 0, 'shared', 7705898, '2017-12-05 16:13:30'),
(141, 7705898, 'gggre', 'ggg', 'www.google.com', '7705898/post_images/ca96ee81fd491b0b3abe7fe78bd0ef54.jpg,7705898/post_images/45ceeef12f6d365c5dec33adc59e3ce3.png', 2, '', 0, 0, '', 0, '2017-12-05 16:21:10'),
(142, 7025846, '', '', '', '7025846/post_images/2f02745a406f87947995f7d4eb76a420.jpg,7025846/post_images/906e2d8f312220b7ac0d18c655432f6b.jpg,7025846/post_images/c34bb2712cbf7fea901e248a55238091.jpg,7025846/post_images/370a1f296f983ae547ebf21f1c784b7b.jpg', 4, '', 0, 0, '', 0, '2017-12-06 14:28:42'),
(143, 7025846, '', 'A survey performed by Rover.com concluded that almost half of pets in the United States were given traditionally human names this year.', '', '', 0, '', 0, 0, '', 0, '2017-12-06 14:46:15'),
(144, 7025846, '', '', 'https://www.petful.com/buzz/10-most-popular-dog-names/', '', 0, '', 0, 0, '', 0, '2017-12-06 14:46:39'),
(145, 7025846, '', '', 'https://www.petful.com/buzz/10-most-popular-dog-names/', '', 0, '', 0, 0, '', 0, '2017-12-06 14:47:08'),
(146, 7025846, '', '', 'https://www.petful.com/buzz/10-most-popular-dog-names/', '7025846/post_images/d06496e275eb8394217ccb1ef0c109c5.jpg', 1, '', 0, 0, '', 0, '2017-12-06 14:47:45'),
(147, 7025846, '', 'https://www.petful.com/buzz/10-most-popular-dog-names/', 'https://www.petful.com/buzz/10-most-popular-dog-names/', '', 0, '', 0, 0, '', 0, '2017-12-06 14:48:25'),
(148, 6230533, 'Demo112', '12', 'www.petbooq.com', '6230533/post_images/d07fa4881a79773baec98e8d9964685f.jpg,6230533/post_images/d7d03dcf3e6c30b692aa1e621d85f53c.jpeg,6230533/post_images/0bc984cf3eb85c55a1e13ffa799c103a.jpeg,6230533/post_images/225596d69cad0f9f3ed8e2ac185731f8.jpeg', 4, '', 0, 0, '', 0, '2017-12-07 12:44:12'),
(149, 2580830, '', '', '', '2580830/post_images/ee41962e83cc602c4abaa4b0392c3635.jpg,2580830/post_images/3f3e4d25b31a5d6f6519462512697cc4.jpg,2580830/post_images/a3d6d59fab4c428b1574e104c229268a.jpg,2580830/post_images/08b69d329af8e37c7df2d6aca3a56161.jpg,2580830/post_images/88bde8c6397051102611252e8354b959.jpg,2580830/post_images/ddb9f26543d808746f4abf962faf176e.jpg', 6, '', 0, 0, '', 0, '2017-12-07 15:32:07'),
(150, 2580830, '', 'The history of pets is intertwined with the process of animal domestication, and it is likely that the dog, as the first domesticated species, was also the first pet. Perhaps the initial steps toward domestication were taken largely through the widespread', '', '2580830/post_images/1c819f15f2363ea786fa5adf599cb440.jpg,2580830/post_images/ff18a4a5bc98f15e72794d8c0303cda1.jpg,2580830/post_images/bf36c77098a165aec2343a8facd0fe2c.jpg,2580830/post_images/4dc1a7d545704d661e9367ebf42e5447.jpg,2580830/post_images/bbe5632487b5ad91fec6ebc76eedc201.jpg,2580830/post_images/f76f1828f74fadc98e0086502335a0d4.jpg,2580830/post_images/7d3c8bf33164d606c82ed3d5eee2c637.jpg,2580830/post_images/c348f15b0fb538652d2a69d145f0e012.jpg', 8, '', 0, 0, '', 0, '2017-12-07 15:33:49'),
(151, 4460738, 'sdd', '', 'www.petbooq.com', '4460738/post_images/59b45b21d4f3ff478965cb524a4ed7f3.jpg,4460738/post_images/370649b81c5b509accfb0d2918ac31be.jpg,4460738/post_images/b857ce071fe86affbad21d60a93427d4.jpeg,4460738/post_images/e96bfe7b2ca11cc633b698c6a3e1e7ed.jpg,4460738/post_images/05f9864f248311f8ac2feb36efc748ba.jpg,4460738/post_images/b1617e995688a4033554bd6a848f0983.jpeg,4460738/post_images/4c32a8286284fd2f8393cf51e52ae059.jpeg,4460738/post_images/3b6f655f24cb0d67893b3cc2de7c2027.jpeg', 8, '', 0, 0, '', 0, '2017-12-07 15:41:06'),
(152, 2660679, '', '', '', '2660679/post_images/fdfe2af495193ce1926eb72de027e061.jpg,2660679/post_images/d98d9fb4b66b9adf61d3260cbfcd1b45.jpg,2660679/post_images/7a3c8892eee3dbf0f9052cd12dc15e1e.jpg,2660679/post_images/ac597200cf08470f682088019ec1a07b.jpg,2660679/post_images/a72da74ac440c5298620311704cf899d.jpg,2660679/post_images/af2ed963b0e86fbba1b4c8b370fb28cf.jpg,2660679/post_images/b863e82d06a3ee614f3307683f3cd452.jpg,2660679/post_images/0396a1323280dc96b38b6f732f4227f7.jpg', 8, '', 0, 0, '', 0, '2017-12-07 16:14:26'),
(153, 4460738, 'sdd', '', 'www.petbooq.com', '4460738/post_images/59b45b21d4f3ff478965cb524a4ed7f3.jpg,4460738/post_images/370649b81c5b509accfb0d2918ac31be.jpg,4460738/post_images/b857ce071fe86affbad21d60a93427d4.jpeg,4460738/post_images/e96bfe7b2ca11cc633b698c6a3e1e7ed.jpg,4460738/post_images/05f9864f248311f8ac2feb36efc748ba.jpg,4460738/post_images/b1617e995688a4033554bd6a848f0983.jpeg,4460738/post_images/4c32a8286284fd2f8393cf51e52ae059.jpeg,4460738/post_images/3b6f655f24cb0d67893b3cc2de7c2027.jpeg', 8, '', 0, 0, 'shared', 7705898, '2017-12-07 15:41:06'),
(154, 7705898, 'hello', 'hello', 'www.google.com', '7705898/post_images/88ef5f03cb20f46d572bca10df130664.jpeg,7705898/post_images/8c953fbe2fbe9567b9e8d5e76d62d9cf.jpeg', 2, '', 0, 0, '', 0, '2017-12-07 16:48:51'),
(155, 1928902, '', '', '', '1928902/post_images/170ff2465c422a6455879eeb52999f8b.jpg,1928902/post_images/6173c675c0cdee5ecebdd71774dbd09c.jpg', 2, '', 0, 0, '', 0, '2017-12-07 16:54:16'),
(156, 1928902, '', '', '', '1928902/post_images/84cceee532c6b25802be22d49aed1600.jpg,1928902/post_images/e01fa2536f5514bd779d317ffc39acf9.jpg,1928902/post_images/bfc339f396d7920f0c47b208a0060c84.jpg', 3, '', 0, 0, '', 0, '2017-12-07 17:01:05'),
(157, 7101212, '', '', '', '7101212/post_images/277baca94ed1200639d3c0b07a00b58d.jpg,7101212/post_images/f9c82e0c2a8de9a5cfa8dd482ac3c024.jpg,7101212/post_images/b33a53bd0ce90404afc29f3be0ac5469.jpg,7101212/post_images/d9ad8cf78751171cc90306a119285fd2.jpg,7101212/post_images/3d68fd53fa6e19ff47d58acccd67eb89.jpg,7101212/post_images/027d227c2a84719f36addb5512181376.jpg', 6, '', 0, 0, '', 0, '2017-12-07 17:11:43'),
(158, 1925873, 'fdsf', 'fff', 'www.google.com', '1925873/post_images/961d73398cc727d23d12c0e308f7d59d.jpg,1925873/post_images/b3227a5cf0ca69bae3a72981bd3a8893.jpg,1925873/post_images/04ed6641d7ae9a717617268cea07dbf9.jpeg,1925873/post_images/c2388953fbc24c9eb0cb6292fc01563c.jpg,1925873/post_images/b888213626c42521804553549227d780.jpg,1925873/post_images/748063e71aa57fa61bcb92d2a77f1290.jpeg,1925873/post_images/16efc93e24ca2b560efb57f51a8e2b84.jpeg,1925873/post_images/f5b4ece12df81ff14709b4fd88e6eb7e.jpeg', 8, '', 0, 0, '', 0, '2017-12-07 17:12:26'),
(159, 7101212, '', '', '', '7101212/post_images/824a03059530f5396edef65809111593.jpg,7101212/post_images/09967e0776eaa8f7a51aed9a4aa9258a.jpg', 2, '', 0, 0, '', 0, '2017-12-07 17:15:47'),
(160, 2580830, '', '', '', '2580830/post_images/ee41962e83cc602c4abaa4b0392c3635.jpg,2580830/post_images/3f3e4d25b31a5d6f6519462512697cc4.jpg,2580830/post_images/a3d6d59fab4c428b1574e104c229268a.jpg,2580830/post_images/08b69d329af8e37c7df2d6aca3a56161.jpg,2580830/post_images/88bde8c6397051102611252e8354b959.jpg,2580830/post_images/ddb9f26543d808746f4abf962faf176e.jpg', 6, '', 0, 0, 'shared', 7101212, '2017-12-07 15:32:07'),
(161, 7101212, '', '', '', '7101212/post_images/824a03059530f5396edef65809111593.jpg,7101212/post_images/09967e0776eaa8f7a51aed9a4aa9258a.jpg', 2, '', 0, 0, 'shared', 2580830, '2017-12-07 17:15:47'),
(162, 4292983, '', '', '', '4292983/post_images/fbe6f131b5d4cf89d4877a72fbc65bd2.jpg,4292983/post_images/d7a7ccb2d4d9eee1fb107116fb9fe3da.jpg,4292983/post_images/d0860011f9c5ebd634456ee47afefaa8.jpg,4292983/post_images/f61705d57b8d7281f096b30714ca75c9.jpg,4292983/post_images/c553abd6baad261e63eb1e864ff74612.jpg,4292983/post_images/9567a16dc8b56897a7969c3e1d414670.jpg,4292983/post_images/55c8dd38ac4189af6f99dd924a3e761b.jpg,4292983/post_images/9a90141880d2356625ce57acbeaa5322.jpg', 8, '', 0, 0, '', 0, '2017-12-07 17:52:47'),
(163, 4292983, '', 'Award for a Business Name + Domain Name. Dog walking and pet sitting business. We are searching for a name that captures fun, excitement, and animation.', '', '', 0, '', 0, 0, '', 0, '2017-12-07 18:18:15'),
(164, 7705898, '', '', '', '7705898/post_images/6940fe819c1dd2c83ad287ec123ba18b.jpg,7705898/post_images/bc7dad5cdc2b41ca02d9b5d5dec849b1.jpg,7705898/post_images/6e23ab13ecbe3967ef16936b36fc3f9c.jpg,7705898/post_images/07f58768a4019a18283984004afbc545.jpg,7705898/post_images/962497b75a8bb3911c87249bf59cf9fe.jpg,7705898/post_images/af0c86c347a2edc128acad59128ee4e1.jpg,7705898/post_images/14cff1e2a1cc5aeb04952eb315dae700.jpg,7705898/post_images/0b59e24870dc252dfc9c3237935446f7.jpg', 8, '', 0, 0, '', 0, '2017-12-08 10:46:10'),
(165, 7025846, '', '', '', '7025846/post_images/06d2e919e877bb0573c69613121f66d8.jpg,7025846/post_images/207deb2c599e527ea69cbfe0f792baac.jpg,7025846/post_images/5d517e3a9763949c5d03aecb629c28a5.jpg,7025846/post_images/ee49db7a15881f2f9958d316ca2e4e5b.jpg,7025846/post_images/aa69524e163a1865c9e5d0305be06927.jpg,7025846/post_images/35e636c0b46349d6794be66cc7e53594.jpg,7025846/post_images/4ea11f9b1c8d44bb5a9a671db50a5412.jpg,7025846/post_images/a713b6797d49d70f86cdc04d00af81bc.jpg,7025846/post_images/e5318a3c8a269307a73318ec5eae86a0.jpg', 9, '', 0, 0, '', 0, '2017-12-08 11:45:50'),
(166, 8182998, '', '', '', '8182998/post_images/1da0a572afeb191207fa1342c7ab0e5c.jpg,8182998/post_images/4188110edf18759e9c8155feea00b1aa.jpg,8182998/post_images/0746b3942133331ee47152ca9d6db4e6.jpg,8182998/post_images/be180c99f6226a144d3b69d6464415f0.jpg,8182998/post_images/6d715ab9cd2e42897a1f84aafd8658ae.jpg,8182998/post_images/f92791ece6ca64e5808c5cc8975c38e4.jpg,8182998/post_images/b5671d1638e2be4a94d18ef716a33ae6.jpg,8182998/post_images/56261bfb20ac0e1eed442830f5619306.jpg,8182998/post_images/ac78387e8b5cb60abeee6a0d4f2eb955.jpg,8182998/post_images/57b7dd226309387885cac204494a9b71.jpg', 10, '', 0, 0, '', 0, '2017-12-08 15:51:23'),
(167, 8182998, '', '', '', '8182998/post_images/1879f8c6f18704a3e2c63a9ddd64aacb.jpg,8182998/post_images/78be4560951f0f65ef702b193e32bb8a.jpg,8182998/post_images/d70e87b579936f14603abecfa668f419.jpg,8182998/post_images/ef804472f18dc10adf93375fa8b99ea2.jpg,8182998/post_images/c36e0d535fa8e10ab9ffde2f1621f493.jpg,8182998/post_images/4a923959fcc80a9f92bd9b963adf1d3b.jpg,8182998/post_images/842933a3fc84dcc96a81dcc8b29d928c.jpg,8182998/post_images/ad575539309b490b79ab2f1b869a66b9.jpg,8182998/post_images/1f4ea6a41e4aaf9305631d3e3512f4fe.jpg,8182998/post_images/42e6b9d055fe853cffac1268923971ef.jpg,8182998/post_images/e3786d50696b5375e4c5a72ccd827976.jpg,8182998/post_images/eb7163946ba20e0085832098b784d327.jpg', 12, '', 0, 0, '', 0, '2017-12-08 16:33:00'),
(168, 6331589, '', '', '', '6331589/post_images/cb8c9f7f7000de178c1775102bf7b433.jpg', 1, '', 0, 0, '', 0, '2017-12-08 18:04:30'),
(169, 1665774, 'gello', 'gelo imro deinma caso limank garlis ', '', '1665774/post_images/6bce3cf4eb244b419346845830ef950c.jpg,1665774/post_images/8a19c30b17c99cde9c579aeb3a96c0e6.jpg', 2, '', 0, 0, '', 0, '2017-12-11 15:13:31'),
(170, 1665774, 'gello', 'hwrr kddd bidyui binaoio ', '', '1665774/post_images/879b0371511da0040fc6b48f560c2a3c.jpg,1665774/post_images/f06edf099c0f8f2d20140169a6a6491a.jpg', 2, '', 0, 0, '', 0, '2017-12-11 15:14:06'),
(171, 1925873, 'asdasd', 'asd', 'www.petbooq.com', '1925873/post_images/07392267138f34e0468ae7329ed4de51.jpg,1925873/post_images/8038f7d3c791d382b01f5382b821382a.jpeg,1925873/post_images/b4f582a3d4fa14548be5aae0ba9a9b80.jpeg,1925873/post_images/01b5b5bd9702bde4e6c02cf2733bbe42.jpeg,1925873/post_images/de9d42c116d53d3d9dec45fdb07e419f.jpeg,1925873/post_images/5f09b31c7bab3784bc64a7a6a03fb8c0.jpeg,1925873/post_images/14d5ba292a67866a12cdc66164a8e03c.jpeg,1925873/post_images/6fd73ac4cb2f2647956d7992c96a6365.jpeg', 8, '', 0, 0, '', 0, '2017-12-11 16:38:03'),
(174, 1925873, 'asdasd', 'asd', 'www.petbooq.com', '1925873/post_images/07392267138f34e0468ae7329ed4de51.jpg,1925873/post_images/8038f7d3c791d382b01f5382b821382a.jpeg,1925873/post_images/b4f582a3d4fa14548be5aae0ba9a9b80.jpeg,1925873/post_images/01b5b5bd9702bde4e6c02cf2733bbe42.jpeg,1925873/post_images/de9d42c116d53d3d9dec45fdb07e419f.jpeg,1925873/post_images/5f09b31c7bab3784bc64a7a6a03fb8c0.jpeg,1925873/post_images/14d5ba292a67866a12cdc66164a8e03c.jpeg,1925873/post_images/6fd73ac4cb2f2647956d7992c96a6365.jpeg', 8, '', 0, 0, 'shared', 4460738, '2017-12-11 16:38:03'),
(175, 7705898, '', '', '', '', 0, '7705898/Videos/68008ac1e8528f9e309c8065b8131638.mp4', 1, 0, '', 0, '2017-12-11 17:51:44'),
(176, 4460738, 'Derre', 'ddd', 'www.petbooq.com', '4460738/post_images/fa8ada5c10e2f1e1bc90370cb01de157.jpeg', 1, '', 0, 0, '', 0, '2017-12-12 15:48:28'),
(177, 6230533, '', '', '', '', 0, '7705898/Videos/68008ac1e8528f9e309c8065b8131638.mp4', 1, 0, 'shared', 4460738, '2017-12-11 17:51:44'),
(178, 6230533, 'hello', 'hello', 'www.google.com', '7705898/post_images/88ef5f03cb20f46d572bca10df130664.jpeg,7705898/post_images/8c953fbe2fbe9567b9e8d5e76d62d9cf.jpeg', 2, '', 0, 0, 'shared', 4460738, '2017-12-13 14:00:46'),
(179, 5013361, '', '', '', '5013361/post_images/54b5fc0747858ea8ce315bb7804a7a1b.jpeg', 1, '', 0, 0, '', 0, '2017-12-13 20:31:30'),
(180, 4460738, '', '', '', '4460738/post_images/e9ff19d7742d0c25331347a346813704.jpeg,4460738/post_images/ae9772b8914f17cae8e3b46ae517f330.jpeg', 4, '', 0, 0, '', 0, '2017-12-14 12:57:08'),
(181, 4460738, 'sdsdfdgfcvb', 'sdsd', 'www.google.com', '', 0, '4460738/Videos/086d5b0ac415307e29ca462616c7b2b2.mp4', 1, 0, '', 0, '2017-12-15 17:13:13'),
(182, 4460738, 'VV', 'VVB', 'www.google.com', '', 0, '4460738/Videos/93e5da3dfdc5d5279530b40e9bca0ac3.MP4', 2, 0, '', 0, '2017-12-15 17:14:01'),
(184, 4460738, 'VV', 'VVB', 'www.google.com', '', 0, '4460738/Videos/93e5da3dfdc5d5279530b40e9bca0ac3.MP4', 2, 0, 'shared', 6230533, '2017-12-16 11:55:58'),
(185, 7378268, 'Explore your business goes here for you and me which help for you improve me ', 'Explore your business goes here for you and me which help for you improve me Explore your business goes here for you and me which help for you improve me ', '', '7378268/post_images/b2a55debbe3db2d19f94b530b8418120.jpeg', 1, '', 0, 0, '', 0, '2017-12-18 14:08:14'),
(186, 7378268, '', '', '', '7378268/post_images/a3498fdb1c353dfff3f9136fac9176ad.jpeg', 1, '', 0, 0, '', 0, '2017-12-18 14:20:23'),
(187, 7705898, 'sdd', '', 'www.petbooq.com', '4460738/post_images/59b45b21d4f3ff478965cb524a4ed7f3.jpg,4460738/post_images/370649b81c5b509accfb0d2918ac31be.jpg,4460738/post_images/b857ce071fe86affbad21d60a93427d4.jpeg,4460738/post_images/e96bfe7b2ca11cc633b698c6a3e1e7ed.jpg,4460738/post_images/05f9864f248311f8ac2feb36efc748ba.jpg,4460738/post_images/b1617e995688a4033554bd6a848f0983.jpeg,4460738/post_images/4c32a8286284fd2f8393cf51e52ae059.jpeg,4460738/post_images/3b6f655f24cb0d67893b3cc2de7c2027.jpeg', 8, '', 0, 0, 'shared', 7025846, '2017-12-18 15:25:12'),
(188, 7705898, 'sdd', '', 'www.petbooq.com', '4460738/post_images/59b45b21d4f3ff478965cb524a4ed7f3.jpg,4460738/post_images/370649b81c5b509accfb0d2918ac31be.jpg,4460738/post_images/b857ce071fe86affbad21d60a93427d4.jpeg,4460738/post_images/e96bfe7b2ca11cc633b698c6a3e1e7ed.jpg,4460738/post_images/05f9864f248311f8ac2feb36efc748ba.jpg,4460738/post_images/b1617e995688a4033554bd6a848f0983.jpeg,4460738/post_images/4c32a8286284fd2f8393cf51e52ae059.jpeg,4460738/post_images/3b6f655f24cb0d67893b3cc2de7c2027.jpeg', 8, '', 0, 0, 'shared', 4460738, '2017-12-18 15:27:11'),
(189, 2395741, '', '', '', '', 0, '7705898/Videos/68008ac1e8528f9e309c8065b8131638.mp4', 1, 0, 'shared', 7378268, '2017-12-18 16:27:46'),
(190, 3312322, '', 'Pachis Meet Assi for the first time', '', '3312322/post_images/c28f67aa86103d9d24b6b784a94d6599.jpg', 1, '', 0, 0, '', 0, '2017-12-18 17:52:26'),
(191, 7705898, 'asdasd', 'asd', 'www.petbooq.com', '1925873/post_images/07392267138f34e0468ae7329ed4de51.jpg,1925873/post_images/8038f7d3c791d382b01f5382b821382a.jpeg,1925873/post_images/b4f582a3d4fa14548be5aae0ba9a9b80.jpeg,1925873/post_images/01b5b5bd9702bde4e6c02cf2733bbe42.jpeg,1925873/post_images/de9d42c116d53d3d9dec45fdb07e419f.jpeg,1925873/post_images/5f09b31c7bab3784bc64a7a6a03fb8c0.jpeg,1925873/post_images/14d5ba292a67866a12cdc66164a8e03c.jpeg,1925873/post_images/6fd73ac4cb2f2647956d7992c96a6365.jpeg', 8, '', 0, 0, 'shared', 2395741, '2017-12-18 18:15:44'),
(192, 7705898, 'asdasd', 'asd', 'www.petbooq.com', '1925873/post_images/07392267138f34e0468ae7329ed4de51.jpg,1925873/post_images/8038f7d3c791d382b01f5382b821382a.jpeg,1925873/post_images/b4f582a3d4fa14548be5aae0ba9a9b80.jpeg,1925873/post_images/01b5b5bd9702bde4e6c02cf2733bbe42.jpeg,1925873/post_images/de9d42c116d53d3d9dec45fdb07e419f.jpeg,1925873/post_images/5f09b31c7bab3784bc64a7a6a03fb8c0.jpeg,1925873/post_images/14d5ba292a67866a12cdc66164a8e03c.jpeg,1925873/post_images/6fd73ac4cb2f2647956d7992c96a6365.jpeg', 8, '', 0, 0, 'shared', 2372791, '2017-12-18 18:15:44'),
(193, 3078323, '', '', '', '3078323/post_images/75aa50f3d609ac614cb669dec46f1d2d.jpeg,3078323/post_images/898e20ab9a848013d0111a7aa896a8ae.jpeg,3078323/post_images/af3b6c4307e8ecb5874d4d07ed03c7e9.jpg,3078323/post_images/2e33950acdd1385ad6c03628fb32a9cc.jpeg,3078323/post_images/31d0a0ff821b15827e0ec6c1c9c1cdba.jpeg,3078323/post_images/18bc2596f31712d1676618821547ab12.jpeg', 6, '', 0, 0, '', 0, '2017-12-18 18:29:52'),
(194, 7705898, '', '', '', '4460738/post_images/e9ff19d7742d0c25331347a346813704.jpeg,4460738/post_images/ae9772b8914f17cae8e3b46ae517f330.jpeg', 4, '', 0, 0, 'shared', 2580830, '2017-12-19 11:39:11'),
(195, 7705898, '', '', '', '4460738/post_images/e9ff19d7742d0c25331347a346813704.jpeg,4460738/post_images/ae9772b8914f17cae8e3b46ae517f330.jpeg', 4, '', 0, 0, 'shared', 7025846, '2017-12-19 11:39:11'),
(196, 7705898, '', '', '', '4460738/post_images/e9ff19d7742d0c25331347a346813704.jpeg,4460738/post_images/ae9772b8914f17cae8e3b46ae517f330.jpeg', 4, '', 0, 0, 'shared', 6230533, '2017-12-19 11:39:11'),
(197, 4460738, 'sdd', '', 'www.petbooq.com', '4460738/post_images/59b45b21d4f3ff478965cb524a4ed7f3.jpg,4460738/post_images/370649b81c5b509accfb0d2918ac31be.jpg,4460738/post_images/b857ce071fe86affbad21d60a93427d4.jpeg,4460738/post_images/e96bfe7b2ca11cc633b698c6a3e1e7ed.jpg,4460738/post_images/05f9864f248311f8ac2feb36efc748ba.jpg,4460738/post_images/b1617e995688a4033554bd6a848f0983.jpeg,4460738/post_images/4c32a8286284fd2f8393cf51e52ae059.jpeg,4460738/post_images/3b6f655f24cb0d67893b3cc2de7c2027.jpeg', 8, '', 0, 0, 'shared', 6230533, '2017-12-19 14:57:43'),
(216, 7811366, 'hello guys', '', '', '7811366/post_images/28ee501720668d193682d4014185df58.jpg', 1, '', 0, 0, '', 0, '2017-12-21 15:55:14'),
(217, 1128770, '', 'Tips', '', '1128770/post_images/5dd52729b5430a257172f3982f604735.jpg', 1, '', 0, 0, '', 0, '2017-12-21 15:59:21'),
(218, 1128770, 'Pets Lovers', '', '', '1128770/post_images/bcb5774408a0a34f84f6e5b2cf21484b.jpg', 1, '', 0, 0, '', 0, '2017-12-22 17:12:10'),
(219, 2395741, '', '', '', '', 0, '', 0, 0, '', 0, '2017-12-22 17:34:56'),
(220, 7811366, '', '', '', '', 0, '', 0, 0, '', 0, '2017-12-22 17:35:42'),
(221, 2395741, '', '', '', '', 0, '', 0, 0, '', 0, '2017-12-22 18:43:27'),
(222, 4460738, 'fdsf', 'fff', 'www.google.com', '1925873/post_images/961d73398cc727d23d12c0e308f7d59d.jpg,1925873/post_images/b3227a5cf0ca69bae3a72981bd3a8893.jpg,1925873/post_images/04ed6641d7ae9a717617268cea07dbf9.jpeg,1925873/post_images/c2388953fbc24c9eb0cb6292fc01563c.jpg,1925873/post_images/b888213626c42521804553549227d780.jpg,1925873/post_images/748063e71aa57fa61bcb92d2a77f1290.jpeg,1925873/post_images/16efc93e24ca2b560efb57f51a8e2b84.jpeg,1925873/post_images/f5b4ece12df81ff14709b4fd88e6eb7e.jpeg', 8, '', 0, 0, 'shared', 6230533, '2017-12-22 22:22:28'),
(223, 4460738, 'Chi', '', '', '4460738/post_images/2e3a7d33df514dbd5b30bafe2059981b.jpg', 1, '', 0, 0, '', 0, '2017-12-22 22:29:11'),
(224, 7025846, '', 'ddddddfd', '', '', 0, '', 0, 0, '', 0, '2017-12-26 12:01:18'),
(225, 7025846, '', '', '', '7025846/post_images/aa4a7604459e38ce823170ea000f14b3.jpeg', 1, '', 0, 0, '', 0, '2017-12-26 12:01:58'),
(226, 7025846, '', '', '', '', 0, '', 0, 0, '', 0, '2017-12-26 13:51:52'),
(227, 2395741, 'asdasd', '', '', '', 0, '', 0, 0, '', 0, '2017-12-26 14:10:44'),
(228, 3312322, 'Happy Sunday', 'Cute chicks', '', '3312322/post_images/c6fbc35becbaf8ed0f2b0fee62d0a284.jpg', 1, '', 0, 0, '', 0, '2017-12-27 12:57:35'),
(229, 3312322, '', 'Hello Matti.  Any plan for Pet gromming?', '', '', 0, '', 0, 5685284, '', 0, '2017-12-27 13:44:02'),
(238, 4460738, '', '', '', '4460738/post_images/3f6a34a12cc284ee3937c996cee9582e.jpg', 1, '', 0, 0, '', 0, '2017-12-27 15:34:06'),
(239, 4460738, '', 'qqqqqqqqqqq', 'www.petbooq.com', '', 0, '', 0, 0, '', 0, '2017-12-27 15:56:00'),
(240, 4460738, '', '', 'www.petbooq.com', '4460738/post_images/5e415d89d37b1d4591573cb96aefe7d9.jpeg', 1, '', 0, 0, '', 0, '2017-12-27 15:59:20'),
(241, 2395741, 'test test', '', '', '', 0, '', 0, 0, '', 0, '2017-12-27 16:15:52'),
(244, 4460738, '', '', '', '4460738/post_images/7c10598c1c9daa8e8b25d98b8bd50133.jpg,4460738/post_images/2ca22ba8556dd84c45824f566313820d.jpg,4460738/post_images/e9c55675ecfb1d1de728824bbcf2d3d8.jpg', 3, '', 0, 0, '', 0, '2017-12-28 15:09:21'),
(245, 4460738, 'Demo333', '', 'www.petbooq.com', '4460738/post_images/ce2847b42220be477380a58b96efcac7.jpeg,4460738/post_images/1b4d74ce0f4dbc527944398ec6045e66.jpg', 2, '', 0, 0, '', 0, '2017-12-28 15:11:03'),
(248, 2395741, '', '', '', '2395741/post_images/0ef00eb776d3116f665cc3f639d10cac.jpg,2395741/post_images/d77ef7bf8a7f7235d2d9750c87ec1634.jpeg,2395741/post_images/f6979fa0f65ed06cf309393ead37833c.jpg,2395741/post_images/0d3de07e4b2b07608bd647a1006834ab.jpg,2395741/post_images/56e896f090fda86618d60264a84302d1.jpg,2395741/post_images/b07e87b756030025a2f22fb6e2effde5.jpeg,2395741/post_images/5a31e3e41c953235c293674dea8ade32.jpg', 7, '', 0, 0, '', 0, '2017-12-28 16:07:48'),
(249, 2395741, '', '', '', '2395741/post_images/02a09cc082b3e4bec60610227e57fab0.jpg,2395741/post_images/798f7f8028234368e71c82070e51a735.jpeg,2395741/post_images/bcdeea93080d00c5d98ae3b107e59b26.jpg,2395741/post_images/b2f3cbbabeeb4d5b720839c2088a8ea2.jpg,2395741/post_images/9770e6487514b874183a9728a19be2c4.jpg,2395741/post_images/bc1ba0b4c5e96fe455a1e37cdee622c1.jpg', 6, '', 0, 0, '', 0, '2017-12-28 16:08:38'),
(250, 7025846, '', '', '', '7025846/post_images/45038381b775413bd0b57990802d9333.jpg', 1, '', 0, 0, '', 0, '2017-12-29 10:56:10'),
(252, 7025846, '', '', '', '7025846/post_images/b33b2ed9e5f84f8ba2a5989b02a0c5cd.png', 1, '', 0, 0, '', 0, '2017-12-29 12:25:23'),
(253, 7025846, '', '', '', '7025846/post_images/35be7ef43fec7923cd8eecfb835755b1.jpg', 1, '', 0, 0, '', 0, '2017-12-29 12:26:09'),
(256, 4460738, '', '', '', '4460738/post_images/2e14238ee865e10f8d6ed702ed880d2b.jpeg,4460738/post_images/80229f0a08ca50ce2f8d9f95ce0b5d97.jpeg,4460738/post_images/daf9183a9f3ace56e799fafd98b90582.png', 3, '', 0, 0, '', 0, '2017-12-29 17:53:51'),
(258, 5013361, 'Hello ', 'Merry Christmas to all', '', '5013361/post_images/3ea510ba7fe4d50bb96585ff44a7e7fd.jpeg', 1, '', 0, 0, '', 0, '2017-12-30 15:35:00'),
(259, 0, '', '', '', '', 0, '', 0, 0, '', 0, '2017-12-30 18:23:35'),
(260, 2395741, '', '', '', '2395741/post_images/0840b3fd7f0f2abdc5e132812b8e14a8.jpeg', 1, '', 0, 0, '', 0, '2017-12-30 18:23:38'),
(261, 1128770, 'Nice Pet ngo', '', '', '1128770/post_images/fb9007b644b66894758c387ab1128a69.jpg', 1, '', 0, 0, '', 0, '2018-01-02 10:54:19'),
(262, 2395741, '', '', '', '2395741/post_images/64aff0ada24cde4f56e944f3c436b7d6.jpg', 1, '', 0, 0, '', 0, '2018-01-02 11:06:53'),
(263, 4460738, 'My dog', '', '', '4460738/post_images/e53537e1e067c0f18c5a52236e7ae083.jpg,4460738/post_images/a2580735db1182c121f06e5baf65a557.jpg', 2, '', 0, 0, '', 0, '2018-01-02 12:09:11'),
(266, 4460738, 'Derrr', '', '', '4460738/post_images/3b7e3c63df2f6077a1e77cdadfff2497.jpeg,4460738/post_images/ccef413d22636a6d6a2d694118a1b4b7.jpg', 2, '', 0, 0, '', 0, '2018-01-02 12:24:03'),
(267, 1925873, '', '', '', '1925873/post_images/e7b01f2327b0f34e5b8492cc2db19201.jpg,1925873/post_images/af6e7957a54df8fe23cb078600c9d8fc.jpg,1925873/post_images/76bf4a7e9c85932eef7af9a8b2a683b6.jpg', 3, '', 0, 0, '', 0, '2018-01-02 12:28:23'),
(269, 2395741, 'Heading', '', '', '2395741/post_images/b1cd6762495f4e7997f0042c84cfa8ba.jpg', 1, '', 0, 0, '', 0, '2018-01-02 14:17:23'),
(270, 2660679, 'DDDDDDDDDDDD', '', '', '2660679/post_images/2c86f92c4060dfe0e274dfac89ad33ee.jpeg,2660679/post_images/5d949da4537e000401a104a14a01b6f2.jpg', 2, '', 0, 0, '', 0, '2018-01-02 14:18:13'),
(271, 1925873, '', '', '', '1925873/post_images/ee6fad7d413a1d3e2adfe20444eaaea7.jpeg', 1, '', 0, 0, '', 0, '2018-01-02 14:26:16'),
(272, 1925873, '', '', '', '1925873/post_images/b423062e150bc82964f82430045e0eaf.jpg,1925873/post_images/c108bbdf4a13b449b7238a20bd8f6718.jpg,1925873/post_images/81949cb5a9ba35098d95158553910dbd.jpg', 3, '', 0, 0, '', 0, '2018-01-02 14:27:04'),
(273, 2660679, 'asdada', '', '', '2660679/post_images/f151e522968db3c3e90c765e56b1bb51.jpeg', 1, '', 0, 0, '', 0, '2018-01-02 14:29:44'),
(274, 2660679, 'My dog', '', '', '2660679/post_images/a06642201c3485a7d233357f03b0df56.jpg', 1, '', 0, 0, '', 0, '2018-01-02 14:30:59'),
(275, 2395741, 'Hello ', 'These beautiful dogs are a unique ', 'petbooq.com', '2395741/post_images/a72b98813afdadc3ac8ecb2ee179eccf.jpg', 1, '', 0, 0, '', 0, '2018-01-02 14:50:56'),
(276, 2395741, 'Demo', '', '', '2395741/post_images/c78ba310068d94a9ed69daa5bd08fd2a.jpeg,2395741/post_images/42895b25620724365e43d706e10ad74c.jpg', 2, '', 0, 2372791, '', 0, '2018-01-02 15:26:41'),
(277, 2660679, 'zcx', '', '', '2660679/post_images/be3dd402df65debb41f9824d15188b3e.jpg,2660679/post_images/f5da862255b3461f5f76b4733e599158.jpg', 2, '', 0, 0, '', 0, '2018-01-02 16:12:53'),
(279, 4460738, '', '', '', '4460738/post_images/f6689d509b22ecd0f46f1cbfe63b17b9.jpg,4460738/post_images/2dc28ef6ebd127140fdebb7f93c31472.jpg', 2, '', 0, 6230533, '', 0, '2018-01-02 17:19:06'),
(280, 4460738, 'fsd', '', '', '4460738/post_images/946eac908799c4fdd3cf7ad16baeb985.jpeg', 1, '', 0, 0, '', 0, '2018-01-02 17:25:13'),
(288, 9754021, '', '', '', '9754021/post_images/1633f99e782729b024c0c28abd3458b6.jpg', 1, '', 0, 0, '', 0, '2018-01-03 11:00:45'),
(289, 4460738, '', '', '', '4460738/post_images/b7920f11614fe2cc0e9790abb86c6750.jpeg', 1, '', 0, 0, '', 0, '2018-01-03 11:06:31'),
(293, 6230533, '', '', '', '6230533/post_images/62fdf1a74951125fce22ade1e34c2596.jpg', 1, '', 0, 4460738, '', 0, '2018-01-03 11:46:40'),
(294, 6230533, '', '', '', '6230533/post_images/be76f56fcabfd8bd4663c91e57238ebf.jpeg', 1, '', 0, 4460738, '', 0, '2018-01-03 11:55:12'),
(301, 6230533, '', '', '', '6230533/post_images/6bb53a6a2ac936ba8bb3041af3d98b1f.jpg', 1, '', 0, 4460738, '', 0, '2018-01-03 12:19:00'),
(302, 4460738, '', '', '', '4460738/post_images/7ac1e5a3f61ce2440b1750a444014a24.jpg', 1, '', 0, 6230533, '', 0, '2018-01-03 12:21:05'),
(303, 2395741, '', '', '', '', 0, '2395741/Videos/246f93cf7e7a9474bdb1a73d33728688.mp4', 1, 0, '', 0, '2018-01-03 15:06:07'),
(304, 2660679, '', '', '', '2660679/post_images/f8adbd4946ae9e92f73e2a60677307e0.jpg', 1, '', 0, 0, '', 0, '2018-01-03 15:31:35'),
(305, 2660679, '', '', '', '2660679/post_images/8c672bf865d681c54a3e06175cfa1594.jpg,2660679/post_images/23cf6dc6d69f5f7ce7e757eb49f0caab.jpg', 2, '', 0, 0, '', 0, '2018-01-03 15:32:25'),
(306, 2395741, '', '', '', '', 0, '2395741/Videos/bb641740b9d562e3e8bd71e88f8bd691.mp4', 1, 0, '', 0, '2018-01-03 15:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `post_media`
--

CREATE TABLE IF NOT EXISTS `post_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=157 ;

--
-- Dumping data for table `post_media`
--

INSERT INTO `post_media` (`id`, `post_id`, `image`, `video`) VALUES
(1, 12, '1925873/post_images/efee0680e9198f20ba1eac720a2a10f3.jpg', ''),
(2, 13, '1925873/post_images/64da17b1dc83ad60b6c505aa7704e2ff.jpg', ''),
(3, 13, '1925873/post_images/f10a6e74bba4fbddad4ec90c947f535d.jpg', ''),
(4, 14, '4558759/post_images/40c174cba31e060da574b5e9fda828c2.jpg', ''),
(5, 14, '4558759/post_images/3285a71237f5116d87e7d7c966e607ea.jpeg', ''),
(6, 17, '1925873/post_images/ad4765f3dd1d01d1f3ab5322655e9251.jpg', ''),
(7, 17, '1925873/post_images/854d6a27ca287c8edc4377e7a0a7c4ad.jpg', ''),
(8, 18, '1925873/post_images/fab0e1884d8488836f55a506e36f4cd2.jpg', ''),
(9, 19, '4558759/post_images/6678a3afc54dcc65f09f0d9b4db48d1e.jpg', ''),
(10, 20, '4558759/post_images/740088840d95a03d375f65e2b2f4e849.jpg', ''),
(11, 26, '2660679/post_images/1f7963330c4b30c3f6b957af9b5791df.jpg', ''),
(12, 26, '2660679/post_images/6080f648a282a2229dda2674cc0a2ae5.jpg', ''),
(13, 26, '2660679/post_images/44cff533bfe8e6d257af7155813145ef.jpg', ''),
(14, 26, '2660679/post_images/de1bef46440ea4689271f2cbdec7e08b.jpg', ''),
(15, 27, '2660679/post_images/edcf5ded1f668f92d3f907ed443d63ba.jpg', ''),
(16, 31, '4967682/post_images/6c0348c38d1bfd2913206e0f7914fb8f.jpg', ''),
(17, 34, '1925873/post_images/78bbe14af86b6266cb007fb0cb8401fa.jpeg', ''),
(18, 39, '2660679/post_images/aa604a73be7ecf7231f87d4e486369d8.jpeg', ''),
(19, 39, '2660679/post_images/85146d5b5450c6cbd6cda7e22f32c1e4.jpg', ''),
(20, 39, '2660679/post_images/451c59b9cfb5cdb3801674745669e485.jpeg', ''),
(21, 39, '2660679/post_images/93c08b18340be09ffb38c1636fd03524.jpg', ''),
(22, 41, '1925873/post_images/7968d05848f2ed8b2392930da2577118.jpg', ''),
(23, 42, '2660679/post_images/d7d0f08dd9f0759e29d7d2f1c6831dd7.jpg', ''),
(24, 43, '2660679/post_images/6155eaa4d5f2e0e19418bba39d96a19b.jpg', ''),
(25, 44, '2660679/post_images/657247ae09ace997fed5fa32037439dd.jpg', ''),
(26, 45, '1925873/post_images/a8755c632bc64cbf6c337e88813ace25.jpg', ''),
(27, 46, '1925873/post_images/0a19ff3e1cfdf3352bf94268b63a6cf4.jpeg', ''),
(28, 47, '2660679/post_images/e763c9123a9437d8c71e85ada6d66230.jpg', ''),
(29, 47, '2660679/post_images/5e8ab23220a0e998e19053c2dfb89bca.jpg', ''),
(30, 47, '2660679/post_images/e801c57163c0d612ab5355a414c1e952.jpg', ''),
(31, 51, '1925873/post_images/4b4cd9f98de69be2521bbf5157ee5bf0.jpg', ''),
(32, 51, '1925873/post_images/fec090d3ae3d59c561efd9365e6a127a.jpg', ''),
(33, 55, '1925873/post_images/d964fb67d6fc5711b95778dcf9391485.jpg', ''),
(34, 55, '1925873/post_images/45cbad1a5b1bb1cdddd8195f6871af3e.jpg', ''),
(35, 65, '1925873/post_images/11fd20dbce71a1f58cdeb6935513bc5c.jpeg', ''),
(36, 65, '1925873/post_images/82c8378c56feb87aa7136d1a585ed284.jpg', ''),
(37, 70, '1925873/post_images/197a9d9e8eed47d160231b63b04c7001.jpeg', ''),
(38, 70, '1925873/post_images/d7e5836cbf2adc441b9f7901243dd270.jpg', ''),
(39, 71, '1925873/post_images/725062dadd00f94148c8514003bc6772.jpg', ''),
(40, 72, '2660679/post_images/d110883bb15f0f1b12150fc658e2de70.jpg', ''),
(41, 72, '2660679/post_images/d3daeac8b9b48355c66935cba6569b27.jpg', ''),
(42, 73, '2660679/post_images/f2b342360cbfc31bcf293cb55e4e5f67.jpg', ''),
(43, 74, '2660679/post_images/1b02e00c617b2696c24a8ec69ad381d0.jpeg', ''),
(44, 75, '2660679/post_images/21d030275f1ab24b425aeb88705f4be6.jpeg', ''),
(45, 75, '2660679/post_images/befd5f44073588ae3504267f216f528c.jpg', ''),
(46, 75, '2660679/post_images/55c91db4811d232346db793741e6b483.jpg', ''),
(47, 76, '2660679/post_images/975a9970cc8b30d38e244dffec3d0d3e.jpg', ''),
(48, 76, '2660679/post_images/ff887f1b3346ae89b6da87254a60aadc.jpg', ''),
(49, 76, '2660679/post_images/d3862127eadba0524dae0ca019d40755.jpg', ''),
(50, 76, '2660679/post_images/f5b1ccab861ff568f20b9235fd4fab48.jpeg', ''),
(51, 77, '2660679/post_images/cdb3fa078f6aac382f2d54a8b95ea13b.jpeg', ''),
(52, 77, '2660679/post_images/605117bd42cca0d612769648dba76b1e.jpg', ''),
(53, 78, '1925873/post_images/d718e979f0bede6126137da12c007c88.jpeg', ''),
(54, 78, '1925873/post_images/5b80b15d134d426d73d1cdec385bfbf5.jpg', ''),
(55, 82, '4365404/post_images/625ace2d775fc225892a5666dfb95962.jpeg', ''),
(56, 82, '4365404/post_images/268d64b51d87e965530f60f55e040580.jpg', ''),
(57, 82, '4365404/post_images/91047002b5f777b2787821ff14ea7100.jpg', ''),
(58, 82, '4365404/post_images/e96d3ce932bf2eefd3acada174f2ac89.jpg', ''),
(59, 93, '4593368/post_images/310d9b6f27593d90931ffd4afe0ea7ce.jpg', ''),
(60, 94, '4593368/post_images/cad5a792185d2a8a50cec8ae37a8820e.jpeg', ''),
(61, 106, '6331589/post_images/4562fde5c2812eeb575e09c13eec87b4.jpg', ''),
(62, 109, '9183749/post_images/5b7750f0210e156f611a9feff61ae2ba.jpg', ''),
(63, 110, '9754021/post_images/b2bd4a7f1e41975c0bfa42e719ad76f1.jpeg', ''),
(64, 114, '9754021/post_images/ed71698b7ba4087839e8759a76acb3a3.jpeg', ''),
(65, 115, '2660679/post_images/d3629e7594cdcc71740a319cff4c735a.jpg', ''),
(66, 115, '2660679/post_images/878694596cfa985d5d69c89effae4d4b.jpeg', ''),
(67, 118, '2660679/post_images/52d0a0bdb9b21f9973c94d53b74fc36a.jpg', ''),
(68, 152, '2660679/post_images/fdfe2af495193ce1926eb72de027e061.jpg', ''),
(69, 152, '2660679/post_images/d98d9fb4b66b9adf61d3260cbfcd1b45.jpg', ''),
(70, 152, '2660679/post_images/7a3c8892eee3dbf0f9052cd12dc15e1e.jpg', ''),
(71, 152, '2660679/post_images/ac597200cf08470f682088019ec1a07b.jpg', ''),
(72, 152, '2660679/post_images/a72da74ac440c5298620311704cf899d.jpg', ''),
(73, 152, '2660679/post_images/af2ed963b0e86fbba1b4c8b370fb28cf.jpg', ''),
(74, 152, '2660679/post_images/b863e82d06a3ee614f3307683f3cd452.jpg', ''),
(75, 152, '2660679/post_images/0396a1323280dc96b38b6f732f4227f7.jpg', ''),
(76, 158, '1925873/post_images/961d73398cc727d23d12c0e308f7d59d.jpg', ''),
(77, 158, '1925873/post_images/b3227a5cf0ca69bae3a72981bd3a8893.jpg', ''),
(78, 158, '1925873/post_images/04ed6641d7ae9a717617268cea07dbf9.jpeg', ''),
(79, 158, '1925873/post_images/c2388953fbc24c9eb0cb6292fc01563c.jpg', ''),
(80, 158, '1925873/post_images/b888213626c42521804553549227d780.jpg', ''),
(81, 158, '1925873/post_images/748063e71aa57fa61bcb92d2a77f1290.jpeg', ''),
(82, 158, '1925873/post_images/16efc93e24ca2b560efb57f51a8e2b84.jpeg', ''),
(83, 158, '1925873/post_images/f5b4ece12df81ff14709b4fd88e6eb7e.jpeg', ''),
(84, 162, '4292983/post_images/fbe6f131b5d4cf89d4877a72fbc65bd2.jpg', ''),
(85, 162, '4292983/post_images/d7a7ccb2d4d9eee1fb107116fb9fe3da.jpg', ''),
(86, 162, '4292983/post_images/d0860011f9c5ebd634456ee47afefaa8.jpg', ''),
(87, 162, '4292983/post_images/f61705d57b8d7281f096b30714ca75c9.jpg', ''),
(88, 162, '4292983/post_images/c553abd6baad261e63eb1e864ff74612.jpg', ''),
(89, 162, '4292983/post_images/9567a16dc8b56897a7969c3e1d414670.jpg', ''),
(90, 162, '4292983/post_images/55c8dd38ac4189af6f99dd924a3e761b.jpg', ''),
(91, 162, '4292983/post_images/9a90141880d2356625ce57acbeaa5322.jpg', ''),
(92, 166, '8182998/post_images/1da0a572afeb191207fa1342c7ab0e5c.jpg', ''),
(93, 166, '8182998/post_images/4188110edf18759e9c8155feea00b1aa.jpg', ''),
(94, 166, '8182998/post_images/0746b3942133331ee47152ca9d6db4e6.jpg', ''),
(95, 166, '8182998/post_images/be180c99f6226a144d3b69d6464415f0.jpg', ''),
(96, 166, '8182998/post_images/6d715ab9cd2e42897a1f84aafd8658ae.jpg', ''),
(97, 166, '8182998/post_images/f92791ece6ca64e5808c5cc8975c38e4.jpg', ''),
(98, 166, '8182998/post_images/b5671d1638e2be4a94d18ef716a33ae6.jpg', ''),
(99, 166, '8182998/post_images/56261bfb20ac0e1eed442830f5619306.jpg', ''),
(100, 166, '8182998/post_images/ac78387e8b5cb60abeee6a0d4f2eb955.jpg', ''),
(101, 166, '8182998/post_images/57b7dd226309387885cac204494a9b71.jpg', ''),
(102, 167, '8182998/post_images/1879f8c6f18704a3e2c63a9ddd64aacb.jpg', ''),
(103, 167, '8182998/post_images/78be4560951f0f65ef702b193e32bb8a.jpg', ''),
(104, 167, '8182998/post_images/d70e87b579936f14603abecfa668f419.jpg', ''),
(105, 167, '8182998/post_images/ef804472f18dc10adf93375fa8b99ea2.jpg', ''),
(106, 167, '8182998/post_images/c36e0d535fa8e10ab9ffde2f1621f493.jpg', ''),
(107, 167, '8182998/post_images/4a923959fcc80a9f92bd9b963adf1d3b.jpg', ''),
(108, 167, '8182998/post_images/842933a3fc84dcc96a81dcc8b29d928c.jpg', ''),
(109, 167, '8182998/post_images/ad575539309b490b79ab2f1b869a66b9.jpg', ''),
(110, 167, '8182998/post_images/1f4ea6a41e4aaf9305631d3e3512f4fe.jpg', ''),
(111, 167, '8182998/post_images/42e6b9d055fe853cffac1268923971ef.jpg', ''),
(112, 167, '8182998/post_images/e3786d50696b5375e4c5a72ccd827976.jpg', ''),
(113, 167, '8182998/post_images/eb7163946ba20e0085832098b784d327.jpg', ''),
(114, 168, '6331589/post_images/cb8c9f7f7000de178c1775102bf7b433.jpg', ''),
(115, 169, '1665774/post_images/6bce3cf4eb244b419346845830ef950c.jpg', ''),
(116, 169, '1665774/post_images/8a19c30b17c99cde9c579aeb3a96c0e6.jpg', ''),
(117, 170, '1665774/post_images/879b0371511da0040fc6b48f560c2a3c.jpg', ''),
(118, 170, '1665774/post_images/f06edf099c0f8f2d20140169a6a6491a.jpg', ''),
(119, 171, '1925873/post_images/07392267138f34e0468ae7329ed4de51.jpg', ''),
(120, 171, '1925873/post_images/8038f7d3c791d382b01f5382b821382a.jpeg', ''),
(121, 171, '1925873/post_images/b4f582a3d4fa14548be5aae0ba9a9b80.jpeg', ''),
(122, 171, '1925873/post_images/01b5b5bd9702bde4e6c02cf2733bbe42.jpeg', ''),
(123, 171, '1925873/post_images/de9d42c116d53d3d9dec45fdb07e419f.jpeg', ''),
(124, 171, '1925873/post_images/5f09b31c7bab3784bc64a7a6a03fb8c0.jpeg', ''),
(125, 171, '1925873/post_images/14d5ba292a67866a12cdc66164a8e03c.jpeg', ''),
(126, 171, '1925873/post_images/6fd73ac4cb2f2647956d7992c96a6365.jpeg', ''),
(127, 193, '3078323/post_images/75aa50f3d609ac614cb669dec46f1d2d.jpeg', ''),
(128, 193, '3078323/post_images/898e20ab9a848013d0111a7aa896a8ae.jpeg', ''),
(129, 193, '3078323/post_images/af3b6c4307e8ecb5874d4d07ed03c7e9.jpg', ''),
(130, 193, '3078323/post_images/2e33950acdd1385ad6c03628fb32a9cc.jpeg', ''),
(131, 193, '3078323/post_images/31d0a0ff821b15827e0ec6c1c9c1cdba.jpeg', ''),
(132, 193, '3078323/post_images/18bc2596f31712d1676618821547ab12.jpeg', ''),
(133, 216, '7811366/post_images/28ee501720668d193682d4014185df58.jpg', ''),
(134, 217, '1128770/post_images/5dd52729b5430a257172f3982f604735.jpg', ''),
(135, 218, '1128770/post_images/bcb5774408a0a34f84f6e5b2cf21484b.jpg', ''),
(136, 261, '1128770/post_images/fb9007b644b66894758c387ab1128a69.jpg', ''),
(137, 267, '1925873/post_images/e7b01f2327b0f34e5b8492cc2db19201.jpg', ''),
(138, 267, '1925873/post_images/af6e7957a54df8fe23cb078600c9d8fc.jpg', ''),
(139, 267, '1925873/post_images/76bf4a7e9c85932eef7af9a8b2a683b6.jpg', ''),
(140, 268, '1925873/post_images/c52fd030e1d8d95fb1d284ccdc7f394c.gif', ''),
(141, 268, '1925873/post_images/bd9f3883eac04ea3d91036f5e53caaae.jpeg', ''),
(142, 270, '2660679/post_images/2c86f92c4060dfe0e274dfac89ad33ee.jpeg', ''),
(143, 270, '2660679/post_images/5d949da4537e000401a104a14a01b6f2.jpg', ''),
(144, 271, '1925873/post_images/ee6fad7d413a1d3e2adfe20444eaaea7.jpeg', ''),
(145, 272, '1925873/post_images/b423062e150bc82964f82430045e0eaf.jpg', ''),
(146, 272, '1925873/post_images/c108bbdf4a13b449b7238a20bd8f6718.jpg', ''),
(147, 272, '1925873/post_images/81949cb5a9ba35098d95158553910dbd.jpg', ''),
(148, 273, '2660679/post_images/f151e522968db3c3e90c765e56b1bb51.jpeg', ''),
(149, 274, '2660679/post_images/a06642201c3485a7d233357f03b0df56.jpg', ''),
(150, 277, '2660679/post_images/be3dd402df65debb41f9824d15188b3e.jpg', ''),
(151, 277, '2660679/post_images/f5da862255b3461f5f76b4733e599158.jpg', ''),
(152, 287, '9754021/post_images/20e451d3ef38d78d87f37454098c7b62.jpg', ''),
(153, 288, '9754021/post_images/1633f99e782729b024c0c28abd3458b6.jpg', ''),
(154, 304, '2660679/post_images/f8adbd4946ae9e92f73e2a60677307e0.jpg', ''),
(155, 305, '2660679/post_images/8c672bf865d681c54a3e06175cfa1594.jpg', ''),
(156, 305, '2660679/post_images/23cf6dc6d69f5f7ce7e757eb49f0caab.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `post_media_comments`
--

CREATE TABLE IF NOT EXISTS `post_media_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `commenter_unique_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post_media_likes`
--

CREATE TABLE IF NOT EXISTS `post_media_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `liker_unique_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rand_images`
--

CREATE TABLE IF NOT EXISTS `rand_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `uniqueid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usersid` (`uniqueid`),
  KEY `uniqueid` (`uniqueid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rehome_updates`
--

CREATE TABLE IF NOT EXISTS `rehome_updates` (
  `r_update_id` int(11) NOT NULL AUTO_INCREMENT,
  `rh_id_fk` int(11) DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `rh_data` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` mediumtext NOT NULL,
  `img_count` int(11) NOT NULL,
  `video` mediumtext NOT NULL,
  `vid_count` int(11) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`r_update_id`),
  KEY `rh_id_fk` (`rh_id_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE IF NOT EXISTS `shares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(120) NOT NULL,
  `sharer_id` int(120) NOT NULL,
  `share_with_id` int(100) NOT NULL,
  `type` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `post_id`, `sharer_id`, `share_with_id`, `type`, `time`) VALUES
(39, 116, 4460738, 7705898, 'post', '2017-12-04 16:58:42'),
(40, 105, 7705898, 4460738, 'post', '2017-12-04 17:06:11'),
(41, 122, 4460738, 2372791, 'post', '2017-12-04 17:32:31'),
(42, 50, 2395741, 7705898, 'post', '2017-12-05 11:50:04'),
(43, 124, 2395741, 7705898, 'post', '2017-12-05 11:51:43'),
(44, 42, 2395741, 7705898, 'post', '2017-12-05 11:54:15'),
(45, 40, 2395741, 7705898, 'post', '2017-12-05 11:54:53'),
(47, 39, 2395741, 7705898, 'post', '2017-12-05 11:56:31'),
(48, 128, 2395741, 7705898, 'post', '2017-12-05 11:57:21'),
(49, 1, 7705898, 4460738, 'post', '2017-12-05 13:10:41'),
(50, 130, 7705898, 4460738, 'post', '2017-12-05 13:15:14'),
(51, 30, 7705898, 2395741, 'post', '2017-12-05 14:15:47'),
(52, 19, 7705898, 2395741, 'post', '2017-12-05 14:49:30'),
(53, 58, 4460738, 7705898, 'post', '2017-12-05 16:13:30'),
(54, 151, 4460738, 7705898, 'post', '2017-12-07 16:47:54'),
(55, 149, 2580830, 7101212, 'post', '2017-12-07 17:23:35'),
(56, 159, 7101212, 2580830, 'post', '2017-12-07 17:25:21'),
(59, 171, 1925873, 4460738, 'post', '2017-12-11 16:57:12'),
(60, 175, 6230533, 4460738, 'post', '2017-12-13 13:57:21'),
(61, 154, 6230533, 4460738, 'post', '2017-12-13 14:00:46'),
(62, 182, 4460738, 6230533, 'post', '2017-12-16 11:55:58'),
(63, 153, 7705898, 7025846, 'post', '2017-12-18 15:25:12'),
(64, 153, 7705898, 4460738, 'post', '2017-12-18 15:27:11'),
(65, 175, 2395741, 7378268, 'post', '2017-12-18 16:27:46'),
(66, 171, 7705898, 2395741, 'post', '2017-12-18 18:15:44'),
(67, 171, 7705898, 2372791, 'post', '2017-12-18 18:15:44'),
(68, 180, 7705898, 2580830, 'post', '2017-12-19 11:39:11'),
(69, 180, 7705898, 7025846, 'post', '2017-12-19 11:39:11'),
(70, 180, 7705898, 6230533, 'post', '2017-12-19 11:39:11'),
(71, 188, 4460738, 6230533, 'post', '2017-12-19 14:57:43'),
(72, 182, 4460738, 7705898, 'post', '2017-12-20 16:54:32'),
(73, 182, 4460738, 2395741, 'post', '2017-12-20 16:54:32'),
(74, 181, 4460738, 2372791, 'post', '2017-12-20 16:57:19'),
(75, 181, 4460738, 7705898, 'post', '2017-12-20 16:57:19'),
(76, 181, 4460738, 6230533, 'post', '2017-12-20 16:57:19'),
(77, 181, 4460738, 2395741, 'post', '2017-12-20 16:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE IF NOT EXISTS `updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_fk` varchar(45) DEFAULT NULL,
  `group_id_fk` int(11) DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `post_data` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` mediumtext NOT NULL,
  `img_count` int(11) NOT NULL,
  `video` mediumtext NOT NULL,
  `vid_count` int(11) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`update_id`),
  KEY `user_id_fk` (`user_id_fk`),
  KEY `group_id_fk` (`group_id_fk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`update_id`, `user_id_fk`, `group_id_fk`, `title`, `post_data`, `url`, `image`, `img_count`, `video`, `vid_count`, `created`, `ip`) VALUES
(1, '7705898', 1, '', '', '', '7705898/Groups/Pet Day Awareness/post_images/5492c62333c9f75ea25261412723fd66.jpg,7705898/Groups/Pet Day Awareness/post_images/d77aa8c905cd3187e8c814bd3c050280.jpeg,7705898/Groups/Pet Day Awareness/post_images/595938aedd6da318d29d7c2b219fbbf2.jpeg,7705898/Groups/Pet Day Awareness/post_images/d76b1786ada7a716993d38361a66b92b.jpeg', 4, '', 0, 2017, NULL),
(2, '2372791', 1, '', '', '', '2372791/Groups/Pet Day Awareness/post_images/bfd8e48cd58a6365e7ba082cc6e43899.jpeg,2372791/Groups/Pet Day Awareness/post_images/6e1c9e4e4359eab3b72caa3ed667c74b.jpg', 2, '', 0, 2017, NULL),
(3, '7705898', 1, '', '', '', '7705898/Groups/Pet Day Awareness/post_images/aa5ad750cf671a79ade2240af7ef1b68.jpg', 1, '', 0, 2017, NULL),
(4, '7705898', 5, 'My dog', '', '', '7705898/Groups/Grp54/post_images/a402a854f7f8349cc356160b23dedafa.jpg,7705898/Groups/Grp54/post_images/260aee75c00517c4ca2c1b39daac1132.jpeg', 2, '', 0, 2017, NULL),
(7, '1925873', 4, '', '', '', '1925873/Groups/Grp11/post_images/a3eb37ebda7fa1f6a5d6554f13e30aaf.jpg', 1, '', 0, 2017, NULL),
(8, '1925873', 4, 'Demo121', '', 'www.google.com', '1925873/Groups/Grp11/post_images/1a75b6e18833fba5195505a70a2377f7.jpg', 1, '', 0, 2017, NULL),
(9, '7705898', 10, 'Demo', '', '', '7705898/Groups/Testgrp/post_images/4e707e20800fd2ded0e1ebbf534d575b.jpg', 1, '', 0, 2017, NULL),
(10, '1925873', 11, 'My dog', '', 'www.petbooq.com', '1925873/Groups/Testgroup11/post_images/0b1d6de7ad9ca8f0fd778a025dad7c87.jpg,1925873/Groups/Testgroup11/post_images/c6364ac825392aff2b7ca187efb2ca76.jpeg', 2, '', 0, 2017, NULL),
(11, '7705898', 4, 'My dog', '', 'www.google.com', '7705898/Groups/Grp11/post_images/d9072e7871841cab5d897eba3a48ae3c.jpg,7705898/Groups/Grp11/post_images/1f27811085cf8519804df1cae49dfee2.jpeg', 2, '', 0, 2017, NULL),
(12, '2395741', 12, 'Best food show in delhi / NCR', 'Best food show in delhi / NCR', '', '2395741/Groups/Dodo Dog Community/post_images/855cd9df22ba310632a2915a87ec1262.jpg', 1, '', 0, 2017, NULL),
(13, '4460738', 5, 'Demo', '', 'www.petbooq.com', '4460738/Groups/Grp54/post_images/6b6d34448ed0a495a57810f1361a27b7.jpg', 1, '', 0, 2017, NULL),
(14, '2372791', 14, 'My dog343', '', 'www.google.com', '2372791/Groups/Matt Grp/post_images/a500fe0040a0dbf4959083db3de23f67.jpg,2372791/Groups/Matt Grp/post_images/64be9c73d1250cbaa5d465ac5851377c.jpeg,2372791/Groups/Matt Grp/post_images/dfdad8517ab0e038da719ca24b6dac23.jpeg', 3, '', 0, 2017, NULL),
(15, '2372791', 10, 'D1212', '', 'www.google.com', '2372791/Groups/Testgrp/post_images/63a013148b19e5ab305cc8e7bac9ab4d.jpg,2372791/Groups/Testgrp/post_images/022342ab762951f1eecdbb205bc8c3f4.jpeg', 2, '', 0, 2017, NULL),
(16, '2660679', 15, 'My dogwq', '', 'www.google.com', '2660679/Groups/SECA/post_images/e96eb2a8fc000812980e3449cf5bc490.jpg', 1, '', 0, 2017, NULL),
(17, '4460738', 15, 'Mysde', '', 'www.google.com', '4460738/Groups/SECA/post_images/24e53f0bd65218989e3de9237c38358b.jpeg,4460738/Groups/SECA/post_images/f5daaafd9a97de70282623d92af364d2.jpeg', 2, '', 0, 2017, NULL),
(18, '4460738', 13, 'Derrr', '', 'www.petbooq.com', '4460738/Groups/NGO grp11/post_images/07d007025284d1feb316a8dbacdb3be6.jpg,4460738/Groups/NGO grp11/post_images/4bdc805bb8017b13bf0a19a9d03a022b.jpg', 2, '', 0, 2017, NULL),
(19, '1925873', 7, 'Myqw', '', 'www.google.com', '1925873/Groups/Group 45/post_images/1c30903ebf03f6f34897fcbb336136f1.jpg,1925873/Groups/Group 45/post_images/1faf76dbdf9e21c50eb3b0e181192c41.jpeg', 2, '', 0, 2017, NULL),
(38, '4460738', 13, 'Derrr33', 'dsddd', '', '4460738/Groups/NGO grp11/post_images/6607ee7562a003269e18c9b49991fdc7.jpg', 1, '', 0, 2017, NULL),
(23, '2395741', 16, 'Explore your business goes here for you and me which help for you improve me ', 'Explore your business goes here for you and me which help for you improve me Explore your business goes here for you and me which help for you improve me Explore your business goes here for you and me which help for you improve me ', '', '', 0, '', 0, 2017, NULL),
(24, '2395741', 12, '', 'Explore your business goes here for you and me which help for you improve me Explore your business goes here for you and me which help for you improve me Explore your business goes here for you and me which help for you improve me ', '', '2395741/Groups/Dodo Dog Community/post_images/4a8ddd4bbba41790d0286765ad5ab3cc.jpeg,2395741/Groups/Dodo Dog Community/post_images/3c8d2d9f5f85783e988c1c01c5c70266.jpeg', 2, '', 0, 2017, NULL),
(25, '4460738', 1, 'sadsssa', '', 'www.petbooq.com', '4460738/Groups/Pet Day Awareness/post_images/fee6dc9a86745c75ca2a555be62960ae.jpg', 1, '', 0, 2017, NULL),
(26, '7705898', 1, '', '', '', '7705898/Groups/Pet Day Awareness/post_images/22af728e1ae67e35686cf4389837815c.jpeg', 1, '', 0, 2017, NULL),
(27, '1925873', 4, '', '', '', '1925873/Groups/Grp11/post_images/3b6b3fb861c46d80cc6379fc4741d31d.jpeg,1925873/Groups/Grp11/post_images/60bf7ad6c0b7b8006142fb573e3f4a2a.jpg', 2, '', 0, 2017, NULL),
(28, '1925873', 4, '', '', '', '1925873/Groups/Grp11/post_images/ed94755322d31a637b099ee350a28923.jpg,1925873/Groups/Grp11/post_images/bfe6f6b64a24bd0a2c005dc8ec2ace33.jpg', 2, '', 0, 2017, NULL),
(29, '1925873', 17, '', '', '', '1925873/Groups/tesla_gp/post_images/4a5642b79b622ae776c5aafe9d7a7f9e.jpg', 1, '', 0, 2017, NULL),
(30, '1925873', 17, '', '', '', '1925873/Groups/tesla_gp/post_images/7034d8cf12078648a390b39a52023a57.jpeg', 1, '', 0, 2017, NULL),
(31, '7705898', 22, '', '', '', '7705898/Groups/Bailey_page_12/post_images/f522ab11409ad9868756f33c9d89e204.jpeg,7705898/Groups/Bailey_page_12/post_images/74265d5e22b74cc7d36a26726933e5c6.jpg,7705898/Groups/Bailey_page_12/post_images/799ed20f961f807711cfda966df90639.jpg,7705898/Groups/Bailey_page_12/post_images/a2beb0b1d5da944ec7324dc86cc70197.jpeg', 4, '', 0, 2017, NULL),
(32, '2660679', 15, '', '', '', '2660679/Groups/SECA/post_images/07fcd520a13dcd90d27388176ccad9f4.jpg', 1, '', 0, 2017, NULL),
(33, '1925873', 1, '', '', 'www.google.com', '1925873/Groups/Pet Day Awareness/post_images/54330bd45b5e71d9578c85822004f568.jpg,1925873/Groups/Pet Day Awareness/post_images/1f55d6bd2a0faadfa14dc5e7740a0c9e.jpeg', 2, '', 0, 2017, NULL),
(34, '2660679', 23, '', '', 'www.google.com', '2660679/Groups/Friendicoes Grp/post_images/d46b55fbc86efba51202a71dc5462180.jpg', 1, '', 0, 2017, NULL),
(35, '4460738', 23, 'Derrr43', '', 'www.google.com', '4460738/Groups/Friendicoes Grp/post_images/91ae900c4e738c50d9652c1c1e92dccc.jpeg,4460738/Groups/Friendicoes Grp/post_images/f7eaf6748d60f20684597ef327749d70.jpeg', 2, '', 0, 2017, NULL),
(36, '2660679', 25, 'My dog1111', '', 'www.petbooq.com', '2660679/Groups/SCBB/post_images/6478110500dad92a524b77c1d412cf8f.jpg', 1, '', 0, 2017, NULL),
(37, '7705898', 16, '', '', 'www.google.com', '7705898/Groups/Pet compitition /post_images/08df15076378df0fc3fc3d8dfb78304c.jpg', 1, '', 0, 2017, NULL),
(39, '4460738', 1, 'ffdh44', 'dfee', '', '4460738/Groups/Pet Day Awareness/post_images/a0bc0bc1364826823dc4b476dccb920c.jpg', 1, '', 0, 2017, NULL),
(40, '2660679', 23, 'fgddd', 'sdss', '', '2660679/Groups/Friendicoes Grp/post_images/0286dbf6e8351b38c1aba8f42ea39c76.jpeg,2660679/Groups/Friendicoes Grp/post_images/593e5bc1699659ec86ec68b33c7223bf.jpeg', 2, '', 0, 2017, NULL),
(41, '7025846', 28, '', '', '', '7025846/Groups/Duke Group/post_images/b0598881f83e4e85137106a3f179aca8.jpg,7025846/Groups/Duke Group/post_images/e3fb8c7d461b3c83c5ca4bbb31b28cae.jpg,7025846/Groups/Duke Group/post_images/6b7c3f9533c074d39d86e8430ee3687f.jpg', 3, '', 0, 2017, NULL),
(42, '1925873', 1, '', '', '', '1925873/Groups/Pet Day Awareness/post_images/d6defe60c5f4a064d8966610d329a709.jpg,1925873/Groups/Pet Day Awareness/post_images/285b37ac66a9f3bc81630d7b028c16d8.jpg,1925873/Groups/Pet Day Awareness/post_images/7f91e0655f3f920ed2b44e73b51cdde6.jpg,1925873/Groups/Pet Day Awareness/post_images/8063c0bb33e4057d3787d1941dd1de6a.jpg,1925873/Groups/Pet Day Awareness/post_images/6d1c7be1cb54a659be319f74fb4b0779.jpg,1925873/Groups/Pet Day Awareness/post_images/c2ad3de2614b2434e1697e2c83ac2a94.jpg,1925873/Groups/Pet Day Awareness/post_images/af436ebb54651d36f24fc5aa40846166.jpg,1925873/Groups/Pet Day Awareness/post_images/dacc4685fae7d6de6ce7b4c606914332.jpg', 8, '', 0, 2017, NULL),
(43, '7025846', 12, '', '', '', '7025846/Groups/Dodo Dog Community/post_images/21ae98d7b2fce2ba620ed90e199049a3.jpg,7025846/Groups/Dodo Dog Community/post_images/6437f950e70a3963a44860fbea7be806.jpg,7025846/Groups/Dodo Dog Community/post_images/1d5b8ccc0580e4b4c61b76c2776b6ce6.jpg,7025846/Groups/Dodo Dog Community/post_images/a7a706ac68981f53850989b8178ab348.jpg,7025846/Groups/Dodo Dog Community/post_images/06f9cee156b80978dc0badb8b4f2514b.jpg,7025846/Groups/Dodo Dog Community/post_images/8c9134513a9ddd02870bd2b651cb080e.jpg,7025846/Groups/Dodo Dog Community/post_images/8a09160b4abef760f1e4c8188e3416bb.jpg,7025846/Groups/Dodo Dog Community/post_images/78d280096ff8049b19d48ce9c58bb8d9.jpg', 8, '', 0, 2017, NULL),
(44, '1925873', 17, 'aQQ', 'aa', 'www.google.com', '1925873/Groups/tesla_gp/post_images/e446308c3eefcb9718ea912b0c9c9382.jpg,1925873/Groups/tesla_gp/post_images/7f2a7d875a30d1d48e0848650d113007.jpg,1925873/Groups/tesla_gp/post_images/466aed1ee7a62c3186d08e617aa5ea51.jpeg,1925873/Groups/tesla_gp/post_images/6fe869292e34c45d883b604501e76f8d.jpg,1925873/Groups/tesla_gp/post_images/2183f2198e0ab01fd5b8d4925150da08.jpg,1925873/Groups/tesla_gp/post_images/dfe325c3e7cf4bfa2eb14fff6076a492.jpeg,1925873/Groups/tesla_gp/post_images/c28b347af308ec127535f18981bf49b7.jpeg,1925873/Groups/tesla_gp/post_images/45ada1bdc7fbf4b22a1b967924c58b60.jpeg', 8, '', 0, 2017, NULL),
(45, '2395741', 31, 'Hello', 'mobile test mobile test ', 'petbooq.com', '2395741/Groups/mobile test/post_images/f90fc58f98f2a73bfda46d37dda7c7ad.jpg', 1, '', 0, 2017, NULL),
(46, '2395741', 27, '', '', '', '2395741/Groups/Pet comp/post_images/35f8f520bdb691f6879c64f27a9aa974.jpeg', 1, '', 0, 2017, NULL),
(47, '7811366', 32, '', 'New Friends', '', '7811366/Groups/Cats and Dogs Lovers/post_images/473734c6ee2372dec233e6c192ec23d7.PNG', 1, '', 0, 2017, NULL),
(48, '2395741', 34, '', '', '', '2395741/Groups/Leela Group/post_images/a0029c06f6f779bc8ccc931fc6034ebe.jpeg', 1, '', 0, 2018, NULL),
(49, '2395741', 34, '', 'A pet or companion animal is an animal kept primarily for a person''s company, protection, or entertainment rather than as a working animal, livestock, or laboratory animal. Popular pets are often noted for their attractive appearances and their loyal or p', '', '', 0, '', 0, 2018, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uploadimages`
--

CREATE TABLE IF NOT EXISTS `uploadimages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniqueid` int(10) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_type` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniqueid` (`uniqueid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `uploadimages`
--

INSERT INTO `uploadimages` (`id`, `uniqueid`, `image_name`, `image_type`, `image_path`) VALUES
(1, 7705898, 'image1.jpg', 'image/jpg', '7705898/Photos/image1.jpg'),
(2, 7705898, 'image2.jpg', 'image/jpg', '7705898/Photos/image2.jpg'),
(3, 7705898, 'image3.jpg', 'image/jpg', '7705898/Photos/image3.jpg'),
(4, 7705898, 'image4.jpg', 'image/jpg', '7705898/Photos/image4.jpg'),
(5, 7705898, 'image-5.jpg', 'image/jpg', '7705898/Photos/image-5.jpg'),
(6, 7705898, 'image6.jpg', 'image/jpg', '7705898/Photos/image6.jpg'),
(7, 7705898, 'image7.jpg', 'image/jpg', '7705898/Photos/image7.jpg'),
(8, 7705898, 'image8.jpg', 'image/jpg', '7705898/Photos/image8.jpg'),
(9, 7705898, 'image9.jpg', 'image/jpg', '7705898/Photos/image9.jpg'),
(10, 7705898, 'image10.jpg', 'image/jpg', '7705898/Photos/image10.jpg'),
(11, 7705898, 'image11.jpg', 'image/jpg', '7705898/Photos/image11.jpg'),
(12, 7705898, 'image12.jpg', 'image/jpg', '7705898/Photos/image12.jpg'),
(13, 7705898, 'image13.jpg', 'image/jpg', '7705898/Photos/image13.jpg'),
(14, 7705898, 'image14.jpg', 'image/jpg', '7705898/Photos/image14.jpg'),
(15, 7705898, 'image15.jpg', 'image/jpg', '7705898/Photos/image15.jpg'),
(16, 7705898, 'image16.jpg', 'image/jpg', '7705898/Photos/image16.jpg'),
(17, 7705898, 'image17.jpg', 'image/jpg', '7705898/Photos/image17.jpg'),
(18, 7705898, 'image18.jpg', 'image/jpg', '7705898/Photos/image18.jpg'),
(19, 7705898, 'image19.jpg', 'image/jpg', '7705898/Photos/image19.jpg'),
(20, 7705898, 'image20.jpg', 'image/jpg', '7705898/Photos/image20.jpg'),
(21, 7705898, 'image21.jpg', 'image/jpg', '7705898/Photos/image21.jpg'),
(22, 7705898, 'image22.jpg', 'image/jpg', '7705898/Photos/image22.jpg'),
(23, 7705898, 'image23.jpg', 'image/jpg', '7705898/Photos/image23.jpg'),
(24, 7705898, 'image24.jpg', 'image/jpg', '7705898/Photos/image24.jpg'),
(25, 7705898, 'image25.jpg', 'image/jpg', '7705898/Photos/image25.jpg'),
(26, 7705898, 'image26.jpg', 'image/jpg', '7705898/Photos/image26.jpg'),
(27, 7705898, 'image27.jpg', 'image/jpg', '7705898/Photos/image27.jpg'),
(28, 7705898, 'image28.jpg', 'image/jpg', '7705898/Photos/image28.jpg'),
(29, 7705898, 'image29.jpg', 'image/jpg', '7705898/Photos/image29.jpg'),
(30, 7705898, 'image30.jpg', 'image/jpg', '7705898/Photos/image30.jpg'),
(31, 7705898, 'image31.jpg', 'image/jpg', '7705898/Photos/image31.jpg'),
(32, 7705898, 'image32.jpg', 'image/jpg', '7705898/Photos/image32.jpg'),
(33, 7705898, 'image33.jpg', 'image/jpg', '7705898/Photos/image33.jpg'),
(34, 7705898, 'image34.jpg', 'image/jpg', '7705898/Photos/image34.jpg'),
(35, 7705898, 'image35.jpg', 'image/jpg', '7705898/Photos/image35.jpg'),
(36, 7705898, 'image36.jpg', 'image/jpg', '7705898/Photos/image36.jpg'),
(37, 7705898, 'image37.jpg', 'image/jpg', '7705898/Photos/image37.jpg'),
(38, 7705898, 'image38.jpg', 'image/jpg', '7705898/Photos/image38.jpg'),
(39, 7705898, 'image39.jpg', 'image/jpg', '7705898/Photos/image39.jpg'),
(40, 7705898, 'image40.jpg', 'image/jpg', '7705898/Photos/image40.jpg'),
(41, 7705898, 'image41.jpg', 'image/jpg', '7705898/Photos/image41.jpg'),
(42, 7705898, 'image42.jpg', 'image/jpg', '7705898/Photos/image42.jpg'),
(43, 7705898, 'image43.jpg', 'image/jpg', '7705898/Photos/image43.jpg'),
(44, 7705898, 'image44.jpg', 'image/jpg', '7705898/Photos/image44.jpg'),
(45, 7705898, 'image45.jpg', 'image/jpg', '7705898/Photos/image45.jpg'),
(46, 7705898, 'image46.jpg', 'image/jpg', '7705898/Photos/image46.jpg'),
(47, 7705898, 'image47.jpg', 'image/jpg', '7705898/Photos/image47.jpg'),
(48, 7705898, 'image48.jpg', 'image/jpg', '7705898/Photos/image48.jpg'),
(49, 7705898, 'image49.jpg', 'image/jpg', '7705898/Photos/image49.jpg'),
(50, 7705898, 'image50.jpg', 'image/jpg', '7705898/Photos/image50.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` text NOT NULL,
  `hash` varchar(32) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=132 ;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `A` int(7) DEFAULT NULL,
  `B` varchar(22) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_inf`
--

CREATE TABLE IF NOT EXISTS `user_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_name` varchar(255) DEFAULT NULL,
  `type_of_pet` varchar(255) DEFAULT NULL,
  `breed` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `powner_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pet_unique_id` int(10) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `about_data` varchar(255) NOT NULL DEFAULT '',
  `profile_pic` varchar(255) NOT NULL,
  `bg_image` varchar(255) NOT NULL,
  `craetedOn` datetime NOT NULL,
  `updateOn` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pet_unique_id` (`pet_unique_id`),
  KEY `pet_unique_id_2` (`pet_unique_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `user_inf`
--

INSERT INTO `user_inf` (`id`, `pet_name`, `type_of_pet`, `breed`, `dob`, `powner_name`, `email`, `password`, `country`, `phone`, `pet_unique_id`, `status`, `about_data`, `profile_pic`, `bg_image`, `craetedOn`, `updateOn`) VALUES
(2, 'Matt demon', 'Dog', '', '23-November-2017', 'Albert John', 'monish.petbooq@gmail.com', '733d7be2196ff70efaf6913fc8bdcabf', '91', '9878987897', 2372791, '1', '', '2372791/profile_pic/pexels-photo-10517.jpeg', '2372791/profile_pic/1.jpg', '2017-11-23 05:29:46', '0000-00-00 00:00:00'),
(3, 'leela', 'Cat', '', '2-February-2012', 'Bhanu', 'saroji.anand@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '91', '9910991689', 2395741, '1', '', '2395741/profile_pic/cute_cat_06_hd_picture_170909.jpg', '2395741/profile_pic/christmas_bird_decoration_200892.jpg', '2017-11-23 09:02:57', '0000-00-00 00:00:00'),
(4, 'Buzo', 'Dog', '', '10-December-2010', 'Mudit', 'mudit.pant11@gmail.com', '3a714b07ec44c1f6eca4bb7b7bddad1f', '91', '8586979990', 4460738, '1', '', '', '', '2017-11-23 11:04:27', '0000-00-00 00:00:00'),
(5, 'Max', 'Dog', '', '17-April-2010', 'kArl', 'grishapink@emailr.win', 'e10adc3949ba59abbe56e057f20f883e', 'Germany', '0989786534', 6612052, '1', '', '', '', '2017-11-27 10:27:22', '0000-00-00 00:00:00'),
(6, 'Luthers', 'Rabbit', '', '16-February-2028', 'Roxy', 'irenevyshinsky@eyed.ml', 'e10adc3949ba59abbe56e057f20f883e', 'Bahamas', '0989786534', 9656796, '1', '', '', '', '2017-11-27 11:06:24', '0000-00-00 00:00:00'),
(7, 'Monish', 'Rabbit', '', '4-May-2019', 'Mohd', 'lilypopular@sapbox.bid', 'e10adc3949ba59abbe56e057f20f883e', 'India', '0989786534', 5170933, '1', '', '', '', '2017-11-28 09:08:50', '0000-00-00 00:00:00'),
(8, 'assi', 'Dog', '', '8-August-2018', 'Mohit Madan', 'petbooq@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'India', '9910225483', 5013361, '1', 'assi is a Golden Retriever Dog. He is very energetic and loyal. He love to take bath in rain. He is very Corporative.. ', '5013361/profile_pic/8f443a7e95d7445a41b2115330d2a4f1.jpg', '5013361/profile_pic/dont-leave-me-beind-4.jpg', '2017-11-28 11:37:54', '2017-11-28 04:40:08'),
(9, 'Alexaa', 'Cat', '', '2-March-2012', 'John', 'bepigus@tm2mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'India', '988987898', 8456389, '1', '', '8456389/profile_pic/pexels-photo-573256.jpeg', '', '2017-12-04 08:39:26', '0000-00-00 00:00:00'),
(10, 'Maximus', 'Rabbit', '', '4-June-2015', 'Muller', 'mipucu@tm2mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'India', '0989786534', 9644365, '1', '', '9644365/profile_pic/cat-animal-cat-portrait-mackerel.jpg', '9644365/profile_pic/cat-favorite-relaxation-rest-39255.jpeg', '2017-12-05 11:54:48', '0000-00-00 00:00:00'),
(11, 'Tucker', 'Dog', '', '4-July-2011', 'Alexander', 'xopuc@balanc3r.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 'India', '7800987280', 2580830, '1', '', '2580830/profile_pic/photo-1455526050980-d3e7b9b789a4.jpg', '2580830/profile_pic/photo-1427985841921-acba1301576e.jpg', '2017-12-06 08:35:34', '0000-00-00 00:00:00'),
(12, 'Duke', 'Dog', '', '3-March-2014', 'Jacob', 'ask04ask@gmail.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 'India', '7800987279', 7025846, '1', 'A survey performed by Rover.com concluded that almost half of pets in the United States were given traditionally human names this year.', '7025846/profile_pic/bella-dog.jpg', '7025846/profile_pic/5.jpg', '2017-12-06 08:50:32', '2017-12-06 01:56:50'),
(17, 'Shaggy', 'Dog', '', '12-July-2011', 'Aman', 'mudit.pant011@gmail.com', '040b7cf4a55014e185813e0644502ea9', 'India', '8586979990', 6230533, '1', '', '6230533/profile_pic/dog-hovawart-black-pet-89775.jpeg', '', '2017-12-07 07:11:48', '2017-12-07 00:32:14'),
(21, 'Daisy', 'Dog', '', '3-December-2012', 'Joy', 'raya@ax80mail.com', '32cc05ae2f9e0b3878d28fa3f5515b68', 'India', '7800976789', 1928902, '1', '', '1928902/profile_pic/photo-1437957146754-f6377debe171.jpg', '1928902/profile_pic/photo-1478254475213-0bffd484f46c.jpg', '2017-12-07 11:20:59', '0000-00-00 00:00:00'),
(22, 'Molly', 'Dog', '', '3-December-2013', 'Rony', 'fefi@cobin2hood.com', 'a931d0c7d800a61ecb0495e3968a8c68', 'India', '7800987279', 7101212, '1', '', '7101212/profile_pic/photo-1475954704693-ac6850a71ee0.jpg', '7101212/profile_pic/photo-1452698200792-0d1e0c1b429a.jpg', '2017-12-07 11:39:10', '0000-00-00 00:00:00'),
(23, 'Buzo t', 'Dog', '', '16-March-2022', 'Pradeep', 'sagarpradeep888@gmail.com', '65b20e102f369c75c169aef14d2fb9f6', 'Bangladesh', '23566743', 7646850, '1', '', '', '', '2017-12-08 06:46:16', '0000-00-00 00:00:00'),
(24, 'tingy', 'Dog', '', '10-January-2016', 'bhumi anand', 'bhumi06.2003@gmail.com', '0707d9930275bb8be3046c554399c343', 'India', '9818921289', 8961011, '1', '', '', '', '2017-12-08 09:50:40', '0000-00-00 00:00:00'),
(26, 'Tangos', 'Rabbit', '', '1-June-2013', 'Maximus', 'cuposu@balanc3r.com', 'e10adc3949ba59abbe56e057f20f883e', 'India', '0989786534', 7378268, '1', '', '7378268/profile_pic/pexels-photo-452772.jpeg', '', '2017-12-18 08:25:59', '0000-00-00 00:00:00'),
(27, 'Pachis', 'Dog', '', '16-December-2016', 'Karan Minhas', 'noidahod@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'India', '9910225483', 3312322, '1', 'Pachis is very clever Dog. One of the beautiful haskey breed ever.', '3312322/profile_pic/photo-1478029973231-f42d99fe5c20.jpg', '3312322/profile_pic/photo-1504803542671-cb92eb06a148.jpg', '2017-12-18 12:17:05', '2017-12-18 05:20:32'),
(33, 'Brunoo', 'Dog', '', '2-February-2010', 'Brian', 'brian@hdjd.cio', '7eae3e48cf88f80737fdd71d25a2e7b9', 'India', '8808088080', 3009753, '1', '', '', '', '2017-12-26 10:48:00', '0000-00-00 00:00:00'),
(34, 'Shampy', 'Dog', '', '1-February-2011', 'Brill', 'brill@gdhhd.com', '7eae3e48cf88f80737fdd71d25a2e7b9', 'India', '9877666666', 6861755, '1', '', '', '', '2017-12-26 11:00:21', '0000-00-00 00:00:00'),
(37, 'kitty', 'Cat', '', '1-January-2010', 'Naveen', 'naveen@jdjjf.com', '7eae3e48cf88f80737fdd71d25a2e7b9', 'India', '9988888888', 8918319, '1', '', '', '', '2017-12-26 11:11:30', '0000-00-00 00:00:00'),
(45, 'Matti', 'Bird', '', '14-May-2014', 'Om prakash mishra', 'Mohit.petbooq@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'Costa Rica', '9716680125', 5685284, '1', '', '5685284/profile_pic/F08D5014-460A-45F2-9539-62800C210656.jpeg', '5685284/profile_pic/EB978316-EB6A-4970-91BA-CDC5F94493A0.jpeg', '2017-12-27 07:09:49', '0000-00-00 00:00:00'),
(48, 'Buzo', 'Rabbit', '', '10-February-2010', 'Pradeep', 'sagar.hgtv@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'India', '54654645', 2602490, '1', '', '', '', '2017-12-29 08:52:36', '0000-00-00 00:00:00'),
(49, 'Sixty six', 'Dog', '', '10-March-2028', 'Ankit Sharma', 'dcehod@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Bangladesh', '9716680125', 8645510, '1', '', '', '', '2018-01-02 12:00:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `int` int(10) NOT NULL AUTO_INCREMENT,
  `pet_name` varchar(255) NOT NULL,
  `type_of_pet` int(255) NOT NULL,
  `powner_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pet_unique_id` varchar(255) NOT NULL,
  PRIMARY KEY (`int`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE IF NOT EXISTS `user_infos` (
  `pet_name` varchar(255) DEFAULT NULL,
  `type_of_pet` varchar(255) DEFAULT NULL,
  `powner_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pet_unique_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_relation`
--

CREATE TABLE IF NOT EXISTS `user_relation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `main_user_id` int(100) NOT NULL,
  `user_unique_id` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `videoupload`
--

CREATE TABLE IF NOT EXISTS `videoupload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniqueid` int(100) NOT NULL,
  `video_name` varchar(100) NOT NULL,
  `video_type` varchar(100) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `craetedOn` datetime NOT NULL,
  `updateOn` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `videoupload`
--

INSERT INTO `videoupload` (`id`, `uniqueid`, `video_name`, `video_type`, `image_path`, `craetedOn`, `updateOn`) VALUES
(1, 7705898, 'video2.mp4', 'video/mp4', '7705898/Videos/video2.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 7705898, 'video1.mp4', 'video/mp4', '7705898/Videos/video1.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 7705898, 'video3.mp4', 'video/mp4', '7705898/Videos/video3.mp4', '2017-11-23 00:00:00', '0000-00-00 00:00:00'),
(4, 7705898, 'video-1.mp4', 'video/mp4', '7705898/Videos/video-1.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 7705898, 'video-2.mp4', 'video/mp4', '7705898/Videos/video-2.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 7705898, 'video-3.mp4', 'video/mp4', '7705898/Videos/video-3.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7705898, 'video-4.mp4', 'video/mp4', '7705898/Videos/video-4.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 7705898, 'video-5.mp4', 'video/mp4', '7705898/Videos/video-5.mp4', '2017-11-23 00:00:00', '0000-00-00 00:00:00'),
(10, 7705898, 'video-6.mp4', 'video/mp4', '7705898/Videos/video-6.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 7705898, 'video-7.mp4', 'video/mp4', '7705898/Videos/video-7.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 7705898, 'video-8.mp4', 'video/mp4', '7705898/Videos/video-8.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 7705898, 'video-9.mp4', 'video/mp4', '7705898/Videos/video-9.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 7705898, 'video-10.mp4', 'video/mp4', '7705898/Videos/video-10.mp4', '2017-11-23 00:00:00', '0000-00-00 00:00:00'),
(15, 7705898, 'video-11.mp4', 'video/mp4', '7705898/Videos/video-11.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 7705898, 'video-12.mp4', 'video/mp4', '7705898/Videos/video-12.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 7705898, 'video-4.mp4', '', '7705898/Videos/68008ac1e8528f9e309c8065b8131638.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 4460738, 'MAH01585.MP4', '', '4460738/Videos/93e5da3dfdc5d5279530b40e9bca0ac3.MP4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 4460738, 'MVI_1100.AVI', '', '4460738/Videos/145aa63faa34fe7e3222c5440ec7e0ac.AVI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 4460738, 'mvi.avi', '', '4460738/Videos/dd408c28d49c98d3b06459915ae723e1.avi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 2395741, '12500902_740181999416161_1497177639_n.mp4', '', '2395741/Videos/246f93cf7e7a9474bdb1a73d33728688.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 2395741, 'puppies playing.mp4', '', '2395741/Videos/bb641740b9d562e3e8bd71e88f8bd691.mp4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wall_post`
--

CREATE TABLE IF NOT EXISTS `wall_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `child_postid` int(11) NOT NULL,
  `wall_post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `net_master`
--
ALTER TABLE `net_master`
  ADD CONSTRAINT `net_master_ibfk_1` FOREIGN KEY (`master_key`) REFERENCES `addfriendold` (`parent_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
