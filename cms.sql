-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 07:38 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add articles', 7, 'add_articles'),
(26, 'Can change articles', 7, 'change_articles'),
(27, 'Can delete articles', 7, 'delete_articles'),
(28, 'Can view articles', 7, 'view_articles'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add comments', 9, 'add_comments'),
(34, 'Can change comments', 9, 'change_comments'),
(35, 'Can delete comments', 9, 'delete_comments'),
(36, 'Can view comments', 9, 'view_comments'),
(37, 'Can add challenges', 10, 'add_challenges'),
(38, 'Can change challenges', 10, 'change_challenges'),
(39, 'Can delete challenges', 10, 'delete_challenges'),
(40, 'Can view challenges', 10, 'view_challenges'),
(41, 'Can add solved', 11, 'add_solved'),
(42, 'Can change solved', 11, 'change_solved'),
(43, 'Can delete solved', 11, 'delete_solved'),
(44, 'Can view solved', 11, 'view_solved'),
(45, 'Can add scores', 12, 'add_scores'),
(46, 'Can change scores', 12, 'change_scores'),
(47, 'Can delete scores', 12, 'delete_scores'),
(48, 'Can view scores', 12, 'view_scores');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$iOxgacxyVz66eDUAC6tLBd$IOXZvX12XbRhAj0ZfHjFGwMVEdNExDZh7SQ+ht5UbWs=', '2021-08-11 17:04:20.231624', 1, 'admin', '', '', 'vermaanshul2002@gmail.com', 1, 1, '2021-08-08 20:02:28.485956');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'webapp', 'articles'),
(10, 'webapp', 'challenges'),
(9, 'webapp', 'comments'),
(12, 'webapp', 'scores'),
(11, 'webapp', 'solved'),
(8, 'webapp', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-08-08 07:04:40.555877'),
(2, 'auth', '0001_initial', '2021-08-08 07:04:41.134536'),
(3, 'admin', '0001_initial', '2021-08-08 07:04:41.778713'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-08-08 07:04:41.793456'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-08 07:04:41.818502'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-08-08 07:04:41.952451'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-08-08 07:04:42.024698'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-08-08 07:04:42.110979'),
(9, 'auth', '0004_alter_user_username_opts', '2021-08-08 07:04:42.125211'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-08-08 07:04:42.466460'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-08-08 07:04:42.471379'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-08 07:04:42.490378'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-08-08 07:04:42.552733'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-08 07:04:42.707561'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-08-08 07:04:42.800157'),
(16, 'auth', '0011_update_proxy_permissions', '2021-08-08 07:04:42.812397'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-08-08 07:04:42.870397'),
(18, 'sessions', '0001_initial', '2021-08-08 07:04:42.917915'),
(19, 'webapp', '0001_initial', '2021-08-08 07:04:43.012055'),
(20, 'webapp', '0002_alter_user_profile_pic', '2021-08-08 07:08:42.764720'),
(21, 'webapp', '0003_articles_profile_pic', '2021-08-08 10:09:23.927827'),
(22, 'webapp', '0004_auto_20210811_1236', '2021-08-11 07:06:26.459931'),
(23, 'webapp', '0005_alter_articles_update_time', '2021-08-11 12:51:00.813302'),
(24, 'webapp', '0006_auto_20210811_1649', '2021-08-11 16:49:41.863676'),
(25, 'webapp', '0007_comments', '2021-08-11 16:57:14.114606'),
(26, 'webapp', '0008_delete_comments', '2021-08-11 17:10:57.019009'),
(27, 'webapp', '0009_comments', '2021-08-11 17:11:33.843636'),
(28, 'webapp', '0010_delete_comments', '2021-08-11 17:18:51.602438'),
(29, 'webapp', '0011_comments', '2021-08-11 17:19:42.151295'),
(30, 'webapp', '0012_auto_20210814_1253', '2021-08-14 12:53:33.428312'),
(31, 'webapp', '0013_challenges', '2021-10-30 15:26:34.101009'),
(32, 'webapp', '0014_challenges_time', '2021-10-30 15:35:11.764205'),
(33, 'webapp', '0015_alter_challenges_points', '2021-10-30 16:36:28.252353'),
(34, 'webapp', '0016_auto_20211114_1649', '2021-11-14 16:50:05.018780'),
(35, 'webapp', '0017_solved', '2021-11-15 11:52:47.670565'),
(36, 'webapp', '0018_auto_20211115_1332', '2021-11-15 13:32:07.596782'),
(37, 'webapp', '0019_scores', '2021-11-16 11:27:32.925244'),
(38, 'webapp', '0020_remove_scores_score', '2021-11-16 11:36:56.132617'),
(39, 'webapp', '0021_scores_score', '2021-11-16 11:37:59.130228'),
(40, 'webapp', '0022_alter_challenges_points', '2021-11-16 11:45:40.602992'),
(41, 'webapp', '0023_challenges_file', '2021-11-16 12:52:10.602690'),
(42, 'webapp', '0024_challenges_reply', '2021-11-16 14:27:52.510929'),
(43, 'webapp', '0025_articles_comments', '2021-11-16 22:51:09.133727');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('39fbldnb0r360ztbywtimupauf2xpbw0', '.eJxVjssOwiAQRf-FtSE8K3Xp3m9oBhiktkJTWjfGf5eaxuj23HvPzJN0sC6xWwvOXe_JiXBy-GUW3IBpC_wN0jVTl9My95ZuFbqnhV6yx_G8d_8EEUqsa4GcgYWAUmh3bJwOFqQwTKLQgit0QTMfWqWdNFyZIDkP3PjWq8YFJravProl1xPVl_phyBVOUMoXQipxHR8434G83vV5SNE:1mE5fw:spE2rM6TNCo1HUJnwQkwJkDANPAtI2zkRFVJcMYs3ac', '2021-08-26 13:32:52.577829'),
('45bh0tek4tqksglinbtwy45w1rj8ckpi', 'eyJ1c2VyX3Rva2VuIjoiYmF0dGxla2luZyIsInBhc3NfdG9rZW4iOiJhbnNodWx2ZXJtYSJ9:1mDoO2:DoNQTcJg9LjbtXip5pm4sf6OqbFTO8xMHQPoS1vy6L0', '2021-08-25 19:05:14.027466'),
('4bl9hnb048px47nufhf3xiayknooazae', 'e30:1mE5bf:uoFSG1YvhF92FdFI3xjk9YpTbo55hxDefQoKAqVkhV8', '2021-08-26 13:28:27.341104'),
('4cue73syvyuupv5p8oso73oi0dht5ne5', 'e30:1mDRGG:gqeOUvheuI_UrBv49q06tuD3CU9R_sbjnbG4iyGocbA', '2021-08-24 12:53:40.147849'),
('5t2fwb0ja79llstskitwqkbq3up9dm1i', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsdmVybWEifQ:1mmF7U:FJE9EZI7-984Q6FdHsEo3NWpU3l_G4ywJ_Nr9GGDri4', '2021-11-28 18:30:28.417923'),
('5vr1o295hffjqc11bu3gi1xipzqa81qi', 'e30:1mZ759:Fg6HHGUErKULftcWku65c477t3F9d7uLON_RTwA1IUE', '2021-10-23 13:17:47.228270'),
('68ra3lk5sf13smqxn222pzfqgl33r9cs', 'eyJ1c2VyX3Rva2VuIjoiIiwicGFzc190b2tlbiI6IiJ9:1mCmAe:zHVZtmLX7f_roOQS02N6QvzzRLUk_Z0UQotC8NsSHtc', '2021-08-22 17:01:08.887190'),
('al3zvr6cwtncsuzrzfrt3dwbj01k56oo', 'eyJ1c2VyX3Rva2VuIjoidGFzaHVPUCIsInBhc3NfdG9rZW4iOiJzYmRoIn0:1mCj0R:pONlOMdsohFSJEfaeNqg7nqiYBawPTQEM-g0rzOBGUQ', '2021-08-22 13:38:23.611629'),
('b6co35tjiswpwyz1o1s3kydn2efinse8', 'e30:1mD03u:bwWbPzmCuPlU83P5X4ZFoyBQhgQ5j4305MzJOAIsvMs', '2021-08-23 07:51:06.141972'),
('bffsrcwj68rro6itte3cshxcnn0zowbz', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsIn0:1mCfPF:9YOay8b-6eWMW6D3hvZnVbzIAY97O35t-0I1OD5G2H0', '2021-08-22 09:47:45.979282'),
('bnyt5pag8rlixh7pn3ms5zq60hbhno7j', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsdmVybWEifQ:1mhECI:_IgiBYm6WB4JFZd93M1RcTkhpGk0-Hvy2Mw-jL_FNUg', '2021-11-14 22:30:42.658182'),
('bqea77tn5jp0rdbke096n8tgtxa1ihiv', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsIn0:1mCmiv:ubZQ-lIed2KinWXz920Enu0f4BqGLGdTAUVsrq_AqoI', '2021-08-22 17:36:33.362362'),
('bukipqvzg6nl3cigzyza1rm74emxp6ty', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsIn0:1mCgFB:a3SCN5xLYJaMXvMKBE9qG3rEbeJFgHbmEn-0AvaqZU0', '2021-08-22 10:41:25.704605'),
('bvokdp9892yo2ls2dqstr7tg382s4bpw', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsdmVybWEifQ:1mDSIE:qAeiZpdffeqPgN8zaGPnDL3oFGR0H1KujenyUwQw5fA', '2021-08-24 13:59:46.506990'),
('bvoq2ik5pitzr27vzdrno8vi1xx0hn9i', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsIn0:1mCgAM:z7I080FYDrrBGo-UQWSXg_c4aH-0dZNNdlE1xfHzYL0', '2021-08-22 10:36:26.866677'),
('c1ggu8dwqxse20vr6kjmy1ho6fz7hp41', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsIn0:1mD0ka:Azghezushw7HW8PrnrKWhLDAwzfJaMtVaWCpjPvvVUI', '2021-08-23 08:35:12.274272'),
('ffmnbaykq5s3wuhhq00tyc1ksiq4x0hi', 'e30:1maWAR:Lhr65SQCfotXqzWh4XG1xvPmpcTdZutGbg7ePBzVPXo', '2021-10-27 10:17:03.050051'),
('gpiucno36fo4a6yeqa6n4xcn9a1wyxoo', 'e30:1mCz15:tW0BL_zfqe9JTA-Mn7ZE6tKc6AyAS0TjYbQWkX8-vaU', '2021-08-23 06:44:07.461431'),
('i5vicrmw03sukj38s32xwcicf14n3wl6', 'eyJ1c2VyX3Rva2VuIjoidGFzaHVPUCIsInBhc3NfdG9rZW4iOiJhbmt1ciJ9:1mmunE:SI5tsxWJSApQDgdCSR_FXzOWtuEazPODnRbIYhEvnoo', '2021-11-30 15:00:20.230819'),
('nb195bh4426oong7o742fm2dlhmqlz5v', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsdmVybWEifQ:1mDnOh:4X1R8n4RztYX1Qzfj7T9Mt7HA2s4X0VVQu5hzk9NrcA', '2021-08-25 18:01:51.726218'),
('oj52hvyfq3b9gl3avn7f5fxk9zl8k8zs', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsIn0:1mCk3U:_XxwsMZ9cPWkIguTXiEgWZevbCXH9TlShLRw9MwZyNs', '2021-08-22 14:45:36.909489'),
('oxackrun027j70nqfj76swjkgxmn663t', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsdmVybWEifQ:1mDptR:vYmKq0kAizUidx6u-yr6uT5YAMTk832yD9ASFcNATdY', '2021-08-25 20:41:45.710935'),
('qblcbfsgiebyv6p61g5cpnkao9zb1w6k', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsdmVybWEifQ:1mDNFC:rRmqZWGwgN7LcEw1rS6YhLBXLEWpfFjnzC4Uca7jv8A', '2021-08-24 08:36:18.732463'),
('ribad449c1tp4igi0m72km52zhns1grf', 'e30:1mD0Jg:uLpg624r-W_MwRXf0mjYusaMTsj1bJ9J81o0moO4awo', '2021-08-23 08:07:24.314983'),
('rnarcwjc3x5v7wwnfadjanfks7f31fqt', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsdmVybWEifQ:1mDSWY:VPY_dmcOYV15sZeOgL8yXMbGkDGzk2DrYX6ekhbyXvA', '2021-08-24 14:14:34.338598'),
('t35prvdzkp9fpd8rvtea3y9gp507qioe', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsIn0:1mCn0R:EjBgVEOhD6RJONalEMe0xtQAcZqJn9lyhnZuM5lnEvw', '2021-08-22 17:54:39.934869'),
('utdg0d8jv2cg4bdbyy1r2f90vciw0nqa', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsdmVybWEifQ:1mDhiH:kDQOZ1d7FKv0YYf5TjSkZ7Fr--x_816l7ZnBdPOHIOY', '2021-08-25 06:27:41.410894'),
('utip8gua65r6nexl1bkkqu5k1n05cl8b', 'eyJ1c2VyX3Rva2VuIjoiIn0:1mClw4:sUBd9Eo-_ZXdTz-E1t5zw-OVl-RCnrNWYsncLJ0Y5XA', '2021-08-22 16:46:04.505492'),
('ve2vs5pyfiuajkwshosi4bq8dbm03tqf', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsIn0:1mD0KK:d__LNQxTvlq85MFL0lOaJbRHqAnHYsclrEFXoypoCyo', '2021-08-23 08:08:04.066550'),
('w3vhy8ukgy9bodba8z293sv09g8qc3l1', 'eyJ1c2VyX3Rva2VuIjoidGFzaHVPUCIsInBhc3NfdG9rZW4iOiJhbmt1ciJ9:1mmuw8:PBhVMWWHIftsDsAAwb1SpfDWdMlFzo6GUBxJWd4sbng', '2021-11-30 15:09:32.902520'),
('x2cz2l0iyyh7pl3qivsqkxsh5uxmw1pq', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsdmVybWEifQ:1mtOOT:CVekAo39puWaHpxj2rivmyveg6TcqWURUMlS8I_cEMA', '2021-12-18 11:49:33.182953'),
('yabpt6jq8rg442ys0xkbkoj7ihx2bfg3', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsdmVybWEifQ:1mDMcL:acUXjAfszkZUhzLq9wouAeo6IbYSnCkV5e1wYXIMMsQ', '2021-08-24 07:56:09.695274'),
('ygl35zmvspmhk6m24kd7fe0ps9u24wc0', 'eyJ1c2VyX3Rva2VuIjoibmlra28iLCJwYXNzX3Rva2VuIjoiYW5zaHVsIn0:1mCm2A:ZE3hBxtipXmtgdJ03SI3W1nSoCrY2orWqvM3Nvhqwqw', '2021-08-22 16:52:22.136069'),
('z2lmu1bpphzpglomxksuiufkef2ozj24', 'e30:1mDSNm:Cb4kKg4EPkGB-ch6AhpS237lKqzNAi1oQ_XUGe0xOEs', '2021-08-24 14:05:30.802339');

-- --------------------------------------------------------

--
-- Table structure for table `webapp_articles`
--

CREATE TABLE `webapp_articles` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `body` longtext NOT NULL,
  `publish_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `com_no` int(11) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `webapp_comments`
--

CREATE TABLE `webapp_comments` (
  `id` bigint(20) NOT NULL,
  `user` varchar(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `com_user` varchar(30) NOT NULL,
  `body` longtext NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `publish_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `webapp_user`
--

CREATE TABLE `webapp_user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `webapp_articles`
--
ALTER TABLE `webapp_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webapp_comments`
--
ALTER TABLE `webapp_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webapp_user`
--
ALTER TABLE `webapp_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `webapp_articles`
--
ALTER TABLE `webapp_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webapp_comments`
--
ALTER TABLE `webapp_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webapp_user`
--
ALTER TABLE `webapp_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
