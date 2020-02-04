-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2020 at 06:13 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject`
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
  `id` int(11) NOT NULL,
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
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add review', 8, 'add_review'),
(30, 'Can change review', 8, 'change_review'),
(31, 'Can delete review', 8, 'delete_review'),
(32, 'Can view review', 8, 'view_review'),
(33, 'Can add test module', 9, 'add_testmodule'),
(34, 'Can change test module', 9, 'change_testmodule'),
(35, 'Can delete test module', 9, 'delete_testmodule'),
(36, 'Can view test module', 9, 'view_testmodule'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add post', 11, 'add_post'),
(42, 'Can change post', 11, 'change_post'),
(43, 'Can delete post', 11, 'delete_post'),
(44, 'Can view post', 11, 'view_post'),
(45, 'Can add comments', 12, 'add_comments'),
(46, 'Can change comments', 12, 'change_comments'),
(47, 'Can delete comments', 12, 'delete_comments'),
(48, 'Can view comments', 12, 'view_comments');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$FNLeX0oe9MuH$c2cF01Fne++nuJhTN/AjjGqTQG0+++vgYEeWEdkyhRk=', '2020-02-02 05:57:47.680542', 1, 'admin', '', '', 'admin@aa.bb', 1, 1, '2020-01-23 15:52:54.319025'),
(2, 'pbkdf2_sha256$180000$0QZhpPj73BJO$ZjiZrc4da02/U22KMT+keO1jKwAzzVSBL3tMM/y81HM=', '2020-02-02 05:00:29.487913', 0, 'aaa', 'aaa', 'bbb', 'aaa@bbb.com', 0, 1, '2020-01-26 04:45:50.196692');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart_cart`
--

