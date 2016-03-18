-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.27-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for herran
CREATE DATABASE IF NOT EXISTS `herran` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `herran`;


-- Dumping structure for table herran.arealayoutcolumns
CREATE TABLE IF NOT EXISTS `arealayoutcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`),
  KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  KEY `arID` (`arID`),
  KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.arealayoutcolumns: ~0 rows (approximately)
DELETE FROM `arealayoutcolumns`;
/*!40000 ALTER TABLE `arealayoutcolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayoutcolumns` ENABLE KEYS */;


-- Dumping structure for table herran.arealayoutcustomcolumns
CREATE TABLE IF NOT EXISTS `arealayoutcustomcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.arealayoutcustomcolumns: ~0 rows (approximately)
DELETE FROM `arealayoutcustomcolumns`;
/*!40000 ALTER TABLE `arealayoutcustomcolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayoutcustomcolumns` ENABLE KEYS */;


-- Dumping structure for table herran.arealayoutpresets
CREATE TABLE IF NOT EXISTS `arealayoutpresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arLayoutPresetID`),
  KEY `arLayoutID` (`arLayoutID`),
  KEY `arLayoutPresetName` (`arLayoutPresetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.arealayoutpresets: ~0 rows (approximately)
DELETE FROM `arealayoutpresets`;
/*!40000 ALTER TABLE `arealayoutpresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayoutpresets` ENABLE KEYS */;


-- Dumping structure for table herran.arealayouts
CREATE TABLE IF NOT EXISTS `arealayouts` (
  `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.arealayouts: ~0 rows (approximately)
DELETE FROM `arealayouts`;
/*!40000 ALTER TABLE `arealayouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayouts` ENABLE KEYS */;


-- Dumping structure for table herran.arealayoutsusingpresets
CREATE TABLE IF NOT EXISTS `arealayoutsusingpresets` (
  `arLayoutID` int(10) unsigned NOT NULL,
  `preset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.arealayoutsusingpresets: ~0 rows (approximately)
DELETE FROM `arealayoutsusingpresets`;
/*!40000 ALTER TABLE `arealayoutsusingpresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayoutsusingpresets` ENABLE KEYS */;


-- Dumping structure for table herran.arealayoutthemegridcolumns
CREATE TABLE IF NOT EXISTS `arealayoutthemegridcolumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`arLayoutColumnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.arealayoutthemegridcolumns: ~0 rows (approximately)
DELETE FROM `arealayoutthemegridcolumns`;
/*!40000 ALTER TABLE `arealayoutthemegridcolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `arealayoutthemegridcolumns` ENABLE KEYS */;


-- Dumping structure for table herran.areapermissionassignments
CREATE TABLE IF NOT EXISTS `areapermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.areapermissionassignments: ~0 rows (approximately)
DELETE FROM `areapermissionassignments`;
/*!40000 ALTER TABLE `areapermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `areapermissionassignments` ENABLE KEYS */;


-- Dumping structure for table herran.areapermissionblocktypeaccesslist
CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.areapermissionblocktypeaccesslist: ~0 rows (approximately)
DELETE FROM `areapermissionblocktypeaccesslist`;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslist` ENABLE KEYS */;


-- Dumping structure for table herran.areapermissionblocktypeaccesslistcustom
CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.areapermissionblocktypeaccesslistcustom: ~0 rows (approximately)
DELETE FROM `areapermissionblocktypeaccesslistcustom`;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `areapermissionblocktypeaccesslistcustom` ENABLE KEYS */;


-- Dumping structure for table herran.areas
CREATE TABLE IF NOT EXISTS `areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`),
  KEY `arParentID` (`arParentID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.areas: ~38 rows (approximately)
DELETE FROM `areas`;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`, `arParentID`) VALUES
	(1, 126, 'Main', 0, 0, 0, 0),
	(2, 127, 'Primary', 0, 0, 0, 0),
	(3, 127, 'Secondary 1', 0, 0, 0, 0),
	(4, 127, 'Secondary 2', 0, 0, 0, 0),
	(5, 127, 'Secondary 3', 0, 0, 0, 0),
	(6, 127, 'Secondary 4', 0, 0, 0, 0),
	(7, 127, 'Secondary 5', 0, 0, 0, 0),
	(8, 144, 'Main', 0, 0, 0, 0),
	(9, 145, 'Main', 0, 0, 0, 0),
	(10, 1, 'Header Site Title', 0, 0, 1, 0),
	(11, 146, 'Main', 0, 0, 0, 0),
	(12, 1, 'Header Navigation', 0, 0, 1, 0),
	(13, 1, 'Main', 0, 0, 0, 0),
	(14, 1, 'Page Footer', 0, 0, 0, 0),
	(15, 147, 'Main', 0, 0, 0, 0),
	(16, 1, 'Footer Legal', 0, 0, 1, 0),
	(17, 148, 'Main', 0, 0, 0, 0),
	(18, 1, 'Footer Navigation', 0, 0, 1, 0),
	(19, 149, 'Main', 0, 0, 0, 0),
	(20, 1, 'Footer Contact', 0, 0, 1, 0),
	(21, 150, 'Main', 0, 0, 0, 0),
	(22, 1, 'Header Search', 0, 0, 1, 0),
	(23, 151, 'Main', 0, 0, 0, 0),
	(24, 1, 'Footer Site Title', 0, 0, 1, 0),
	(25, 152, 'Main', 0, 0, 0, 0),
	(26, 1, 'Footer Social', 0, 0, 1, 0),
	(27, 153, 'Main', 0, 0, 0, 0),
	(28, 1, 'Header Logo', 0, 0, 1, 0),
	(29, 154, 'Main', 0, 0, 0, 0),
	(30, 155, 'Main', 0, 0, 0, 0),
	(31, 156, 'Main', 0, 0, 0, 0),
	(32, 157, 'Main', 0, 0, 0, 0),
	(33, 158, 'Main', 0, 0, 0, 0),
	(34, 1, 'Header Menu', 0, 0, 1, 0),
	(35, 159, 'Main', 0, 0, 0, 0),
	(36, 160, 'Main', 0, 0, 0, 0),
	(37, 161, 'Main', 0, 0, 0, 0),
	(38, 162, 'Main', 0, 0, 0, 0),
	(39, 163, 'Main', 0, 0, 0, 0),
	(40, 1, 'Menu', 0, 0, 0, 0),
	(41, 1, 'Slider', 0, 0, 0, 0);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;


-- Dumping structure for table herran.ataddress
CREATE TABLE IF NOT EXISTS `ataddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.ataddress: ~0 rows (approximately)
DELETE FROM `ataddress`;
/*!40000 ALTER TABLE `ataddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `ataddress` ENABLE KEYS */;


-- Dumping structure for table herran.ataddresscustomcountries
CREATE TABLE IF NOT EXISTS `ataddresscustomcountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.ataddresscustomcountries: ~0 rows (approximately)
DELETE FROM `ataddresscustomcountries`;
/*!40000 ALTER TABLE `ataddresscustomcountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `ataddresscustomcountries` ENABLE KEYS */;


-- Dumping structure for table herran.ataddresssettings
CREATE TABLE IF NOT EXISTS `ataddresssettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` tinyint(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.ataddresssettings: ~0 rows (approximately)
DELETE FROM `ataddresssettings`;
/*!40000 ALTER TABLE `ataddresssettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ataddresssettings` ENABLE KEYS */;


-- Dumping structure for table herran.atboolean
CREATE TABLE IF NOT EXISTS `atboolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atboolean: ~19 rows (approximately)
DELETE FROM `atboolean`;
/*!40000 ALTER TABLE `atboolean` DISABLE KEYS */;
INSERT INTO `atboolean` (`avID`, `value`) VALUES
	(9, 1),
	(16, 1),
	(18, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(42, 1),
	(43, 1),
	(47, 1),
	(51, 1),
	(98, 1),
	(106, 1),
	(107, 1),
	(108, 1);
/*!40000 ALTER TABLE `atboolean` ENABLE KEYS */;


-- Dumping structure for table herran.atbooleansettings
CREATE TABLE IF NOT EXISTS `atbooleansettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atbooleansettings: ~7 rows (approximately)
DELETE FROM `atbooleansettings`;
/*!40000 ALTER TABLE `atbooleansettings` DISABLE KEYS */;
INSERT INTO `atbooleansettings` (`akID`, `akCheckedByDefault`) VALUES
	(5, 0),
	(6, 0),
	(9, 0),
	(10, 0),
	(11, 0),
	(12, 1),
	(13, 1);
/*!40000 ALTER TABLE `atbooleansettings` ENABLE KEYS */;


-- Dumping structure for table herran.atdatetime
CREATE TABLE IF NOT EXISTS `atdatetime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atdatetime: ~0 rows (approximately)
DELETE FROM `atdatetime`;
/*!40000 ALTER TABLE `atdatetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atdatetime` ENABLE KEYS */;


-- Dumping structure for table herran.atdatetimesettings
CREATE TABLE IF NOT EXISTS `atdatetimesettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atdatetimesettings: ~0 rows (approximately)
DELETE FROM `atdatetimesettings`;
/*!40000 ALTER TABLE `atdatetimesettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atdatetimesettings` ENABLE KEYS */;


-- Dumping structure for table herran.atdefault
CREATE TABLE IF NOT EXISTS `atdefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atdefault: ~93 rows (approximately)
DELETE FROM `atdefault`;
/*!40000 ALTER TABLE `atdefault` DISABLE KEYS */;
INSERT INTO `atdefault` (`avID`, `value`) VALUES
	(1, 'fa fa-th-large'),
	(2, 'pages, add page, delete page, copy, move, alias'),
	(3, 'pages, add page, delete page, copy, move, alias'),
	(4, 'pages, add page, delete page, copy, move, alias, bulk'),
	(5, 'find page, search page, search, find, pages, sitemap'),
	(6, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
	(7, 'file, file attributes, title, attribute, description, rename'),
	(8, 'files, category, categories'),
	(10, 'new file set'),
	(11, 'users, groups, people, find, delete user, remove user, change password, password'),
	(12, 'find, search, people, delete user, remove user, change password, password'),
	(13, 'user, group, people, permissions, expire, badges'),
	(14, 'user attributes, user data, gather data, registration data'),
	(15, 'new user, create'),
	(17, 'new user group, new group, group, create'),
	(19, 'group set'),
	(20, 'community, points, karma'),
	(21, 'action, community actions'),
	(22, 'forms, log, error, email, mysql, exception, survey'),
	(23, 'forms, questions, response, data'),
	(24, 'questions, quiz, response'),
	(25, 'forms, log, error, email, mysql, exception, survey, history'),
	(26, 'new theme, theme, active theme, change theme, template, css'),
	(27, 'page types'),
	(36, 'page attributes, custom'),
	(37, 'single, page, custom, application'),
	(38, 'atom, rss, feed, syndication'),
	(39, 'icon-bullhorn'),
	(40, 'add workflow, remove workflow'),
	(41, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
	(44, 'edit stacks, view stacks, all stacks'),
	(45, 'block, refresh, custom'),
	(46, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks'),
	(48, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
	(49, 'update, upgrade'),
	(50, 'concrete5.org, my account, marketplace'),
	(52, 'buy theme, new theme, marketplace, template'),
	(53, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
	(54, 'dashboard, configuration'),
	(55, 'website name, title'),
	(56, 'accessibility, easy mode'),
	(57, 'sharing, facebook, twitter'),
	(58, 'logo, favicon, iphone, icon, bookmark'),
	(59, 'tinymce, content block, fonts, editor, content, overlay'),
	(60, 'translate, translation, internationalization, multilingual'),
	(61, 'timezone, profile, locale'),
	(62, 'multilingual, localization, internationalization, i18n'),
	(63, 'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view'),
	(64, 'bulk, seo, change keywords, engine, optimization, search'),
	(65, 'traffic, statistics, google analytics, quant, pageviews, hits'),
	(66, 'pretty, slug'),
	(67, 'configure search, site search, search option'),
	(68, 'file options, file manager, upload, modify'),
	(69, 'security, files, media, extension, manager, upload'),
	(70, 'images, picture, responsive, retina'),
	(71, 'security, alternate storage, hide files'),
	(72, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
	(73, 'cache option, turn off cache, no cache, page cache, caching'),
	(74, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
	(75, 'queries, database, mysql'),
	(76, 'editors, hide site, offline, private, public, access'),
	(77, 'security, actions, administrator, admin, package, marketplace, search'),
	(78, 'security, lock ip, lock out, block ip, address, restrict, access'),
	(79, 'security, registration'),
	(80, 'antispam, block spam, security'),
	(81, 'lock site, under construction, hide, hidden'),
	(82, 'profile, login, redirect, specific, dashboard, administrators'),
	(83, 'member profile, member page, community, forums, social, avatar'),
	(84, 'signup, new user, community, public registration, public, registration'),
	(85, 'auth, authentication, types, oauth, facebook, login, registration'),
	(86, 'smtp, mail settings'),
	(87, 'email server, mail settings, mail configuration, external, internal'),
	(88, 'test smtp, test mail'),
	(89, 'email server, mail settings, mail configuration, private message, message system, import, email, message'),
	(90, 'conversations'),
	(91, 'conversations'),
	(92, 'conversations ratings, ratings, community, community points'),
	(93, 'conversations bad words, banned words, banned, bad words, bad, words, list'),
	(94, 'attribute configuration'),
	(95, 'attributes, sets'),
	(96, 'attributes, types'),
	(97, 'topics, tags, taxonomy'),
	(99, 'overrides, system info, debug, support, help'),
	(100, 'errors, exceptions, develop, support, help'),
	(101, 'email, logging, logs, smtp, pop, errors, mysql, log'),
	(102, 'network, proxy server'),
	(103, 'database, entities, doctrine, orm'),
	(104, 'export, backup, database, sql, mysql, encryption, restore'),
	(105, 'upgrade, new version, update'),
	(109, 'fa fa-edit'),
	(110, 'fa fa-trash-o'),
	(111, 'fa fa-th'),
	(112, 'fa fa-briefcase');
/*!40000 ALTER TABLE `atdefault` ENABLE KEYS */;


-- Dumping structure for table herran.atfile
CREATE TABLE IF NOT EXISTS `atfile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atfile: ~0 rows (approximately)
DELETE FROM `atfile`;
/*!40000 ALTER TABLE `atfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `atfile` ENABLE KEYS */;


-- Dumping structure for table herran.atnumber
CREATE TABLE IF NOT EXISTS `atnumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atnumber: ~18 rows (approximately)
DELETE FROM `atnumber`;
/*!40000 ALTER TABLE `atnumber` DISABLE KEYS */;
INSERT INTO `atnumber` (`avID`, `value`) VALUES
	(113, 221.0000),
	(114, 190.0000),
	(115, 141.0000),
	(116, 47.0000),
	(117, 141.0000),
	(118, 47.0000),
	(119, 141.0000),
	(120, 47.0000),
	(121, 141.0000),
	(122, 47.0000),
	(123, 142.0000),
	(124, 48.0000),
	(125, 760.0000),
	(126, 331.0000),
	(127, 900.0000),
	(128, 600.0000),
	(129, 900.0000),
	(130, 600.0000),
	(131, 900.0000),
	(132, 600.0000);
/*!40000 ALTER TABLE `atnumber` ENABLE KEYS */;


-- Dumping structure for table herran.atselectedtopics
CREATE TABLE IF NOT EXISTS `atselectedtopics` (
  `avID` int(10) unsigned NOT NULL,
  `TopicNodeID` int(11) NOT NULL,
  PRIMARY KEY (`avID`,`TopicNodeID`),
  KEY `TopicNodeID` (`TopicNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atselectedtopics: ~0 rows (approximately)
DELETE FROM `atselectedtopics`;
/*!40000 ALTER TABLE `atselectedtopics` DISABLE KEYS */;
/*!40000 ALTER TABLE `atselectedtopics` ENABLE KEYS */;


-- Dumping structure for table herran.atselectoptions
CREATE TABLE IF NOT EXISTS `atselectoptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `akID` (`akID`,`displayOrder`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atselectoptions: ~0 rows (approximately)
DELETE FROM `atselectoptions`;
/*!40000 ALTER TABLE `atselectoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `atselectoptions` ENABLE KEYS */;


-- Dumping structure for table herran.atselectoptionsselected
CREATE TABLE IF NOT EXISTS `atselectoptionsselected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`),
  KEY `atSelectOptionID` (`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atselectoptionsselected: ~0 rows (approximately)
DELETE FROM `atselectoptionsselected`;
/*!40000 ALTER TABLE `atselectoptionsselected` DISABLE KEYS */;
/*!40000 ALTER TABLE `atselectoptionsselected` ENABLE KEYS */;


-- Dumping structure for table herran.atselectsettings
CREATE TABLE IF NOT EXISTS `atselectsettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atselectsettings: ~0 rows (approximately)
DELETE FROM `atselectsettings`;
/*!40000 ALTER TABLE `atselectsettings` DISABLE KEYS */;
INSERT INTO `atselectsettings` (`akID`, `akSelectAllowMultipleValues`, `akSelectOptionDisplayOrder`, `akSelectAllowOtherValues`) VALUES
	(8, 1, 'display_asc', 1);
/*!40000 ALTER TABLE `atselectsettings` ENABLE KEYS */;


-- Dumping structure for table herran.atsociallinks
CREATE TABLE IF NOT EXISTS `atsociallinks` (
  `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`avsID`),
  KEY `avID` (`avID`,`avsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.atsociallinks: ~0 rows (approximately)
DELETE FROM `atsociallinks`;
/*!40000 ALTER TABLE `atsociallinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `atsociallinks` ENABLE KEYS */;


-- Dumping structure for table herran.attextareasettings
CREATE TABLE IF NOT EXISTS `attextareasettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akTextareaDisplayModeCustomOptions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.attextareasettings: ~4 rows (approximately)
DELETE FROM `attextareasettings`;
/*!40000 ALTER TABLE `attextareasettings` DISABLE KEYS */;
INSERT INTO `attextareasettings` (`akID`, `akTextareaDisplayMode`, `akTextareaDisplayModeCustomOptions`) VALUES
	(2, '', ''),
	(3, '', ''),
	(4, '', ''),
	(7, '', '');
/*!40000 ALTER TABLE `attextareasettings` ENABLE KEYS */;


-- Dumping structure for table herran.attopicsettings
CREATE TABLE IF NOT EXISTS `attopicsettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTopicParentNodeID` int(11) DEFAULT NULL,
  `akTopicTreeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`akID`),
  KEY `akTopicTreeID` (`akTopicTreeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.attopicsettings: ~0 rows (approximately)
DELETE FROM `attopicsettings`;
/*!40000 ALTER TABLE `attopicsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `attopicsettings` ENABLE KEYS */;


-- Dumping structure for table herran.attributekeycategories
CREATE TABLE IF NOT EXISTS `attributekeycategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` smallint(6) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`),
  KEY `akCategoryHandle` (`akCategoryHandle`),
  KEY `pkgID` (`pkgID`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.attributekeycategories: ~3 rows (approximately)
DELETE FROM `attributekeycategories`;
/*!40000 ALTER TABLE `attributekeycategories` DISABLE KEYS */;
INSERT INTO `attributekeycategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
	(1, 'collection', 1, NULL),
	(2, 'user', 1, NULL),
	(3, 'file', 1, NULL);
/*!40000 ALTER TABLE `attributekeycategories` ENABLE KEYS */;


-- Dumping structure for table herran.attributekeys
CREATE TABLE IF NOT EXISTS `attributekeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`),
  KEY `atID` (`atID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.attributekeys: ~17 rows (approximately)
DELETE FROM `attributekeys`;
/*!40000 ALTER TABLE `attributekeys` DISABLE KEYS */;
INSERT INTO `attributekeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
	(1, 'meta_title', 'Meta Title', 1, 1, 1, 0, 0, 1, 1, 1, 0),
	(2, 'meta_description', 'Meta Description', 1, 1, 1, 0, 0, 1, 2, 1, 0),
	(3, 'meta_keywords', 'Meta Keywords', 1, 1, 1, 0, 0, 1, 2, 1, 0),
	(4, 'icon_dashboard', 'Dashboard Icon', 0, 0, 1, 1, 0, 1, 2, 1, 0),
	(5, 'exclude_nav', 'Exclude From Nav', 1, 1, 1, 0, 0, 1, 3, 1, 0),
	(6, 'exclude_page_list', 'Exclude From Page List', 1, 1, 1, 0, 0, 1, 3, 1, 0),
	(7, 'header_extra_content', 'Header Extra Content', 1, 1, 1, 0, 0, 1, 2, 1, 0),
	(8, 'tags', 'Tags', 1, 1, 1, 0, 0, 1, 8, 1, 0),
	(9, 'is_featured', 'Is Featured', 1, 0, 1, 0, 0, 1, 3, 1, 0),
	(10, 'exclude_search_index', 'Exclude From Search Index', 1, 1, 1, 0, 0, 1, 3, 1, 0),
	(11, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 1, 1, 0, 0, 1, 3, 1, 0),
	(12, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 0, 0, 0, 0, 1, 3, 2, 0),
	(13, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 0, 0, 0, 0, 1, 3, 2, 0),
	(14, 'width', 'Width', 1, 1, 1, 0, 0, 1, 6, 3, 0),
	(15, 'height', 'Height', 1, 1, 1, 0, 0, 1, 6, 3, 0),
	(16, 'account_profile_links', 'Personal Links', 0, 0, 0, 0, 0, 1, 11, 2, 0),
	(17, 'duration', 'Duration', 1, 1, 1, 0, 0, 1, 6, 3, 0);
/*!40000 ALTER TABLE `attributekeys` ENABLE KEYS */;


-- Dumping structure for table herran.attributesetkeys
CREATE TABLE IF NOT EXISTS `attributesetkeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`),
  KEY `asID` (`asID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.attributesetkeys: ~9 rows (approximately)
DELETE FROM `attributesetkeys`;
/*!40000 ALTER TABLE `attributesetkeys` DISABLE KEYS */;
INSERT INTO `attributesetkeys` (`akID`, `asID`, `displayOrder`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(7, 1, 3),
	(11, 1, 4),
	(9, 2, 1),
	(5, 2, 2),
	(6, 2, 3),
	(10, 2, 4),
	(8, 2, 5);
/*!40000 ALTER TABLE `attributesetkeys` ENABLE KEYS */;


-- Dumping structure for table herran.attributesets
CREATE TABLE IF NOT EXISTS `attributesets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` tinyint(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `asHandle` (`asHandle`),
  KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`),
  KEY `pkgID` (`pkgID`,`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.attributesets: ~2 rows (approximately)
DELETE FROM `attributesets`;
/*!40000 ALTER TABLE `attributesets` DISABLE KEYS */;
INSERT INTO `attributesets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
	(1, 'SEO', 'seo', 1, 0, 0, 0),
	(2, 'Navigation and Indexing', 'navigation', 1, 0, 0, 1);
/*!40000 ALTER TABLE `attributesets` ENABLE KEYS */;


-- Dumping structure for table herran.attributetypecategories
CREATE TABLE IF NOT EXISTS `attributetypecategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`),
  KEY `akCategoryID` (`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.attributetypecategories: ~26 rows (approximately)
DELETE FROM `attributetypecategories`;
/*!40000 ALTER TABLE `attributetypecategories` DISABLE KEYS */;
INSERT INTO `attributetypecategories` (`atID`, `akCategoryID`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(10, 1),
	(1, 2),
	(2, 2),
	(3, 2),
	(4, 2),
	(6, 2),
	(8, 2),
	(9, 2),
	(10, 2),
	(11, 2),
	(1, 3),
	(2, 3),
	(3, 3),
	(4, 3),
	(6, 3),
	(7, 3),
	(8, 3),
	(10, 3);
/*!40000 ALTER TABLE `attributetypecategories` ENABLE KEYS */;


-- Dumping structure for table herran.attributetypes
CREATE TABLE IF NOT EXISTS `attributetypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`),
  UNIQUE KEY `atHandle` (`atHandle`),
  KEY `pkgID` (`pkgID`,`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.attributetypes: ~11 rows (approximately)
DELETE FROM `attributetypes`;
/*!40000 ALTER TABLE `attributetypes` DISABLE KEYS */;
INSERT INTO `attributetypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
	(1, 'text', 'Text', 0),
	(2, 'textarea', 'Text Area', 0),
	(3, 'boolean', 'Checkbox', 0),
	(4, 'date_time', 'Date/Time', 0),
	(5, 'image_file', 'Image/File', 0),
	(6, 'number', 'Number', 0),
	(7, 'rating', 'Rating', 0),
	(8, 'select', 'Select', 0),
	(9, 'address', 'Address', 0),
	(10, 'topics', 'Topics', 0),
	(11, 'social_links', 'Social Links', 0);
/*!40000 ALTER TABLE `attributetypes` ENABLE KEYS */;


-- Dumping structure for table herran.attributevalues
CREATE TABLE IF NOT EXISTS `attributevalues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`),
  KEY `akID` (`akID`),
  KEY `uID` (`uID`),
  KEY `atID` (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.attributevalues: ~112 rows (approximately)
DELETE FROM `attributevalues`;
/*!40000 ALTER TABLE `attributevalues` DISABLE KEYS */;
INSERT INTO `attributevalues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
	(1, 4, '2016-01-14 08:12:04', 1, 2),
	(2, 3, '2016-01-14 08:12:04', 1, 2),
	(3, 3, '2016-01-14 08:12:05', 1, 2),
	(4, 3, '2016-01-14 08:12:05', 1, 2),
	(5, 3, '2016-01-14 08:12:05', 1, 2),
	(6, 3, '2016-01-14 08:12:05', 1, 2),
	(7, 3, '2016-01-14 08:12:05', 1, 2),
	(8, 3, '2016-01-14 08:12:05', 1, 2),
	(9, 5, '2016-01-14 08:12:05', 1, 3),
	(10, 3, '2016-01-14 08:12:05', 1, 2),
	(11, 3, '2016-01-14 08:12:05', 1, 2),
	(12, 3, '2016-01-14 08:12:06', 1, 2),
	(13, 3, '2016-01-14 08:12:06', 1, 2),
	(14, 3, '2016-01-14 08:12:06', 1, 2),
	(15, 3, '2016-01-14 08:12:06', 1, 2),
	(16, 5, '2016-01-14 08:12:06', 1, 3),
	(17, 3, '2016-01-14 08:12:06', 1, 2),
	(18, 5, '2016-01-14 08:12:06', 1, 3),
	(19, 3, '2016-01-14 08:12:06', 1, 2),
	(20, 3, '2016-01-14 08:12:06', 1, 2),
	(21, 3, '2016-01-14 08:12:07', 1, 2),
	(22, 3, '2016-01-14 08:12:07', 1, 2),
	(23, 3, '2016-01-14 08:12:07', 1, 2),
	(24, 3, '2016-01-14 08:12:07', 1, 2),
	(25, 3, '2016-01-14 08:12:07', 1, 2),
	(26, 3, '2016-01-14 08:12:07', 1, 2),
	(27, 3, '2016-01-14 08:12:07', 1, 2),
	(28, 5, '2016-01-14 08:12:07', 1, 3),
	(29, 5, '2016-01-14 08:12:07', 1, 3),
	(30, 5, '2016-01-14 08:12:07', 1, 3),
	(31, 5, '2016-01-14 08:12:07', 1, 3),
	(32, 5, '2016-01-14 08:12:08', 1, 3),
	(33, 5, '2016-01-14 08:12:08', 1, 3),
	(34, 5, '2016-01-14 08:12:08', 1, 3),
	(35, 5, '2016-01-14 08:12:08', 1, 3),
	(36, 3, '2016-01-14 08:12:08', 1, 2),
	(37, 3, '2016-01-14 08:12:08', 1, 2),
	(38, 3, '2016-01-14 08:12:09', 1, 2),
	(39, 4, '2016-01-14 08:12:09', 1, 2),
	(40, 3, '2016-01-14 08:12:09', 1, 2),
	(41, 3, '2016-01-14 08:12:09', 1, 2),
	(42, 5, '2016-01-14 08:12:09', 1, 3),
	(43, 10, '2016-01-14 08:12:09', 1, 3),
	(44, 3, '2016-01-14 08:12:10', 1, 2),
	(45, 3, '2016-01-14 08:12:10', 1, 2),
	(46, 3, '2016-01-14 08:12:10', 1, 2),
	(47, 5, '2016-01-14 08:12:10', 1, 3),
	(48, 3, '2016-01-14 08:12:10', 1, 2),
	(49, 3, '2016-01-14 08:12:10', 1, 2),
	(50, 3, '2016-01-14 08:12:10', 1, 2),
	(51, 5, '2016-01-14 08:12:10', 1, 3),
	(52, 3, '2016-01-14 08:12:10', 1, 2),
	(53, 3, '2016-01-14 08:12:10', 1, 2),
	(54, 3, '2016-01-14 08:12:11', 1, 2),
	(55, 3, '2016-01-14 08:12:11', 1, 2),
	(56, 3, '2016-01-14 08:12:11', 1, 2),
	(57, 3, '2016-01-14 08:12:11', 1, 2),
	(58, 3, '2016-01-14 08:12:11', 1, 2),
	(59, 3, '2016-01-14 08:12:11', 1, 2),
	(60, 3, '2016-01-14 08:12:11', 1, 2),
	(61, 3, '2016-01-14 08:12:11', 1, 2),
	(62, 3, '2016-01-14 08:12:11', 1, 2),
	(63, 3, '2016-01-14 08:12:12', 1, 2),
	(64, 3, '2016-01-14 08:12:12', 1, 2),
	(65, 3, '2016-01-14 08:12:12', 1, 2),
	(66, 3, '2016-01-14 08:12:12', 1, 2),
	(67, 3, '2016-01-14 08:12:12', 1, 2),
	(68, 3, '2016-01-14 08:12:12', 1, 2),
	(69, 3, '2016-01-14 08:12:12', 1, 2),
	(70, 3, '2016-01-14 08:12:12', 1, 2),
	(71, 3, '2016-01-14 08:12:12', 1, 2),
	(72, 3, '2016-01-14 08:12:12', 1, 2),
	(73, 3, '2016-01-14 08:12:12', 1, 2),
	(74, 3, '2016-01-14 08:12:13', 1, 2),
	(75, 3, '2016-01-14 08:12:13', 1, 2),
	(76, 3, '2016-01-14 08:12:13', 1, 2),
	(77, 3, '2016-01-14 08:12:13', 1, 2),
	(78, 3, '2016-01-14 08:12:13', 1, 2),
	(79, 3, '2016-01-14 08:12:13', 1, 2),
	(80, 3, '2016-01-14 08:12:13', 1, 2),
	(81, 3, '2016-01-14 08:12:13', 1, 2),
	(82, 3, '2016-01-14 08:12:13', 1, 2),
	(83, 3, '2016-01-14 08:12:13', 1, 2),
	(84, 3, '2016-01-14 08:12:14', 1, 2),
	(85, 3, '2016-01-14 08:12:14', 1, 2),
	(86, 3, '2016-01-14 08:12:14', 1, 2),
	(87, 3, '2016-01-14 08:12:14', 1, 2),
	(88, 3, '2016-01-14 08:12:14', 1, 2),
	(89, 3, '2016-01-14 08:12:14', 1, 2),
	(90, 3, '2016-01-14 08:12:14', 1, 2),
	(91, 3, '2016-01-14 08:12:14', 1, 2),
	(92, 3, '2016-01-14 08:12:14', 1, 2),
	(93, 3, '2016-01-14 08:12:14', 1, 2),
	(94, 3, '2016-01-14 08:12:14', 1, 2),
	(95, 3, '2016-01-14 08:12:14', 1, 2),
	(96, 3, '2016-01-14 08:12:15', 1, 2),
	(97, 3, '2016-01-14 08:12:15', 1, 2),
	(98, 10, '2016-01-14 08:12:15', 1, 3),
	(99, 3, '2016-01-14 08:12:15', 1, 2),
	(100, 3, '2016-01-14 08:12:15', 1, 2),
	(101, 3, '2016-01-14 08:12:15', 1, 2),
	(102, 3, '2016-01-14 08:12:15', 1, 2),
	(103, 3, '2016-01-14 08:12:15', 1, 2),
	(104, 3, '2016-01-14 08:12:15', 1, 2),
	(105, 3, '2016-01-14 08:12:15', 1, 2),
	(106, 5, '2016-01-14 08:12:16', 1, 3),
	(107, 5, '2016-01-14 08:12:17', 1, 3),
	(108, 10, '2016-01-14 08:12:18', 1, 3),
	(109, 4, '2016-01-14 08:12:22', 1, 2),
	(110, 4, '2016-01-14 08:12:22', 1, 2),
	(111, 4, '2016-01-14 08:12:22', 1, 2),
	(112, 4, '2016-01-14 08:12:22', 1, 2),
	(113, 14, '2016-02-05 13:00:38', 1, 6),
	(114, 15, '2016-02-05 13:00:39', 1, 6),
	(115, 14, '2016-02-10 12:22:57', 1, 6),
	(116, 15, '2016-02-10 12:22:57', 1, 6),
	(117, 14, '2016-02-10 13:15:09', 1, 6),
	(118, 15, '2016-02-10 13:15:09', 1, 6),
	(119, 14, '2016-02-10 13:16:50', 1, 6),
	(120, 15, '2016-02-10 13:16:51', 1, 6),
	(121, 14, '2016-02-10 13:17:57', 1, 6),
	(122, 15, '2016-02-10 13:17:57', 1, 6),
	(123, 14, '2016-02-10 13:18:19', 1, 6),
	(124, 15, '2016-02-10 13:18:19', 1, 6),
	(125, 14, '2016-02-23 15:39:11', 1, 6),
	(126, 15, '2016-02-23 15:39:12', 1, 6),
	(127, 14, '2016-02-23 15:39:57', 1, 6),
	(128, 15, '2016-02-23 15:39:58', 1, 6),
	(129, 14, '2016-02-23 15:40:29', 1, 6),
	(130, 15, '2016-02-23 15:40:29', 1, 6),
	(131, 14, '2016-02-23 15:40:50', 1, 6),
	(132, 15, '2016-02-23 15:40:51', 1, 6);
/*!40000 ALTER TABLE `attributevalues` ENABLE KEYS */;


-- Dumping structure for table herran.authenticationtypes
CREATE TABLE IF NOT EXISTS `authenticationtypes` (
  `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`authTypeID`),
  UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.authenticationtypes: ~5 rows (approximately)
DELETE FROM `authenticationtypes`;
/*!40000 ALTER TABLE `authenticationtypes` DISABLE KEYS */;
INSERT INTO `authenticationtypes` (`authTypeID`, `authTypeHandle`, `authTypeName`, `authTypeIsEnabled`, `authTypeDisplayOrder`, `pkgID`) VALUES
	(1, 'concrete', 'Standard', 1, 0, 0),
	(2, 'community', 'concrete5.org', 0, 0, 0),
	(3, 'facebook', 'Facebook', 0, 0, 0),
	(4, 'twitter', 'Twitter', 0, 0, 0),
	(5, 'google', 'Google', 0, 0, 0);
/*!40000 ALTER TABLE `authenticationtypes` ENABLE KEYS */;


-- Dumping structure for table herran.authtypeconcretecookiemap
CREATE TABLE IF NOT EXISTS `authtypeconcretecookiemap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `token` (`token`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.authtypeconcretecookiemap: ~0 rows (approximately)
DELETE FROM `authtypeconcretecookiemap`;
/*!40000 ALTER TABLE `authtypeconcretecookiemap` DISABLE KEYS */;
INSERT INTO `authtypeconcretecookiemap` (`ID`, `token`, `uID`, `validThrough`) VALUES
	(1, '4f64f53f7ed6ded4c17acedfe0374e08', 1, 1458113672),
	(2, 'eee84bbe85240c194375c82bb184c960', 1, 1458113672),
	(3, '05dd495f445a8f2adca5345837c85eb2', 1, 1458113672);
/*!40000 ALTER TABLE `authtypeconcretecookiemap` ENABLE KEYS */;


-- Dumping structure for table herran.bannedwords
CREATE TABLE IF NOT EXISTS `bannedwords` (
  `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bwID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.bannedwords: ~4 rows (approximately)
DELETE FROM `bannedwords`;
/*!40000 ALTER TABLE `bannedwords` DISABLE KEYS */;
INSERT INTO `bannedwords` (`bwID`, `bannedWord`) VALUES
	(1, 'fuck'),
	(2, 'shit'),
	(3, 'bitch'),
	(4, 'ass');
/*!40000 ALTER TABLE `bannedwords` ENABLE KEYS */;


-- Dumping structure for table herran.basicworkflowpermissionassignments
CREATE TABLE IF NOT EXISTS `basicworkflowpermissionassignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.basicworkflowpermissionassignments: ~0 rows (approximately)
DELETE FROM `basicworkflowpermissionassignments`;
/*!40000 ALTER TABLE `basicworkflowpermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `basicworkflowpermissionassignments` ENABLE KEYS */;


-- Dumping structure for table herran.basicworkflowprogressdata
CREATE TABLE IF NOT EXISTS `basicworkflowprogressdata` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`),
  KEY `uIDStarted` (`uIDStarted`),
  KEY `uIDCompleted` (`uIDCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.basicworkflowprogressdata: ~0 rows (approximately)
DELETE FROM `basicworkflowprogressdata`;
/*!40000 ALTER TABLE `basicworkflowprogressdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `basicworkflowprogressdata` ENABLE KEYS */;


-- Dumping structure for table herran.blockfeatureassignments
CREATE TABLE IF NOT EXISTS `blockfeatureassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  KEY `faID` (`faID`,`cID`,`cvID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.blockfeatureassignments: ~5 rows (approximately)
DELETE FROM `blockfeatureassignments`;
/*!40000 ALTER TABLE `blockfeatureassignments` DISABLE KEYS */;
INSERT INTO `blockfeatureassignments` (`cID`, `cvID`, `bID`, `faID`) VALUES
	(153, 2, 10, 1),
	(153, 3, 10, 1),
	(153, 4, 10, 1),
	(153, 5, 10, 1),
	(153, 6, 10, 1);
/*!40000 ALTER TABLE `blockfeatureassignments` ENABLE KEYS */;


-- Dumping structure for table herran.blockpermissionassignments
CREATE TABLE IF NOT EXISTS `blockpermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  KEY `bID` (`bID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.blockpermissionassignments: ~0 rows (approximately)
DELETE FROM `blockpermissionassignments`;
/*!40000 ALTER TABLE `blockpermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blockpermissionassignments` ENABLE KEYS */;


-- Dumping structure for table herran.blockrelations
CREATE TABLE IF NOT EXISTS `blockrelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`brID`),
  KEY `bID` (`bID`),
  KEY `originalBID` (`originalBID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.blockrelations: ~5 rows (approximately)
DELETE FROM `blockrelations`;
/*!40000 ALTER TABLE `blockrelations` DISABLE KEYS */;
INSERT INTO `blockrelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
	(1, 31, 30, 'DUPLICATE'),
	(2, 50, 49, 'DUPLICATE'),
	(3, 51, 50, 'DUPLICATE'),
	(4, 52, 51, 'DUPLICATE'),
	(5, 53, 52, 'DUPLICATE');
/*!40000 ALTER TABLE `blockrelations` ENABLE KEYS */;


-- Dumping structure for table herran.blocks
CREATE TABLE IF NOT EXISTS `blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`),
  KEY `btID` (`btID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.blocks: ~43 rows (approximately)
DELETE FROM `blocks`;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
	(1, '', '2016-01-14 08:12:15', '2016-01-14 08:12:15', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjEiO3M6OToiACoAX3RhYmxlIjtzOjE0OiJidENvbnRlbnRMb2NhbCI7czo3OiJjb250ZW50IjtzOjIwNzoiPGRpdiBzdHlsZT0icGFkZGluZzogNDBweDsgdGV4dC1hbGlnbjogY2VudGVyIj4gPGlmcmFtZSB3aWR0aD0iODUzIiBoZWlnaHQ9IjQ4MCIgc3JjPSIvL3d3dy55b3V0dWJlLmNvbS9lbWJlZC9WQi1SNzF6azA2VSIgZnJhbWVib3JkZXI9IjAiIGFsbG93ZnVsbHNjcmVlbj48L2lmcmFtZT4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9kaXY+Ijt9'),
	(2, '', '2016-01-14 08:12:16', '2016-01-14 08:12:16', NULL, '0', 9, 1, NULL),
	(3, '', '2016-01-14 08:12:16', '2016-01-14 08:12:16', NULL, '0', 10, 1, NULL),
	(4, '', '2016-01-14 08:12:17', '2016-01-14 08:12:17', NULL, '0', 8, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjQiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQSI7fQ=='),
	(5, '', '2016-01-14 08:12:17', '2016-01-14 08:12:17', NULL, '0', 8, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjUiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQiI7fQ=='),
	(6, '', '2016-01-14 08:12:17', '2016-01-14 08:12:17', NULL, '0', 7, 1, NULL),
	(7, '', '2016-01-14 08:12:17', '2016-01-14 08:12:17', NULL, '0', 6, 1, NULL),
	(8, '', '2016-01-14 08:12:17', '2016-01-14 08:12:17', NULL, '0', 8, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjgiO3M6OToiACoAX3RhYmxlIjtzOjI1OiJidERhc2hib2FyZE5ld3NmbG93TGF0ZXN0IjtzOjQ6InNsb3QiO3M6MToiQyI7fQ=='),
	(9, '', '2016-01-14 08:12:26', '2016-01-14 08:12:26', NULL, '0', 2, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjkiO3M6OToiACoAX3RhYmxlIjtzOjM1OiJidENvcmVQYWdlVHlwZUNvbXBvc2VyQ29udHJvbE91dHB1dCI7czoyNToicHRDb21wb3Nlck91dHB1dENvbnRyb2xJRCI7czoxOiIxIjt9'),
	(10, '', '2016-02-05 13:01:07', '2016-02-05 13:01:07', NULL, '0', 27, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiIxMCI7czo5OiIAKgBfdGFibGUiO3M6MTQ6ImJ0Q29udGVudEltYWdlIjtzOjM6ImZJRCI7czoxOiIyIjtzOjEwOiJmT25zdGF0ZUlEIjtzOjE6IjAiO3M6ODoibWF4V2lkdGgiO2k6MDtzOjk6Im1heEhlaWdodCI7aTowO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7aTowO3M6NzoiYWx0VGV4dCI7czowOiIiO3M6NToidGl0bGUiO3M6MDoiIjt9'),
	(12, '', '2016-02-05 13:05:07', '2016-02-05 13:05:07', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjEyIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czowOiIiO30='),
	(14, '', '2016-02-05 13:05:31', '2016-02-05 13:05:31', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE0IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czowOiIiO30='),
	(16, '', '2016-02-05 13:05:54', '2016-02-05 13:05:54', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czowOiIiO30='),
	(18, '', '2016-02-05 13:06:10', '2016-02-05 13:06:10', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE4IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czowOiIiO30='),
	(19, '', '2016-02-05 13:09:01', '2016-02-05 13:09:01', NULL, '0', 11, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiIxOSI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtpOjA7czoyMzoiZGlzcGxheVBhZ2VzSW5jbHVkZVNlbGYiO2k6MDtzOjE1OiJkaXNwbGF5U3ViUGFnZXMiO3M6NDoibm9uZSI7czoyMDoiZGlzcGxheVN1YlBhZ2VMZXZlbHMiO3M6NjoiY3VzdG9tIjtzOjIzOiJkaXNwbGF5U3ViUGFnZUxldmVsc051bSI7czoxOiIxIjtzOjIzOiJkaXNwbGF5VW5hdmFpbGFibGVQYWdlcyI7aTowO30='),
	(21, '', '2016-02-05 13:51:10', '2016-02-05 13:51:10', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIxIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czowOiIiO30='),
	(23, '', '2016-02-05 13:51:23', '2016-02-05 13:51:23', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIzIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czowOiIiO30='),
	(25, '', '2016-02-05 13:51:40', '2016-02-05 13:51:40', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czowOiIiO30='),
	(27, '', '2016-02-05 13:51:59', '2016-02-05 13:51:59', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czowOiIiO30='),
	(29, '', '2016-02-05 13:52:11', '2016-02-05 13:52:11', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjI5IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czowOiIiO30='),
	(30, '', '2016-02-05 13:53:36', '2016-02-05 13:53:36', NULL, '0', 11, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiIzMCI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtpOjA7czoyMzoiZGlzcGxheVBhZ2VzSW5jbHVkZVNlbGYiO2k6MDtzOjE1OiJkaXNwbGF5U3ViUGFnZXMiO3M6NDoibm9uZSI7czoyMDoiZGlzcGxheVN1YlBhZ2VMZXZlbHMiO3M6NjoiZW5vdWdoIjtzOjIzOiJkaXNwbGF5U3ViUGFnZUxldmVsc051bSI7aTowO3M6MjM6ImRpc3BsYXlVbmF2YWlsYWJsZVBhZ2VzIjtpOjA7fQ=='),
	(31, '', '2016-02-05 13:54:10', '2016-02-05 13:54:10', NULL, '1', 11, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiIzMSI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtpOjA7czoyMzoiZGlzcGxheVBhZ2VzSW5jbHVkZVNlbGYiO2k6MDtzOjE1OiJkaXNwbGF5U3ViUGFnZXMiO3M6MzoiYWxsIjtzOjIwOiJkaXNwbGF5U3ViUGFnZUxldmVscyI7czozOiJhbGwiO3M6MjM6ImRpc3BsYXlTdWJQYWdlTGV2ZWxzTnVtIjtpOjA7czoyMzoiZGlzcGxheVVuYXZhaWxhYmxlUGFnZXMiO2k6MDt9'),
	(38, '', '2016-02-10 13:20:36', '2016-02-10 13:20:36', NULL, '1', 40, 1, NULL),
	(39, '', '2016-02-10 14:30:45', '2016-02-10 14:30:45', NULL, '1', 40, 1, NULL),
	(40, '', '2016-02-10 14:30:56', '2016-02-10 14:30:56', NULL, '1', 40, 1, NULL),
	(41, '', '2016-02-22 13:31:09', '2016-02-22 13:31:09', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtzOjI6IjQxIjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51Ijt9'),
	(42, '', '2016-02-22 13:32:40', '2016-02-22 13:32:40', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtzOjI6IjQyIjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51Ijt9'),
	(43, '', '2016-02-22 13:32:57', '2016-02-22 13:32:57', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjQzIjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51IjtzOjM6ImZJRCI7czoxOiI2IjtzOjExOiJtZW51TGlua0NJRCI7czozOiIxNTYiO3M6MTA6Imhhc1N1Yk1lbnUiO3M6MToiMSI7fQ=='),
	(44, '', '2016-02-22 13:36:27', '2016-02-22 13:36:27', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtzOjI6IjQ0IjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51Ijt9'),
	(46, '', '2016-02-22 14:13:58', '2016-02-22 14:13:58', NULL, '1', 45, 1, NULL),
	(47, '', '2016-02-22 14:14:17', '2016-02-22 14:14:17', NULL, '1', 45, 1, NULL),
	(48, '', '2016-02-22 14:21:41', '2016-02-22 14:21:41', NULL, '0', 47, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtzOjI6IjQ4IjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51Ijt9'),
	(49, '', '2016-02-22 14:30:11', '2016-02-22 14:30:11', NULL, '0', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjQ5IjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51IjtzOjM6ImZJRCI7czoxOiI2IjtzOjExOiJtZW51TGlua0NJRCI7czozOiIxNTYiO3M6MTA6Imhhc1N1Yk1lbnUiO3M6MToiMSI7fQ=='),
	(50, '', '2016-02-22 14:30:50', '2016-02-22 14:30:50', NULL, '1', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjUwIjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51IjtzOjM6ImZJRCI7czoxOiI2IjtzOjExOiJtZW51TGlua0NJRCI7czozOiIxNTYiO3M6MTA6Imhhc1N1Yk1lbnUiO3M6MToiMSI7fQ=='),
	(51, '', '2016-02-22 14:30:58', '2016-02-22 14:30:58', NULL, '1', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjUxIjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51IjtzOjM6ImZJRCI7czoxOiI2IjtzOjExOiJtZW51TGlua0NJRCI7czozOiIxNTYiO30='),
	(52, '', '2016-02-22 14:34:01', '2016-02-22 14:34:01', NULL, '1', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjUyIjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51IjtzOjM6ImZJRCI7czoxOiI2IjtzOjExOiJtZW51TGlua0NJRCI7czozOiIxNTYiO3M6MTA6Imhhc1N1Yk1lbnUiO3M6MToiMSI7fQ=='),
	(53, '', '2016-02-22 14:34:15', '2016-02-22 14:34:15', NULL, '1', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjUzIjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51IjtzOjM6ImZJRCI7czoxOiI2IjtzOjExOiJtZW51TGlua0NJRCI7czozOiIxNTYiO30='),
	(54, '', '2016-02-22 14:57:52', '2016-02-22 14:57:52', NULL, '0', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjU0IjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51IjtzOjM6ImZJRCI7czoxOiIzIjtzOjExOiJtZW51TGlua0NJRCI7czoxOiIxIjt9'),
	(55, '', '2016-02-22 14:58:23', '2016-02-22 14:58:23', NULL, '0', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjU1IjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51IjtzOjM6ImZJRCI7czoxOiI0IjtzOjExOiJtZW51TGlua0NJRCI7czozOiIxNTQiO30='),
	(56, '', '2016-02-22 14:58:43', '2016-02-22 14:58:43', NULL, '0', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjU2IjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51IjtzOjM6ImZJRCI7czoxOiI1IjtzOjExOiJtZW51TGlua0NJRCI7czozOiIxNTUiO30='),
	(57, '', '2016-02-22 14:59:34', '2016-02-22 14:59:34', NULL, '0', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjU3IjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51IjtzOjM6ImZJRCI7czoxOiI2IjtzOjExOiJtZW51TGlua0NJRCI7czozOiIxNTYiO3M6MTA6Imhhc1N1Yk1lbnUiO3M6MToiMSI7fQ=='),
	(58, '', '2016-02-22 14:59:49', '2016-02-22 14:59:49', NULL, '0', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjQ6e3M6MzoiYklEIjtzOjI6IjU4IjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRDdXN0b21NZW51IjtzOjM6ImZJRCI7czoxOiI3IjtzOjExOiJtZW51TGlua0NJRCI7czozOiIxNTciO30='),
	(59, '', '2016-02-23 15:39:40', '2016-02-23 15:41:37', NULL, '0', 33, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjU5IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMSI7fQ==');
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;


-- Dumping structure for table herran.blocktypepermissionblocktypeaccesslist
CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.blocktypepermissionblocktypeaccesslist: ~0 rows (approximately)
DELETE FROM `blocktypepermissionblocktypeaccesslist`;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslist` ENABLE KEYS */;


-- Dumping structure for table herran.blocktypepermissionblocktypeaccesslistcustom
CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`),
  KEY `peID` (`peID`),
  KEY `btID` (`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.blocktypepermissionblocktypeaccesslistcustom: ~0 rows (approximately)
DELETE FROM `blocktypepermissionblocktypeaccesslistcustom`;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocktypepermissionblocktypeaccesslistcustom` ENABLE KEYS */;


-- Dumping structure for table herran.blocktypes
CREATE TABLE IF NOT EXISTS `blocktypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` text COLLATE utf8_unicode_ci,
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineAdd` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineEdit` tinyint(1) NOT NULL DEFAULT '0',
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`),
  KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.blocktypes: ~39 rows (approximately)
DELETE FROM `blocktypes`;
/*!40000 ALTER TABLE `blocktypes` DISABLE KEYS */;
INSERT INTO `blocktypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btSupportsInlineAdd`, `btSupportsInlineEdit`, `btIgnorePageThemeGridFrameworkContainer`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
	(1, 'core_area_layout', 'Area Layout', 'Proxy block for area layouts.', 0, 0, 1, 1, 1, 0, 0, 400, 400, 0),
	(2, 'core_page_type_composer_control_output', 'Composer Control', 'Proxy block for blocks that need to be output through composer.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
	(3, 'core_scrapbook_display', 'Scrapbook Display', 'Proxy block for blocks pasted through the scrapbook.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
	(4, 'core_stack_display', 'Stack Display', 'Proxy block for stacks added through the UI.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
	(5, 'core_conversation', 'Conversation', 'Displays conversations on a page.', 1, 0, 0, 0, 0, 0, 20, 400, 400, 0),
	(6, 'dashboard_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 300, 100, 0),
	(7, 'dashboard_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 300, 100, 0),
	(8, 'dashboard_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
	(9, 'dashboard_app_status', 'Dashboard App Status', 'Displays update and welcome back information on your dashboard.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
	(10, 'dashboard_site_activity', 'Dashboard Site Activity', 'Displays a summary of website activity.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
	(11, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 0, 0, 0, 0, 0, 0, 21, 800, 350, 0),
	(12, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 0, 0, 0, 1, 1, 0, 22, 600, 465, 0),
	(13, 'date_navigation', 'Date Navigation', 'Displays a list of months to filter a page list by.', 0, 0, 0, 0, 0, 0, 23, 400, 450, 0),
	(14, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 0, 0, 0, 0, 0, 0, 24, 370, 175, 0),
	(15, 'file', 'File', 'Link to files stored in the asset library.', 0, 0, 0, 0, 0, 0, 25, 300, 320, 0),
	(16, 'page_attribute_display', 'Page Attribute Display', 'Displays the value of a page attribute for the current page.', 0, 0, 0, 0, 0, 0, 26, 500, 365, 0),
	(17, 'form', 'Form', 'Build simple forms and surveys.', 0, 0, 0, 0, 0, 0, 27, 420, 430, 0),
	(18, 'page_title', 'Page Title', 'Displays a Page\'s Title', 0, 0, 0, 0, 0, 0, 28, 400, 400, 0),
	(19, 'feature', 'Feature', 'Displays an icon, a title, and a short paragraph description.', 0, 0, 0, 0, 0, 0, 19, 400, 520, 0),
	(20, 'topic_list', 'Topic List', 'Displays a list of your site\'s topics, allowing you to click on them to filter a page list.', 0, 0, 0, 0, 0, 0, 18, 400, 400, 0),
	(21, 'social_links', 'Social Links', 'Allows users to add social icons to their website', 0, 0, 0, 0, 0, 0, 1, 400, 400, 0),
	(22, 'testimonial', 'Testimonial', 'Displays a quote or paragraph next to biographical information and a person\'s picture.', 0, 0, 0, 0, 0, 0, 2, 450, 560, 0),
	(23, 'share_this_page', 'Share This Page', 'Allows users to share this page with social networks.', 0, 0, 0, 0, 0, 0, 3, 400, 400, 0),
	(24, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 0, 0, 0, 0, 0, 0, 4, 400, 320, 0),
	(25, 'html', 'HTML', 'For adding HTML by hand.', 0, 0, 0, 0, 0, 1, 5, 600, 500, 0),
	(26, 'horizontal_rule', 'Horizontal Rule', 'Adds a thin hairline horizontal divider to the page.', 0, 0, 0, 0, 0, 1, 6, 400, 400, 0),
	(27, 'image', 'Image', 'Adds images and onstates from the library to pages.', 0, 0, 0, 0, 0, 0, 7, 400, 550, 0),
	(28, 'faq', 'FAQ', 'Frequently Asked Questions Block', 0, 0, 0, 0, 0, 0, 8, 600, 465, 0),
	(29, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 0, 0, 0, 0, 0, 0, 9, 430, 400, 0),
	(30, 'page_list', 'Page List', 'List pages based on type, area.', 0, 0, 0, 0, 0, 0, 10, 800, 350, 0),
	(31, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 0, 0, 0, 0, 0, 0, 11, 400, 550, 0),
	(32, 'search', 'Search', 'Add a search box to your site.', 0, 0, 0, 0, 0, 0, 12, 400, 420, 0),
	(33, 'image_slider', 'Image Slider', 'Display your images and captions in an attractive slideshow format.', 0, 0, 0, 0, 0, 1, 13, 600, 465, 0),
	(34, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 0, 0, 0, 0, 0, 0, 14, 420, 400, 0),
	(35, 'switch_language', 'Switch Language', 'Adds a front-end language switcher to your website.', 0, 0, 0, 0, 0, 0, 15, 500, 150, 0),
	(36, 'tags', 'Tags', 'List pages based on type, area.', 0, 0, 0, 0, 0, 0, 16, 450, 439, 0),
	(37, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.', 0, 0, 0, 0, 0, 0, 17, 320, 270, 0),
	(38, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 0, 0, 0, 0, 0, 0, 29, 400, 430, 0),
	(49, 'custom_menu', 'Herran Menu', 'This custom menu is for Herran Theme.', 0, 0, 0, 0, 0, 0, 0, 400, 550, 0);
/*!40000 ALTER TABLE `blocktypes` ENABLE KEYS */;


-- Dumping structure for table herran.blocktypesetblocktypes
CREATE TABLE IF NOT EXISTS `blocktypesetblocktypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`,`btsID`),
  KEY `btsID` (`btsID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.blocktypesetblocktypes: ~36 rows (approximately)
DELETE FROM `blocktypesetblocktypes`;
/*!40000 ALTER TABLE `blocktypesetblocktypes` DISABLE KEYS */;
INSERT INTO `blocktypesetblocktypes` (`btID`, `btsID`, `displayOrder`) VALUES
	(12, 1, 0),
	(25, 1, 1),
	(27, 1, 2),
	(15, 1, 3),
	(26, 1, 4),
	(19, 1, 5),
	(41, 1, 6),
	(11, 2, 0),
	(18, 2, 1),
	(28, 2, 2),
	(30, 2, 3),
	(29, 2, 4),
	(13, 2, 5),
	(36, 2, 6),
	(20, 2, 7),
	(31, 2, 8),
	(35, 2, 9),
	(17, 3, 0),
	(32, 3, 1),
	(14, 3, 2),
	(34, 4, 0),
	(5, 4, 1),
	(21, 4, 2),
	(22, 4, 3),
	(23, 4, 4),
	(16, 5, 0),
	(33, 5, 1),
	(37, 5, 2),
	(38, 5, 3),
	(24, 5, 4),
	(44, 6, 0),
	(45, 6, 1),
	(46, 6, 2),
	(47, 6, 3),
	(48, 6, 4),
	(49, 6, 5);
/*!40000 ALTER TABLE `blocktypesetblocktypes` ENABLE KEYS */;


-- Dumping structure for table herran.blocktypesets
CREATE TABLE IF NOT EXISTS `blocktypesets` (
  `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btsID`),
  UNIQUE KEY `btsHandle` (`btsHandle`),
  KEY `btsDisplayOrder` (`btsDisplayOrder`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.blocktypesets: ~6 rows (approximately)
DELETE FROM `blocktypesets`;
/*!40000 ALTER TABLE `blocktypesets` DISABLE KEYS */;
INSERT INTO `blocktypesets` (`btsID`, `btsName`, `btsHandle`, `pkgID`, `btsDisplayOrder`) VALUES
	(1, 'Basic', 'basic', 0, 1),
	(2, 'Navigation', 'navigation', 0, 2),
	(3, 'Forms', 'form', 0, 3),
	(4, 'Social Networking', 'social', 0, 4),
	(5, 'Multimedia', 'multimedia', 0, 5),
	(6, 'Herran Customs', 'herran_blocks', 0, 0);
/*!40000 ALTER TABLE `blocktypesets` ENABLE KEYS */;


-- Dumping structure for table herran.btcontentfile
CREATE TABLE IF NOT EXISTS `btcontentfile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btcontentfile: ~0 rows (approximately)
DELETE FROM `btcontentfile`;
/*!40000 ALTER TABLE `btcontentfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcontentfile` ENABLE KEYS */;


-- Dumping structure for table herran.btcontentimage
CREATE TABLE IF NOT EXISTS `btcontentimage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btcontentimage: ~0 rows (approximately)
DELETE FROM `btcontentimage`;
/*!40000 ALTER TABLE `btcontentimage` DISABLE KEYS */;
INSERT INTO `btcontentimage` (`bID`, `fID`, `fOnstateID`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `altText`, `title`) VALUES
	(10, 2, 0, 0, 0, '', 0, '', '');
/*!40000 ALTER TABLE `btcontentimage` ENABLE KEYS */;


-- Dumping structure for table herran.btcontentlocal
CREATE TABLE IF NOT EXISTS `btcontentlocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btcontentlocal: ~10 rows (approximately)
DELETE FROM `btcontentlocal`;
/*!40000 ALTER TABLE `btcontentlocal` DISABLE KEYS */;
INSERT INTO `btcontentlocal` (`bID`, `content`) VALUES
	(1, '<div style="padding: 40px; text-align: center"> <iframe width="853" height="480" src="//www.youtube.com/embed/VB-R71zk06U" frameborder="0" allowfullscreen></iframe>                                     </div>'),
	(12, ''),
	(14, ''),
	(16, ''),
	(18, ''),
	(21, ''),
	(23, ''),
	(25, ''),
	(27, ''),
	(29, '');
/*!40000 ALTER TABLE `btcontentlocal` ENABLE KEYS */;


-- Dumping structure for table herran.btcorearealayout
CREATE TABLE IF NOT EXISTS `btcorearealayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `arLayoutID` (`arLayoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btcorearealayout: ~0 rows (approximately)
DELETE FROM `btcorearealayout`;
/*!40000 ALTER TABLE `btcorearealayout` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcorearealayout` ENABLE KEYS */;


-- Dumping structure for table herran.btcoreconversation
CREATE TABLE IF NOT EXISTS `btcoreconversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btcoreconversation: ~0 rows (approximately)
DELETE FROM `btcoreconversation`;
/*!40000 ALTER TABLE `btcoreconversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcoreconversation` ENABLE KEYS */;


-- Dumping structure for table herran.btcorepagetypecomposercontroloutput
CREATE TABLE IF NOT EXISTS `btcorepagetypecomposercontroloutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btcorepagetypecomposercontroloutput: ~0 rows (approximately)
DELETE FROM `btcorepagetypecomposercontroloutput`;
/*!40000 ALTER TABLE `btcorepagetypecomposercontroloutput` DISABLE KEYS */;
INSERT INTO `btcorepagetypecomposercontroloutput` (`bID`, `ptComposerOutputControlID`) VALUES
	(9, 1);
/*!40000 ALTER TABLE `btcorepagetypecomposercontroloutput` ENABLE KEYS */;


-- Dumping structure for table herran.btcorescrapbookdisplay
CREATE TABLE IF NOT EXISTS `btcorescrapbookdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btcorescrapbookdisplay: ~0 rows (approximately)
DELETE FROM `btcorescrapbookdisplay`;
/*!40000 ALTER TABLE `btcorescrapbookdisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcorescrapbookdisplay` ENABLE KEYS */;


-- Dumping structure for table herran.btcorestackdisplay
CREATE TABLE IF NOT EXISTS `btcorestackdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `stID` (`stID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btcorestackdisplay: ~0 rows (approximately)
DELETE FROM `btcorestackdisplay`;
/*!40000 ALTER TABLE `btcorestackdisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btcorestackdisplay` ENABLE KEYS */;


-- Dumping structure for table herran.btcustommenu
CREATE TABLE IF NOT EXISTS `btcustommenu` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `menuLinkCID` int(10) unsigned DEFAULT '0',
  `hasSubMenu` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `fID` (`fID`),
  KEY `menuLinkCID` (`menuLinkCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btcustommenu: ~8 rows (approximately)
DELETE FROM `btcustommenu`;
/*!40000 ALTER TABLE `btcustommenu` DISABLE KEYS */;
INSERT INTO `btcustommenu` (`bID`, `fID`, `menuLinkCID`, `hasSubMenu`) VALUES
	(49, 6, 156, 1),
	(50, 6, 156, 1),
	(51, 6, 156, 1),
	(52, 6, 156, 1),
	(53, 6, 156, 1),
	(54, 3, 1, 0),
	(55, 4, 154, 0),
	(56, 5, 155, 0),
	(57, 6, 156, 1),
	(58, 7, 157, 0);
/*!40000 ALTER TABLE `btcustommenu` ENABLE KEYS */;


-- Dumping structure for table herran.btcustomsubmenu
CREATE TABLE IF NOT EXISTS `btcustomsubmenu` (
  `subMenuID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `menuLinkCID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`subMenuID`),
  KEY `bID` (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btcustomsubmenu: ~11 rows (approximately)
DELETE FROM `btcustomsubmenu`;
/*!40000 ALTER TABLE `btcustomsubmenu` DISABLE KEYS */;
INSERT INTO `btcustomsubmenu` (`subMenuID`, `bID`, `menuLinkCID`) VALUES
	(1, 49, 159),
	(2, 49, 160),
	(3, 50, 159),
	(4, 50, 160),
	(5, 52, 159),
	(6, 52, 160),
	(7, 57, 159),
	(8, 57, 160),
	(9, 57, 161),
	(10, 57, 162),
	(11, 57, 163);
/*!40000 ALTER TABLE `btcustomsubmenu` ENABLE KEYS */;


-- Dumping structure for table herran.btdashboardnewsflowlatest
CREATE TABLE IF NOT EXISTS `btdashboardnewsflowlatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btdashboardnewsflowlatest: ~3 rows (approximately)
DELETE FROM `btdashboardnewsflowlatest`;
/*!40000 ALTER TABLE `btdashboardnewsflowlatest` DISABLE KEYS */;
INSERT INTO `btdashboardnewsflowlatest` (`bID`, `slot`) VALUES
	(4, 'A'),
	(5, 'B'),
	(8, 'C');
/*!40000 ALTER TABLE `btdashboardnewsflowlatest` ENABLE KEYS */;


-- Dumping structure for table herran.btdatenavigation
CREATE TABLE IF NOT EXISTS `btdatenavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'this field is where the links will direct you',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btdatenavigation: ~0 rows (approximately)
DELETE FROM `btdatenavigation`;
/*!40000 ALTER TABLE `btdatenavigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `btdatenavigation` ENABLE KEYS */;


-- Dumping structure for table herran.btexternalform
CREATE TABLE IF NOT EXISTS `btexternalform` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btexternalform: ~0 rows (approximately)
DELETE FROM `btexternalform`;
/*!40000 ALTER TABLE `btexternalform` DISABLE KEYS */;
/*!40000 ALTER TABLE `btexternalform` ENABLE KEYS */;


-- Dumping structure for table herran.btfaq
CREATE TABLE IF NOT EXISTS `btfaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btfaq: ~0 rows (approximately)
DELETE FROM `btfaq`;
/*!40000 ALTER TABLE `btfaq` DISABLE KEYS */;
/*!40000 ALTER TABLE `btfaq` ENABLE KEYS */;


-- Dumping structure for table herran.btfaqentries
CREATE TABLE IF NOT EXISTS `btfaqentries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `bID` (`bID`,`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btfaqentries: ~0 rows (approximately)
DELETE FROM `btfaqentries`;
/*!40000 ALTER TABLE `btfaqentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btfaqentries` ENABLE KEYS */;


-- Dumping structure for table herran.btfeature
CREATE TABLE IF NOT EXISTS `btfeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btfeature: ~0 rows (approximately)
DELETE FROM `btfeature`;
/*!40000 ALTER TABLE `btfeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `btfeature` ENABLE KEYS */;


-- Dumping structure for table herran.btform
CREATE TABLE IF NOT EXISTS `btform` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btform: ~0 rows (approximately)
DELETE FROM `btform`;
/*!40000 ALTER TABLE `btform` DISABLE KEYS */;
/*!40000 ALTER TABLE `btform` ENABLE KEYS */;


-- Dumping structure for table herran.btformanswers
CREATE TABLE IF NOT EXISTS `btformanswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`aID`),
  KEY `asID` (`asID`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btformanswers: ~0 rows (approximately)
DELETE FROM `btformanswers`;
/*!40000 ALTER TABLE `btformanswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btformanswers` ENABLE KEYS */;


-- Dumping structure for table herran.btformanswerset
CREATE TABLE IF NOT EXISTS `btformanswerset` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btformanswerset: ~0 rows (approximately)
DELETE FROM `btformanswerset`;
/*!40000 ALTER TABLE `btformanswerset` DISABLE KEYS */;
/*!40000 ALTER TABLE `btformanswerset` ENABLE KEYS */;


-- Dumping structure for table herran.btformquestions
CREATE TABLE IF NOT EXISTS `btformquestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`),
  KEY `bID` (`bID`,`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btformquestions: ~0 rows (approximately)
DELETE FROM `btformquestions`;
/*!40000 ALTER TABLE `btformquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btformquestions` ENABLE KEYS */;


-- Dumping structure for table herran.btgooglemap
CREATE TABLE IF NOT EXISTS `btgooglemap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btgooglemap: ~0 rows (approximately)
DELETE FROM `btgooglemap`;
/*!40000 ALTER TABLE `btgooglemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btgooglemap` ENABLE KEYS */;


-- Dumping structure for table herran.btimageslider
CREATE TABLE IF NOT EXISTS `btimageslider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btimageslider: ~0 rows (approximately)
DELETE FROM `btimageslider`;
/*!40000 ALTER TABLE `btimageslider` DISABLE KEYS */;
INSERT INTO `btimageslider` (`bID`, `navigationType`) VALUES
	(59, 1);
/*!40000 ALTER TABLE `btimageslider` ENABLE KEYS */;


-- Dumping structure for table herran.btimagesliderentries
CREATE TABLE IF NOT EXISTS `btimagesliderentries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btimagesliderentries: ~4 rows (approximately)
DELETE FROM `btimagesliderentries`;
/*!40000 ALTER TABLE `btimagesliderentries` DISABLE KEYS */;
INSERT INTO `btimagesliderentries` (`id`, `bID`, `cID`, `fID`, `linkURL`, `internalLinkCID`, `title`, `description`, `sortOrder`) VALUES
	(2, 59, 0, 8, '', 0, 'Good & Tasty', '', 0),
	(3, 59, 0, 9, '', 0, 'Kababayan', '', 1),
	(4, 59, 0, 10, '', 0, 'Special Mamon', '', 2),
	(5, 59, 0, 11, '', 0, 'Taisan Cake', '', 3);
/*!40000 ALTER TABLE `btimagesliderentries` ENABLE KEYS */;


-- Dumping structure for table herran.btnavigation
CREATE TABLE IF NOT EXISTS `btnavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btnavigation: ~2 rows (approximately)
DELETE FROM `btnavigation`;
/*!40000 ALTER TABLE `btnavigation` DISABLE KEYS */;
INSERT INTO `btnavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`) VALUES
	(19, 'display_asc', 'top', 0, 0, 'none', 'custom', 1, 0),
	(30, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
	(31, 'display_asc', 'top', 0, 0, 'all', 'all', 0, 0);
/*!40000 ALTER TABLE `btnavigation` ENABLE KEYS */;


-- Dumping structure for table herran.btnextprevious
CREATE TABLE IF NOT EXISTS `btnextprevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btnextprevious: ~0 rows (approximately)
DELETE FROM `btnextprevious`;
/*!40000 ALTER TABLE `btnextprevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btnextprevious` ENABLE KEYS */;


-- Dumping structure for table herran.btpageattributedisplay
CREATE TABLE IF NOT EXISTS `btpageattributedisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btpageattributedisplay: ~0 rows (approximately)
DELETE FROM `btpageattributedisplay`;
/*!40000 ALTER TABLE `btpageattributedisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btpageattributedisplay` ENABLE KEYS */;


-- Dumping structure for table herran.btpagelist
CREATE TABLE IF NOT EXISTS `btpagelist` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Was enum, display_asc'',''display_desc'',''chrono_asc'',''chrono_desc'',''alpha_asc'',''alpha_desc'',''score_asc'',''score_desc''',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) unsigned NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btpagelist: ~0 rows (approximately)
DELETE FROM `btpagelist`;
/*!40000 ALTER TABLE `btpagelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `btpagelist` ENABLE KEYS */;


-- Dumping structure for table herran.btpagetitle
CREATE TABLE IF NOT EXISTS `btpagetitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btpagetitle: ~0 rows (approximately)
DELETE FROM `btpagetitle`;
/*!40000 ALTER TABLE `btpagetitle` DISABLE KEYS */;
/*!40000 ALTER TABLE `btpagetitle` ENABLE KEYS */;


-- Dumping structure for table herran.btrssdisplay
CREATE TABLE IF NOT EXISTS `btrssdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btrssdisplay: ~0 rows (approximately)
DELETE FROM `btrssdisplay`;
/*!40000 ALTER TABLE `btrssdisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btrssdisplay` ENABLE KEYS */;


-- Dumping structure for table herran.btsearch
CREATE TABLE IF NOT EXISTS `btsearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btsearch: ~0 rows (approximately)
DELETE FROM `btsearch`;
/*!40000 ALTER TABLE `btsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsearch` ENABLE KEYS */;


-- Dumping structure for table herran.btsharethispage
CREATE TABLE IF NOT EXISTS `btsharethispage` (
  `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btShareThisPageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btsharethispage: ~0 rows (approximately)
DELETE FROM `btsharethispage`;
/*!40000 ALTER TABLE `btsharethispage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsharethispage` ENABLE KEYS */;


-- Dumping structure for table herran.btsociallinks
CREATE TABLE IF NOT EXISTS `btsociallinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`btSocialLinkID`),
  KEY `bID` (`bID`,`displayOrder`),
  KEY `slID` (`slID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btsociallinks: ~0 rows (approximately)
DELETE FROM `btsociallinks`;
/*!40000 ALTER TABLE `btsociallinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsociallinks` ENABLE KEYS */;


-- Dumping structure for table herran.btsurvey
CREATE TABLE IF NOT EXISTS `btsurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btsurvey: ~0 rows (approximately)
DELETE FROM `btsurvey`;
/*!40000 ALTER TABLE `btsurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsurvey` ENABLE KEYS */;


-- Dumping structure for table herran.btsurveyoptions
CREATE TABLE IF NOT EXISTS `btsurveyoptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`),
  KEY `bID` (`bID`,`displayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btsurveyoptions: ~0 rows (approximately)
DELETE FROM `btsurveyoptions`;
/*!40000 ALTER TABLE `btsurveyoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsurveyoptions` ENABLE KEYS */;


-- Dumping structure for table herran.btsurveyresults
CREATE TABLE IF NOT EXISTS `btsurveyresults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`),
  KEY `optionID` (`optionID`),
  KEY `cID` (`cID`,`optionID`,`bID`),
  KEY `bID` (`bID`,`cID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btsurveyresults: ~0 rows (approximately)
DELETE FROM `btsurveyresults`;
/*!40000 ALTER TABLE `btsurveyresults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btsurveyresults` ENABLE KEYS */;


-- Dumping structure for table herran.btswitchlanguage
CREATE TABLE IF NOT EXISTS `btswitchlanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btswitchlanguage: ~0 rows (approximately)
DELETE FROM `btswitchlanguage`;
/*!40000 ALTER TABLE `btswitchlanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btswitchlanguage` ENABLE KEYS */;


-- Dumping structure for table herran.bttags
CREATE TABLE IF NOT EXISTS `bttags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.bttags: ~0 rows (approximately)
DELETE FROM `bttags`;
/*!40000 ALTER TABLE `bttags` DISABLE KEYS */;
/*!40000 ALTER TABLE `bttags` ENABLE KEYS */;


-- Dumping structure for table herran.bttestimonial
CREATE TABLE IF NOT EXISTS `bttestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.bttestimonial: ~0 rows (approximately)
DELETE FROM `bttestimonial`;
/*!40000 ALTER TABLE `bttestimonial` DISABLE KEYS */;
/*!40000 ALTER TABLE `bttestimonial` ENABLE KEYS */;


-- Dumping structure for table herran.bttopiclist
CREATE TABLE IF NOT EXISTS `bttopiclist` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.bttopiclist: ~0 rows (approximately)
DELETE FROM `bttopiclist`;
/*!40000 ALTER TABLE `bttopiclist` DISABLE KEYS */;
/*!40000 ALTER TABLE `bttopiclist` ENABLE KEYS */;


-- Dumping structure for table herran.btvideo
CREATE TABLE IF NOT EXISTS `btvideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btvideo: ~0 rows (approximately)
DELETE FROM `btvideo`;
/*!40000 ALTER TABLE `btvideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btvideo` ENABLE KEYS */;


-- Dumping structure for table herran.btyoutube
CREATE TABLE IF NOT EXISTS `btyoutube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vPlayer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.btyoutube: ~0 rows (approximately)
DELETE FROM `btyoutube`;
/*!40000 ALTER TABLE `btyoutube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btyoutube` ENABLE KEYS */;


-- Dumping structure for table herran.collectionattributevalues
CREATE TABLE IF NOT EXISTS `collectionattributevalues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collectionattributevalues: ~112 rows (approximately)
DELETE FROM `collectionattributevalues`;
/*!40000 ALTER TABLE `collectionattributevalues` DISABLE KEYS */;
INSERT INTO `collectionattributevalues` (`cID`, `cvID`, `akID`, `avID`) VALUES
	(2, 1, 4, 1),
	(3, 1, 3, 2),
	(4, 1, 3, 3),
	(5, 1, 3, 4),
	(6, 1, 3, 5),
	(8, 1, 3, 6),
	(9, 1, 3, 7),
	(10, 1, 3, 8),
	(11, 1, 5, 9),
	(11, 1, 3, 10),
	(12, 1, 3, 11),
	(13, 1, 3, 12),
	(14, 1, 3, 13),
	(15, 1, 3, 14),
	(16, 1, 3, 15),
	(16, 1, 5, 16),
	(17, 1, 3, 17),
	(17, 1, 5, 18),
	(19, 1, 3, 19),
	(20, 1, 3, 20),
	(22, 1, 3, 21),
	(23, 1, 3, 22),
	(24, 1, 3, 23),
	(25, 1, 3, 24),
	(26, 1, 3, 25),
	(28, 1, 3, 26),
	(29, 1, 3, 27),
	(29, 1, 5, 28),
	(31, 1, 5, 29),
	(32, 1, 5, 30),
	(33, 1, 5, 31),
	(34, 1, 5, 32),
	(35, 1, 5, 33),
	(36, 1, 5, 34),
	(38, 1, 5, 35),
	(39, 1, 3, 36),
	(40, 1, 3, 37),
	(41, 1, 3, 38),
	(43, 1, 4, 39),
	(44, 1, 3, 40),
	(48, 1, 3, 41),
	(50, 1, 5, 42),
	(50, 1, 10, 43),
	(50, 1, 3, 44),
	(51, 1, 3, 45),
	(52, 1, 3, 46),
	(53, 1, 5, 47),
	(54, 1, 3, 48),
	(55, 1, 3, 49),
	(56, 1, 3, 50),
	(56, 1, 5, 51),
	(57, 1, 3, 52),
	(58, 1, 3, 53),
	(59, 1, 3, 54),
	(61, 1, 3, 55),
	(62, 1, 3, 56),
	(63, 1, 3, 57),
	(64, 1, 3, 58),
	(65, 1, 3, 59),
	(66, 1, 3, 60),
	(67, 1, 3, 61),
	(68, 1, 3, 62),
	(74, 1, 3, 63),
	(75, 1, 3, 64),
	(76, 1, 3, 65),
	(77, 1, 3, 66),
	(78, 1, 3, 67),
	(80, 1, 3, 68),
	(81, 1, 3, 69),
	(82, 1, 3, 70),
	(83, 1, 3, 71),
	(85, 1, 3, 72),
	(86, 1, 3, 73),
	(87, 1, 3, 74),
	(88, 1, 3, 75),
	(90, 1, 3, 76),
	(91, 1, 3, 77),
	(94, 1, 3, 78),
	(95, 1, 3, 79),
	(96, 1, 3, 80),
	(97, 1, 3, 81),
	(99, 1, 3, 82),
	(100, 1, 3, 83),
	(101, 1, 3, 84),
	(102, 1, 3, 85),
	(103, 1, 3, 86),
	(104, 1, 3, 87),
	(105, 1, 3, 88),
	(106, 1, 3, 89),
	(107, 1, 3, 90),
	(108, 1, 3, 91),
	(109, 1, 3, 92),
	(110, 1, 3, 93),
	(112, 1, 3, 94),
	(113, 1, 3, 95),
	(114, 1, 3, 96),
	(115, 1, 3, 97),
	(117, 1, 10, 98),
	(118, 1, 3, 99),
	(119, 1, 3, 100),
	(120, 1, 3, 101),
	(121, 1, 3, 102),
	(122, 1, 3, 103),
	(123, 1, 3, 104),
	(125, 1, 3, 105),
	(126, 1, 5, 106),
	(127, 1, 5, 107),
	(127, 1, 10, 108),
	(128, 1, 4, 109),
	(129, 1, 4, 110),
	(130, 1, 4, 111),
	(133, 1, 4, 112);
/*!40000 ALTER TABLE `collectionattributevalues` ENABLE KEYS */;


-- Dumping structure for table herran.collections
CREATE TABLE IF NOT EXISTS `collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cIDDateModified` (`cID`,`cDateModified`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collections: ~164 rows (approximately)
DELETE FROM `collections`;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
	(1, '2016-01-14 08:11:05', '2016-02-24 14:29:53', 'home'),
	(2, '2016-01-14 08:11:33', '2016-01-14 08:11:34', 'dashboard'),
	(3, '2016-01-14 08:11:34', '2016-01-14 08:11:34', 'sitemap'),
	(4, '2016-01-14 08:11:34', '2016-01-14 08:11:34', 'full'),
	(5, '2016-01-14 08:11:34', '2016-01-14 08:11:35', 'explore'),
	(6, '2016-01-14 08:11:35', '2016-01-14 08:11:35', 'search'),
	(7, '2016-01-14 08:11:35', '2016-01-14 08:11:35', 'files'),
	(8, '2016-01-14 08:11:35', '2016-01-14 08:11:35', 'search'),
	(9, '2016-01-14 08:11:35', '2016-01-14 08:11:36', 'attributes'),
	(10, '2016-01-14 08:11:36', '2016-01-14 08:11:36', 'sets'),
	(11, '2016-01-14 08:11:36', '2016-01-14 08:11:36', 'add_set'),
	(12, '2016-01-14 08:11:36', '2016-01-14 08:11:36', 'users'),
	(13, '2016-01-14 08:11:36', '2016-01-14 08:11:36', 'search'),
	(14, '2016-01-14 08:11:36', '2016-01-14 08:11:36', 'groups'),
	(15, '2016-01-14 08:11:37', '2016-01-14 08:11:37', 'attributes'),
	(16, '2016-01-14 08:11:37', '2016-01-14 08:11:37', 'add'),
	(17, '2016-01-14 08:11:37', '2016-01-14 08:11:37', 'add_group'),
	(18, '2016-01-14 08:11:37', '2016-01-14 08:11:37', 'bulkupdate'),
	(19, '2016-01-14 08:11:37', '2016-01-14 08:11:38', 'group_sets'),
	(20, '2016-01-14 08:11:38', '2016-01-14 08:11:38', 'points'),
	(21, '2016-01-14 08:11:38', '2016-01-14 08:11:38', 'assign'),
	(22, '2016-01-14 08:11:38', '2016-01-14 08:11:38', 'actions'),
	(23, '2016-01-14 08:11:38', '2016-01-14 08:11:38', 'reports'),
	(24, '2016-01-14 08:11:38', '2016-01-14 08:11:39', 'forms'),
	(25, '2016-01-14 08:11:39', '2016-01-14 08:11:39', 'surveys'),
	(26, '2016-01-14 08:11:39', '2016-01-14 08:11:39', 'logs'),
	(27, '2016-01-14 08:11:39', '2016-01-14 08:11:39', 'pages'),
	(28, '2016-01-14 08:11:39', '2016-01-14 08:11:39', 'themes'),
	(29, '2016-01-14 08:11:39', '2016-01-14 08:11:39', 'inspect'),
	(30, '2016-01-14 08:11:39', '2016-01-14 08:11:40', 'types'),
	(31, '2016-01-14 08:11:40', '2016-01-14 08:11:40', 'organize'),
	(32, '2016-01-14 08:11:40', '2016-01-14 08:11:40', 'add'),
	(33, '2016-01-14 08:11:40', '2016-01-14 08:11:40', 'form'),
	(34, '2016-01-14 08:11:40', '2016-01-14 08:11:40', 'output'),
	(35, '2016-01-14 08:11:40', '2016-01-14 08:11:40', 'attributes'),
	(36, '2016-01-14 08:11:41', '2016-01-14 08:11:41', 'permissions'),
	(37, '2016-01-14 08:11:41', '2016-01-14 08:11:41', 'templates'),
	(38, '2016-01-14 08:11:41', '2016-01-14 08:11:41', 'add'),
	(39, '2016-01-14 08:11:41', '2016-01-14 08:11:41', 'attributes'),
	(40, '2016-01-14 08:11:41', '2016-01-14 08:11:41', 'single'),
	(41, '2016-01-14 08:11:42', '2016-01-14 08:11:42', 'feeds'),
	(42, '2016-01-14 08:11:42', '2016-01-14 08:11:42', 'conversations'),
	(43, '2016-01-14 08:11:42', '2016-01-14 08:11:42', 'messages'),
	(44, '2016-01-14 08:11:42', '2016-01-14 08:11:42', 'workflow'),
	(45, '2016-01-14 08:11:42', '2016-01-14 08:11:42', 'me'),
	(46, '2016-01-14 08:11:42', '2016-01-14 08:11:43', 'workflows'),
	(47, '2016-01-14 08:11:43', '2016-01-14 08:11:43', 'blocks'),
	(48, '2016-01-14 08:11:43', '2016-01-14 08:11:43', 'stacks'),
	(49, '2016-01-14 08:11:43', '2016-01-14 08:11:43', 'permissions'),
	(50, '2016-01-14 08:11:43', '2016-01-14 08:11:43', 'list'),
	(51, '2016-01-14 08:11:43', '2016-01-14 08:11:43', 'types'),
	(52, '2016-01-14 08:11:44', '2016-01-14 08:11:44', 'extend'),
	(53, '2016-01-14 08:11:44', '2016-01-14 08:11:44', 'news'),
	(54, '2016-01-14 08:11:44', '2016-01-14 08:11:44', 'install'),
	(55, '2016-01-14 08:11:44', '2016-01-14 08:11:44', 'update'),
	(56, '2016-01-14 08:11:44', '2016-01-14 08:11:45', 'connect'),
	(57, '2016-01-14 08:11:45', '2016-01-14 08:11:45', 'themes'),
	(58, '2016-01-14 08:11:45', '2016-01-14 08:11:45', 'addons'),
	(59, '2016-01-14 08:11:45', '2016-01-14 08:11:45', 'system'),
	(60, '2016-01-14 08:11:45', '2016-01-14 08:11:45', 'basics'),
	(61, '2016-01-14 08:11:46', '2016-01-14 08:11:46', 'name'),
	(62, '2016-01-14 08:11:46', '2016-01-14 08:11:46', 'accessibility'),
	(63, '2016-01-14 08:11:46', '2016-01-14 08:11:46', 'social'),
	(64, '2016-01-14 08:11:46', '2016-01-14 08:11:46', 'icons'),
	(65, '2016-01-14 08:11:46', '2016-01-14 08:11:46', 'editor'),
	(66, '2016-01-14 08:11:46', '2016-01-14 08:11:47', 'multilingual'),
	(67, '2016-01-14 08:11:47', '2016-01-14 08:11:47', 'timezone'),
	(68, '2016-01-14 08:11:47', '2016-01-14 08:11:47', 'multilingual'),
	(69, '2016-01-14 08:11:47', '2016-01-14 08:11:47', 'setup'),
	(70, '2016-01-14 08:11:47', '2016-01-14 08:11:47', 'copy'),
	(71, '2016-01-14 08:11:47', '2016-01-14 08:11:48', 'page_report'),
	(72, '2016-01-14 08:11:48', '2016-01-14 08:11:48', 'translate_interface'),
	(73, '2016-01-14 08:11:48', '2016-01-14 08:11:48', 'seo'),
	(74, '2016-01-14 08:11:48', '2016-01-14 08:11:48', 'urls'),
	(75, '2016-01-14 08:11:48', '2016-01-14 08:11:48', 'bulk'),
	(76, '2016-01-14 08:11:48', '2016-01-14 08:11:48', 'codes'),
	(77, '2016-01-14 08:11:49', '2016-01-14 08:11:49', 'excluded'),
	(78, '2016-01-14 08:11:49', '2016-01-14 08:11:49', 'searchindex'),
	(79, '2016-01-14 08:11:49', '2016-01-14 08:11:49', 'files'),
	(80, '2016-01-14 08:11:49', '2016-01-14 08:11:49', 'permissions'),
	(81, '2016-01-14 08:11:49', '2016-01-14 08:11:50', 'filetypes'),
	(82, '2016-01-14 08:11:50', '2016-01-14 08:11:50', 'thumbnails'),
	(83, '2016-01-14 08:11:50', '2016-01-14 08:11:50', 'storage'),
	(84, '2016-01-14 08:11:50', '2016-01-14 08:11:50', 'optimization'),
	(85, '2016-01-14 08:11:50', '2016-01-14 08:11:50', 'cache'),
	(86, '2016-01-14 08:11:50', '2016-01-14 08:11:51', 'clearcache'),
	(87, '2016-01-14 08:11:51', '2016-01-14 08:11:51', 'jobs'),
	(88, '2016-01-14 08:11:51', '2016-01-14 08:11:51', 'query_log'),
	(89, '2016-01-14 08:11:51', '2016-01-14 08:11:51', 'permissions'),
	(90, '2016-01-14 08:11:51', '2016-01-14 08:11:51', 'site'),
	(91, '2016-01-14 08:11:52', '2016-01-14 08:11:52', 'tasks'),
	(92, '2016-01-14 08:11:52', '2016-01-14 08:11:52', 'users'),
	(93, '2016-01-14 08:11:52', '2016-01-14 08:11:52', 'advanced'),
	(94, '2016-01-14 08:11:52', '2016-01-14 08:11:52', 'blacklist'),
	(95, '2016-01-14 08:11:53', '2016-01-14 08:11:53', 'captcha'),
	(96, '2016-01-14 08:11:53', '2016-01-14 08:11:53', 'antispam'),
	(97, '2016-01-14 08:11:53', '2016-01-14 08:11:53', 'maintenance'),
	(98, '2016-01-14 08:11:53', '2016-01-14 08:11:54', 'registration'),
	(99, '2016-01-14 08:11:54', '2016-01-14 08:11:54', 'postlogin'),
	(100, '2016-01-14 08:11:54', '2016-01-14 08:11:54', 'profiles'),
	(101, '2016-01-14 08:11:54', '2016-01-14 08:11:54', 'open'),
	(102, '2016-01-14 08:11:54', '2016-01-14 08:11:54', 'authentication'),
	(103, '2016-01-14 08:11:54', '2016-01-14 08:11:55', 'mail'),
	(104, '2016-01-14 08:11:55', '2016-01-14 08:11:55', 'method'),
	(105, '2016-01-14 08:11:55', '2016-01-14 08:11:55', 'test'),
	(106, '2016-01-14 08:11:55', '2016-01-14 08:11:55', 'importers'),
	(107, '2016-01-14 08:11:55', '2016-01-14 08:11:55', 'conversations'),
	(108, '2016-01-14 08:11:55', '2016-01-14 08:11:56', 'settings'),
	(109, '2016-01-14 08:11:56', '2016-01-14 08:11:56', 'points'),
	(110, '2016-01-14 08:11:56', '2016-01-14 08:11:56', 'bannedwords'),
	(111, '2016-01-14 08:11:56', '2016-01-14 08:11:56', 'permissions'),
	(112, '2016-01-14 08:11:56', '2016-01-14 08:11:56', 'attributes'),
	(113, '2016-01-14 08:11:56', '2016-01-14 08:11:57', 'sets'),
	(114, '2016-01-14 08:11:57', '2016-01-14 08:11:57', 'types'),
	(115, '2016-01-14 08:11:57', '2016-01-14 08:11:57', 'topics'),
	(116, '2016-01-14 08:11:57', '2016-01-14 08:11:57', 'add'),
	(117, '2016-01-14 08:11:57', '2016-01-14 08:11:58', 'environment'),
	(118, '2016-01-14 08:11:58', '2016-01-14 08:11:58', 'info'),
	(119, '2016-01-14 08:11:58', '2016-01-14 08:11:58', 'debug'),
	(120, '2016-01-14 08:11:58', '2016-01-14 08:11:58', 'logging'),
	(121, '2016-01-14 08:11:58', '2016-01-14 08:11:59', 'proxy'),
	(122, '2016-01-14 08:11:59', '2016-01-14 08:11:59', 'entities'),
	(123, '2016-01-14 08:11:59', '2016-01-14 08:11:59', 'backup'),
	(124, '2016-01-14 08:11:59', '2016-01-14 08:11:59', 'backup'),
	(125, '2016-01-14 08:11:59', '2016-01-14 08:12:00', 'update'),
	(126, '2016-01-14 08:12:03', '2016-01-14 08:12:03', 'welcome'),
	(127, '2016-01-14 08:12:03', '2016-01-14 08:12:03', 'home'),
	(128, '2016-01-14 08:12:18', '2016-01-14 08:12:18', '!drafts'),
	(129, '2016-01-14 08:12:18', '2016-01-14 08:12:18', '!trash'),
	(130, '2016-01-14 08:12:19', '2016-01-14 08:12:19', '!stacks'),
	(131, '2016-01-14 08:12:19', '2016-01-14 08:12:19', 'login'),
	(132, '2016-01-14 08:12:19', '2016-01-14 08:12:19', 'register'),
	(133, '2016-01-14 08:12:19', '2016-01-14 08:12:19', 'account'),
	(134, '2016-01-14 08:12:19', '2016-01-14 08:12:20', 'edit_profile'),
	(135, '2016-01-14 08:12:20', '2016-01-14 08:12:20', 'avatar'),
	(136, '2016-01-14 08:12:20', '2016-01-14 08:12:20', 'messages'),
	(137, '2016-01-14 08:12:20', '2016-01-14 08:12:20', 'inbox'),
	(138, '2016-01-14 08:12:20', '2016-01-14 08:12:20', 'members'),
	(139, '2016-01-14 08:12:20', '2016-01-14 08:12:21', 'profile'),
	(140, '2016-01-14 08:12:21', '2016-01-14 08:12:21', 'directory'),
	(141, '2016-01-14 08:12:21', '2016-01-14 08:12:21', 'page_not_found'),
	(142, '2016-01-14 08:12:21', '2016-01-14 08:12:21', 'page_forbidden'),
	(143, '2016-01-14 08:12:21', '2016-01-14 08:12:21', 'download_file'),
	(144, '2016-01-14 08:12:25', '2016-01-14 08:12:25', NULL),
	(145, '2016-01-14 08:14:29', '2016-01-14 08:14:29', 'header-site-title'),
	(146, '2016-01-14 08:14:29', '2016-01-14 08:14:29', 'header-navigation'),
	(147, '2016-01-14 08:14:29', '2016-01-14 08:14:29', 'footer-legal'),
	(148, '2016-01-14 08:14:29', '2016-01-14 08:14:29', 'footer-navigation'),
	(149, '2016-01-14 08:14:29', '2016-01-14 08:14:29', 'footer-contact'),
	(150, '2016-01-25 14:22:20', '2016-01-25 14:22:20', 'header-search'),
	(151, '2016-01-25 14:22:21', '2016-01-25 14:22:21', 'footer-site-title'),
	(152, '2016-01-25 14:22:21', '2016-01-25 14:22:21', 'footer-social'),
	(153, '2016-02-02 13:16:55', '2016-02-22 15:09:49', 'header-logo'),
	(154, '2016-02-05 13:05:06', '2016-02-05 13:05:08', ''),
	(155, '2016-02-05 13:05:30', '2016-02-05 13:05:32', ''),
	(156, '2016-02-05 13:05:53', '2016-02-05 13:05:55', ''),
	(157, '2016-02-05 13:06:10', '2016-02-05 13:06:11', ''),
	(158, '2016-02-05 13:07:38', '2016-02-22 15:09:50', 'header-menu'),
	(159, '2016-02-05 13:51:08', '2016-02-05 13:51:11', ''),
	(160, '2016-02-05 13:51:23', '2016-02-05 13:51:24', ''),
	(161, '2016-02-05 13:51:39', '2016-02-05 13:51:40', ''),
	(162, '2016-02-05 13:51:59', '2016-02-05 13:52:00', ''),
	(163, '2016-02-05 13:52:10', '2016-02-05 13:52:11', ''),
	(164, '2016-02-17 08:17:38', '2016-02-17 08:17:38', NULL);
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;


-- Dumping structure for table herran.collectionsearchindexattributes
CREATE TABLE IF NOT EXISTS `collectionsearchindexattributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` tinytext COLLATE utf8_unicode_ci,
  `ak_meta_description` tinytext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` tinytext COLLATE utf8_unicode_ci,
  `ak_icon_dashboard` tinytext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` tinytext COLLATE utf8_unicode_ci,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collectionsearchindexattributes: ~116 rows (approximately)
DELETE FROM `collectionsearchindexattributes`;
/*!40000 ALTER TABLE `collectionsearchindexattributes` DISABLE KEYS */;
INSERT INTO `collectionsearchindexattributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_tags`, `ak_is_featured`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`) VALUES
	(1, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(2, NULL, NULL, NULL, 'fa fa-th-large', 0, 0, NULL, NULL, 0, 0, 0),
	(3, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(4, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(5, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(6, NULL, NULL, 'find page, search page, search, find, pages, sitemap', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(8, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(9, NULL, NULL, 'file, file attributes, title, attribute, description, rename', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(10, NULL, NULL, 'files, category, categories', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(11, NULL, NULL, 'new file set', NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(12, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(13, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(14, NULL, NULL, 'user, group, people, permissions, expire, badges', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(15, NULL, NULL, 'user attributes, user data, gather data, registration data', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(16, NULL, NULL, 'new user, create', NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(17, NULL, NULL, 'new user group, new group, group, create', NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(19, NULL, NULL, 'group set', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(20, NULL, NULL, 'community, points, karma', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(22, NULL, NULL, 'action, community actions', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(23, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(24, NULL, NULL, 'forms, questions, response, data', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(25, NULL, NULL, 'questions, quiz, response', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(28, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(29, NULL, NULL, 'page types', NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(31, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(32, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(33, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(34, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(35, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(36, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(38, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(39, NULL, NULL, 'page attributes, custom', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(40, NULL, NULL, 'single, page, custom, application', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(41, NULL, NULL, 'atom, rss, feed, syndication', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(43, NULL, NULL, NULL, 'icon-bullhorn', 0, 0, NULL, NULL, 0, 0, 0),
	(44, NULL, NULL, 'add workflow, remove workflow', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(48, NULL, NULL, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(50, NULL, NULL, 'edit stacks, view stacks, all stacks', NULL, 1, 0, NULL, NULL, 0, 1, 0),
	(51, NULL, NULL, 'block, refresh, custom', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(52, NULL, NULL, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(53, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(54, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(55, NULL, NULL, 'update, upgrade', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(56, NULL, NULL, 'concrete5.org, my account, marketplace', NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(57, NULL, NULL, 'buy theme, new theme, marketplace, template', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(58, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(59, NULL, NULL, 'dashboard, configuration', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(61, NULL, NULL, 'website name, title', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(62, NULL, NULL, 'accessibility, easy mode', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(63, NULL, NULL, 'sharing, facebook, twitter', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(64, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(65, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(66, NULL, NULL, 'translate, translation, internationalization, multilingual', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(67, NULL, NULL, 'timezone, profile, locale', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(68, NULL, NULL, 'multilingual, localization, internationalization, i18n', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(74, NULL, NULL, 'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(75, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(76, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(77, NULL, NULL, 'pretty, slug', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(78, NULL, NULL, 'configure search, site search, search option', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(80, NULL, NULL, 'file options, file manager, upload, modify', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(81, NULL, NULL, 'security, files, media, extension, manager, upload', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(82, NULL, NULL, 'images, picture, responsive, retina', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(83, NULL, NULL, 'security, alternate storage, hide files', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(85, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(86, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(87, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(88, NULL, NULL, 'queries, database, mysql', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(90, NULL, NULL, 'editors, hide site, offline, private, public, access', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(91, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(94, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(95, NULL, NULL, 'security, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(96, NULL, NULL, 'antispam, block spam, security', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(97, NULL, NULL, 'lock site, under construction, hide, hidden', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(99, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(100, NULL, NULL, 'member profile, member page, community, forums, social, avatar', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(101, NULL, NULL, 'signup, new user, community, public registration, public, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(102, NULL, NULL, 'auth, authentication, types, oauth, facebook, login, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(103, NULL, NULL, 'smtp, mail settings', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(104, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(105, NULL, NULL, 'test smtp, test mail', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(106, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(107, NULL, NULL, 'conversations', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(108, NULL, NULL, 'conversations', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(109, NULL, NULL, 'conversations ratings, ratings, community, community points', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(110, NULL, NULL, 'conversations bad words, banned words, banned, bad words, bad, words, list', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(112, NULL, NULL, 'attribute configuration', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(113, NULL, NULL, 'attributes, sets', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(114, NULL, NULL, 'attributes, types', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(115, NULL, NULL, 'topics, tags, taxonomy', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(117, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0),
	(118, NULL, NULL, 'overrides, system info, debug, support, help', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(119, NULL, NULL, 'errors, exceptions, develop, support, help', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(120, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(121, NULL, NULL, 'network, proxy server', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(122, NULL, NULL, 'database, entities, doctrine, orm', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(123, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(125, NULL, NULL, 'upgrade, new version, update', NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(126, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
	(127, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 1, 0),
	(128, NULL, NULL, NULL, 'fa fa-edit', 0, 0, NULL, NULL, 0, 0, 0),
	(129, NULL, NULL, NULL, 'fa fa-trash-o', 0, 0, NULL, NULL, 0, 0, 0),
	(130, NULL, NULL, NULL, 'fa fa-th', 0, 0, NULL, NULL, 0, 0, 0),
	(133, NULL, NULL, NULL, 'fa fa-briefcase', 0, 0, NULL, NULL, 0, 0, 0),
	(153, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(154, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(155, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(156, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(157, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(158, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(159, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(160, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(161, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(162, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
	(163, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0);
/*!40000 ALTER TABLE `collectionsearchindexattributes` ENABLE KEYS */;


-- Dumping structure for table herran.collectionversionareastyles
CREATE TABLE IF NOT EXISTS `collectionversionareastyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collectionversionareastyles: ~0 rows (approximately)
DELETE FROM `collectionversionareastyles`;
/*!40000 ALTER TABLE `collectionversionareastyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionareastyles` ENABLE KEYS */;


-- Dumping structure for table herran.collectionversionblocks
CREATE TABLE IF NOT EXISTS `collectionversionblocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collectionversionblocks: ~64 rows (approximately)
DELETE FROM `collectionversionblocks`;
/*!40000 ALTER TABLE `collectionversionblocks` DISABLE KEYS */;
INSERT INTO `collectionversionblocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`, `cbOverrideBlockTypeCacheSettings`, `cbOverrideBlockTypeContainerSettings`, `cbEnableBlockContainer`) VALUES
	(1, 17, 59, 'Slider', 0, 1, 0, 0, 0, 0, 0),
	(126, 1, 1, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(127, 1, 2, 'Primary', 0, 1, 0, 0, 0, 0, 0),
	(127, 1, 3, 'Primary', 1, 1, 0, 0, 0, 0, 0),
	(127, 1, 4, 'Secondary 1', 0, 1, 0, 0, 0, 0, 0),
	(127, 1, 5, 'Secondary 2', 0, 1, 0, 0, 0, 0, 0),
	(127, 1, 6, 'Secondary 3', 0, 1, 0, 0, 0, 0, 0),
	(127, 1, 7, 'Secondary 4', 0, 1, 0, 0, 0, 0, 0),
	(127, 1, 8, 'Secondary 5', 0, 1, 0, 0, 0, 0, 0),
	(144, 1, 9, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(153, 2, 10, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(153, 3, 10, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(153, 3, 56, 'Main', 2, 0, 0, 0, 0, 0, 0),
	(153, 4, 10, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(153, 5, 10, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(153, 5, 56, 'Main', 2, 0, 0, 0, 0, 0, 0),
	(153, 6, 10, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(154, 1, 12, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(155, 1, 14, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(156, 1, 16, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(157, 1, 18, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(158, 2, 19, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(158, 4, 30, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(158, 5, 31, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(158, 29, 49, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(158, 30, 50, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(158, 31, 51, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(158, 32, 52, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(158, 33, 53, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(158, 35, 54, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(158, 36, 54, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(158, 36, 55, 'Main', 1, 1, 0, 0, 0, 0, 0),
	(158, 37, 54, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(158, 37, 55, 'Main', 1, 0, 0, 0, 0, 0, 0),
	(158, 37, 56, 'Main', 2, 1, 0, 0, 0, 0, 0),
	(158, 38, 54, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(158, 38, 55, 'Main', 1, 0, 0, 0, 0, 0, 0),
	(158, 38, 56, 'Main', 2, 0, 0, 0, 0, 0, 0),
	(158, 38, 57, 'Main', 3, 1, 0, 0, 0, 0, 0),
	(158, 39, 54, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(158, 39, 55, 'Main', 1, 0, 0, 0, 0, 0, 0),
	(158, 39, 56, 'Main', 2, 0, 0, 0, 0, 0, 0),
	(158, 39, 57, 'Main', 3, 0, 0, 0, 0, 0, 0),
	(158, 39, 58, 'Main', 4, 1, 0, 0, 0, 0, 0),
	(158, 40, 54, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(158, 40, 55, 'Main', 1, 0, 0, 0, 0, 0, 0),
	(158, 40, 57, 'Main', 3, 0, 0, 0, 0, 0, 0),
	(158, 40, 58, 'Main', 4, 0, 0, 0, 0, 0, 0),
	(158, 41, 54, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(158, 41, 55, 'Main', 1, 0, 0, 0, 0, 0, 0),
	(158, 41, 56, 'Main', 1, 0, 0, 0, 0, 0, 0),
	(158, 41, 57, 'Main', 2, 0, 0, 0, 0, 0, 0),
	(158, 41, 58, 'Main', 3, 0, 0, 0, 0, 0, 0),
	(158, 42, 54, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(158, 42, 55, 'Main', 1, 0, 0, 0, 0, 0, 0),
	(158, 42, 57, 'Main', 3, 0, 0, 0, 0, 0, 0),
	(158, 42, 58, 'Main', 4, 0, 0, 0, 0, 0, 0),
	(158, 43, 54, 'Main', 0, 0, 0, 0, 0, 0, 0),
	(158, 43, 55, 'Main', 1, 0, 0, 0, 0, 0, 0),
	(158, 43, 56, 'Main', 1, 0, 0, 0, 0, 0, 0),
	(158, 43, 57, 'Main', 2, 0, 0, 0, 0, 0, 0),
	(158, 43, 58, 'Main', 3, 0, 0, 0, 0, 0, 0),
	(159, 1, 21, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(160, 1, 23, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(161, 1, 25, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(162, 1, 27, 'Main', 0, 1, 0, 0, 0, 0, 0),
	(163, 1, 29, 'Main', 0, 1, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `collectionversionblocks` ENABLE KEYS */;


-- Dumping structure for table herran.collectionversionblockscachesettings
CREATE TABLE IF NOT EXISTS `collectionversionblockscachesettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collectionversionblockscachesettings: ~0 rows (approximately)
DELETE FROM `collectionversionblockscachesettings`;
/*!40000 ALTER TABLE `collectionversionblockscachesettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionblockscachesettings` ENABLE KEYS */;


-- Dumping structure for table herran.collectionversionblocksoutputcache
CREATE TABLE IF NOT EXISTS `collectionversionblocksoutputcache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collectionversionblocksoutputcache: ~63 rows (approximately)
DELETE FROM `collectionversionblocksoutputcache`;
/*!40000 ALTER TABLE `collectionversionblocksoutputcache` DISABLE KEYS */;
INSERT INTO `collectionversionblocksoutputcache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
	(1, 4, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1612530068),
	(1, 5, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1612530815),
	(1, 6, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1612533263),
	(1, 7, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1612545131),
	(1, 8, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1612960350),
	(1, 8, 32, 'Main', '<div class="container">\n  <ul class="nav-justified header-menu">\n    <li class="text-center">\n      <a href="#/home"><img src="/img/layout/menu_home.png" /></a>\n    </li>\n    <li class="text-center">\n      <a href="#/about-us"><img src="/img/layout/menu_about.png" /></a>\n    </li>\n    <li class="text-center">\n      <a href="#/news"><img src="/img/layout/menu_news.png" /></a>\n    </li>\n    <li class="text-center dropdown">\n      <img class="dropdown-toggle hb-menu" data-ng-click="toggleDropdown()" src="/img/layout/menu_products.png" />\n      <div class="hb-menu-drop">\n        <div data-ng-include="\'/templates/partials/products-menu.html\'" data-ng-controller="menuController" data-ng-init="init(\'header\')"></div>\n      </div>\n    </li>\n    <li class="text-center">\n      <a href="#/contact-us"><img src="/img/layout/menu_contact.png" /></a>\n    </li>\n  </ul>\n</div>', 1612959790),
	(1, 8, 33, 'Header Menu', '    <li class="text-center">\n        <a href="">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/1714/5510/6975/menu_home.png" alt="#"></picture>        </a>\n    </li>\n', 1612961047),
	(1, 9, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1612962925),
	(1, 9, 33, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/1714/5510/6975/menu_home.png" alt="#"></picture>        </a>\n    </li>\n', 1612962949),
	(1, 9, 34, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/about-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/4614/5511/0107/menu_about.png" alt="#"></picture>        </a>\n    </li>\n', 1612962949),
	(1, 10, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1612963114),
	(1, 10, 33, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/1714/5510/6975/menu_home.png" alt="#"></picture>        </a>\n    </li>\n', 1612963114),
	(1, 10, 34, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/about-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/4614/5511/0107/menu_about.png" alt="#"></picture>        </a>\n    </li>\n', 1612963114),
	(1, 10, 35, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/new">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6114/5511/0210/menu_news.png" alt="#"></picture>        </a>\n    </li>\n', 1612963042),
	(1, 10, 36, 'Header Menu', '    <li class="text-center">\n        <a href="">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        </a>\n    </li>\n', 1612963081),
	(1, 10, 37, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/contact-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6314/5511/0299/menu_contact.png" alt="#"></picture>        </a>\n    </li>\n', 1612963106),
	(1, 11, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1612966443),
	(1, 11, 33, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/1714/5510/6975/menu_home.png" alt="#"></picture>        </a>\n    </li>\n', 1612966444),
	(1, 11, 34, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/about-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/4614/5511/0107/menu_about.png" alt="#"></picture>        </a>\n    </li>\n', 1612966444),
	(1, 11, 35, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/new">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6114/5511/0210/menu_news.png" alt="#"></picture>        </a>\n    </li>\n', 1612966444),
	(1, 11, 36, 'Header Menu', '    <li class="text-center">\n        <a href="">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        </a>\n    </li>\n', 1612966444),
	(1, 11, 37, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/contact-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6314/5511/0299/menu_contact.png" alt="#"></picture>        </a>\n    </li>\n', 1612966444),
	(1, 12, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1612967495),
	(1, 13, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1614000946),
	(1, 13, 43, 'Header Menu', '    <li class="text-center dropdown">\n        <!--<img class="dropdown-toggle hb-menu" data-ng-click="toggleDropdown()" src="/img/layout/menu_products.png" />-->\n        <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        <div class="hb-menu-drop">\n            <!--<div data-ng-include="\'/templates/partials/products-menu.html\'" data-ng-controller="menuController" data-ng-init="init(\'header\')"></div>-->\n        </div>\n    </li>\n', 1614000778),
	(1, 13, 45, 'Header Menu', '    <li class="text-center dropdown">\n        <!--<img class="dropdown-toggle hb-menu" data-ng-click="toggleDropdown()" src="/img/layout/menu_products.png" />-->\n        <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        <div class="hb-menu-drop">\n            <!--<div data-ng-include="\'/templates/partials/products-menu.html\'" data-ng-controller="menuController" data-ng-init="init(\'header\')"></div>-->\n        </div>\n    </li>\n', 1614001150),
	(1, 13, 49, 'Header Menu', '    <li class="text-center dropdown">\n        <!--<img class="dropdown-toggle hb-menu" data-ng-click="toggleDropdown()" src="/img/layout/menu_products.png" />-->\n        <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        <div class="hb-menu-drop">\n            <!--<div data-ng-include="\'/templates/partials/products-menu.html\'" data-ng-controller="menuController" data-ng-init="init(\'header\')"></div>-->\n        </div>\n    </li>\n', 1614004212),
	(1, 13, 50, 'Header Menu', '    <li class="text-center dropdown">\n        <!--<img class="dropdown-toggle hb-menu" data-ng-click="toggleDropdown()" src="/img/layout/menu_products.png" />-->\n        <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        <div class="hb-menu-drop">\n            <!--<div data-ng-include="\'/templates/partials/products-menu.html\'" data-ng-controller="menuController" data-ng-init="init(\'header\')"></div>-->\n        </div>\n    </li>\n', 1614004250),
	(1, 13, 51, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/products">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        </a>\n    </li>\n', 1614004258),
	(1, 13, 52, 'Header Menu', '    <li class="text-center dropdown">\n        <!--<img class="dropdown-toggle hb-menu" data-ng-click="toggleDropdown()" src="/img/layout/menu_products.png" />-->\n        <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        <div class="hb-menu-drop">\n            <!--<div data-ng-include="\'/templates/partials/products-menu.html\'" data-ng-controller="menuController" data-ng-init="init(\'header\')"></div>-->\n        </div>\n    </li>\n', 1614004442),
	(1, 13, 53, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/products">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        </a>\n    </li>\n', 1614004456),
	(1, 13, 54, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/1714/5510/6975/menu_home.png" alt="#"></picture>        </a>\n    </li>\n', 1614005874),
	(1, 13, 55, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/about-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/4614/5511/0107/menu_about.png" alt="#"></picture>        </a>\n    </li>\n', 1614005903),
	(1, 13, 56, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/new">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6114/5511/0210/menu_news.png" alt="#"></picture>        </a>\n    </li>\n', 1614005923),
	(1, 13, 57, 'Header Menu', '    <li class="text-center dropdown">\n        <!--<img class="dropdown-toggle hb-menu" data-ng-click="toggleDropdown()" src="/img/layout/menu_products.png" />-->\n        <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        <div class="hb-menu-drop">\n            <!--<div data-ng-include="\'/templates/partials/products-menu.html\'" data-ng-controller="menuController" data-ng-init="init(\'header\')"></div>-->\n        </div>\n    </li>\n', 1614005975),
	(1, 13, 58, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/contact-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6314/5511/0299/menu_contact.png" alt="#"></picture>        </a>\n    </li>\n', 1614005989),
	(1, 14, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1614006484),
	(1, 14, 54, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/1714/5510/6975/menu_home.png" alt="#"></picture>        </a>\n    </li>\n', 1614006484),
	(1, 14, 55, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/about-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/4614/5511/0107/menu_about.png" alt="#"></picture>        </a>\n    </li>\n', 1614006484),
	(1, 14, 56, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/new">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6114/5511/0210/menu_news.png" alt="#"></picture>        </a>\n    </li>\n', 1614006484),
	(1, 14, 57, 'Header Menu', '    <li class="text-center dropdown">\n        <!--<img class="dropdown-toggle hb-menu" data-ng-click="toggleDropdown()" src="/img/layout/menu_products.png" />-->\n        <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        <div class="hb-menu-drop">\n            <!--<div data-ng-include="\'/templates/partials/products-menu.html\'" data-ng-controller="menuController" data-ng-init="init(\'header\')"></div>-->\n        </div>\n    </li>\n', 1614006484),
	(1, 14, 58, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/contact-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6314/5511/0299/menu_contact.png" alt="#"></picture>        </a>\n    </li>\n', 1614006484),
	(1, 15, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1614006626),
	(1, 15, 54, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/1714/5510/6975/menu_home.png" alt="#"></picture>        </a>\n    </li>\n', 1614006626),
	(1, 15, 55, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/about-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/4614/5511/0107/menu_about.png" alt="#"></picture>        </a>\n    </li>\n', 1614006626),
	(1, 15, 56, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/new">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6114/5511/0210/menu_news.png" alt="#"></picture>        </a>\n    </li>\n', 1614006626),
	(1, 15, 57, 'Header Menu', '    <li class="text-center dropdown">\n        <!--<img class="dropdown-toggle hb-menu" data-ng-click="toggleDropdown()" src="/img/layout/menu_products.png" />-->\n        <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        <div class="hb-menu-drop">\n            <!--<div data-ng-include="\'/templates/partials/products-menu.html\'" data-ng-controller="menuController" data-ng-init="init(\'header\')"></div>-->\n        </div>\n    </li>\n', 1614006627),
	(1, 15, 58, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/contact-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6314/5511/0299/menu_contact.png" alt="#"></picture>        </a>\n    </li>\n', 1614006627),
	(1, 16, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1614012969),
	(1, 16, 54, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/1714/5510/6975/menu_home.png" alt="#"></picture>        </a>\n    </li>\n', 1614012969),
	(1, 16, 55, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/about-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/4614/5511/0107/menu_about.png" alt="#"></picture>        </a>\n    </li>\n', 1614012969),
	(1, 16, 56, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/new">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6114/5511/0210/menu_news.png" alt="#"></picture>        </a>\n    </li>\n', 1614012969),
	(1, 16, 57, 'Header Menu', '    <li class="text-center dropdown">\n        <!--<img class="dropdown-toggle hb-menu" data-ng-click="toggleDropdown()" src="/img/layout/menu_products.png" />-->\n        <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/3814/5511/0277/menu_products.png" alt="#"></picture>        <div class="hb-menu-drop">\n            <!--<div data-ng-include="\'/templates/partials/products-menu.html\'" data-ng-controller="menuController" data-ng-init="init(\'header\')"></div>-->\n        </div>\n    </li>\n', 1614012969),
	(1, 16, 58, 'Header Menu', '    <li class="text-center">\n        <a href="http://herran.local/index.php/contact-us">\n            <picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6314/5511/0299/menu_contact.png" alt="#"></picture>        </a>\n    </li>\n', 1614012969),
	(1, 17, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1614094923),
	(1, 17, 59, 'Slider', '<script>\n$(document).ready(function(){\n    $(function () {\n        $("#ccm-image-slider-59").responsiveSlides({\n            prevText: "",   // String: Text for the "previous" button\n            nextText: "",\n                        pager: true\n                    });\n    });\n});\n</script>\n\n<div class="ccm-image-slider-container ccm-block-image-slider-pages" >\n    <div class="ccm-image-slider">\n        <div class="ccm-image-slider-inner">\n\n                <ul class="rslides" id="ccm-image-slider-59">\n                            <li>\n                                                <img src="/application/files/7514/5624/1950/slide_sample.png" alt="Good & Tasty" width="760" height="331">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">Good & Tasty</h2>\n                                                        </div>\n                </li>\n                            <li>\n                                                <img src="/application/files/7414/5624/1997/kababayan_ed.jpg" alt="Kababayan" width="900" height="600">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">Kababayan</h2>\n                                                        </div>\n                </li>\n                            <li>\n                                                <img src="/application/files/3814/5624/2028/special_mamon_ed.jpg" alt="Special Mamon" width="900" height="600">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">Special Mamon</h2>\n                                                        </div>\n                </li>\n                            <li>\n                                                <img src="/application/files/8814/5624/2050/taisan_cake.jpg" alt="Taisan Cake" width="900" height="600">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">Taisan Cake</h2>\n                                                        </div>\n                </li>\n                    </ul>\n                </div>\n\n    </div>\n</div>\n', 1614176580),
	(1, 18, 10, 'Header Logo', '<picture><!--[if IE 9]><video style=\'display: none;\'><![endif]--><!--[if IE 9]></video><![endif]--><img src="/application/files/6214/5467/7237/logo_header.png" alt="#" class="ccm-image-block img-responsive bID-10"></picture>\n', 1614176994),
	(127, 1, 2, 'Primary', '\n<h1>Welcome Back</h1>\n<br/>\n\n<p><span class="label notice">concrete5 Update</span> The latest version of concrete5 is <strong>5.7.5.6</strong>. You are currently running concrete5 version <strong>5.7.5.3</strong>. <a class="" href="http://herran.local/index.php/dashboard/system/backup_restore/update">Learn more and update.</a></p>\n\n\n\n', 1456990482),
	(127, 1, 4, 'Secondary 1', '<div>\n<h3>Concrete5 Picked for U.S. Army MWR Unified Web Presence</h3>\r\n<p>The U.S. Army Family, Morale, Welfare and Recreation (MWR) program supports Soldiers, Families and the more than 3 million individuals associated with the U.S. Army. </p>\r\n<p><a href="http://www.concrete5.org/about/blog/concrete5-sightings/concrete5-picked-for-u-s-army-mwr-unified-web-presence/">Read Full Post</a></p></div>\n\n', 1456911290),
	(127, 1, 5, 'Secondary 2', '<div>\n<h3>What\'s coming in 2016</h3>\r\n<p>We’ve got huge plans and big expectations for 2016, and you need to know all about them. The last couple of years have been full of change for concrete5, and we’re really seeing all that come together now. Tune in to learn what we’re working and how it will help your business.</p>\r\n<p><a href="https://youtu.be/t0mcMwydXo0">Watch the Video</a></p></div>\n\n', 1456911291),
	(127, 1, 6, 'Secondary 3', '<h6>Featured Theme</h6>\n	<div class="clearfix">\n	<img src="https://www.concrete5.org/files/7814/3955/4790/theme_vedana_icon.png" width="50" height="50" class="pull-right" style="margin-left: 10px; margin-bottom: 10px" />\n	<h4>Vedana</h4>\n	<p>A perfectly crafted template that uses all of the power of concrete5.7</p>\n	</div>\n	\n	<a href="https://www.concrete5.org/marketplace/themes/vedana" class="btn btn-default">Learn More</a>\n', 1456911286),
	(127, 1, 7, 'Secondary 4', '<h6>Featured Add-On</h6>\n	<div class="clearfix">\n		<img src="https://www.concrete5.org/files/3614/4611/4911/easy_image_gallery_icon.png" width="50" height="50" class="pull-right" style="margin-left: 10px; margin-bottom: 10px" />\n	<h4>Easy Image Gallery</h4>\n	<p>Easy Image made gallery easy for your client</p>\n	</div>\n	\n	<a href="https://www.concrete5.org/marketplace/addons/easy-image-gallery" class="btn btn-default">Learn More</a>\n', 1456911288),
	(127, 1, 8, 'Secondary 5', '<div>\n<style type="text/css">\n\ndiv.deal-of-day { padding-left: 30px; }\ndiv.deal-of-day p { margin-bottom: 10px;}\ndiv.deal-of-day h4 { margin-bottom: 8px;}\n\n.deal-of-day span.deal-of-day-offer-marketplace-icon { \n	display: block;\n	float: left;\n	width: 40px;\n}\n\n.deal-of-day .deal-of-day-offer-description {\n	\n}\n\n.deal-of-day .deal-of-day-offer-deal-description {\n	display: block;\n	float: right;\n	width: 80%;\n}\n.deal-of-day br { clear: both; }\n\n.deal-of-day .deal-of-day-offer-marketplace-title { display: none;}\n.deal-of-day .deal-of-day-offer-marketplace-description { display: none;}\n\n.deal-of-day .deal-of-day-offer-deal-description span { clear:both; }\n\n.deal-of-day .deal-of-day-offer-addons { \n	font-size: 10px; \n	text-transform: uppercase;\n	color: #999;\n}\n</style>\n\n<div id="deal-of-day-0" class="deal-of-day">\n	<h6>Marketplace Deal of the Day</h6>\n		<div class="deal">\n			<a href="http://www.concrete5.org/marketplace/deal/" target="_blank"><h4>5.7 Domain Mapper Discount</h4></a>\n			<div class="deal-summary">\n				\n						\n						<p class="deal-of-day-offer-description">\n							Save 30% on the multi-domain mapper for version 7 of concrete5.						</p>\n						<p class="deal-of-day-offer-addons">\n												Addon:\n						\n						<span>Domain Mapper</span>						</p>\n						\n										<div class="deal-link">\n					<a class="btn btn-default" href="http://www.concrete5.org/marketplace/deal/" target="_blank">\n						$87.50 - Get the Deal \n					</a>\n				</div>\n			</div>\n		</div>\n		</div></div>\n\n	<div class="newsflow-paging-next"><a href="javascript:void(0)" onclick="ConcreteNewsflowDialog.loadEdition(\'341\')"><i class="fa fa-chevron-right"></i></a></div>\n', 1456911292);
/*!40000 ALTER TABLE `collectionversionblocksoutputcache` ENABLE KEYS */;


-- Dumping structure for table herran.collectionversionblockstyles
CREATE TABLE IF NOT EXISTS `collectionversionblockstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `bID` (`bID`,`issID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collectionversionblockstyles: ~0 rows (approximately)
DELETE FROM `collectionversionblockstyles`;
/*!40000 ALTER TABLE `collectionversionblockstyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionblockstyles` ENABLE KEYS */;


-- Dumping structure for table herran.collectionversionfeatureassignments
CREATE TABLE IF NOT EXISTS `collectionversionfeatureassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collectionversionfeatureassignments: ~5 rows (approximately)
DELETE FROM `collectionversionfeatureassignments`;
/*!40000 ALTER TABLE `collectionversionfeatureassignments` DISABLE KEYS */;
INSERT INTO `collectionversionfeatureassignments` (`cID`, `cvID`, `faID`) VALUES
	(153, 2, 1),
	(153, 3, 1),
	(153, 4, 1),
	(153, 5, 1),
	(153, 6, 1);
/*!40000 ALTER TABLE `collectionversionfeatureassignments` ENABLE KEYS */;


-- Dumping structure for table herran.collectionversionrelatededits
CREATE TABLE IF NOT EXISTS `collectionversionrelatededits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collectionversionrelatededits: ~2 rows (approximately)
DELETE FROM `collectionversionrelatededits`;
/*!40000 ALTER TABLE `collectionversionrelatededits` DISABLE KEYS */;
INSERT INTO `collectionversionrelatededits` (`cID`, `cvID`, `cRelationID`, `cvRelationID`) VALUES
	(1, 4, 153, 2),
	(1, 8, 158, 7);
/*!40000 ALTER TABLE `collectionversionrelatededits` ENABLE KEYS */;


-- Dumping structure for table herran.collectionversions
CREATE TABLE IF NOT EXISTS `collectionversions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `cvAuthorUID` (`cvAuthorUID`),
  KEY `cvApproverUID` (`cvApproverUID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collectionversions: ~224 rows (approximately)
DELETE FROM `collectionversions`;
/*!40000 ALTER TABLE `collectionversions` DISABLE KEYS */;
INSERT INTO `collectionversions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `pThemeID`, `pTemplateID`, `cvActivateDatetime`) VALUES
	(1, 1, 'Home', 'home', '', '2016-01-14 08:11:05', '2016-01-14 08:11:05', 'Initial Version', 0, 0, 1, NULL, 3, 5, NULL),
	(1, 2, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-01-14 09:14:34', 'New Version 2', 0, 0, 1, 1, 3, 5, NULL),
	(1, 3, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-01-14 09:14:51', 'New Version 3', 0, 0, 1, 1, 3, 6, NULL),
	(1, 4, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-05 13:01:08', 'Version 4', 0, 0, 1, NULL, 3, 6, NULL),
	(1, 5, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-05 13:09:01', 'Version 5', 0, 0, 1, 1, 3, 6, NULL),
	(1, 6, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-05 13:53:21', 'Version 6', 0, 0, 1, 1, 3, 6, NULL),
	(1, 7, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-05 17:12:04', 'Version 7', 0, 0, 1, 1, 3, 6, NULL),
	(1, 8, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-10 12:23:09', 'Version 8', 0, 0, 1, NULL, 3, 6, NULL),
	(1, 9, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-10 13:15:19', 'New Version 9', 0, 0, 1, 1, 3, 6, NULL),
	(1, 10, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-10 13:17:22', 'Version 10', 0, 0, 1, 1, 3, 6, NULL),
	(1, 11, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-10 13:20:35', 'Version 11', 0, 0, 1, 1, 3, 6, NULL),
	(1, 12, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-10 14:30:45', 'Version 12', 0, 0, 1, 1, 3, 6, NULL),
	(1, 13, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-22 13:32:58', 'Version 13', 0, 0, 1, 1, 3, 6, NULL),
	(1, 14, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-22 15:07:20', 'Version 14', 0, 0, 1, 1, 3, 6, NULL),
	(1, 15, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-22 15:10:09', 'Version 15', 0, 0, 1, 1, 3, 6, NULL),
	(1, 16, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-22 15:11:07', 'New Version 16', 0, 0, 1, 1, 3, 6, NULL),
	(1, 17, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-23 15:39:40', 'Version 17', 0, 0, 1, 1, 3, 6, NULL),
	(1, 18, 'Home', 'home', '', '2016-01-14 08:11:00', '2016-02-24 14:29:50', 'Version 18', 1, 0, 1, 1, 3, 6, NULL),
	(2, 1, 'Dashboard', 'dashboard', '', '2016-01-14 08:11:33', '2016-01-14 08:11:33', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(3, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2016-01-14 08:11:34', '2016-01-14 08:11:34', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(4, 1, 'Full Sitemap', 'full', '', '2016-01-14 08:11:34', '2016-01-14 08:11:34', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(5, 1, 'Flat View', 'explore', '', '2016-01-14 08:11:34', '2016-01-14 08:11:34', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(6, 1, 'Page Search', 'search', '', '2016-01-14 08:11:35', '2016-01-14 08:11:35', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(7, 1, 'Files', 'files', 'All documents and images.', '2016-01-14 08:11:35', '2016-01-14 08:11:35', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(8, 1, 'File Manager', 'search', '', '2016-01-14 08:11:35', '2016-01-14 08:11:35', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(9, 1, 'Attributes', 'attributes', '', '2016-01-14 08:11:35', '2016-01-14 08:11:35', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(10, 1, 'File Sets', 'sets', '', '2016-01-14 08:11:36', '2016-01-14 08:11:36', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(11, 1, 'Add File Set', 'add_set', '', '2016-01-14 08:11:36', '2016-01-14 08:11:36', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(12, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2016-01-14 08:11:36', '2016-01-14 08:11:36', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(13, 1, 'Search Users', 'search', '', '2016-01-14 08:11:36', '2016-01-14 08:11:36', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(14, 1, 'User Groups', 'groups', '', '2016-01-14 08:11:36', '2016-01-14 08:11:36', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(15, 1, 'Attributes', 'attributes', '', '2016-01-14 08:11:37', '2016-01-14 08:11:37', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(16, 1, 'Add User', 'add', '', '2016-01-14 08:11:37', '2016-01-14 08:11:37', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(17, 1, 'Add Group', 'add_group', '', '2016-01-14 08:11:37', '2016-01-14 08:11:37', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(18, 1, 'Move Multiple Groups', 'bulkupdate', '', '2016-01-14 08:11:37', '2016-01-14 08:11:37', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(19, 1, 'Group Sets', 'group_sets', '', '2016-01-14 08:11:37', '2016-01-14 08:11:37', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(20, 1, 'Community Points', 'points', NULL, '2016-01-14 08:11:38', '2016-01-14 08:11:38', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(21, 1, 'Assign Points', 'assign', NULL, '2016-01-14 08:11:38', '2016-01-14 08:11:38', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(22, 1, 'Actions', 'actions', NULL, '2016-01-14 08:11:38', '2016-01-14 08:11:38', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(23, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2016-01-14 08:11:38', '2016-01-14 08:11:38', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(24, 1, 'Form Results', 'forms', 'Get submission data.', '2016-01-14 08:11:38', '2016-01-14 08:11:38', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(25, 1, 'Surveys', 'surveys', '', '2016-01-14 08:11:39', '2016-01-14 08:11:39', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(26, 1, 'Logs', 'logs', '', '2016-01-14 08:11:39', '2016-01-14 08:11:39', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(27, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2016-01-14 08:11:39', '2016-01-14 08:11:39', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(28, 1, 'Themes', 'themes', 'Reskin your site.', '2016-01-14 08:11:39', '2016-01-14 08:11:39', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(29, 1, 'Inspect', 'inspect', '', '2016-01-14 08:11:39', '2016-01-14 08:11:39', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(30, 1, 'Page Types', 'types', '', '2016-01-14 08:11:39', '2016-01-14 08:11:39', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(31, 1, 'Organize Page Type Order', 'organize', '', '2016-01-14 08:11:40', '2016-01-14 08:11:40', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(32, 1, 'Add Page Type', 'add', '', '2016-01-14 08:11:40', '2016-01-14 08:11:40', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(33, 1, 'Compose Form', 'form', '', '2016-01-14 08:11:40', '2016-01-14 08:11:40', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(34, 1, 'Defaults and Output', 'output', '', '2016-01-14 08:11:40', '2016-01-14 08:11:40', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(35, 1, 'Page Type Attributes', 'attributes', '', '2016-01-14 08:11:40', '2016-01-14 08:11:40', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(36, 1, 'Page Type Permissions', 'permissions', '', '2016-01-14 08:11:41', '2016-01-14 08:11:41', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(37, 1, 'Page Templates', 'templates', 'Form factors for pages in your site.', '2016-01-14 08:11:41', '2016-01-14 08:11:41', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(38, 1, 'Add Page Template', 'add', 'Add page templates to your site.', '2016-01-14 08:11:41', '2016-01-14 08:11:41', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(39, 1, 'Attributes', 'attributes', '', '2016-01-14 08:11:41', '2016-01-14 08:11:41', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(40, 1, 'Single Pages', 'single', '', '2016-01-14 08:11:41', '2016-01-14 08:11:41', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(41, 1, 'RSS Feeds', 'feeds', '', '2016-01-14 08:11:42', '2016-01-14 08:11:42', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(42, 1, 'Conversations', 'conversations', '', '2016-01-14 08:11:42', '2016-01-14 08:11:42', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(43, 1, 'Messages', 'messages', '', '2016-01-14 08:11:42', '2016-01-14 08:11:42', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(44, 1, 'Workflow', 'workflow', '', '2016-01-14 08:11:42', '2016-01-14 08:11:42', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(45, 1, 'Waiting for Me', 'me', '', '2016-01-14 08:11:42', '2016-01-14 08:11:42', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(46, 1, 'Workflow List', 'workflows', '', '2016-01-14 08:11:42', '2016-01-14 08:11:42', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(47, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2016-01-14 08:11:43', '2016-01-14 08:11:43', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(48, 1, 'Stacks', 'stacks', 'Share content across your site.', '2016-01-14 08:11:43', '2016-01-14 08:11:43', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(49, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2016-01-14 08:11:43', '2016-01-14 08:11:43', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(50, 1, 'Stack List', 'list', '', '2016-01-14 08:11:43', '2016-01-14 08:11:43', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(51, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2016-01-14 08:11:43', '2016-01-14 08:11:43', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(52, 1, 'Extend concrete5', 'extend', '', '2016-01-14 08:11:44', '2016-01-14 08:11:44', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(53, 1, 'Dashboard', 'news', '', '2016-01-14 08:11:44', '2016-01-14 08:11:44', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(54, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2016-01-14 08:11:44', '2016-01-14 08:11:44', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(55, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2016-01-14 08:11:44', '2016-01-14 08:11:44', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(56, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2016-01-14 08:11:44', '2016-01-14 08:11:44', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(57, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2016-01-14 08:11:45', '2016-01-14 08:11:45', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(58, 1, 'Get More Add-Ons', 'addons', 'Download add-ons from concrete5.org.', '2016-01-14 08:11:45', '2016-01-14 08:11:45', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(59, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2016-01-14 08:11:45', '2016-01-14 08:11:45', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(60, 1, 'Basics', 'basics', 'Basic information about your website.', '2016-01-14 08:11:45', '2016-01-14 08:11:45', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(61, 1, 'Site Name', 'name', '', '2016-01-14 08:11:46', '2016-01-14 08:11:46', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(62, 1, 'Accessibility', 'accessibility', '', '2016-01-14 08:11:46', '2016-01-14 08:11:46', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(63, 1, 'Social Links', 'social', '', '2016-01-14 08:11:46', '2016-01-14 08:11:46', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(64, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2016-01-14 08:11:46', '2016-01-14 08:11:46', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(65, 1, 'Rich Text Editor', 'editor', '', '2016-01-14 08:11:46', '2016-01-14 08:11:46', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(66, 1, 'Languages', 'multilingual', '', '2016-01-14 08:11:46', '2016-01-14 08:11:46', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(67, 1, 'Time Zone', 'timezone', '', '2016-01-14 08:11:47', '2016-01-14 08:11:47', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(68, 1, 'Multilingual', 'multilingual', 'Run your site in multiple languages.', '2016-01-14 08:11:47', '2016-01-14 08:11:47', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(69, 1, 'Multilingual Setup', 'setup', '', '2016-01-14 08:11:47', '2016-01-14 08:11:47', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(70, 1, 'Copy Languages', 'copy', '', '2016-01-14 08:11:47', '2016-01-14 08:11:47', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(71, 1, 'Page Report', 'page_report', '', '2016-01-14 08:11:47', '2016-01-14 08:11:47', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(72, 1, 'Translate Site Interface', 'translate_interface', '', '2016-01-14 08:11:48', '2016-01-14 08:11:48', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(73, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs and tracking codes.', '2016-01-14 08:11:48', '2016-01-14 08:11:48', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(74, 1, 'URLs and Redirection', 'urls', '', '2016-01-14 08:11:48', '2016-01-14 08:11:48', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(75, 1, 'Bulk SEO Updater', 'bulk', '', '2016-01-14 08:11:48', '2016-01-14 08:11:48', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(76, 1, 'Tracking Codes', 'codes', '', '2016-01-14 08:11:48', '2016-01-14 08:11:48', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(77, 1, 'Excluded URL Word List', 'excluded', '', '2016-01-14 08:11:49', '2016-01-14 08:11:49', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(78, 1, 'Search Index', 'searchindex', '', '2016-01-14 08:11:49', '2016-01-14 08:11:49', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(79, 1, 'Files', 'files', '', '2016-01-14 08:11:49', '2016-01-14 08:11:49', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(80, 1, 'File Manager Permissions', 'permissions', '', '2016-01-14 08:11:49', '2016-01-14 08:11:49', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(81, 1, 'Allowed File Types', 'filetypes', '', '2016-01-14 08:11:49', '2016-01-14 08:11:49', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(82, 1, 'Thumbnails', 'thumbnails', '', '2016-01-14 08:11:50', '2016-01-14 08:11:50', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(83, 1, 'File Storage Locations', 'storage', '', '2016-01-14 08:11:50', '2016-01-14 08:11:50', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(84, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2016-01-14 08:11:50', '2016-01-14 08:11:50', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(85, 1, 'Cache & Speed Settings', 'cache', '', '2016-01-14 08:11:50', '2016-01-14 08:11:50', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(86, 1, 'Clear Cache', 'clearcache', '', '2016-01-14 08:11:50', '2016-01-14 08:11:50', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(87, 1, 'Automated Jobs', 'jobs', '', '2016-01-14 08:11:51', '2016-01-14 08:11:51', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(88, 1, 'Database Query Log', 'query_log', '', '2016-01-14 08:11:51', '2016-01-14 08:11:51', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(89, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2016-01-14 08:11:51', '2016-01-14 08:11:51', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(90, 1, 'Site Access', 'site', '', '2016-01-14 08:11:51', '2016-01-14 08:11:51', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(91, 1, 'Task Permissions', 'tasks', '', '2016-01-14 08:11:52', '2016-01-14 08:11:52', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(92, 1, 'User Permissions', 'users', '', '2016-01-14 08:11:52', '2016-01-14 08:11:52', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(93, 1, 'Advanced Permissions', 'advanced', '', '2016-01-14 08:11:52', '2016-01-14 08:11:52', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(94, 1, 'IP Blacklist', 'blacklist', '', '2016-01-14 08:11:52', '2016-01-14 08:11:52', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(95, 1, 'Captcha Setup', 'captcha', '', '2016-01-14 08:11:53', '2016-01-14 08:11:53', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(96, 1, 'Spam Control', 'antispam', '', '2016-01-14 08:11:53', '2016-01-14 08:11:53', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(97, 1, 'Maintenance Mode', 'maintenance', '', '2016-01-14 08:11:53', '2016-01-14 08:11:53', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(98, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2016-01-14 08:11:53', '2016-01-14 08:11:53', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(99, 1, 'Login Destination', 'postlogin', '', '2016-01-14 08:11:54', '2016-01-14 08:11:54', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(100, 1, 'Public Profiles', 'profiles', '', '2016-01-14 08:11:54', '2016-01-14 08:11:54', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(101, 1, 'Public Registration', 'open', '', '2016-01-14 08:11:54', '2016-01-14 08:11:54', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(102, 1, 'Authentication Types', 'authentication', '', '2016-01-14 08:11:54', '2016-01-14 08:11:54', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(103, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2016-01-14 08:11:54', '2016-01-14 08:11:54', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(104, 1, 'SMTP Method', 'method', '', '2016-01-14 08:11:55', '2016-01-14 08:11:55', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(105, 1, 'Test Mail Settings', 'test', '', '2016-01-14 08:11:55', '2016-01-14 08:11:55', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(106, 1, 'Email Importers', 'importers', '', '2016-01-14 08:11:55', '2016-01-14 08:11:55', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(107, 1, 'Conversations', 'conversations', 'Manage your conversations settings', '2016-01-14 08:11:55', '2016-01-14 08:11:55', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(108, 1, 'Settings', 'settings', '', '2016-01-14 08:11:55', '2016-01-14 08:11:55', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(109, 1, 'Community Points', 'points', '', '2016-01-14 08:11:56', '2016-01-14 08:11:56', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(110, 1, 'Banned Words', 'bannedwords', '', '2016-01-14 08:11:56', '2016-01-14 08:11:56', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(111, 1, 'Conversation Permissions', 'permissions', '', '2016-01-14 08:11:56', '2016-01-14 08:11:56', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(112, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2016-01-14 08:11:56', '2016-01-14 08:11:56', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(113, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2016-01-14 08:11:56', '2016-01-14 08:11:56', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(114, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2016-01-14 08:11:57', '2016-01-14 08:11:57', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(115, 1, 'Topics', 'topics', '', '2016-01-14 08:11:57', '2016-01-14 08:11:57', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(116, 1, 'Add Topic Tree', 'add', '', '2016-01-14 08:11:57', '2016-01-14 08:11:57', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(117, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2016-01-14 08:11:57', '2016-01-14 08:11:57', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(118, 1, 'Environment Information', 'info', '', '2016-01-14 08:11:58', '2016-01-14 08:11:58', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(119, 1, 'Debug Settings', 'debug', '', '2016-01-14 08:11:58', '2016-01-14 08:11:58', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(120, 1, 'Logging Settings', 'logging', '', '2016-01-14 08:11:58', '2016-01-14 08:11:58', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(121, 1, 'Proxy Server', 'proxy', '', '2016-01-14 08:11:58', '2016-01-14 08:11:58', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(122, 1, 'Database Entities', 'entities', '', '2016-01-14 08:11:59', '2016-01-14 08:11:59', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(123, 1, 'Backup & Restore', 'backup', 'Backup or restore your website.', '2016-01-14 08:11:59', '2016-01-14 08:11:59', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(124, 1, 'Backup Database', 'backup', '', '2016-01-14 08:11:59', '2016-01-14 08:11:59', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(125, 1, 'Update concrete5', 'update', '', '2016-01-14 08:11:59', '2016-01-14 08:11:59', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(126, 1, 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2016-01-14 08:12:03', '2016-01-14 08:12:03', 'Initial Version', 1, 0, 1, NULL, 3, 4, NULL),
	(127, 1, 'Customize Dashboard Home', 'home', '', '2016-01-14 08:12:03', '2016-01-14 08:12:03', 'Initial Version', 1, 0, 1, NULL, 3, 2, NULL),
	(128, 1, 'Drafts', '!drafts', '', '2016-01-14 08:12:18', '2016-01-14 08:12:18', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(129, 1, 'Trash', '!trash', '', '2016-01-14 08:12:18', '2016-01-14 08:12:18', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(130, 1, 'Stacks', '!stacks', '', '2016-01-14 08:12:19', '2016-01-14 08:12:19', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(131, 1, 'Login', 'login', '', '2016-01-14 08:12:19', '2016-01-14 08:12:19', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(132, 1, 'Register', 'register', '', '2016-01-14 08:12:19', '2016-01-14 08:12:19', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(133, 1, 'My Account', 'account', '', '2016-01-14 08:12:19', '2016-01-14 08:12:19', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(134, 1, 'Edit Profile', 'edit_profile', 'Edit your user profile and change password.', '2016-01-14 08:12:19', '2016-01-14 08:12:19', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(135, 1, 'Profile Picture', 'avatar', 'Specify a new image attached to posts or edits.', '2016-01-14 08:12:20', '2016-01-14 08:12:20', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(136, 1, 'Messages', 'messages', 'Inbox for site-specific messages.', '2016-01-14 08:12:20', '2016-01-14 08:12:20', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(137, 1, 'Inbox', 'inbox', '', '2016-01-14 08:12:20', '2016-01-14 08:12:20', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(138, 1, 'Members', 'members', '', '2016-01-14 08:12:20', '2016-01-14 08:12:20', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(139, 1, 'View Profile', 'profile', '', '2016-01-14 08:12:20', '2016-01-14 08:12:20', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(140, 1, 'Directory', 'directory', '', '2016-01-14 08:12:21', '2016-01-14 08:12:21', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(141, 1, 'Page Not Found', 'page_not_found', '', '2016-01-14 08:12:21', '2016-01-14 08:12:21', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(142, 1, 'Page Forbidden', 'page_forbidden', '', '2016-01-14 08:12:21', '2016-01-14 08:12:21', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(143, 1, 'Download File', 'download_file', '', '2016-01-14 08:12:21', '2016-01-14 08:12:21', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(144, 1, '', NULL, NULL, '2016-01-14 08:12:25', '2016-01-14 08:12:25', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL),
	(145, 1, 'Header Site Title', 'header-site-title', NULL, '2016-01-14 08:14:29', '2016-01-14 08:14:29', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(146, 1, 'Header Navigation', 'header-navigation', NULL, '2016-01-14 08:14:29', '2016-01-14 08:14:29', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(147, 1, 'Footer Legal', 'footer-legal', NULL, '2016-01-14 08:14:29', '2016-01-14 08:14:29', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(148, 1, 'Footer Navigation', 'footer-navigation', NULL, '2016-01-14 08:14:29', '2016-01-14 08:14:29', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(149, 1, 'Footer Contact', 'footer-contact', NULL, '2016-01-14 08:14:29', '2016-01-14 08:14:29', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(150, 1, 'Header Search', 'header-search', NULL, '2016-01-25 14:22:20', '2016-01-25 14:22:20', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(151, 1, 'Footer Site Title', 'footer-site-title', NULL, '2016-01-25 14:22:21', '2016-01-25 14:22:21', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(152, 1, 'Footer Social', 'footer-social', NULL, '2016-01-25 14:22:21', '2016-01-25 14:22:21', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL),
	(153, 1, 'Header Logo', 'header-logo', NULL, '2016-02-02 13:16:55', '2016-02-02 13:16:55', 'Initial Version', 0, 0, NULL, NULL, 3, 0, NULL),
	(153, 2, 'Header Logo', 'header-logo', NULL, '2016-02-02 13:16:55', '2016-02-05 13:01:07', 'New Version 2', 0, 0, 1, NULL, 3, 0, NULL),
	(153, 3, 'Header Logo', 'header-logo', NULL, '2016-02-02 13:16:55', '2016-02-22 15:07:20', 'New Version 3', 0, 0, 1, 1, 3, 0, NULL),
	(153, 4, 'Header Logo', 'header-logo', NULL, '2016-02-02 13:16:55', '2016-02-22 15:07:42', 'New Version 4', 0, 0, 1, 1, 3, 0, NULL),
	(153, 5, 'Header Logo', 'header-logo', NULL, '2016-02-02 13:16:55', '2016-02-22 15:07:49', 'New Version 5', 0, 0, 1, 1, 3, 0, NULL),
	(153, 6, 'Header Logo', 'header-logo', NULL, '2016-02-02 13:16:55', '2016-02-22 15:07:56', 'New Version 6', 1, 0, 1, 1, 3, 0, NULL),
	(154, 1, 'About Us', 'about-us', '', '2016-02-05 13:05:06', '2016-02-05 13:05:06', 'Initial Version', 1, 0, 1, 1, 3, 5, NULL),
	(155, 1, 'News', 'new', '', '2016-02-05 13:05:30', '2016-02-05 13:05:30', 'Initial Version', 1, 0, 1, 1, 3, 5, NULL),
	(156, 1, 'Products', 'products', '', '2016-02-05 13:05:53', '2016-02-05 13:05:53', 'Initial Version', 1, 0, 1, 1, 3, 5, NULL),
	(157, 1, 'Contact Us', 'contact-us', '', '2016-02-05 13:06:10', '2016-02-05 13:06:10', 'Initial Version', 1, 0, 1, 1, 3, 5, NULL),
	(158, 1, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-05 13:07:38', 'Initial Version', 0, 0, 1, NULL, 3, 0, NULL),
	(158, 2, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-05 13:09:01', 'New Version 2', 0, 0, 1, 1, 3, 0, NULL),
	(158, 3, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-05 13:53:21', 'New Version 3', 0, 0, 1, 1, 3, 0, NULL),
	(158, 4, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-05 13:53:36', 'New Version 4', 0, 0, 1, 1, 3, 0, NULL),
	(158, 5, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-05 13:54:10', 'New Version 5', 0, 0, 1, 1, 3, 0, NULL),
	(158, 6, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-05 17:12:04', 'New Version 6', 0, 0, 1, 1, 3, 0, NULL),
	(158, 7, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 12:33:41', 'New Version 7', 0, 0, 1, NULL, 3, 0, NULL),
	(158, 8, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 13:15:19', 'New Version 8', 0, 0, 1, 1, 3, 0, NULL),
	(158, 9, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 13:17:22', 'New Version 9', 0, 0, 1, 1, 3, 0, NULL),
	(158, 10, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 13:18:01', 'New Version 10', 0, 0, 1, 1, 3, 0, NULL),
	(158, 11, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 13:18:26', 'New Version 11', 0, 0, 1, 1, 3, 0, NULL),
	(158, 12, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 13:20:35', 'New Version 12', 0, 0, 1, 1, 3, 0, NULL),
	(158, 13, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 14:30:45', 'New Version 13', 0, 0, 1, 1, 3, 0, NULL),
	(158, 14, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 14:30:56', 'New Version 14', 0, 0, 1, 1, 3, 0, NULL),
	(158, 15, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 14:31:21', 'New Version 15', 0, 0, 1, 1, 3, 0, NULL),
	(158, 16, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 14:31:23', 'New Version 16', 0, 0, 1, 1, 3, 0, NULL),
	(158, 17, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 14:31:24', 'New Version 17', 0, 0, 1, 1, 3, 0, NULL),
	(158, 18, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 14:31:25', 'New Version 18', 0, 0, 1, 1, 3, 0, NULL),
	(158, 19, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-10 14:31:29', 'New Version 19', 0, 0, 1, 1, 3, 0, NULL),
	(158, 20, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 13:31:09', 'New Version 20', 0, 0, 1, NULL, 3, 0, NULL),
	(158, 21, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 13:32:40', 'New Version 21', 0, 0, 1, NULL, 3, 0, NULL),
	(158, 22, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 13:32:57', 'New Version 22', 0, 0, 1, 1, 3, 0, NULL),
	(158, 23, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 13:35:57', 'New Version 23', 0, 0, 1, 1, 3, 0, NULL),
	(158, 24, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 13:36:27', 'New Version 24', 0, 0, 1, NULL, 3, 0, NULL),
	(158, 25, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 13:39:09', 'New Version 25', 0, 0, 1, 1, 3, 0, NULL),
	(158, 26, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:13:57', 'New Version 26', 0, 0, 1, 1, 3, 0, NULL),
	(158, 27, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:14:17', 'New Version 27', 0, 0, 1, 1, 3, 0, NULL),
	(158, 28, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:21:41', 'New Version 28', 0, 0, 1, NULL, 3, 0, NULL),
	(158, 29, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:30:11', 'New Version 29', 0, 0, 1, 1, 3, 0, NULL),
	(158, 30, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:30:50', 'New Version 30', 0, 0, 1, 1, 3, 0, NULL),
	(158, 31, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:30:58', 'New Version 31', 0, 0, 1, 1, 3, 0, NULL),
	(158, 32, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:34:01', 'New Version 32', 0, 0, 1, 1, 3, 0, NULL),
	(158, 33, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:34:15', 'New Version 33', 0, 0, 1, 1, 3, 0, NULL),
	(158, 34, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:54:54', 'New Version 34', 0, 0, 1, 1, 3, 0, NULL),
	(158, 35, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:57:52', 'New Version 35', 0, 0, 1, 1, 3, 0, NULL),
	(158, 36, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:58:23', 'New Version 36', 0, 0, 1, 1, 3, 0, NULL),
	(158, 37, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:58:42', 'New Version 37', 0, 0, 1, 1, 3, 0, NULL),
	(158, 38, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:59:34', 'New Version 38', 0, 0, 1, 1, 3, 0, NULL),
	(158, 39, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 14:59:49', 'New Version 39', 0, 0, 1, 1, 3, 0, NULL),
	(158, 40, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 15:07:20', 'New Version 40', 0, 0, 1, 1, 3, 0, NULL),
	(158, 41, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 15:07:42', 'New Version 41', 0, 0, 1, 1, 3, 0, NULL),
	(158, 42, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 15:07:49', 'New Version 42', 0, 0, 1, 1, 3, 0, NULL),
	(158, 43, 'Header Menu', 'header-menu', NULL, '2016-02-05 13:07:38', '2016-02-22 15:07:56', 'New Version 43', 1, 0, 1, 1, 3, 0, NULL),
	(159, 1, 'Bread', 'bread', '', '2016-02-05 13:51:08', '2016-02-05 13:51:08', 'Initial Version', 1, 0, 1, 1, 3, 5, NULL),
	(160, 1, 'Cakes', 'cakes', '', '2016-02-05 13:51:23', '2016-02-05 13:51:23', 'Initial Version', 1, 0, 1, 1, 3, 5, NULL),
	(161, 1, 'Chinese Deli', 'chinese-deli', '', '2016-02-05 13:51:39', '2016-02-05 13:51:39', 'Initial Version', 1, 0, 1, 1, 3, 5, NULL),
	(162, 1, 'Hopia', 'hopia', '', '2016-02-05 13:51:59', '2016-02-05 13:51:59', 'Initial Version', 1, 0, 1, 1, 3, 5, NULL),
	(163, 1, 'Pastries', 'pastries', '', '2016-02-05 13:52:10', '2016-02-05 13:52:10', 'Initial Version', 1, 0, 1, 1, 3, 5, NULL),
	(164, 1, '', NULL, NULL, '2016-02-17 08:17:38', '2016-02-17 08:17:38', 'Initial Version', 1, 0, NULL, NULL, 0, 6, NULL);
/*!40000 ALTER TABLE `collectionversions` ENABLE KEYS */;


-- Dumping structure for table herran.collectionversionthemecustomstyles
CREATE TABLE IF NOT EXISTS `collectionversionthemecustomstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  KEY `pThemeID` (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.collectionversionthemecustomstyles: ~0 rows (approximately)
DELETE FROM `collectionversionthemecustomstyles`;
/*!40000 ALTER TABLE `collectionversionthemecustomstyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectionversionthemecustomstyles` ENABLE KEYS */;


-- Dumping structure for table herran.config
CREATE TABLE IF NOT EXISTS `config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  KEY `configGroup` (`configGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.config: ~3 rows (approximately)
DELETE FROM `config`;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`configNamespace`, `configGroup`, `configItem`, `configValue`) VALUES
	('', 'concrete', 'security.token.encryption', 'z3c8GCxolFlQX69mCepH1FlY5TXtttWW21GhhQjji05y3VvoB6XI8HQ9oP4tY8ys'),
	('', 'concrete', 'security.token.jobs', 'V71FOBM03VfSWGIe7JCxUtGRoPh5vOrpk8iHSgr3Cggx5i9WoJBsBbk3mADMTeyC'),
	('', 'concrete', 'security.token.validation', 'ORGZ1kNA4Y3xe0AO0LVQyLVxH8tCjYIS52ncB0ZSVnSlqgF5gM2i59TEss6xHDfK');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;


-- Dumping structure for table herran.configstore
CREATE TABLE IF NOT EXISTS `configstore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`,`cfKey`),
  KEY `pkgID` (`pkgID`,`cfKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.configstore: ~2 rows (approximately)
DELETE FROM `configstore`;
/*!40000 ALTER TABLE `configstore` DISABLE KEYS */;
INSERT INTO `configstore` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
	('MAIN_HELP_LAST_VIEWED', '2016-01-14 16:14:30', '1452759270', 1, 0),
	('NEWSFLOW_LAST_VIEWED', '2016-01-14 16:12:27', '1456904081', 1, 0);
/*!40000 ALTER TABLE `configstore` ENABLE KEYS */;


-- Dumping structure for table herran.conversationdiscussions
CREATE TABLE IF NOT EXISTS `conversationdiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cnvDiscussionID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationdiscussions: ~0 rows (approximately)
DELETE FROM `conversationdiscussions`;
/*!40000 ALTER TABLE `conversationdiscussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationdiscussions` ENABLE KEYS */;


-- Dumping structure for table herran.conversationeditors
CREATE TABLE IF NOT EXISTS `conversationeditors` (
  `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvEditorID`),
  KEY `pkgID` (`pkgID`,`cnvEditorHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationeditors: ~3 rows (approximately)
DELETE FROM `conversationeditors`;
/*!40000 ALTER TABLE `conversationeditors` DISABLE KEYS */;
INSERT INTO `conversationeditors` (`cnvEditorID`, `cnvEditorHandle`, `cnvEditorName`, `cnvEditorIsActive`, `pkgID`) VALUES
	(1, 'plain_text', 'Plain Text', 1, 0),
	(2, 'markdown', 'Markdown', 0, 0),
	(3, 'redactor', 'Redactor', 0, 0);
/*!40000 ALTER TABLE `conversationeditors` ENABLE KEYS */;


-- Dumping structure for table herran.conversationfeaturedetailassignments
CREATE TABLE IF NOT EXISTS `conversationfeaturedetailassignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faID`),
  KEY `cnvID` (`cnvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationfeaturedetailassignments: ~0 rows (approximately)
DELETE FROM `conversationfeaturedetailassignments`;
/*!40000 ALTER TABLE `conversationfeaturedetailassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationfeaturedetailassignments` ENABLE KEYS */;


-- Dumping structure for table herran.conversationflaggedmessages
CREATE TABLE IF NOT EXISTS `conversationflaggedmessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationflaggedmessages: ~0 rows (approximately)
DELETE FROM `conversationflaggedmessages`;
/*!40000 ALTER TABLE `conversationflaggedmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationflaggedmessages` ENABLE KEYS */;


-- Dumping structure for table herran.conversationflaggedmessagetypes
CREATE TABLE IF NOT EXISTS `conversationflaggedmessagetypes` (
  `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cnvMessageFlagTypeID`),
  UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationflaggedmessagetypes: ~0 rows (approximately)
DELETE FROM `conversationflaggedmessagetypes`;
/*!40000 ALTER TABLE `conversationflaggedmessagetypes` DISABLE KEYS */;
INSERT INTO `conversationflaggedmessagetypes` (`cnvMessageFlagTypeID`, `cnvMessageFlagTypeHandle`) VALUES
	(1, 'spam');
/*!40000 ALTER TABLE `conversationflaggedmessagetypes` ENABLE KEYS */;


-- Dumping structure for table herran.conversationmessageattachments
CREATE TABLE IF NOT EXISTS `conversationmessageattachments` (
  `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cnvMessageAttachmentID`),
  KEY `cnvMessageID` (`cnvMessageID`),
  KEY `fID` (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationmessageattachments: ~0 rows (approximately)
DELETE FROM `conversationmessageattachments`;
/*!40000 ALTER TABLE `conversationmessageattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationmessageattachments` ENABLE KEYS */;


-- Dumping structure for table herran.conversationmessageratings
CREATE TABLE IF NOT EXISTS `conversationmessageratings` (
  `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvMessageRatingID`),
  KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationmessageratings: ~0 rows (approximately)
DELETE FROM `conversationmessageratings`;
/*!40000 ALTER TABLE `conversationmessageratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationmessageratings` ENABLE KEYS */;


-- Dumping structure for table herran.conversationmessages
CREATE TABLE IF NOT EXISTS `conversationmessages` (
  `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0',
  PRIMARY KEY (`cnvMessageID`),
  KEY `cnvID` (`cnvID`),
  KEY `cnvMessageParentID` (`cnvMessageParentID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationmessages: ~0 rows (approximately)
DELETE FROM `conversationmessages`;
/*!40000 ALTER TABLE `conversationmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationmessages` ENABLE KEYS */;


-- Dumping structure for table herran.conversationpermissionaddmessageaccesslist
CREATE TABLE IF NOT EXISTS `conversationpermissionaddmessageaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationpermissionaddmessageaccesslist: ~0 rows (approximately)
DELETE FROM `conversationpermissionaddmessageaccesslist`;
/*!40000 ALTER TABLE `conversationpermissionaddmessageaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationpermissionaddmessageaccesslist` ENABLE KEYS */;


-- Dumping structure for table herran.conversationpermissionassignments
CREATE TABLE IF NOT EXISTS `conversationpermissionassignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationpermissionassignments: ~8 rows (approximately)
DELETE FROM `conversationpermissionassignments`;
/*!40000 ALTER TABLE `conversationpermissionassignments` DISABLE KEYS */;
INSERT INTO `conversationpermissionassignments` (`cnvID`, `pkID`, `paID`) VALUES
	(0, 66, 94),
	(0, 67, 95),
	(0, 70, 96),
	(0, 69, 97),
	(0, 71, 98),
	(0, 68, 99),
	(0, 72, 100),
	(0, 73, 101);
/*!40000 ALTER TABLE `conversationpermissionassignments` ENABLE KEYS */;


-- Dumping structure for table herran.conversationratingtypes
CREATE TABLE IF NOT EXISTS `conversationratingtypes` (
  `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cnvRatingTypeID`),
  UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationratingtypes: ~2 rows (approximately)
DELETE FROM `conversationratingtypes`;
/*!40000 ALTER TABLE `conversationratingtypes` DISABLE KEYS */;
INSERT INTO `conversationratingtypes` (`cnvRatingTypeID`, `cnvRatingTypeHandle`, `cnvRatingTypeName`, `cnvRatingTypeCommunityPoints`, `pkgID`) VALUES
	(1, 'up_vote', 'Up Vote', 1, 0),
	(2, 'down_vote', 'Down Vote', 0, 0);
/*!40000 ALTER TABLE `conversationratingtypes` ENABLE KEYS */;


-- Dumping structure for table herran.conversations
CREATE TABLE IF NOT EXISTS `conversations` (
  `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cnvID`),
  KEY `cID` (`cID`),
  KEY `cnvParentMessageID` (`cnvParentMessageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversations: ~0 rows (approximately)
DELETE FROM `conversations`;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;


-- Dumping structure for table herran.conversationsubscriptions
CREATE TABLE IF NOT EXISTS `conversationsubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S',
  PRIMARY KEY (`cnvID`,`uID`),
  KEY `cnvID` (`cnvID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.conversationsubscriptions: ~0 rows (approximately)
DELETE FROM `conversationsubscriptions`;
/*!40000 ALTER TABLE `conversationsubscriptions` DISABLE KEYS */;
INSERT INTO `conversationsubscriptions` (`cnvID`, `uID`, `type`) VALUES
	(0, 1, 'S');
/*!40000 ALTER TABLE `conversationsubscriptions` ENABLE KEYS */;


-- Dumping structure for table herran.downloadstatistics
CREATE TABLE IF NOT EXISTS `downloadstatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`),
  KEY `fID` (`fID`,`timestamp`),
  KEY `fvID` (`fID`,`fvID`),
  KEY `uID` (`uID`),
  KEY `rcID` (`rcID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.downloadstatistics: ~0 rows (approximately)
DELETE FROM `downloadstatistics`;
/*!40000 ALTER TABLE `downloadstatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadstatistics` ENABLE KEYS */;


-- Dumping structure for table herran.featureassignments
CREATE TABLE IF NOT EXISTS `featureassignments` (
  `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`faID`),
  KEY `feID` (`feID`),
  KEY `fcID` (`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.featureassignments: ~0 rows (approximately)
DELETE FROM `featureassignments`;
/*!40000 ALTER TABLE `featureassignments` DISABLE KEYS */;
INSERT INTO `featureassignments` (`faID`, `feID`, `fcID`, `fdObject`) VALUES
	(1, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:49:"/application/files/6214/5467/7237/logo_header.png";s:8:"\0*\0width";d:221;s:9:"\0*\0height";d:190;s:7:"\0*\0item";N;s:5:"error";s:0:"";}');
/*!40000 ALTER TABLE `featureassignments` ENABLE KEYS */;


-- Dumping structure for table herran.featurecategories
CREATE TABLE IF NOT EXISTS `featurecategories` (
  `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`fcID`),
  UNIQUE KEY `fcHandle` (`fcHandle`),
  KEY `pkgID` (`pkgID`,`fcID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.featurecategories: ~2 rows (approximately)
DELETE FROM `featurecategories`;
/*!40000 ALTER TABLE `featurecategories` DISABLE KEYS */;
INSERT INTO `featurecategories` (`fcID`, `fcHandle`, `pkgID`) VALUES
	(1, 'collection_version', 0),
	(2, 'gathering_item', 0);
/*!40000 ALTER TABLE `featurecategories` ENABLE KEYS */;


-- Dumping structure for table herran.features
CREATE TABLE IF NOT EXISTS `features` (
  `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`feID`),
  UNIQUE KEY `feHandle` (`feHandle`),
  KEY `pkgID` (`pkgID`,`feID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.features: ~8 rows (approximately)
DELETE FROM `features`;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` (`feID`, `feHandle`, `feScore`, `feHasCustomClass`, `pkgID`) VALUES
	(1, 'title', 1, 0, 0),
	(2, 'link', 1, 0, 0),
	(3, 'author', 1, 0, 0),
	(4, 'date_time', 1, 0, 0),
	(5, 'image', 500, 1, 0),
	(6, 'conversation', 10, 1, 0),
	(7, 'description', 1, 0, 0),
	(8, 'featured', 1000, 0, 0);
/*!40000 ALTER TABLE `features` ENABLE KEYS */;


-- Dumping structure for table herran.fileattributevalues
CREATE TABLE IF NOT EXISTS `fileattributevalues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.fileattributevalues: ~18 rows (approximately)
DELETE FROM `fileattributevalues`;
/*!40000 ALTER TABLE `fileattributevalues` DISABLE KEYS */;
INSERT INTO `fileattributevalues` (`fID`, `fvID`, `akID`, `avID`) VALUES
	(2, 1, 14, 113),
	(2, 1, 15, 114),
	(3, 1, 14, 115),
	(3, 1, 15, 116),
	(4, 1, 14, 117),
	(4, 1, 15, 118),
	(5, 1, 14, 119),
	(5, 1, 15, 120),
	(6, 1, 14, 121),
	(6, 1, 15, 122),
	(7, 1, 14, 123),
	(7, 1, 15, 124),
	(8, 1, 14, 125),
	(8, 1, 15, 126),
	(9, 1, 14, 127),
	(9, 1, 15, 128),
	(10, 1, 14, 129),
	(10, 1, 15, 130),
	(11, 1, 14, 131),
	(11, 1, 15, 132);
/*!40000 ALTER TABLE `fileattributevalues` ENABLE KEYS */;


-- Dumping structure for table herran.fileimagethumbnailtypes
CREATE TABLE IF NOT EXISTS `fileimagethumbnailtypes` (
  `ftTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeWidth` int(11) NOT NULL DEFAULT '0',
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ftTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.fileimagethumbnailtypes: ~2 rows (approximately)
DELETE FROM `fileimagethumbnailtypes`;
/*!40000 ALTER TABLE `fileimagethumbnailtypes` DISABLE KEYS */;
INSERT INTO `fileimagethumbnailtypes` (`ftTypeID`, `ftTypeHandle`, `ftTypeName`, `ftTypeWidth`, `ftTypeHeight`, `ftTypeIsRequired`) VALUES
	(1, 'file_manager_listing', 'File Manager Thumbnails', 60, 60, 1),
	(2, 'file_manager_detail', 'File Manager Detail Thumbnails', 400, NULL, 1);
/*!40000 ALTER TABLE `fileimagethumbnailtypes` ENABLE KEYS */;


-- Dumping structure for table herran.filepermissionassignments
CREATE TABLE IF NOT EXISTS `filepermissionassignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.filepermissionassignments: ~0 rows (approximately)
DELETE FROM `filepermissionassignments`;
/*!40000 ALTER TABLE `filepermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `filepermissionassignments` ENABLE KEYS */;


-- Dumping structure for table herran.filepermissionfiletypes
CREATE TABLE IF NOT EXISTS `filepermissionfiletypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  KEY `gID` (`gID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.filepermissionfiletypes: ~0 rows (approximately)
DELETE FROM `filepermissionfiletypes`;
/*!40000 ALTER TABLE `filepermissionfiletypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `filepermissionfiletypes` ENABLE KEYS */;


-- Dumping structure for table herran.files
CREATE TABLE IF NOT EXISTS `files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `uID` (`uID`),
  KEY `fslID` (`fslID`),
  KEY `ocID` (`ocID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.files: ~9 rows (approximately)
DELETE FROM `files`;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
	(1, '2016-01-15 13:58:39', 1, 1, 0, 0, NULL),
	(2, '2016-02-05 13:00:37', 1, 1, 0, 0, NULL),
	(3, '2016-02-10 12:22:55', 1, 1, 0, 0, NULL),
	(4, '2016-02-10 13:15:07', 1, 1, 0, 0, NULL),
	(5, '2016-02-10 13:16:50', 1, 1, 0, 0, NULL),
	(6, '2016-02-10 13:17:57', 1, 1, 0, 0, NULL),
	(7, '2016-02-10 13:18:19', 1, 1, 0, 0, NULL),
	(8, '2016-02-23 15:39:11', 1, 1, 0, 0, NULL),
	(9, '2016-02-23 15:39:57', 1, 1, 0, 0, NULL),
	(10, '2016-02-23 15:40:28', 1, 1, 0, 0, NULL),
	(11, '2016-02-23 15:40:50', 1, 1, 0, 0, NULL);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;


-- Dumping structure for table herran.filesearchindexattributes
CREATE TABLE IF NOT EXISTS `filesearchindexattributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.filesearchindexattributes: ~11 rows (approximately)
DELETE FROM `filesearchindexattributes`;
/*!40000 ALTER TABLE `filesearchindexattributes` DISABLE KEYS */;
INSERT INTO `filesearchindexattributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
	(1, 0.0000, 0.0000, 0.0000),
	(2, 221.0000, 190.0000, 0.0000),
	(3, 141.0000, 47.0000, 0.0000),
	(4, 141.0000, 47.0000, 0.0000),
	(5, 141.0000, 47.0000, 0.0000),
	(6, 141.0000, 47.0000, 0.0000),
	(7, 142.0000, 48.0000, 0.0000),
	(8, 760.0000, 331.0000, 0.0000),
	(9, 900.0000, 600.0000, 0.0000),
	(10, 900.0000, 600.0000, 0.0000),
	(11, 900.0000, 600.0000, 0.0000);
/*!40000 ALTER TABLE `filesearchindexattributes` ENABLE KEYS */;


-- Dumping structure for table herran.filesetfiles
CREATE TABLE IF NOT EXISTS `filesetfiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.filesetfiles: ~0 rows (approximately)
DELETE FROM `filesetfiles`;
/*!40000 ALTER TABLE `filesetfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesetfiles` ENABLE KEYS */;


-- Dumping structure for table herran.filesetpermissionassignments
CREATE TABLE IF NOT EXISTS `filesetpermissionassignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`pkID`,`paID`),
  KEY `paID` (`paID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.filesetpermissionassignments: ~9 rows (approximately)
DELETE FROM `filesetpermissionassignments`;
/*!40000 ALTER TABLE `filesetpermissionassignments` DISABLE KEYS */;
INSERT INTO `filesetpermissionassignments` (`fsID`, `pkID`, `paID`) VALUES
	(0, 39, 33),
	(0, 40, 34),
	(0, 41, 35),
	(0, 42, 36),
	(0, 43, 37),
	(0, 44, 38),
	(0, 46, 39),
	(0, 45, 40),
	(0, 47, 41);
/*!40000 ALTER TABLE `filesetpermissionassignments` ENABLE KEYS */;


-- Dumping structure for table herran.filesetpermissionfiletypeaccesslist
CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.filesetpermissionfiletypeaccesslist: ~0 rows (approximately)
DELETE FROM `filesetpermissionfiletypeaccesslist`;
/*!40000 ALTER TABLE `filesetpermissionfiletypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesetpermissionfiletypeaccesslist` ENABLE KEYS */;


-- Dumping structure for table herran.filesetpermissionfiletypeaccesslistcustom
CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslistcustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`extension`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.filesetpermissionfiletypeaccesslistcustom: ~0 rows (approximately)
DELETE FROM `filesetpermissionfiletypeaccesslistcustom`;
/*!40000 ALTER TABLE `filesetpermissionfiletypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesetpermissionfiletypeaccesslistcustom` ENABLE KEYS */;


-- Dumping structure for table herran.filesets
CREATE TABLE IF NOT EXISTS `filesets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `uID` (`uID`,`fsType`,`fsName`),
  KEY `fsName` (`fsName`),
  KEY `fsType` (`fsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.filesets: ~0 rows (approximately)
DELETE FROM `filesets`;
/*!40000 ALTER TABLE `filesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesets` ENABLE KEYS */;


-- Dumping structure for table herran.filesetsavedsearches
CREATE TABLE IF NOT EXISTS `filesetsavedsearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.filesetsavedsearches: ~0 rows (approximately)
DELETE FROM `filesetsavedsearches`;
/*!40000 ALTER TABLE `filesetsavedsearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesetsavedsearches` ENABLE KEYS */;


-- Dumping structure for table herran.filestoragelocations
CREATE TABLE IF NOT EXISTS `filestoragelocations` (
  `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.filestoragelocations: ~0 rows (approximately)
DELETE FROM `filestoragelocations`;
/*!40000 ALTER TABLE `filestoragelocations` DISABLE KEYS */;
INSERT INTO `filestoragelocations` (`fslID`, `fslName`, `fslConfiguration`, `fslIsDefault`) VALUES
	(1, 'Default', 'O:69:"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration":1:{s:10:"\0*\0default";b:1;}', 1);
/*!40000 ALTER TABLE `filestoragelocations` ENABLE KEYS */;


-- Dumping structure for table herran.filestoragelocationtypes
CREATE TABLE IF NOT EXISTS `filestoragelocationtypes` (
  `fslTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fslTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fslTypeID`),
  UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.filestoragelocationtypes: ~2 rows (approximately)
DELETE FROM `filestoragelocationtypes`;
/*!40000 ALTER TABLE `filestoragelocationtypes` DISABLE KEYS */;
INSERT INTO `filestoragelocationtypes` (`fslTypeID`, `fslTypeHandle`, `fslTypeName`, `pkgID`) VALUES
	(1, 'default', 'Default', 0),
	(2, 'local', 'Local', 0);
/*!40000 ALTER TABLE `filestoragelocationtypes` ENABLE KEYS */;


-- Dumping structure for table herran.fileversionlog
CREATE TABLE IF NOT EXISTS `fileversionlog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`),
  KEY `fvID` (`fID`,`fvID`,`fvlID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.fileversionlog: ~19 rows (approximately)
DELETE FROM `fileversionlog`;
/*!40000 ALTER TABLE `fileversionlog` DISABLE KEYS */;
INSERT INTO `fileversionlog` (`fvlID`, `fID`, `fvID`, `fvUpdateTypeID`, `fvUpdateTypeAttributeID`) VALUES
	(1, 2, 1, 5, 14),
	(2, 2, 1, 5, 15),
	(3, 3, 1, 5, 14),
	(4, 3, 1, 5, 15),
	(5, 4, 1, 5, 14),
	(6, 4, 1, 5, 15),
	(7, 5, 1, 5, 14),
	(8, 5, 1, 5, 15),
	(9, 6, 1, 5, 14),
	(10, 6, 1, 5, 15),
	(11, 7, 1, 5, 14),
	(12, 7, 1, 5, 15),
	(13, 8, 1, 5, 14),
	(14, 8, 1, 5, 15),
	(15, 9, 1, 5, 14),
	(16, 9, 1, 5, 15),
	(17, 10, 1, 5, 14),
	(18, 10, 1, 5, 15),
	(19, 11, 1, 5, 14),
	(20, 11, 1, 5, 15);
/*!40000 ALTER TABLE `fileversionlog` ENABLE KEYS */;


-- Dumping structure for table herran.fileversions
CREATE TABLE IF NOT EXISTS `fileversions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvGenericType` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(10) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` text COLLATE utf8_unicode_ci,
  `fvTags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvHasDetailThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvExtension`),
  KEY `fvType` (`fvType`),
  KEY `fvFilename` (`fvFilename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.fileversions: ~11 rows (approximately)
DELETE FROM `fileversions`;
/*!40000 ALTER TABLE `fileversions` DISABLE KEYS */;
INSERT INTO `fileversions` (`fID`, `fvID`, `fvFilename`, `fvPrefix`, `fvGenericType`, `fvSize`, `fvTitle`, `fvDescription`, `fvTags`, `fvIsApproved`, `fvDateAdded`, `fvApproverUID`, `fvAuthorUID`, `fvActivateDatetime`, `fvHasListingThumbnail`, `fvHasDetailThumbnail`, `fvExtension`, `fvType`) VALUES
	(1, 1, 'favicon.ico', '331452866319', 0, 11086, 'favicon.ico', '', '', 1, '2016-01-15 13:58:40', 1, 1, '2016-01-15 13:58:40', 0, 0, 'ico', 1),
	(2, 1, 'logo_header.png', '621454677237', 0, 49965, 'logo_header.png', '', '', 1, '2016-02-05 13:00:37', 1, 1, '2016-02-05 13:00:37', 1, 0, 'png', 1),
	(3, 1, 'menu_home.png', '171455106975', 0, 4170, 'menu_home.png', '', '', 1, '2016-02-10 12:22:55', 1, 1, '2016-02-10 12:22:55', 1, 0, 'png', 1),
	(4, 1, 'menu_about.png', '461455110107', 0, 4588, 'menu_about.png', '', '', 1, '2016-02-10 13:15:08', 1, 1, '2016-02-10 13:15:08', 1, 0, 'png', 1),
	(5, 1, 'menu_news.png', '611455110210', 0, 4207, 'menu_news.png', '', '', 1, '2016-02-10 13:16:50', 1, 1, '2016-02-10 13:16:50', 1, 0, 'png', 1),
	(6, 1, 'menu_products.png', '381455110277', 0, 4520, 'menu_products.png', '', '', 1, '2016-02-10 13:17:57', 1, 1, '2016-02-10 13:17:57', 1, 0, 'png', 1),
	(7, 1, 'menu_contact.png', '631455110299', 0, 4459, 'menu_contact.png', '', '', 1, '2016-02-10 13:18:19', 1, 1, '2016-02-10 13:18:19', 1, 0, 'png', 1),
	(8, 1, 'slide_sample.png', '751456241950', 0, 551450, 'slide sample.png', '', '', 1, '2016-02-23 15:39:11', 1, 1, '2016-02-23 15:39:11', 1, 1, 'png', 1),
	(9, 1, 'kababayan_ed.jpg', '741456241997', 0, 95205, 'kababayan_ed.jpg', '', '', 1, '2016-02-23 15:39:57', 1, 1, '2016-02-23 15:39:57', 1, 1, 'jpg', 1),
	(10, 1, 'special_mamon_ed.jpg', '381456242028', 0, 68027, 'special_mamon_ed.jpg', '', '', 1, '2016-02-23 15:40:28', 1, 1, '2016-02-23 15:40:28', 1, 1, 'jpg', 1),
	(11, 1, 'taisan_cake.jpg', '881456242050', 0, 113469, 'taisan_cake.jpg', '', '', 1, '2016-02-23 15:40:50', 1, 1, '2016-02-23 15:40:50', 1, 1, 'jpg', 1);
/*!40000 ALTER TABLE `fileversions` ENABLE KEYS */;


-- Dumping structure for table herran.gapage
CREATE TABLE IF NOT EXISTS `gapage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gaiID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.gapage: ~0 rows (approximately)
DELETE FROM `gapage`;
/*!40000 ALTER TABLE `gapage` DISABLE KEYS */;
/*!40000 ALTER TABLE `gapage` ENABLE KEYS */;


-- Dumping structure for table herran.gatheringconfigureddatasources
CREATE TABLE IF NOT EXISTS `gatheringconfigureddatasources` (
  `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`gcsID`),
  KEY `gaID` (`gaID`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.gatheringconfigureddatasources: ~0 rows (approximately)
DELETE FROM `gatheringconfigureddatasources`;
/*!40000 ALTER TABLE `gatheringconfigureddatasources` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringconfigureddatasources` ENABLE KEYS */;


-- Dumping structure for table herran.gatheringdatasources
CREATE TABLE IF NOT EXISTS `gatheringdatasources` (
  `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gasID`),
  UNIQUE KEY `gasHandle` (`gasHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.gatheringdatasources: ~4 rows (approximately)
DELETE FROM `gatheringdatasources`;
/*!40000 ALTER TABLE `gatheringdatasources` DISABLE KEYS */;
INSERT INTO `gatheringdatasources` (`gasID`, `gasName`, `gasHandle`, `pkgID`, `gasDisplayOrder`) VALUES
	(1, 'Site Page', 'page', 0, 0),
	(2, 'RSS Feed', 'rss_feed', 0, 1),
	(3, 'Flickr Feed', 'flickr_feed', 0, 2),
	(4, 'Twitter', 'twitter', 0, 3);
/*!40000 ALTER TABLE `gatheringdatasources` ENABLE KEYS */;


-- Dumping structure for table herran.gatheringitemfeatureassignments
CREATE TABLE IF NOT EXISTS `gatheringitemfeatureassignments` (
  `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gafaID`),
  KEY `gaiID` (`gaiID`,`faID`),
  KEY `faID` (`faID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.gatheringitemfeatureassignments: ~0 rows (approximately)
DELETE FROM `gatheringitemfeatureassignments`;
/*!40000 ALTER TABLE `gatheringitemfeatureassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringitemfeatureassignments` ENABLE KEYS */;


-- Dumping structure for table herran.gatheringitems
CREATE TABLE IF NOT EXISTS `gatheringitems` (
  `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`gaiID`),
  UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  KEY `gasID` (`gasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.gatheringitems: ~0 rows (approximately)
DELETE FROM `gatheringitems`;
/*!40000 ALTER TABLE `gatheringitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringitems` ENABLE KEYS */;


-- Dumping structure for table herran.gatheringitemselectedtemplates
CREATE TABLE IF NOT EXISTS `gatheringitemselectedtemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gaiID`,`gatID`),
  UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `gatID` (`gatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.gatheringitemselectedtemplates: ~0 rows (approximately)
DELETE FROM `gatheringitemselectedtemplates`;
/*!40000 ALTER TABLE `gatheringitemselectedtemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringitemselectedtemplates` ENABLE KEYS */;


-- Dumping structure for table herran.gatheringitemtemplatefeatures
CREATE TABLE IF NOT EXISTS `gatheringitemtemplatefeatures` (
  `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`gfeID`),
  KEY `gatID` (`gatID`),
  KEY `feID` (`feID`,`gatID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.gatheringitemtemplatefeatures: ~66 rows (approximately)
DELETE FROM `gatheringitemtemplatefeatures`;
/*!40000 ALTER TABLE `gatheringitemtemplatefeatures` DISABLE KEYS */;
INSERT INTO `gatheringitemtemplatefeatures` (`gfeID`, `gatID`, `feID`) VALUES
	(4, 1, 1),
	(10, 2, 1),
	(13, 3, 1),
	(16, 4, 1),
	(19, 5, 1),
	(23, 7, 1),
	(29, 11, 1),
	(33, 12, 1),
	(37, 13, 1),
	(42, 14, 1),
	(47, 15, 1),
	(53, 17, 1),
	(56, 18, 1),
	(63, 21, 1),
	(64, 22, 1),
	(3, 1, 2),
	(9, 2, 2),
	(12, 3, 2),
	(15, 4, 2),
	(18, 5, 2),
	(21, 6, 2),
	(25, 8, 2),
	(27, 9, 2),
	(41, 13, 3),
	(46, 14, 3),
	(51, 16, 3),
	(55, 17, 3),
	(62, 20, 3),
	(66, 22, 3),
	(2, 1, 4),
	(8, 2, 4),
	(14, 4, 4),
	(17, 5, 4),
	(31, 11, 4),
	(35, 12, 4),
	(39, 13, 4),
	(44, 14, 4),
	(61, 20, 4),
	(5, 1, 5),
	(22, 6, 5),
	(24, 8, 5),
	(26, 9, 5),
	(28, 10, 5),
	(32, 11, 5),
	(36, 12, 5),
	(40, 13, 5),
	(45, 14, 5),
	(49, 15, 5),
	(50, 16, 5),
	(59, 19, 5),
	(65, 22, 5),
	(20, 5, 6),
	(1, 1, 7),
	(7, 2, 7),
	(11, 3, 7),
	(30, 11, 7),
	(34, 12, 7),
	(38, 13, 7),
	(43, 14, 7),
	(48, 15, 7),
	(52, 16, 7),
	(54, 17, 7),
	(57, 18, 7),
	(58, 19, 7),
	(60, 20, 7),
	(6, 1, 8);
/*!40000 ALTER TABLE `gatheringitemtemplatefeatures` ENABLE KEYS */;


-- Dumping structure for table herran.gatheringitemtemplates
CREATE TABLE IF NOT EXISTS `gatheringitemtemplates` (
  `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`gatID`),
  UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  KEY `gatTypeID` (`gatTypeID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.gatheringitemtemplates: ~22 rows (approximately)
DELETE FROM `gatheringitemtemplates`;
/*!40000 ALTER TABLE `gatheringitemtemplates` DISABLE KEYS */;
INSERT INTO `gatheringitemtemplates` (`gatID`, `gatHandle`, `gatName`, `gatHasCustomClass`, `gatFixedSlotWidth`, `gatFixedSlotHeight`, `gatForceDefault`, `pkgID`, `gatTypeID`) VALUES
	(1, 'featured', 'Featured Item', 0, 6, 2, 1, 0, 1),
	(2, 'title_date_description', 'Title Date & Description', 0, 0, 0, 0, 0, 1),
	(3, 'title_description', 'Title & Description', 0, 0, 0, 0, 0, 1),
	(4, 'title_date', 'Title & Date', 0, 0, 0, 0, 0, 1),
	(5, 'title_date_comments', 'Title, Date & Comments', 1, 0, 0, 0, 0, 1),
	(6, 'thumbnail', 'Thumbnail', 0, 0, 0, 0, 0, 1),
	(7, 'basic', 'Basic', 0, 0, 0, 0, 0, 2),
	(8, 'image_sharing_link', 'Image Sharing Link', 0, 0, 0, 0, 0, 2),
	(9, 'image_conversation', 'Image Conversation', 0, 0, 0, 0, 0, 2),
	(10, 'image', 'Large Image', 0, 0, 0, 0, 0, 2),
	(11, 'masthead_image_left', 'Masthead Image Left', 0, 0, 0, 0, 0, 1),
	(12, 'masthead_image_right', 'Masthead Image Right', 0, 0, 0, 0, 0, 1),
	(13, 'masthead_image_byline_right', 'Masthead Image Byline Right', 0, 0, 0, 0, 0, 1),
	(14, 'masthead_image_byline_left', 'Masthead Image Byline Left', 0, 0, 0, 0, 0, 1),
	(15, 'image_masthead_description_center', 'Image Masthead Description Center', 0, 0, 0, 0, 0, 1),
	(16, 'image_byline_description_center', 'Image Byline Description Center', 0, 0, 0, 0, 0, 1),
	(17, 'masthead_byline_description', 'Masthead Byline Description', 0, 0, 0, 0, 0, 1),
	(18, 'masthead_description', 'Masthead Description', 0, 0, 0, 0, 0, 1),
	(19, 'thumbnail_description_center', 'Thumbnail & Description Center', 0, 0, 0, 0, 0, 1),
	(20, 'tweet', 'Tweet', 0, 0, 0, 0, 0, 1),
	(21, 'vimeo', 'Vimeo', 0, 0, 0, 0, 0, 1),
	(22, 'image_overlay_headline', 'Image Overlay Headline', 0, 0, 0, 0, 0, 1);
/*!40000 ALTER TABLE `gatheringitemtemplates` ENABLE KEYS */;


-- Dumping structure for table herran.gatheringitemtemplatetypes
CREATE TABLE IF NOT EXISTS `gatheringitemtemplatetypes` (
  `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gatTypeID`),
  UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.gatheringitemtemplatetypes: ~2 rows (approximately)
DELETE FROM `gatheringitemtemplatetypes`;
/*!40000 ALTER TABLE `gatheringitemtemplatetypes` DISABLE KEYS */;
INSERT INTO `gatheringitemtemplatetypes` (`gatTypeID`, `gatTypeHandle`, `pkgID`) VALUES
	(1, 'tile', 0),
	(2, 'detail', 0);
/*!40000 ALTER TABLE `gatheringitemtemplatetypes` ENABLE KEYS */;


-- Dumping structure for table herran.gatheringpermissionassignments
CREATE TABLE IF NOT EXISTS `gatheringpermissionassignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gaID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.gatheringpermissionassignments: ~0 rows (approximately)
DELETE FROM `gatheringpermissionassignments`;
/*!40000 ALTER TABLE `gatheringpermissionassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatheringpermissionassignments` ENABLE KEYS */;


-- Dumping structure for table herran.gatherings
CREATE TABLE IF NOT EXISTS `gatherings` (
  `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL,
  PRIMARY KEY (`gaID`),
  KEY `gaDateLastUpdated` (`gaDateLastUpdated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.gatherings: ~0 rows (approximately)
DELETE FROM `gatherings`;
/*!40000 ALTER TABLE `gatherings` DISABLE KEYS */;
/*!40000 ALTER TABLE `gatherings` ENABLE KEYS */;


-- Dumping structure for table herran.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`),
  KEY `gName` (`gName`),
  KEY `gBadgeFID` (`gBadgeFID`),
  KEY `pkgID` (`pkgID`),
  KEY `gPath` (`gPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.groups: ~3 rows (approximately)
DELETE FROM `groups`;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`, `gIsBadge`, `gBadgeFID`, `gBadgeDescription`, `gBadgeCommunityPointValue`, `gIsAutomated`, `gCheckAutomationOnRegister`, `gCheckAutomationOnLogin`, `gCheckAutomationOnJobRun`, `gPath`, `pkgID`) VALUES
	(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Guest', 0),
	(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Registered Users', 0),
	(3, 'Administrators', '', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Administrators', 0);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Dumping structure for table herran.groupsetgroups
CREATE TABLE IF NOT EXISTS `groupsetgroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.groupsetgroups: ~0 rows (approximately)
DELETE FROM `groupsetgroups`;
/*!40000 ALTER TABLE `groupsetgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupsetgroups` ENABLE KEYS */;


-- Dumping structure for table herran.groupsets
CREATE TABLE IF NOT EXISTS `groupsets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`),
  KEY `gsName` (`gsName`),
  KEY `pkgID` (`pkgID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.groupsets: ~0 rows (approximately)
DELETE FROM `groupsets`;
/*!40000 ALTER TABLE `groupsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupsets` ENABLE KEYS */;


-- Dumping structure for table herran.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`),
  UNIQUE KEY `jHandle` (`jHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  KEY `jDateLastRun` (`jDateLastRun`,`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.jobs: ~7 rows (approximately)
DELETE FROM `jobs`;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
	(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.', '2016-01-14 08:11:32', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
	(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2016-01-14 08:11:32', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
	(3, 'Check Automated Groups', 'Automatically add users to groups and assign badges.', '2016-01-14 08:11:32', NULL, 0, NULL, 0, 'ENABLED', 'check_automated_groups', 0, 0, 'days', 0),
	(4, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2016-01-14 08:11:32', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
	(5, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2016-01-14 08:11:32', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
	(6, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2016-01-14 08:11:32', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0),
	(7, 'Update Gatherings', 'Loads new items into gatherings.', '2016-01-14 08:11:33', NULL, 0, NULL, 0, 'ENABLED', 'update_gatherings', 0, 0, 'days', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;


-- Dumping structure for table herran.jobsetjobs
CREATE TABLE IF NOT EXISTS `jobsetjobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.jobsetjobs: ~5 rows (approximately)
DELETE FROM `jobsetjobs`;
/*!40000 ALTER TABLE `jobsetjobs` DISABLE KEYS */;
INSERT INTO `jobsetjobs` (`jsID`, `jID`, `jRunOrder`) VALUES
	(1, 1, 0),
	(1, 4, 0),
	(1, 5, 0),
	(1, 6, 0),
	(1, 7, 0);
/*!40000 ALTER TABLE `jobsetjobs` ENABLE KEYS */;


-- Dumping structure for table herran.jobsets
CREATE TABLE IF NOT EXISTS `jobsets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`),
  KEY `pkgID` (`pkgID`),
  KEY `jsName` (`jsName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.jobsets: ~0 rows (approximately)
DELETE FROM `jobsets`;
/*!40000 ALTER TABLE `jobsets` DISABLE KEYS */;
INSERT INTO `jobsets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
	(1, 'Default', 0, NULL, 0, 'days', 0);
/*!40000 ALTER TABLE `jobsets` ENABLE KEYS */;


-- Dumping structure for table herran.jobslog
CREATE TABLE IF NOT EXISTS `jobslog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`),
  KEY `jID` (`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.jobslog: ~0 rows (approximately)
DELETE FROM `jobslog`;
/*!40000 ALTER TABLE `jobslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobslog` ENABLE KEYS */;


-- Dumping structure for table herran.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`logID`),
  KEY `channel` (`channel`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.logs: ~187 rows (approximately)
DELETE FROM `logs`;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`logID`, `channel`, `time`, `message`, `uID`, `level`) VALUES
	(1, 'exceptions', 1452762165, 'Exception Occurred: C:\\projects\\herran\\application\\themes\\herran\\page_theme.php:7 Cannot redeclare class Concrete\\Theme\\Elemental\\PageTheme (64)\n', 1, 600),
	(2, 'exceptions', 1452762371, 'Exception Occurred: C:\\projects\\herran\\application\\themes\\herran\\page_theme.php:7 Cannot redeclare class Concrete\\Theme\\Herran\\PageTheme (64)\n', 1, 600),
	(3, 'exceptions', 1452762404, 'Exception Occurred: C:\\projects\\herran\\application\\themes\\herran\\page_theme.php:7 Cannot redeclare class Theme\\Herran\\PageTheme (64)\n', 1, 600),
	(4, 'exceptions', 1452762929, 'Exception Occurred: C:\\projects\\herran\\concrete\\vendor\\oyejorge\\less.php\\lib\\Less\\Parser.php:2527 File `../../../css/build/core/include/mixins.less` not found. in main.less (0)\n', 1, 600),
	(5, 'exceptions', 1452865638, 'Exception Occurred: C:\\projects\\herran\\concrete\\vendor\\oyejorge\\less.php\\lib\\Less\\Parser.php:2527 File `../../../css/build/core/include/mixins.less` not found. in main.less (0)\n', 0, 600),
	(6, 'exceptions', 1452866177, 'Exception Occurred: C:\\projects\\herran\\concrete\\vendor\\oyejorge\\less.php\\lib\\Less\\Parser.php:2527 File `../../../css/build/core/include/mixins.less` not found. in main.less (0)\n', 0, 600),
	(7, 'application', 1452866220, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-01-16 13:57:00', 1, 200),
	(8, 'application', 1452866223, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-01-15 15:57:03', 1, 200),
	(9, 'application', 1452866225, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-01-15 15:57:05', 1, 200),
	(10, 'application', 1452866227, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-01-15 15:57:07', 1, 200),
	(11, 'application', 1452866228, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-01-15 15:57:08', 1, 200),
	(12, 'application', 1452866229, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-01-15 15:57:09', 1, 200),
	(13, 'exceptions', 1452866429, 'Exception Occurred: C:\\projects\\herran\\concrete\\vendor\\oyejorge\\less.php\\lib\\Less\\Parser.php:2527 File `../../../css/build/core/include/mixins.less` not found. in main.less (0)\n', 1, 600),
	(14, 'exceptions', 1452866434, 'Exception Occurred: C:\\projects\\herran\\concrete\\vendor\\oyejorge\\less.php\\lib\\Less\\Parser.php:2527 File `../../../css/build/core/include/mixins.less` not found. in main.less (0)\n', 1, 600),
	(15, 'exceptions', 1452866439, 'Exception Occurred: C:\\projects\\herran\\concrete\\vendor\\oyejorge\\less.php\\lib\\Less\\Parser.php:2527 File `../../../css/build/core/include/mixins.less` not found. in main.less (0)\n', 1, 600),
	(16, 'exceptions', 1452866450, 'Exception Occurred: C:\\projects\\herran\\concrete\\vendor\\oyejorge\\less.php\\lib\\Less\\Parser.php:2527 File `../../../css/build/core/include/mixins.less` not found. in main.less (0)\n', 1, 600),
	(17, 'application', 1453106063, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-01-19 08:34:23', 1, 200),
	(18, 'application', 1453106066, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-01-18 10:34:26', 1, 200),
	(19, 'application', 1453106068, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-01-18 10:34:28', 1, 200),
	(20, 'application', 1453106069, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-01-18 10:34:29', 1, 200),
	(21, 'application', 1453106070, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-01-18 10:34:30', 1, 200),
	(22, 'application', 1453106071, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-01-18 10:34:31', 1, 200),
	(23, 'application', 1453197779, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-01-20 10:02:59', 1, 200),
	(24, 'application', 1453197781, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-01-19 12:03:01', 1, 200),
	(25, 'application', 1453197784, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-01-19 12:03:03', 1, 200),
	(26, 'application', 1453197785, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-01-19 12:03:05', 1, 200),
	(27, 'application', 1453197786, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-01-19 12:03:06', 1, 200),
	(28, 'application', 1453197787, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-01-19 12:03:07', 1, 200),
	(29, 'application', 1453731715, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-01-26 14:21:55', 1, 200),
	(30, 'application', 1453731718, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-01-25 16:21:58', 1, 200),
	(31, 'application', 1453731720, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-01-25 16:22:00', 1, 200),
	(32, 'application', 1453731721, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-01-25 16:22:01', 1, 200),
	(33, 'application', 1453731722, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-01-25 16:22:02', 1, 200),
	(34, 'application', 1453731723, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-01-25 16:22:03', 1, 200),
	(35, 'application', 1454576500, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-02-05 09:01:40', 1, 200),
	(36, 'application', 1454576503, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-02-04 11:01:43', 1, 200),
	(37, 'application', 1454576505, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-02-04 11:01:45', 1, 200),
	(38, 'application', 1454576506, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-02-04 11:01:46', 1, 200),
	(39, 'application', 1454576507, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-02-04 11:01:47', 1, 200),
	(40, 'application', 1454576508, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-02-04 11:01:48', 1, 200),
	(41, 'application', 1454674310, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-02-06 12:11:50', 1, 200),
	(42, 'application', 1454674314, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-02-05 14:11:54', 1, 200),
	(43, 'application', 1454674316, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-02-05 14:11:56', 1, 200),
	(44, 'application', 1454674317, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-02-05 14:11:57', 1, 200),
	(45, 'application', 1454674318, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-02-05 14:11:58', 1, 200),
	(46, 'application', 1454674320, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-02-05 14:11:59', 1, 200),
	(47, 'application', 1454677240, 'Image Inspector', 1, 200),
	(48, 'application', 1454677268, 'Set Block Cached Output: 1 - 4 - 10 Header Logo - 2021-02-05 13:01:08', 1, 200),
	(49, 'application', 1454678015, 'Set Block Cached Output: 1 - 5 - 10 Header Logo - 2021-02-05 13:13:35', 1, 200),
	(50, 'application', 1454680463, 'Set Block Cached Output: 1 - 6 - 10 Header Logo - 2021-02-05 13:54:23', 1, 200),
	(51, 'application', 1454692331, 'Set Block Cached Output: 1 - 7 - 10 Header Logo - 2021-02-05 17:12:11', 1, 200),
	(52, 'application', 1455005422, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-02-10 08:10:22', 1, 200),
	(53, 'application', 1455005425, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-02-09 10:10:25', 1, 200),
	(54, 'application', 1455005428, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-02-09 10:10:28', 1, 200),
	(55, 'application', 1455005432, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-02-09 10:10:32', 1, 200),
	(56, 'application', 1455005435, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-02-09 10:10:35', 1, 200),
	(57, 'application', 1455005436, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-02-09 10:10:36', 1, 200),
	(58, 'exceptions', 1455022313, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:3 Class \'BlockController\' not found (1)\n', 1, 600),
	(59, 'exceptions', 1455022352, 'Exception Occurred: C:\\projects\\herran\\concrete\\src\\Block\\BlockType\\BlockTypeList.php:95 Class \'\\Application\\Block\\CustomMenu\\Controller\' not found (1)\n', 1, 600),
	(60, 'exceptions', 1455022409, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:3 Class \'BlockController\' not found (1)\n', 1, 600),
	(61, 'exceptions', 1455022434, 'Exception Occurred: C:\\projects\\herran\\concrete\\src\\Block\\BlockType\\BlockTypeList.php:95 Class \'\\Application\\Block\\CustomMenu\\Controller\' not found (1)\n', 1, 600),
	(62, 'exceptions', 1455022455, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:3 The use statement with non-compound name \'Core\' has no effect (2)\n', 1, 600),
	(63, 'exceptions', 1455026172, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:3 Class \'BlockController\' not found (1)\n', 1, 600),
	(64, 'exceptions', 1455026184, 'Exception Occurred: C:\\projects\\herran\\concrete\\src\\Block\\BlockType\\BlockTypeList.php:95 Class \'\\Application\\Block\\CustomMenu\\Controller\' not found (1)\n', 1, 600),
	(65, 'exceptions', 1455026967, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:3 Namespace declaration statement has to be the very first statement in the script (64)\n', 1, 600),
	(66, 'exceptions', 1455026986, 'Exception Occurred: C:\\projects\\herran\\concrete\\src\\Block\\BlockType\\BlockTypeList.php:95 Class \'\\Application\\Block\\CustomMenu\\Controller\' not found (1)\n', 1, 600),
	(67, 'exceptions', 1455027318, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:7 Class \'Concrete\\Block\\BlockController\\Controller\' not found (1)\n', 1, 600),
	(68, 'exceptions', 1455027348, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:7 Class \'Concrete\\Block\\CustomMenu\\Controller\' not found (1)\n', 1, 600),
	(69, 'exceptions', 1455027382, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:7 Class \'Concrete\\Block\\Custom_Menu\\Controller\' not found (1)\n', 1, 600),
	(70, 'exceptions', 1455027400, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\customMenu\\controller.php:7 Class \'Concrete\\Block\\CustomMenu\\Controller\' not found (1)\n', 1, 600),
	(71, 'exceptions', 1455027425, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:7 Class \'Application\\Block\\CustomMenu\\Controller\' not found (1)\n', 1, 600),
	(72, 'exceptions', 1455027466, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\menu\\controller.php:7 Class \'Application\\Block\\Menu\\Controller\' not found (1)\n', 1, 600),
	(73, 'exceptions', 1455027476, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\menu\\controller.php:7 Class \'Concrete\\Block\\Menu\\Controller\' not found (1)\n', 1, 600),
	(74, 'exceptions', 1455027528, 'Exception Occurred: C:\\projects\\herran\\concrete\\src\\Block\\BlockType\\BlockTypeList.php:95 Class \'\\Application\\Block\\Menu\\Controller\' not found (1)\n', 1, 600),
	(75, 'exceptions', 1455027685, 'Exception Occurred: C:\\projects\\herran\\concrete\\src\\Block\\BlockType\\BlockTypeList.php:95 Class \'\\Application\\Block\\CustomMenu\\Controller\' not found (1)\n', 1, 600),
	(76, 'exceptions', 1455027693, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:7 Class \'Application\\Block\\CustomMenu\\Controller\' not found (1)\n', 1, 600),
	(77, 'exceptions', 1455027701, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:7 Class \'Concrete\\Core\\Block\\Controller\' not found (1)\n', 1, 600),
	(78, 'application', 1455098599, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-02-11 10:03:19', 1, 200),
	(79, 'application', 1455098602, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-02-10 12:03:22', 1, 200),
	(80, 'application', 1455098604, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-02-10 12:03:24', 1, 200),
	(81, 'application', 1455098605, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-02-10 12:03:25', 1, 200),
	(82, 'application', 1455098606, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-02-10 12:03:26', 1, 200),
	(83, 'application', 1455098607, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-02-10 12:03:27', 1, 200),
	(84, 'application', 1455106977, 'Image Inspector', 1, 200),
	(85, 'application', 1455106990, 'Set Block Cached Output: 1 - 8 - 32 Main - 2021-02-10 12:23:10', 1, 200),
	(86, 'application', 1455107550, 'Set Block Cached Output: 1 - 8 - 10 Header Logo - 2021-02-10 12:32:30', 1, 200),
	(87, 'exceptions', 1455107658, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:30 Class \'Application\\Block\\CustomMenu\\File\' not found (1)\n', 1, 600),
	(88, 'exceptions', 1455107693, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:10 Object of class Concrete\\Core\\Page\\Page could not be converted to string (4096)\n', 1, 600),
	(89, 'exceptions', 1455107701, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:10 Object of class Concrete\\Core\\Page\\Page could not be converted to string (4096)\n', 1, 600),
	(90, 'exceptions', 1455107721, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:10 Object of class Concrete\\Core\\Page\\Page could not be converted to string (4096)\n', 1, 600),
	(91, 'exceptions', 1455107833, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:10 Object of class Concrete\\Core\\Page\\Page could not be converted to string (4096)\n', 1, 600),
	(92, 'exceptions', 1455107861, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:10 Object of class Concrete\\Core\\Page\\Page could not be converted to string (4096)\n', 1, 600),
	(93, 'exceptions', 1455107892, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:2 The use statement with non-compound name \'Page\' has no effect (2)\n', 1, 600),
	(94, 'exceptions', 1455108056, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:44 Class \'Application\\Block\\CustomMenu\\Core\' not found (1)\n', 1, 600),
	(95, 'exceptions', 1455108075, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:2 The use statement with non-compound name \'Page\' has no effect (2)\n', 1, 600),
	(96, 'exceptions', 1455108188, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:2 The use statement with non-compound name \'Page\' has no effect (2)\n', 1, 600),
	(97, 'exceptions', 1455108220, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:2 The use statement with non-compound name \'Page\' has no effect (2)\n', 1, 600),
	(98, 'exceptions', 1455108225, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:2 The use statement with non-compound name \'Page\' has no effect (2)\n', 1, 600),
	(99, 'exceptions', 1455108238, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:2 The use statement with non-compound name \'Page\' has no effect (2)\n', 1, 600),
	(100, 'application', 1455108247, 'Set Block Cached Output: 1 - 8 - 33 Header Menu - 2021-02-10 12:44:07', 1, 200),
	(101, 'application', 1455110110, 'Image Inspector', 1, 200),
	(102, 'application', 1455110125, 'Set Block Cached Output: 1 - 9 - 10 Header Logo - 2021-02-10 13:15:25', 1, 200),
	(103, 'exceptions', 1455110126, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:43 Class \'Application\\Block\\CustomMenu\\Page\' not found (1)\n', 1, 600),
	(104, 'exceptions', 1455110129, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:43 Class \'Application\\Block\\CustomMenu\\Page\' not found (1)\n', 1, 600),
	(105, 'exceptions', 1455110132, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:43 Class \'Application\\Block\\CustomMenu\\Page\' not found (1)\n', 1, 600),
	(106, 'application', 1455110149, 'Set Block Cached Output: 1 - 9 - 33 Header Menu - 2021-02-10 13:15:49', 1, 200),
	(107, 'application', 1455110149, 'Set Block Cached Output: 1 - 9 - 34 Header Menu - 2021-02-10 13:15:49', 1, 200),
	(108, 'application', 1455110211, 'Image Inspector', 1, 200),
	(109, 'application', 1455110242, 'Set Block Cached Output: 1 - 10 - 35 Header Menu - 2021-02-10 13:17:22', 1, 200),
	(110, 'application', 1455110277, 'Image Inspector', 1, 200),
	(111, 'application', 1455110281, 'Set Block Cached Output: 1 - 10 - 36 Header Menu - 2021-02-10 13:18:01', 1, 200),
	(112, 'application', 1455110299, 'Image Inspector', 1, 200),
	(113, 'application', 1455110306, 'Set Block Cached Output: 1 - 10 - 37 Header Menu - 2021-02-10 13:18:26', 1, 200),
	(114, 'application', 1455110314, 'Set Block Cached Output: 1 - 10 - 10 Header Logo - 2021-02-10 13:18:34', 1, 200),
	(115, 'application', 1455110314, 'Set Block Cached Output: 1 - 10 - 33 Header Menu - 2021-02-10 13:18:34', 1, 200),
	(116, 'application', 1455110314, 'Set Block Cached Output: 1 - 10 - 34 Header Menu - 2021-02-10 13:18:34', 1, 200),
	(117, 'application', 1455113643, 'Set Block Cached Output: 1 - 11 - 10 Header Logo - 2021-02-10 14:14:03', 1, 200),
	(118, 'application', 1455113644, 'Set Block Cached Output: 1 - 11 - 33 Header Menu - 2021-02-10 14:14:04', 1, 200),
	(119, 'application', 1455113644, 'Set Block Cached Output: 1 - 11 - 34 Header Menu - 2021-02-10 14:14:04', 1, 200),
	(120, 'application', 1455113644, 'Set Block Cached Output: 1 - 11 - 35 Header Menu - 2021-02-10 14:14:04', 1, 200),
	(121, 'application', 1455113644, 'Set Block Cached Output: 1 - 11 - 36 Header Menu - 2021-02-10 14:14:04', 1, 200),
	(122, 'application', 1455113644, 'Set Block Cached Output: 1 - 11 - 37 Header Menu - 2021-02-10 14:14:04', 1, 200),
	(123, 'application', 1455114695, 'Set Block Cached Output: 1 - 12 - 10 Header Logo - 2021-02-10 14:31:35', 1, 200),
	(124, 'application', 1455696124, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-02-18 08:02:04', 1, 200),
	(125, 'application', 1455696127, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-02-17 10:02:07', 1, 200),
	(126, 'application', 1455696129, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-02-17 10:02:09', 1, 200),
	(127, 'application', 1455696130, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-02-17 10:02:10', 1, 200),
	(128, 'application', 1455696130, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-02-17 10:02:10', 1, 200),
	(129, 'application', 1455696132, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-02-17 10:02:12', 1, 200),
	(130, 'application', 1455786264, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-02-19 09:04:24', 1, 200),
	(131, 'application', 1455786267, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-02-18 11:04:27', 1, 200),
	(132, 'application', 1455786269, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-02-18 11:04:29', 1, 200),
	(133, 'application', 1455786270, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-02-18 11:04:30', 1, 200),
	(134, 'application', 1455786271, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-02-18 11:04:31', 1, 200),
	(135, 'application', 1455786272, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-02-18 11:04:32', 1, 200),
	(136, 'application', 1456134618, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-02-23 09:50:18', 1, 200),
	(137, 'application', 1456134621, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-02-22 11:50:21', 1, 200),
	(138, 'application', 1456134623, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-02-22 11:50:23', 1, 200),
	(139, 'application', 1456134625, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-02-22 11:50:25', 1, 200),
	(140, 'application', 1456134626, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-02-22 11:50:26', 1, 200),
	(141, 'application', 1456134628, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-02-22 11:50:28', 1, 200),
	(142, 'application', 1456147978, 'Set Block Cached Output: 1 - 13 - 43 Header Menu - 2021-02-22 13:32:58', 1, 200),
	(143, 'application', 1456148146, 'Set Block Cached Output: 1 - 13 - 10 Header Logo - 2021-02-22 13:35:46', 1, 200),
	(144, 'exceptions', 1456148268, 'Exception Occurred: C:\\projects\\herran\\concrete\\vendor\\doctrine\\dbal\\lib\\Doctrine\\DBAL\\Driver\\AbstractMySQLDriver.php:53 An exception occurred while executing \'select * from btCustomMenu where bID=43\':\n\nSQLSTATE[42S02]: Base table or view not found: 1146 Table \'herran.btcustommenu\' doesn\'t exist (0)\n', 1, 600),
	(145, 'application', 1456148350, 'Set Block Cached Output: 1 - 13 - 45 Header Menu - 2021-02-22 13:39:10', 1, 200),
	(146, 'application', 1456151412, 'Set Block Cached Output: 1 - 13 - 49 Header Menu - 2021-02-22 14:30:12', 1, 200),
	(147, 'application', 1456151450, 'Set Block Cached Output: 1 - 13 - 50 Header Menu - 2021-02-22 14:30:50', 1, 200),
	(148, 'application', 1456151458, 'Set Block Cached Output: 1 - 13 - 51 Header Menu - 2021-02-22 14:30:58', 1, 200),
	(149, 'application', 1456151642, 'Set Block Cached Output: 1 - 13 - 52 Header Menu - 2021-02-22 14:34:02', 1, 200),
	(150, 'application', 1456151656, 'Set Block Cached Output: 1 - 13 - 53 Header Menu - 2021-02-22 14:34:16', 1, 200),
	(151, 'application', 1456153074, 'Set Block Cached Output: 1 - 13 - 54 Header Menu - 2021-02-22 14:57:54', 1, 200),
	(152, 'application', 1456153103, 'Set Block Cached Output: 1 - 13 - 55 Header Menu - 2021-02-22 14:58:23', 1, 200),
	(153, 'application', 1456153123, 'Set Block Cached Output: 1 - 13 - 56 Header Menu - 2021-02-22 14:58:43', 1, 200),
	(154, 'application', 1456153175, 'Set Block Cached Output: 1 - 13 - 57 Header Menu - 2021-02-22 14:59:35', 1, 200),
	(155, 'application', 1456153189, 'Set Block Cached Output: 1 - 13 - 58 Header Menu - 2021-02-22 14:59:49', 1, 200),
	(156, 'application', 1456153684, 'Set Block Cached Output: 1 - 14 - 10 Header Logo - 2021-02-22 15:08:04', 1, 200),
	(157, 'application', 1456153684, 'Set Block Cached Output: 1 - 14 - 54 Header Menu - 2021-02-22 15:08:04', 1, 200),
	(158, 'application', 1456153684, 'Set Block Cached Output: 1 - 14 - 55 Header Menu - 2021-02-22 15:08:04', 1, 200),
	(159, 'application', 1456153684, 'Set Block Cached Output: 1 - 14 - 56 Header Menu - 2021-02-22 15:08:04', 1, 200),
	(160, 'application', 1456153684, 'Set Block Cached Output: 1 - 14 - 57 Header Menu - 2021-02-22 15:08:04', 1, 200),
	(161, 'application', 1456153684, 'Set Block Cached Output: 1 - 14 - 58 Header Menu - 2021-02-22 15:08:04', 1, 200),
	(162, 'application', 1456153826, 'Set Block Cached Output: 1 - 15 - 10 Header Logo - 2021-02-22 15:10:26', 1, 200),
	(163, 'application', 1456153826, 'Set Block Cached Output: 1 - 15 - 54 Header Menu - 2021-02-22 15:10:26', 1, 200),
	(164, 'application', 1456153826, 'Set Block Cached Output: 1 - 15 - 55 Header Menu - 2021-02-22 15:10:26', 1, 200),
	(165, 'application', 1456153826, 'Set Block Cached Output: 1 - 15 - 56 Header Menu - 2021-02-22 15:10:26', 1, 200),
	(166, 'application', 1456153827, 'Set Block Cached Output: 1 - 15 - 57 Header Menu - 2021-02-22 15:10:27', 1, 200),
	(167, 'application', 1456153827, 'Set Block Cached Output: 1 - 15 - 58 Header Menu - 2021-02-22 15:10:27', 1, 200),
	(168, 'application', 1456160169, 'Set Block Cached Output: 1 - 16 - 10 Header Logo - 2021-02-22 16:56:09', 1, 200),
	(169, 'application', 1456160169, 'Set Block Cached Output: 1 - 16 - 54 Header Menu - 2021-02-22 16:56:09', 1, 200),
	(170, 'application', 1456160169, 'Set Block Cached Output: 1 - 16 - 55 Header Menu - 2021-02-22 16:56:09', 1, 200),
	(171, 'application', 1456160169, 'Set Block Cached Output: 1 - 16 - 56 Header Menu - 2021-02-22 16:56:09', 1, 200),
	(172, 'application', 1456160169, 'Set Block Cached Output: 1 - 16 - 57 Header Menu - 2021-02-22 16:56:09', 1, 200),
	(173, 'application', 1456160169, 'Set Block Cached Output: 1 - 16 - 58 Header Menu - 2021-02-22 16:56:09', 1, 200),
	(174, 'exceptions', 1456160255, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:77 syntax error, unexpected \'funtion\' (T_STRING), expecting variable (T_VARIABLE) (4)\n', 1, 600),
	(175, 'exceptions', 1456160255, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:77 syntax error, unexpected \'funtion\' (T_STRING), expecting variable (T_VARIABLE) (4)\n', 1, 600),
	(176, 'exceptions', 1456160264, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\controller.php:77 Cannot redeclare Application\\Block\\CustomMenu\\Controller::view() (64)\n', 1, 600),
	(177, 'exceptions', 1456162696, 'Exception Occurred: C:\\projects\\herran\\application\\blocks\\custom_menu\\view.php:14 Cannot use object of type Concrete\\Core\\Page\\Page as array (1)\n', 1, 600),
	(178, 'application', 1456241488, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-02-24 15:31:28', 1, 200),
	(179, 'application', 1456241490, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-02-23 17:31:30', 1, 200),
	(180, 'application', 1456241492, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-02-23 17:31:32', 1, 200),
	(181, 'application', 1456241494, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-02-23 17:31:34', 1, 200),
	(182, 'application', 1456241495, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-02-23 17:31:35', 1, 200),
	(183, 'application', 1456241497, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-02-23 17:31:37', 1, 200),
	(184, 'application', 1456241953, 'Image Inspector', 1, 200),
	(185, 'application', 1456241998, 'Image Inspector', 1, 200),
	(186, 'application', 1456242029, 'Image Inspector', 1, 200),
	(187, 'application', 1456242051, 'Image Inspector', 1, 200),
	(188, 'application', 1456242123, 'Set Block Cached Output: 1 - 17 - 10 Header Logo - 2021-02-23 15:42:03', 1, 200),
	(189, 'application', 1456323780, 'Set Block Cached Output: 1 - 17 - 59 Slider - 2021-02-24 14:23:00', 0, 200),
	(190, 'application', 1456324194, 'Set Block Cached Output: 1 - 18 - 10 Header Logo - 2021-02-24 14:29:54', 1, 200),
	(191, 'application', 1456904082, 'Set Block Cached Output: 127 - 1 - 2 Primary - 2016-03-03 07:34:42', 1, 200),
	(192, 'application', 1456904086, 'Set Block Cached Output: 127 - 1 - 6 Secondary 3 - 2016-03-02 09:34:46', 1, 200),
	(193, 'application', 1456904088, 'Set Block Cached Output: 127 - 1 - 7 Secondary 4 - 2016-03-02 09:34:48', 1, 200),
	(194, 'application', 1456904090, 'Set Block Cached Output: 127 - 1 - 4 Secondary 1 - 2016-03-02 09:34:50', 1, 200),
	(195, 'application', 1456904091, 'Set Block Cached Output: 127 - 1 - 5 Secondary 2 - 2016-03-02 09:34:51', 1, 200),
	(196, 'application', 1456904092, 'Set Block Cached Output: 127 - 1 - 8 Secondary 5 - 2016-03-02 09:34:52', 1, 200);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;


-- Dumping structure for table herran.mailimporters
CREATE TABLE IF NOT EXISTS `mailimporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP',
  PRIMARY KEY (`miID`),
  UNIQUE KEY `miHandle` (`miHandle`),
  KEY `pkgID` (`pkgID`,`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.mailimporters: ~0 rows (approximately)
DELETE FROM `mailimporters`;
/*!40000 ALTER TABLE `mailimporters` DISABLE KEYS */;
INSERT INTO `mailimporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
	(1, 'private_message', '', NULL, NULL, NULL, 0, '', 0, 0, 'POP');
/*!40000 ALTER TABLE `mailimporters` ENABLE KEYS */;


-- Dumping structure for table herran.mailvalidationhashes
CREATE TABLE IF NOT EXISTS `mailvalidationhashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`mvhID`),
  UNIQUE KEY `mHash` (`mHash`),
  KEY `miID` (`miID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.mailvalidationhashes: ~0 rows (approximately)
DELETE FROM `mailvalidationhashes`;
/*!40000 ALTER TABLE `mailvalidationhashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailvalidationhashes` ENABLE KEYS */;


-- Dumping structure for table herran.multilingualpagerelations
CREATE TABLE IF NOT EXISTS `multilingualpagerelations` (
  `mpRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`mpRelationID`,`cID`,`mpLocale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.multilingualpagerelations: ~0 rows (approximately)
DELETE FROM `multilingualpagerelations`;
/*!40000 ALTER TABLE `multilingualpagerelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `multilingualpagerelations` ENABLE KEYS */;


-- Dumping structure for table herran.multilingualsections
CREATE TABLE IF NOT EXISTS `multilingualsections` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msNumPlurals` int(11) NOT NULL DEFAULT '2',
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '(n != 1)',
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.multilingualsections: ~0 rows (approximately)
DELETE FROM `multilingualsections`;
/*!40000 ALTER TABLE `multilingualsections` DISABLE KEYS */;
/*!40000 ALTER TABLE `multilingualsections` ENABLE KEYS */;


-- Dumping structure for table herran.multilingualtranslations
CREATE TABLE IF NOT EXISTS `multilingualtranslations` (
  `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci,
  `msgstr` text COLLATE utf8_unicode_ci,
  `msgstrPlurals` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`mtID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.multilingualtranslations: ~0 rows (approximately)
DELETE FROM `multilingualtranslations`;
/*!40000 ALTER TABLE `multilingualtranslations` DISABLE KEYS */;
/*!40000 ALTER TABLE `multilingualtranslations` ENABLE KEYS */;


-- Dumping structure for table herran.oauthusermap
CREATE TABLE IF NOT EXISTS `oauthusermap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`,`namespace`),
  UNIQUE KEY `oauth_binding` (`binding`,`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.oauthusermap: ~0 rows (approximately)
DELETE FROM `oauthusermap`;
/*!40000 ALTER TABLE `oauthusermap` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauthusermap` ENABLE KEYS */;


-- Dumping structure for table herran.packages
CREATE TABLE IF NOT EXISTS `packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgDescription` text COLLATE utf8_unicode_ci,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.packages: ~0 rows (approximately)
DELETE FROM `packages`;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;


-- Dumping structure for table herran.pagefeeds
CREATE TABLE IF NOT EXISTS `pagefeeds` (
  `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `pfContentToDisplay` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pfDisplayAliases` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) DEFAULT '0',
  `iconFID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pfID`),
  UNIQUE KEY `pfHandle` (`pfHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagefeeds: ~0 rows (approximately)
DELETE FROM `pagefeeds`;
/*!40000 ALTER TABLE `pagefeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagefeeds` ENABLE KEYS */;


-- Dumping structure for table herran.pagepaths
CREATE TABLE IF NOT EXISTS `pagepaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`),
  KEY `cPath` (`cPath`(255))
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagepaths: ~160 rows (approximately)
DELETE FROM `pagepaths`;
/*!40000 ALTER TABLE `pagepaths` DISABLE KEYS */;
INSERT INTO `pagepaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`, `ppGeneratedFromURLSlugs`) VALUES
	(1, 2, '/dashboard', '1', 1),
	(2, 3, '/dashboard/sitemap', '1', 1),
	(3, 4, '/dashboard/sitemap/full', '1', 1),
	(4, 5, '/dashboard/sitemap/explore', '1', 1),
	(5, 6, '/dashboard/sitemap/search', '1', 1),
	(6, 7, '/dashboard/files', '1', 1),
	(7, 8, '/dashboard/files/search', '1', 1),
	(8, 9, '/dashboard/files/attributes', '1', 1),
	(9, 10, '/dashboard/files/sets', '1', 1),
	(10, 11, '/dashboard/files/add_set', '1', 1),
	(11, 12, '/dashboard/users', '1', 1),
	(12, 13, '/dashboard/users/search', '1', 1),
	(13, 14, '/dashboard/users/groups', '1', 1),
	(14, 15, '/dashboard/users/attributes', '1', 1),
	(15, 16, '/dashboard/users/add', '1', 1),
	(16, 17, '/dashboard/users/add_group', '1', 1),
	(17, 18, '/dashboard/users/groups/bulkupdate', '1', 1),
	(18, 19, '/dashboard/users/group_sets', '1', 1),
	(19, 20, '/dashboard/users/points', '1', 1),
	(20, 21, '/dashboard/users/points/assign', '1', 1),
	(21, 22, '/dashboard/users/points/actions', '1', 1),
	(22, 23, '/dashboard/reports', '1', 1),
	(23, 24, '/dashboard/reports/forms', '1', 1),
	(24, 25, '/dashboard/reports/surveys', '1', 1),
	(25, 26, '/dashboard/reports/logs', '1', 1),
	(26, 27, '/dashboard/pages', '1', 1),
	(27, 28, '/dashboard/pages/themes', '1', 1),
	(28, 29, '/dashboard/pages/themes/inspect', '1', 1),
	(29, 30, '/dashboard/pages/types', '1', 1),
	(30, 31, '/dashboard/pages/types/organize', '1', 1),
	(31, 32, '/dashboard/pages/types/add', '1', 1),
	(32, 33, '/dashboard/pages/types/form', '1', 1),
	(33, 34, '/dashboard/pages/types/output', '1', 1),
	(34, 35, '/dashboard/pages/types/attributes', '1', 1),
	(35, 36, '/dashboard/pages/types/permissions', '1', 1),
	(36, 37, '/dashboard/pages/templates', '1', 1),
	(37, 38, '/dashboard/pages/templates/add', '1', 1),
	(38, 39, '/dashboard/pages/attributes', '1', 1),
	(39, 40, '/dashboard/pages/single', '1', 1),
	(40, 41, '/dashboard/pages/feeds', '1', 1),
	(41, 42, '/dashboard/conversations', '1', 1),
	(42, 43, '/dashboard/conversations/messages', '1', 1),
	(43, 44, '/dashboard/workflow', '1', 1),
	(44, 45, '/dashboard/workflow/me', '1', 1),
	(45, 46, '/dashboard/workflow/workflows', '1', 1),
	(46, 47, '/dashboard/blocks', '1', 1),
	(47, 48, '/dashboard/blocks/stacks', '1', 1),
	(48, 49, '/dashboard/blocks/permissions', '1', 1),
	(49, 50, '/dashboard/blocks/stacks/list', '1', 1),
	(50, 51, '/dashboard/blocks/types', '1', 1),
	(51, 52, '/dashboard/extend', '1', 1),
	(52, 53, '/dashboard/news', '1', 1),
	(53, 54, '/dashboard/extend/install', '1', 1),
	(54, 55, '/dashboard/extend/update', '1', 1),
	(55, 56, '/dashboard/extend/connect', '1', 1),
	(56, 57, '/dashboard/extend/themes', '1', 1),
	(57, 58, '/dashboard/extend/addons', '1', 1),
	(58, 59, '/dashboard/system', '1', 1),
	(59, 60, '/dashboard/system/basics', '1', 1),
	(60, 61, '/dashboard/system/basics/name', '1', 1),
	(61, 62, '/dashboard/system/basics/accessibility', '1', 1),
	(62, 63, '/dashboard/system/basics/social', '1', 1),
	(63, 64, '/dashboard/system/basics/icons', '1', 1),
	(64, 65, '/dashboard/system/basics/editor', '1', 1),
	(65, 66, '/dashboard/system/basics/multilingual', '1', 1),
	(66, 67, '/dashboard/system/basics/timezone', '1', 1),
	(67, 68, '/dashboard/system/multilingual', '1', 1),
	(68, 69, '/dashboard/system/multilingual/setup', '1', 1),
	(69, 70, '/dashboard/system/multilingual/copy', '1', 1),
	(70, 71, '/dashboard/system/multilingual/page_report', '1', 1),
	(71, 72, '/dashboard/system/multilingual/translate_interface', '1', 1),
	(72, 73, '/dashboard/system/seo', '1', 1),
	(73, 74, '/dashboard/system/seo/urls', '1', 1),
	(74, 75, '/dashboard/system/seo/bulk', '1', 1),
	(75, 76, '/dashboard/system/seo/codes', '1', 1),
	(76, 77, '/dashboard/system/seo/excluded', '1', 1),
	(77, 78, '/dashboard/system/seo/searchindex', '1', 1),
	(78, 79, '/dashboard/system/files', '1', 1),
	(79, 80, '/dashboard/system/files/permissions', '1', 1),
	(80, 81, '/dashboard/system/files/filetypes', '1', 1),
	(81, 82, '/dashboard/system/files/thumbnails', '1', 1),
	(82, 83, '/dashboard/system/files/storage', '1', 1),
	(83, 84, '/dashboard/system/optimization', '1', 1),
	(84, 85, '/dashboard/system/optimization/cache', '1', 1),
	(85, 86, '/dashboard/system/optimization/clearcache', '1', 1),
	(86, 87, '/dashboard/system/optimization/jobs', '1', 1),
	(87, 88, '/dashboard/system/optimization/query_log', '1', 1),
	(88, 89, '/dashboard/system/permissions', '1', 1),
	(89, 90, '/dashboard/system/permissions/site', '1', 1),
	(90, 91, '/dashboard/system/permissions/tasks', '1', 1),
	(91, 92, '/dashboard/system/permissions/users', '1', 1),
	(92, 93, '/dashboard/system/permissions/advanced', '1', 1),
	(93, 94, '/dashboard/system/permissions/blacklist', '1', 1),
	(94, 95, '/dashboard/system/permissions/captcha', '1', 1),
	(95, 96, '/dashboard/system/permissions/antispam', '1', 1),
	(96, 97, '/dashboard/system/permissions/maintenance', '1', 1),
	(97, 98, '/dashboard/system/registration', '1', 1),
	(98, 99, '/dashboard/system/registration/postlogin', '1', 1),
	(99, 100, '/dashboard/system/registration/profiles', '1', 1),
	(100, 101, '/dashboard/system/registration/open', '1', 1),
	(101, 102, '/dashboard/system/registration/authentication', '1', 1),
	(102, 103, '/dashboard/system/mail', '1', 1),
	(103, 104, '/dashboard/system/mail/method', '1', 1),
	(104, 105, '/dashboard/system/mail/method/test', '1', 1),
	(105, 106, '/dashboard/system/mail/importers', '1', 1),
	(106, 107, '/dashboard/system/conversations', '1', 1),
	(107, 108, '/dashboard/system/conversations/settings', '1', 1),
	(108, 109, '/dashboard/system/conversations/points', '1', 1),
	(109, 110, '/dashboard/system/conversations/bannedwords', '1', 1),
	(110, 111, '/dashboard/system/conversations/permissions', '1', 1),
	(111, 112, '/dashboard/system/attributes', '1', 1),
	(112, 113, '/dashboard/system/attributes/sets', '1', 1),
	(113, 114, '/dashboard/system/attributes/types', '1', 1),
	(114, 115, '/dashboard/system/attributes/topics', '1', 1),
	(115, 116, '/dashboard/system/attributes/topics/add', '1', 1),
	(116, 117, '/dashboard/system/environment', '1', 1),
	(117, 118, '/dashboard/system/environment/info', '1', 1),
	(118, 119, '/dashboard/system/environment/debug', '1', 1),
	(119, 120, '/dashboard/system/environment/logging', '1', 1),
	(120, 121, '/dashboard/system/environment/proxy', '1', 1),
	(121, 122, '/dashboard/system/environment/entities', '1', 1),
	(122, 123, '/dashboard/system/backup', '1', 1),
	(123, 124, '/dashboard/system/backup/backup', '1', 1),
	(124, 125, '/dashboard/system/backup/update', '1', 1),
	(125, 126, '/dashboard/welcome', '1', 1),
	(126, 127, '/dashboard/home', '1', 1),
	(127, 128, '/!drafts', '1', 1),
	(128, 129, '/!trash', '1', 1),
	(129, 130, '/!stacks', '1', 1),
	(130, 131, '/login', '1', 1),
	(131, 132, '/register', '1', 1),
	(132, 133, '/account', '1', 1),
	(133, 134, '/account/edit_profile', '1', 1),
	(134, 135, '/account/avatar', '1', 1),
	(135, 136, '/account/messages', '1', 1),
	(136, 137, '/account/messages/inbox', '1', 1),
	(137, 138, '/members', '1', 1),
	(138, 139, '/members/profile', '1', 1),
	(139, 140, '/members/directory', '1', 1),
	(140, 141, '/page_not_found', '1', 1),
	(141, 142, '/page_forbidden', '1', 1),
	(142, 143, '/download_file', '1', 1),
	(143, 145, '/!stacks/header-site-title', '1', 1),
	(144, 146, '/!stacks/header-navigation', '1', 1),
	(145, 147, '/!stacks/footer-legal', '1', 1),
	(146, 148, '/!stacks/footer-navigation', '1', 1),
	(147, 149, '/!stacks/footer-contact', '1', 1),
	(148, 150, '/!stacks/header-search', '1', 1),
	(149, 151, '/!stacks/footer-site-title', '1', 1),
	(150, 152, '/!stacks/footer-social', '1', 1),
	(151, 153, '/!stacks/header-logo', '1', 1),
	(152, 154, '/about-us', '1', 1),
	(153, 155, '/new', '1', 1),
	(154, 156, '/products', '1', 1),
	(155, 157, '/contact-us', '1', 1),
	(156, 158, '/!stacks/header-menu', '1', 1),
	(157, 159, '/products/bread', '1', 1),
	(158, 160, '/products/cakes', '1', 1),
	(159, 161, '/products/chinese-deli', '1', 1),
	(160, 162, '/products/hopia', '1', 1),
	(161, 163, '/products/pastries', '1', 1);
/*!40000 ALTER TABLE `pagepaths` ENABLE KEYS */;


-- Dumping structure for table herran.pagepermissionassignments
CREATE TABLE IF NOT EXISTS `pagepermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`),
  KEY `paID` (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagepermissionassignments: ~39 rows (approximately)
DELETE FROM `pagepermissionassignments`;
/*!40000 ALTER TABLE `pagepermissionassignments` DISABLE KEYS */;
INSERT INTO `pagepermissionassignments` (`cID`, `pkID`, `paID`) VALUES
	(1, 1, 42),
	(2, 1, 62),
	(128, 1, 63),
	(131, 1, 60),
	(132, 1, 61),
	(1, 2, 43),
	(128, 2, 81),
	(1, 3, 44),
	(128, 3, 65),
	(1, 4, 45),
	(128, 4, 66),
	(1, 5, 46),
	(128, 5, 82),
	(1, 6, 47),
	(128, 6, 83),
	(1, 7, 48),
	(128, 7, 69),
	(1, 8, 50),
	(128, 8, 71),
	(1, 9, 51),
	(128, 9, 84),
	(1, 10, 52),
	(128, 10, 85),
	(1, 11, 53),
	(128, 11, 74),
	(1, 12, 54),
	(128, 12, 86),
	(1, 13, 55),
	(128, 13, 87),
	(1, 14, 56),
	(128, 14, 88),
	(1, 15, 57),
	(128, 15, 78),
	(1, 16, 58),
	(128, 16, 79),
	(1, 17, 59),
	(128, 17, 80),
	(1, 18, 49),
	(128, 18, 70);
/*!40000 ALTER TABLE `pagepermissionassignments` ENABLE KEYS */;


-- Dumping structure for table herran.pagepermissionpagetypeaccesslist
CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagepermissionpagetypeaccesslist: ~0 rows (approximately)
DELETE FROM `pagepermissionpagetypeaccesslist`;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslist` ENABLE KEYS */;


-- Dumping structure for table herran.pagepermissionpagetypeaccesslistcustom
CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`),
  KEY `peID` (`peID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagepermissionpagetypeaccesslistcustom: ~0 rows (approximately)
DELETE FROM `pagepermissionpagetypeaccesslistcustom`;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpagetypeaccesslistcustom` ENABLE KEYS */;


-- Dumping structure for table herran.pagepermissionpropertyaccesslist
CREATE TABLE IF NOT EXISTS `pagepermissionpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagepermissionpropertyaccesslist: ~0 rows (approximately)
DELETE FROM `pagepermissionpropertyaccesslist`;
/*!40000 ALTER TABLE `pagepermissionpropertyaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpropertyaccesslist` ENABLE KEYS */;


-- Dumping structure for table herran.pagepermissionpropertyattributeaccesslistcustom
CREATE TABLE IF NOT EXISTS `pagepermissionpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagepermissionpropertyattributeaccesslistcustom: ~0 rows (approximately)
DELETE FROM `pagepermissionpropertyattributeaccesslistcustom`;
/*!40000 ALTER TABLE `pagepermissionpropertyattributeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionpropertyattributeaccesslistcustom` ENABLE KEYS */;


-- Dumping structure for table herran.pagepermissionthemeaccesslist
CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagepermissionthemeaccesslist: ~0 rows (approximately)
DELETE FROM `pagepermissionthemeaccesslist`;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslist` ENABLE KEYS */;


-- Dumping structure for table herran.pagepermissionthemeaccesslistcustom
CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  KEY `peID` (`peID`),
  KEY `pThemeID` (`pThemeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagepermissionthemeaccesslistcustom: ~0 rows (approximately)
DELETE FROM `pagepermissionthemeaccesslistcustom`;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagepermissionthemeaccesslistcustom` ENABLE KEYS */;


-- Dumping structure for table herran.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`ptID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cID`,`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`,`cPointerID`),
  KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  KEY `pkgID` (`pkgID`),
  KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pages: ~164 rows (approximately)
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`cID`, `ptID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cDraftTargetParentPageID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
	(1, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 15, 0, 0, 0, 0, 0, '0', 0, 0),
	(2, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 13, 0, 0, 0, 0, -1, '0', 0, 1),
	(3, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 0, 2, 0, 0, -1, '0', 0, 1),
	(4, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 3, 0, 0, -1, '0', 0, 1),
	(5, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 3, 0, 0, -1, '0', 0, 1),
	(6, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 3, 0, 0, -1, '0', 0, 1),
	(7, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 1, 2, 0, 0, -1, '0', 0, 1),
	(8, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 7, 0, 0, -1, '0', 0, 1),
	(9, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 7, 0, 0, -1, '0', 0, 1),
	(10, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 7, 0, 0, -1, '0', 0, 1),
	(11, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 7, 0, 0, -1, '0', 0, 1),
	(12, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 7, 2, 2, 0, 0, -1, '0', 0, 1),
	(13, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 12, 0, 0, -1, '0', 0, 1),
	(14, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 1, 1, 12, 0, 0, -1, '0', 0, 1),
	(15, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 12, 0, 0, -1, '0', 0, 1),
	(16, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 12, 0, 0, -1, '0', 0, 1),
	(17, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 12, 0, 0, -1, '0', 0, 1),
	(18, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups/bulkupdate.php', 0, NULL, 0, 1, 0, 0, 14, 0, 0, -1, '0', 0, 1),
	(19, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 12, 0, 0, -1, '0', 0, 1),
	(20, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/view.php', 0, NULL, 0, 1, 2, 6, 12, 0, 0, -1, '0', 0, 1),
	(21, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/assign.php', 0, NULL, 0, 1, 0, 0, 20, 0, 0, -1, '0', 0, 1),
	(22, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/actions.php', 0, NULL, 0, 1, 0, 1, 20, 0, 0, -1, '0', 0, 1),
	(23, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 3, 3, 2, 0, 0, -1, '0', 0, 1),
	(24, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 0, 0, 23, 0, 0, -1, '0', 0, 1),
	(25, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 1, 23, 0, 0, -1, '0', 0, 1),
	(26, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 2, 23, 0, 0, -1, '0', 0, 1),
	(27, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 6, 4, 2, 0, 0, -1, '0', 0, 1),
	(28, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 1, 0, 27, 0, 0, -1, '0', 0, 1),
	(29, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 0, 28, 0, 0, -1, '0', 0, 1),
	(30, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 6, 1, 27, 0, 0, -1, '0', 0, 1),
	(31, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/organize.php', 0, NULL, 0, 1, 0, 0, 30, 0, 0, -1, '0', 0, 1),
	(32, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 1, 30, 0, 0, -1, '0', 0, 1),
	(33, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/form.php', 0, NULL, 0, 1, 0, 2, 30, 0, 0, -1, '0', 0, 1),
	(34, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/output.php', 0, NULL, 0, 1, 0, 3, 30, 0, 0, -1, '0', 0, 1),
	(35, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/attributes.php', 0, NULL, 0, 1, 0, 4, 30, 0, 0, -1, '0', 0, 1),
	(36, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/permissions.php', 0, NULL, 0, 1, 0, 5, 30, 0, 0, -1, '0', 0, 1),
	(37, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/view.php', 0, NULL, 0, 1, 1, 2, 27, 0, 0, -1, '0', 0, 1),
	(38, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/add.php', 0, NULL, 0, 1, 0, 0, 37, 0, 0, -1, '0', 0, 1),
	(39, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 3, 27, 0, 0, -1, '0', 0, 1),
	(40, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 4, 27, 0, 0, -1, '0', 0, 1),
	(41, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/feeds.php', 0, NULL, 0, 1, 0, 5, 27, 0, 0, -1, '0', 0, 1),
	(42, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/view.php', 0, NULL, 0, 1, 1, 5, 2, 0, 0, -1, '0', 0, 1),
	(43, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/messages.php', 0, NULL, 0, 1, 0, 0, 42, 0, 0, -1, '0', 0, 1),
	(44, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/view.php', 0, NULL, 0, 1, 2, 6, 2, 0, 0, -1, '0', 0, 1),
	(45, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/me.php', 0, NULL, 0, 1, 0, 0, 44, 0, 0, -1, '0', 0, 1),
	(46, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/workflows.php', 0, NULL, 0, 1, 0, 1, 44, 0, 0, -1, '0', 0, 1),
	(47, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 7, 2, 0, 0, -1, '0', 0, 1),
	(48, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 47, 0, 0, -1, '0', 0, 1),
	(49, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 47, 0, 0, -1, '0', 0, 1),
	(50, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 48, 0, 0, -1, '0', 0, 1),
	(51, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 47, 0, 0, -1, '0', 0, 1),
	(52, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 8, 2, 0, 0, -1, '0', 0, 1),
	(53, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/news.php', 0, NULL, 0, 1, 0, 9, 2, 0, 0, -1, '0', 0, 1),
	(54, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 52, 0, 0, -1, '0', 0, 1),
	(55, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 52, 0, 0, -1, '0', 0, 1),
	(56, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 52, 0, 0, -1, '0', 0, 1),
	(57, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 52, 0, 0, -1, '0', 0, 1),
	(58, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/addons.php', 0, NULL, 0, 1, 0, 4, 52, 0, 0, -1, '0', 0, 1),
	(59, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 12, 10, 2, 0, 0, -1, '0', 0, 1),
	(60, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 7, 0, 59, 0, 0, -1, '0', 0, 1),
	(61, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/name.php', 0, NULL, 0, 1, 0, 0, 60, 0, 0, -1, '0', 0, 1),
	(62, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/accessibility.php', 0, NULL, 0, 1, 0, 1, 60, 0, 0, -1, '0', 0, 1),
	(63, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/social.php', 0, NULL, 0, 1, 0, 2, 60, 0, 0, -1, '0', 0, 1),
	(64, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 3, 60, 0, 0, -1, '0', 0, 1),
	(65, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 4, 60, 0, 0, -1, '0', 0, 1),
	(66, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 0, 5, 60, 0, 0, -1, '0', 0, 1),
	(67, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 6, 60, 0, 0, -1, '0', 0, 1),
	(68, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/view.php', 0, NULL, 0, 1, 4, 1, 59, 0, 0, -1, '0', 0, 1),
	(69, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/setup.php', 0, NULL, 0, 1, 0, 0, 68, 0, 0, -1, '0', 0, 1),
	(70, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/copy.php', 0, NULL, 0, 1, 0, 1, 68, 0, 0, -1, '0', 0, 1),
	(71, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/page_report.php', 0, NULL, 0, 1, 0, 2, 68, 0, 0, -1, '0', 0, 1),
	(72, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/translate_interface.php', 0, NULL, 0, 1, 0, 3, 68, 0, 0, -1, '0', 0, 1),
	(73, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 5, 2, 59, 0, 0, -1, '0', 0, 1),
	(74, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 73, 0, 0, -1, '0', 0, 1),
	(75, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk.php', 0, NULL, 0, 1, 0, 1, 73, 0, 0, -1, '0', 0, 1),
	(76, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/codes.php', 0, NULL, 0, 1, 0, 2, 73, 0, 0, -1, '0', 0, 1),
	(77, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 73, 0, 0, -1, '0', 0, 1),
	(78, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/searchindex.php', 0, NULL, 0, 1, 0, 4, 73, 0, 0, -1, '0', 0, 1),
	(79, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/view.php', 0, NULL, 0, 1, 4, 3, 59, 0, 0, -1, '0', 0, 1),
	(80, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/permissions.php', 0, NULL, 0, 1, 0, 0, 79, 0, 0, -1, '0', 0, 1),
	(81, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/filetypes.php', 0, NULL, 0, 1, 0, 1, 79, 0, 0, -1, '0', 0, 1),
	(82, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/thumbnails.php', 0, NULL, 0, 1, 0, 2, 79, 0, 0, -1, '0', 0, 1),
	(83, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/storage.php', 0, NULL, 0, 1, 0, 3, 79, 0, 0, -1, '0', 0, 1),
	(84, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 4, 4, 59, 0, 0, -1, '0', 0, 1),
	(85, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 84, 0, 0, -1, '0', 0, 1),
	(86, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clearcache.php', 0, NULL, 0, 1, 0, 1, 84, 0, 0, -1, '0', 0, 1),
	(87, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 84, 0, 0, -1, '0', 0, 1),
	(88, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/query_log.php', 0, NULL, 0, 1, 0, 3, 84, 0, 0, -1, '0', 0, 1),
	(89, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 8, 5, 59, 0, 0, -1, '0', 0, 1),
	(90, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 89, 0, 0, -1, '0', 0, 1),
	(91, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 1, 89, 0, 0, -1, '0', 0, 1),
	(92, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 2, 89, 0, 0, -1, '0', 0, 1),
	(93, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 3, 89, 0, 0, -1, '0', 0, 1),
	(94, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/blacklist.php', 0, NULL, 0, 1, 0, 4, 89, 0, 0, -1, '0', 0, 1),
	(95, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 5, 89, 0, 0, -1, '0', 0, 1),
	(96, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 6, 89, 0, 0, -1, '0', 0, 1),
	(97, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance.php', 0, NULL, 0, 1, 0, 7, 89, 0, 0, -1, '0', 0, 1),
	(98, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 4, 6, 59, 0, 0, -1, '0', 0, 1),
	(99, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 0, 98, 0, 0, -1, '0', 0, 1),
	(100, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 1, 98, 0, 0, -1, '0', 0, 1),
	(101, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/open.php', 0, NULL, 0, 1, 0, 2, 98, 0, 0, -1, '0', 0, 1),
	(102, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/authentication.php', 0, NULL, 0, 1, 0, 3, 98, 0, 0, -1, '0', 0, 1),
	(103, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 2, 7, 59, 0, 0, -1, '0', 0, 1),
	(104, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 1, 0, 103, 0, 0, -1, '0', 0, 1),
	(105, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method/test.php', 0, NULL, 0, 1, 0, 0, 104, 0, 0, -1, '0', 0, 1),
	(106, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 103, 0, 0, -1, '0', 0, 1),
	(107, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/view.php', 0, NULL, 0, 1, 4, 8, 59, 0, 0, -1, '0', 0, 1),
	(108, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/settings.php', 0, NULL, 0, 1, 0, 0, 107, 0, 0, -1, '0', 0, 1),
	(109, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/points.php', 0, NULL, 0, 1, 0, 1, 107, 0, 0, -1, '0', 0, 1),
	(110, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/bannedwords.php', 0, NULL, 0, 1, 0, 2, 107, 0, 0, -1, '0', 0, 1),
	(111, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/permissions.php', 0, NULL, 0, 1, 0, 3, 107, 0, 0, -1, '0', 0, 1),
	(112, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 3, 9, 59, 0, 0, -1, '0', 0, 1),
	(113, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 0, 112, 0, 0, -1, '0', 0, 1),
	(114, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 1, 112, 0, 0, -1, '0', 0, 1),
	(115, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/view.php', 0, NULL, 0, 1, 1, 2, 112, 0, 0, -1, '0', 0, 1),
	(116, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/add.php', 0, NULL, 0, 1, 0, 0, 115, 0, 0, -1, '0', 0, 1),
	(117, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 5, 10, 59, 0, 0, -1, '0', 0, 1),
	(118, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 117, 0, 0, -1, '0', 0, 1),
	(119, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 117, 0, 0, -1, '0', 0, 1),
	(120, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 117, 0, 0, -1, '0', 0, 1),
	(121, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 3, 117, 0, 0, -1, '0', 0, 1),
	(122, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/entities.php', 0, NULL, 0, 1, 0, 4, 117, 0, 0, -1, '0', 0, 1),
	(123, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/view.php', 0, NULL, 0, 1, 2, 11, 59, 0, 0, -1, '0', 0, 1),
	(124, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/backup.php', 0, NULL, 0, 1, 0, 0, 123, 0, 0, -1, '0', 0, 1),
	(125, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/update.php', 0, NULL, 0, 1, 0, 1, 123, 0, 0, -1, '0', 0, 1),
	(126, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 2, 0, 0, -1, '0', 0, 1),
	(127, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 2, 0, 0, -1, '0', 0, 1),
	(128, 0, 0, 1, 0, NULL, NULL, NULL, 1, 128, 'OVERRIDE', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
	(129, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
	(130, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 10, 0, 0, 0, 0, -1, '0', 0, 1),
	(131, 0, 0, 1, 0, NULL, NULL, NULL, 1, 131, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
	(132, 0, 0, 1, 0, NULL, NULL, NULL, 1, 132, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
	(133, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/view.php', 0, NULL, 0, 1, 3, 0, 0, 0, 0, -1, '0', 0, 1),
	(134, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/edit_profile.php', 0, NULL, 0, 1, 0, 0, 133, 0, 0, -1, '0', 0, 1),
	(135, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/avatar.php', 0, NULL, 0, 1, 0, 1, 133, 0, 0, -1, '0', 0, 1),
	(136, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages/view.php', 0, NULL, 0, 1, 1, 2, 133, 0, 0, -1, '0', 0, 1),
	(137, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages/inbox.php', 0, NULL, 0, 1, 0, 0, 136, 0, 0, -1, '0', 0, 1),
	(138, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/view.php', 0, NULL, 0, 1, 2, 0, 1, 0, 0, -1, '0', 0, 1),
	(139, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/profile.php', 0, NULL, 0, 1, 0, 0, 138, 0, 0, -1, '0', 0, 1),
	(140, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/directory.php', 0, NULL, 0, 1, 0, 1, 138, 0, 0, -1, '0', 0, 1),
	(141, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 1, 0, 0, 0, -1, '0', 0, 1),
	(142, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 1, 0, 0, 0, -1, '0', 0, 1),
	(143, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 1, 1, 0, 0, -1, '0', 0, 1),
	(144, 6, 1, NULL, 0, NULL, NULL, NULL, 1, 144, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
	(145, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 130, 0, 0, -1, '0', 0, 1),
	(146, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 130, 0, 0, -1, '0', 0, 1),
	(147, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 130, 0, 0, -1, '0', 0, 1),
	(148, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 130, 0, 0, -1, '0', 0, 1),
	(149, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 130, 0, 0, -1, '0', 0, 1),
	(150, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 130, 0, 0, -1, '0', 0, 1),
	(151, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 130, 0, 0, -1, '0', 0, 1),
	(152, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 130, 0, 0, -1, '0', 0, 1),
	(153, 1, 0, NULL, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 8, 130, 0, 0, -1, '0', 0, 1),
	(154, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 1, 0, 1, -1, '0', 0, 0),
	(155, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 1, 0, 1, -1, '0', 0, 0),
	(156, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 5, 4, 1, 0, 1, -1, '0', 0, 0),
	(157, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 1, 0, 1, -1, '0', 0, 0),
	(158, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 9, 130, 0, 0, -1, '0', 0, 1),
	(159, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 156, 0, 156, -1, '0', 0, 0),
	(160, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 156, 0, 156, -1, '0', 0, 0),
	(161, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 156, 0, 156, -1, '0', 0, 0),
	(162, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 156, 0, 156, -1, '0', 0, 0),
	(163, 6, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 156, 0, 156, -1, '0', 0, 0),
	(164, 6, 1, NULL, 0, NULL, NULL, NULL, 1, 164, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Dumping structure for table herran.pagesearchindex
CREATE TABLE IF NOT EXISTS `pagesearchindex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagesearchindex: 116 rows
DELETE FROM `pagesearchindex`;
/*!40000 ALTER TABLE `pagesearchindex` DISABLE KEYS */;
INSERT INTO `pagesearchindex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
	(2, '', 'Dashboard', '', '/dashboard', '2016-01-14 08:11:33', '2016-01-14 08:12:04', NULL, 0),
	(3, '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2016-01-14 08:11:34', '2016-01-14 08:12:05', NULL, 0),
	(4, '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2016-01-14 08:11:34', '2016-01-14 08:12:05', NULL, 0),
	(5, '', 'Flat View', '', '/dashboard/sitemap/explore', '2016-01-14 08:11:34', '2016-01-14 08:12:05', NULL, 0),
	(6, '', 'Page Search', '', '/dashboard/sitemap/search', '2016-01-14 08:11:35', '2016-01-14 08:12:05', NULL, 0),
	(8, '', 'File Manager', '', '/dashboard/files/search', '2016-01-14 08:11:35', '2016-01-14 08:12:05', NULL, 0),
	(9, '', 'Attributes', '', '/dashboard/files/attributes', '2016-01-14 08:11:35', '2016-01-14 08:12:05', NULL, 0),
	(10, '', 'File Sets', '', '/dashboard/files/sets', '2016-01-14 08:11:36', '2016-01-14 08:12:05', NULL, 0),
	(11, '', 'Add File Set', '', '/dashboard/files/add_set', '2016-01-14 08:11:36', '2016-01-14 08:12:05', NULL, 0),
	(12, '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2016-01-14 08:11:36', '2016-01-14 08:12:06', NULL, 0),
	(13, '', 'Search Users', '', '/dashboard/users/search', '2016-01-14 08:11:36', '2016-01-14 08:12:06', NULL, 0),
	(14, '', 'User Groups', '', '/dashboard/users/groups', '2016-01-14 08:11:36', '2016-01-14 08:12:06', NULL, 0),
	(15, '', 'Attributes', '', '/dashboard/users/attributes', '2016-01-14 08:11:37', '2016-01-14 08:12:06', NULL, 0),
	(16, '', 'Add User', '', '/dashboard/users/add', '2016-01-14 08:11:37', '2016-01-14 08:12:06', NULL, 0),
	(17, '', 'Add Group', '', '/dashboard/users/add_group', '2016-01-14 08:11:37', '2016-01-14 08:12:06', NULL, 0),
	(19, '', 'Group Sets', '', '/dashboard/users/group_sets', '2016-01-14 08:11:37', '2016-01-14 08:12:06', NULL, 0),
	(20, '', 'Community Points', NULL, '/dashboard/users/points', '2016-01-14 08:11:38', '2016-01-14 08:12:07', NULL, 0),
	(22, '', 'Actions', NULL, '/dashboard/users/points/actions', '2016-01-14 08:11:38', '2016-01-14 08:12:07', NULL, 0),
	(23, '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2016-01-14 08:11:38', '2016-01-14 08:12:07', NULL, 0),
	(24, '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2016-01-14 08:11:38', '2016-01-14 08:12:07', NULL, 0),
	(25, '', 'Surveys', '', '/dashboard/reports/surveys', '2016-01-14 08:11:39', '2016-01-14 08:12:07', NULL, 0),
	(26, '', 'Logs', '', '/dashboard/reports/logs', '2016-01-14 08:11:39', '2016-01-14 08:12:07', NULL, 0),
	(28, '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2016-01-14 08:11:39', '2016-01-14 08:12:07', NULL, 0),
	(29, '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2016-01-14 08:11:39', '2016-01-14 08:12:07', NULL, 0),
	(31, '', 'Organize Page Type Order', '', '/dashboard/pages/types/organize', '2016-01-14 08:11:40', '2016-01-14 08:12:07', NULL, 0),
	(32, '', 'Add Page Type', '', '/dashboard/pages/types/add', '2016-01-14 08:11:40', '2016-01-14 08:12:07', NULL, 0),
	(33, '', 'Compose Form', '', '/dashboard/pages/types/form', '2016-01-14 08:11:40', '2016-01-14 08:12:08', NULL, 0),
	(34, '', 'Defaults and Output', '', '/dashboard/pages/types/output', '2016-01-14 08:11:40', '2016-01-14 08:12:08', NULL, 0),
	(35, '', 'Page Type Attributes', '', '/dashboard/pages/types/attributes', '2016-01-14 08:11:40', '2016-01-14 08:12:08', NULL, 0),
	(36, '', 'Page Type Permissions', '', '/dashboard/pages/types/permissions', '2016-01-14 08:11:41', '2016-01-14 08:12:08', NULL, 0),
	(38, '', 'Add Page Template', 'Add page templates to your site.', '/dashboard/pages/templates/add', '2016-01-14 08:11:41', '2016-01-14 08:12:08', NULL, 0),
	(39, '', 'Attributes', '', '/dashboard/pages/attributes', '2016-01-14 08:11:41', '2016-01-14 08:12:08', NULL, 0),
	(40, '', 'Single Pages', '', '/dashboard/pages/single', '2016-01-14 08:11:41', '2016-01-14 08:12:09', NULL, 0),
	(41, '', 'RSS Feeds', '', '/dashboard/pages/feeds', '2016-01-14 08:11:42', '2016-01-14 08:12:09', NULL, 0),
	(43, '', 'Messages', '', '/dashboard/conversations/messages', '2016-01-14 08:11:42', '2016-01-14 08:12:09', NULL, 0),
	(44, '', 'Workflow', '', '/dashboard/workflow', '2016-01-14 08:11:42', '2016-01-14 08:12:09', NULL, 0),
	(48, '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2016-01-14 08:11:43', '2016-01-14 08:12:09', NULL, 0),
	(50, '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2016-01-14 08:11:43', '2016-01-14 08:12:10', NULL, 0),
	(51, '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2016-01-14 08:11:43', '2016-01-14 08:12:10', NULL, 0),
	(52, '', 'Extend concrete5', '', '/dashboard/extend', '2016-01-14 08:11:44', '2016-01-14 08:12:10', NULL, 0),
	(53, '', 'Dashboard', '', '/dashboard/news', '2016-01-14 08:11:44', '2016-01-14 08:12:10', NULL, 0),
	(54, '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2016-01-14 08:11:44', '2016-01-14 08:12:10', NULL, 0),
	(55, '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2016-01-14 08:11:44', '2016-01-14 08:12:10', NULL, 0),
	(56, '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2016-01-14 08:11:44', '2016-01-14 08:12:10', NULL, 0),
	(57, '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2016-01-14 08:11:45', '2016-01-14 08:12:10', NULL, 0),
	(58, '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/addons', '2016-01-14 08:11:45', '2016-01-14 08:12:11', NULL, 0),
	(59, '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2016-01-14 08:11:45', '2016-01-14 08:12:11', NULL, 0),
	(61, '', 'Site Name', '', '/dashboard/system/basics/name', '2016-01-14 08:11:46', '2016-01-14 08:12:11', NULL, 0),
	(62, '', 'Accessibility', '', '/dashboard/system/basics/accessibility', '2016-01-14 08:11:46', '2016-01-14 08:12:11', NULL, 0),
	(63, '', 'Social Links', '', '/dashboard/system/basics/social', '2016-01-14 08:11:46', '2016-01-14 08:12:11', NULL, 0),
	(64, '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2016-01-14 08:11:46', '2016-01-14 08:12:11', NULL, 0),
	(65, '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2016-01-14 08:11:46', '2016-01-14 08:12:11', NULL, 0),
	(66, '', 'Languages', '', '/dashboard/system/basics/multilingual', '2016-01-14 08:11:46', '2016-01-14 08:12:11', NULL, 0),
	(67, '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2016-01-14 08:11:47', '2016-01-14 08:12:11', NULL, 0),
	(68, '', 'Multilingual', 'Run your site in multiple languages.', '/dashboard/system/multilingual', '2016-01-14 08:11:47', '2016-01-14 08:12:12', NULL, 0),
	(74, '', 'URLs and Redirection', '', '/dashboard/system/seo/urls', '2016-01-14 08:11:48', '2016-01-14 08:12:12', NULL, 0),
	(75, '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk', '2016-01-14 08:11:48', '2016-01-14 08:12:12', NULL, 0),
	(76, '', 'Tracking Codes', '', '/dashboard/system/seo/codes', '2016-01-14 08:11:48', '2016-01-14 08:12:12', NULL, 0),
	(77, '', 'Excluded URL Word List', '', '/dashboard/system/seo/excluded', '2016-01-14 08:11:49', '2016-01-14 08:12:12', NULL, 0),
	(78, '', 'Search Index', '', '/dashboard/system/seo/searchindex', '2016-01-14 08:11:49', '2016-01-14 08:12:12', NULL, 0),
	(80, '', 'File Manager Permissions', '', '/dashboard/system/files/permissions', '2016-01-14 08:11:49', '2016-01-14 08:12:12', NULL, 0),
	(81, '', 'Allowed File Types', '', '/dashboard/system/files/filetypes', '2016-01-14 08:11:49', '2016-01-14 08:12:12', NULL, 0),
	(82, '', 'Thumbnails', '', '/dashboard/system/files/thumbnails', '2016-01-14 08:11:50', '2016-01-14 08:12:12', NULL, 0),
	(83, '', 'File Storage Locations', '', '/dashboard/system/files/storage', '2016-01-14 08:11:50', '2016-01-14 08:12:12', NULL, 0),
	(85, '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2016-01-14 08:11:50', '2016-01-14 08:12:12', NULL, 0),
	(86, '', 'Clear Cache', '', '/dashboard/system/optimization/clearcache', '2016-01-14 08:11:50', '2016-01-14 08:12:13', NULL, 0),
	(87, '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2016-01-14 08:11:51', '2016-01-14 08:12:13', NULL, 0),
	(88, '', 'Database Query Log', '', '/dashboard/system/optimization/query_log', '2016-01-14 08:11:51', '2016-01-14 08:12:13', NULL, 0),
	(90, '', 'Site Access', '', '/dashboard/system/permissions/site', '2016-01-14 08:11:51', '2016-01-14 08:12:13', NULL, 0),
	(91, '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2016-01-14 08:11:52', '2016-01-14 08:12:13', NULL, 0),
	(94, '', 'IP Blacklist', '', '/dashboard/system/permissions/blacklist', '2016-01-14 08:11:52', '2016-01-14 08:12:13', NULL, 0),
	(95, '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2016-01-14 08:11:53', '2016-01-14 08:12:13', NULL, 0),
	(96, '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2016-01-14 08:11:53', '2016-01-14 08:12:13', NULL, 0),
	(97, '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance', '2016-01-14 08:11:53', '2016-01-14 08:12:13', NULL, 0),
	(99, '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2016-01-14 08:11:54', '2016-01-14 08:12:13', NULL, 0),
	(100, '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2016-01-14 08:11:54', '2016-01-14 08:12:14', NULL, 0),
	(101, '', 'Public Registration', '', '/dashboard/system/registration/open', '2016-01-14 08:11:54', '2016-01-14 08:12:14', NULL, 0),
	(102, '', 'Authentication Types', '', '/dashboard/system/registration/authentication', '2016-01-14 08:11:54', '2016-01-14 08:12:14', NULL, 0),
	(103, '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2016-01-14 08:11:54', '2016-01-14 08:12:14', NULL, 0),
	(104, '', 'SMTP Method', '', '/dashboard/system/mail/method', '2016-01-14 08:11:55', '2016-01-14 08:12:14', NULL, 0),
	(105, '', 'Test Mail Settings', '', '/dashboard/system/mail/method/test', '2016-01-14 08:11:55', '2016-01-14 08:12:14', NULL, 0),
	(106, '', 'Email Importers', '', '/dashboard/system/mail/importers', '2016-01-14 08:11:55', '2016-01-14 08:12:14', NULL, 0),
	(107, '', 'Conversations', 'Manage your conversations settings', '/dashboard/system/conversations', '2016-01-14 08:11:55', '2016-01-14 08:12:14', NULL, 0),
	(108, '', 'Settings', '', '/dashboard/system/conversations/settings', '2016-01-14 08:11:55', '2016-01-14 08:12:14', NULL, 0),
	(109, '', 'Community Points', '', '/dashboard/system/conversations/points', '2016-01-14 08:11:56', '2016-01-14 08:12:14', NULL, 0),
	(110, '', 'Banned Words', '', '/dashboard/system/conversations/bannedwords', '2016-01-14 08:11:56', '2016-01-14 08:12:14', NULL, 0),
	(112, '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2016-01-14 08:11:56', '2016-01-14 08:12:14', NULL, 0),
	(113, '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2016-01-14 08:11:56', '2016-01-14 08:12:15', NULL, 0),
	(114, '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2016-01-14 08:11:57', '2016-01-14 08:12:15', NULL, 0),
	(115, '', 'Topics', '', '/dashboard/system/attributes/topics', '2016-01-14 08:11:57', '2016-01-14 08:12:15', NULL, 0),
	(117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
	(118, '', 'Environment Information', '', '/dashboard/system/environment/info', '2016-01-14 08:11:58', '2016-01-14 08:12:15', NULL, 0),
	(119, '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2016-01-14 08:11:58', '2016-01-14 08:12:15', NULL, 0),
	(120, '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2016-01-14 08:11:58', '2016-01-14 08:12:15', NULL, 0),
	(121, '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2016-01-14 08:11:58', '2016-01-14 08:12:15', NULL, 0),
	(122, '', 'Database Entities', '', '/dashboard/system/environment/entities', '2016-01-14 08:11:59', '2016-01-14 08:12:15', NULL, 0),
	(123, '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup', '2016-01-14 08:11:59', '2016-01-14 08:12:15', NULL, 0),
	(125, '', 'Update concrete5', '', '/dashboard/system/backup/update', '2016-01-14 08:11:59', '2016-01-14 08:12:15', NULL, 0),
	(126, '                                        ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2016-01-14 08:12:03', '2016-01-14 08:12:16', NULL, 0),
	(127, '', 'Customize Dashboard Home', '', '/dashboard/home', '2016-01-14 08:12:03', '2016-01-14 08:12:18', NULL, 0),
	(128, '', 'Drafts', '', '/!drafts', '2016-01-14 08:12:18', '2016-01-14 08:12:22', NULL, 0),
	(129, '', 'Trash', '', '/!trash', '2016-01-14 08:12:18', '2016-01-14 08:12:22', NULL, 0),
	(130, '', 'Stacks', '', '/!stacks', '2016-01-14 08:12:19', '2016-01-14 08:12:22', NULL, 0),
	(133, '', 'My Account', '', '/account', '2016-01-14 08:12:19', '2016-01-14 08:12:22', NULL, 0),
	(1, '', 'Home', '', NULL, '2016-01-14 08:11:00', '2016-02-24 14:29:55', NULL, 0),
	(154, '', 'About Us', '', '/about-us', '2016-02-05 13:05:06', '2016-02-05 13:06:18', NULL, 0),
	(155, '', 'News', '', '/new', '2016-02-05 13:05:30', '2016-02-05 13:06:18', NULL, 0),
	(156, '', 'Products', '', '/products', '2016-02-05 13:05:53', '2016-02-05 13:06:18', NULL, 0),
	(157, '', 'Contact Us', '', '/contact-us', '2016-02-05 13:06:10', '2016-02-05 13:06:18', NULL, 0),
	(158, '', 'Header Menu', NULL, '/!stacks/header-menu', '2016-02-05 13:07:38', '2016-02-22 15:09:50', NULL, 0),
	(159, '', 'Bread', '', '/products/bread', '2016-02-05 13:51:08', '2016-02-05 13:52:17', NULL, 0),
	(160, '', 'Cakes', '', '/products/cakes', '2016-02-05 13:51:23', '2016-02-05 13:52:17', NULL, 0),
	(161, '', 'Chinese Deli', '', '/products/chinese-deli', '2016-02-05 13:51:39', '2016-02-05 13:52:17', NULL, 0),
	(162, '', 'Hopia', '', '/products/hopia', '2016-02-05 13:51:59', '2016-02-05 13:52:17', NULL, 0),
	(163, '', 'Pastries', '', '/products/pastries', '2016-02-05 13:52:10', '2016-02-05 13:52:17', NULL, 0),
	(153, '', 'Header Logo', NULL, '/!stacks/header-logo', '2016-02-02 13:16:55', '2016-02-22 15:09:50', NULL, 0);
/*!40000 ALTER TABLE `pagesearchindex` ENABLE KEYS */;


-- Dumping structure for table herran.pagetemplates
CREATE TABLE IF NOT EXISTS `pagetemplates` (
  `pTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateHandle` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplateName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pTemplateID`),
  UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagetemplates: ~6 rows (approximately)
DELETE FROM `pagetemplates`;
/*!40000 ALTER TABLE `pagetemplates` DISABLE KEYS */;
INSERT INTO `pagetemplates` (`pTemplateID`, `pTemplateHandle`, `pTemplateIcon`, `pTemplateName`, `pTemplateIsInternal`, `pkgID`) VALUES
	(1, 'core_stack', '', 'Stack', 1, 0),
	(2, 'dashboard_primary_five', '', 'Dashboard Primary + Five', 1, 0),
	(3, 'dashboard_header_four_col', '', 'Dashboard Header + Four Column', 1, 0),
	(4, 'dashboard_full', '', 'Dashboard Full', 1, 0),
	(5, 'full', 'full.png', 'Full', 0, 0),
	(6, 'home', 'full.png', 'Home', 0, 0);
/*!40000 ALTER TABLE `pagetemplates` ENABLE KEYS */;


-- Dumping structure for table herran.pagethemecustomstyles
CREATE TABLE IF NOT EXISTS `pagethemecustomstyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  KEY `scvlID` (`scvlID`),
  KEY `sccRecordID` (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagethemecustomstyles: ~0 rows (approximately)
DELETE FROM `pagethemecustomstyles`;
/*!40000 ALTER TABLE `pagethemecustomstyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagethemecustomstyles` ENABLE KEYS */;


-- Dumping structure for table herran.pagethemes
CREATE TABLE IF NOT EXISTS `pagethemes` (
  `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pThemeID`),
  UNIQUE KEY `ptHandle` (`pThemeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagethemes: ~2 rows (approximately)
DELETE FROM `pagethemes`;
/*!40000 ALTER TABLE `pagethemes` DISABLE KEYS */;
INSERT INTO `pagethemes` (`pThemeID`, `pThemeHandle`, `pThemeName`, `pThemeDescription`, `pkgID`, `pThemeHasCustomClass`) VALUES
	(3, 'herran', 'Herran', 'Customized theme for Herran Bread pages.', 0, 1);
/*!40000 ALTER TABLE `pagethemes` ENABLE KEYS */;


-- Dumping structure for table herran.pagetypecomposercontroltypes
CREATE TABLE IF NOT EXISTS `pagetypecomposercontroltypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptComposerControlTypeID`),
  UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagetypecomposercontroltypes: ~3 rows (approximately)
DELETE FROM `pagetypecomposercontroltypes`;
/*!40000 ALTER TABLE `pagetypecomposercontroltypes` DISABLE KEYS */;
INSERT INTO `pagetypecomposercontroltypes` (`ptComposerControlTypeID`, `ptComposerControlTypeHandle`, `ptComposerControlTypeName`, `pkgID`) VALUES
	(1, 'core_page_property', 'Built-In Property', 0),
	(2, 'collection_attribute', 'Custom Attribute', 0),
	(3, 'block', 'Block', 0);
/*!40000 ALTER TABLE `pagetypecomposercontroltypes` ENABLE KEYS */;


-- Dumping structure for table herran.pagetypecomposerformlayoutsetcontrols
CREATE TABLE IF NOT EXISTS `pagetypecomposerformlayoutsetcontrols` (
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagetypecomposerformlayoutsetcontrols: ~6 rows (approximately)
DELETE FROM `pagetypecomposerformlayoutsetcontrols`;
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsetcontrols` DISABLE KEYS */;
INSERT INTO `pagetypecomposerformlayoutsetcontrols` (`ptComposerFormLayoutSetControlID`, `ptComposerFormLayoutSetID`, `ptComposerControlTypeID`, `ptComposerControlObject`, `ptComposerFormLayoutSetControlDisplayOrder`, `ptComposerFormLayoutSetControlCustomLabel`, `ptComposerFormLayoutSetControlCustomTemplate`, `ptComposerFormLayoutSetControlDescription`, `ptComposerFormLayoutSetControlRequired`) VALUES
	(1, 1, 1, 'O:78:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty":9:{s:37:"\0*\0ptComposerControlRequiredByDefault";b:1;s:17:"\0*\0propertyHandle";s:4:"name";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:4:"name";s:24:"\0*\0ptComposerControlName";s:9:"Page Name";s:27:"\0*\0ptComposerControlIconSRC";s:34:"/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 0, 'Page Name', NULL, NULL, 1),
	(2, 1, 1, 'O:85:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:11:"description";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:11:"description";s:24:"\0*\0ptComposerControlName";s:11:"Description";s:27:"\0*\0ptComposerControlIconSRC";s:38:"/concrete/attributes/textarea/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 1, NULL, NULL, NULL, 0),
	(3, 1, 1, 'O:81:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:8:"url_slug";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:8:"url_slug";s:24:"\0*\0ptComposerControlName";s:8:"URL Slug";s:27:"\0*\0ptComposerControlIconSRC";s:34:"/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 2, NULL, NULL, NULL, 0),
	(4, 1, 1, 'O:86:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:13:"page_template";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:13:"page_template";s:24:"\0*\0ptComposerControlName";s:13:"Page Template";s:27:"\0*\0ptComposerControlIconSRC";s:36:"/concrete/attributes/select/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 3, NULL, NULL, NULL, 0),
	(5, 1, 1, 'O:87:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:14:"publish_target";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:14:"publish_target";s:24:"\0*\0ptComposerControlName";s:13:"Page Location";s:27:"\0*\0ptComposerControlIconSRC";s:40:"/concrete/attributes/image_file/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 4, NULL, NULL, NULL, 0),
	(6, 2, 3, 'O:53:"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl":12:{s:7:"\0*\0btID";i:12;s:30:"\0*\0ptComposerControlTypeHandle";s:5:"block";s:5:"\0*\0bt";b:0;s:4:"\0*\0b";b:0;s:13:"\0*\0controller";N;s:30:"\0*\0ptComposerControlIdentifier";i:12;s:24:"\0*\0ptComposerControlName";s:7:"Content";s:27:"\0*\0ptComposerControlIconSRC";s:33:"/concrete/blocks/content/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 0, 'Body', NULL, NULL, 0);
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsetcontrols` ENABLE KEYS */;


-- Dumping structure for table herran.pagetypecomposerformlayoutsets
CREATE TABLE IF NOT EXISTS `pagetypecomposerformlayoutsets` (
  `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerFormLayoutSetID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagetypecomposerformlayoutsets: ~2 rows (approximately)
DELETE FROM `pagetypecomposerformlayoutsets`;
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsets` DISABLE KEYS */;
INSERT INTO `pagetypecomposerformlayoutsets` (`ptComposerFormLayoutSetID`, `ptID`, `ptComposerFormLayoutSetName`, `ptComposerFormLayoutSetDescription`, `ptComposerFormLayoutSetDisplayOrder`) VALUES
	(1, 6, 'Basics', '', 0),
	(2, 6, 'Content', '', 1);
/*!40000 ALTER TABLE `pagetypecomposerformlayoutsets` ENABLE KEYS */;


-- Dumping structure for table herran.pagetypecomposeroutputblocks
CREATE TABLE IF NOT EXISTS `pagetypecomposeroutputblocks` (
  `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputBlockID`),
  KEY `cID` (`cID`),
  KEY `bID` (`bID`,`cID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagetypecomposeroutputblocks: ~9 rows (approximately)
DELETE FROM `pagetypecomposeroutputblocks`;
/*!40000 ALTER TABLE `pagetypecomposeroutputblocks` DISABLE KEYS */;
INSERT INTO `pagetypecomposeroutputblocks` (`ptComposerOutputBlockID`, `cID`, `arHandle`, `cbDisplayOrder`, `ptComposerFormLayoutSetControlID`, `bID`) VALUES
	(2, 154, 'Main', 0, 6, 12),
	(4, 155, 'Main', 0, 6, 14),
	(6, 156, 'Main', 0, 6, 16),
	(8, 157, 'Main', 0, 6, 18),
	(10, 159, 'Main', 0, 6, 21),
	(12, 160, 'Main', 0, 6, 23),
	(14, 161, 'Main', 0, 6, 25),
	(16, 162, 'Main', 0, 6, 27),
	(18, 163, 'Main', 0, 6, 29);
/*!40000 ALTER TABLE `pagetypecomposeroutputblocks` ENABLE KEYS */;


-- Dumping structure for table herran.pagetypecomposeroutputcontrols
CREATE TABLE IF NOT EXISTS `pagetypecomposeroutputcontrols` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ptComposerOutputControlID`),
  KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  KEY `ptID` (`ptID`),
  KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagetypecomposeroutputcontrols: ~2 rows (approximately)
DELETE FROM `pagetypecomposeroutputcontrols`;
/*!40000 ALTER TABLE `pagetypecomposeroutputcontrols` DISABLE KEYS */;
INSERT INTO `pagetypecomposeroutputcontrols` (`ptComposerOutputControlID`, `pTemplateID`, `ptID`, `ptComposerFormLayoutSetControlID`) VALUES
	(1, 5, 6, 6),
	(2, 6, 6, 6);
/*!40000 ALTER TABLE `pagetypecomposeroutputcontrols` ENABLE KEYS */;


-- Dumping structure for table herran.pagetypepagetemplatedefaultpages
CREATE TABLE IF NOT EXISTS `pagetypepagetemplatedefaultpages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`pTemplateID`,`ptID`),
  KEY `ptID` (`ptID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagetypepagetemplatedefaultpages: ~0 rows (approximately)
DELETE FROM `pagetypepagetemplatedefaultpages`;
/*!40000 ALTER TABLE `pagetypepagetemplatedefaultpages` DISABLE KEYS */;
INSERT INTO `pagetypepagetemplatedefaultpages` (`pTemplateID`, `ptID`, `cID`) VALUES
	(5, 6, 144),
	(6, 6, 164);
/*!40000 ALTER TABLE `pagetypepagetemplatedefaultpages` ENABLE KEYS */;


-- Dumping structure for table herran.pagetypepagetemplates
CREATE TABLE IF NOT EXISTS `pagetypepagetemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pTemplateID`),
  KEY `pTemplateID` (`pTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagetypepagetemplates: ~0 rows (approximately)
DELETE FROM `pagetypepagetemplates`;
/*!40000 ALTER TABLE `pagetypepagetemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagetypepagetemplates` ENABLE KEYS */;


-- Dumping structure for table herran.pagetypepermissionassignments
CREATE TABLE IF NOT EXISTS `pagetypepermissionassignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `ptID` (`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagetypepermissionassignments: ~35 rows (approximately)
DELETE FROM `pagetypepermissionassignments`;
/*!40000 ALTER TABLE `pagetypepermissionassignments` DISABLE KEYS */;
INSERT INTO `pagetypepermissionassignments` (`ptID`, `pkID`, `paID`) VALUES
	(1, 59, 9),
	(2, 59, 9),
	(3, 59, 9),
	(4, 59, 9),
	(5, 59, 9),
	(6, 59, 9),
	(7, 59, 9),
	(1, 60, 9),
	(2, 60, 9),
	(3, 60, 9),
	(4, 60, 9),
	(5, 60, 9),
	(6, 60, 9),
	(7, 60, 9),
	(1, 61, 9),
	(2, 61, 9),
	(3, 61, 9),
	(4, 61, 9),
	(5, 61, 9),
	(6, 61, 9),
	(7, 61, 9),
	(1, 62, 9),
	(2, 62, 9),
	(3, 62, 9),
	(4, 62, 9),
	(5, 62, 9),
	(6, 62, 9),
	(7, 62, 9),
	(1, 63, 26),
	(2, 63, 27),
	(3, 63, 28),
	(4, 63, 29),
	(5, 63, 30),
	(6, 63, 31),
	(7, 63, 102);
/*!40000 ALTER TABLE `pagetypepermissionassignments` ENABLE KEYS */;


-- Dumping structure for table herran.pagetypepublishtargettypes
CREATE TABLE IF NOT EXISTS `pagetypepublishtargettypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptPublishTargetTypeID`),
  KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagetypepublishtargettypes: ~3 rows (approximately)
DELETE FROM `pagetypepublishtargettypes`;
/*!40000 ALTER TABLE `pagetypepublishtargettypes` DISABLE KEYS */;
INSERT INTO `pagetypepublishtargettypes` (`ptPublishTargetTypeID`, `ptPublishTargetTypeHandle`, `ptPublishTargetTypeName`, `pkgID`) VALUES
	(1, 'parent_page', 'Always publish below a certain page', 0),
	(2, 'page_type', 'Choose from pages of a certain type', 0),
	(3, 'all', 'Choose from all pages when publishing', 0);
/*!40000 ALTER TABLE `pagetypepublishtargettypes` ENABLE KEYS */;


-- Dumping structure for table herran.pagetypes
CREATE TABLE IF NOT EXISTS `pagetypes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`),
  KEY `pkgID` (`pkgID`,`ptID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pagetypes: ~5 rows (approximately)
DELETE FROM `pagetypes`;
/*!40000 ALTER TABLE `pagetypes` DISABLE KEYS */;
INSERT INTO `pagetypes` (`ptID`, `ptName`, `ptHandle`, `ptPublishTargetTypeID`, `ptDefaultPageTemplateID`, `ptAllowedPageTemplates`, `ptIsInternal`, `ptIsFrequentlyAdded`, `ptDisplayOrder`, `ptLaunchInComposer`, `pkgID`, `ptPublishTargetObject`) VALUES
	(1, 'Stack', 'core_stack', 3, 0, 'A', 1, 0, 0, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":5:{s:21:"\0*\0selectorFormFactor";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}'),
	(2, 'Stack Category', 'core_stack_category', 3, 0, 'A', 1, 0, 1, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":5:{s:21:"\0*\0selectorFormFactor";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}'),
	(3, 'Dashboard Primary + Five', 'dashboard_primary_five', 3, 0, 'A', 1, 0, 2, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":5:{s:21:"\0*\0selectorFormFactor";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}'),
	(4, 'Dashboard Header + Four Column', 'dashboard_header_four_col', 3, 0, 'A', 1, 0, 3, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":5:{s:21:"\0*\0selectorFormFactor";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}'),
	(5, 'Dashboard Full', 'dashboard_full', 3, 0, 'A', 1, 0, 4, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":5:{s:21:"\0*\0selectorFormFactor";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}'),
	(6, 'Page', 'page', 3, 5, 'A', 0, 1, 0, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":5:{s:21:"\0*\0selectorFormFactor";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}'),
	(7, 'Home', 'home', 1, 5, 'A', 0, 1, 1, 1, 0, 'O:75:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\ParentPageConfiguration":5:{s:12:"\0*\0cParentID";s:1:"1";s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"1";s:25:"ptPublishTargetTypeHandle";s:11:"parent_page";s:9:"pkgHandle";b:0;}');
/*!40000 ALTER TABLE `pagetypes` ENABLE KEYS */;


-- Dumping structure for table herran.pageworkflowprogress
CREATE TABLE IF NOT EXISTS `pageworkflowprogress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`),
  KEY `wpID` (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pageworkflowprogress: ~1 rows (approximately)
DELETE FROM `pageworkflowprogress`;
/*!40000 ALTER TABLE `pageworkflowprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `pageworkflowprogress` ENABLE KEYS */;


-- Dumping structure for table herran.permissionaccess
CREATE TABLE IF NOT EXISTS `permissionaccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionaccess: ~101 rows (approximately)
DELETE FROM `permissionaccess`;
/*!40000 ALTER TABLE `permissionaccess` DISABLE KEYS */;
INSERT INTO `permissionaccess` (`paID`, `paIsInUse`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1),
	(40, 1),
	(41, 1),
	(42, 1),
	(43, 1),
	(44, 1),
	(45, 1),
	(46, 1),
	(47, 1),
	(48, 1),
	(49, 1),
	(50, 1),
	(51, 1),
	(52, 1),
	(53, 1),
	(54, 1),
	(55, 1),
	(56, 1),
	(57, 1),
	(58, 1),
	(59, 1),
	(60, 1),
	(61, 1),
	(62, 1),
	(63, 1),
	(64, 1),
	(65, 1),
	(66, 1),
	(67, 1),
	(68, 1),
	(69, 1),
	(70, 1),
	(71, 1),
	(72, 1),
	(73, 1),
	(74, 1),
	(75, 1),
	(76, 1),
	(77, 1),
	(78, 1),
	(79, 1),
	(80, 1),
	(81, 1),
	(82, 1),
	(83, 1),
	(84, 1),
	(85, 1),
	(86, 1),
	(87, 1),
	(88, 1),
	(89, 1),
	(90, 1),
	(91, 1),
	(92, 1),
	(93, 1),
	(94, 1),
	(95, 1),
	(96, 1),
	(97, 1),
	(98, 1),
	(99, 1),
	(100, 1),
	(101, 1),
	(102, 1),
	(103, 0);
/*!40000 ALTER TABLE `permissionaccess` ENABLE KEYS */;


-- Dumping structure for table herran.permissionaccessentities
CREATE TABLE IF NOT EXISTS `permissionaccessentities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionaccessentities: ~5 rows (approximately)
DELETE FROM `permissionaccessentities`;
/*!40000 ALTER TABLE `permissionaccessentities` DISABLE KEYS */;
INSERT INTO `permissionaccessentities` (`peID`, `petID`) VALUES
	(1, 1),
	(3, 1),
	(5, 1),
	(2, 5),
	(6, 6),
	(4, 7);
/*!40000 ALTER TABLE `permissionaccessentities` ENABLE KEYS */;


-- Dumping structure for table herran.permissionaccessentitygroups
CREATE TABLE IF NOT EXISTS `permissionaccessentitygroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `peID` (`peID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionaccessentitygroups: ~3 rows (approximately)
DELETE FROM `permissionaccessentitygroups`;
/*!40000 ALTER TABLE `permissionaccessentitygroups` DISABLE KEYS */;
INSERT INTO `permissionaccessentitygroups` (`pegID`, `peID`, `gID`) VALUES
	(1, 1, 3),
	(2, 3, 1),
	(3, 5, 2);
/*!40000 ALTER TABLE `permissionaccessentitygroups` ENABLE KEYS */;


-- Dumping structure for table herran.permissionaccessentitygroupsets
CREATE TABLE IF NOT EXISTS `permissionaccessentitygroupsets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionaccessentitygroupsets: ~0 rows (approximately)
DELETE FROM `permissionaccessentitygroupsets`;
/*!40000 ALTER TABLE `permissionaccessentitygroupsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissionaccessentitygroupsets` ENABLE KEYS */;


-- Dumping structure for table herran.permissionaccessentitytypecategories
CREATE TABLE IF NOT EXISTS `permissionaccessentitytypecategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`),
  KEY `pkCategoryID` (`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionaccessentitytypecategories: ~81 rows (approximately)
DELETE FROM `permissionaccessentitytypecategories`;
/*!40000 ALTER TABLE `permissionaccessentitytypecategories` DISABLE KEYS */;
INSERT INTO `permissionaccessentitytypecategories` (`petID`, `pkCategoryID`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(1, 4),
	(2, 4),
	(3, 4),
	(4, 4),
	(1, 5),
	(2, 5),
	(3, 5),
	(4, 5),
	(6, 5),
	(1, 6),
	(2, 6),
	(3, 6),
	(4, 6),
	(6, 6),
	(1, 7),
	(2, 7),
	(3, 7),
	(4, 7),
	(1, 8),
	(2, 8),
	(3, 8),
	(4, 8),
	(1, 9),
	(2, 9),
	(3, 9),
	(4, 9),
	(1, 10),
	(2, 10),
	(3, 10),
	(4, 10),
	(1, 11),
	(2, 11),
	(3, 11),
	(4, 11),
	(1, 12),
	(2, 12),
	(3, 12),
	(4, 12),
	(1, 13),
	(2, 13),
	(3, 13),
	(4, 13),
	(1, 14),
	(2, 14),
	(3, 14),
	(4, 14),
	(5, 14),
	(1, 15),
	(2, 15),
	(3, 15),
	(4, 15),
	(1, 16),
	(2, 16),
	(3, 16),
	(4, 16),
	(1, 17),
	(2, 17),
	(3, 17),
	(4, 17),
	(1, 18),
	(2, 18),
	(3, 18),
	(4, 18),
	(1, 19),
	(2, 19),
	(3, 19),
	(4, 19),
	(7, 19),
	(1, 20),
	(2, 20),
	(3, 20),
	(4, 20),
	(7, 20),
	(1, 21),
	(2, 21),
	(4, 21);
/*!40000 ALTER TABLE `permissionaccessentitytypecategories` ENABLE KEYS */;


-- Dumping structure for table herran.permissionaccessentitytypes
CREATE TABLE IF NOT EXISTS `permissionaccessentitytypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`),
  UNIQUE KEY `petHandle` (`petHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionaccessentitytypes: ~7 rows (approximately)
DELETE FROM `permissionaccessentitytypes`;
/*!40000 ALTER TABLE `permissionaccessentitytypes` DISABLE KEYS */;
INSERT INTO `permissionaccessentitytypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
	(1, 'group', 'Group', 0),
	(2, 'user', 'User', 0),
	(3, 'group_set', 'Group Set', 0),
	(4, 'group_combination', 'Group Combination', 0),
	(5, 'page_owner', 'Page Owner', 0),
	(6, 'file_uploader', 'File Uploader', 0),
	(7, 'conversation_message_author', 'Message Author', 0);
/*!40000 ALTER TABLE `permissionaccessentitytypes` ENABLE KEYS */;


-- Dumping structure for table herran.permissionaccessentityusers
CREATE TABLE IF NOT EXISTS `permissionaccessentityusers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionaccessentityusers: ~0 rows (approximately)
DELETE FROM `permissionaccessentityusers`;
/*!40000 ALTER TABLE `permissionaccessentityusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissionaccessentityusers` ENABLE KEYS */;


-- Dumping structure for table herran.permissionaccesslist
CREATE TABLE IF NOT EXISTS `permissionaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`),
  KEY `pdID` (`pdID`),
  KEY `permissionAccessDuration` (`paID`,`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionaccesslist: ~113 rows (approximately)
DELETE FROM `permissionaccesslist`;
/*!40000 ALTER TABLE `permissionaccesslist` DISABLE KEYS */;
INSERT INTO `permissionaccesslist` (`paID`, `peID`, `pdID`, `accessType`) VALUES
	(1, 1, 0, 10),
	(2, 1, 0, 10),
	(3, 1, 0, 10),
	(4, 1, 0, 10),
	(5, 1, 0, 10),
	(6, 1, 0, 10),
	(7, 1, 0, 10),
	(8, 1, 0, 10),
	(9, 1, 0, 10),
	(10, 1, 0, 10),
	(11, 1, 0, 10),
	(12, 1, 0, 10),
	(13, 1, 0, 10),
	(14, 1, 0, 10),
	(15, 1, 0, 10),
	(16, 1, 0, 10),
	(17, 1, 0, 10),
	(18, 1, 0, 10),
	(19, 1, 0, 10),
	(20, 1, 0, 10),
	(21, 1, 0, 10),
	(22, 1, 0, 10),
	(23, 1, 0, 10),
	(24, 1, 0, 10),
	(25, 1, 0, 10),
	(26, 2, 0, 10),
	(27, 2, 0, 10),
	(28, 2, 0, 10),
	(29, 2, 0, 10),
	(30, 2, 0, 10),
	(31, 2, 0, 10),
	(32, 3, 0, 10),
	(33, 1, 0, 10),
	(33, 3, 0, 10),
	(34, 1, 0, 10),
	(35, 1, 0, 10),
	(36, 1, 0, 10),
	(37, 1, 0, 10),
	(38, 1, 0, 10),
	(39, 1, 0, 10),
	(40, 1, 0, 10),
	(41, 1, 0, 10),
	(42, 3, 0, 10),
	(43, 1, 0, 10),
	(44, 1, 0, 10),
	(45, 1, 0, 10),
	(46, 1, 0, 10),
	(47, 1, 0, 10),
	(48, 1, 0, 10),
	(49, 1, 0, 10),
	(50, 1, 0, 10),
	(51, 1, 0, 10),
	(52, 1, 0, 10),
	(53, 1, 0, 10),
	(54, 1, 0, 10),
	(55, 1, 0, 10),
	(56, 1, 0, 10),
	(57, 1, 0, 10),
	(58, 1, 0, 10),
	(59, 1, 0, 10),
	(60, 3, 0, 10),
	(61, 3, 0, 10),
	(62, 1, 0, 10),
	(63, 3, 0, 10),
	(64, 1, 0, 10),
	(65, 1, 0, 10),
	(66, 1, 0, 10),
	(67, 1, 0, 10),
	(68, 1, 0, 10),
	(69, 1, 0, 10),
	(70, 1, 0, 10),
	(71, 1, 0, 10),
	(72, 1, 0, 10),
	(73, 1, 0, 10),
	(74, 1, 0, 10),
	(75, 1, 0, 10),
	(76, 1, 0, 10),
	(77, 1, 0, 10),
	(78, 1, 0, 10),
	(79, 1, 0, 10),
	(80, 1, 0, 10),
	(81, 1, 0, 10),
	(81, 2, 0, 10),
	(82, 1, 0, 10),
	(82, 2, 0, 10),
	(83, 1, 0, 10),
	(83, 2, 0, 10),
	(84, 1, 0, 10),
	(84, 2, 0, 10),
	(85, 1, 0, 10),
	(85, 2, 0, 10),
	(86, 1, 0, 10),
	(86, 2, 0, 10),
	(87, 1, 0, 10),
	(87, 2, 0, 10),
	(88, 1, 0, 10),
	(88, 2, 0, 10),
	(89, 1, 0, 10),
	(90, 1, 0, 10),
	(91, 1, 0, 10),
	(92, 1, 0, 10),
	(93, 1, 0, 10),
	(94, 3, 0, 10),
	(95, 3, 0, 10),
	(96, 1, 0, 10),
	(96, 4, 0, 10),
	(97, 1, 0, 10),
	(97, 4, 0, 10),
	(98, 1, 0, 10),
	(98, 5, 0, 10),
	(99, 1, 0, 10),
	(100, 1, 0, 10),
	(101, 1, 0, 10),
	(102, 2, 0, 10),
	(103, 1, 0, 10);
/*!40000 ALTER TABLE `permissionaccesslist` ENABLE KEYS */;


-- Dumping structure for table herran.permissionaccessworkflows
CREATE TABLE IF NOT EXISTS `permissionaccessworkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`),
  KEY `wfID` (`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionaccessworkflows: ~0 rows (approximately)
DELETE FROM `permissionaccessworkflows`;
/*!40000 ALTER TABLE `permissionaccessworkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissionaccessworkflows` ENABLE KEYS */;


-- Dumping structure for table herran.permissionassignments
CREATE TABLE IF NOT EXISTS `permissionassignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionassignments: ~23 rows (approximately)
DELETE FROM `permissionassignments`;
/*!40000 ALTER TABLE `permissionassignments` DISABLE KEYS */;
INSERT INTO `permissionassignments` (`paID`, `pkID`) VALUES
	(1, 19),
	(2, 20),
	(3, 74),
	(4, 75),
	(5, 76),
	(6, 78),
	(7, 79),
	(8, 80),
	(9, 86),
	(10, 87),
	(11, 89),
	(12, 90),
	(13, 91),
	(14, 92),
	(15, 93),
	(16, 94),
	(17, 95),
	(18, 96),
	(19, 97),
	(20, 98),
	(21, 99),
	(22, 100),
	(23, 101),
	(24, 102),
	(25, 103);
/*!40000 ALTER TABLE `permissionassignments` ENABLE KEYS */;


-- Dumping structure for table herran.permissiondurationobjects
CREATE TABLE IF NOT EXISTS `permissiondurationobjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissiondurationobjects: ~0 rows (approximately)
DELETE FROM `permissiondurationobjects`;
/*!40000 ALTER TABLE `permissiondurationobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissiondurationobjects` ENABLE KEYS */;


-- Dumping structure for table herran.permissionkeycategories
CREATE TABLE IF NOT EXISTS `permissionkeycategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`),
  UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionkeycategories: ~21 rows (approximately)
DELETE FROM `permissionkeycategories`;
/*!40000 ALTER TABLE `permissionkeycategories` DISABLE KEYS */;
INSERT INTO `permissionkeycategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
	(1, 'page', NULL),
	(2, 'single_page', NULL),
	(3, 'stack', NULL),
	(4, 'user', NULL),
	(5, 'file_set', NULL),
	(6, 'file', NULL),
	(7, 'area', NULL),
	(8, 'block_type', NULL),
	(9, 'block', NULL),
	(10, 'admin', NULL),
	(11, 'sitemap', NULL),
	(12, 'marketplace_newsflow', NULL),
	(13, 'basic_workflow', NULL),
	(14, 'page_type', NULL),
	(15, 'gathering', NULL),
	(16, 'group_tree_node', NULL),
	(17, 'topic_category_tree_node', NULL),
	(18, 'topic_tree_node', NULL),
	(19, 'conversation', NULL),
	(20, 'conversation_message', NULL),
	(21, 'multilingual_section', NULL);
/*!40000 ALTER TABLE `permissionkeycategories` ENABLE KEYS */;


-- Dumping structure for table herran.permissionkeys
CREATE TABLE IF NOT EXISTS `permissionkeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`),
  KEY `pkCategoryID` (`pkCategoryID`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.permissionkeys: ~101 rows (approximately)
DELETE FROM `permissionkeys`;
/*!40000 ALTER TABLE `permissionkeys` DISABLE KEYS */;
INSERT INTO `permissionkeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
	(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
	(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
	(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
	(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
	(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
	(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
	(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
	(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
	(9, 'edit_page_template', 'Change Page Template', 0, 0, 'Ability to change just the page template for this page.', 1, 0),
	(10, 'edit_page_page_type', 'Edit Page Type', 0, 0, 'Change the type of an existing page.', 1, 0),
	(11, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
	(12, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site\'s Trash.', 1, 0),
	(13, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
	(14, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
	(15, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
	(16, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
	(17, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
	(18, 'edit_page_multilingual_settings', 'Edit Multilingual Settings', 0, 0, 'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.', 1, 0),
	(19, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
	(20, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
	(21, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 7, 0),
	(22, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 7, 0),
	(23, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 7, 0),
	(24, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 7, 0),
	(25, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 7, 0),
	(26, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area\'s custom CSS.', 7, 0),
	(27, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 7, 0),
	(28, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 7, 0),
	(29, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 7, 0),
	(30, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 9, 0),
	(31, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 9, 0),
	(32, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 9, 0),
	(33, 'edit_block_cache_settings', 'Edit Cache Settings', 0, 0, 'Controls whether users can change the block cache settings for this block instance.', 9, 0),
	(34, 'edit_block_name', 'Edit Name', 0, 0, 'Controls whether users can change the block\'s name (rarely used.)', 9, 0),
	(35, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 9, 0),
	(36, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 9, 0),
	(37, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 9, 0),
	(38, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 9, 0),
	(39, 'view_file_set_file', 'View Files', 0, 0, 'Can view and download files in the site.', 5, 0),
	(40, 'search_file_set', 'Search Files in File Manager', 0, 0, 'Can access the file manager', 5, 0),
	(41, 'edit_file_set_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 5, 0),
	(42, 'edit_file_set_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in set.', 5, 0),
	(43, 'copy_file_set_files', 'Copy File', 0, 0, 'Can copy files in file set.', 5, 0),
	(44, 'edit_file_set_permissions', 'Edit File Access', 0, 0, 'Can edit access to file sets.', 5, 0),
	(45, 'delete_file_set', 'Delete File Set', 0, 0, 'Can delete file set.', 5, 0),
	(46, 'delete_file_set_files', 'Delete File', 0, 0, 'Can delete files in set.', 5, 0),
	(47, 'add_file', 'Add File', 0, 1, 'Can add files to set.', 5, 0),
	(48, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 6, 0),
	(49, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 6, 0),
	(50, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 6, 0),
	(51, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 6, 0),
	(52, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 6, 0),
	(53, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 6, 0),
	(54, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 6, 0),
	(55, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 13, 0),
	(56, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 13, 0),
	(57, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 13, 0),
	(58, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 13, 0),
	(59, 'add_page_type', 'Add Pages of This Type', 0, 0, '', 14, 0),
	(60, 'edit_page_type', 'Edit Page Type', 0, 0, '', 14, 0),
	(61, 'delete_page_type', 'Delete Page Type', 0, 0, '', 14, 0),
	(62, 'edit_page_type_permissions', 'Edit Page Type Permissions', 0, 0, '', 14, 0),
	(63, 'edit_page_type_drafts', 'Edit Page Type Drafts', 0, 0, '', 14, 0),
	(64, 'view_topic_tree_node', 'View Topic Tree Node', 0, 0, '', 18, 0),
	(65, 'view_topic_category_tree_node', 'View Topic Category Tree Node', 0, 0, '', 17, 0),
	(66, 'add_conversation_message', 'Add Message to Conversation', 0, 1, '', 19, 0),
	(67, 'add_conversation_message_attachments', 'Add Message Attachments', 0, 0, '', 19, 0),
	(68, 'edit_conversation_permissions', 'Edit Conversation Permissions', 0, 0, '', 19, 0),
	(69, 'delete_conversation_message', 'Delete Message', 0, 0, '', 19, 0),
	(70, 'edit_conversation_message', 'Edit Message', 0, 0, '', 19, 0),
	(71, 'rate_conversation_message', 'Rate Message', 0, 0, '', 19, 0),
	(72, 'flag_conversation_message', 'Flag Message', 0, 0, '', 19, 0),
	(73, 'approve_conversation_message', 'Approve Message', 0, 0, '', 19, 0),
	(74, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 4, 0),
	(75, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 4, 0),
	(76, 'activate_user', 'Activate/Deactivate User', 0, 0, NULL, 4, 0),
	(77, 'sudo', 'Sign in as User', 0, 0, NULL, 4, 0),
	(78, 'upgrade', 'Upgrade concrete5', 0, 0, NULL, 10, 0),
	(79, 'access_group_search', 'Access Group Search', 0, 0, NULL, 4, 0),
	(80, 'delete_user', 'Delete User', 0, 0, NULL, 4, 0),
	(81, 'search_users_in_group', 'Search User Group', 0, 0, NULL, 16, 0),
	(82, 'edit_group', 'Edit Group', 0, 0, NULL, 16, 0),
	(83, 'assign_group', 'Assign Group', 0, 0, NULL, 16, 0),
	(84, 'add_sub_group', 'Add Child Group', 0, 0, NULL, 16, 0),
	(85, 'edit_group_permissions', 'Edit Group Permissions', 0, 0, NULL, 16, 0),
	(86, 'access_page_type_permissions', 'Access Page Type Permissions', 0, 0, NULL, 10, 0),
	(87, 'backup', 'Perform Backups', 0, 0, NULL, 10, 0),
	(88, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 10, 0),
	(89, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 11, 0),
	(90, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 10, 0),
	(91, 'customize_themes', 'Customize Themes', 0, 0, NULL, 10, 0),
	(92, 'manage_layout_presets', 'Manage Layout Presets', 0, 0, NULL, 10, 0),
	(93, 'empty_trash', 'Empty Trash', 0, 0, NULL, 10, 0),
	(94, 'add_topic_tree', 'Add Topic Tree', 0, 0, NULL, 10, 0),
	(95, 'remove_topic_tree', 'Remove Topic Tree', 0, 0, NULL, 10, 0),
	(96, 'view_in_maintenance_mode', 'View Site in Maintenance Mode', 0, 0, 'Ability to see and use the website when concrete5 is in maintenance mode.', 10, 0),
	(97, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 12, 0),
	(98, 'install_packages', 'Install Packages', 0, 0, NULL, 12, 0),
	(99, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 12, 0),
	(100, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 4, 0),
	(101, 'access_user_search', 'Access User Search', 0, 0, 'Controls whether a user can view the search user interface.', 4, 0),
	(102, 'edit_gatherings', 'Edit Gatherings', 0, 0, 'Can edit the footprint and items in all gatherings.', 10, 0),
	(103, 'edit_gathering_items', 'Edit Gathering Items', 0, 0, '', 15, 0);
/*!40000 ALTER TABLE `permissionkeys` ENABLE KEYS */;


-- Dumping structure for table herran.pilecontents
CREATE TABLE IF NOT EXISTS `pilecontents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`),
  KEY `pID` (`pID`,`displayOrder`),
  KEY `itemID` (`itemID`),
  KEY `itemType` (`itemType`,`itemID`,`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.pilecontents: ~0 rows (approximately)
DELETE FROM `pilecontents`;
/*!40000 ALTER TABLE `pilecontents` DISABLE KEYS */;
/*!40000 ALTER TABLE `pilecontents` ENABLE KEYS */;


-- Dumping structure for table herran.piles
CREATE TABLE IF NOT EXISTS `piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pID`),
  KEY `uID` (`uID`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.piles: ~0 rows (approximately)
DELETE FROM `piles`;
/*!40000 ALTER TABLE `piles` DISABLE KEYS */;
INSERT INTO `piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
	(1, 1, 1, '2016-02-05 20:59:18', NULL, 'READY');
/*!40000 ALTER TABLE `piles` ENABLE KEYS */;


-- Dumping structure for table herran.queuemessages
CREATE TABLE IF NOT EXISTS `queuemessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`),
  CONSTRAINT `queuemessages_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.queuemessages: ~0 rows (approximately)
DELETE FROM `queuemessages`;
/*!40000 ALTER TABLE `queuemessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `queuemessages` ENABLE KEYS */;


-- Dumping structure for table herran.queuepageduplicationrelations
CREATE TABLE IF NOT EXISTS `queuepageduplicationrelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`),
  KEY `originalCID` (`originalCID`,`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.queuepageduplicationrelations: ~0 rows (approximately)
DELETE FROM `queuepageduplicationrelations`;
/*!40000 ALTER TABLE `queuepageduplicationrelations` DISABLE KEYS */;
/*!40000 ALTER TABLE `queuepageduplicationrelations` ENABLE KEYS */;


-- Dumping structure for table herran.queues
CREATE TABLE IF NOT EXISTS `queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`),
  KEY `queue_name` (`queue_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.queues: ~0 rows (approximately)
DELETE FROM `queues`;
/*!40000 ALTER TABLE `queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `queues` ENABLE KEYS */;


-- Dumping structure for table herran.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.sessions: ~0 rows (approximately)
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;


-- Dumping structure for table herran.signuprequests
CREATE TABLE IF NOT EXISTS `signuprequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ipFrom` (`ipFrom`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.signuprequests: ~0 rows (approximately)
DELETE FROM `signuprequests`;
/*!40000 ALTER TABLE `signuprequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `signuprequests` ENABLE KEYS */;


-- Dumping structure for table herran.sociallinks
CREATE TABLE IF NOT EXISTS `sociallinks` (
  `slID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`slID`),
  UNIQUE KEY `ssHandle` (`ssHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.sociallinks: ~0 rows (approximately)
DELETE FROM `sociallinks`;
/*!40000 ALTER TABLE `sociallinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `sociallinks` ENABLE KEYS */;


-- Dumping structure for table herran.stacks
CREATE TABLE IF NOT EXISTS `stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.stacks: ~9 rows (approximately)
DELETE FROM `stacks`;
/*!40000 ALTER TABLE `stacks` DISABLE KEYS */;
INSERT INTO `stacks` (`stID`, `stName`, `stType`, `cID`, `stMultilingualSection`) VALUES
	(1, 'Header Site Title', 20, 145, 0),
	(2, 'Header Navigation', 20, 146, 0),
	(3, 'Footer Legal', 20, 147, 0),
	(4, 'Footer Navigation', 20, 148, 0),
	(5, 'Footer Contact', 20, 149, 0),
	(6, 'Header Search', 20, 150, 0),
	(7, 'Footer Site Title', 20, 151, 0),
	(8, 'Footer Social', 20, 152, 0),
	(9, 'Header Logo', 20, 153, 0),
	(10, 'Header Menu', 20, 158, 0);
/*!40000 ALTER TABLE `stacks` ENABLE KEYS */;


-- Dumping structure for table herran.stylecustomizercustomcssrecords
CREATE TABLE IF NOT EXISTS `stylecustomizercustomcssrecords` (
  `sccRecordID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sccRecordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.stylecustomizercustomcssrecords: ~0 rows (approximately)
DELETE FROM `stylecustomizercustomcssrecords`;
/*!40000 ALTER TABLE `stylecustomizercustomcssrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizercustomcssrecords` ENABLE KEYS */;


-- Dumping structure for table herran.stylecustomizerinlinestylepresets
CREATE TABLE IF NOT EXISTS `stylecustomizerinlinestylepresets` (
  `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pssPresetID`),
  KEY `issID` (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.stylecustomizerinlinestylepresets: ~0 rows (approximately)
DELETE FROM `stylecustomizerinlinestylepresets`;
/*!40000 ALTER TABLE `stylecustomizerinlinestylepresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizerinlinestylepresets` ENABLE KEYS */;


-- Dumping structure for table herran.stylecustomizerinlinestylesets
CREATE TABLE IF NOT EXISTS `stylecustomizerinlinestylesets` (
  `issID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) DEFAULT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`issID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.stylecustomizerinlinestylesets: ~0 rows (approximately)
DELETE FROM `stylecustomizerinlinestylesets`;
/*!40000 ALTER TABLE `stylecustomizerinlinestylesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizerinlinestylesets` ENABLE KEYS */;


-- Dumping structure for table herran.stylecustomizervaluelists
CREATE TABLE IF NOT EXISTS `stylecustomizervaluelists` (
  `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.stylecustomizervaluelists: ~0 rows (approximately)
DELETE FROM `stylecustomizervaluelists`;
/*!40000 ALTER TABLE `stylecustomizervaluelists` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizervaluelists` ENABLE KEYS */;


-- Dumping structure for table herran.stylecustomizervalues
CREATE TABLE IF NOT EXISTS `stylecustomizervalues` (
  `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`scvID`),
  KEY `scvlID` (`scvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.stylecustomizervalues: ~0 rows (approximately)
DELETE FROM `stylecustomizervalues`;
/*!40000 ALTER TABLE `stylecustomizervalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `stylecustomizervalues` ENABLE KEYS */;


-- Dumping structure for table herran.systemantispamlibraries
CREATE TABLE IF NOT EXISTS `systemantispamlibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.systemantispamlibraries: ~0 rows (approximately)
DELETE FROM `systemantispamlibraries`;
/*!40000 ALTER TABLE `systemantispamlibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemantispamlibraries` ENABLE KEYS */;


-- Dumping structure for table herran.systemcaptchalibraries
CREATE TABLE IF NOT EXISTS `systemcaptchalibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.systemcaptchalibraries: ~0 rows (approximately)
DELETE FROM `systemcaptchalibraries`;
/*!40000 ALTER TABLE `systemcaptchalibraries` DISABLE KEYS */;
INSERT INTO `systemcaptchalibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
	('securimage', 'SecurImage (Default)', 1, 0);
/*!40000 ALTER TABLE `systemcaptchalibraries` ENABLE KEYS */;


-- Dumping structure for table herran.systemcontenteditorsnippets
CREATE TABLE IF NOT EXISTS `systemcontenteditorsnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`scsHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.systemcontenteditorsnippets: ~2 rows (approximately)
DELETE FROM `systemcontenteditorsnippets`;
/*!40000 ALTER TABLE `systemcontenteditorsnippets` DISABLE KEYS */;
INSERT INTO `systemcontenteditorsnippets` (`scsHandle`, `scsName`, `scsIsActive`, `pkgID`) VALUES
	('page_name', 'Page Name', 1, 0),
	('user_name', 'User Name', 1, 0);
/*!40000 ALTER TABLE `systemcontenteditorsnippets` ENABLE KEYS */;


-- Dumping structure for table herran.systemdatabasemigrations
CREATE TABLE IF NOT EXISTS `systemdatabasemigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.systemdatabasemigrations: ~0 rows (approximately)
DELETE FROM `systemdatabasemigrations`;
/*!40000 ALTER TABLE `systemdatabasemigrations` DISABLE KEYS */;
INSERT INTO `systemdatabasemigrations` (`version`) VALUES
	('20150731000000');
/*!40000 ALTER TABLE `systemdatabasemigrations` ENABLE KEYS */;


-- Dumping structure for table herran.systemdatabasequerylog
CREATE TABLE IF NOT EXISTS `systemdatabasequerylog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.systemdatabasequerylog: ~0 rows (approximately)
DELETE FROM `systemdatabasequerylog`;
/*!40000 ALTER TABLE `systemdatabasequerylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemdatabasequerylog` ENABLE KEYS */;


-- Dumping structure for table herran.topictrees
CREATE TABLE IF NOT EXISTS `topictrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.topictrees: ~0 rows (approximately)
DELETE FROM `topictrees`;
/*!40000 ALTER TABLE `topictrees` DISABLE KEYS */;
/*!40000 ALTER TABLE `topictrees` ENABLE KEYS */;


-- Dumping structure for table herran.treecategorynodes
CREATE TABLE IF NOT EXISTS `treecategorynodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.treecategorynodes: ~0 rows (approximately)
DELETE FROM `treecategorynodes`;
/*!40000 ALTER TABLE `treecategorynodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `treecategorynodes` ENABLE KEYS */;


-- Dumping structure for table herran.treegroupnodes
CREATE TABLE IF NOT EXISTS `treegroupnodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.treegroupnodes: ~3 rows (approximately)
DELETE FROM `treegroupnodes`;
/*!40000 ALTER TABLE `treegroupnodes` DISABLE KEYS */;
INSERT INTO `treegroupnodes` (`treeNodeID`, `gID`) VALUES
	(2, 1),
	(3, 2),
	(4, 3);
/*!40000 ALTER TABLE `treegroupnodes` ENABLE KEYS */;


-- Dumping structure for table herran.treenodepermissionassignments
CREATE TABLE IF NOT EXISTS `treenodepermissionassignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  KEY `pkID` (`pkID`),
  KEY `paID` (`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.treenodepermissionassignments: ~5 rows (approximately)
DELETE FROM `treenodepermissionassignments`;
/*!40000 ALTER TABLE `treenodepermissionassignments` DISABLE KEYS */;
INSERT INTO `treenodepermissionassignments` (`treeNodeID`, `pkID`, `paID`) VALUES
	(1, 81, 89),
	(1, 82, 90),
	(1, 83, 91),
	(1, 84, 92),
	(1, 85, 93);
/*!40000 ALTER TABLE `treenodepermissionassignments` ENABLE KEYS */;


-- Dumping structure for table herran.treenodes
CREATE TABLE IF NOT EXISTS `treenodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeID`),
  KEY `treeNodeParentID` (`treeNodeParentID`),
  KEY `treeNodeTypeID` (`treeNodeTypeID`),
  KEY `treeID` (`treeID`),
  KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.treenodes: ~4 rows (approximately)
DELETE FROM `treenodes`;
/*!40000 ALTER TABLE `treenodes` DISABLE KEYS */;
INSERT INTO `treenodes` (`treeNodeID`, `treeNodeTypeID`, `treeID`, `treeNodeParentID`, `treeNodeDisplayOrder`, `treeNodeOverridePermissions`, `inheritPermissionsFromTreeNodeID`) VALUES
	(1, 1, 1, 0, 0, 1, 1),
	(2, 1, 1, 1, 0, 0, 1),
	(3, 1, 1, 1, 1, 0, 1),
	(4, 1, 1, 1, 2, 0, 1);
/*!40000 ALTER TABLE `treenodes` ENABLE KEYS */;


-- Dumping structure for table herran.treenodetypes
CREATE TABLE IF NOT EXISTS `treenodetypes` (
  `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeNodeTypeID`),
  UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.treenodetypes: ~3 rows (approximately)
DELETE FROM `treenodetypes`;
/*!40000 ALTER TABLE `treenodetypes` DISABLE KEYS */;
INSERT INTO `treenodetypes` (`treeNodeTypeID`, `treeNodeTypeHandle`, `pkgID`) VALUES
	(1, 'group', 0),
	(2, 'topic_category', 0),
	(3, 'topic', 0);
/*!40000 ALTER TABLE `treenodetypes` ENABLE KEYS */;


-- Dumping structure for table herran.trees
CREATE TABLE IF NOT EXISTS `trees` (
  `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeID`),
  KEY `treeTypeID` (`treeTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.trees: ~0 rows (approximately)
DELETE FROM `trees`;
/*!40000 ALTER TABLE `trees` DISABLE KEYS */;
INSERT INTO `trees` (`treeID`, `treeTypeID`, `treeDateAdded`, `rootTreeNodeID`) VALUES
	(1, 1, '2016-01-14 08:10:57', 1);
/*!40000 ALTER TABLE `trees` ENABLE KEYS */;


-- Dumping structure for table herran.treetopicnodes
CREATE TABLE IF NOT EXISTS `treetopicnodes` (
  `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`treeNodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.treetopicnodes: ~0 rows (approximately)
DELETE FROM `treetopicnodes`;
/*!40000 ALTER TABLE `treetopicnodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `treetopicnodes` ENABLE KEYS */;


-- Dumping structure for table herran.treetypes
CREATE TABLE IF NOT EXISTS `treetypes` (
  `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`treeTypeID`),
  UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.treetypes: ~2 rows (approximately)
DELETE FROM `treetypes`;
/*!40000 ALTER TABLE `treetypes` DISABLE KEYS */;
INSERT INTO `treetypes` (`treeTypeID`, `treeTypeHandle`, `pkgID`) VALUES
	(1, 'group', 0),
	(2, 'topic', 0);
/*!40000 ALTER TABLE `treetypes` ENABLE KEYS */;


-- Dumping structure for table herran.userattributekeys
CREATE TABLE IF NOT EXISTS `userattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.userattributekeys: ~3 rows (approximately)
DELETE FROM `userattributekeys`;
/*!40000 ALTER TABLE `userattributekeys` DISABLE KEYS */;
INSERT INTO `userattributekeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
	(12, 0, 0, 1, 0, 1, 0, 1, 1),
	(13, 0, 0, 1, 0, 1, 0, 2, 1),
	(16, 0, 0, 0, 0, 0, 0, 3, 1);
/*!40000 ALTER TABLE `userattributekeys` ENABLE KEYS */;


-- Dumping structure for table herran.userattributevalues
CREATE TABLE IF NOT EXISTS `userattributevalues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`),
  KEY `akID` (`akID`),
  KEY `avID` (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.userattributevalues: ~0 rows (approximately)
DELETE FROM `userattributevalues`;
/*!40000 ALTER TABLE `userattributevalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `userattributevalues` ENABLE KEYS */;


-- Dumping structure for table herran.userbannedips
CREATE TABLE IF NOT EXISTS `userbannedips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.userbannedips: ~0 rows (approximately)
DELETE FROM `userbannedips`;
/*!40000 ALTER TABLE `userbannedips` DISABLE KEYS */;
/*!40000 ALTER TABLE `userbannedips` ENABLE KEYS */;


-- Dumping structure for table herran.usergroups
CREATE TABLE IF NOT EXISTS `usergroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.usergroups: ~0 rows (approximately)
DELETE FROM `usergroups`;
/*!40000 ALTER TABLE `usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups` ENABLE KEYS */;


-- Dumping structure for table herran.userpermissioneditpropertyaccesslist
CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.userpermissioneditpropertyaccesslist: ~0 rows (approximately)
DELETE FROM `userpermissioneditpropertyaccesslist`;
/*!40000 ALTER TABLE `userpermissioneditpropertyaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissioneditpropertyaccesslist` ENABLE KEYS */;


-- Dumping structure for table herran.userpermissioneditpropertyattributeaccesslistcustom
CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.userpermissioneditpropertyattributeaccesslistcustom: ~0 rows (approximately)
DELETE FROM `userpermissioneditpropertyattributeaccesslistcustom`;
/*!40000 ALTER TABLE `userpermissioneditpropertyattributeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissioneditpropertyattributeaccesslistcustom` ENABLE KEYS */;


-- Dumping structure for table herran.userpermissionviewattributeaccesslist
CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`),
  KEY `peID` (`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.userpermissionviewattributeaccesslist: ~0 rows (approximately)
DELETE FROM `userpermissionviewattributeaccesslist`;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslist` ENABLE KEYS */;


-- Dumping structure for table herran.userpermissionviewattributeaccesslistcustom
CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`),
  KEY `peID` (`peID`),
  KEY `akID` (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.userpermissionviewattributeaccesslistcustom: ~0 rows (approximately)
DELETE FROM `userpermissionviewattributeaccesslistcustom`;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslistcustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissionviewattributeaccesslistcustom` ENABLE KEYS */;


-- Dumping structure for table herran.userpointactions
CREATE TABLE IF NOT EXISTS `userpointactions` (
  `upaID` int(11) NOT NULL AUTO_INCREMENT,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`upaID`),
  UNIQUE KEY `upaHandle` (`upaHandle`),
  KEY `pkgID` (`pkgID`),
  KEY `gBBadgeID` (`gBadgeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.userpointactions: ~0 rows (approximately)
DELETE FROM `userpointactions`;
/*!40000 ALTER TABLE `userpointactions` DISABLE KEYS */;
INSERT INTO `userpointactions` (`upaID`, `upaHandle`, `upaName`, `upaDefaultPoints`, `pkgID`, `upaHasCustomClass`, `upaIsActive`, `gBadgeID`) VALUES
	(1, 'won_badge', 'Won a Badge', 5, 0, 1, 1, 0);
/*!40000 ALTER TABLE `userpointactions` ENABLE KEYS */;


-- Dumping structure for table herran.userpointhistory
CREATE TABLE IF NOT EXISTS `userpointhistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`),
  KEY `upuID` (`upuID`),
  KEY `upaID` (`upaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.userpointhistory: ~0 rows (approximately)
DELETE FROM `userpointhistory`;
/*!40000 ALTER TABLE `userpointhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpointhistory` ENABLE KEYS */;


-- Dumping structure for table herran.userprivatemessages
CREATE TABLE IF NOT EXISTS `userprivatemessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`),
  KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.userprivatemessages: ~0 rows (approximately)
DELETE FROM `userprivatemessages`;
/*!40000 ALTER TABLE `userprivatemessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprivatemessages` ENABLE KEYS */;


-- Dumping structure for table herran.userprivatemessagesto
CREATE TABLE IF NOT EXISTS `userprivatemessagesto` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.userprivatemessagesto: ~0 rows (approximately)
DELETE FROM `userprivatemessagesto`;
/*!40000 ALTER TABLE `userprivatemessagesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprivatemessagesto` ENABLE KEYS */;


-- Dumping structure for table herran.users
CREATE TABLE IF NOT EXISTS `users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uLastPasswordChange` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` tinyblob,
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`),
  KEY `uEmail` (`uEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uLastPasswordChange`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uLastAuthTypeID`, `uTimezone`, `uDefaultLanguage`) VALUES
	(1, 'admin', 'zapper.tommy@gmail.com', '$2a$12$tPghBUcHr6M2Ug4zE2tZC.Iy0KJ6xQq47zE.9iMkNKSEF9.ZzfYo6', '1', -1, 1, '2016-01-14 08:10:58', '2016-01-14 08:10:58', 0, 1456904073, 1456904073, _binary 0x3766303030303031, 1456324162, 19, 1, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table herran.usersearchindexattributes
CREATE TABLE IF NOT EXISTS `usersearchindexattributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.usersearchindexattributes: ~0 rows (approximately)
DELETE FROM `usersearchindexattributes`;
/*!40000 ALTER TABLE `usersearchindexattributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersearchindexattributes` ENABLE KEYS */;


-- Dumping structure for table herran.uservalidationhashes
CREATE TABLE IF NOT EXISTS `uservalidationhashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`),
  KEY `uID` (`uID`,`type`),
  KEY `uHash` (`uHash`,`type`),
  KEY `uDateGenerated` (`uDateGenerated`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.uservalidationhashes: ~0 rows (approximately)
DELETE FROM `uservalidationhashes`;
/*!40000 ALTER TABLE `uservalidationhashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `uservalidationhashes` ENABLE KEYS */;


-- Dumping structure for table herran.workflowprogress
CREATE TABLE IF NOT EXISTS `workflowprogress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wpCategoryID` (`wpCategoryID`),
  KEY `wfID` (`wfID`),
  KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.workflowprogress: ~0 rows (approximately)
DELETE FROM `workflowprogress`;
/*!40000 ALTER TABLE `workflowprogress` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowprogress` ENABLE KEYS */;


-- Dumping structure for table herran.workflowprogresscategories
CREATE TABLE IF NOT EXISTS `workflowprogresscategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`),
  UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.workflowprogresscategories: ~3 rows (approximately)
DELETE FROM `workflowprogresscategories`;
/*!40000 ALTER TABLE `workflowprogresscategories` DISABLE KEYS */;
INSERT INTO `workflowprogresscategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
	(1, 'page', NULL),
	(2, 'file', NULL),
	(3, 'user', NULL);
/*!40000 ALTER TABLE `workflowprogresscategories` ENABLE KEYS */;


-- Dumping structure for table herran.workflowprogresshistory
CREATE TABLE IF NOT EXISTS `workflowprogresshistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wphID`),
  KEY `wpID` (`wpID`,`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.workflowprogresshistory: ~22 rows (approximately)
DELETE FROM `workflowprogresshistory`;
/*!40000 ALTER TABLE `workflowprogresshistory` DISABLE KEYS */;
INSERT INTO `workflowprogresshistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
	(1, 1, '2016-01-14 17:14:34', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"1";}'),
	(2, 2, '2016-01-14 17:14:51', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"3";s:4:"wrID";s:1:"2";}'),
	(3, 1, '2016-02-05 21:05:08', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"1";}'),
	(4, 2, '2016-02-05 21:05:32', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"155";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"2";}'),
	(5, 3, '2016-02-05 21:05:55', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"156";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"3";}'),
	(6, 4, '2016-02-05 21:06:11', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"157";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"4";}'),
	(7, 5, '2016-02-05 21:13:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"5";s:4:"wrID";s:1:"5";}'),
	(8, 6, '2016-02-05 21:51:11', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"6";}'),
	(9, 7, '2016-02-05 21:51:24', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"160";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"7";}'),
	(10, 8, '2016-02-05 21:51:40', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"161";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"8";}'),
	(11, 9, '2016-02-05 21:52:00', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"162";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"9";}'),
	(12, 10, '2016-02-05 21:52:11', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"163";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"10";}'),
	(13, 11, '2016-02-05 21:54:25', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"11";}'),
	(14, 12, '2016-02-06 01:12:14', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"7";s:4:"wrID";s:2:"12";}'),
	(15, 1, '2016-02-10 21:15:55', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"9";s:4:"wrID";s:1:"1";}'),
	(16, 2, '2016-02-10 21:18:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"10";s:4:"wrID";s:1:"2";}'),
	(17, 3, '2016-02-10 22:29:43', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"11";s:4:"wrID";s:1:"3";}'),
	(18, 4, '2016-02-10 22:31:32', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"12";s:4:"wrID";s:1:"4";}'),
	(19, 1, '2016-02-22 22:59:58', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"13";s:4:"wrID";s:1:"1";}'),
	(20, 2, '2016-02-22 23:09:49', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"14";s:4:"wrID";s:1:"2";}'),
	(21, 3, '2016-02-22 23:10:26', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"15";s:4:"wrID";s:1:"3";}'),
	(22, 4, '2016-02-23 00:57:17', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"16";s:4:"wrID";s:1:"4";}'),
	(23, 5, '2016-02-23 23:42:03', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"17";s:4:"wrID";s:1:"5";}'),
	(24, 6, '2016-02-24 22:29:53', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"18";s:4:"wrID";s:1:"6";}');
/*!40000 ALTER TABLE `workflowprogresshistory` ENABLE KEYS */;


-- Dumping structure for table herran.workflowrequestobjects
CREATE TABLE IF NOT EXISTS `workflowrequestobjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.workflowrequestobjects: ~0 rows (approximately)
DELETE FROM `workflowrequestobjects`;
/*!40000 ALTER TABLE `workflowrequestobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowrequestobjects` ENABLE KEYS */;


-- Dumping structure for table herran.workflows
CREATE TABLE IF NOT EXISTS `workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`),
  KEY `wftID` (`wftID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.workflows: ~0 rows (approximately)
DELETE FROM `workflows`;
/*!40000 ALTER TABLE `workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflows` ENABLE KEYS */;


-- Dumping structure for table herran.workflowtypes
CREATE TABLE IF NOT EXISTS `workflowtypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`),
  UNIQUE KEY `wftHandle` (`wftHandle`),
  KEY `pkgID` (`pkgID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table herran.workflowtypes: ~0 rows (approximately)
DELETE FROM `workflowtypes`;
/*!40000 ALTER TABLE `workflowtypes` DISABLE KEYS */;
INSERT INTO `workflowtypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
	(1, 'basic', 'Basic Workflow', 0);
/*!40000 ALTER TABLE `workflowtypes` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
