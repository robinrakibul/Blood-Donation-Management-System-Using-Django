-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 05:11 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blooddonation`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add blood group', 1, 'add_bloodgroup'),
(2, 'Can change blood group', 1, 'change_bloodgroup'),
(3, 'Can delete blood group', 1, 'delete_bloodgroup'),
(4, 'Can view blood group', 1, 'view_bloodgroup'),
(5, 'Can add district', 2, 'add_district'),
(6, 'Can change district', 2, 'change_district'),
(7, 'Can delete district', 2, 'delete_district'),
(8, 'Can view district', 2, 'view_district'),
(9, 'Can add user extend', 3, 'add_userextend'),
(10, 'Can change user extend', 3, 'change_userextend'),
(11, 'Can delete user extend', 3, 'delete_userextend'),
(12, 'Can view user extend', 3, 'view_userextend'),
(13, 'Can add request blood', 4, 'add_requestblood'),
(14, 'Can change request blood', 4, 'change_requestblood'),
(15, 'Can delete request blood', 4, 'delete_requestblood'),
(16, 'Can view request blood', 4, 'view_requestblood'),
(17, 'Can add log entry', 5, 'add_logentry'),
(18, 'Can change log entry', 5, 'change_logentry'),
(19, 'Can delete log entry', 5, 'delete_logentry'),
(20, 'Can view log entry', 5, 'view_logentry'),
(21, 'Can add permission', 6, 'add_permission'),
(22, 'Can change permission', 6, 'change_permission'),
(23, 'Can delete permission', 6, 'delete_permission'),
(24, 'Can view permission', 6, 'view_permission'),
(25, 'Can add group', 7, 'add_group'),
(26, 'Can change group', 7, 'change_group'),
(27, 'Can delete group', 7, 'delete_group'),
(28, 'Can view group', 7, 'view_group'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add content type', 9, 'add_contenttype'),
(34, 'Can change content type', 9, 'change_contenttype'),
(35, 'Can delete content type', 9, 'delete_contenttype'),
(36, 'Can view content type', 9, 'view_contenttype'),
(37, 'Can add session', 10, 'add_session'),
(38, 'Can change session', 10, 'change_session'),
(39, 'Can delete session', 10, 'delete_session'),
(40, 'Can view session', 10, 'view_session');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(5, 'pbkdf2_sha256$120000$ycclgEX4PYrn$CmlwSUnlOKsVqzLsGZCvzCW+oIfAIHS/zEoVfLmL0Ks=', '2020-09-20 05:42:46.875231', 0, 'test1', 'fname', 'lname', 'test1@test.com', 0, 1, '2020-09-20 05:36:40.418743'),
(6, 'pbkdf2_sha256$120000$GrgwvTDp3Fzl$sZZLeRCAULOS+bDOwiHCMnQW3oFd4ruGi0slYcP7pKE=', '2020-09-21 03:10:06.337935', 0, 'test', 'test', 'test', 'test@gmail.com', 0, 1, '2020-09-21 03:07:52.199555'),
(7, 'pbkdf2_sha256$120000$1ud9qDtzaA9Q$4zsHcMtZLBKokfCRz8ara+Vfw9tq0p7l3Keyrz3jGcE=', NULL, 0, 'tester', 'tester', 'tester', 'test1@gmail.com', 0, 1, '2020-09-21 03:08:52.235560'),
(8, 'pbkdf2_sha256$120000$5waGv3jQY9sN$/8AOjscG/AMuv1SjVhjLY4/mB3pDOXq/MLIITaaRhv0=', NULL, 0, 'test2', 'test2', 'test', 'test2@test.com', 0, 1, '2020-09-21 03:09:42.707775');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blood_app_bloodgroup`
--