CREATE TABLE `cart_cart` (
  `id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_cart`
--

INSERT INTO `cart_cart` (`id`, `qty`, `date`, `product_id`, `user_id`) VALUES
(1, 2, '2020-01-30', 2, 1),
(2, 3, '2020-01-30', 1, 1),
(3, 3, '2020-01-30', 1, 1),
(4, 2, '2020-01-30', 3, 1),
(5, 1, '2020-01-30', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crud_comments`
--

CREATE TABLE `crud_comments` (
  `id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crud_post`
--

CREATE TABLE `crud_post` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `post` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crud_post`
--

INSERT INTO `crud_post` (`id`, `title`, `post`, `image`, `user_id`) VALUES
(1, 'First Post', 'This is first post.', 'FB_IMG_1556700687020.jpg', 1),
(3, 'Advising', 'Advising is the second post.', 'FB_IMG_1552969898584.jpg', 2),
(4, 'Programmes', 'asdf asdf asdf', 'FB_IMG_1557896418170.jpg', 2),
(5, 'New Post', 'This is the new post. This is the new post. This is the new post.  This is the new post. This is the new post. This is the new post. This is the new post. This is the new post. This is the new post. This is the new post. This is the new post. This is the new post. This is the new post. This is the new post. This is the new post. ', 'FB_IMG_1568797218478.jpg', 1);

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-01-25 16:26:38.396385', '1', 'Product object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-01-25 16:27:18.340110', '2', 'Product object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-01-26 04:15:47.760120', '1', 'Product object (1)', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(4, '2020-01-26 04:16:31.833797', '3', 'Product object (3)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-01-28 04:39:35.731374', '1', 'TestModule object (1)', 1, '[{\"added\": {}}]', 9, 1),
(6, '2020-01-28 04:41:13.259520', '2', 'TestModule object (2)', 1, '[{\"added\": {}}]', 9, 1),
(7, '2020-01-30 04:06:56.091524', '3', 'Iron', 2, '[{\"changed\": {\"fields\": [\"Qty\"]}}]', 7, 1),
(8, '2020-01-30 04:07:03.557866', '2', 'Heater', 2, '[{\"changed\": {\"fields\": [\"Qty\"]}}]', 7, 1),
(9, '2020-01-30 04:07:10.549414', '1', 'Smart TV', 2, '[{\"changed\": {\"fields\": [\"Qty\"]}}]', 7, 1),
(10, '2020-01-30 04:07:17.453939', '3', 'Iron', 2, '[]', 7, 1),
(11, '2020-02-04 04:55:33.641122', '4', 'Thermos', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-02-04 04:57:41.714488', '5', 'Refrigerator', 1, '[{\"added\": {}}]', 7, 1);

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
(10, 'cart', 'cart'),
(5, 'contenttypes', 'contenttype'),
(12, 'crud', 'comments'),
(11, 'crud', 'post'),
(7, 'products', 'product'),
(8, 'reviews', 'review'),
(6, 'sessions', 'session'),
(9, 'testmodule', 'testmodule');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-23 15:18:57.026038'),
(2, 'auth', '0001_initial', '2020-01-23 15:18:57.689936'),
(3, 'admin', '0001_initial', '2020-01-23 15:18:59.542288'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-23 15:18:59.948855'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-23 15:18:59.986717'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-23 15:19:00.408756'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-23 15:19:00.581884'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-23 15:19:00.782428'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-23 15:19:00.822084'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-23 15:19:00.995754'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-23 15:19:01.010503'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-23 15:19:01.045998'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-23 15:19:01.317998'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-23 15:19:01.578134'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-23 15:19:01.884129'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-23 15:19:01.917997'),
(17, 'sessions', '0001_initial', '2020-01-23 15:19:02.020752'),
(18, 'products', '0001_initial', '2020-01-23 15:42:55.284730'),
(19, 'reviews', '0001_initial', '2020-01-26 05:30:26.262135'),
(20, 'testmodule', '0001_initial', '2020-01-28 04:37:25.575515'),
(21, 'products', '0002_product_qty', '2020-01-30 04:03:44.316483'),
(22, 'cart', '0001_initial', '2020-01-30 04:51:36.241787'),
(23, 'crud', '0001_initial', '2020-02-01 08:17:24.120479'),
(24, 'crud', '0002_auto_20200201_1413', '2020-02-01 08:29:02.383433'),
(25, 'crud', '0003_auto_20200201_1424', '2020-02-01 08:39:34.961757');

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
('23xsu9vkfvdxtz1jvsye0havqwbyimcc', 'OWQ3NDRiMzU4NzZhNjU4ZmNiM2YyYjlkZWQ3MjEwNzVhNzUyNGFmMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzQwYWNlNWQ2OTVlOWFlZjRhNjM3YmIzMWQ3ZjViYmM4ZGQyNDEwIn0=', '2020-02-09 10:45:54.863580'),
('bzjy1qglg609n1nbxg579o45jlyos6a7', 'OWQ3NDRiMzU4NzZhNjU4ZmNiM2YyYjlkZWQ3MjEwNzVhNzUyNGFmMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzQwYWNlNWQ2OTVlOWFlZjRhNjM3YmIzMWQ3ZjViYmM4ZGQyNDEwIn0=', '2020-02-13 04:06:43.036235'),
('vxsxtiqbv43g2wqottj56sr1o57pdv6c', 'OWQ3NDRiMzU4NzZhNjU4ZmNiM2YyYjlkZWQ3MjEwNzVhNzUyNGFmMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzQwYWNlNWQ2OTVlOWFlZjRhNjM3YmIzMWQ3ZjViYmM4ZGQyNDEwIn0=', '2020-02-09 16:10:52.633861'),
('xdeev1dsd9y0os34ywjtw19fh70f2t1u', 'OWQ3NDRiMzU4NzZhNjU4ZmNiM2YyYjlkZWQ3MjEwNzVhNzUyNGFmMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzQwYWNlNWQ2OTVlOWFlZjRhNjM3YmIzMWQ3ZjViYmM4ZGQyNDEwIn0=', '2020-02-16 05:57:47.684545');

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `features` longtext NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`id`, `name`, `brand`, `features`, `price`, `qty`) VALUES
(1, 'Smart TV', 'Samsung', '42\" LED', 60000, 9),
(2, 'Heater', 'Baltra', '1200 watt', 2000, 4),
(3, 'Iron', 'Baltra', '1000 watt', 1300, 5),
(4, 'Thermos', 'Abc', 'Hot water up to 2 days', 1200, 10),
(5, 'Refrigerator', 'Videocon', '3000 Watt , 5 star, 80 Litre', 45000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_review`
--

CREATE TABLE `reviews_review` (
  `id` int(11) NOT NULL,
  `comments` longtext NOT NULL,
  `ratings` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews_review`
--

INSERT INTO `reviews_review` (`id`, `comments`, `ratings`, `image`, `product_id`, `user_id`) VALUES
(1, 'nice one', 4, 'a.jpg', 2, 2),
(2, 'well found', 3, 'b.jpg', 3, 2),
(3, 'Nice picture quality', 5, 'c.jpg', 1, 2),
(4, 'nice display', 4, 'd.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `testmodule_testmodule`
--

CREATE TABLE `testmodule_testmodule` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testmodule_testmodule`
--

INSERT INTO `testmodule_testmodule` (`id`, `title`, `detail`, `file`) VALUES
(1, 'aaaa', 'jhgkjhg jgkhjg kjhkjh', 'FB_IMG_1552663048470.jpg'),
(2, 'asdf', 'sdfg', 'FB_IMG_1552663048470_kiRRs1a.jpg');

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
-- Indexes for table `cart_cart`
--
ALTER TABLE `cart_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_cart_product_id_b5f94649_fk_products_product_id` (`product_id`),
  ADD KEY `cart_cart_user_id_9b4220b9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `crud_comments`
--
ALTER TABLE `crud_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crud_comments_post_id_39310f6f_fk_crud_post_id` (`post_id`),
  ADD KEY `crud_comments_user_id_f2256223_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `crud_post`
--
ALTER TABLE `crud_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crud_post_user_id_68f46e95_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews_review`
--
ALTER TABLE `reviews_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_review_product_id_ce2fa4c6_fk_products_product_id` (`product_id`),
  ADD KEY `reviews_review_user_id_875caff2_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `testmodule_testmodule`
--
ALTER TABLE `testmodule_testmodule`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `cart_cart`
--
ALTER TABLE `cart_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crud_comments`
--
ALTER TABLE `crud_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_post`
--
ALTER TABLE `crud_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews_review`
--
ALTER TABLE `reviews_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testmodule_testmodule`
--
ALTER TABLE `testmodule_testmodule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `cart_cart`
--
ALTER TABLE `cart_cart`
  ADD CONSTRAINT `cart_cart_product_id_b5f94649_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  ADD CONSTRAINT `cart_cart_user_id_9b4220b9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `crud_comments`
--
ALTER TABLE `crud_comments`
  ADD CONSTRAINT `crud_comments_post_id_39310f6f_fk_crud_post_id` FOREIGN KEY (`post_id`) REFERENCES `crud_post` (`id`),
  ADD CONSTRAINT `crud_comments_user_id_f2256223_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `crud_post`
--
ALTER TABLE `crud_post`
  ADD CONSTRAINT `crud_post_user_id_68f46e95_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `reviews_review`
--
ALTER TABLE `reviews_review`
  ADD CONSTRAINT `reviews_review_product_id_ce2fa4c6_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  ADD CONSTRAINT `reviews_review_user_id_875caff2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
