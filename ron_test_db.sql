-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2022 at 01:28 PM
-- Server version: 8.0.30-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ron_test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int NOT NULL,
  `DepartmentName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `DepartmentName`) VALUES
(1, 'Sales'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Admin'),
(5, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmpID` int NOT NULL,
  `NamePrefix` varchar(10) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `MiddleInitial` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `EMail` varchar(255) NOT NULL,
  `DOB` varchar(30) NOT NULL,
  `DOJ` varchar(30) NOT NULL,
  `Salary` decimal(10,0) NOT NULL,
  `PhoneNo` double NOT NULL,
  `PlaceName` varchar(255) NOT NULL,
  `County` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Zip` int NOT NULL,
  `Region` varchar(30) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `role` tinyint NOT NULL,
  `deptID` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmpID`, `NamePrefix`, `FirstName`, `MiddleInitial`, `LastName`, `Gender`, `EMail`, `DOB`, `DOJ`, `Salary`, `PhoneNo`, `PlaceName`, `County`, `City`, `State`, `Zip`, `Region`, `UserName`, `Password`, `role`, `deptID`) VALUES
(134841, 'Ms.', 'Donna', 'R', 'Brown', 'F', 'donna.brown@aol.com', '9/14/1983', '7/17/2013', '129836', 2124347910, 'Lima', 'Livingston', 'Lima', 'NY', 14485, 'Northeast', 'drbrown', 'u?%QOo2ykK', 1, 1),
(153989, 'Prof.', 'Jack', 'C', 'Alexander', 'M', 'jack.alexander@gmail.com', '5/19/1995', '1/5/2017', '82965', 7026033769, 'Las Vegas', 'Clark', 'Las Vegas', 'NV', 89170, 'West', 'jcalexander', '9L*-O1U.9mSUSh', 1, 1),
(158666, 'Ms.', 'Rebecca', 'A', 'Stewart', 'F', 'rebecca.stewart@gmail.com', '8/11/1961', '4/10/1983', '160043', 2092337631, 'Independence', 'Inyo', 'Independence', 'CA', 93526, 'West', 'rastewart', '7ONuh3Zi^z#32r', 1, 1),
(162402, 'Hon.', 'Diana', 'T', 'Peterson', 'F', 'diana.peterson@hotmail.co.uk', '11/13/1987', '2/17/2014', '43010', 4797835656, 'Eureka Springs', 'Carroll', 'Eureka Springs', 'AR', 72632, 'South', 'dtpeterson', '3o8>v&tYxjyEAo', 1, 1),
(183071, 'Drs.', 'Andrea', 'P', 'Garcia', 'F', 'andrea.garcia@aol.com', '7/6/1985', '4/18/2010', '54179', 2196243708, 'Granger', 'St. Joseph', 'Granger', 'IN', 46530, 'Midwest', 'apgarcia', 'eI!^kXR]Q^V+', 1, 1),
(185032, 'Mr.', 'Eugene', 'D', 'Perez', 'M', 'eugene.perez@exxonmobil.com', '10/6/1979', '12/8/2014', '122950', 2624727112, 'Racine', 'Racine', 'Racine', 'WI', 53490, 'Midwest', 'edperez', 'g]SJn<W_/#', 1, 1),
(193819, 'Mr.', 'Benjamin', 'R', 'Russell', 'M', 'benjamin.russell@charter.net', '4/17/1977', '7/25/2013', '117642', 2624042252, 'Fremont', 'Waupaca', 'Fremont', 'WI', 54940, 'Midwest', 'brrussell', 'Rd<Y8cp!@R', 1, 1),
(212893, 'Ms.', 'Janet', 'Y', 'Henderson', 'F', 'janet.henderson@ntlworld.com', '12/24/1979', '12/18/2012', '114481', 2397696347, 'Miami', 'Miami-Dade', 'Miami', 'FL', 33166, 'South', 'jyhenderson', 'g-oCs-L/za', 1, 1),
(214352, 'Ms.', 'Theresa', 'G', 'Lee', 'F', 'theresa.lee@gmail.com', '12/5/1992', '1/19/2015', '197537', 3195538919, 'Toeterville', 'Mitchell', 'Toeterville', 'IA', 50481, 'Midwest', 'tglee', 'JS#hN&Xij\\%QEr', 1, 1),
(218791, 'Mr.', 'Aaron', 'N', 'Price', 'M', 'aaron.price@bp.com', '2/10/1969', '7/3/1997', '54402', 2192878926, 'Eckerty', 'Crawford', 'Eckerty', 'IN', 47116, 'Midwest', 'anprice', 'uKxgV4uO&k@', 1, 1),
(225925, 'Mr.', 'Paul', 'D', 'Cooper', 'M', 'paul.cooper@gmail.com', '8/12/1991', '9/8/2014', '73526', 2109844722, 'Glidden', 'Colorado', 'Glidden', 'TX', 78943, 'South', 'pdcooper', 'hW%ZbJ\\fZ-', 2, 1),
(226714, 'Drs.', 'Nancy', 'L', 'Davis', 'F', 'nancy.davis@ibm.com', '11/14/1983', '8/25/2012', '94986', 2196103067, 'Bowling Green', 'Clay', 'Bowling Green', 'IN', 47833, 'Midwest', 'nldavis', 'bv-KfTutT?0*pm', 2, 1),
(227922, 'Hon.', 'Amanda', 'M', 'Hughes', 'F', 'amanda.hughes@rediffmail.com', '7/29/1982', '4/19/2007', '114257', 2255449700, 'Lake Charles', 'Calcasieu', 'Lake Charles', 'LA', 70605, 'South', 'amhughes', 'B2N>J{_k7]F', 2, 1),
(231469, 'Mr.', 'Ralph', 'L', 'Flores', 'M', 'ralph.flores@yahoo.com', '2/5/1975', '4/14/2009', '118457', 3162802864, 'Sabetha', 'Nemaha', 'Sabetha', 'KS', 66534, 'Midwest', 'rlflores', '7tP\\LrSr}\\qTqj', 2, 1),
(241882, 'Ms.', 'Debra', 'G', 'Wood', 'F', 'debra.wood@hotmail.com', '10/30/1969', '1/10/1991', '84318', 3086466219, 'Blair', 'Washington', 'Blair', 'NE', 68009, 'Midwest', 'dgwood', 'iO8B@*yA*mG6b9o', 2, 1),
(247137, 'Mr.', 'Alan', 'E', 'Rivera', 'M', 'alan.rivera@apple.com', '12/11/1978', '6/7/2006', '154810', 4232776819, 'Knoxville', 'Knox', 'Knoxville', 'TN', 37901, 'South', 'aerivera', 'rSuD~3HS*{S', 2, 1),
(253573, 'Ms.', 'Sharon', 'E', 'Lopez', 'F', 'sharon.lopez@gmail.com', '5/4/1991', '3/7/2014', '190139', 3049345548, 'Bartley', 'McDowell', 'Bartley', 'WV', 24813, 'South', 'selopez', 'GsP~S?FYY', 2, 1),
(262382, 'Ms.', 'Cheryl', 'O', 'Miller', 'F', 'cheryl.miller@ntlworld.com', '4/20/1985', '7/30/2007', '64143', 2708803858, 'Bays', 'Breathitt', 'Bays', 'KY', 41310, 'South', 'comiller', 'Nr-t/.^cWBO', 2, 1),
(263480, 'Hon.', 'Daniel', 'K', 'Cooper', 'M', 'daniel.cooper@yahoo.com', '1/1/1990', '3/6/2014', '153790', 7015108162, 'Manning', 'Dunn', 'Manning', 'ND', 58642, 'Midwest', 'dkcooper', 'd8p{Pwx2fsW0-Z', 2, 1),
(265813, 'Hon.', 'Jack', 'E', 'Campbell', 'M', 'jack.campbell@gmail.com', '1/4/1985', '7/29/2007', '186280', 3164995737, 'Kalvesta', 'Kalvesta', '', 'KS', 67856, 'Midwest', 'jecampbell', 'rh\\N>WRr4hl~l', 2, 1),
(278556, 'Prof.', 'Richard', 'Y', 'Mitchell', 'M', 'richard.mitchell@verizon.net', '7/28/1993', '8/18/2016', '122226', 2056215884, 'Ohatchee', 'Calhoun', 'Ohatchee', 'AL', 36271, 'South', 'rymitchell', 'RWeXJPOi:KpX<Rn', 2, 3),
(293459, 'Mr.', 'Steven', 'J', 'Phillips', 'M', 'steven.phillips@hotmail.com', '9/12/1986', '3/27/2015', '90108', 2259685952, 'Baton Rouge', 'East Baton Rouge', 'Baton Rouge', 'LA', 70833, 'South', 'sjphillips', 'ht}X55$P&g1', 2, 2),
(301576, 'Hon.', 'Wayne', 'G', 'Watson', 'M', 'wayne.watson@gmail.com', '6/26/1996', '7/19/2017', '92758', 7012319370, 'Maida', 'Cavalier', 'Maida', 'ND', 58255, 'Midwest', 'wgwatson', 'wM4J{]&j\\-eGc', 2, 2),
(316110, 'Mr.', 'Jeremy', 'I', 'Sanchez', 'M', 'jeremy.sanchez@hotmail.com', '2/5/1965', '4/2/2006', '178847', 4239742755, 'Alcoa', 'Blount', 'Alcoa', 'TN', 37701, 'South', 'jisanchez', 'Yg#Z+:CDwDV<*xZ', 2, 2),
(325319, 'Hon.', 'Carolyn', 'F', 'Price', 'F', 'carolyn.price@yahoo.com', '5/30/1976', '11/5/2014', '48736', 2174094338, 'Wheaton', 'DuPage', 'Wheaton', 'IL', 60189, 'Midwest', 'cfprice', 'K*$u@MAoH', 2, 2),
(329752, 'Hon.', 'Lillian', 'X', 'Brown', 'F', 'lillian.brown@aol.com', '5/12/1981', '4/13/2015', '67251', 2398129041, 'Panacea', 'Wakulla', 'Panacea', 'FL', 32346, 'South', 'lxbrown', 'CG-M5~z:', 2, 2),
(333476, 'Hon.', 'Mary', 'P', 'Wilson', 'F', 'mary.wilson@sbcglobal.net', '12/1/1967', '12/22/1991', '109394', 4239378660, 'Nashville', 'Davidson', 'Nashville', 'TN', 37219, 'South', 'mpwilson', 'Pwl&W:|<_', 2, 2),
(335732, 'Ms.', 'Brenda', 'M', 'Butler', 'F', 'brenda.butler@gmail.com', '12/6/1963', '8/20/1987', '60508', 4808148284, 'Mesa', 'Maricopa', 'Mesa', 'AZ', 85208, 'West', 'bmbutler', 'u+CtpZ~gyR*>', 2, 2),
(363065, 'Drs.', 'Nancy', 'L', 'Jones', 'F', 'nancy.jones@gmail.com', '11/10/1993', '10/16/2015', '61924', 2128251930, 'New York City', 'New York', 'New York City', 'NY', 10087, 'Northeast', 'nljones', 'J}HJq/zVF-Aq2', 2, 2),
(380086, 'Mrs.', 'Carol', 'V', 'Murphy', 'F', 'carol.murphy@gmail.com', '6/30/1958', '1/28/1983', '60918', 2163360009, 'Blanchester', 'Clinton', 'Blanchester', 'OH', 45107, 'Midwest', 'cvmurphy', 'Uc+VG%vuZU<k', 3, 2),
(386158, 'Mrs.', 'Melissa', 'Q', 'King', 'F', 'melissa.king@comcast.net', '2/24/1972', '11/24/2015', '166892', 2166053731, 'New Matamoras', 'Washington', 'New Matamoras', 'OH', 45767, 'Midwest', 'mqking', 'FE5i<e-Y}[4f78', 3, 2),
(388642, 'Mrs.', 'Ruby', 'R', 'Rogers', 'F', 'ruby.rogers@gmail.com', '5/1/1980', '8/30/2013', '160623', 4232316507, 'Woodbury', 'Cannon', 'Woodbury', 'TN', 37190, 'South', 'rrrogers', 't>#P@D9s<:9\\V', 3, 3),
(392491, 'Mrs.', 'Theresa', 'R', 'Murphy', 'F', 'theresa.murphy@gmail.com', '12/30/1987', '8/3/2010', '51015', 9073561555, 'Mc Grath', 'Yukon-Koyukuk (CA)', 'Mc Grath', 'AK', 99627, 'West', 'trmurphy', 'V]PGw>4h9', 3, 3),
(400173, 'Ms.', 'Dorothy', 'K', 'Edwards', 'F', 'dorothy.edwards@hotmail.co.uk', '1/19/1984', '12/31/2013', '179017', 2159026888, 'Philadelphia', 'Philadelphia', 'Philadelphia', 'PA', 19132, 'Northeast', 'dkedwards', 'VWEIm3YKm65|D', 3, 3),
(407061, 'Ms.', 'Elizabeth', 'Q', 'Jackson', 'F', 'elizabeth.jackson@aol.com', '8/15/1964', '1/19/2005', '85420', 6035686118, 'Rochester', 'Strafford', 'Rochester', 'NH', 3867, 'Northeast', 'eqjackson', 'EAHcnWsf6xMRwr]', 3, 3),
(408351, 'Drs.', 'Diane', 'I', 'Evans', 'F', 'diane.evans@yahoo.com', '12/4/1977', '4/16/1999', '180294', 2157936791, 'Hydetown', 'Crawford', 'Hydetown', 'PA', 16328, 'Northeast', 'dievans', '0gGRtp1HfL<r5', 3, 3),
(426038, 'Hon.', 'Joan', 'C', 'Stewart', 'F', 'joan.stewart@yahoo.com', '11/20/1972', '12/30/2009', '111673', 2166376800, 'Middleport', 'Meigs', 'Middleport', 'OH', 45760, 'Midwest', 'jcstewart', 'q@mq.U~D#1MPgZ', 3, 3),
(428945, 'Dr.', 'Joe', 'W', 'Robinson', 'M', 'joe.robinson@gmail.com', '6/16/1963', '8/3/2016', '50155', 2199042161, 'Michigantown', 'Clinton', 'Michigantown', 'IN', 46057, 'Midwest', 'jwrobinson', 'GO4$J8MiEh[A', 3, 3),
(441771, 'Mrs.', 'Cheryl', 'O', 'Scott', 'F', 'cheryl.scott@gmail.com', '2/23/1958', '11/26/1990', '92220', 2152889345, 'Quecreek', 'Somerset', 'Quecreek', 'PA', 15555, 'Northeast', 'coscott', 'Vbb+~2N|_yR', 3, 3),
(447813, 'Mrs.', 'Ann', 'Q', 'Coleman', 'F', 'ann.coleman@ibm.com', '5/11/1989', '11/19/2013', '130014', 3199944179, 'Hancock', 'Pottawattamie', 'Hancock', 'IA', 51536, 'Midwest', 'aqcoleman', 'g2]GlvlL5', 3, 3),
(456747, 'Mr.', 'Roy', 'Z', 'Griffin', 'M', 'roy.griffin@yahoo.com', '5/8/1991', '8/23/2012', '170895', 2195069378, 'Liberty', 'Union', 'Liberty', 'IN', 47353, 'Midwest', 'rzgriffin', 'qm&h<b.NsKaZ', 3, 3),
(461593, 'Ms.', 'Nicole', 'O', 'Ward', 'F', 'nicole.ward@yahoo.com', '12/12/1964', '1/23/1989', '95673', 2317617861, 'Detroit', 'Wayne', 'Detroit', 'MI', 48278, 'Midwest', 'noward', 'AUe6s0@:@]A3Ze', 3, 3),
(474599, 'Drs.', 'Maria', 'W', 'Walker', 'F', 'maria.walker@microsoft.com', '3/19/1975', '10/1/1998', '48944', 4236685506, 'Lawrenceburg', 'Lawrence', 'Lawrenceburg', 'TN', 38464, 'South', 'mwwalker', 'cw?%U}s{?', 3, 3),
(476433, 'Ms.', 'Lillian', 'N', 'Mitchell', 'F', 'lillian.mitchell@shaw.ca', '10/23/1974', '12/7/1999', '149878', 3168761484, 'Wichita', 'Sedgwick', 'Wichita', 'KS', 67214, 'Midwest', 'lnmitchell', 'Ty/b@+', 3, 3),
(477253, 'Mrs.', 'Anne', 'L', 'Russell', 'F', 'anne.russell@ibm.com', '7/29/1989', '11/24/2013', '103160', 6056351306, 'Stockholm', 'Grant', 'Stockholm', 'SD', 57264, 'Midwest', 'alrussell', 'c8Nk&Y^~Vz!2', 3, 3),
(477616, 'Hon.', 'Frances', 'B', 'Young', 'F', 'frances.young@gmail.com', '6/9/1959', '4/27/1994', '121587', 2108199765, 'Delmita', 'Starr', 'Delmita', 'TX', 78536, 'South', 'fbyoung', 'K}^USc0l7[A', 3, 3),
(478003, 'Hon.', 'Cynthia', 'X', 'White', 'F', 'cynthia.white@gmail.com', '6/15/1963', '3/4/2004', '186200', 3145933092, 'Kansas City', 'Jackson', 'Kansas City', 'MO', 64133, 'Midwest', 'cxwhite', 'mofyGR>.?Dwb4!', 3, 4),
(489424, 'Dr.', 'Phillip', 'F', 'White', 'M', 'phillip.white@gmail.com', '3/4/1978', '1/5/2016', '181774', 5036686592, 'Mapleton', 'Lane', 'Mapleton', 'OR', 97453, 'West', 'pfwhite', '8<Mc.5]eu.*C8.', 3, 4),
(491943, 'Mrs.', 'Nancy', 'P', 'Howard', 'F', 'nancy.howard@gmail.com', '5/5/1961', '2/6/1999', '101553', 2369738086, 'Saxe', 'Charlotte', 'Saxe', 'VA', 23967, 'South', 'nphoward', 'OC\\&tG&?c', 3, 4),
(495141, 'Drs.', 'Tammy', 'B', 'Young', 'F', 'tammy.young@comcast.net', '3/22/1979', '4/25/2015', '93650', 2312903075, 'Alma', 'Gratiot', 'Alma', 'MI', 48801, 'Midwest', 'tbyoung', 'd6!&xu12A1H^i![', 3, 4),
(499687, 'Mr.', 'Patrick', 'F', 'Bailey', 'M', 'patrick.bailey@aol.com', '9/27/1982', '7/22/2005', '72305', 3198126957, 'Macksburg', 'Madison', 'Macksburg', 'IA', 50155, 'Midwest', 'pfbailey', 'K7&5aY/*', 3, 4),
(515103, 'Ms.', 'Anne', 'A', 'Perez', 'F', 'anne.perez@sbcglobal.net', '5/5/1958', '7/28/2003', '114426', 4238373338, 'Cookeville', 'Putnam', 'Cookeville', 'TN', 38505, 'South', 'aaperez', 'y', 3, 4),
(524896, 'Ms.', 'Judy', 'Y', 'Hernandez', 'F', 'judy.hernandez@gmail.com', '3/25/1961', '12/27/2011', '133332', 3167366126, 'Topeka', 'Shawnee', 'Topeka', 'KS', 66606, 'Midwest', 'jyhernandez', 'kiB:v!j&?D!&NYY', 3, 4),
(525955, 'Drs.', 'Judy', 'C', 'Gonzales', 'F', 'judy.gonzales@gmail.com', '6/17/1959', '1/3/1992', '149575', 2016408645, 'Eatontown', 'Monmouth', 'Eatontown', 'NJ', 7724, 'Northeast', 'jcgonzales', 'yDl}pfaWs{Hro6', 3, 4),
(528509, 'Hon.', 'Paula', 'G', 'Diaz', 'F', 'paula.diaz@gmail.com', '8/22/1966', '8/22/1994', '152654', 2525317641, 'Beulaville', 'Duplin', 'Beulaville', 'NC', 28518, 'South', 'pgdiaz', '3Kg55luU', 3, 4),
(528673, 'Hon.', 'Paul', 'V', 'Watson', 'M', 'paul.watson@hotmail.com', '3/9/1959', '6/26/1995', '145235', 2705567711, 'Blue River', 'Floyd', 'Blue River', 'KY', 41607, 'South', 'pvwatson', '7q{iHhbgWZ7%', 3, 4),
(533952, 'Ms.', 'Kelly', 'R', 'Adams', 'F', 'kelly.adams@bp.com', '5/23/1975', '7/4/2013', '51878', 4054180037, 'Meno', 'Major', 'Meno', 'OK', 73760, 'South', 'kradams', 'OfK?#J|7&W\\1T', 3, 5),
(539712, 'Ms.', 'Nancy', 'T', 'Baker', 'F', 'nancy.baker@bp.com', '6/13/1995', '9/14/2016', '98189', 2293365117, 'Atlanta', 'Fulton', 'Atlanta', 'GA', 30334, 'South', 'ntbaker', 'xJdKlAcYQhT_BE#', 3, 5),
(560455, 'Ms.', 'Carolyn', 'V', 'Hayes', 'F', 'carolyn.hayes@hotmail.co.uk', '3/10/1958', '7/3/2001', '42005', 2398828784, 'Saint Cloud', 'Osceola', 'Saint Cloud', 'FL', 34771, 'South', 'cvhayes', 'NY!Y2sw.[_v-Q9{', 3, 5),
(621833, 'Mr.', 'Gregory', 'X', 'Edwards', 'M', 'gregory.edwards@outlook.com', '8/31/1993', '9/30/2015', '169245', 5032569654, 'Bonanza', 'Klamath', 'Bonanza', 'OR', 97623, 'West', 'gxedwards', 'V^sVy*MO{', 3, 5),
(622406, 'Mr.', 'Thomas', 'Q', 'Lewis', 'M', 'thomas.lewis@gmail.com', '10/4/1967', '6/7/1998', '73862', 3146793697, 'Dutchtown', 'Cape Girardeau', 'Dutchtown', 'MO', 63745, 'Midwest', 'tqlewis', 'y', 3, 5),
(623253, 'Mrs.', 'Ruby', 'Q', 'Stewart', 'F', 'ruby.stewart@gmail.com', '10/23/1968', '7/2/2017', '174774', 2184452369, 'Margie', 'Koochiching', 'Margie', 'MN', 56658, 'Midwest', 'rqstewart', 'C\\RjCUPJd[Ld]', 3, 5),
(623929, 'Prof.', 'Jimmy', 'R', 'Howard', 'M', 'jimmy.howard@yahoo.com', '11/27/1966', '12/12/2007', '120631', 2128559316, 'Oriskany', 'Oneida', 'Oriskany', 'NY', 13424, 'Northeast', 'jrhoward', '0v+|SfA0Xv+Pf%', 3, 5),
(639892, 'Mr.', 'Jose', 'K', 'Hill', 'M', 'jose.hill@hotmail.com', '10/8/1994', '7/9/2016', '129774', 2282455000, 'Biloxi', 'Harrison', 'Biloxi', 'MS', 39532, 'South', 'jkhill', 'a_!SKb6h3?w*Mad', 3, 5),
(677509, 'Drs.', 'Lois', 'H', 'Walker', 'F', 'lois.walker@hotmail.com', '3/29/1981', '11/24/2003', '168251', 3035728492, 'Denver', 'Denver', 'Denver', 'CO', 80224, 'West', 'lhwalker', 'DCa}.T}X:v?NP', 3, 5),
(683826, 'Mr.', 'Roger', 'L', 'Roberts', 'M', 'roger.roberts@gmail.com', '7/7/1969', '1/29/2009', '129625', 2064973141, 'Mount Vernon', 'Skagit', 'Mount Vernon', 'WA', 98273, 'West', 'rlroberts', '41:C_0ik|Jb0iTO', 3, 5),
(687017, 'Ms.', 'Frances', 'P', 'Watson', 'F', 'frances.watson@outlook.com', '1/30/1961', '8/20/2010', '46945', 4065308069, 'Trego', 'Lincoln', 'Trego', 'MT', 59934, 'West', 'fpwatson', 'rjV1$at!wq53a$', 3, 5),
(702813, 'Mr.', 'Ernest', 'D', 'Martinez', 'M', 'ernest.martinez@gmail.com', '11/9/1989', '1/24/2016', '172098', 4799514138, 'Uniontown', 'Crawford', 'Uniontown', 'AR', 72955, 'South', 'edmartinez', 'qe?JNGBY{[\\7', 3, 5),
(704709, 'Dr.', 'Harold', 'Z', 'Nelson', 'M', 'harold.nelson@gmail.com', '12/24/1984', '8/23/2011', '156194', 2175559216, 'Carol Stream', 'Carol Stream', 'Carol Stream', 'IL', 60351, 'Midwest', 'hznelson', 'z/-hEz3&^q5', 3, 5),
(726264, 'Hon.', 'Carl', 'N', 'Collins', 'M', 'carl.collins@yahoo.com', '12/22/1973', '6/9/2007', '162159', 4797407633, 'Wright', 'Jefferson', 'Wright', 'AR', 72182, 'South', 'cncollins', 'XinULSmjAFL/', 3, 5),
(732017, 'Ms.', 'Cynthia', 'J', 'Ramirez', 'F', 'cynthia.ramirez@btinternet.com', '9/22/1982', '2/18/2009', '90531', 4069617340, 'Browning', 'Glacier', 'Browning', 'MT', 59417, 'West', 'cjramirez', 'qP-#AhuNuz*Wb]', 3, 5),
(750173, 'Mr.', 'Antonio', 'R', 'Roberts', 'M', 'antonio.roberts@hotmail.com', '8/27/1995', '5/1/2017', '181646', 2052677304, 'Mc Calla', 'Jefferson', 'Mc Calla', 'AL', 35111, 'South', 'arroberts', 'h>.g!B:VcNN', 3, 5),
(758872, 'Mr.', 'Henry', 'Y', 'Jenkins', 'M', 'henry.jenkins@hotmail.com', '11/6/1984', '6/21/2017', '102384', 3147317135, 'Riverside', 'Platte', 'Riverside', 'MO', 64150, 'Midwest', 'hyjenkins', 'zPnRU5Bo', 3, 5),
(761821, 'Mr.', 'Ernest', 'G', 'Washington', 'M', 'ernest.washington@msn.com', '10/28/1984', '1/31/2015', '176675', 2125961659, 'Saranac Lake', 'Franklin', 'Saranac Lake', 'NY', 12983, 'Northeast', 'egwashington', 'B\\Wb^6W-', 3, 5),
(765850, 'Mrs.', 'Linda', 'R', 'Moore', 'F', 'linda.moore@gmail.com', '8/18/1991', '5/15/2017', '113256', 2157937095, 'Albion', 'Erie', 'Albion', 'PA', 16401, 'Northeast', 'lrmoore', '0jj}jl_r/VmJ', 3, 5),
(766610, 'Ms.', 'Joyce', 'E', 'Jenkins', 'F', 'joyce.jenkins@aol.com', '8/22/1961', '5/14/2010', '119321', 2624554187, 'Ellsworth', 'Pierce', 'Ellsworth', 'WI', 54011, 'Midwest', 'jejenkins', 'C5/iW3Ry#o{~elV', 3, 5),
(802554, 'Mr.', 'Ryan', 'V', 'Alexander', 'M', 'ryan.alexander@shell.com', '8/1/1993', '8/31/2014', '106628', 2253953347, 'Jarreau', 'Pointe Coupee', 'Jarreau', 'LA', 70749, 'South', 'rvalexander', '3N3]VFZx?MaC{', 3, 5),
(806955, 'Mr.', 'William', 'G', 'Hernandez', 'M', 'william.hernandez@rediffmail.com', '7/22/1967', '3/21/2000', '73734', 2392760532, 'Mary Esther', 'Okaloosa', 'Mary Esther', 'FL', 32569, 'South', 'wghernandez', 'BRB3DFywgZZ4', 3, 5),
(818384, 'Mr.', 'Peter', 'X', 'Washington', 'M', 'peter.washington@bp.com', '11/6/1982', '11/29/2009', '173226', 2313220316, 'Portage', 'Kalamazoo', 'Portage', 'MI', 49024, 'Midwest', 'pxwashington', '97%d^2rk41!E>*Q', 3, 5),
(844177, 'Ms.', 'Margaret', 'T', 'Allen', 'F', 'margaret.allen@gmail.com', '9/8/1981', '5/17/2013', '180107', 2166976987, 'Richmond Dale', 'Ross', 'Richmond Dale', 'OH', 45673, 'Midwest', 'mtallen', 'oC1OHlW%Sk@%6', 3, 5),
(867084, 'Ms.', 'Deborah', 'E', 'Smith', 'F', 'deborah.smith@yahoo.com', '10/31/1977', '3/4/2002', '52767', 9072798694, 'Atqasuk', 'North Slope', 'Atqasuk', 'AK', 99791, 'West', 'desmith', 'C[WxHsB9', 3, 5),
(870820, 'Ms.', 'Martha', 'G', 'Washington', 'F', 'martha.washington@aol.com', '3/28/1991', '3/3/2017', '116629', 4059450242, 'Nardin', 'Kay', 'Nardin', 'OK', 74646, 'South', 'mgwashington', 'ju$7I]eH8{-', 3, 5),
(879753, 'Mrs.', 'Pamela', 'X', 'Wright', 'F', 'pamela.wright@aol.com', '4/14/1996', '6/9/2017', '149262', 3073298832, 'Banner', 'Sheridan', 'Banner', 'WY', 82832, 'West', 'pxwright', '3a*&[Y^pV\\0!rU', 3, 5),
(883936, 'Mr.', 'Douglas', 'I', 'Flores', 'M', 'douglas.flores@gmail.com', '4/21/1986', '9/10/2009', '181793', 3038364721, 'Eckert', 'Delta', 'Eckert', 'CO', 81418, 'West', 'diflores', '9||FLq|0tU|9>v', 3, 5),
(890290, 'Hon.', 'Julia', 'S', 'Scott', 'F', 'julia.scott@apple.com', '7/15/1959', '2/23/2005', '141518', 4239391010, 'Primm Springs', 'Hickman', 'Primm Springs', 'TN', 38476, 'South', 'jsscott', 'r.:Q7c^Tpb', 3, 5),
(893212, 'Ms.', 'Amy', 'B', 'Howard', 'F', 'amy.howard@aol.com', '6/16/1981', '6/1/2003', '112715', 8036133168, 'Kline', 'Kline', 'Kline', 'SC', 29814, 'South', 'abhoward', 'tNo::TEG', 3, 5),
(904898, 'Drs.', 'Ann', 'Q', 'Cooper', 'F', 'ann.cooper@exxonmobil.com', '12/25/1992', '2/15/2017', '182521', 4062786460, 'Arlee', 'Lake', 'Arlee', 'MT', 59821, 'West', 'aqcooper', 'i_^#>]tFpt', 3, 5),
(912990, 'Mr.', 'Joshua', 'T', 'Stewart', 'M', 'joshua.stewart@yahoo.ca', '5/18/1970', '9/2/2002', '184896', 2172799342, 'New Douglas', 'Madison', 'New Douglas', 'IL', 62074, 'Midwest', 'jtstewart', 'K?vi9BBznj', 3, 5),
(915638, 'Dr.', 'Jason', 'W', 'Anderson', 'M', 'jason.anderson@gmail.com', '1/3/1974', '9/21/1999', '76636', 2178566752, 'Hudson', 'McLean', 'Hudson', 'IL', 61748, 'Midwest', 'jwanderson', 'a3Hlk+.V/TjD', 3, 5),
(917395, 'Hon.', 'Christopher', 'D', 'Nelson', 'M', 'christopher.nelson@aol.com', '3/29/1960', '11/8/1997', '190765', 4809469780, 'Willow Beach', 'Mohave', 'Willow Beach', 'AZ', 86445, 'West', 'cdnelson', 'QKae{1EP1A[SeX', 3, 5),
(917937, 'Mr.', 'Todd', 'H', 'Hall', 'M', 'todd.hall@yahoo.com', '8/31/1991', '5/8/2016', '163560', 2405138668, 'Randallstown', 'Baltimore', 'Randallstown', 'MD', 21133, 'South', 'thhall', 'Lgdb8q<0L@-/', 3, 5),
(923947, 'Ms.', 'Mary', 'G', 'Bryant', 'F', 'mary.bryant@verizon.net', '6/21/1962', '5/20/2004', '155442', 3198273516, 'Conroy', 'Iowa', 'Conroy', 'IA', 52220, 'Midwest', 'mgbryant', 'A[iR?Z1{', 3, 5),
(940761, 'Ms.', 'Brenda', 'S', 'Robinson', 'F', 'brenda.robinson@gmail.com', '7/31/1970', '7/27/2008', '51063', 2259454954, 'Stonewall', 'De Soto', 'Stonewall', 'LA', 71078, 'South', 'bsrobinson', 'TCo\\j#Zg', 3, 5),
(940922, 'Hon.', 'Melissa', 'X', 'Butler', 'F', 'melissa.butler@hotmail.com', '11/14/1994', '2/5/2017', '167631', 3088279016, 'Maxwell', 'Lincoln', 'Maxwell', 'NE', 69151, 'Midwest', 'mxbutler', 'hY3BqUR>6F', 3, 5),
(951225, 'Ms.', 'Margaret', 'N', 'Brooks', 'F', 'margaret.brooks@gmail.com', '6/27/1992', '8/26/2016', '43867', 3039600117, 'Haswell', 'Kiowa', 'Haswell', 'CO', 81045, 'West', 'mnbrooks', '0*2k8uW&:{i{', 3, 5),
(958326, 'Mr.', 'Larry', 'T', 'Miller', 'M', 'larry.miller@shell.com', '10/31/1988', '2/22/2017', '97904', 2175749283, 'East Saint Louis', 'St. Clair', 'East Saint Louis', 'IL', 62201, 'Midwest', 'ltmiller', '2WgF#:ew**x#', 3, 5),
(969580, 'Prof.', 'Matthew', 'L', 'Turner', 'M', 'matthew.turner@gmail.com', '10/26/1993', '2/7/2016', '52237', 2369727624, 'Heathsville', 'Northumberland', 'Heathsville', 'VA', 22473, 'South', 'mlturner', 'I>tL>d[|lZdi_|^', 3, 5),
(969964, 'Hon.', 'Janice', 'S', 'Parker', 'F', 'janice.parker@yahoo.com', '1/12/1980', '8/23/2016', '147641', 3148425984, 'Whiteman Air Force Base', 'Johnson', 'Whiteman Air Force Base', 'MO', 65305, 'Midwest', 'jsparker', '8wUbWmuib', 3, 5),
(971640, 'Prof.', 'Clarence', 'A', 'Ross', 'M', 'clarence.ross@apple.com', '12/13/1960', '12/31/2008', '165272', 4237720118, 'Oneida', 'Scott', 'Oneida', 'TN', 37841, 'South', 'caross', 'h&jmac@+QD?B', 3, 5),
(979607, 'Ms.', 'Carol', 'J', 'Edwards', 'F', 'carol.edwards@msn.com', '12/14/1994', '4/25/2016', '93967', 2252834295, 'Shreveport', 'Caddo', 'Shreveport', 'LA', 71162, 'South', 'cjedwards', 'wi>v-a9gt', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `emp_skille_mapping`
--

CREATE TABLE `emp_skille_mapping` (
  `id` int NOT NULL,
  `empID` int NOT NULL,
  `skillID` int NOT NULL,
  `level` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `emp_skille_mapping`
--

INSERT INTO `emp_skille_mapping` (`id`, `empID`, `skillID`, `level`) VALUES
(1, 528509, 3, 1),
(2, 528673, 3, 1),
(3, 533952, 3, 1),
(4, 134841, 1, 1),
(5, 153989, 1, 1),
(6, 158666, 1, 1),
(7, 539712, 3, 1),
(8, 162402, 1, 1),
(9, 183071, 1, 1),
(10, 185032, 1, 1),
(11, 193819, 1, 1),
(12, 212893, 1, 1),
(13, 560455, 3, 1),
(14, 214352, 1, 1),
(15, 621833, 3, 1),
(16, 218791, 1, 1),
(17, 622406, 3, 1),
(18, 225925, 1, 1),
(19, 226714, 1, 1),
(20, 623253, 3, 1),
(21, 623929, 3, 1),
(22, 639892, 3, 1),
(23, 677509, 3, 1),
(24, 683826, 3, 1),
(25, 227922, 1, 1),
(26, 231469, 1, 1),
(27, 687017, 3, 1),
(28, 241882, 1, 1),
(29, 247137, 1, 1),
(30, 253573, 1, 1),
(31, 262382, 1, 1),
(32, 702813, 3, 1),
(33, 263480, 1, 1),
(34, 704709, 3, 1),
(35, 265813, 1, 1),
(36, 726264, 3, 1),
(37, 278556, 1, 1),
(38, 732017, 3, 1),
(39, 750173, 3, 1),
(40, 758872, 3, 1),
(41, 761821, 3, 1),
(42, 765850, 3, 1),
(43, 293459, 1, 1),
(44, 301576, 1, 1),
(45, 316110, 1, 1),
(46, 325319, 1, 1),
(47, 766610, 3, 1),
(48, 329752, 1, 1),
(49, 802554, 3, 1),
(50, 333476, 1, 1),
(51, 806955, 3, 1),
(52, 335732, 1, 1),
(53, 818384, 3, 1),
(54, 363065, 1, 1),
(55, 844177, 3, 1),
(56, 380086, 1, 1),
(57, 867084, 3, 1),
(58, 870820, 1, 1),
(59, 293459, 4, 1),
(60, 301576, 4, 1),
(61, 386158, 1, 1),
(62, 388642, 1, 1),
(63, 392491, 1, 1),
(64, 316110, 4, 1),
(65, 400173, 1, 1),
(66, 325319, 4, 1),
(67, 407061, 1, 1),
(68, 329752, 4, 1),
(69, 408351, 1, 1),
(70, 333476, 4, 1),
(71, 426038, 1, 1),
(72, 335732, 4, 1),
(73, 428945, 1, 1),
(74, 363065, 4, 1),
(75, 441771, 1, 1),
(76, 380086, 4, 1),
(77, 447813, 1, 1),
(78, 386158, 4, 1),
(79, 134841, 2, 1),
(80, 388642, 4, 1),
(81, 392491, 4, 1),
(82, 400173, 4, 1),
(83, 153989, 2, 1),
(84, 158666, 2, 1),
(85, 162402, 2, 1),
(86, 407061, 4, 1),
(87, 183071, 2, 1),
(88, 408351, 4, 1),
(89, 185032, 2, 1),
(90, 426038, 4, 1),
(91, 193819, 2, 1),
(92, 428945, 4, 1),
(93, 212893, 2, 1),
(94, 441771, 4, 1),
(95, 214352, 2, 1),
(96, 447813, 4, 1),
(97, 218791, 2, 1),
(98, 456747, 4, 1),
(99, 461593, 4, 1),
(100, 474599, 4, 1),
(101, 225925, 2, 1),
(102, 226714, 2, 1),
(103, 227922, 2, 1),
(104, 476433, 4, 1),
(105, 231469, 2, 1),
(106, 477253, 4, 1),
(107, 241882, 2, 1),
(108, 477616, 4, 1),
(109, 247137, 2, 1),
(110, 478003, 4, 1),
(111, 253573, 2, 1),
(112, 489424, 4, 1),
(113, 262382, 2, 1),
(114, 491943, 4, 1),
(115, 263480, 2, 1),
(116, 495141, 4, 1),
(117, 265813, 1, 1),
(118, 499687, 4, 1),
(119, 456747, 5, 1),
(120, 515103, 4, 1),
(121, 524896, 4, 1),
(122, 525955, 4, 1),
(123, 461593, 5, 1),
(124, 474599, 5, 1),
(125, 476433, 5, 1),
(126, 528509, 4, 1),
(127, 477253, 5, 1),
(128, 528673, 4, 1),
(129, 477616, 5, 1),
(130, 533952, 4, 1),
(131, 478003, 5, 1),
(132, 539712, 4, 1),
(133, 560455, 4, 1),
(134, 621833, 4, 1),
(135, 489424, 5, 1),
(136, 491943, 5, 1),
(137, 495141, 5, 1),
(138, 622406, 4, 1),
(139, 499687, 5, 1),
(140, 623253, 4, 1),
(141, 515103, 5, 1),
(142, 623929, 4, 1),
(143, 639892, 4, 1),
(144, 677509, 4, 1),
(145, 524896, 5, 1),
(146, 525955, 5, 1),
(147, 683826, 4, 1),
(148, 687017, 4, 1),
(149, 702813, 4, 1),
(150, 704709, 4, 2),
(151, 726264, 4, 2),
(152, 732017, 4, 2),
(153, 750173, 4, 2),
(154, 758872, 4, 2),
(155, 761821, 4, 2),
(156, 765850, 4, 2),
(157, 528509, 5, 2),
(158, 766610, 4, 2),
(159, 528673, 5, 2),
(160, 802554, 4, 2),
(161, 533952, 5, 2),
(162, 806955, 4, 2),
(163, 539712, 5, 2),
(164, 818384, 4, 2),
(165, 560455, 5, 2),
(166, 844177, 4, 2),
(167, 621833, 5, 2),
(168, 867084, 4, 2),
(169, 622406, 5, 2),
(170, 623253, 5, 2),
(171, 623929, 5, 2),
(172, 639892, 5, 2),
(173, 677509, 5, 2),
(174, 683826, 5, 2),
(175, 687017, 5, 2),
(176, 702813, 5, 2),
(177, 704709, 5, 2),
(178, 726264, 5, 2),
(179, 732017, 5, 2),
(180, 750173, 5, 2),
(181, 758872, 5, 2),
(182, 761821, 5, 2),
(183, 765850, 5, 2),
(184, 766610, 5, 2),
(185, 802554, 5, 2),
(186, 806955, 5, 2),
(187, 818384, 5, 2),
(188, 844177, 5, 2),
(189, 867084, 5, 2),
(190, 870820, 5, 2),
(191, 879753, 5, 2),
(192, 883936, 5, 2),
(193, 890290, 5, 2),
(194, 893212, 5, 2),
(195, 904898, 5, 2),
(196, 912990, 5, 2),
(197, 915638, 5, 2),
(198, 917395, 5, 2),
(199, 870820, 1, 2),
(200, 917937, 5, 2),
(201, 456747, 7, 2),
(202, 923947, 5, 2),
(203, 461593, 7, 2),
(204, 940761, 5, 2),
(205, 474599, 7, 2),
(206, 940922, 5, 2),
(207, 951225, 5, 2),
(208, 958326, 5, 2),
(209, 969580, 5, 2),
(210, 969964, 5, 2),
(211, 476433, 7, 2),
(212, 971640, 5, 2),
(213, 979607, 1, 2),
(214, 867084, 6, 2),
(215, 870820, 6, 2),
(216, 879753, 6, 2),
(217, 883936, 6, 2),
(218, 890290, 6, 2),
(219, 893212, 6, 2),
(220, 904898, 6, 2),
(221, 912990, 6, 2),
(222, 915638, 6, 2),
(223, 917395, 6, 2),
(224, 917937, 6, 2),
(225, 923947, 6, 2),
(226, 940761, 6, 2),
(227, 940922, 6, 2),
(228, 951225, 6, 2),
(229, 958326, 6, 2),
(230, 969580, 6, 2),
(231, 969964, 6, 2),
(232, 971640, 6, 2),
(233, 979607, 1, 2),
(234, 293459, 2, 2),
(235, 301576, 2, 2),
(236, 316110, 2, 2),
(237, 477253, 7, 2),
(238, 325319, 2, 2),
(239, 477616, 7, 2),
(240, 329752, 2, 2),
(241, 478003, 7, 2),
(242, 333476, 2, 2),
(243, 489424, 7, 2),
(244, 335732, 2, 2),
(245, 491943, 7, 2),
(246, 363065, 2, 2),
(247, 495141, 7, 2),
(248, 380086, 2, 2),
(249, 499687, 7, 2),
(250, 386158, 2, 2),
(251, 515103, 7, 2),
(252, 388642, 2, 2),
(253, 524896, 7, 2),
(254, 392491, 2, 2),
(255, 525955, 7, 2),
(256, 400173, 2, 2),
(257, 407061, 2, 2),
(258, 528509, 7, 2),
(259, 528673, 7, 2),
(260, 533952, 7, 2),
(261, 408351, 2, 2),
(262, 539712, 7, 2),
(263, 426038, 2, 2),
(264, 560455, 7, 2),
(265, 428945, 2, 2),
(266, 621833, 7, 2),
(267, 441771, 2, 2),
(268, 622406, 7, 2),
(269, 447813, 2, 2),
(270, 623253, 7, 2),
(271, 456747, 2, 2),
(272, 623929, 7, 2),
(273, 461593, 2, 2),
(274, 639892, 7, 2),
(275, 474599, 2, 2),
(276, 677509, 7, 2),
(277, 476433, 2, 2),
(278, 683826, 7, 2),
(279, 477253, 2, 2),
(280, 687017, 7, 2),
(281, 477616, 2, 2),
(282, 702813, 7, 2),
(283, 478003, 2, 2),
(284, 704709, 7, 2),
(285, 489424, 2, 2),
(286, 726264, 7, 2),
(287, 491943, 2, 2),
(288, 732017, 7, 2),
(289, 495141, 2, 2),
(290, 750173, 7, 2),
(291, 758872, 7, 2),
(292, 761821, 7, 2),
(293, 499687, 2, 2),
(294, 515103, 2, 2),
(295, 524896, 2, 2),
(296, 525955, 2, 2),
(297, 528509, 2, 2),
(298, 528673, 2, 2),
(299, 533952, 2, 2),
(300, 539712, 2, 2),
(301, 560455, 2, 3),
(302, 765850, 7, 3),
(303, 621833, 2, 3),
(304, 766610, 7, 3),
(305, 622406, 2, 3),
(306, 802554, 7, 3),
(307, 623253, 2, 3),
(308, 806955, 7, 3),
(309, 623929, 2, 3),
(310, 818384, 7, 3),
(311, 639892, 2, 3),
(312, 844177, 7, 3),
(313, 677509, 2, 3),
(314, 867084, 7, 3),
(315, 683826, 2, 3),
(316, 870820, 7, 3),
(317, 879753, 7, 3),
(318, 883936, 7, 3),
(319, 890290, 7, 3),
(320, 687017, 2, 3),
(321, 702813, 2, 3),
(322, 704709, 2, 3),
(323, 893212, 7, 3),
(324, 726264, 2, 3),
(325, 904898, 7, 3),
(326, 732017, 2, 3),
(327, 912990, 7, 3),
(328, 750173, 2, 3),
(329, 915638, 7, 3),
(330, 758872, 2, 3),
(331, 917395, 7, 3),
(332, 761821, 2, 3),
(333, 917937, 7, 3),
(334, 765850, 2, 3),
(335, 923947, 7, 3),
(336, 766610, 2, 3),
(337, 940761, 7, 3),
(338, 802554, 2, 3),
(339, 940922, 7, 3),
(340, 806955, 2, 3),
(341, 951225, 7, 3),
(342, 958326, 7, 3),
(343, 969580, 7, 3),
(344, 969964, 7, 3),
(345, 971640, 7, 3),
(346, 818384, 2, 3),
(347, 979607, 1, 3),
(348, 844177, 2, 3),
(349, 386158, 9, 3),
(350, 867084, 2, 3),
(351, 388642, 9, 3),
(352, 870820, 1, 3),
(353, 392491, 9, 3),
(354, 293459, 3, 3),
(355, 400173, 9, 3),
(356, 301576, 3, 3),
(357, 407061, 9, 3),
(358, 316110, 3, 3),
(359, 325319, 3, 3),
(360, 329752, 3, 3),
(361, 333476, 3, 3),
(362, 335732, 3, 3),
(363, 363065, 3, 3),
(364, 408351, 9, 3),
(365, 380086, 3, 3),
(366, 426038, 9, 3),
(367, 386158, 3, 3),
(368, 428945, 9, 3),
(369, 388642, 3, 3),
(370, 441771, 9, 3),
(371, 392491, 3, 3),
(372, 447813, 9, 3),
(373, 400173, 3, 3),
(374, 456747, 9, 3),
(375, 407061, 3, 3),
(376, 461593, 9, 3),
(377, 408351, 3, 3),
(378, 474599, 9, 3),
(379, 476433, 9, 3),
(380, 477253, 9, 3),
(381, 477616, 9, 3),
(382, 478003, 9, 3),
(383, 426038, 3, 3),
(384, 428945, 3, 3),
(385, 441771, 3, 3),
(386, 489424, 9, 3),
(387, 491943, 9, 3),
(388, 495141, 9, 3),
(389, 447813, 3, 3),
(390, 456747, 3, 3),
(391, 499687, 9, 3),
(392, 461593, 3, 3),
(393, 515103, 9, 3),
(394, 474599, 3, 3),
(395, 524896, 9, 3),
(396, 476433, 3, 3),
(397, 525955, 9, 3),
(398, 477253, 3, 3),
(399, 528509, 9, 3),
(400, 477616, 3, 3),
(401, 528673, 9, 3),
(402, 478003, 3, 3),
(403, 533952, 9, 3),
(404, 489424, 3, 3),
(405, 539712, 9, 3),
(406, 560455, 9, 3),
(407, 621833, 9, 3),
(408, 622406, 9, 3),
(409, 491943, 3, 3),
(410, 623253, 9, 3),
(411, 495141, 3, 3),
(412, 623929, 9, 3),
(413, 499687, 3, 3),
(414, 639892, 9, 3),
(415, 515103, 3, 3),
(416, 677509, 9, 3),
(417, 524896, 3, 3),
(418, 683826, 9, 3),
(419, 525955, 3, 3),
(420, 687017, 9, 3),
(421, 702813, 9, 3),
(422, 704709, 9, 3),
(423, 726264, 9, 3),
(424, 732017, 9, 3),
(425, 750173, 9, 3),
(426, 758872, 9, 3),
(427, 761821, 9, 3),
(428, 765850, 9, 3),
(429, 766610, 9, 3),
(430, 802554, 9, 3),
(431, 806955, 9, 3),
(432, 818384, 9, 3),
(433, 844177, 9, 3),
(434, 867084, 9, 3),
(435, 870820, 9, 3),
(436, 879753, 9, 3),
(437, 883936, 9, 3),
(438, 890290, 1, 3),
(439, 386158, 10, 3),
(440, 388642, 10, 3),
(441, 392491, 10, 3),
(442, 400173, 10, 3),
(443, 407061, 10, 3),
(444, 408351, 10, 3),
(445, 426038, 10, 3),
(446, 428945, 10, 3),
(447, 441771, 10, 3),
(448, 447813, 10, 3),
(449, 456747, 10, 3),
(450, 461593, 10, 3),
(451, 474599, 10, 3),
(452, 476433, 10, 3),
(453, 477253, 10, 3),
(454, 477616, 10, 3),
(455, 478003, 10, 3),
(456, 489424, 10, 3),
(457, 491943, 10, 3),
(458, 495141, 10, 3),
(459, 499687, 10, 3),
(460, 515103, 10, 3),
(461, 524896, 10, 3),
(462, 525955, 10, 3),
(463, 528509, 10, 3),
(464, 528673, 10, 3),
(465, 533952, 10, 3),
(466, 539712, 10, 3),
(467, 560455, 10, 3),
(468, 621833, 10, 3),
(469, 622406, 10, 3),
(470, 623253, 10, 3),
(471, 623929, 10, 3),
(472, 639892, 10, 3),
(473, 677509, 10, 3),
(474, 683826, 10, 3),
(475, 687017, 10, 3),
(476, 702813, 10, 3),
(477, 704709, 10, 3),
(478, 726264, 10, 3),
(479, 732017, 10, 3),
(480, 750173, 10, 3),
(481, 758872, 10, 3),
(482, 761821, 10, 3),
(483, 765850, 10, 3),
(484, 153989, 7, 3),
(485, 158666, 7, 3),
(486, 162402, 7, 3),
(487, 183071, 7, 3),
(488, 185032, 7, 3),
(489, 193819, 7, 3),
(490, 212893, 7, 3),
(491, 214352, 7, 3),
(492, 218791, 7, 3),
(493, 225925, 7, 3),
(494, 226714, 7, 3),
(495, 227922, 7, 3),
(496, 231469, 7, 3),
(497, 241882, 7, 3),
(498, 247137, 7, 3),
(499, 253573, 7, 3),
(500, 262382, 7, 3),
(501, 263480, 7, 3),
(502, 265813, 7, 3),
(503, 278556, 7, 3),
(504, 293459, 7, 3),
(505, 301576, 7, 3),
(506, 316110, 7, 3),
(507, 325319, 7, 3),
(508, 329752, 7, 3),
(509, 333476, 7, 3),
(510, 335732, 7, 3),
(511, 363065, 7, 3),
(512, 380086, 7, 3),
(513, 386158, 7, 3),
(514, 388642, 7, 3),
(515, 392491, 7, 3),
(516, 400173, 7, 3),
(517, 407061, 7, 3),
(518, 408351, 7, 3),
(519, 426038, 7, 3),
(520, 428945, 7, 3),
(521, 441771, 7, 3),
(522, 447813, 7, 3),
(523, 456747, 7, 3),
(524, 461593, 7, 3),
(525, 474599, 7, 3),
(526, 476433, 7, 3),
(527, 477253, 7, 3),
(528, 477616, 7, 3),
(529, 478003, 7, 3),
(530, 489424, 7, 3),
(531, 491943, 7, 3),
(532, 495141, 7, 3),
(533, 499687, 7, 3),
(534, 515103, 7, 3),
(535, 524896, 7, 3),
(536, 525955, 7, 3),
(537, 528509, 7, 3),
(538, 528673, 7, 3),
(539, 533952, 7, 3),
(540, 539712, 7, 3),
(541, 560455, 7, 3),
(542, 621833, 7, 3),
(543, 622406, 7, 3),
(544, 623253, 7, 3),
(545, 623929, 7, 3),
(546, 639892, 7, 3),
(547, 677509, 7, 3),
(548, 683826, 7, 3),
(549, 687017, 7, 3),
(550, 702813, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `skilleSets`
--

CREATE TABLE `skilleSets` (
  `id` int NOT NULL,
  `SkillName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `skilleSets`
--

INSERT INTO `skilleSets` (`id`, `SkillName`) VALUES
(1, 'PHP'),
(2, 'ASP.NET'),
(3, 'HTML'),
(4, 'CSS'),
(5, 'JAVA'),
(6, 'Salesforce'),
(7, 'NodeJs'),
(8, 'JavaScript'),
(9, 'ReactJs'),
(10, 'Angular');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int NOT NULL,
  `RoleName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Activate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `RoleName`, `status`) VALUES
(1, 'Admin', 'Activate'),
(2, 'Manager', 'Activate'),
(3, 'Staff', 'Activate');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `emp_skille_mapping`
--
ALTER TABLE `emp_skille_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skilleSets`
--
ALTER TABLE `skilleSets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmpID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=979608;

--
-- AUTO_INCREMENT for table `emp_skille_mapping`
--
ALTER TABLE `emp_skille_mapping`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;

--
-- AUTO_INCREMENT for table `skilleSets`
--
ALTER TABLE `skilleSets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