CREATE TABLE `blood_app_bloodgroup` (
  `id` int(11) NOT NULL,
  `name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_app_bloodgroup`
--

INSERT INTO `blood_app_bloodgroup` (`id`, `name`) VALUES
(1, 'A+'),
(2, 'A-'),
(3, 'B+'),
(4, 'B-'),
(5, 'O+'),
(6, 'O-'),
(7, 'AB+'),
(8, 'AB-');

-- --------------------------------------------------------

--
-- Table structure for table `blood_app_district`
--

CREATE TABLE `blood_app_district` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_app_district`
--

INSERT INTO `blood_app_district` (`id`, `name`) VALUES
(1, 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `blood_app_requestblood`
--

CREATE TABLE `blood_app_requestblood` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `donation_location` varchar(100) NOT NULL,
  `date_of_donation` date NOT NULL,
  `pin_code` int(11) NOT NULL,
  `blood_group_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_app_requestblood`
--

INSERT INTO `blood_app_requestblood` (`id`, `name`, `email`, `phone`, `donation_location`, `date_of_donation`, `pin_code`, `blood_group_id`, `district_id`) VALUES
(4, 'Test', 'test@test.com', '01912312312', 'Road X, House Y, Block Z', '2020-06-10', 123, 1, 1),
(5, 'Test2', 'test2@test.com', '0121242145', 'Road Z, House A', '2020-01-01', 100, 1, 1),
(6, 'test', 'test@test.com', '0101201021', 'Dhaka', '2020-06-10', 1234, 1, 1),
(7, 'Test4', 'test@test.com', '0100401040', 'Road X, House Y, Block Z', '2020-01-01', 12345, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blood_app_userextend`
--

CREATE TABLE `blood_app_userextend` (
  `id` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ready_to_donate` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `last_donate` date NOT NULL,
  `blood_group_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_app_userextend`
--

INSERT INTO `blood_app_userextend` (`id`, `date_of_birth`, `phone`, `address`, `gender`, `ready_to_donate`, `image`, `last_donate`, `blood_group_id`, `district_id`, `donor_id`) VALUES
(5, '1999-01-01', '01700000000', 'Road X, House Y, etc', 'Male', 1, '', '0000-00-00', 1, 1, 5),
(6, '2013-01-10', '0124312014', '251 Dhk', 'Male', 1, '', '0000-00-00', 5, 1, 6),
(7, '1980-01-10', '0140250241', 'road 2, house 15', 'Male', 1, '', '0000-00-00', 1, 1, 7),
(8, '1999-01-01', '0121242012', 'road 5, dhaka', 'Male', 1, '', '0000-00-00', 5, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(5, 'admin', 'logentry'),
(7, 'auth', 'group'),
(6, 'auth', 'permission'),
(8, 'auth', 'user'),
(1, 'blood_app', 'bloodgroup'),
(2, 'blood_app', 'district'),
(4, 'blood_app', 'requestblood'),
(3, 'blood_app', 'userextend'),
(9, 'contenttypes', 'contenttype'),
(10, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-05 06:25:16.105601'),
(2, 'auth', '0001_initial', '2020-09-05 06:25:29.112935'),
(3, 'admin', '0001_initial', '2020-09-05 06:25:32.519225'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-05 06:25:32.722853'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-05 06:25:32.863487'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-05 06:25:33.854649'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-05 06:25:35.412095'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-05 06:25:36.208983'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-05 06:25:36.287109'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-05 06:25:37.583998'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-05 06:25:37.630873'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-05 06:25:37.709003'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-05 06:25:38.005882'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-05 06:25:38.396509'),
(15, 'blood_app', '0001_initial', '2020-09-05 06:25:46.412241'),
(16, 'blood_app', '0002_auto_20200514_1642', '2020-09-05 06:25:47.459130'),
(17, 'blood_app', '0003_auto_20200514_1702', '2020-09-05 06:25:47.490390'),
(18, 'blood_app', '0004_auto_20200515_1710', '2020-09-05 06:25:47.615396'),
(19, 'sessions', '0001_initial', '2020-09-05 06:25:48.256028');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `blood_app_bloodgroup`
--
ALTER TABLE `blood_app_bloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_app_district`
--
ALTER TABLE `blood_app_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_app_requestblood`
--
ALTER TABLE `blood_app_requestblood`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pin_code` (`pin_code`),
  ADD KEY `blood_app_requestblo_blood_group_id_efbfa7a2_fk_blood_app` (`blood_group_id`),
  ADD KEY `blood_app_requestblo_district_id_cb7040f5_fk_blood_app` (`district_id`);

--
-- Indexes for table `blood_app_userextend`
--
ALTER TABLE `blood_app_userextend`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `donor_id` (`donor_id`),
  ADD KEY `blood_app_userextend_blood_group_id_9504f84f_fk_blood_app` (`blood_group_id`),
  ADD KEY `blood_app_userextend_district_id_f4c9d228_fk_blood_app` (`district_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_app_bloodgroup`
--
ALTER TABLE `blood_app_bloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blood_app_district`
--
ALTER TABLE `blood_app_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_app_requestblood`
--
ALTER TABLE `blood_app_requestblood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blood_app_userextend`
--
ALTER TABLE `blood_app_userextend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
-- Constraints for table `blood_app_requestblood`
--
ALTER TABLE `blood_app_requestblood`
  ADD CONSTRAINT `blood_app_requestblo_blood_group_id_efbfa7a2_fk_blood_app` FOREIGN KEY (`blood_group_id`) REFERENCES `blood_app_bloodgroup` (`id`),
  ADD CONSTRAINT `blood_app_requestblo_district_id_cb7040f5_fk_blood_app` FOREIGN KEY (`district_id`) REFERENCES `blood_app_district` (`id`);

--
-- Constraints for table `blood_app_userextend`
--
ALTER TABLE `blood_app_userextend`
  ADD CONSTRAINT `blood_app_userextend_blood_group_id_9504f84f_fk_blood_app` FOREIGN KEY (`blood_group_id`) REFERENCES `blood_app_bloodgroup` (`id`),
  ADD CONSTRAINT `blood_app_userextend_district_id_f4c9d228_fk_blood_app` FOREIGN KEY (`district_id`) REFERENCES `blood_app_district` (`id`),
  ADD CONSTRAINT `blood_app_userextend_donor_id_b26301fd_fk_auth_user_id` FOREIGN KEY (`donor_id`) REFERENCES `auth_user` (`id`);

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
