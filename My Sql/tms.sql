-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 08:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `id`, `UserName`, `Password`, `updationDate`, `EmailId`, `MobileNumber`) VALUES
('Its_RAdmin', 1, 'AdminR', '0646bc00d3f73e39f500db1eac852956', '2024-01-10 05:48:49', 'its@airtravel.com', '+9477123456');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2024-01-16 01:08:36', 2, 'u', '2024-01-29 23:48:29'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2024-01-17 01:13:25', 1, NULL, '2024-01-30 19:51:17'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2024-01-17 01:14:39', 2, 'a', '2024-01-29 23:48:52'),
(4, 2, 'test@gmail.com', '2024-02-02', '2024-02-08', 'NA', '2024-01-30 20:33:27', 2, 'a', '2025-05-19 07:17:57'),
(5, 1, 'test@gmail.com', '2025-05-06', '2025-05-20', 'need to spech', '2025-05-19 07:19:56', 1, NULL, '2025-05-19 07:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2024-01-16 01:00:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2024-01-18 01:01:38', 1),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2024-01-19 01:02:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2024-01-20 01:06:03', 'Ok, We will fix the issue asap', '2024-01-29 23:50:03'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2024-01-25 01:26:29', NULL, '2024-01-29 23:50:14'),
(10, 'test@gmail.com', 'Cancellation', 'why', '2025-05-19 07:20:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<h3 data-start=\"230\" data-end=\"260\"><strong data-start=\"234\" data-end=\"260\">1. Acceptance of Terms</strong></h3><p data-start=\"261\" data-end=\"514\">By using the AirTravels Tour Management System (\"AirTravels\", \"we\", \"our\", \"us\"), you agree to follow all of the terms and conditions stated here. These terms apply to all users, including customers, travel agents, administrators, and any third parties.</p><p data-start=\"516\" data-end=\"581\">If you do not agree to these terms, please do not use our system.</p><hr data-start=\"583\" data-end=\"586\"><h3 data-start=\"588\" data-end=\"614\"><strong data-start=\"592\" data-end=\"614\">2. Use of Services</strong></h3><p data-start=\"615\" data-end=\"641\">You may use AirTravels to:</p><ul data-start=\"642\" data-end=\"739\">\r\n<li data-start=\"642\" data-end=\"671\">\r\n<p data-start=\"644\" data-end=\"671\">View and book tour packages</p>\r\n</li>\r\n<li data-start=\"672\" data-end=\"702\">\r\n<p data-start=\"674\" data-end=\"702\">Manage bookings and payments</p>\r\n</li>\r\n<li data-start=\"703\" data-end=\"739\">\r\n<p data-start=\"705\" data-end=\"739\">Receive travel-related information</p>\r\n</li>\r\n</ul><p data-start=\"741\" data-end=\"820\">You agree to provide accurate and complete information when using our services.</p><hr data-start=\"822\" data-end=\"825\"><h3 data-start=\"827\" data-end=\"851\"><strong data-start=\"831\" data-end=\"851\">3. User Accounts</strong></h3><p data-start=\"852\" data-end=\"1016\">To use some parts of the system, you may need to create an account. You are responsible for keeping your login details safe. Do not share your password with others.</p><hr data-start=\"1018\" data-end=\"1021\"><h3 data-start=\"1023\" data-end=\"1054\"><strong data-start=\"1027\" data-end=\"1054\">4. Payments and Refunds</strong></h3><p data-start=\"1055\" data-end=\"1208\">All prices are shown in Sri Lankan Rupees (LKR) and may include taxes and service charges. Payments can be made using the methods provided on the system.</p><p data-start=\"1210\" data-end=\"1228\"><strong data-start=\"1210\" data-end=\"1228\">Refund Policy:</strong></p><ul data-start=\"1229\" data-end=\"1409\">\r\n<li data-start=\"1229\" data-end=\"1285\">\r\n<p data-start=\"1231\" data-end=\"1285\">Cancellations made 7 days before the tour: Full refund</p>\r\n</li>\r\n<li data-start=\"1286\" data-end=\"1351\">\r\n<p data-start=\"1288\" data-end=\"1351\">Cancellations made less than 7 days before the tour: 50% refund</p>\r\n</li>\r\n<li data-start=\"1352\" data-end=\"1409\">\r\n<p data-start=\"1354\" data-end=\"1409\">No refund for cancellations within 24 hours of the tour</p>\r\n</li>\r\n</ul><hr data-start=\"1411\" data-end=\"1414\"><h3 data-start=\"1416\" data-end=\"1460\"><strong data-start=\"1420\" data-end=\"1460\">5. Booking Changes and Cancellations</strong></h3><p data-start=\"1461\" data-end=\"1690\">AirTravels reserves the right to cancel or reschedule any tour due to unforeseen circumstances like weather, security concerns, or low participation. In such cases, users will be notified and offered a refund or alternative tour.</p><hr data-start=\"1692\" data-end=\"1695\"><h3 data-start=\"1697\" data-end=\"1733\"><strong data-start=\"1701\" data-end=\"1733\">6. Responsibilities of Users</strong></h3><p data-start=\"1734\" data-end=\"1753\">Users agree not to:</p><ul data-start=\"1754\" data-end=\"1897\">\r\n<li data-start=\"1754\" data-end=\"1802\">\r\n<p data-start=\"1756\" data-end=\"1802\">Use the system for illegal or harmful purposes</p>\r\n</li>\r\n<li data-start=\"1803\" data-end=\"1841\">\r\n<p data-start=\"1805\" data-end=\"1841\">Post false or misleading information</p>\r\n</li>\r\n<li data-start=\"1842\" data-end=\"1897\">\r\n<p data-start=\"1844\" data-end=\"1897\">Attempt to hack, damage, or interfere with the system</p>\r\n</li>\r\n</ul><hr data-start=\"1899\" data-end=\"1902\"><h3 data-start=\"1904\" data-end=\"1922\"><strong data-start=\"1908\" data-end=\"1922\">7. Privacy</strong></h3><p data-start=\"1923\" data-end=\"2151\">We respect your privacy. Personal data collected through AirTravels will be used only for booking, customer support, and service improvement. We will not share your information without your permission, except as required by law.</p><hr data-start=\"2153\" data-end=\"2156\"><h3 data-start=\"2158\" data-end=\"2190\"><strong data-start=\"2162\" data-end=\"2190\">8. Intellectual Property</strong></h3><p data-start=\"2191\" data-end=\"2380\">All content in AirTravels, including logos, text, images, and software, is owned by us or licensed to us. You may not copy, reproduce, or distribute this content without written permission.</p><hr data-start=\"2382\" data-end=\"2385\"><h3 data-start=\"2387\" data-end=\"2421\"><strong data-start=\"2391\" data-end=\"2421\">9. Limitation of Liability</strong></h3><p data-start=\"2422\" data-end=\"2679\">AirTravels is not responsible for any loss, injury, or damage that may occur during a tour, except where required by Sri Lankan law. We do our best to provide accurate information and reliable services, but we do not guarantee everything will be error-free.</p><hr data-start=\"2681\" data-end=\"2684\"><h3 data-start=\"2686\" data-end=\"2714\"><strong data-start=\"2690\" data-end=\"2714\">10. Changes to Terms</strong></h3><p data-start=\"2715\" data-end=\"2863\">We may update these Terms and Conditions at any time. Changes will be posted on the system, and your continued use means you agree to the new terms.</p><hr data-start=\"2865\" data-end=\"2868\"><h3 data-start=\"2870\" data-end=\"2895\"><strong data-start=\"2874\" data-end=\"2895\">11. Governing Law</strong></h3><p data-start=\"225\" data-end=\"601\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"2896\" data-end=\"2987\">These terms are governed by the laws of the <strong data-start=\"2940\" data-end=\"2986\">Democratic Socialist Republic of Sri Lanka</strong>.</p>\r\n										\r\n										'),
(2, 'privacy', '										<p data-start=\"208\" data-end=\"389\">AirTravels respects your privacy and is committed to protecting your personal information. This Privacy Policy explains what data we collect, how we use it, and how we keep it safe.</p>\r\n<hr data-start=\"391\" data-end=\"394\">\r\n<h3 data-start=\"396\" data-end=\"429\"><strong data-start=\"400\" data-end=\"429\">1. Information We Collect</strong></h3>\r\n<p data-start=\"430\" data-end=\"496\">When you use AirTravels, we may collect the following information:</p>\r\n<ul data-start=\"497\" data-end=\"786\">\r\n<li data-start=\"497\" data-end=\"584\">\r\n<p data-start=\"499\" data-end=\"584\"><strong data-start=\"499\" data-end=\"523\">Personal Information</strong>: Your name, email, phone number, address, ID/passport number</p>\r\n</li>\r\n<li data-start=\"585\" data-end=\"660\">\r\n<p data-start=\"587\" data-end=\"660\"><strong data-start=\"587\" data-end=\"610\">Booking Information</strong>: Travel dates, selected packages, payment details</p>\r\n</li>\r\n<li data-start=\"661\" data-end=\"718\">\r\n<p data-start=\"663\" data-end=\"718\"><strong data-start=\"663\" data-end=\"680\">Login Details</strong>: Username, password (securely stored)</p>\r\n</li>\r\n<li data-start=\"719\" data-end=\"786\">\r\n<p data-start=\"721\" data-end=\"786\"><strong data-start=\"721\" data-end=\"743\">Device Information</strong>: IP address, browser type, and device type</p>\r\n</li>\r\n</ul>\r\n<hr data-start=\"788\" data-end=\"791\">\r\n<h3 data-start=\"793\" data-end=\"831\"><strong data-start=\"797\" data-end=\"831\">2. How We Use Your Information</strong></h3>\r\n<p data-start=\"832\" data-end=\"859\">We use your information to:</p>\r\n<ul data-start=\"860\" data-end=\"1054\">\r\n<li data-start=\"860\" data-end=\"893\">\r\n<p data-start=\"862\" data-end=\"893\">Process bookings and payments</p>\r\n</li>\r\n<li data-start=\"894\" data-end=\"946\">\r\n<p data-start=\"896\" data-end=\"946\">Send confirmations, updates, or travel reminders</p>\r\n</li>\r\n<li data-start=\"947\" data-end=\"975\">\r\n<p data-start=\"949\" data-end=\"975\">Provide customer support</p>\r\n</li>\r\n<li data-start=\"976\" data-end=\"1012\">\r\n<p data-start=\"978\" data-end=\"1012\">Improve our website and services</p>\r\n</li>\r\n<li data-start=\"1013\" data-end=\"1054\">\r\n<p data-start=\"1015\" data-end=\"1054\">Follow legal or regulatory requirements</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"1056\" data-end=\"1119\">We do <strong data-start=\"1062\" data-end=\"1082\">not sell or rent</strong> your personal information to anyone.</p>\r\n<hr data-start=\"1121\" data-end=\"1124\">\r\n<h3 data-start=\"1126\" data-end=\"1161\"><strong data-start=\"1130\" data-end=\"1161\">3. Sharing Your Information</strong></h3>\r\n<p data-start=\"1162\" data-end=\"1190\">We may share your data with:</p>\r\n<ul data-start=\"1191\" data-end=\"1326\">\r\n<li data-start=\"1191\" data-end=\"1260\">\r\n<p data-start=\"1193\" data-end=\"1260\">Trusted service providers (like payment gateways or tour operators)</p>\r\n</li>\r\n<li data-start=\"1261\" data-end=\"1326\">\r\n<p data-start=\"1263\" data-end=\"1326\">Law enforcement or government bodies (only if legally required)</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"1328\" data-end=\"1420\">We ensure that any third party we share data with follows strong privacy and security rules.</p>\r\n<hr data-start=\"1422\" data-end=\"1425\">\r\n<h3 data-start=\"1427\" data-end=\"1458\"><strong data-start=\"1431\" data-end=\"1458\">4. Cookies and Tracking</strong></h3>\r\n<p data-start=\"1459\" data-end=\"1510\">We use cookies to improve your experience, such as:</p>\r\n<ul data-start=\"1511\" data-end=\"1597\">\r\n<li data-start=\"1511\" data-end=\"1536\">\r\n<p data-start=\"1513\" data-end=\"1536\">Keeping you logged in</p>\r\n</li>\r\n<li data-start=\"1537\" data-end=\"1569\">\r\n<p data-start=\"1539\" data-end=\"1569\">Remembering your preferences</p>\r\n</li>\r\n<li data-start=\"1570\" data-end=\"1597\">\r\n<p data-start=\"1572\" data-end=\"1597\">Analyzing website traffic</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"1599\" data-end=\"1705\">You can disable cookies through your browser settings, but some parts of the system may not work properly.</p>\r\n<hr data-start=\"1707\" data-end=\"1710\">\r\n<h3 data-start=\"1712\" data-end=\"1736\"><strong data-start=\"1716\" data-end=\"1736\">5. Data Security</strong></h3>\r\n<p data-start=\"1737\" data-end=\"1782\">We take your data security seriously. We use:</p>\r\n<ul data-start=\"1783\" data-end=\"1886\">\r\n<li data-start=\"1783\" data-end=\"1821\">\r\n<p data-start=\"1785\" data-end=\"1821\">Secure Socket Layer (SSL) encryption</p>\r\n</li>\r\n<li data-start=\"1822\" data-end=\"1860\">\r\n<p data-start=\"1824\" data-end=\"1860\">Firewalls and strong access controls</p>\r\n</li>\r\n<li data-start=\"1861\" data-end=\"1886\">\r\n<p data-start=\"1863\" data-end=\"1886\">Regular security checks</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"1888\" data-end=\"1989\">However, no system is 100% secure. We recommend keeping your password safe and logging out after use.</p>\r\n<hr data-start=\"1991\" data-end=\"1994\">\r\n<h3 data-start=\"1996\" data-end=\"2018\"><strong data-start=\"2000\" data-end=\"2018\">6. Your Rights</strong></h3>\r\n<p data-start=\"2019\" data-end=\"2041\">You have the right to:</p>\r\n<ul data-start=\"2042\" data-end=\"2208\">\r\n<li data-start=\"2042\" data-end=\"2084\">\r\n<p data-start=\"2044\" data-end=\"2084\">View the information we hold about you</p>\r\n</li>\r\n<li data-start=\"2085\" data-end=\"2125\">\r\n<p data-start=\"2087\" data-end=\"2125\">Update or correct your personal data</p>\r\n</li>\r\n<li data-start=\"2126\" data-end=\"2156\">\r\n<p data-start=\"2128\" data-end=\"2156\">Ask us to delete your data</p>\r\n</li>\r\n<li data-start=\"2157\" data-end=\"2208\">\r\n<p data-start=\"2159\" data-end=\"2208\">Withdraw your consent at any time (if applicable)</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"2210\" data-end=\"2261\">To make a request, please contact our support team.</p>\r\n<hr data-start=\"2263\" data-end=\"2266\">\r\n<h3 data-start=\"2268\" data-end=\"2297\"><strong data-start=\"2272\" data-end=\"2297\">7. Children\'s Privacy</strong></h3>\r\n<p data-start=\"2298\" data-end=\"2407\">Our services are not designed for children under 13. We do not knowingly collect personal data from children.</p>\r\n<hr data-start=\"2409\" data-end=\"2412\">\r\n<h3 data-start=\"2414\" data-end=\"2447\"><strong data-start=\"2418\" data-end=\"2447\">8. Changes to This Policy</strong></h3>\r\n<p data-start=\"2448\" data-end=\"2586\">We may update this policy as needed. Changes will be posted on our website. Continued use of AirTravels means you agree to the new policy.</p>\r\n										'),
(3, 'aboutus', '																				<div><p data-start=\"112\" data-end=\"236\"><strong data-start=\"112\" data-end=\"126\">AirTravels</strong> is a tour management system in Sri Lanka, started in <strong data-start=\"180\" data-end=\"198\">2024 by AdminR</strong> as part of an <strong data-start=\"213\" data-end=\"235\">individual project</strong>.</p>\r\n<p data-start=\"238\" data-end=\"446\">It was created to make tour planning and booking easier for both travelers and tour providers. AirTravels offers a user-friendly platform to explore destinations, book tours, and manage travel plans smoothly.</p>\r\n<p data-start=\"448\" data-end=\"528\">Our aim is to provide a reliable and helpful travel experience across Sri Lanka.</p></div>'),
(11, 'contact', '																				<p data-start=\"241\" data-end=\"296\"><strong data-start=\"244\" data-end=\"256\">Address:</strong><br data-start=\"256\" data-end=\"259\">\r\n5th Mile Stone, Kirankulam, Sri Lanka</p><p data-start=\"298\" data-end=\"329\"><strong data-start=\"301\" data-end=\"311\">Phone:</strong><br data-start=\"311\" data-end=\"314\">\r\n+94 77 123 4567</p><p data-start=\"241\" data-end=\"296\">\r\n\r\n</p><p data-start=\"331\" data-end=\"376\"><strong data-start=\"334\" data-end=\"344\">Email:</strong></p><p data-start=\"331\" data-end=\"376\"><span style=\"color: rgb(0, 141, 231);\">adminR@gmail.co</span></p>\r\n<p data-start=\"378\" data-end=\"464\"><strong data-start=\"381\" data-end=\"399\">Working Hours:</strong><br data-start=\"399\" data-end=\"402\">\r\nMonday – Friday: 9:00 AM – 5:00 PM<br data-start=\"436\" data-end=\"439\">\r\nSaturday &amp; Sunday: Closed</p>\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Swiss Paris Delight Premium 2020 (Group Package)', 'Group Package', 'Paris and Switzerland', 6000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights in Paris and 3 nights in scenic Switzerland - Enjoy continental breakfasts every morning - Enjoy 5 Indian dinners in Mainland Europe - Exp', 'Pick this holiday for a relaxing vacation in Paris and Switzerland. Your tour embarks from Paris. Enjoy an excursion to popular attractions like the iconic Eiffel Tower. After experiencing the beautiful city, you will drive past mustard fields through Burgundy to reach Switzerland. While there, you can opt for a tour to Interlaken and then to the Trummelbach Falls. Photostop at Zurich Lake and a cable car ride to Mt. Titlis are the main highlights of the holiday.', '1581490262_2_1.jpg', '2024-07-14 23:51:58', '2024-01-29 23:50:49'),
(2, 'Bhutan Holidays - Thimphu and Paro Special', 'Family Package', 'Bhutan', 3000, 'Free Wi-fi, Free Breakfast, Free Pickup and drop facility ', 'Visit to Tiger\'s Nest Monastery | Complimentary services of a Professional Guide', 'BHUTAN-THIMPU-PARO-PUNAKHA-TOUR-6N-7D.jpeg', '2024-07-14 23:51:58', '2024-01-29 23:50:56'),
(3, 'Soulmate Special Bali - 7 Nights', 'Couple Package', 'Indonesia(Bali)', 5000, 'Free Pickup and drop facility, Free Wi-fi , Free professional guide', 'Airport transfers by private car | Popular Sightseeing included | Suitable for Couple and budget travelers', '1583140977_5_11.jpg', '2024-07-14 23:51:58', '2024-01-29 23:50:56'),
(4, 'Kerala - A Lovers Paradise - Value Added', 'Family Package', 'Kerala', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Matupetty Dam, tea plantation and a spice garden | View sunset in Kanyakumari | AC Car at disposal for 2hrs extra (once per city)', 'images (2).jpg', '2024-07-14 23:51:58', '2024-01-29 23:50:56'),
(5, 'Short Trip To Dubai', 'Family', 'Dubai', 4500, 'Free pick up and drop facility, Free Wi-fi, Free breakfast', 'A Holiday Package for the entire family.', 'unnamed.jpg', '2024-07-14 23:51:58', '2024-01-29 23:50:56'),
(6, 'Sikkim Delight with Darjeeling (customizable)', 'Group', 'Sikkim', 3500, 'Free Breakfast, Free Pick up drop facility', 'Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery', 'download (2).jpg', '2024-07-14 23:51:58', '2024-01-29 23:50:56'),
(7, '6 Days in Guwahati and Shillong With Cherrapunji Excursion', 'Family Package', 'Guwahati(Sikkim)', 4500, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'After arrival at Guwahati airport meet our representative & proceed for Shillong. Shillong is the capital and hill station of Meghalaya, also known as Abode of Cloud, one of the smallest states in India. En route visit Barapani lake. By afternoon reach at Shillong. Check in to the hotel. Evening is leisure. Spent time as you want. Visit Police bazar. Overnight stay at Shillong.', '95995.jpg', '2024-07-14 23:51:58', '2024-01-29 23:50:56'),
(8, 'Grand Week in North East - Lachung, Lachen and Gangtok', 'Domestic Packages', 'Sikkim', 4500, 'Free Breakfast, Free Wi-fi', 'Changu Lakeand New Baba Mandir excursion | Yumthang Valley tour | Gurudongmar Lake excursion | Night stay in Lachen', 'download (3).jpg', '2024-07-14 23:51:58', '2024-01-29 23:50:56'),
(9, 'Gangtok & Darjeeling Holiday (Without Flights)', 'Family Package', 'Sikkim', 1000, 'Free Wi-fi, Free pickup and drop facility', 'Ideal tour for Family | Sightseeing in Gangtok and Darjeeling | Full day excursion to idyllic Changu Lake | Visit to Ghoom Monastery', '1540382781_shutterstock_661867435.jpg.jpg', '2024-07-14 23:51:58', '2024-01-29 23:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 01:03:20', '2024-01-30 20:30:48'),
(5, 'Test', '1987894654', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-16 01:03:20', '2024-01-30 20:30:48'),
(10, 'UserR', '+947711111', 'Usertest@gmail.com', 'af53ce40d684e936899e17daf622c8c5', '2025-05-19 14:34:58', '2025-05-19 14:37:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
