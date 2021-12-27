-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 08:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terra`
--
CREATE DATABASE IF NOT EXISTS `terra` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `terra`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `adminid` int(11) NOT NULL,
  `adminname` varchar(225) NOT NULL,
  `adminpassword` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`adminid`, `adminname`, `adminpassword`) VALUES
(1, 'admin', 'admin012');

-- --------------------------------------------------------

--
-- Table structure for table `booking_tbl`
--

CREATE TABLE `booking_tbl` (
  `bookingid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `destination_tbl`
--

CREATE TABLE `destination_tbl` (
  `destinationid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destination_tbl`
--

INSERT INTO `destination_tbl` (`destinationid`, `name`, `about`, `text`, `photo`) VALUES
(1, 'Nay Pyi Taw', 'Naypyidaw, officially spelled Nay Pyi Taw is the capital and third-largest city of Myanmar. The city is located at the center of the...', 'Naypyidaw, officially spelled Nay Pyi Taw, is the capital and third-largest city of Myanmar. The city is located at the center of the Naypyidaw Union Territory. It is unusual among Myanmar\'s cities, as it is an entirely planned city outside of any state or region. Similar planned cities include Canberra in Australia, Brasília in Brazil, Washington, D.C. in the United States, Islamabad in Pakistan, and Abuja in Nigeria. The city officially replaced Yangon as the administrative capital of Myanmar in 2006.', '../image/Destination/10.jpg'),
(2, 'Yangon', 'Yangon is the capital of independent Myanmar (Burma) from 1948 to 2006, when the government officially proclaimed...', 'Yangon also known as Rangoon, is the capital of the Yangon Region and the largest city of Myanmar (also known as Burma). Yangon served as the capital of Myanmar until 2006, when the military government relocated the administrative functions to the purpose-built capital city of Naypyidaw in north central Myanmar.With over 5 million people, Yangon is Myanmar\'s most populous city and its most important commercial centre.', '../image/Destination/Y6.jpg'),
(3, 'Mandalay', 'Mandalay is a city and former royal capital in northern Myanmar (formerly Burma) on the Irrawaddy River.In its center is the restored...', 'Mandalay is the second-largest city in Myanmar, after Yangon. Located on the east bank of the Irrawaddy River, 716 km (445 mi) north of Yangon, the city has a population of 1,225,553 (2014 census).Mandalay was founded in 1857 by King Mindon, replacing Amarapura as the new royal capital of the Konbaung dynasty. It was Burma\'s final royal capital before the kingdom\'s annexation by the British Empire in 1885. Under British rule, Mandalay remained commercially and culturally important despite the rise of Yangon, the new capital of British Burma. The city suffered extensive destruction during the Japanese conquest of Burma in the Second World War. In 1948, Mandalay became part of the newly independent Union of Burma.', '../image/Destination/m4.jpg'),
(4, 'Magway', 'Magway is the capital city of Magway Region of Myanmar, and situated on the banks of the Irrawaddy River. The Myathalun Pagoda,...', 'Magway Region is an administrative division in central Myanmar. It is the second largest of Myanmar\'s seven divisions, with an area of 44,820 km². Pa Del Dam is one of the dams in Aunglan Township, Magway Division. The capital and second largest city of the Magway Division is Magway. The largest city is Pakokku. The major cities of Magway Division are Magway, Pakokku, Chauk, Aunglan, Yenangyaung, Taungdwingyi, Minbu, Thayet and Gangaw.Mayway Region sits approximately between north latitude 18° 50\' to 22° 47\' and east longitude 93° 47\' to 95° 55\'. It is bordered by Sagaing Region to the north, Mandalay Region to the east, Bago Region to the south, and Rakhine State and Chin State to the west.', '../image/Destination/mg7.jpg'),
(5, 'Bago', 'Bago, known as Hanthawaddy, is a city and the capital of the Bago Region in Myanmar. It is located 91 kilometres north-east...', 'Bago is known as Hanthawaddy, is a city and the capital of the Bago Region in Myanmar. It is located 91 kilometres (57 mi) north-east of Yangon.The Burmese name Bago is likely derived from the Mon language place name Bagaw Until the Burmese government renamed English place names throughout the country in 1989, Bago was known as Pegu. Bago was formerly known as Hanthawaddy, the name of a Burmese-Mon kingdom.The 2014 Myanmar Census reported that Bago had a population of 254,424, representing 51.8% of Bago Township\'s total population.The town of Bago is subdivided into 34 wards.', '../image/Destination/bg9.jpg'),
(6, 'Sagaing', 'Sagaing is the capital of the Sagaing Region of Myanmar. It is located 20 km to the south-west of Mandalay on the opposite bank of...', 'Sagaing is the capital of the Sagaing Region of Myanmar. It is located in the Irrawaddy River, 20 km to the south-west of Mandalay on the opposite bank of the river. Sagaing with numerous Buddhist monasteries is an important religious and monastic centre. The pagodas and monasteries crowd the numerous hills along the ridge running parallel to the river. The central pagoda, Soon U Ponya Shin Pagoda, is connected by a set of covered staircases that run up the 240 m hill.Today, with about 70,000 inhabitants, the city is part of Mandalay built-up area with more than 1,022,000 inhabitants estimated in 2011. The city is a frequent tourist destination of day trippers. Within the city are the Sagaing Institute of Education, the Sagaing Education College, Sagaing University, Technological University (Sagaing), and co-operative university (Sagaing).', '../image/Destination/s3.jpg'),
(7, 'Tanintharyi', 'Tanintharyi or Taninthayi is a small town in Taninthayi Township, Myeik District, in the Tanintharyi Region of south-western Myanmar...', 'Tanintharyi or Taninthayi is a small town in Taninthayi Township, Myeik District, in the Tanintharyi Region of south-western Myanmar. It is the administrative seat for the township. The town is located on the Great Tenasserim River which eventually enters the sea at Myeik. The town is located at the confluence of this river and a tributary known as the \"Little Tenasserim River\" which runs south.The town is built on a hill slope on the site of an ancient city which, for hundreds of years, served as the principal port of Siam.Ethnic Bamars (Burmans) (with Dawei and Myeik subgroups) are the majority community here. The hill people who are non-Buddhists are most numerous here. The majority of the population speak the Tavoyan dialect.', '../image/Destination/thanintharyi (5).jpg'),
(8, 'Ayeyarwaddy', 'Ayeyarwady Region, is the delta region of the Ayeyarwady River. It is bordered by Bago Region to the north, Bago Region and...', 'Ayeyarwady Region is pronounced Western Pwo Karen ,formerly Ayeyarwady Division and Irrawaddy Division), is a region of Myanmar, occupying the delta region of the Ayeyarwady River (Irrawaddy River). It is bordered by Bago Region to the north, Bago Region and Yangon Region to the east and the Bay of Bengal to the south and west. It is contiguous with the Rakhine State in the northwest.The region lies between approximately latitude 15° 40\' and 18° 30\' north and between longitude 94° 15\' and 96° 15\' east. It has an area of 35,140 square kilometres (13,566 sq mi). The population is more than 6.5 million, making it the most populous of Burma’s states and regions. According to the 2014 Burmese National Census the population of the Ayeyarwady Region was 6,184,829.The capital city of Ayeyarwady division is Pathein.', '../image/Destination/a4.jpg'),
(9, 'Kalaw', 'Kalaw Township is a township of Taunggyi District in the Shan State of Myanmar. The principal town is Kalaw. This township...', 'Kalaw is a hill town in the Shan State of Myanmar. It is located in Kalaw Township in Taunggyi District.The town was popular with the British during colonial rule. Kalaw is the main setting of the novel \"The Art of Hearing Heartbeats\" by Jan-Philipp Sendker. The hill station is located at an elevation of 1310 metres, 50 km from the Inle lake. Kalaw is famous for hiking and trekking.Many trekking trails ranging from nearby places to Inle Lake and Pindaya.The town still feels like a high-altitude holiday resort – the air is cool, the atmosphere is calm and the tree-lined streets still contain a smattering of colonial-era architecture – while the surrounding hills are fine for relatively easy day or overnight treks to Danu, Danaw, Palaung, Pa-O and Taung Yo villages. ', '../image/Destination/k2.jpg'),
(10, 'Inle', 'Inle Lake(Burmese) is a freshwater lake located in the Nyaungshwe Township of Taunggyi District of Shan State, part of Shan Hills...', 'Inle Lake is a freshwater lake located in the Nyaungshwe Township of Taunggyi District of Shan State, part of Shan Hills in Myanmar (Burma). It is the second largest lake in Myanmar with an estimated surface area of 44.9 square miles (116 km2), and one of the highest at an elevation of 2,900 feet (880 m). During the dry season, the average water depth is 7 feet (2.1 m), with the deepest point being 12 feet (3.7 m). During the rainy season, this can increase by 5 feet (1.5 m).The watershed area for the lake lies to a large extent to the north and west of the lake. The lake drains through the Nam Pilu or Balu Chaung on its southern end. There is also a hot spring on its northwestern shore.\r\nLarge sections of the lake are covered by floating plants. Its clear and slightly alkaline waters (pH 7.8–8) are home to a diverse fauna and many species found nowhere else in the world (endemics).There are more than 35 native species of fish, including 17 endemics. Some of these, notably the Sawbwa barb, red dwarf rasbora, emerald dwarf rasbora, Lake Inle danio, Inle loach and the Inle snakehead, are of minor commercial importance for the aquarium trade. Several fish that are not native have been introduced.Additionally, the lake is home to about 45 species of freshwater snails, 30 of them endemic,along with a small endemic freshwater crab, Inlethelphusa acanthica.It hosts approximately 20,000 migratory gulls in November to January.\r\nIn June 2015, it became Myanmar\'s first designated place of World Network of Biosphere Reserves.It was one of 20 places added at the Unesco\'s 27th Man and the Biosphere (MAB) International Coordinating Council(ICC) meeting.Since 2018 it has been designated as a protected Ramsar site.Today the lake\'s environment is under serious pressure due to pollution, siltation, eutrophication, overfishing and introduced species, including the highly invasive water hyacinth. The endemic predatory fish Systomus compressiformis might already be extinct.', '../image/Destination/i1.jpg'),
(11, 'Taung Gyi', 'Taunggyi is the capital and largest city of Shan State, Myanmar and lies on the Thazi-Kyaingtong road at an elevation of 4,712 feets...', 'Taunggyi is the capital and largest city of Shan State, Myanmar (Burma) and lies on the Thazi-Kyaingtong road at an elevation of 4,712 feet,just north of Shwenyaung and Inle Lake within the Myelat region.Taunggyi is the fifth largest city of Myanmar,and has an estimated population of 380,665 as of 2014.The city is famous for its hot air balloon festival held annually on the full moon day of Tazaungmon.The name Taunggyi means \"huge mountain\" in the Burmese language, and is named after the ridge on the east of the city, part of the Shan Hills system, whose prominent high point is called Taung-chun or \"The Spur.\" Locally this spur is popularly known as Phaya Taung. The ridge has a more prominent and more popular feature known as Chauk Talone, meaning the Craigs. ', '../image/Destination/t4.jpg'),
(12, 'Kachin', 'Kachin State is the northernmost state of Myanmar. It is bordered by China to the north and east; Shan State to the south; and Sagaing...', 'Kachin State is the northernmost state of Myanmar. It is bordered by China to the north and east; Shan State to the south; and Sagaing Region and India to the west. It lies between north latitude 23° 27\' and 28° 25\' longitude 96° 0\' and 98° 44\'. The area of Kachin State is 89,041 km². The capital of the state is Myitkyina. Other important towns include Bhamo, Mohnyin and Putao.Kachin is an ethnicity that comprises various linguistic groups with overlapping territories and integrated social structures. Contemporary usage of Kachin relates to a grouping of six ethnicities: Rawang, the Lisu, the Jingpo, the Zaiwa, the Lashi/Lachik and the Lawngwaw/Maru. Some definitions distinguish Kachin and Shan peoples though some Kachin people have demonstrated the over-simplicity of the concept of lineage-based ethnic identity by culturally \"becoming Shans\". ', '../image/Destination/Kachin10.jpg'),
(13, 'Kayah', 'Kayah State is a state of Myanmar. Situated in eastern Myanmar, it is bounded on the north by Shan State, on the east by...', 'Kayah State is a state of Myanmar. Situated in eastern Myanmar, it is bounded on the north by Shan State, on the east by Thailand\'s Mae Hong Son Province, and on the south and west by Kayin State. It lies approximately between 18° 30′ and 19° 55′ north latitude and between 96° 50′ and 97° 50′ east longitude. The area is 11,670 km2. Its capital is Loikaw.Karenni State is located in the eastern part of Myanmar. The relief of Karenni State is mountainous with the Dawna Range and the Karen Hills also known as \"Karenni-Karen\" mountains separated by the Salween River as it flows through Karenni State. Balu Chaung, flows from Inle Lake flow to Than Lwin River and converge with the Salween in southern Karenni State. Lawpita Dam, built in 1950.', '../image/Destination/kayah1.jpg'),
(14, 'Kayin', 'Kayin State the name given by the Burmese military government, is a state of Myanmar. The capital city is Hpa-An.The relief...', 'Kayin State the name given by the Burmese military government to Karen State, is a state of Myanmar. The capital city is Hpa-An, also spelled Pa-An. The relief of Karen State is mountainous with the Dawna Range running along the state in a NNW - SSE direction and the southern end of the Karen Hills in the northwest. It is bordered by Mae Hong Son, Tak, and Kanchanaburi provinces of Thailand to the east.Located between latitudes 15° 45\' north and 19° 25\' north and longitudes 96° 10\' east and 98° 28\' east. It has a hot and humid climate because of the mountain ranges that lie in its backdrop and its location, which is near the sea, in the tropics. The temperature of the hottest month in eastern mountain regions never falls below 22.2 °C. Lowlands in the west and south of the state are located in the tropical monsoon climate.', '../image/Destination/kayah5.jpg'),
(15, 'Chin', 'Chin State is a state in western Myanmar. The 36,019-square-kilometre Chin State is bordered by Sagaing Division and...', 'Chin State is a state in western Myanmar. The 36,019-square-kilometre Chin State is bordered by Sagaing Division and Magway Division to the east, Rakhine State to the south, Bangladesh to the south-west, and the Indian states of Mizoram to the west and Manipur to the north. The population of Chin state is about 478,801 in 2014 census. The capital of the state is Hakha. The state is a mountainous region with few transportation links. Chin State is sparsely populated and remains one of the least developed areas of the country. Chin State has the highest poverty rate of 73% as per the released figures from the first official survey. The official radio broadcasting dialect of Chin is Falam. There are 53 different subtribes and languages in Chin State. There are nine townships in Chin State. Hakha, Thantlang, Falam, Tedim, Tonzang, Matupi, Mindat, Kanpetlet and Paletwa townships. In 1896, it became a part of Pakokku Hill Tracts Districts of British Burma until January 4, 1948.', '../image/Destination/Chin2.jpg'),
(16, 'Mon', 'Mon State is an administrative division of Myanmar. It lies between Kayin State to the east, the Andaman Sea to the west, Bago Region...', 'Mon State is an administrative division of Myanmar. It lies between Kayin State to the east, the Andaman Sea to the west, Bago Region to the north and Tanintharyi Region to the south, also having a short border with Thailand\'s Kanchanaburi Province at its south-eastern tip. The land area is 12,155 km². The Dawna Range, running along the eastern side of the state in a NNW–SSE direction, forms a natural border with Kayin State. Mon State includes some small islands, such as Kalegauk, Wa Kyun and Kyungyi Island, along its 566 km of coastline. The state\'s capital is Mawlamyine.', '../image/Destination/Mon (11).jpg'),
(17, 'Rakhine', 'Rakhine State is a state in Myanmar.It is bordered by Chin State to the north, Magway Region, Bago Region and Ayeyarwady Region...', 'Rakhine State is a state in Myanmar. Situated on the western coast, it is bordered by Chin State to the north, Magway Region, Bago Region and Ayeyarwady Region to the east, the Bay of Bengal to the west and the Chittagong Division of Bangladesh to the northwest. It is located approximately between latitudes 17°30\' north and 21°30\' north and longitudes 92°10\' east and 94°50\' east. The Arakan Mountains or Rakhine Yoma separated Rakhine State from central Burma from North to South. Off the coast of Rakhine State there are some fairly large islands such as Ramree, Cheduba and Myingun. Rakhine State has an area of 36,762 square kilometres and its capital is Sittwe. Rakhine state is the centre of the Rohingya genocide.', '../image/Destination/Rakhine (7).jpg'),
(18, 'Shan', 'Shan State is a state of Myanmar. Shan State borders China to the north, Laos to the east, and Thailand to the south, and five administrative...', 'Shan State is a state of Myanmar. Shan State borders China to the north, Laos to the east, and Thailand to the south, and five administrative divisions of Burma in the west. Largest of the 14 administrative divisions by land area, Shan State covers 155,800 km², almost a quarter of the total area of Burma. The state gets its name from Burmese name for the Tai people: \"Shan people\". The Shan constitute the majority among several ethnic groups that inhabit the area. Shan is largely rural, with only three cities of significant size: Lashio, Kengtung, and the capital, Taunggyi. Taunggyi is 150.7 km northeast of the nation\'s capital Naypyitaw.', '../image/Destination/Shan (2).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `package_tbl`
--

CREATE TABLE `package_tbl` (
  `package_id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `adult_price` varchar(255) NOT NULL,
  `children_price` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_tbl`
--

INSERT INTO `package_tbl` (`package_id`, `typeid`, `name`, `duration`, `startdate`, `enddate`, `adult_price`, `children_price`, `photo`) VALUES
(1, 1, 'Yangon-Bagan-Nyaung Oo-Popa', '4 Nights/5Days', '2020-09-14', '2020-09-19', '65000MMK', '55000MMK', '../package_image/Yangon-Bagan-Nyaung Oo-Popa.jpg'),
(2, 1, 'Yangon-Mandalay-Monywa-Sagaing', '3Nights/4Days', '2020-09-14', '2020-09-18', '50000MMK', '40000MMK', '../package_image/Yangon-Mandalay-Monywa-Sagaing.jpg'),
(3, 1, 'Yangon-Taung Gyi-Inle Lake-Pindaya-Kalaw', '6Nights/7Days', '2020-09-14', '2020-09-21', '80000MMK', '70000MMK', '../package_image/Yangon-TaungGyi-Inle-Pindaya-Kalaw.jpg'),
(4, 1, 'Yangon-Taung Gyi-Inle Lake-SakarYwar', '6Nights/7Days', '2020-09-14', '2020-09-21', '80000MMK', '70000MMK', '../package_image/Yangon-TaungGyi-Inle-SakarYwar-Nattayoe.jpg'),
(5, 1, 'Yangon-Dawei-Myeik-Nattyoe', '6Nights/7Days', '2020-09-14', '2020-09-21', '80000MMK', '70000MMK', '../package_image/Yangon-Dawei-Myeik.jpg'),
(6, 1, 'Yangon-Pyay-Magway-Monywa', '4Nights/5Days', '2020-09-14', '2020-09-19', '65000MMK', '55000MMK', '../package_image/Yangon-Pyay-Magway-Monywa.jpg'),
(7, 1, 'Yangon-Rakhine-Mrauk U', '4Nights/5Days', '2020-09-14', '2020-09-19', '65000MMK', '55000MMK', '../package_image/Yangon-Rakhine-MraukU.jpg'),
(8, 1, 'Yangon-Mon-Mawlamyine', '1Night/2Days', '2020-09-14', '2020-09-16', '25000MMK', '15000MMK', '../package_image/Yangon-Malamyine.jpg'),
(9, 1, 'Yangon-Mogok-Myitkyina-MyitSone', '4Nights/5Days', '2020-09-14', '2020-09-19', '65000MMK', '55000MMK', '../package_image/Yangon-Mogok-MyeitKyiNa-MyeitSone.jpg'),
(10, 1, 'Yangon-Zalone-Shwe Bo', '2Nights/3Days', '2020-09-14', '2020-09-17', '35000MMK', '25000MMK', '../package_image/Yangon-Zalone-ShweBo.jpg'),
(11, 2, 'Yangon-Zwekabin', '3Nights/4Days', '2020-09-15', '2020-09-19', '45000MMk', '40000MMK', '../package_image/Yangon-Zwegabin.jpg'),
(12, 2, 'Yangon-Putao', '5Nights/6Days', '2020-09-15', '2020-09-21', '65000MMK', '60000MMK', '../package_image/Yangon-Putao.jpg'),
(13, 2, 'Yangon-Taung Wine', '3Nights/4Days', '2020-09-15', '2020-09-19', '45000MMk', '40000MMK', '../package_image/Yangon-TaungWine.jpg'),
(14, 2, 'Yangon-NaMaTaung', '4Nights/5Days', '2020-09-15', '2020-09-20', '55000MMK', '50000MMK', '../package_image/Yangon-NaMaTaung.jpg'),
(15, 2, 'Yangon-Pwin Oo Lwin', '2Nights/3Days', '2020-09-15', '2020-09-18', '35000MMK', '30000MMK', '../package_image/Yangon-PyinOoLwin.jpg'),
(16, 2, 'Yangon-Kalaw-AungBan', '4Nights/5Days', '2020-09-15', '2020-09-20', '55000MMK', '50000MMK', '../package_image/Yangon_Kalaw-Aungban.jpg'),
(17, 2, 'Yangon-Sin Phyu Taung', '4Nights/5Days', '2020-09-15', '2020-09-20', '55000MMK', '50000MMK', '../package_image/Yangon-Sin Phyu Taung.jpg'),
(18, 2, 'Yangon-Loikow', '3Nights/4Days', '2020-09-15', '2020-09-19', '45000MMk', '40000MMK', '../package_image/Yangon-Loikaw.jpg'),
(19, 2, 'Yangon-Zalone Taung', '1Night/2Days', '2020-09-15', '2020-09-17', '20000MMK', '15000MMK', '../package_image/Yangon-Zalone Taung.jpg'),
(20, 2, 'Yangon-Lashio-NaungCho', '6Nights/7Days', '2020-09-15', '2020-09-22', '75000MMK', '70000MMK', '../package_image/Yangon-Lashio-NaungCho.jpg'),
(21, 2, 'Yangon-Mindat-Khaw Nu Soum', '6Nights/7Days', '2020-09-15', '2020-09-22', '75000MMK', '70000MMK', '../package_image/Yangon-Mindat-Khaw nu Soum.jpg'),
(22, 2, 'Yangon-ThanTaung Gyi(Mt.Victoria)', '1Night/2Days', '2020-09-15', '2020-09-17', '20000MMK', '15000MMK', '../package_image/Yangon-ThanTaung Gyi.jpg'),
(23, 3, 'Yangon-Pindaya', '3Nights/4Days', '2020-09-16', '2020-09-20', '60000MMK', '50000MMK', '../package_image/Yangon-Pindaya.jpg'),
(24, 3, 'Yangon-Hpa An', '3Nights/4Days', '2020-09-16', '2020-09-20', '60000MMK', '50000MMK', '../package_image/Yangon-HpaAn(5 Caves).jpg'),
(25, 3, 'Yangon-Pwin Oo Lwin', '1Night/2Days', '2020-09-16', '2020-09-18', '30000MMK', '20000MMK', '../package_image/Yangon-PyinOoLwin.jpg'),
(26, 3, 'Yangon-Kalaw-TaungGyi-Hopone', '3Nights/4Days', '2020-09-16', '2020-09-20', '60000MMK', '50000MMK', '../package_image/Yangon-Kalaw-TaungGyi-Hopone.jpg'),
(27, 4, 'Yangon-Naung Cho-MyitNge', '4Nights/5Days', '2020-09-17', '2020-09-22', '60000MMK', '50000MMK', '../package_image/Yangon-Naung Cho-MyitNge.jpg'),
(28, 4, 'Yangon-PyinOoLwin-Kyaukse', '4Nights/5Days', '2020-09-17', '2020-09-22', '60000MMK', '50000MMK', '../package_image/Yangon-PyinOoLwin-Kyaukse.jpg'),
(29, 4, 'Yangon-Dawei-Myeik-Kawthoung', '5Nights/6Days', '2020-09-17', '2020-09-23', '70000MMK', '60000MMK', '../package_image/Yangon-Dawei-Myeik-Kawthoung.jpg'),
(30, 4, 'Yangon-Bago Yoma', '4Nights/5Days', '2020-09-17', '2020-09-22', '60000MMK', '50000MMK', '../package_image/Yangon-Bago Yoma.jpg'),
(31, 5, 'Yangon-Ngapali', '3Nights/4Days', '2020-09-18', '2020-09-22', '80000MMK', '70000MMK', '../package_image/Yangon-Ngapali.jpg'),
(32, 5, 'Yangon-GawYanGyi', '2Nights/3Days', '2020-09-18', '2020-09-21', '60000MMK', '50000MMK', '../package_image/Yangon-Gaw Yan Gyi Island.jpg'),
(33, 5, 'Yangon-Dawei-Myeik', '4Nights/5Days', '2020-09-18', '2020-09-23', '120000MMK', '100000MMK', '../package_image/Yangon-Dawei-Myeik.jpg'),
(34, 5, 'Yangon-ChaungThar-NgweSaung', '4Nights/5Days', '2020-09-18', '2020-09-23', '120000MMK', '100000MMK', '../package_image/Yangon-ChaungThar-NgweSaung.jpg'),
(35, 5, 'Yangon-Dawei-Myeik-Andaman Sea', '6Nights/7Days', '2020-09-18', '2020-09-25', '200000MMK', '170000MMK', '../package_image/Yangon-Dawei-Myeik-Andaman sea.jpg'),
(36, 5, 'Yangon-Kyaikkhami-Dawei-Maungmagan', '6Nights/7Days', '2020-09-18', '2020-09-25', '200000MMK', '170000MMK', '../package_image/Yangon-Kyaikkhami-Dawei-Maungmagan.jpg'),
(37, 6, 'Yangon-Mogok-Barnard', '5Nights/6Days', '2020-09-19', '2020-09-25', '90000MMK', '80000MMK', '../package_image/Yangon-Mogok-Barnard.jpg'),
(38, 6, 'Yangon-Hsipaw', '4Nights/5Days', '2020-09-19', '2020-09-24', '70000MMK', '60000MMK', '../package_image/Yangon-Hsipaw.jpg'),
(39, 6, 'Yangon-Ywangan', '5Nights/6Days', '2020-09-19', '2020-09-25', '90000MMK', '80000MMK', '../package_image/Yangon-Ywangan.jpg'),
(40, 6, 'Yangon-Hakha-Falam-Tedim', '6Nights/7Days', '2020-09-19', '2020-09-26', '120000MMK', '110000MMK', '../package_image/Yangon-Hakha-Falam-Tedim.jpg'),
(41, 6, 'Yangon-Mandalay-Kanpalat-Khawnusoum', '7Nights/8Days', '2020-09-19', '2020-09-27', '150000MMK', '130000MMK', '../package_image/Yangon-Mandalay-Kanpalat-Khawnusoum.jpg'),
(42, 6, 'Yangon-Myitkyinar-Panwar', '6Nights/7Days', '2020-09-19', '2020-09-26', '120000MMK', '110000MMK', '../package_image/Yangon-Myitkyinar-Panwar.jpg'),
(43, 7, 'Yangon-Bago-Kyoukkyi', '1Day', '2020-09-19', '2020-09-19', '40000MMK', '30000MMK', '../package_image/Yangon-Bago-Kyoukkyi.jpg'),
(44, 7, 'Yangon-Hmaw Yaw Gyi', '1Day', '2020-09-19', '2020-09-19', '40000MMK', '30000MMK', '../package_image/Yangon-Hmaw Yaw Gyi Elephant Camp.jpg'),
(45, 7, 'Yangon-TaungOo', '1Day', '2020-09-19', '2020-09-19', '30000MMK', '25000MMK', '../package_image/Yangon-TaungOo.jpg'),
(46, 8, 'Yangon-Loikaw-PinLaung', '4Nights/5Days', '2020-09-20', '2020-09-25', '60000MMK', '50000MMK', '../package_image/Yangon-Loikaw-PinLaung.jpg'),
(47, 8, 'Yangon-Mandalay-Lashio-Hispaw', '4Nights/5Days', '2020-09-20', '2020-09-25', '60000MMK', '50000MMK', '../package_image/Yangon-Mandalay-Lashio-Hispaw.jpg'),
(48, 8, 'Yangon-Kalaw-AungPan-HeHoe', '5Nights/6Days', '2020-09-20', '2020-09-26', '80000MMK', '70000MMK', '../package_image/Yangon-Kalaw-AungPan-HeHoe.jpg'),
(49, 8, 'Yangon-Myawady-Maesot', '5Nights/6Days', '2020-09-20', '2020-09-26', '80000MMK', '70000MMK', '../package_image/Yangon-Myawady-Maesot.jpg'),
(50, 9, 'Yangon-PinLaung', '3Nights/4Days', '2020-09-20', '2020-09-24', '100000MMK', '80000MMK', '../package_image/Yangon-PinLaung.jpg'),
(51, 9, 'Yangon-Kalaw', '3Nights/4Days', '2020-09-20', '2020-09-24', '100000MMK', '80000MMK', '../package_image/Yangon-Kalaw.jpg'),
(52, 9, 'Yangon-Mogok', '3Nights/4Days', '2020-09-20', '2020-09-24', '100000MMK', '80000MMK', '../package_image/Yangon-Mogok.jpg'),
(53, 9, 'Yangon-PyinOoLwin', '3Nights/4Days', '2020-09-20', '2020-09-24', '100000MMK', '80000MMK', '../package_image/Yangon-PyinOoLwin.jpg'),
(54, 9, 'Yangon-Matupi', '5Nights/6Days', '2020-09-20', '2020-09-26', '140000MMK', '120000MMK', '../package_image/Yangon-Matupi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `photo_tbl`
--

CREATE TABLE `photo_tbl` (
  `photoid` int(11) NOT NULL,
  `destinationid` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo_tbl`
--

INSERT INTO `photo_tbl` (`photoid`, `destinationid`, `photo`) VALUES
(1, 1, '../image/Destination/1.jpg'),
(2, 1, '../image/Destination/2.jpg'),
(3, 1, '../image/Destination/3.jpg'),
(4, 1, '../image/Destination/4.jpg'),
(5, 1, '../image/Destination/5.jpg'),
(6, 1, '../image/Destination/6.jpg'),
(7, 1, '../image/Destination/7.jpg'),
(8, 1, '../image/Destination/8.jpg'),
(9, 1, '../image/Destination/9.jpg'),
(10, 1, '../image/Destination/10.jpg'),
(11, 2, '../image/Destination/Y1.jpg'),
(12, 2, '../image/Destination/Y2.jpg'),
(13, 2, '../image/Destination/Y3.jpg'),
(14, 2, '../image/Destination/Y4.jpg'),
(15, 2, '../image/Destination/Y5.jpg'),
(16, 2, '../image/Destination/Y6.jpg'),
(17, 2, '../image/Destination/Y7.jpg'),
(18, 2, '../image/Destination/Y8.jpg'),
(19, 2, '../image/Destination/Y9.jpg'),
(20, 2, '../image/Destination/Y10.jpg'),
(21, 2, '../image/Destination/Y11.jpg'),
(22, 2, '../image/Destination/Y12.jpg'),
(23, 3, '../image/Destination/m1.jpg'),
(24, 3, '../image/Destination/m2.jpg'),
(25, 3, '../image/Destination/m3.jpg'),
(26, 3, '../image/Destination/m4.jpg'),
(27, 3, '../image/Destination/m5.jpg'),
(28, 3, '../image/Destination/m6.jpg'),
(29, 3, '../image/Destination/m7.jpg'),
(30, 3, '../image/Destination/m8.jpg'),
(31, 6, '../image/Destination/s1.jpg'),
(32, 6, '../image/Destination/s2.jpg'),
(33, 6, '../image/Destination/s3.jpg'),
(34, 6, '../image/Destination/s4.jpg'),
(35, 6, '../image/Destination/s5.jpg'),
(36, 6, '../image/Destination/s6.jpg'),
(37, 6, '../image/Destination/s7.jpg'),
(38, 6, '../image/Destination/s8.jpg'),
(39, 6, '../image/Destination/s9.jpg'),
(40, 6, '../image/Destination/s10.jpg'),
(41, 6, '../image/Destination/s11.jpg'),
(42, 6, '../image/Destination/s12.jpg'),
(43, 7, '../image/Destination/thanintharyi (5).jpg'),
(44, 7, '../image/Destination/thanintharyi (6).jpg'),
(45, 7, '../image/Destination/thanintharyi (7).jpg'),
(46, 7, '../image/Destination/thanintharyi (8).jpg'),
(47, 7, '../image/Destination/thanintharyi (9).jpg'),
(48, 7, '../image/Destination/thanintharyi (10).jpg'),
(49, 7, '../image/Destination/thanintharyi (11).jpg'),
(50, 7, '../image/Destination/thanintharyi (12).jpg'),
(51, 7, '../image/Destination/thanintharyi (13).jpg'),
(52, 7, '../image/Destination/thanintharyi (14).jpg'),
(53, 7, '../image/Destination/thanintharyi (15).jpg'),
(54, 7, '../image/Destination/thanintharyi (16).jpg'),
(55, 8, '../image/Destination/a1.jpg'),
(56, 8, '../image/Destination/a2.jpg'),
(57, 8, '../image/Destination/a3.jpg'),
(58, 8, '../image/Destination/a4.jpg'),
(59, 8, '../image/Destination/a5.jpg'),
(60, 8, '../image/Destination/a6.jpg'),
(61, 8, '../image/Destination/a7.jpg'),
(62, 8, '../image/Destination/a8.jpg'),
(63, 8, '../image/Destination/a9.jpg'),
(64, 8, '../image/Destination/a10.jpg'),
(65, 8, '../image/Destination/a11.jpg'),
(66, 8, '../image/Destination/a12.jpg'),
(67, 9, '../image/Destination/k1.jpg'),
(68, 9, '../image/Destination/k2.jpg'),
(69, 9, '../image/Destination/k3.jpg'),
(70, 9, '../image/Destination/k4.jpg'),
(71, 9, '../image/Destination/k5.jpg'),
(72, 9, '../image/Destination/k6.jpg'),
(73, 9, '../image/Destination/k7.jpg'),
(74, 9, '../image/Destination/k8.jpg'),
(75, 9, '../image/Destination/k9.jpg'),
(76, 9, '../image/Destination/k10.jpg'),
(77, 9, '../image/Destination/k11.jpg'),
(78, 9, '../image/Destination/k12.jpg'),
(79, 10, '../image/Destination/i.jpg'),
(80, 10, '../image/Destination/i1.jpg'),
(81, 10, '../image/Destination/i3.jpg'),
(82, 10, '../image/Destination/i4.jpg'),
(83, 10, '../image/Destination/i5.jpg'),
(84, 10, '../image/Destination/i6.jpg'),
(85, 10, '../image/Destination/i7.jpg'),
(86, 10, '../image/Destination/i8.jpg'),
(87, 10, '../image/Destination/i9.jpg'),
(88, 10, '../image/Destination/i10.jpg'),
(89, 10, '../image/Destination/i11.jpg'),
(90, 10, '../image/Destination/i2.jpg'),
(91, 11, '../image/Destination/t1.jpg'),
(92, 11, '../image/Destination/t2.jpg'),
(93, 11, '../image/Destination/t3.jpg'),
(94, 11, '../image/Destination/t4.jpg'),
(95, 11, '../image/Destination/t5.jpg'),
(96, 11, '../image/Destination/t6.jpg'),
(97, 12, '../image/Destination/Kachin1.jpg'),
(98, 12, '../image/Destination/Kachin2.jpg'),
(99, 12, '../image/Destination/Kachin3.jpg'),
(100, 12, '../image/Destination/Kachin4.jpg'),
(101, 12, '../image/Destination/Kachin5.jpg'),
(102, 12, '../image/Destination/Kachin6.jpg'),
(103, 12, '../image/Destination/Kachin7.jpg'),
(104, 12, '../image/Destination/Kachin8.jpg'),
(105, 12, '../image/Destination/Kachin9.jpg'),
(106, 12, '../image/Destination/Kachin10.jpg'),
(107, 12, '../image/Destination/Kachin11.jpg'),
(108, 12, '../image/Destination/Kachin12.jpg'),
(109, 13, '../image/Destination/kayah1.jpg'),
(110, 13, '../image/Destination/kayah2.jpg'),
(111, 13, '../image/Destination/kayah3.jpg'),
(112, 13, '../image/Destination/kayah4.jpg'),
(113, 13, '../image/Destination/kayah5.jpg'),
(114, 13, '../image/Destination/kayah6.jpg'),
(115, 13, '../image/Destination/kayah7.jpg'),
(116, 13, '../image/Destination/kayah8.jpg'),
(117, 13, '../image/Destination/kayah9.jpg'),
(118, 13, '../image/Destination/kayah10.jpg'),
(119, 13, '../image/Destination/kayah11.jpg'),
(120, 13, '../image/Destination/kayah12.jpg'),
(121, 11, '../image/Destination/t7.jpg'),
(122, 11, '../image/Destination/t8.jpg'),
(123, 11, '../image/Destination/t9.jpg'),
(124, 11, '../image/Destination/t10.jpg'),
(125, 11, '../image/Destination/t11.jpg'),
(126, 11, '../image/Destination/t12.jpg'),
(127, 11, '../image/Destination/t13.jpg'),
(128, 15, '../image/Destination/Chin1.jpg'),
(129, 15, '../image/Destination/Chin2.jpg'),
(130, 15, '../image/Destination/Chin3.jpg'),
(131, 15, '../image/Destination/Chin4.jpg'),
(132, 15, '../image/Destination/Chin5.jpg'),
(133, 15, '../image/Destination/Chin6.jpg'),
(134, 15, '../image/Destination/Chin7.jpg'),
(135, 15, '../image/Destination/Chin8.jpg'),
(136, 15, '../image/Destination/Chin9.jpg'),
(137, 15, '../image/Destination/Chin10.jpg'),
(138, 15, '../image/Destination/Chin11.jpg'),
(139, 15, '../image/Destination/Chin12.jpg'),
(140, 16, '../image/Destination/Mon (1).jpg'),
(141, 16, '../image/Destination/Mon (2).jpg'),
(142, 16, '../image/Destination/Mon (3).jpg'),
(143, 16, '../image/Destination/Mon (4).jpg'),
(144, 16, '../image/Destination/Mon (5).jpg'),
(145, 16, '../image/Destination/Mon (6).jpg'),
(146, 16, '../image/Destination/Mon (7).jpg'),
(147, 16, '../image/Destination/Mon (8).jpg'),
(148, 16, '../image/Destination/Mon (9).jpg'),
(149, 16, '../image/Destination/Mon (10).jpg'),
(150, 16, '../image/Destination/Mon (11).jpg'),
(151, 16, '../image/Destination/Mon (12).jpg'),
(152, 17, '../image/Destination/Rakhine (1).jpg'),
(153, 17, '../image/Destination/Rakhine (2).jpg'),
(154, 17, '../image/Destination/Rakhine (3).jpg'),
(155, 17, '../image/Destination/Rakhine (4).jpg'),
(156, 17, '../image/Destination/Rakhine (5).jpg'),
(157, 17, '../image/Destination/Rakhine (6).jpg'),
(158, 17, '../image/Destination/Rakhine (7).jpg'),
(159, 17, '../image/Destination/Rakhine (8).jpg'),
(160, 17, '../image/Destination/Rakhine (9).jpg'),
(161, 17, '../image/Destination/Rakhine (10).jpg'),
(162, 17, '../image/Destination/Rakhine (11).jpg'),
(163, 17, '../image/Destination/Rakhine (12).jpg'),
(164, 18, '../image/Destination/Shan (1).jpg'),
(165, 18, '../image/Destination/Shan (2).jpg'),
(166, 18, '../image/Destination/Shan (3).jpg'),
(167, 18, '../image/Destination/Shan (4).jpg'),
(168, 18, '../image/Destination/Shan (5).jpg'),
(169, 18, '../image/Destination/Shan (6).jpg'),
(170, 18, '../image/Destination/Shan (7).jpg'),
(171, 18, '../image/Destination/Shan (8).jpg'),
(172, 18, '../image/Destination/Shan (9).jpg'),
(173, 18, '../image/Destination/Shan (10).jpg'),
(174, 18, '../image/Destination/Shan (11).jpg'),
(175, 18, '../image/Destination/Shan (12).jpg'),
(176, 4, '../image/Destination/mg1.jpg'),
(177, 4, '../image/Destination/mg2.jpg'),
(178, 4, '../image/Destination/mg3.jpg'),
(179, 4, '../image/Destination/mg4.jpg'),
(180, 4, '../image/Destination/mg5.jpg'),
(181, 4, '../image/Destination/mg8.jpg'),
(182, 4, '../image/Destination/mg7.jpg'),
(183, 4, '../image/Destination/mg6.jpg'),
(184, 5, '../image/Destination/bg1.jpg'),
(185, 5, '../image/Destination/bg2.jpg'),
(186, 5, '../image/Destination/bg3.jpg'),
(187, 5, '../image/Destination/bg4.jpg'),
(188, 5, '../image/Destination/bg5.jpg'),
(189, 14, '../image/Destination/ky1.jpg'),
(190, 14, '../image/Destination/ky2.jpg'),
(191, 14, '../image/Destination/ky3.jpg'),
(192, 14, '../image/Destination/ky4.jpg'),
(193, 14, '../image/Destination/ky5.jpg'),
(194, 14, '../image/Destination/ky6.jpg'),
(195, 14, '../image/Destination/ky7.jpg'),
(196, 14, '../image/Destination/ky8.jpg'),
(197, 14, '../image/Destination/ky9.jpg'),
(198, 14, '../image/Destination/ky10.jpg'),
(199, 5, '../image/Destination/bg6.jpg'),
(200, 5, '../image/Destination/bg7.jpg'),
(201, 5, '../image/Destination/bg8.jpg'),
(202, 5, '../image/Destination/bg9.jpg'),
(203, 5, '../image/Destination/bg10.jpg'),
(204, 5, '../image/Destination/bg11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `triptype_tbl`
--

CREATE TABLE `triptype_tbl` (
  `typeid` int(11) NOT NULL,
  `triptypename` varchar(200) NOT NULL,
  `About` varchar(225) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `triptype_tbl`
--

INSERT INTO `triptype_tbl` (`typeid`, `triptypename`, `About`, `photo`) VALUES
(1, 'Acient City And Pagoda', 'An ancient city on the Irrawaddy River in Myanmar,was once home to over 13,000 brick temples built between the 9th and 13th centuries.', '../trip_image/Pagoda.jpg'),
(2, 'Trekking Packages', 'Trekking is the best part of the life for that we have to manage many things like travel gears that help us at trail and we have completely got the guide.', '../trip_image/Trekking.jpg'),
(3, 'Caves Packages', 'A cave or cavern is a natural void in the ground, specifically a space large enough for a human to enter. Caves often extend deep underground.', '../trip_image/Cave.jpg'),
(4, 'Adventure Packages', 'An adventure is an exciting experience that is typically bold,sometimes undertaking.Adventure may be activities with some potential for physical sports.', '../trip_image/Adventure.jpg'),
(5, 'Beach Packages', 'A beach is a landform alongside a body of water which consists of loose particles. The particles composing a beach are typically made from rock.', '../trip_image/Beach.jpg'),
(6, 'Photography Packages', 'Photography is the art of creating durable images by recording light, chemically by means of light-sensitive material such a photographic film.', '../trip_image/Photography.jpg'),
(7, 'One Day Trip Packages', 'A day trip is a visit to a tourist destination or attraction from person\'s home,hotel,or hostel in the morning ,returning to the same lodging in the evening.', '../trip_image/One day trip Packages.jpg'),
(8, 'Free And Easy Packages', 'Free and Easy have put in all work for you to have incredible trip.Starting out a group of travelers,you will soon become group of friends.', '../trip_image/Free and Easy packages.jpg'),
(9, 'Mountain Towns', 'A mountain is large land form that rises above the surrounding land in limited area,in the form of peak.A mountain is generally considered to be steeper.', '../trip_image/Mountain town packages.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `userid` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `usernrc` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `adult_people` varchar(225) NOT NULL,
  `children_people` varchar(225) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`userid`, `package_name`, `username`, `email`, `usernrc`, `phone`, `adult_people`, `children_people`, `total_price`) VALUES
(1, 'Yangon-Putao', 'Phain Phain', ' phainphain614@gmail.com', '12/DaLaNa(N)085475', '09795813549', ' 4', '5', '500000MMK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  ADD PRIMARY KEY (`bookingid`),
  ADD KEY `gg2` (`userid`),
  ADD KEY `gg3` (`package_id`);

--
-- Indexes for table `destination_tbl`
--
ALTER TABLE `destination_tbl`
  ADD PRIMARY KEY (`destinationid`);

--
-- Indexes for table `package_tbl`
--
ALTER TABLE `package_tbl`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `gg2` (`typeid`);

--
-- Indexes for table `photo_tbl`
--
ALTER TABLE `photo_tbl`
  ADD PRIMARY KEY (`photoid`),
  ADD KEY `gg4` (`destinationid`);

--
-- Indexes for table `triptype_tbl`
--
ALTER TABLE `triptype_tbl`
  ADD PRIMARY KEY (`typeid`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destination_tbl`
--
ALTER TABLE `destination_tbl`
  MODIFY `destinationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `package_tbl`
--
ALTER TABLE `package_tbl`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `photo_tbl`
--
ALTER TABLE `photo_tbl`
  MODIFY `photoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `triptype_tbl`
--
ALTER TABLE `triptype_tbl`
  MODIFY `typeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  ADD CONSTRAINT `gg3` FOREIGN KEY (`package_id`) REFERENCES `package_tbl` (`package_id`);

--
-- Constraints for table `package_tbl`
--
ALTER TABLE `package_tbl`
  ADD CONSTRAINT `gg2` FOREIGN KEY (`typeid`) REFERENCES `triptype_tbl` (`typeid`);

--
-- Constraints for table `photo_tbl`
--
ALTER TABLE `photo_tbl`
  ADD CONSTRAINT `gg4` FOREIGN KEY (`destinationid`) REFERENCES `destination_tbl` (`destinationid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
