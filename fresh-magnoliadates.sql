-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 05:59 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fresh-magnoliadates`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininvitations`
--

CREATE TABLE `admininvitations` (
  `id` int(11) NOT NULL,
  `code` varchar(300) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `posted` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `affiliates_requests`
--

CREATE TABLE `affiliates_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `amount` varchar(100) NOT NULL DEFAULT '0',
  `full_amount` varchar(100) NOT NULL DEFAULT '',
  `iban` text DEFAULT NULL,
  `country` varchar(100) NOT NULL DEFAULT '',
  `full_name` varchar(150) NOT NULL DEFAULT '',
  `swift_code` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `text` text DEFAULT NULL,
  `time` int(32) NOT NULL DEFAULT 0,
  `active` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_views`
--

CREATE TABLE `announcement_views` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `announcement_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` int(11) NOT NULL,
  `app_user_id` int(11) NOT NULL DEFAULT 0,
  `app_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `app_website_url` text CHARACTER SET utf8 DEFAULT NULL,
  `app_description` text CHARACTER SET utf8 DEFAULT NULL,
  `app_avatar` text CHARACTER SET utf8 DEFAULT NULL,
  `app_callback_url` text CHARACTER SET utf8 DEFAULT NULL,
  `app_id` text CHARACTER SET utf8 DEFAULT NULL,
  `app_secret` text CHARACTER SET utf8 DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `apps_permission`
--

CREATE TABLE `apps_permission` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `app_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `audiocalls`
--

CREATE TABLE `audiocalls` (
  `id` int(11) NOT NULL,
  `call_id` varchar(30) NOT NULL DEFAULT '0',
  `access_token` text DEFAULT NULL,
  `call_id_2` varchar(30) NOT NULL DEFAULT '',
  `access_token_2` text DEFAULT NULL,
  `from_id` int(11) NOT NULL DEFAULT 0,
  `to_id` int(11) NOT NULL DEFAULT 0,
  `room_name` varchar(50) NOT NULL DEFAULT '',
  `active` int(11) NOT NULL DEFAULT 0,
  `called` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  `declined` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bad_login`
--

CREATE TABLE `bad_login` (
  `id` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank_receipts`
--

CREATE TABLE `bank_receipts` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `description` tinytext DEFAULT NULL,
  `price` varchar(50) NOT NULL DEFAULT '0',
  `mode` varchar(50) NOT NULL DEFAULT '',
  `approved` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `receipt_file` varchar(250) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `approved_at` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banned_ip`
--

CREATE TABLE `banned_ip` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 0,
  `block_userid` int(11) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `posted` varchar(300) DEFAULT '0',
  `category` int(255) DEFAULT 0,
  `thumbnail` varchar(100) DEFAULT 'upload/photos/d-blog.jpg',
  `view` int(11) DEFAULT 0,
  `shared` int(11) DEFAULT 0,
  `tags` varchar(300) DEFAULT '',
  `created_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` int(11) NOT NULL,
  `code` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `app_id` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `text` text CHARACTER SET utf8 DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `receiver_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `from_delete` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `to_delete` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` int(11) UNSIGNED DEFAULT 0,
  `status` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` int(11) NOT NULL,
  `page_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_credits`
--

CREATE TABLE `daily_credits` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daily_credits`
--

INSERT INTO `daily_credits` (`id`, `user_id`, `created_at`) VALUES
(1, 1, 1654073648);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `email_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `src` varchar(50) CHARACTER SET utf8mb4 DEFAULT 'site'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `fav_user_id` int(11) UNSIGNED NOT NULL,
  `created_at` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL DEFAULT 0,
  `follower_id` int(11) NOT NULL DEFAULT 0,
  `active` int(255) NOT NULL DEFAULT 1,
  `created_at` int(11) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT '',
  `media_file` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hot`
--

CREATE TABLE `hot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 0,
  `hot_userid` int(11) UNSIGNED DEFAULT 0,
  `val` int(11) UNSIGNED DEFAULT 0,
  `created_at` int(11) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `invitation_links`
--

CREATE TABLE `invitation_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `invited_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(300) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `time` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `langs`
--

CREATE TABLE `langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref` varchar(250) NOT NULL DEFAULT '',
  `options` text DEFAULT NULL,
  `lang_key` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `english` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `russian` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `langs`
--

INSERT INTO `langs` (`id`, `ref`, `options`, `lang_key`, `english`, `russian`) VALUES
(1, '', NULL, 'male', 'Male', 'Мужской'),
(2, '', NULL, 'english', 'English', 'Английский'),
(4, '', NULL, 'sandy', 'Sandy', 'Сэнди'),
(5, '', NULL, 'about_a_minute_ago', 'about a minute ago', 'около минуты назад'),
(6, '', NULL, 'female', 'Female', 'женский'),
(7, '', NULL, '141_cm', '141 cm', '141 см'),
(8, '', NULL, '143_cm', '143 cm', '143 см'),
(9, '', NULL, 'white', 'White', 'Белый'),
(11, '', NULL, 'just_now', 'Just now', 'Прямо сейчас'),
(12, '', NULL, 'about', 'About', 'О'),
(13, '', NULL, 'view_profile', 'View Profile', 'Просмотреть профиль'),
(14, '', NULL, '_d_years_ago', '%d years ago', '%d лет назад'),
(15, '', NULL, 'find_matches', 'Find Matches', 'Найти совпадения'),
(16, '', NULL, 'premium', 'Premium', 'Премиум'),
(17, '', NULL, 'boost_me_', 'Boost me!', 'Поддержите меня!'),
(18, '', NULL, 'credits', 'Credits', 'Кредиты'),
(19, '', NULL, 'profile', 'Profile', 'Профиль'),
(20, '', NULL, 'matches', 'Matches', 'Спички'),
(21, '', NULL, 'visits', 'Visitors', 'Посетители'),
(22, '', NULL, 'likes', 'Likes', 'Нравится'),
(23, '', NULL, 'people_i_liked', 'People I Liked', 'Люди, которые мне понравились'),
(24, '', NULL, 'people_i_disliked', 'People I Disliked', 'Люди, которых я не любил'),
(25, '', NULL, 'settings', 'Settings', 'Настройки'),
(26, '', NULL, 'transactions', 'Transactions', 'Транзакции'),
(27, '', NULL, 'admin_panel', 'Admin Panel', 'Панель администратора'),
(28, '', NULL, 'log_out', 'Log Out', 'Выйти'),
(29, '', NULL, 'messenger', 'Messenger', 'Мессенджер'),
(30, '', NULL, 'active_status', 'Active Status', 'Активный статус'),
(31, '', NULL, 'offline', 'Offline', 'Не в сети'),
(32, '', NULL, 'online', 'Online', 'онлайн'),
(33, '', NULL, 'mark_all_as_read', 'Mark all as read', 'отметить все как прочитанное'),
(34, '', NULL, 'search_for_chats', 'Search for conversations', 'Поиск разговоров'),
(35, '', NULL, 'reset', 'Reset', 'Перезагрузить'),
(36, '', NULL, 'all', 'All', 'Все'),
(37, '', NULL, 'no_more_messages_to_show.', 'No more messages to show.', 'Больше нет сообщений для отображения.'),
(38, '', NULL, 'load_more...', 'Load more', 'Загрузи больше'),
(39, '', NULL, 'stickers', 'Stickers', 'Наклейки'),
(40, '', NULL, 'very_low', 'Very low', 'Очень низкий'),
(41, '', NULL, 'popularity', 'Popularity', 'Популярность'),
(42, '', NULL, 'increase', 'Increase', 'Увеличивать'),
(43, '', NULL, 'premium_users', 'Premium Users', 'Премиум-пользователи'),
(44, '', NULL, 'add_me', 'Add Me', 'Добавь меня'),
(45, '', NULL, 'who_ages', 'who ages', 'кто стареет'),
(46, '', NULL, 'located_within', 'located within', 'расположен внутри'),
(47, '', NULL, 'km_of', 'km of', 'км'),
(48, '', NULL, 'apply_filters', 'Apply Filters', 'Применить фильтры'),
(49, '', NULL, 'close_filters', 'Close Filters', 'Закрыть фильтры'),
(50, '', NULL, 'basic', 'Basic', 'Базовый'),
(51, '', NULL, 'looks', 'Looks', 'Выглядит'),
(52, '', NULL, 'background', 'Background', 'Фон'),
(53, '', NULL, 'lifestyle', 'Lifestyle', 'образ жизни'),
(54, '', NULL, 'more', 'More', 'Более'),
(55, '', NULL, 'gender', 'Gender', 'Пол'),
(56, '', NULL, 'location', 'Location', 'Расположение'),
(57, '', NULL, 'start_typing..', 'Start typing..', 'Начните печатать..'),
(58, '', NULL, 'ages', 'Ages', 'Возраст'),
(59, '', NULL, 'distance', 'Distance', 'Расстояние'),
(60, '', NULL, 'search', 'Search', 'Поиск'),
(61, '', NULL, 'height', 'Height', 'Высота'),
(62, '', NULL, 'body_type', 'Body type', 'Телосложение'),
(63, '', NULL, 'language', 'Language', 'Язык'),
(64, '', NULL, 'ethnicity', 'Ethnicity', 'Этническая принадлежность'),
(65, '', NULL, 'religion', 'Religion', 'Религия'),
(66, '', NULL, 'status', 'Status', 'Статус'),
(67, '', NULL, 'smokes', 'Smokes', 'Курит'),
(68, '', NULL, 'drinks', 'Drinks', 'Напитки'),
(69, '', NULL, 'by_interest', 'By Interest', 'По интересам'),
(70, '', NULL, 'e.g.__singing', 'e.g Singing', 'например пение'),
(71, '', NULL, 'education', 'Education', 'Образование'),
(72, '', NULL, 'pets', 'Pets', 'Домашние питомцы'),
(73, '', NULL, 'no_more_users_to_show.', 'No more users to show', 'Нет больше пользователей для отображения'),
(74, '', NULL, 'random_users', 'Random Users', 'Случайные пользователи'),
(75, '', NULL, 'copyright', 'Copyright', 'Авторские права'),
(76, '', NULL, 'all_rights_reserved', 'All rights reserved', 'Все права защищены'),
(77, '', NULL, 'about_us', 'About Us', 'О нас'),
(78, '', NULL, 'terms', 'Terms', 'Условия'),
(79, '', NULL, 'privacy_policy', 'Privacy Policy', 'Политика конфиденциальности'),
(80, '', NULL, 'contact', 'Contact', 'Контакт'),
(81, '', NULL, 'get_seen_more_by_people_around_you_in_find_match.', 'Get seen more by people around you in find match.', 'Пусть окружающие вас люди увидят больше в поиске совпадений.'),
(82, '', NULL, 'this_service_costs_you', 'This service costs you', 'Эта услуга стоит вам'),
(83, '', NULL, 'credits_and_will_last_for', 'credits and will last for', 'кредиты и продлится'),
(84, '', NULL, 'miuntes', 'miuntes', 'минуты'),
(85, '', NULL, 'cancel', 'Cancel', 'Отмена'),
(86, '', NULL, 'boost_now', 'Boost Now', 'Повысить сейчас'),
(87, '', NULL, 'ago', 'ago', 'назад'),
(88, '', NULL, 'from_now', 'from now', 'отныне'),
(89, '', NULL, 'any_moment_now', 'any moment now', 'в любой момент сейчас'),
(90, '', NULL, '_d_minutes_ago', '%d minutes ago', '%d минут назад'),
(91, '', NULL, 'about_an_hour_ago', 'about an hour ago', 'около часа назад'),
(92, '', NULL, '_d_hours_ago', '%d hours ago', '%d часов назад'),
(93, '', NULL, 'a_day_ago', 'a day ago', 'день назад'),
(94, '', NULL, '_d_days_ago', '%d days ago', '%д дней назад'),
(95, '', NULL, 'about_a_month_ago', 'about a month ago', 'Около месяца назад'),
(96, '', NULL, '_d_months_ago', '%d months ago', '%d месяцев назад'),
(97, '', NULL, 'about_a_year_ago', 'about a year ago', 'около года назад'),
(98, '', NULL, 'loading...', 'Loading..', 'Загрузка..'),
(99, '', NULL, 'payment_declined', 'Payment declined', 'Платеж отклонен'),
(100, '', NULL, 'amazing', 'Amazing', 'Удивительно'),
(101, '', NULL, 'features_you_can___t_live_without', 'features you can’t live without', 'функции, без которых вы не можете жить'),
(102, '', NULL, 'activating_premium_will_help_you_meet_more_people__faster.', 'Activating Premium will help you meet more people, faster.', 'Активация Premium поможет вам познакомиться с большим количеством людей быстрее.'),
(103, '', NULL, 'choose_a_plan', 'Choose a Plan', 'Выберите план'),
(104, '', NULL, 'weekly', 'Weekly', 'Еженедельно'),
(105, '', NULL, 'monthly', 'Monthly', 'Ежемесячно'),
(106, '', NULL, 'most_popular', 'Most popular', 'Самый популярный'),
(107, '', NULL, 'yearly', 'Yearly', 'Ежегодно'),
(108, '', NULL, 'lifetime', 'Lifetime', 'Продолжительность жизни'),
(109, '', NULL, 'pay_using', 'Pay Using', 'Оплатить с помощью'),
(110, '', NULL, 'paypal', 'PayPal', 'PayPal'),
(111, '', NULL, 'card', 'Card', 'Открытка'),
(112, '', NULL, 'why_choose_premium_membership', 'Why Choose Premium Membership', 'Почему стоит выбрать премиум-членство'),
(113, '', NULL, 'see_more_stickers_on_chat', 'Get more stickers in chat', 'Получить больше стикеров в чате'),
(114, '', NULL, 'show_in_premium_bar', 'Show yourself in premium bar', 'Покажи себя в премиум-баре'),
(115, '', NULL, 'see_likes_notifications', 'View likes notifications', 'Просмотр уведомлений о лайках'),
(116, '', NULL, 'get_discount_when_buy_boost_me', 'Get a discount when using \"boost me\"', 'Получите скидку при использовании \"поддержи меня\"'),
(117, '', NULL, 'display_first_in_find_matches', 'Display first in find matches', 'Отображать первым в поиске совпадений'),
(118, '', NULL, 'display_on_top_in_random_users', 'Display on top in random users', 'Отображать сверху у случайных пользователей'),
(119, '', NULL, 'your_popularity_', 'Your Popularity:', 'Ваша популярность:'),
(120, '', NULL, 'increase_your_popularity_with_credits_and_enjoy_the_features.', 'Increase your popularity with credits and enjoy the features.', 'Повышайте свою популярность с помощью кредитов и наслаждайтесь функциями.'),
(122, '', NULL, 'x10_visits', 'x10 Visits', 'x10 посещений'),
(123, '', NULL, 'promote_your_profile_by_get_more_visits', 'Promote your profile by getting more visitors', 'Продвигайте свой профиль, привлекая больше посетителей'),
(124, '', NULL, 'this_service_will_cost_you', 'this service will cost you', 'эта услуга будет стоить вам'),
(125, '', NULL, 'for', 'For', 'За'),
(126, '', NULL, 'minutes', 'Minutes', 'Минуты'),
(127, '', NULL, 'buy_now', 'Buy Now', 'купить сейчас'),
(128, '', NULL, 'x3_matches', 'x3 Matches', 'x3 совпадения'),
(129, '', NULL, 'shown_more_and_rise_up_at_the_same_time', 'Shown more and rise up at the same time', 'Показал больше и поднялся в то же время'),
(130, '', NULL, 'x4_likes', 'x4 Likes', 'x4 лайки'),
(131, '', NULL, 'tell_everyone_you_re_online_and_be_seen_by_users_who_want_to_chat', 'Tell everyone you&#039;re online and be seen by users who want to chat', 'Сообщите всем, что вы в сети, и вас увидят пользователи, которые хотят общаться в чате.'),
(132, '', NULL, 'visited_you', 'visited you', 'посетил вас'),
(133, '', NULL, 'your', 'Your', 'Ваш'),
(134, '', NULL, 'credits_balance', 'Credits balance', 'Баланс кредитов'),
(135, '', NULL, 'use_your_credits_to', 'Use your Credits to', 'Используйте свои кредиты, чтобы'),
(136, '', NULL, 'boost_your_profile', 'Boost your profile', 'Повысьте свой профиль'),
(137, '', NULL, 'send_a_gift', 'Send a gift', 'Послать подарок'),
(138, '', NULL, 'get_seen_100x_in_discover', 'Get seen 100x in Discover', 'Получите 100-кратное увеличение в Discover'),
(139, '', NULL, 'put_yourself_first_in_search', 'Put yourself First in Search', 'Поставьте себя на первое место в поиске'),
(140, '', NULL, 'get_additional_stickers', 'Get additional Stickers', 'Получить дополнительные стикеры'),
(141, '', NULL, 'double_your_chances_for_a_friendship', 'Double your chances for a friendship', 'Удвойте свои шансы на дружбу'),
(142, '', NULL, 'buy_credits', 'Buy Credits', 'Купить кредиты'),
(143, '', NULL, 'bag_of_credits', 'Bag of Credits', 'Сумка кредитов'),
(144, '', NULL, 'box_of_credits', 'Box of Credits', 'Коробка кредитов'),
(145, '', NULL, 'chest_of_credits', 'Chest of Credits', 'Сундук с кредитами'),
(146, '', NULL, 'year', 'year', 'год'),
(147, '', NULL, 'month', 'month', 'месяц'),
(148, '', NULL, 'day', 'day', 'день'),
(149, '', NULL, 'hour', 'hour', 'час'),
(150, '', NULL, 'minute', 'minute', 'минута'),
(151, '', NULL, 'second', 'second', 'второй'),
(152, '', NULL, 'years', 'years', 'годы'),
(153, '', NULL, 'months', 'months', 'месяцы'),
(154, '', NULL, 'days', 'days', 'дни'),
(155, '', NULL, 'hours', 'hours', 'часы'),
(156, '', NULL, 'seconds', 'seconds', 'секунды'),
(157, '', NULL, 'please_enable_location_services_on_your_browser.', 'Please enable location services on your browser.', 'Пожалуйста, включите службы определения местоположения в вашем браузере.'),
(158, '', NULL, 'change_photo', 'Change Avatar', 'Сменить аватар'),
(159, '', NULL, 'upgrade', 'Upgrade', 'Обновление'),
(160, '', NULL, 'profile_completion', 'Profile Completion', 'Заполнение профиля'),
(161, '', NULL, 'this_profile_is_verified', 'This profile is verified', 'Этот профиль проверен'),
(162, '', NULL, 'edit', 'Edit', 'Редактировать'),
(163, '', NULL, 'views', 'Views', 'Просмотры'),
(164, '', NULL, 'add_photos', 'Add Photos', 'Добавить фотографии'),
(165, '', NULL, 'interests', 'Interests', 'Интересы'),
(166, '', NULL, 'profile_info', 'Profile Info', 'Информация о профиле'),
(167, '', NULL, 'preferred_language', 'Preferred Language', 'предпочтительный язык'),
(168, '', NULL, 'hair_color', 'Hair color', 'Цвет волос'),
(169, '', NULL, 'upload_completion', 'Upload Completion', 'Завершение загрузки'),
(170, '', NULL, 'general', 'General', 'Общий'),
(171, '', NULL, 'privacy', 'Privacy', 'Конфиденциальность'),
(172, '', NULL, 'password', 'Password', 'Пароль'),
(173, '', NULL, 'social_links', 'Social Links', 'Социальные ссылки'),
(174, '', NULL, 'blocked_users', 'Blocked Users', 'Заблокированные пользователи'),
(175, '', NULL, 'first_name', 'First Name', 'Имя'),
(176, '', NULL, 'last_name', 'Last Name', 'Фамилия'),
(177, '', NULL, 'username', 'Username', 'Имя пользователя'),
(178, '', NULL, 'email', 'Email', 'Эл. адрес'),
(179, '', NULL, 'choose_your_country', 'Choose your country', 'Выберите вашу страну'),
(180, '', NULL, 'country', 'Country', 'Страна'),
(181, '', NULL, 'mobile_number', 'Phone Number', 'Номер телефона'),
(182, '', NULL, 'birth_date', 'Birthday', 'День рождения'),
(183, '', NULL, 'free_member', 'Free Member', 'Бесплатный член'),
(184, '', NULL, 'pro_member', 'Pro Member', 'Профессиональный член'),
(185, '', NULL, 'save', 'Save', 'Сохранять'),
(186, '', NULL, 'about_me', 'About Me', 'Обо мне'),
(187, '', NULL, 'relationship_status', 'Relationship status', 'Семейное положение'),
(188, '', NULL, 'work_status', 'Work status', 'Рабочий статус'),
(189, '', NULL, 'education_level', 'Education Level', 'Уровень образования'),
(190, '', NULL, 'character', 'Character', 'Персонаж'),
(191, '', NULL, 'children', 'Children', 'Дети'),
(192, '', NULL, 'friends', 'Friends', 'Друзья'),
(193, '', NULL, 'i_live_with', 'I live with', 'Я живу с'),
(194, '', NULL, 'car', 'Car', 'Автомобиль'),
(195, '', NULL, 'smoke', 'Smoke', 'Дым'),
(196, '', NULL, 'drink', 'Drink', 'Напиток'),
(197, '', NULL, 'travel', 'Travel', 'Путешествовать'),
(198, '', NULL, 'music_genre', 'Music Genre', 'Музыкальный жанр'),
(199, '', NULL, 'dish', 'Dish', 'Блюдо'),
(200, '', NULL, 'song', 'Song', 'Песня'),
(201, '', NULL, 'hobby', 'Hobby', 'Хобби'),
(202, '', NULL, 'city', 'City', 'Город'),
(203, '', NULL, 'sport', 'Sport', 'Спорт'),
(204, '', NULL, 'book', 'Book', 'Книга'),
(205, '', NULL, 'movie', 'Movie', 'Кино'),
(206, '', NULL, 'color', 'Color', 'Цвет'),
(207, '', NULL, 'tv_show', 'TV Show', 'ТВ шоу'),
(208, '', NULL, 'show_my_profile_on_google', 'Show my profile on search engines?', 'Показывать мой профиль в поисковых системах?'),
(209, '', NULL, 'show_my_profile_in_random_users', 'Show my profile in random users?', 'Показывать мой профиль случайным пользователям?'),
(210, '', NULL, 'show_my_profile_in_match_profiles', 'Show my profile in find match page?', 'Показывать мой профиль на странице поиска совпадений?'),
(211, '', NULL, 'new_password', 'New Password', 'Новый пароль'),
(212, '', NULL, 'confirm_new_password', 'Confirm New Password', 'Подтвердите новый пароль'),
(213, '', NULL, 'change', 'Change', 'Изменять'),
(214, '', NULL, 'facebook', 'Facebook', 'Фейсбук'),
(215, '', NULL, 'twitter', 'Twitter', 'Твиттер'),
(216, '', NULL, 'google_plus', 'Google Plus', 'Гугл плюс'),
(217, '', NULL, 'instagrem', 'instagrem', 'инстаграм'),
(218, '', NULL, 'linkedin', 'LinkedIn', 'LinkedIn'),
(219, '', NULL, 'website', 'Website', 'Веб-сайт'),
(220, '', NULL, 'there_is_no_blocked_user_yet.', 'There are no blocked users found.', 'Заблокированных пользователей не обнаружено.'),
(221, '', NULL, 'no_transactions_found.', 'No transactions found.', 'Транзакции не найдены.'),
(222, '', NULL, 'login', 'Login', 'Авторизоваться'),
(223, '', NULL, 'register', 'Register', 'регистр'),
(224, '', NULL, 'meet_new_and_interesting_people.', 'Meet new and interesting people.', 'Знакомьтесь с новыми и интересными людьми.'),
(225, '', NULL, 'join', 'Join', 'Присоединиться'),
(226, '', NULL, 'where_you_could_meet_anyone__anywhere_', 'where you could meet anyone, anywhere!', 'где можно встретить кого угодно и где угодно!'),
(227, '', NULL, 'get_started', 'Get Started', 'Начать'),
(228, '', NULL, 'know_more', 'Know More', 'Узнать больше'),
(229, '', NULL, 'i_am_a', 'I am a', 'я'),
(230, '', NULL, 'i_m_looking_for_a', 'I&#039;m looking for a', 'я ищу'),
(231, '', NULL, 'between_ages', 'Between ages', 'Между возрастами'),
(232, '', NULL, 'and', 'and', 'а также'),
(233, '', NULL, 'let_s_begin', 'Let&#039;s Begin', 'давай&амп;#039;с начать'),
(234, '', NULL, 'how', 'How', 'Как'),
(235, '', NULL, 'works', 'Works', 'Работает'),
(236, '', NULL, 'create_account', 'Create Account', 'Зарегистрироваться'),
(237, '', NULL, 'register_for_free___create_up_your_good_looking_profile.', 'Register for free &amp; create up your good looking Profile.', 'Зарегистрируйтесь бесплатно & создайте свой красивый профиль.'),
(238, '', NULL, 'search___connect_with_matches_which_are_perfect_for_you.', 'Search &amp; Connect with Matches which are perfect for you.', 'Поиск & Свяжитесь с Matches, которые идеально подходят для вас.'),
(239, '', NULL, 'start_dating', 'Start Dating', 'Начать знакомства'),
(240, '', NULL, 'start_doing_conversations_and_date_your_best_match.', 'Start doing conversations and date your best match.', 'Начните разговаривать и назначьте свидание своему лучшему парню.'),
(241, '', NULL, 'users_loves_us', 'Users Loves Us', 'Пользователи любят нас'),
(243, '', NULL, 'best_match', 'Best Match', 'Лучший матч'),
(244, '', NULL, 'based_on_your_location__we_find_best_and_suitable_matches_for_you.', 'Based on your location, we find best and suitable matches for you.', 'В зависимости от вашего местоположения мы находим для вас лучшие и подходящие варианты.'),
(245, '', NULL, 'fully_secure', 'Fully Secure', 'Полностью безопасный'),
(247, '', NULL, '100__privacy', '100% Privacy', '100% конфиденциальность'),
(248, '', NULL, 'you_have_full_control_over_your_personal_information_that_you_share.', 'You have full control over your personal information that you share.', 'У вас есть полный контроль над вашей личной информацией, которой вы делитесь.'),
(250, '', NULL, 'don_t_have_an_account_', 'Don&#039;t have an account?', 'У вас нет аккаунта?'),
(251, '', NULL, 'welcome_back_', 'Welcome back,', 'Добро пожаловать обратно,'),
(252, '', NULL, 'please_login_to_your_account.', 'Login to your account to continue. ', 'Войдите в свою учетную запись, чтобы продолжить.'),
(253, '', NULL, 'username_or_email', 'Username or Email', 'Имя пользователя или адрес электронной почты'),
(254, '', NULL, 'forgot_password_', 'Forgot Password?', 'Забыл пароль?'),
(255, '', NULL, 'login_with_facebook', 'Login with Facebook', 'Войти с Facebook'),
(256, '', NULL, 'login_with_twitter', 'Login with Twitter', 'Войти через Твиттер'),
(257, '', NULL, 'login_with_google', 'Login with Google', 'Войти через Google'),
(258, '', NULL, 'login_with_vk', 'Login with VK', 'Войти через ВК'),
(259, '', NULL, 'already_have_an_account_', 'Already have an account?', 'У вас уже есть аккаунт?'),
(260, '', NULL, 'password_recovery_', 'Password recovery,', 'Восстановление пароля,'),
(261, '', NULL, 'please_enter_your_registered_email_to_proceed.', 'Please enter your registered email address to proceed. ', 'Пожалуйста, введите свой зарегистрированный адрес электронной почты, чтобы продолжить.'),
(262, '', NULL, 'proceed', 'Proceed', 'Продолжить'),
(263, '', NULL, 'contact_us', 'Contact Us', 'Свяжитесь с нами'),
(264, '', NULL, 'how_can_we_help_', 'How can we help?', 'Как мы можем помочь?'),
(265, '', NULL, 'send', 'Send', 'Отправлять'),
(266, '', NULL, 'terms_of_use', 'Terms of use', 'Условия эксплуатации'),
(267, '', NULL, 'get_started_', 'Get started,', 'Начать,'),
(268, '', NULL, 'please_signup_to_continue_your_account.', 'Sign up to get started finding your partner!', 'Зарегистрируйтесь, чтобы начать поиск партнера!'),
(269, '', NULL, 'confirm_password', 'Confirm Password', 'Подтвердить Пароль'),
(270, '', NULL, 'people_who_are_interested_in__', 'People who are interested in:', 'Люди, которым интересно:'),
(271, '', NULL, 'no_interested_people_found.', 'No interested people found.', 'Заинтересованных людей не найдено.'),
(272, '', NULL, 'like', 'Like', 'Нравиться'),
(273, '', NULL, 'dislike', 'Dislike', 'Не нравится'),
(274, '', NULL, 'disliked', 'Disliked', 'Не понравилось'),
(275, '', NULL, 'you_disliked', 'you disliked', 'ты не любил'),
(276, '', NULL, 'delete_account', 'Delete Account', 'Удалить аккаунт'),
(277, '', NULL, 'liked', 'Liked', 'Понравилось'),
(278, '', NULL, 'you_liked', 'you liked', 'тебе понравилось'),
(279, '', NULL, 'message', 'Message', 'Сообщение'),
(280, '', NULL, 'report_user.', 'Report user.', 'Пожаловаться на пользователя.'),
(281, '', NULL, 'type_here_why_you_want_to_report_this_user.', 'Please let us know why you want to report this person.', 'Сообщите нам, почему вы хотите сообщить об этом человеке.'),
(282, '', NULL, 'report', 'Report', 'Отчет'),
(283, '', NULL, 'send_gift_costs_', 'Send gift costs', 'Отправить стоимость подарка'),
(284, '', NULL, 'chat', 'Chat', 'Чат'),
(285, '', NULL, 'you_have_reached_your_daily_limit', 'You have reached your daily limit', 'Вы достигли дневного лимита'),
(286, '', NULL, 'you_can_chat_to_new_people_after', 'you can chat to new people after', 'вы можете общаться с новыми людьми после'),
(287, '', NULL, 'can_t_wait__this_service_costs_you', 'can&#039;t wait? this service costs you', 'не могу дождаться? эта услуга стоит вам'),
(288, '', NULL, 'likes_you', 'likes you', 'вы нравитесь'),
(289, '', NULL, 'this_profile_is_not_verified', 'This profile is not verified yet', 'Этот профиль еще не проверен'),
(290, '', NULL, 'block_user', 'Block', 'Блокировать'),
(291, '', NULL, 'report_user', 'Report', 'Отчет'),
(292, '', NULL, 'buy_now.', 'Buy Now.', 'Купить сейчас.'),
(293, '', NULL, 'low', 'Low', 'Низкий'),
(294, '', NULL, 'matched_you', 'matched you', 'подошел вам'),
(295, '', NULL, 'user__1', 'User #1', 'Пользователь №1'),
(297, '', NULL, 'user__2', 'User #2', 'Пользователь №2'),
(298, '', NULL, 'user__3', 'User #3', 'Пользователь №3'),
(299, '', NULL, 'user__4', 'User #4', 'Пользователь №4'),
(308, '', NULL, 'unread_messages', 'Unread Messages', 'Непрочитанные сообщения'),
(309, '', NULL, 'there_is_no_new_notifications.', 'There are no new notifications', 'Нет новых уведомлений'),
(310, '', NULL, '183_cm__6__039__0__', '183 cm (6 \'0\')', '183 см (6\'0\')'),
(311, '', NULL, '184_cm', '184 cm', '184 см'),
(312, '', NULL, '180_cm__5__039__11__', '180 cm (5 \'11\')', '180 см (5\'11\')'),
(313, '', NULL, 'wanna_get_more__get_premium__or_get_new_stickers_for', 'Wanna get more? get premium! OR get new stickers for', 'Хотите получить больше? получи премиум! ИЛИ получить новые стикеры для'),
(314, '', NULL, 'get_premium', 'Get premium', 'Получить премиум'),
(315, '', NULL, 'buy_now_', 'Buy Now!', 'Купить сейчас!'),
(316, '', NULL, 'liked_you', 'liked you', 'понравился'),
(317, '', NULL, 'arabic', 'Arabic', 'арабский'),
(318, '', NULL, 'dutch', 'Dutch', 'Голландский'),
(319, '', NULL, 'french', 'French', 'Французский'),
(320, '', NULL, 'german', 'German', 'Немецкий'),
(321, '', NULL, 'italian', 'Italian', 'итальянский'),
(322, '', NULL, 'portuguese', 'Portuguese', 'португальский'),
(323, '', NULL, 'russian', 'Russian', 'Русский'),
(324, '', NULL, 'spanish', 'Spanish', 'испанский'),
(325, '', NULL, 'turkish', 'Turkish', 'турецкий'),
(405, '', NULL, 'brown', 'Brown', 'Коричневый'),
(406, '', NULL, 'black', 'Black', 'Черный'),
(407, '', NULL, 'gray_or_partially_gray', 'Gray or Partially Gray', 'Серый или частично серый'),
(408, '', NULL, 'red_auburn', 'Red/Auburn', 'Красный/Оберн'),
(409, '', NULL, 'blond_strawberry', 'Blond/Strawberry', 'Блондинка/Клубничный'),
(410, '', NULL, 'blue', 'Blue', 'Синий'),
(411, '', NULL, 'green', 'Green', 'Зеленый'),
(412, '', NULL, 'orange', 'Orange', 'Апельсин'),
(413, '', NULL, 'pink', 'Pink', 'Розовый'),
(414, '', NULL, 'purple', 'Purple', 'Пурпурный'),
(415, '', NULL, 'partly_or_completely_bald', 'Partly or Completely Bald', 'Частично или полностью лысый'),
(416, '', NULL, 'other', 'Other', 'Другой'),
(417, '', NULL, 'single', 'Single', 'Одинокий'),
(418, '', NULL, 'married', 'Married', 'Женатый'),
(419, '', NULL, 'i_m_studying', 'I&#039;m studying', 'я учусь'),
(420, '', NULL, 'i_m_working', 'I&#039;m working', 'я работаю'),
(421, '', NULL, 'i_m_looking_for_work', 'I&#039;m looking for work', 'я ищу работу'),
(422, '', NULL, 'i_m_retired', 'I&#039;m retired', 'я на пенсии'),
(423, '', NULL, 'self-employed', 'Self-Employed', 'Частный предприниматель'),
(424, '', NULL, 'secondary_school', 'Secondary school', 'Средняя школа'),
(425, '', NULL, 'iti', 'ITI', 'МИТ'),
(426, '', NULL, 'college', 'College', 'Колледж'),
(427, '', NULL, 'university', 'University', 'Университет'),
(428, '', NULL, 'advanced_degree', 'Advanced degree', 'Ученая степень'),
(429, '', NULL, 'middle_eastern', 'Middle Eastern', 'Ближневосточный'),
(430, '', NULL, 'north_african', 'North African', 'Североафриканский'),
(431, '', NULL, 'latin_american', 'Latin American', 'Латиноамериканская'),
(432, '', NULL, 'mixed', 'Mixed', 'Смешанный'),
(433, '', NULL, 'asian', 'Asian', 'Азии'),
(434, '', NULL, 'slim', 'Slim', 'Стройное'),
(435, '', NULL, 'sporty', 'Sporty', 'спортивный'),
(436, '', NULL, 'curvy', 'Curvy', 'Пышные'),
(437, '', NULL, 'round', 'Round', 'Круглый'),
(438, '', NULL, 'supermodel', 'Supermodel', 'Супермодель'),
(439, '', NULL, 'average', 'Average', 'Средний'),
(440, '', NULL, 'accommodating', 'Accommodating', 'Размещение'),
(441, '', NULL, 'adventurous', 'Adventurous', 'Авантюрный'),
(442, '', NULL, 'calm', 'Calm', 'Спокойствие'),
(443, '', NULL, 'careless', 'Careless', 'Беспечный'),
(444, '', NULL, 'cheerful', 'Cheerful', 'Веселый'),
(445, '', NULL, 'demanding', 'Demanding', 'Требовательный'),
(446, '', NULL, 'extroverted', 'Extroverted', 'экстраверт'),
(447, '', NULL, 'honest', 'Honest', 'Честный'),
(448, '', NULL, 'generous', 'Generous', 'Щедрый'),
(449, '', NULL, 'humorous', 'Humorous', 'Юмористический'),
(450, '', NULL, 'introverted', 'Introverted', 'интроверт'),
(451, '', NULL, 'liberal', 'Liberal', 'либерал'),
(452, '', NULL, 'lively', 'Lively', 'Оживленный'),
(453, '', NULL, 'loner', 'Loner', 'Одиночка'),
(454, '', NULL, 'nervous', 'Nervous', 'Нервный'),
(455, '', NULL, 'possessive', 'Possessive', 'Притяжательный падеж'),
(456, '', NULL, 'quiet', 'Quiet', 'Тихо'),
(457, '', NULL, 'reserved', 'Reserved', 'Сдержанный'),
(458, '', NULL, 'sensitive', 'Sensitive', 'Чувствительный'),
(459, '', NULL, 'shy', 'Shy', 'Застенчивый'),
(460, '', NULL, 'social', 'Social', 'Социальное'),
(461, '', NULL, 'spontaneous', 'Spontaneous', 'Спонтанный'),
(462, '', NULL, 'stubborn', 'Stubborn', 'Упрямый'),
(463, '', NULL, 'suspicious', 'Suspicious', 'Подозрительный'),
(464, '', NULL, 'thoughtful', 'Thoughtful', 'Вдумчивый'),
(465, '', NULL, 'proud', 'Proud', 'Гордый'),
(466, '', NULL, 'considerate', 'Considerate', 'Внимательный'),
(467, '', NULL, 'friendly', 'Friendly', 'Дружелюбный'),
(468, '', NULL, 'polite', 'Polite', 'Вежливый'),
(469, '', NULL, 'reliable', 'Reliable', 'Надежный'),
(470, '', NULL, 'careful', 'Careful', 'Осторожный'),
(471, '', NULL, 'helpful', 'Helpful', 'Полезный'),
(472, '', NULL, 'patient', 'Patient', 'Пациент'),
(473, '', NULL, 'optimistic', 'Optimistic', 'Оптимистичный'),
(474, '', NULL, 'no__never', 'No, never', 'Нет никогда'),
(475, '', NULL, 'someday__maybe', 'Someday, maybe', 'Возможно когда-нибудь'),
(476, '', NULL, 'expecting', 'Expecting', 'Ожидая'),
(477, '', NULL, 'i_already_have_kids', 'I already have kids', 'у меня уже есть дети'),
(478, '', NULL, 'i_have_kids_and_don_t_want_more', 'I have kids and don&#039;t want more', 'У меня есть дети, и я не хочу больше'),
(479, '', NULL, 'no_friends', 'No friends', 'Нет друзей'),
(480, '', NULL, 'some_friends', 'Some friends', 'Некоторые друзья'),
(481, '', NULL, 'many_friends', 'Many friends', 'Много друзей'),
(482, '', NULL, 'only_good_friends', 'Only good friends', 'Только хорошие друзья'),
(483, '', NULL, 'none', 'None', 'Никто'),
(484, '', NULL, 'have_pets', 'Have pets', 'Иметь домашних животных'),
(485, '', NULL, 'alone', 'Alone', 'Один'),
(486, '', NULL, 'parents', 'Parents', 'Родители'),
(487, '', NULL, 'partner', 'Partner', 'Партнер'),
(488, '', NULL, 'my_own_car', 'My own car', 'Моя собственная машина'),
(489, '', NULL, 'muslim', 'Muslim', 'мусульманин'),
(490, '', NULL, 'atheist', 'Atheist', 'атеист'),
(491, '', NULL, 'buddhist', 'Buddhist', 'буддист'),
(492, '', NULL, 'catholic', 'Catholic', 'католик'),
(493, '', NULL, 'christian', 'Christian', 'христианин'),
(494, '', NULL, 'hindu', 'Hindu', 'индус'),
(495, '', NULL, 'jewish', 'Jewish', 'еврей'),
(496, '', NULL, 'agnostic', 'Agnostic', 'агностик'),
(497, '', NULL, 'sikh', 'Sikh', 'сикх'),
(498, '', NULL, 'never', 'Never', 'Никогда'),
(499, '', NULL, 'i_smoke_sometimes', 'I smoke sometimes', 'я иногда курю'),
(500, '', NULL, 'chain_smoker', 'Chain Smoker', 'Заядлый курильщик'),
(501, '', NULL, 'i_drink_sometimes', 'I drink sometimes', 'я пью иногда'),
(502, '', NULL, 'yes__all_the_time', 'Yes, all the time', 'Да все время'),
(503, '', NULL, 'yes__sometimes', 'Yes, sometimes', 'Да, иногда'),
(504, '', NULL, 'not_very_much', 'Not very much', 'Не очень много'),
(505, '', NULL, 'no', 'No', 'Норвегия'),
(507, '', NULL, 'avatar', 'Avatar', 'Аватар'),
(508, '', NULL, 'info', 'Info', 'Информация'),
(509, '', NULL, 'finish', 'Finish', 'Заканчивать'),
(510, '', NULL, 'people_want_to_see_what_you_look_like_', 'people want to see what you look like!', 'люди хотят видеть, как ты выглядишь!'),
(511, '', NULL, 'upload_images_to_set_your_profile_picture_image.', 'Upload photos to set your profile picture.', 'Загрузите фотографии, чтобы установить изображение профиля.'),
(512, '', NULL, 'next', 'Next', 'Следующий'),
(513, '', NULL, 'birthdate', 'Birthday', 'День рождения'),
(514, '', NULL, 'congratulations_', 'Congratulations!', 'Поздравляем!'),
(515, '', NULL, 'you_have_successfully_registered.', 'You have successfully created your account, please wait..', 'Вы успешно создали свою учетную запись, пожалуйста, подождите..'),
(516, '', NULL, 'images_uploaded', 'Photos successfully uploaded.', 'Фотографии успешно загружены.'),
(517, '', NULL, 'now__select_any_one_image_that_you_want_to_set_as_your_profile_picture.', 'Now, choose which image you would like to be your avatar.', 'Теперь выберите изображение, которое вы хотите использовать в качестве аватара.'),
(518, '', NULL, 'apply', 'Apply', 'Подать заявление'),
(519, '', NULL, 'please_verify_your_phone_number', 'Please verify your phone number.', 'Пожалуйста, подтвердите свой номер телефона.'),
(520, '', NULL, 'verify_now', 'verify now', 'Проверить сейчас'),
(522, '', NULL, 'user', 'User', 'Пользователь'),
(523, '', NULL, 'admin', 'Admin', 'Администратор'),
(524, '', NULL, 'unreport', 'Delete report', 'Удалить отчет'),
(525, '', NULL, 'user_has_been_reported_successfully.', 'Your report has been record, thank you.', 'Ваш отчет записан, спасибо.'),
(526, '', NULL, 'remove_report', 'Remove report', 'Удалить отчет'),
(527, '', NULL, 'sent_image_to_you.', 'sent an image to you.', 'отправил вам изображение.'),
(528, '', NULL, 'very_high', 'Very high', 'Очень высоко'),
(529, '', NULL, 'high', 'High', 'Высокая'),
(530, '', NULL, '180_cm__5__039__11_quot__', '180 cm (5&#039; 11&amp;quot;)', '180 см (5#039; 11quot;)'),
(531, '', NULL, 'get_premium_to_view_who_liked_you_', 'Get premium to view who liked you!', 'Получите премиум, чтобы посмотреть, кому вы понравились!'),
(532, '', NULL, '__sitename___brings_out_the_sense_of_adventure_in_me__the_website_is_so_easy_to_use_and_the_possibility_of_meeting_someone_from_another_culture_that_r', '{{sitename}} brings out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.', '{{sitename}} пробуждает во мне чувство приключений! Веб-сайт настолько прост в использовании, и возможность встретить кого-то из другой культуры, которая имеет отношение ко мне, просто захватывающая.'),
(533, '', NULL, 'why___sitename___is_best', 'Why {{sitename}} is Best', 'Почему {{sitename}} лучше'),
(534, '', NULL, 'your_account_is_safe_on___sitename__._we_never_share_your_data_with_third_party.', 'Your account is Safe on {{sitename}}. We never share your data with third party.', 'Ваш аккаунт в безопасности на {{sitename}}. Мы никогда не передаем ваши данные третьим лицам.'),
(535, '', NULL, 'connect_with_your_perfect_soulmate_here__on___sitename__.', 'Connect with your perfect Soulmate here, on {{sitename}}.', 'Свяжитесь со своей идеальной родственной душой здесь, на {{sitename}}.'),
(539, '', NULL, '142_cm__4__039__8_quot__', '142 cm (4&#039; 8&amp;quot;)', '142 см (4#039; 8quot;)'),
(588, '', NULL, 'users', 'users', 'пользователи'),
(590, '', NULL, 'login_with_wowonder', 'Login with Wowonder', 'Войти с помощью Wowonder'),
(592, '', NULL, 'meet_more_people_with___sitename___credits', 'Meet more People with {{sitename}} Credits', 'Познакомьтесь с другими людьми с кредитами {{sitename}}'),
(595, '', NULL, 'meet_more_people_with___sitename___credits.', 'Meet more People with {{sitename}} Credits.', 'Познакомьтесь с другими людьми с кредитами {{sitename}}.'),
(598, '', NULL, 'hack_attempt.', 'Hack attempt.', 'Попытка взлома.'),
(599, '', NULL, 'forbidden', 'Forbidden', 'Запрещенный'),
(600, '', NULL, 'no_from_id_found.', 'No from id found.', 'Нет от id не найдено.'),
(601, '', NULL, 'please_recharge_your_credits.', 'please recharge your credits.', 'пожалуйста, перезарядите свои кредиты.'),
(602, '', NULL, 'message_sent', 'Message sent', 'Сообщение отправлено'),
(603, '', NULL, 'bad_request', 'Bad Request', 'Неверный запрос'),
(604, '', NULL, 'no_user_id_found.', 'No user ID found.', 'Идентификатор пользователя не найден.'),
(605, '', NULL, 'no_credit_available.', 'No credit available.', 'Кредит недоступен.'),
(606, '', NULL, 'user_buy_stickers_successfully.', 'User buy stickers successfully.', 'Пользователь успешно покупает стикеры.'),
(607, '', NULL, 'error_while_save_like.', 'Error while save like.', 'Ошибка при сохранении лайка.'),
(608, '', NULL, 'no_chat_user_id_found.', 'No chat user ID found.', 'Идентификатор пользователя чата не найден.'),
(609, '', NULL, 'user_buy_new_chat_successfully.', 'User buy new chat successfully.', 'Пользователь успешно купил новый чат.'),
(610, '', NULL, 'error_while_buy_more_chat_credit.', 'Error while buy more chat credit.', 'Ошибка при покупке дополнительных кредитов в чате.'),
(611, '', NULL, 'no_page_number_found.', 'no page number found.', 'номер страницы не найден.'),
(612, '', NULL, 'no_content', 'No Content', 'Без содержания'),
(613, '', NULL, 'no_amount_passed', 'No amount passed', 'Сумма не пройдена'),
(614, '', NULL, 'amount_is_not_number', 'Amount is not number', 'Сумма не число'),
(615, '', NULL, 'no_description_passed', 'No description passed', 'Описание не передано'),
(616, '', NULL, 'there_is_no_mode_set_for_this_call', 'There is no mode set for this call', 'Для этого звонка не установлен режим'),
(617, '', NULL, 'link_generated_successfully', 'Link generated successfully', 'Ссылка создана успешно'),
(618, '', NULL, 'transaction_user_not_match_current_active_user', 'Transaction user not match current active user', 'Пользователь транзакции не соответствует текущему активному пользователю'),
(619, '', NULL, 'error_while_update_balance_after_charging', 'Error While update balance after charging', 'Ошибка при обновлении баланса после зарядки'),
(620, '', NULL, 'missing__url__parameter.', 'Missing `url` parameter.', 'Отсутствует параметр `url`.'),
(621, '', NULL, 'you_can_not_delete_your_profile_image__but_you_can_change_it_first.', 'You can not delete your profile image, but you can change it first.', 'Вы не можете удалить свое изображение профиля, но вы можете сначала изменить его.'),
(622, '', NULL, 'file_deleted_successfully', 'File deleted successfully', 'Файл успешно удален'),
(623, '', NULL, 'you_can_not_use_more_than_30_character_for_first_name.', 'you can not use more than 30 character for first name.', 'вы не можете использовать более 30 символов для имени.'),
(624, '', NULL, 'you_can_not_use_more_than_30_character_for_last_name.', 'you can not use more than 30 character for last name.', 'вы не можете использовать более 30 символов для фамилии.'),
(625, '', NULL, 'this_user_name_is_already_exist.', 'This User name is Already exist.', 'Это имя пользователя уже существует.'),
(626, '', NULL, 'this_user_name_is_reserved_word._please_choose_anther_username.', 'This User name is reserved word. please choose anther username.', 'Это имя пользователя является зарезервированным словом. Пожалуйста, выберите другое имя пользователя.'),
(627, '', NULL, 'empty_user_name.', 'empty user name.', 'пустое имя пользователя.'),
(628, '', NULL, 'this_e-mail_is_invalid.', 'This e-mail is invalid.', 'Этот адрес электронной почты недействителен.'),
(629, '', NULL, 'this_email_is_already_exist.', 'This email is Already exist.', 'Это электронное письмо уже существует.'),
(630, '', NULL, 'profile_general_data_saved_successfully.', 'Profile general data saved successfully.', 'Общие данные профиля успешно сохранены.'),
(631, '', NULL, 'error_while_saving_general_profile_settings.', 'Error while saving general profile settings.', 'Ошибка при сохранении общих настроек профиля.'),
(632, '', NULL, 'profile_data_saved_successfully.', 'Profile data saved successfully.', 'Данные профиля успешно сохранены.'),
(633, '', NULL, 'error_while_saving_profile_settings.', 'Error while saving profile settings.', 'Ошибка при сохранении настроек профиля.'),
(634, '', NULL, 'profile_privacy_data_saved_successfully.', 'Profile privacy data saved successfully.', 'Данные конфиденциальности профиля успешно сохранены.'),
(635, '', NULL, 'passwords_don_t_match.', 'Passwords Don&#039;t Match.', 'Пароли не совпадают.'),
(636, '', NULL, 'missing_new_password.', 'Missing New password.', 'Отсутствует новый пароль.'),
(637, '', NULL, 'password_is_too_short.', 'Password is too short.', 'Пароль слишком короткий.'),
(638, '', NULL, 'current_password_missing_.', 'Current password missing .', 'Текущий пароль отсутствует.'),
(639, '', NULL, 'current_password_is_wrong__please_check_again.', 'Current password is wrong, please check again.', 'Текущий пароль неверный, проверьте еще раз.'),
(640, '', NULL, 'password_updated_successfully.', 'Password updated successfully.', 'Пароль успешно обновлен.'),
(641, '', NULL, 'error_while_update_your_password__please_check_again.', 'Error while update your password, please check again.', 'Ошибка при обновлении пароля, проверьте еще раз.'),
(642, '', NULL, 'please_enter_just_facebook_profile_user.', 'Please enter just facebook profile user.', 'Пожалуйста, введите только пользователя профиля facebook.'),
(643, '', NULL, 'please_enter_just_twitter_profile_user.', 'Please enter just twitter profile user.', 'Пожалуйста, введите только пользователя профиля Twitter.'),
(644, '', NULL, 'please_enter_just_google_profile_user.', 'Please enter just google profile user.', 'Пожалуйста, введите только пользователя профиля Google.'),
(645, '', NULL, 'please_enter_just_instagrem_profile_user.', 'Please enter just instagrem profile user.', 'Пожалуйста, введите только пользователя профиля Instagram.'),
(646, '', NULL, 'please_enter_just_linkedin_profile_user.', 'Please enter just linkedin profile user.', 'Пожалуйста, введите только что связанного пользователя профиля.'),
(647, '', NULL, 'please_enter_valid_domain_name.', 'Please enter valid domain name.', 'Пожалуйста, введите действительное доменное имя.'),
(648, '', NULL, 'social_setting_updated_successfully.', 'Social setting updated successfully.', 'Социальные настройки успешно обновлены.'),
(649, '', NULL, 'error_while_saving_social_setting.', 'Error while saving social setting.', 'Ошибка при сохранении социальных настроек.'),
(650, '', NULL, 'emails_setting_saved_successfully.', 'Emails setting saved successfully.', 'Настройки электронной почты успешно сохранены.'),
(651, '', NULL, 'error_while_saving_email_setting.', 'Error while saving email setting.', 'Ошибка при сохранении настроек электронной почты.'),
(652, '', NULL, 'missing__to__parameter.', 'Missing `to` parameter.', 'Отсутствует параметр `to`.'),
(653, '', NULL, 'missing__gift_id__parameter.', 'Missing `gift_id` parameter.', 'Отсутствует параметр `gift_id`.'),
(654, '', NULL, 'gift_send_successfully.', 'Gift send successfully.', 'Подарок успешно отправлен.'),
(655, '', NULL, 'gift_send_failed.', 'Gift send failed.', 'Не удалось отправить подарок.'),
(656, '', NULL, 'missing__id__parameter.', 'Missing `id` parameter.', 'Отсутствует параметр `id`.'),
(657, '', NULL, 'user_buy_more_visits_successfully.', 'User buy more visits successfully.', 'Пользователь успешно покупает больше посещений.'),
(658, '', NULL, 'error_while_buy_more_visits.', 'Error while buy more visits.', 'Ошибка при покупке дополнительных посещений.'),
(659, '', NULL, 'user_buy_more_matches_successfully.', 'User buy more matches successfully.', 'Пользователь успешно купил больше спичек.'),
(660, '', NULL, 'error_while_buy_more_matches.', 'Error while buy more matches.', 'Ошибка при покупке дополнительных спичек.'),
(661, '', NULL, 'user_buy_more_likes_successfully.', 'User buy more likes successfully.', 'Пользователь успешно покупает больше лайков.'),
(662, '', NULL, 'error_while_buy_more_likes.', 'Error while buy more likes.', 'Ошибка при покупке лайков.'),
(663, '', NULL, 'current_password_missing.', 'Current password missing.', 'Текущий пароль отсутствует.'),
(664, '', NULL, 'your_account_deleted_successfully.', 'Your account deleted successfully.', 'Ваш аккаунт успешно удален.'),
(665, '', NULL, 'missing_e-mail', 'Missing E-mail', 'Отсутствует электронная почта'),
(666, '', NULL, 'this_e-mail_is_invalid', 'This E-mail is invalid', 'Этот адрес электронной почты недействителен'),
(667, '', NULL, 'missing_message', 'Missing message', 'Отсутствует сообщение'),
(668, '', NULL, 'thank_you_for_contacting_us', 'Thank you for contacting us', 'Благодарим Вас за обращение к нам'),
(669, '', NULL, 'message_sent_successfully', 'message sent successfully', 'Сообщение успешно отправлено'),
(670, '', NULL, 'can_not_send_message', 'can not send message', 'не могу отправить сообщение'),
(671, '', NULL, 'no_token', 'No Token', 'Нет токена'),
(672, '', NULL, 'no_description', 'No description', 'нет описания'),
(673, '', NULL, 'no_paytype', 'No payType', 'Нет типа оплаты'),
(674, '', NULL, 'payment_successfully', 'Payment successfully', 'Оплата успешно'),
(675, '', NULL, 'missing_username.', 'Missing username.', 'Отсутствует имя пользователя.'),
(676, '', NULL, 'missing_password.', 'Missing password.', 'Отсутствует пароль.'),
(677, '', NULL, 'this_e-mail_is_already_exist.', 'This E-mail is Already exist.', 'Этот адрес электронной почты уже существует.'),
(678, '', NULL, 'username_must_be_between_5_32.', 'Username must be between 5/32.', 'Имя пользователя должно быть между 5/32.'),
(679, '', NULL, 'invalid_username_characters.', 'Invalid username characters.', 'Недопустимые символы имени пользователя.'),
(680, '', NULL, 'registration_successfully', 'Registration successfully', 'Регистрация прошла успешно'),
(681, '', NULL, 'incorrect_username_or_password.', 'Incorrect username or password.', 'Неправильное имя пользователя или пароль.'),
(682, '', NULL, 'resource_endpoint_class_file_not_found.', 'Resource endpoint class file not found.', 'Файл класса конечной точки ресурса не найден.'),
(683, '', NULL, 'login_successfully', 'Login successfully', 'Войти успешно'),
(684, '', NULL, 'an_error_occurred_while_processing_the_form.', 'An error occurred while processing the form.', 'При обработке формы произошла ошибка.'),
(685, '', NULL, 'missing_e-mail.', 'Missing E-mail.', 'Отсутствует электронная почта.'),
(686, '', NULL, 'this_e-mail', 'This E-mail', 'Это письмо'),
(687, '', NULL, 'is_not_registered.', 'is not registered.', 'не зарегистрирован.'),
(688, '', NULL, 'password_reset.', 'password reset.', 'восстановление пароля.'),
(689, '', NULL, 'reset_password_email_sent_successfully.', 'Reset password email sent successfully.', 'Письмо для сброса пароля успешно отправлено.'),
(690, '', NULL, 'server_can_t_send_email_to', 'Server can&#039;t send email to', 'Сервер не может отправлять электронную почту на'),
(691, '', NULL, 'right_now__please_try_again_later.', 'right now, please try again later.', 'прямо сейчас, повторите попытку позже.'),
(692, '', NULL, 'missing_email_code.', 'Missing email code.', 'Отсутствует код электронной почты.'),
(693, '', NULL, 'email_verified_successfully', 'Email verified successfully', 'Электронная почта успешно подтверждена'),
(694, '', NULL, 'wrong_email_verification_code.', 'Wrong email verification code.', 'Неверный код подтверждения электронной почты.'),
(695, '', NULL, 'no_user_found_with_this_email_or_code.', 'No user found with this email or code.', 'Пользователь с этим адресом электронной почты или кодом не найден.'),
(696, '', NULL, 'you_are_not_allowed_to_open_this_page_directly.', 'You are not allowed to open this page directly.', 'Вам не разрешено открывать эту страницу напрямую.'),
(697, '', NULL, 'this_email_code_is_invalid.', 'This Email code is invalid.', 'Этот код электронной почты недействителен.'),
(698, '', NULL, 'empty_password.', 'Empty password.', 'Пустой пароль.'),
(699, '', NULL, 'password_reset_successfully', 'Password reset successfully', 'Сброс пароля успешно'),
(700, '', NULL, 'error_while_login_with_new_password.', 'Error While login with new password.', 'Ошибка при входе с новым паролем.'),
(701, '', NULL, 'error_while_save_new_password.', 'Error While save new password.', 'Ошибка при сохранении нового пароля.'),
(702, '', NULL, 'missing_phone_number.', 'Missing phone number.', 'Отсутствует номер телефона.'),
(703, '', NULL, 'please_provide_international_number_with_your_area_code_starting_with__.', 'Please provide international number with your area code starting with +.', 'Укажите международный номер с кодом города, начинающимся с +.'),
(704, '', NULL, 'please_enter_valid_number.', 'Please enter valid number.', 'Пожалуйста, введите действительный номер.'),
(705, '', NULL, 'invalid_phone_number_characters.', 'Invalid phone number characters.', 'Недопустимые символы номера телефона.'),
(706, '', NULL, 'this_mobile_number_is_already_exist.', 'This Mobile number is Already exist.', 'Этот номер мобильного телефона уже существует.'),
(707, '', NULL, 'mobile_activation_code.', 'Mobile Activation code.', 'Мобильный код активации.'),
(708, '', NULL, 'verification_sms_sent_successfully.', 'Verification sms sent successfully.', 'СМС с подтверждением успешно отправлена.'),
(709, '', NULL, 'can_t_send_verification_sms__please_try_again_later.', 'Can&#039;t send verification sms, please try again later.', 'Не удается отправить смс с подтверждением. Повторите попытку позже.'),
(710, '', NULL, 'missing_email.', 'Missing email.', 'Отсутствует электронная почта.'),
(711, '', NULL, 'thank_you_for_your_registration.', 'Thank you for your registration.', 'Спасибо за регистрацию.'),
(712, '', NULL, 'can_t_send_verification_email__please_try_again_later.', 'Can&#039;t send verification email, please try again later.', 'Не удается отправить электронное письмо с подтверждением. Повторите попытку позже.'),
(713, '', NULL, 'you_can_not_like_your_self.', 'You can not like your self.', 'Вы можете не любить себя.'),
(714, '', NULL, 'you_can_not_perform_this_action.', 'You can not perform this action.', 'Вы не можете выполнить это действие.'),
(715, '', NULL, 'error_while_deleting_dislike.', 'Error while deleting dislike.', 'Ошибка при удалении дизлайка.'),
(716, '', NULL, 'user_has_been_blocked_successfully.', 'User has been blocked successfully.', 'Пользователь успешно заблокирован.'),
(717, '', NULL, 'error_while_save_block.', 'Error while save block.', 'Ошибка при сохранении блока.'),
(718, '', NULL, 'user_has_been_unblocked_successfully.', 'User has been unblocked successfully.', 'Пользователь был успешно разблокирован.'),
(719, '', NULL, 'error_while_delete_user_block.', 'Error while delete user block.', 'Ошибка при удалении пользовательского блока.'),
(720, '', NULL, 'error_while_save_report.', 'Error while save report.', 'Ошибка при сохранении отчета.'),
(721, '', NULL, 'user_has_been_unreported_successfully.', 'User has been unreported successfully.', 'Пользователь был успешно отменен.'),
(722, '', NULL, 'error_while_delete_user_report.', 'Error while delete user report.', 'Ошибка при удалении пользовательского отчета.'),
(723, '', NULL, 'email_verification.', 'Email Verification.', 'Подтверждение адреса электронной почты.'),
(724, '', NULL, 'verification_email_sent_successfully.', 'Verification email sent successfully.', 'Письмо с подтверждением успешно отправлено.'),
(725, '', NULL, 'error_while_update_email_activation.', 'Error while update email activation.', 'Error while update email activation.'),
(726, '', NULL, 'missing_sms_code.', 'Missing sms code.', 'Missing sms code.'),
(727, '', NULL, 'phone_verified_successfully', 'Phone verified successfully', 'Phone verified successfully'),
(728, '', NULL, 'error_while_update_phone_activation.', 'Error while update phone activation.', 'Error while update phone activation.'),
(729, '', NULL, 'wrong_phone_verification_code.', 'Wrong phone verification code.', 'Wrong phone verification code.'),
(730, '', NULL, 'no_user_found_with_this_phone_number_or_code.', 'No user found with this phone number or code.', 'No user found with this phone number or code.'),
(731, '', NULL, 'user_boosted_successfully.', 'User boosted successfully.', 'User boosted successfully.'),
(732, '', NULL, 'error_while_boost_user.', 'Error while boost user.', 'Error while boost user.'),
(733, '', NULL, 'user_unmatched_successfully.', 'User unmatched successfully.', 'User unmatched successfully.'),
(734, '', NULL, 'method_not_allowed', 'Method Not Allowed', 'Method Not Allowed'),
(735, '', NULL, 'this_call_from_test_function', 'this call from test function', 'this call from test function'),
(736, '', NULL, 'credit', 'Credit', 'Credit'),
(737, '', NULL, 'forgot_password', 'Forgot password', 'Forgot password'),
(738, '', NULL, 'home', 'Home', 'Home'),
(739, '', NULL, 'interest', 'Interest', 'Interest'),
(740, '', NULL, 'people_liked_me', 'People liked me', 'People liked me'),
(741, '', NULL, 'email_code_verification', 'Email code verification', 'Email code verification'),
(742, '', NULL, 'premium_membership', 'Premium Membership', 'Premium Membership'),
(743, '', NULL, 'premium_membership_success', 'Premium Membership Success', 'Premium Membership Success'),
(744, '', NULL, 'reset_password', 'Reset Password', 'Reset Password'),
(745, '', NULL, 'general_settings', 'General Settings', 'General Settings'),
(746, '', NULL, 'profile_settings_blocked', 'Profile Settings Blocked', 'Profile Settings Blocked'),
(747, '', NULL, 'delete_profile', 'Delete Profile', 'Delete Profile'),
(748, '', NULL, 'profile_email_settings', 'Profile Email Settings', 'Profile Email Settings'),
(749, '', NULL, 'account_password_settings', 'Account Password Settings', 'Account Password Settings'),
(750, '', NULL, 'privacy_setting', 'Privacy Setting', 'Privacy Setting'),
(751, '', NULL, 'profile_setting', 'Profile Setting', 'Profile Setting'),
(752, '', NULL, 'social_setting', 'Social Setting', 'Social Setting'),
(753, '', NULL, 'profile_steps', 'Profile steps', 'Profile steps'),
(754, '', NULL, 'verify_your_account', 'Verify your account', 'Verify your account'),
(755, '', NULL, 'verify_e-mail_address', 'Verify E-Mail address', 'Verify E-Mail address');
INSERT INTO `langs` (`id`, `ref`, `options`, `lang_key`, `english`, `russian`) VALUES
(756, '', NULL, 'verify_phone', 'Verify Phone', 'Verify Phone'),
(757, '', NULL, 'sms_code_verification', 'SMS code verification', 'SMS code verification'),
(758, '', NULL, 'id_cannot_be_empty__or_character._only_numbers_allowed__or_you_have_call_undefined_method', 'ID cannot be empty, or character. only numbers allowed, or you have call undefined method', 'ID cannot be empty, or character. only numbers allowed, or you have call undefined method'),
(759, '', NULL, 'bad_request__invalid_or_missing_parameter', 'Bad Request, Invalid or missing parameter', 'Bad Request, Invalid or missing parameter'),
(760, '', NULL, 'user_in_black_list', 'User in black list', 'User in black list'),
(761, '', NULL, 'message_sent_successfully.', 'Message sent successfully.', 'Message sent successfully.'),
(762, '', NULL, 'operation_successfully.', 'Operation successfully.', 'Операция успешно.'),
(763, '', NULL, 'options_loaded_successfully.', 'Options loaded successfully.', 'Параметры успешно загружены.'),
(764, '', NULL, 'user_name_cannot_be_empty', 'User name cannot be empty', 'Имя пользователя не может быть пустым'),
(765, '', NULL, 'password_cannot_be_empty', 'Password cannot be empty', 'Пароль не может быть пустым'),
(766, '', NULL, 'login_successfully__please_wait..', 'Login successfully, Please wait..', 'Войти успешно, Пожалуйста, подождите..'),
(767, '', NULL, 'could_not_save_session', 'Could not save session', 'Не удалось сохранить сеанс'),
(768, '', NULL, 'user_not_exist', 'User Not Exist', 'Пользователь не существует'),
(769, '', NULL, 'wrong_password', 'Wrong password', 'Неправильный пароль'),
(770, '', NULL, 'user_data_unset', 'User data unset', 'Данные пользователя удалены'),
(771, '', NULL, 'username_must_be_between_5_32', 'Username must be between 5/32', 'Имя пользователя должно быть между 5/32'),
(772, '', NULL, 'invalid_username_characters', 'Invalid username characters', 'Недопустимые символы имени пользователя'),
(773, '', NULL, 'user_name_exists', 'User Name Exists', 'Имя пользователя существует'),
(774, '', NULL, 'email_cannot_be_empty', 'Email cannot be empty', 'Электронная почта не может быть пустой'),
(775, '', NULL, 'email_already_exists', 'Email Already Exists', 'Эл. адрес уже существует'),
(776, '', NULL, 'registration_failed', 'Registration Failed', 'Регистрация не удалась'),
(777, '', NULL, 'successfully_joined.', 'Successfully joined.', 'Успешно присоединился.'),
(778, '', NULL, 'could_not_send_verification_email', 'Could not send verification email', 'Не удалось отправить письмо с подтверждением'),
(779, '', NULL, 'successfully_joined__please_wait..', 'Successfully joined, Please wait..', 'Успешно присоединился. Пожалуйста, подождите..'),
(780, '', NULL, 'error__an_unknown_error_occurred._please_try_again_later', 'Error: an unknown error occurred. Please try again later', 'Ошибка: произошла неизвестная ошибка. Пожалуйста, попробуйте позже'),
(781, '', NULL, 'registration_success', 'Registration Success', 'Вы успешно зарегистрировались'),
(782, '', NULL, 'error_400_-_session_does_not_exist', 'Error 400 - Session does not exist', 'Ошибка 400 - Сеанс не существует'),
(783, '', NULL, 'successfully_logged_out', 'Successfully logged out', 'Успешно вышел из системы'),
(784, '', NULL, 'no_user_email__sent', 'No user email  sent', 'Электронная почта пользователя не отправлена'),
(785, '', NULL, 'e-mail_is_not_exists', 'E-mail is not exists', 'Электронная почта не существует'),
(786, '', NULL, 'a_reset_password_link_has_been_sent_to_your_e-mail_address', 'A reset password link has been sent to your e-mail address', 'Ссылка для сброса пароля отправлена ​​на ваш адрес электронной почты'),
(787, '', NULL, 'you_enter_wrong_password', 'You enter wrong password', 'Вы вводите неверный пароль'),
(788, '', NULL, 'profile_fetch_successfully', 'Profile fetch successfully', 'Получение профиля успешно'),
(789, '', NULL, 'empty_username', 'Empty username', 'Пустое имя пользователя'),
(790, '', NULL, 'empty_password', 'Empty password', 'Пустой пароль'),
(791, '', NULL, 'id_cannot_be_empty__or_character._only_numbers_allowed', 'ID cannot be empty, or character. only numbers allowed', 'ID не может быть пустым или символьным. разрешены только цифры'),
(792, '', NULL, 'session_add_failed', 'Session add failed', 'Не удалось добавить сеанс'),
(793, '', NULL, 'username_cannot_be_empty', 'Username cannot be empty', 'Имя пользователя не может быть пустым'),
(794, '', NULL, 'token_cannot_be_empty', 'Token cannot be empty', 'Токен не может быть пустым'),
(795, '', NULL, 'could_not_ave_session', 'Could not ave session', 'Не удалось сохранить сеанс'),
(796, '', NULL, 'user_not_found', 'User not found', 'Пользователь не найден'),
(797, '', NULL, 'id_cannot_be_empty__or_character._only_numbers_allowed.', 'ID cannot be empty, or character. only numbers allowed.', 'ID не может быть пустым или символьным. разрешены только числа.'),
(798, '', NULL, 'error_while_deleting__blocks__data.', 'Error while deleting &quot;Blocks&quot; data.', 'Ошибка при удалении \"Блоков\" данные.'),
(799, '', NULL, 'error_while_deleting__conversations__data.', 'Error while deleting &quot;Conversations&quot; data.', 'Ошибка при удалении \"Беседов\" данные.'),
(800, '', NULL, 'error_while_deleting__likes__data.', 'Error while deleting &quot;Likes&quot; data.', 'Ошибка при удалении \"Нравится\" данные.'),
(801, '', NULL, 'error_while_deleting__media_files__data.', 'Error while deleting &quot;Media files&quot; data.', 'Ошибка при удалении \"Медиафайлов\" данные.'),
(802, '', NULL, 'error_while_deleting__messages__data.', 'Error while deleting &quot;Messages&quot; data.', 'Ошибка при удалении \"Сообщений\" данные.'),
(803, '', NULL, 'error_while_deleting__notifications__data.', 'Error while deleting &quot;Notifications&quot; data.', 'Ошибка при удалении \"Уведомлений\" данные.'),
(804, '', NULL, 'error_while_deleting__reports__data.', 'Error while deleting &quot;Reports&quot; data.', 'Ошибка при удалении \"Отчетов\" данные.'),
(805, '', NULL, 'error_while_deleting__gifts__data.', 'Error while deleting &quot;Gifts&quot; data.', 'Ошибка при удалении \"Подарков\" данные.'),
(806, '', NULL, 'error_while_deleting__visits__data.', 'Error while deleting &quot;Visits&quot; data.', 'Ошибка при удалении \"Посещений\" данные.'),
(807, '', NULL, 'error_while_deleting__user__data.', 'Error while deleting &quot;User&quot; data.', 'Ошибка при удалении \"Пользователя\" данные.'),
(808, '', NULL, 'error_while_deleting__sessions__data.', 'Error while deleting &quot;Sessions&quot; data.', 'Ошибка при удалении \"Сеансов\" данные.'),
(809, '', NULL, 'error_while_deleting__payments__data.', 'Error while deleting &quot;Payments&quot; data.', 'Ошибка при удалении \"Платежей\" данные.'),
(810, '', NULL, 'like_delete_successfully.', 'Like delete successfully.', 'Вроде успешно удалил.'),
(811, '', NULL, 'dislike_delete_successfully.', 'Dislike delete successfully.', 'Не нравится удалить успешно.'),
(812, '', NULL, 'user_unblocked_successfully.', 'User unblocked successfully.', 'Пользователь успешно разблокирован.'),
(813, '', NULL, 'user_blocked_successfully.', 'User blocked successfully.', 'Пользователь успешно заблокирован.'),
(814, '', NULL, 'user_unreported_successfully.', 'User unreported successfully.', 'Пользователь успешно удален.'),
(815, '', NULL, 'user_reported_successfully.', 'User reported successfully.', 'Пользователь сообщил об успешном завершении.'),
(816, '', NULL, 'user_visited_successfully.', 'User visited successfully.', 'Пользователь успешно посетил.'),
(817, '', NULL, 'could_not_save_user_visit', 'Could not save user visit', 'Не удалось сохранить визит пользователя'),
(818, '', NULL, 'gift_sent_successfully.', 'Gift sent successfully.', 'Подарок успешно отправлен.'),
(819, '', NULL, 'could_not_save_user_gift', 'Could not save user gift', 'Не удалось сохранить подарок пользователя'),
(820, '', NULL, 'search_fetch_successfully', 'Search fetch successfully', 'Поиск выполнен успешно'),
(821, '', NULL, 'profile_updated_successfully.', 'Profile updated successfully.', 'Профиль успешно обновлен.'),
(822, '', NULL, 'can_not_update_profile.', 'Can not update profile.', 'Не могу обновить профиль.'),
(823, '', NULL, 'profile_avatar_updated_successfully.', 'Profile avatar updated successfully.', 'Аватар профиля успешно обновлен.'),
(824, '', NULL, 'can_not_upload_avatar_file.', 'Can not upload avatar file.', 'Не могу загрузить файл аватара.'),
(825, '', NULL, 'google_key__post__is_missing', 'google_key (POST) is missing', 'google_key (POST) отсутствует'),
(826, '', NULL, 'login_success', 'Login Success', 'Войти успешно'),
(827, '', NULL, 'empty_social_id', 'Empty social id', 'Пустой социальный идентификатор'),
(828, '', NULL, 'payment_processed_successfully', 'Payment processed successfully', 'Платеж успешно обработан'),
(829, '', NULL, 'error_while_payment_process', 'Error While Payment process', 'Ошибка в процессе оплаты'),
(830, '', NULL, 'visit_you', 'Visit you', 'посетить вас'),
(831, '', NULL, 'like_you', 'Like you', 'Как ты'),
(832, '', NULL, 'dislike_you', 'Dislike you', 'Не люблю тебя'),
(833, '', NULL, 'send_gift_to_you', 'Send gift to you', 'Отправить подарок для вас'),
(834, '', NULL, 'you_got_a_new_match__click_to_view_', 'You got a new match, click to view!', 'Вы получили новый матч, нажмите, чтобы посмотреть!'),
(835, '', NULL, 'choose_your_relationship_status', 'Choose your Relationship status', 'Выберите свой статус отношений'),
(836, '', NULL, 'choose_your_preferred_language', 'Choose your Preferred Language', 'Выберите предпочитаемый язык'),
(837, '', NULL, 'choose_your_work_status', 'Choose your Work status', 'Выберите свой рабочий статус'),
(838, '', NULL, 'choose_your_hair_color', 'Choose your Hair Color', 'Выберите свой цвет волос'),
(839, '', NULL, 'live_with', 'Live with', 'Жить с'),
(840, '', NULL, 'enter_a_tag__then_hit_enter', 'Enter a tag, then hit enter', 'Введите тег, затем нажмите Enter'),
(841, '', NULL, '_tag__hit_enter_to_add_more', '+Tag, Hit enter to add more', '+Tag, нажмите Enter, чтобы добавить больше'),
(842, '', NULL, 'i__039_m_studying', 'I&#039;m studying', 'я учусь'),
(843, '', NULL, 'i__039_m_working', 'I&#039;m working', 'я работаю'),
(844, '', NULL, 'i__039_m_looking_for_work', 'I&#039;m looking for work', 'я ищу работу'),
(845, '', NULL, 'i__039_m_retired', 'I&#039;m retired', 'я на пенсии'),
(877, '', NULL, 'i_have_kids_and_don__039_t_want_more', 'I have kids and don&#039;t want more', 'У меня есть дети, и я не хочу больше'),
(878, '', NULL, 'personality', 'Personality', 'Личность'),
(879, '', NULL, 'favourites', 'Favourites', 'Избранное'),
(880, '', NULL, 'notification_saved_successfully', 'Notification saved successfully', 'Уведомление успешно сохранено'),
(881, '', NULL, 'error_found__please_try_again_later.', 'Error found, please try again later.', 'Обнаружена ошибка, повторите попытку позже.'),
(882, '', NULL, 'return_back', 'Return back', 'Вернуться назад'),
(1103, '', NULL, 'choose_your_gender', 'Choose your Gender', 'Выберите свой пол'),
(1111, '', NULL, 'enter_a_location', 'Enter a location', 'Введите местоположение'),
(1116, '', NULL, 'by_creating_your_account__you_agree_to_our', 'By creating your account, you agree to our', 'Создавая учетную запись, вы соглашаетесь с нашими'),
(1117, '', NULL, 'this_phone_number_is_already_exist.', 'This Phone number is Already exist.', 'Этот номер телефона уже существует.'),
(1120, '', NULL, 'current_password', 'Current Password', 'текущий пароль'),
(1153, '', NULL, 'delete_account_', 'Delete account?', 'Удалить аккаунт?'),
(1154, '', NULL, 'are_you_sure_you_want_to_delete_your_account__all_content_including_published_photos_and_other_data_will_be_permanetly_removed_', 'Are you sure you want to delete your account? All content including published photos and other data will be permanetly removed!', 'Вы уверены, что хотите удалить свой аккаунт? Весь контент, включая опубликованные фотографии и другие данные, будет навсегда удален!'),
(1155, '', NULL, 'delete', 'Delete', 'Удалить'),
(1156, '', NULL, 'chat_conversations_fetch_successfully', 'Chat conversations fetch successfully', 'Разговоры в чате получены успешно'),
(1158, '', NULL, 'bank_transfer', 'Bank Transfer', 'Банковский перевод'),
(1159, '', NULL, 'close', 'Close', 'Закрывать'),
(1160, '', NULL, 'bank_information', 'Bank Information', 'Банковская информация'),
(1161, '', NULL, 'please_transfer_the_amount_of', 'Please transfer the amount of', 'Пожалуйста, переведите сумму'),
(1162, '', NULL, 'to_this_bank_account_to_buy', 'to this bank account to purchase', 'на этот банковский счет для покупки'),
(1163, '', NULL, 'upload_receipt', 'Upload Receipt', 'Загрузить квитанцию'),
(1164, '', NULL, 'confirm', 'Confirm', 'Подтверждать'),
(1165, '', NULL, 'your_receipt_uploaded_successfully.', 'Your was receipt successfully uploaded.', 'Ваша квитанция успешно загружена.'),
(1166, '', NULL, 'date', 'Date', 'Свидание'),
(1167, '', NULL, 'processed_by', 'Processed By', 'Обработано'),
(1168, '', NULL, 'amount', 'Amount', 'Количество'),
(1169, '', NULL, 'type', 'Type', 'Тип'),
(1170, '', NULL, 'notes', 'Notes', 'Заметки'),
(1171, '', NULL, 'plan_premium_membership', 'Plan Premium Membership', 'План Премиум-членства'),
(1172, '', NULL, 'your_boost_will_expire_in', 'Your boost will expire in', 'Срок действия вашего повышения истекает через'),
(1173, '', NULL, 'hide', 'Hide', 'Скрывать'),
(1174, '', NULL, 'you_reach_the_max_of_swipes_per_day._you_have_to_wait__0__hours_before_you_can_redo_likes_or_upgrade_to_pro_to_for_unlimited.', 'You have reached the maximum amuont of swipes per day, you have to wait {0} hours before you can redo swipes, OR upgrade now to Pro Membership for unlimited swipes and likes.', 'Вы достигли максимального количества пролистываний в день, вам нужно подождать {0} часов, прежде чем вы сможете повторять пролистывания, ИЛИ перейти сейчас на членство Pro для неограниченного количества пролистываний и лайков.'),
(1175, '', NULL, 'your_payment_was_processed_successfully.', 'Your payment was successfully processed.', 'Ваш платеж успешно обработан.'),
(1176, '', NULL, 'sms', 'SMS', 'смс'),
(1177, '', NULL, 'sent_you_message_', 'sent you a message!', 'отправил вам сообщение!'),
(1178, '', NULL, 'sent_you_a_message_', 'sent you a message!', 'отправил вам сообщение!'),
(1179, '', NULL, 'accept', 'Accept', 'Принимать'),
(1180, '', NULL, 'decline', 'Decline', 'Отклонить'),
(1181, '', NULL, 'calling', 'Calling', 'Вызов'),
(1182, '', NULL, 'please_wait_for_your_friend_answer.', 'Please wait for your friend\'s answer.', 'Пожалуйста, дождитесь ответа вашего друга.'),
(1183, '', NULL, 'no_answer', 'No answer', 'Нет ответа'),
(1184, '', NULL, 'please_try_again_later.', 'Please try again later.', 'Пожалуйста, попробуйте позже.'),
(1185, '', NULL, 'new_video_call', 'New incoming video call', 'Новый входящий видеозвонок'),
(1186, '', NULL, 'wants_to_video_chat_with_you.', 'wants to video chat with you.', 'хочет пообщаться с вами в видеочате.'),
(1187, '', NULL, 'call_declined', 'Call declined', 'Вызов отклонен'),
(1188, '', NULL, 'the_recipient_has_declined_the_call__please_try_again_later.', 'The recipient has declined the call, please try again later.', 'Получатель отклонил вызов, повторите попытку позже.'),
(1189, '', NULL, 'accept___start', 'Accept & Start', 'Принять & Начинать'),
(1190, '', NULL, 'answered__', 'Answered!', 'Ответил!'),
(1191, '', NULL, 'please_wait..', 'Please wait..', 'Пожалуйста подождите..'),
(1192, '', NULL, 'video_call', 'Video Call', 'Видеозвонок'),
(1193, '', NULL, 'new_audio_call', 'New incoming audio call', 'Новый входящий аудиозвонок'),
(1194, '', NULL, 'wants_to_talk_with_you.', 'wants to talk with you.', 'хочет поговорить с тобой.'),
(1195, '', NULL, 'audio_call', 'Audio call', 'Аудиовызов'),
(1196, '', NULL, 'talking_with', 'talking with', 'говорить с'),
(1197, '', NULL, 'this_website_uses_cookies_to_ensure_you_get_the_best_experience_on_our_website.', 'This website uses cookies to ensure you get the best experience on our website.', 'Этот веб-сайт использует файлы cookie, чтобы обеспечить вам максимальное удобство на нашем веб-сайте.'),
(1198, '', NULL, 'got_it_', 'Got It!', 'Понятно!'),
(1199, '', NULL, 'learn_more', 'Learn More', 'Учить больше'),
(1200, '', NULL, 'no_result_found', 'No result found', 'Результатов не найдено'),
(1201, '', NULL, 'send_gif', 'Send GIF', 'Отправить гифку'),
(1202, '', NULL, 'search_gifs', 'Search GIFs', 'Поиск гифок'),
(1203, '', NULL, 'sticker_added', 'Sticker added', 'Стикер добавлен'),
(1204, '', NULL, 'your_phone_number_is_required.', 'Your phone number is required.', 'Требуется ваш номер телефона.'),
(1205, '', NULL, 'select_your_country.', 'Please select your country.', 'Пожалуйста, выберите вашу страну.'),
(1206, '', NULL, 'select_your_birth_date.', 'Please select your birthday.', 'Пожалуйста, выберите день рождения.'),
(1207, '', NULL, 'my_location', 'My Location', 'Мое местонахождение'),
(1208, '', NULL, 'or', 'OR', 'ИЛИ ЖЕ'),
(1209, '', NULL, 'instagram', 'Instagram', 'Инстаграм'),
(1210, '', NULL, 'disable', 'disable', 'запрещать'),
(1211, '', NULL, 'enable', 'enable', 'включить'),
(1212, '', NULL, 'travel_to_another_country__and_relocate_', 'Travel to another country, and relocate!', 'Путешествуйте в другую страну и переезжайте!'),
(1213, 'gender', NULL, '4525', 'Male', 'Мужской'),
(1214, 'gender', NULL, '4526', 'Female', 'женский'),
(1215, '', NULL, 'about_you', 'About You', 'О тебе'),
(1216, '', NULL, 'km', 'km', 'Коморы'),
(1217, '', NULL, 'message_requests', 'Message requests', 'Запросы сообщений'),
(1218, '', NULL, 'all_conversations', 'All conversations', 'Все разговоры'),
(1219, '', NULL, 'you_can_chat_with_this_user_after', 'You can chat with this profile after', 'Вы можете общаться с этим профилем после'),
(1220, '', NULL, 'hours.', 'hours.', 'часы.'),
(1221, '', NULL, 'this_user_decline_your_chat_before_so_you_can_chat_with_this_user_after', 'This user has declined your chat before, you\'ll be able to chat with this user after', 'Этот пользователь отклонял ваш чат раньше, вы сможете общаться с этим пользователем после'),
(1222, '', NULL, 'active', 'active', 'активный'),
(1223, '', NULL, 'declined', 'Declined', 'Отклоненный'),
(1224, '', NULL, 'pending', 'Pending', 'В ожидании'),
(1225, '', NULL, 'night_mode', 'Night mode', 'Ночной режим'),
(1226, '', NULL, 'day_mode', 'Day mode', 'Дневной режим'),
(1227, '', NULL, 'we___ll_be_back_soon_', 'We’ll be back soon!', 'Мы скоро вернемся!'),
(1228, '', NULL, 'sorry_for_the_inconvenience_but_we_rsquo_re_performing_some_maintenance_at_the_moment._if_you_need_help_you_can_always', 'Sorry for the inconvenience but we\'re performing some maintenance at the moment. If you need help you can always', 'Приносим извинения за неудобства, но в настоящее время мы проводим техническое обслуживание. Если вам нужна помощь, вы всегда можете'),
(1229, '', NULL, 'otherwise_we_rsquo_ll_be_back_online_shortly_', 'otherwise we\'ll be back online shortly!', 'в противном случае мы скоро вернемся в онлайн!'),
(1230, '', NULL, 'declined_your_message_request_', 'declined your message request!', 'отклонил ваш запрос сообщения!'),
(1231, '', NULL, 'accepted_your_message_request_', 'accepted your message request!', 'принят ваш запрос сообщения!'),
(1232, '', NULL, 'we_have_rejected_your_bank_transfer__please_contact_us_for_more_details', 'We have rejected your bank transfer, please contact us for more details.', 'Мы отклонили ваш банковский перевод. Пожалуйста, свяжитесь с нами для получения более подробной информации.'),
(1233, '', NULL, 'we_approved_your_bank_transfer_of__d_', 'We approved your bank transfer of %d!', 'Мы одобрили ваш банковский перевод на сумму %d!'),
(1234, '', NULL, 'note', 'Note', 'Примечание'),
(1235, '', NULL, 'delete_chat', 'Delete chat', 'Удалить чат'),
(1236, '', NULL, 'your_x3_matches_will_expire_in', 'Your x3 matches will expire in', 'Срок действия ваших совпадений x3 истекает через'),
(1237, '', NULL, 'to_get_your_profile_verified_you_have_to_verify_these.', 'To get your profile verified you have to verify these.', 'Чтобы подтвердить свой профиль, вы должны подтвердить их.'),
(1238, '', NULL, 'upload_at_least_5_image.', 'Upload at least 5 image.', 'Загрузите не менее 5 изображений.'),
(1239, '', NULL, 'unblock', 'Unblock', 'Разблокировать'),
(1240, '', NULL, 'phone_number__e.g__90..', 'Phone number, e.g +90..', 'Номер телефона, например +90..'),
(1241, '', NULL, 'phone_verification_needed', 'Phone verification required', 'Требуется подтверждение телефона'),
(1242, '', NULL, 'phone', 'Phone', 'Телефон'),
(1243, '', NULL, 'send_otp', 'Send OTP', 'Отправить одноразовый пароль'),
(1244, '', NULL, 'phone_activiation_', 'Phone activiation,', 'Активация телефона,'),
(1245, '', NULL, 'please_enter_the_verification_code_sent_to_your_phone', 'Please enter the verification code that was sent to your phone. ', 'Пожалуйста, введите проверочный код, который был отправлен на ваш телефон.'),
(1246, '', NULL, 'resend', 'Re-send', 'Отправить'),
(1247, '', NULL, 'please_verify_your_email_address', 'Please verify your email address.', 'Пожалуйста, подтвердите свой адрес электронной почты.'),
(1248, '', NULL, 'error_while_sending_an_sms__please_try_again_later.', 'Error while sending the SMS, please try again later.', 'Ошибка при отправке SMS, повторите попытку позже.'),
(1249, '', NULL, 'error_while_submitting_form.', 'Error while submitting form.', 'Ошибка при отправке формы.'),
(1250, '', NULL, 'email_verification_needed', 'Email verification required', 'Требуется подтверждение электронной почты'),
(1251, '', NULL, 'email_activiation_', 'Email activiation,', 'Активация по электронной почте,'),
(1252, '', NULL, 'please_enter_the_verification_code_sent_to_your_email', 'Please enter the verification code that was sent to your E-mail.', 'Пожалуйста, введите проверочный код, который был отправлен на вашу электронную почту.'),
(1253, '', NULL, 'video_and_audio_calls_to_all_users', 'Create unlimited video and audio calls.', 'Создавайте неограниченное количество видео- и аудиозвонков.'),
(1254, '', NULL, 'latest_users', 'Latest Users', 'Последние пользователи'),
(1255, '', NULL, 'wanna_get_more__get_new_stickers_for', 'Wanna get more? get new stickers for', 'Хотите получить больше? получить новые стикеры для'),
(1256, '', NULL, 'this_image_now_is_private.', 'This photo is private.', 'Это фото является частным.'),
(1257, '', NULL, 'emails', 'Emails', 'электронные письма'),
(1258, '', NULL, 'email_me_when_someone_views_your_profile', 'Email me when someone views my profile.', 'Напишите мне, когда кто-то просматривает мой профиль.'),
(1259, '', NULL, 'email_me_when_you_get_a_new_message', 'Email me when I get a new message.', 'Напишите мне, когда я получу новое сообщение.'),
(1260, '', NULL, 'email_me_when_someone_like_your_profile', 'Email me when someone like me.', 'Напишите мне, когда кто-то, как я.'),
(1261, '', NULL, 'email_me_purchase_notifications', 'Email me my purchase notifications.', 'Присылайте мне уведомления о моих покупках.'),
(1262, '', NULL, 'email_me_special_offers___promotions', 'Email me special offers & promotions.', 'Отправить мне по электронной почте специальные предложения & Акции.'),
(1263, '', NULL, 'email_me_feature_announcements', 'Email me future announcements.', 'Присылайте мне будущие объявления по электронной почте.'),
(1264, '', NULL, 'email_me_when_someone_like_my_profile', 'Email me when someone like my profile.', 'Напишите мне, когда кому-то понравится мой профиль.'),
(1265, '', NULL, 'email_me_when_i_get_new_gift', 'Email me when I get a new gift.', 'Напишите мне, когда я получу новый подарок.'),
(1266, '', NULL, 'email_me_when_i_get_new_match', 'Email me when I get a new match.', 'Напишите мне, когда я получу новый матч.'),
(1267, '', NULL, 'email_me_when_i_get_new_chat_request', 'Email me when I get a new chat request.', 'Напишите мне, когда я получу новый запрос на чат.'),
(1268, '', NULL, 'why__0__is_best', 'Why {0} is Best', 'Почему {0} лучше'),
(1269, '', NULL, 'your_account_is_safe_on__0_._we_never_share_your_data_with_third_party.', 'Your account is safe on {0}. We never share your data with third party.', 'Ваш аккаунт в безопасности на {0}. Мы никогда не передаем ваши данные третьим лицам.'),
(1270, '', NULL, 'connect_with_your_perfect_soulmate_here__on__0_.', 'Connect with your perfect Soulmate here, on {0}.', 'Свяжитесь со своей идеальной родственной душой здесь, {0}.'),
(1271, '', NULL, 'verification', 'Verification', 'Проверка'),
(1272, '', NULL, 'you_have_been_exceed_the_activation_request_limit.', 'You have exceeded the activation request limit.', 'Вы превысили лимит запросов на активацию.'),
(1273, '', NULL, 'you_have_to_wait', 'You have to wait', 'Вам придется подождать'),
(1274, '', NULL, 'minutes_before_you_try_to_activate_again.', 'minutes before you try to activate again.', 'минут, прежде чем вы попытаетесь активировать снова.'),
(1275, '', NULL, 'we_have_rejected_your_bank_transfer__please_contact_us_for_more_details.', 'We have rejected your bank transfer, please contact us for more details.', 'Мы отклонили ваш банковский перевод. Пожалуйста, свяжитесь с нами для получения более подробной информации.'),
(1276, '', NULL, 'you_transmitting_spam_messages._the_system_automatically_restricts_chat_for_you__so_you_can_chat_again_after', 'You transmitting spam messages. the system automatically restricts chat for you, so you can chat again after', 'Вы рассылаете спам-сообщения. система автоматически ограничивает чат для вас, поэтому вы можете снова общаться после'),
(1277, '', NULL, 'options', 'options', 'опции'),
(1278, '', NULL, 'blog', 'Blog', 'Блог'),
(1279, '', NULL, 'success_stories', 'Success stories', 'Истории успеха'),
(1280, '', NULL, 'add_new_story', 'Add your story', 'Добавьте свою историю'),
(1281, '', NULL, 'create_story', 'Create story', 'Создать историю'),
(1282, '', NULL, 'no_more_stories_to_show.', 'No more stories to show.', 'Нет больше историй для показа.'),
(1283, '', NULL, 'add_new_success_stories', 'Add your successful story', 'Добавьте свою успешную историю'),
(1284, '', NULL, 'story__html_allowed_', 'Story (HTML allowed)', 'История (разрешен HTML)'),
(1285, '', NULL, 'quote', 'Quote', 'Цитировать'),
(1286, '', NULL, 'story_date', 'When this story happened?', 'Когда случилась эта история?'),
(1287, '', NULL, 'please_select_user_first.', 'Please choose with whom you had this story.', 'Пожалуйста, выберите, с кем у вас была эта история.'),
(1288, '', NULL, 'please_select_when_story_started.', 'Please select when the story occurred.', 'Выберите, когда произошла история.'),
(1289, '', NULL, 'please_enter_quote.', 'Please enter a quote.', 'Пожалуйста, введите цитату.'),
(1290, '', NULL, 'please_enter_your_story.', 'Please enter your story.', 'Пожалуйста, введите свою историю.'),
(1291, '', NULL, 'story_add_successfully', 'Your story has been added successfully.', 'Ваша история успешно добавлена.'),
(1292, '', NULL, 'story_add_successfully__please_wait_while_admin_approve_this_story_and_it_will_show_on_site.', 'Your story has been added successfully, please wait while we review your story and approve it.', 'Ваша история была успешно добавлена, пожалуйста, подождите, пока мы рассмотрим вашу историю и одобрим ее.'),
(1293, '', NULL, 'story', 'Story', 'История'),
(1294, '', NULL, '1309', 'Comedy', 'Комедия'),
(1295, '', NULL, '1310', 'Cars and Vehicles', 'Автомобили и транспорт'),
(1296, '', NULL, '1311', 'Economics and Trade', 'Экономика и торговля'),
(1297, '', NULL, '1312', 'Education', 'Образование'),
(1298, '', NULL, '1313', 'Entertainment', 'Развлечения'),
(1299, '', NULL, '1314', 'Movies & Animation', 'Фильмы & Анимация'),
(1300, '', NULL, '1315', 'Gaming', 'Игры'),
(1301, '', NULL, '1316', 'History and Facts', 'История и факты'),
(1302, '', NULL, '1317', 'Live Style', 'Стиль жизни'),
(1303, '', NULL, '1318', 'Natural', 'Естественный'),
(1304, '', NULL, '1319', 'News and Politics', 'Новости и политика'),
(1305, '', NULL, '1320', 'People and Nations', 'Люди и нации'),
(1306, '', NULL, '1321', 'Pets and Animals', 'Домашние животные и животные'),
(1307, '', NULL, '1322', 'Places and Regions', 'Места и регионы'),
(1308, '', NULL, '1323', 'Science and Technology', 'Наука и технология'),
(1309, '', NULL, '1324', 'Sport', 'Спорт'),
(1310, '', NULL, '1325', 'Travel and Events', 'Путешествия и события'),
(1311, '', NULL, '1326', 'Other', 'Другой'),
(1312, '', NULL, 'read_more', 'Read more', 'Читать далее'),
(1313, '', NULL, 'categories', 'Categories', 'Категории'),
(1314, '', NULL, 'no_more_articles_to_show.', 'No more articles to show.', 'Больше нет статей для показа.'),
(1315, '', NULL, 'article', 'Article', 'Статья'),
(1316, '', NULL, 'share_to', 'Share to', 'Поделиться с'),
(1317, '', NULL, 'hot_or_not', 'Hot OR Not', 'Горячий или нет'),
(1318, '', NULL, 'image_verification', 'Image Verification', 'Подтверждение изображения'),
(1319, '', NULL, 'verify_your', 'Verify your', 'Подтвердите свой'),
(1320, '', NULL, 'account', 'account', 'учетная запись'),
(1321, '', NULL, 'you_will_be_required_to_take_a_selfie_holding_the_id_document_next_to_your_face__so_we_can_compare_your_photo_with_your_actual_look.this_is_just_an_additional_security_measure', 'You will be required to take a selfie holding the ID document next to your face, so we can compare your photo with your actual look. This is just an additional security measure.', 'Вам нужно будет сделать селфи, держа документ, удостоверяющий личность, рядом с вашим лицом, чтобы мы могли сравнить вашу фотографию с вашим реальным видом. Это просто дополнительная мера безопасности.'),
(1322, '', NULL, 'take_snapshot', 'Take Snapshot', 'Моментальный снимок'),
(1323, '', NULL, 'retake_snapshot', 'Retake Snapshot', 'Повторно сделать снимок'),
(1324, '', NULL, 'back', 'Back', 'Назад'),
(1325, '', NULL, 'keyword', 'Keyword', 'Ключевое слово'),
(1326, '', NULL, 'no_articles_found', 'No articles found', 'Статьи не найдены'),
(1327, '', NULL, 'tags', 'Tags', 'Теги'),
(1328, '', NULL, 'free', 'Free', 'Свободно'),
(1329, '', NULL, 'brings_out_the_sense_of_adventure_in_me__the_website_is_so_easy_to_use_and_the_possibility_of_meeting_someone_from_another_culture_that_relates_to_me_is_simply_thrilling.', 'Brings out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.', 'Пробуждает во мне чувство приключений! Веб-сайт настолько прост в использовании, и возможность встретить кого-то из другой культуры, которая имеет отношение ко мне, просто захватывающая.'),
(1330, '', NULL, 'brings_out_the_feelings_of_adventure_in_me__the_website_is_so_easy_to_use_and_the_possibility_of_meeting_someone_from_another_culture_that_relates_to_me_is_simply_thrilling.', 'Brings out the feelings of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.', 'Пробуждает во мне чувство приключений! Веб-сайт настолько прост в использовании, и возможность встретить кого-то из другой культуры, которая имеет отношение ко мне, просто захватывающая.'),
(1331, '', NULL, 'produce_out_the_sense_of_adventure_in_me__the_website_is_so_easy_to_use_and_the_possibility_of_meeting_someone_from_another_culture_that_relates_to_me_is_simply_thrilling.', 'produce out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.', 'разбуди во мне жажду приключений! Веб-сайт настолько прост в использовании, и возможность встретить кого-то из другой культуры, которая имеет отношение ко мне, просто захватывающая.'),
(1332, '', NULL, 'bring_out_the_sense_of_adventure_in_me__the_website_is_so_easy_to_use_and_the_possibility_of_meeting_someone_from_another_culture_that_relates_to_me_is_simply_thrilling.', 'bring out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.', 'разбуди во мне жажду приключений! Веб-сайт настолько прост в использовании, и возможность встретить кого-то из другой культуры, которая имеет отношение ко мне, просто захватывающая.'),
(1333, '', NULL, 'this_profile_is_verified_by_photos', 'This profile is verified by user picture. ', 'Этот профиль подтверждается фотографией пользователя.'),
(1334, '', NULL, 'your_account_wait_admin_photo_verification._please_try_again_later.', 'Your account is under review, Please wait until we review your picture and try again later.', 'Ваша учетная запись находится на рассмотрении. Подождите, пока мы проверим вашу фотографию, и повторите попытку позже.'),
(1335, '', NULL, 'your_camera_is_off_or_disconnected__please_connect_your_camera_and_try_again.', 'Your camera is off or disconnected, Please connect your camera and try again.', 'Ваша камера выключена или отсоединена. Подключите камеру и повторите попытку.'),
(1336, '', NULL, 'try_again', 'Try again', 'Попробуйте еще раз'),
(1337, '', NULL, 'you_have_previous_story_with_this_user', 'You have previous story with this user', 'У вас есть предыдущая история с этим пользователем'),
(1338, '', NULL, 'with', 'With', 'С'),
(1339, '', NULL, 'create_story_with_you', 'created a story with you.', 'создал историю с вами.'),
(1340, '', NULL, 'approved_your_story_', 'approved your story!', 'одобрил вашу историю!'),
(1341, '', NULL, 'has_rejected_your_story.', 'has rejected your story.', 'отверг вашу историю.'),
(1342, '', NULL, 'approve_story', 'Approve story', 'Одобрить историю'),
(1343, '', NULL, 'disapprove_story', 'Disapprove story', 'Отклонить историю'),
(1344, '', NULL, 'you_have_story_with', 'You have a story with', 'У вас есть история с'),
(1345, '', NULL, 'on', 'on', 'на'),
(1346, '', NULL, 'story_approved_successfully.', 'Your story has been approved.', 'Ваша история одобрена.'),
(1347, '', NULL, 'story_disapproved_successfully.', 'Your story has been declined.', 'Ваша история отклонена.'),
(1348, '', NULL, 'social_accounts', 'Social accounts', 'Социальные аккаунты'),
(1349, '', NULL, 'publish', 'Publish', 'Публиковать'),
(1350, '', NULL, 'thank_you_for_your_story__we_have_sent_the_story_to__0___once_approved_your_story_will_be_published.', 'Thank you for your story, we have sent the story to {0}, once approved your story will be published.', 'Спасибо за вашу историю, мы отправили ее на адрес {0}, после одобрения ваша история будет опубликована.'),
(1351, '', NULL, 'no_user_found_with_this_name', 'No user found with this name', 'Пользователь с таким именем не найден'),
(1352, '', NULL, 'vk', 'VK', 'ВК'),
(1353, '', NULL, 'type_a_message', 'Type a message', 'Введите сообщение'),
(1354, '', NULL, 'boost_for_free', 'Boost For Free', 'Повышение бесплатно'),
(1355, '', NULL, 'boost_your_profile_for_free_for', 'Boost your profile for free for', 'Прокачайте свой профиль бесплатно за'),
(1356, '', NULL, 'this_profile_is_verified_by_phone', 'This profile is verified by phone', 'Этот профиль подтвержден по телефону'),
(1357, '', NULL, 'your_height_is_required.', 'Your height is required.', 'Нужен ваш рост.'),
(1358, '', NULL, 'name', 'Name', 'Имя'),
(1359, '', NULL, 'card_number', 'Card Number', 'Номер карты'),
(1360, '', NULL, 'pay', 'Pay', 'Платить'),
(1361, '', NULL, 'please_check_your_details', 'Please check your details', 'Пожалуйста, проверьте ваши данные'),
(1362, '', NULL, 'manage_sessions', 'Manage Sessions', 'Управление сессиями'),
(1363, '', NULL, 'platform', 'Platform', 'Платформа'),
(1364, '', NULL, 'last_seen', 'Last seen', 'Последнее посещение'),
(1365, '', NULL, 'os', 'OS', 'Операционные системы'),
(1366, '', NULL, 'browser', 'Browser', 'Браузер'),
(1367, '', NULL, 'action', 'Action', 'Действие'),
(1368, '', NULL, 'error_while_deleting_session__please_try_again_later.', 'Error while deleting session, please try again later.', 'Ошибка при удалении сеанса, повторите попытку позже.'),
(1369, '', NULL, 'session_deleted_successfully.', 'Session has been deleted successfully.', 'Сессия успешно удалена.'),
(1370, '', NULL, 'two-factor_authentication', 'Two-factor authentication', 'Двухфакторная аутентификация'),
(1371, '', NULL, 'turn_on_2-step_login_to_level-up_your_account_s_security__once_turned_on__you_ll_use_both_your_password_and_a_6-digit_security_code_sent_to_your_phone_or_email_to_log_in.', 'Turn on 2-step login to level-up your account&#039;s security, Once turned on, you&#039;ll use both your password and a 6-digit security code sent to your phone or email to log in.', 'Включите двухэтапный вход, чтобы повысить уровень безопасности вашей учетной записи. После включения вы будете использовать как пароль, так и 6-значный код безопасности, отправленный на ваш телефон или электронную почту, для входа в систему.'),
(1372, '', NULL, 'two-factor_authentication_data_saved_successfully.', 'Two-factor authentication data saved successfully.', 'Данные двухфакторной аутентификации успешно сохранены.'),
(1373, '', NULL, 'a_confirmation_email_has_been_sent.', 'A confirmation email has been sent.', 'Письмо с подтверждением отправлено.'),
(1374, '', NULL, 'we_have_sent_an_email_that_contains_the_confirmation_code_to_enable_two-factor_authentication.', 'We have sent an email that contains the confirmation code to enable Two-factor authentication.', 'Мы отправили электронное письмо с кодом подтверждения для включения двухфакторной аутентификации.'),
(1375, '', NULL, 'confirmation_code', 'Confirmation code', 'Код подтверждения'),
(1376, '', NULL, 'please_check_your_details.', 'Please check your details.', 'Пожалуйста, проверьте свои данные.'),
(1377, '', NULL, 'your_e-mail_has_been_successfully_verified.', 'Your e-mail has been successfully verified.', 'Ваш адрес электронной почты успешно подтвержден.'),
(1378, '', NULL, 'phone_number_should_be_as_this_format___90..', 'Phone number should be as this format: +90..', 'Номер телефона должен быть в таком формате: +90..'),
(1379, '', NULL, 'your_phone_number_and_e-mail_have_been_successfully_verified.', 'Your phone number and e-mail have been successfully verified.', 'Ваш номер телефона и адрес электронной почты успешно подтверждены.'),
(1380, '', NULL, 'unusual_login', 'Unusual Login', 'Необычный вход'),
(1381, '', NULL, 'to_log_in__you_need_to_verify_your_identity.', 'To log in, you need to verify your identity.', 'Чтобы войти, вам необходимо подтвердить свою личность.'),
(1382, '', NULL, 'we_have_sent_you_the_confirmation_code_to_your_phone_and_to_your_email_address.', 'We have sent you the confirmation code to your phone and to your email address.', 'Мы отправили вам код подтверждения на ваш телефон и адрес электронной почты.'),
(1383, '', NULL, 'we_have_sent_you_the_confirmation_code_to_your_email_address.', 'We have sent you the confirmation code to your email address.', 'Мы отправили вам код подтверждения на ваш адрес электронной почты.'),
(1384, '', NULL, 'please_enter_confirmation_code.', 'Please enter confirmation code.', 'Пожалуйста, введите код подтверждения.'),
(1385, '', NULL, 'something_went_wrong__please_try_again_later.', 'Something went wrong, please try again later.', 'Что-то пошло не так. Пожалуйста, повторите попытку позже.'),
(1386, '', NULL, 'wrong_confirmation_code.', 'Wrong confirmation code.', 'Неверный код подтверждения.'),
(1387, '', NULL, 'error_while_login__please_try_again_later.', 'Error while login, please try again later.', 'Ошибка при входе, повторите попытку позже.'),
(1388, '', NULL, 'invalid_user_id', 'Invalid User ID', 'Неверный идентификатор пользователя'),
(1389, '', NULL, 'invalid_confirmation_code', 'Invalid confirmation code', 'неверный код подтверждения'),
(1390, '', NULL, 'find_potential_matches_by_country', 'Find potential matches by country', 'Найдите потенциальные совпадения по странам'),
(1391, '', NULL, 'manage_notifications', 'Manage Notifications', 'Управление уведомлениями'),
(1392, '', NULL, 'custom_field', 'Custom field', 'Пользовательское поле'),
(1393, '', NULL, 'food', 'food', 'еда'),
(1394, '', NULL, 'add_media', 'Add Media', 'Добавить медиа'),
(1395, '', NULL, 'add_video', 'Add Video', 'Добавить видео'),
(1396, '', NULL, 'add_photo', 'Add Photo', 'Добавить фото'),
(1397, '', NULL, 'upload', 'Upload', 'Загрузить'),
(1398, '', NULL, 'video_title', 'Video Title', 'Название видео'),
(1399, '', NULL, 'public', 'Public', 'Общественный'),
(1400, '', NULL, 'private', 'Private', 'Частный'),
(1401, '', NULL, 'thumbnail', 'Thumbnail', 'Миниатюра'),
(1402, '', NULL, 'my_affiliates', 'My affiliates', 'Мои партнеры'),
(1403, '', NULL, 'your_affiliate_link_is', 'Your affiliate link is', 'Ваша партнерская ссылка'),
(1404, '', NULL, 'my_balance', 'My balance', 'Мой баланс'),
(1405, '', NULL, 'earn_up_to', 'Earn up to', 'Зарабатывайте до'),
(1406, '', NULL, 'for_each_user_your_refer_to_us__', 'for each user your refer to us !', 'за каждого пользователя, обратившегося к нам!'),
(1407, '', NULL, 'joined', 'joined', 'присоединился'),
(1408, '', NULL, 'payments', 'Payments', 'Платежи'),
(1409, '', NULL, 'your_balance_is', 'Your balance is', 'Ваш баланс'),
(1410, '', NULL, '__minimum_withdrawal_request_is', ', minimum withdrawal request is', ', минимальный запрос на вывод'),
(1411, '', NULL, 'paypal_email', 'PayPal email', 'Электронная почта PayPal'),
(1412, '', NULL, 'request_withdrawal', 'Request withdrawal', 'Запросить вывод'),
(1413, '', NULL, 'your_request_has_been_sent__you__039_ll_receive_an_email_regarding_the_payment_details_soon.', 'Your request has been sent, you&#039;ll receive an email regarding the payment details soon.', 'Ваш запрос отправлен, вскоре вы получите электронное письмо с деталями платежа.'),
(1414, '', NULL, 'requested', 'requested', 'просил'),
(1415, '', NULL, 'payment_history', 'Payment history', 'История платежей'),
(1416, '', NULL, 'approved', 'approved', 'одобренный'),
(1417, '', NULL, 'invalid_amount_value__your_amount_is_', 'Invalid amount value, your amount is:', 'Недопустимое значение суммы. Ваша сумма:'),
(1418, '', NULL, 'add_friend', 'Add Friend', 'Добавить друга'),
(1419, '', NULL, 'unfriend', 'UnFriend', 'UnFriend'),
(1420, '', NULL, 'friend_request_sent', 'Friend request sent', 'Запрос на добавление в друзья отправлен'),
(1421, '', NULL, 'you_already_sent_friend_request.', 'You have already sent a request.', 'Вы уже отправили запрос.'),
(1422, '', NULL, 'success', 'Success', 'Успех'),
(1423, '', NULL, 'confirm_request_when_someone_follows_you__', 'Confirm request when someone follows you?', 'Подтверждать запрос, когда кто-то подписывается на вас?'),
(1424, '', NULL, 'confirm_request_when_someone_request_friend_you__', 'Confirm request when someone request to be a friend with you?', 'Подтверждать запрос, когда кто-то хочет стать вашим другом?'),
(1425, '', NULL, 'created_a_story_with_you.', 'created a story with you.', 'создал историю с вами.'),
(1426, '', NULL, 'accepted_your_friend_request.', 'accepted your friend request.', 'принял ваш запрос на добавление в друзья.'),
(1427, '', NULL, 'declined_your_friend_request.', 'declined your friend request.', 'отклонил ваш запрос на добавление в друзья.'),
(1428, '', NULL, 'send_friend_request_to_you.', 'requested to be a friend with you.', 'просил дружить с тобой.'),
(1429, '', NULL, 'friend_requests', 'Friend requests', 'Запросы друга'),
(1430, '', NULL, 'is_now_in_friend_list.', 'is now in your friend list.', 'теперь в вашем списке друзей.'),
(1431, '', NULL, 'decline_request', 'Decline request', 'Отклонить запрос'),
(1432, '', NULL, 'accept_request', 'Accept request', 'Принять запрос'),
(1433, '', NULL, 'request_your_friendship.', 'requested to be your friend.', 'попросил быть вашим другом.'),
(1434, '', NULL, 'can_not_create_notification', 'can not create notification', 'не могу создать уведомление'),
(1435, '', NULL, 'pending_review', 'pending review', 'ожидает оценки'),
(1436, '', NULL, 'the_username_is_blacklisted_and_not_allowed__please_choose_another_username.', 'The username is blacklisted and not allowed, please choose another username.', 'Имя пользователя занесено в черный список и не разрешено, выберите другое имя пользователя.'),
(1437, '', NULL, 'the_email_provider_is_blacklisted_and_not_allowed__please_choose_another_email_provider.', 'The email provider is blacklisted and not allowed, please choose another email provider.', 'Поставщик электронной почты занесен в черный список и не разрешен. Выберите другого поставщика электронной почты.'),
(1438, '', NULL, 'latest__0__users.', 'Latest {0} users.', 'Последние {0} пользователей.'),
(1439, '', NULL, 'you_reach_to_limit_of_media_uploads.', 'You have reached the limit of media uploads.', 'Вы достигли предела загрузки медиафайлов.'),
(1440, '', NULL, 'email_sent_to', 'Email sent to', 'Е-мейл отправлен'),
(1441, '', NULL, 'error_while_sending_emails', 'Error while sending emails', 'Ошибка при отправке писем'),
(1442, '', NULL, 'under_review', 'Under Review', 'На рассмотрении'),
(1443, '', NULL, 'id', 'id', 'Индонезия'),
(1444, '', NULL, 'ref', 'ref', 'ссылка'),
(1445, '', NULL, 'lang_key', 'lang_key', 'lang_key'),
(1446, '', NULL, 'unlock_private_photo_payment', 'Unlock Private Photo Feature', 'Разблокировать функцию приватного фото'),
(1447, '', NULL, 'to_unlock_private_photo_feature_in_your_account__you_have_to_pay', 'To unlock private photo feature in your account, you can purchase it.', 'Чтобы разблокировать функцию личных фотографий в своей учетной записи, вы можете приобрести ее.'),
(1448, '', NULL, 'unlock_private_photo_feature', 'Unlock Private Photo Feature', 'Разблокировать функцию приватного фото'),
(1449, '', NULL, 'to_unlock_video_upload_feature_in_your_account__you_have_to_pay', 'To unlock private photo feature in your account, you can purchase it.', 'Чтобы разблокировать функцию личных фотографий в своей учетной записи, вы можете приобрести ее.'),
(1450, '', NULL, 'unlock_upload_video_feature', 'Unlock Upload Video Feature', 'Разблокировать функцию загрузки видео'),
(1451, '', NULL, 'unlock_video_upload_feature', 'Unlock Upload Video Feature', 'Разблокировать функцию загрузки видео'),
(1452, '', NULL, 'please_upload_a_photo_with_your_passport___id____your_distinct_photo', 'Please upload a photo with your passport / ID  &amp; your distinct picture.', 'Пожалуйста, загрузите фотографию с вашим паспортом / удостоверением личности & свой отчетливый образ.'),
(1453, '', NULL, 'credit_reward', 'Credit Reward', 'Вознаграждение за кредит'),
(1454, '', NULL, 'congratulation_._you_login_to_our_site_for', 'Congratulation! you logged in to our site for', 'Поздравляем! вы вошли на наш сайт для'),
(1455, '', NULL, 'and_you_earn', 'and you will earn', 'и ты заработаешь'),
(1456, '', NULL, 'user_who_logs_in_consecutively_for', 'Anyone who logs in consecutively for', 'Любой, кто входит в систему последовательно для'),
(1457, '', NULL, 'you_currently_logged_in_for', 'You currently logged in for', 'Вы вошли в систему для'),
(1458, '', NULL, 'your_account_is_waiting_admin_approval.', 'Thank you, Your account is waiting admin approval.', 'Спасибо, ваша учетная запись ожидает одобрения администратора.'),
(1459, '', NULL, 'friend-requests', 'Friend Requests', 'Запросы друга'),
(1460, '', NULL, 'notifications_single', 'Notifications', 'Уведомления'),
(1461, '', NULL, 'for_each_user_your_refer_to_us_and_bought_a_pro_package___credit', 'For every user your refer to us and bought a pro package or credits', 'Для каждого пользователя, обратившегося к нам и купившего профессиональный пакет или кредиты'),
(1462, '', NULL, 'find-matches', 'find-matches', 'найти совпадения'),
(1463, '', NULL, 'gifts', 'Gifts', 'Подарки'),
(1464, '', NULL, 'send_to_you', 'sent to you.', 'отправил вам.'),
(1465, '', NULL, 'no_more_gifts_to_show.', 'No gifts to show.', 'Нет подарков для показа.'),
(1497, '', NULL, 'gift_added', 'Gift added', 'Подарок добавлен'),
(1498, '', NULL, 'send_a_gift_to_you.', 'sent a gift to you.', 'отправил вам подарок.'),
(1499, '', NULL, 'you_must_signup_using__0__only.', 'you must signup using {0} only.', 'вы должны зарегистрироваться, используя только {0}.'),
(1500, '', NULL, 'no_hash', 'No hash', 'Нет хеша'),
(1501, '', NULL, 'no_friend_request_found', 'No friend requests found', 'Заявки на добавление в друзья не найдены'),
(1502, '', NULL, 'friend_request_received', 'Friend request received', 'Получен запрос на добавление в друзья'),
(1503, '', NULL, 'you_are_a_pro_now.', 'You are a pro now.', 'Ты теперь профи.'),
(1504, '', NULL, 'cashfree', 'CashFree', 'НаличныеБесплатно'),
(1505, '', NULL, 'phone_number', 'phone number', 'номер телефона'),
(1506, '', NULL, 'please_wait', 'please wait', 'пожалуйста, подождите'),
(1507, '', NULL, 'iyzipay', 'Iyzipay', 'Ийзипай'),
(1508, '', NULL, 'unknown_error', 'Unknown error occured', 'Произошла неизвестная ошибка'),
(1509, '', NULL, '2checkout', '2Checkout', '2Оформить заказ'),
(1510, '', NULL, 'check_out', 'Check out', 'Проверить'),
(1511, '', NULL, 'address', 'address', 'адрес'),
(1512, '', NULL, 'state', 'state', 'государство'),
(1513, '', NULL, 'zip', 'zip', 'молния'),
(1514, '', NULL, 'please_check_details', 'please check your details.', 'Пожалуйста, проверьте ваши данные.'),
(1515, '', NULL, 'paystack', 'PayStack', 'PayStack'),
(1516, '', NULL, 'my_information', 'My Information', 'Моя информация'),
(1517, '', NULL, 'please_choose_which_information_you_would_like_to_download', 'Please choose which information you would like to download', 'Выберите, какую информацию вы хотите скачать'),
(1518, '', NULL, 'generate_file', 'Generate file', 'Создать файл'),
(1519, '', NULL, 'missing_fields', 'Missing fields', 'Отсутствующие поля'),
(1520, '', NULL, 'cover', 'Cover', 'Покрытие'),
(1521, '', NULL, 'member_type', 'Member Type', 'Тип участника'),
(1522, '', NULL, 'sessions', 'Sessions', 'Сессии'),
(1523, '', NULL, 'media', 'Media', 'СМИ'),
(1524, '', NULL, 'your_file_is_ready_to_download_', 'Your file is ready to download!', 'Ваш файл готов к загрузке!'),
(1525, '', NULL, 'bank', 'Bank', 'Банк'),
(1526, '', NULL, 'withdraw_method', 'Withdraw Method', 'Способ вывода'),
(1527, '', NULL, 'iban', 'iban', 'ибан'),
(1528, '', NULL, 'full_name', 'Full Name', 'ФИО'),
(1529, '', NULL, 'swift_code', 'Swift Code', 'Свифт-код'),
(1530, '', NULL, 'you_have_already_a_pending_request.', 'You have already a pending request.', 'У вас уже есть ожидающий запрос.'),
(1531, '', NULL, 'stream_has_ended', '{{user}} stream has ended.', 'Поток {{user}} завершен.'),
(1532, '', NULL, 'paystack', 'PayStack', 'PayStack'),
(1533, '', NULL, 'end_call', 'End Call', 'Завершить вызов'),
(1534, '', NULL, 'live', 'Live', 'Жить'),
(1535, '', NULL, 'end_live', 'End Live', 'Конец эфира'),
(1536, '', NULL, 'go_live', 'Go Live', 'В прямом эфире'),
(1537, '', NULL, 'mic_source', 'Mic Source', 'Источник микрофона');
INSERT INTO `langs` (`id`, `ref`, `options`, `lang_key`, `english`, `russian`) VALUES
(1538, '', NULL, 'cam_source', 'Cam Source', 'Источник камеры'),
(1539, '', NULL, 'live_videos', 'Live Videos', 'Живые видео'),
(1540, '', NULL, 'live_users', 'Live Users', 'Живые пользователи'),
(1541, '', NULL, 'live-users', 'live-users', 'живые пользователи'),
(1542, '', NULL, 'video', 'video', 'видео'),
(1543, '', NULL, 'is_live', 'is Live', 'жив'),
(1544, '', NULL, 'was_live', 'was Live', 'был в прямом эфире'),
(1545, '', NULL, 'write_a_comment', 'Write a comment', 'Написать комментарий'),
(1546, '', NULL, 'user-live', 'user-live', 'пользователь в прямом эфире'),
(1547, '', NULL, 'no_more_videos_to_show.', 'No more videos to show.', 'Нет больше видео для показа.'),
(1548, '', NULL, 'login_with_qq', 'Login with QQ', 'Войти с QQ'),
(1549, '', NULL, 'login_with_wechat', 'Login with WeChat', 'Войти через WeChat'),
(1550, '', NULL, 'login_with_discord', 'Login with Discord', 'Войти через Дискорд'),
(1551, '', NULL, 'login_with_mailru', 'Login with Mailru', 'Войти с Майлру'),
(1552, '', NULL, 'developers', 'Developers', 'Разработчики'),
(1553, '', NULL, 'create-app', 'create-app', 'создать-приложение'),
(1554, '', NULL, 'create_new_app', 'Create new App', 'Создать новое приложение'),
(1555, '', NULL, 'domain', 'Domain', 'Домен'),
(1556, '', NULL, 'redirect_uri', 'Redirect URI', 'URI перенаправления'),
(1557, '', NULL, 'description', 'Description', 'Описание'),
(1558, '', NULL, 'app', 'app', 'приложение'),
(1559, '', NULL, 'your_application_name._this_is_used_to_attribute_the_source_user-facing_authorization_screens._32_characters_max.', 'Your application name. This is used to attribute the source user-facing authorization screens. 32 characters max.', 'Имя вашего приложения. Это используется для атрибутирования исходных экранов авторизации, обращенных к пользователю. 32 символа макс.'),
(1560, '', NULL, 'your_application_s_publicly_accessible_home_page.', 'Your application&#039;s publicly accessible home page.', 'Общедоступная домашняя страница вашего приложения.'),
(1561, '', NULL, 'where_should_we_return_after_successfully_authenticating_', 'Where should we return after successfully authenticating?', 'Куда мы должны вернуться после успешной аутентификации?'),
(1562, '', NULL, 'your_application_description__which_will_be_shown_in_user-facing_authorization_screens._between_10_and_200_characters_max.', 'Your application description, which will be shown in user-facing authorization screens. Between 10 and 200 characters max.', 'Описание вашего приложения, которое будет отображаться на экранах авторизации, обращенных к пользователю. От 10 до 200 символов макс.'),
(1563, '', NULL, 'image', 'Image', 'Изображение'),
(1564, '', NULL, 'your_application_thumbnail', 'Your application thumbnail', 'Миниатюра вашего приложения'),
(1565, '', NULL, 'choose_image', 'choose image', 'выбрать изображение'),
(1566, '', NULL, 'apps', 'apps', 'Программы'),
(1567, '', NULL, 'create', 'Create', 'Создавать'),
(1568, '', NULL, 'create_app', 'Create App', 'Создать приложение'),
(1569, '', NULL, 'oauth', 'oauth', 'oauth'),
(1570, '', NULL, 'app_permissions', 'App Permissions', 'Разрешения приложения'),
(1571, '', NULL, 'invalid_url', 'Invalid Url', 'Неверный URL'),
(1572, '', NULL, 'are_you_sure_you_want_to_remove_the_video', 'Are you sure you want to remove the video?', 'Вы уверены, что хотите удалить видео?'),
(1573, '', NULL, 'authorize.net', 'Authorize.net', 'Авторизовать.net'),
(1574, '', NULL, 'are_you_sure_you_want_to_remove_this_comment', 'Are you sure you want to remove this comment?', 'Вы уверены, что хотите удалить этот комментарий?'),
(1575, '', NULL, 'securionpay', 'Securionpay', 'Securionpay'),
(1576, '', NULL, 'discussion', 'Discussion', 'Обсуждение'),
(1577, '', NULL, 'invitation_links', 'Invitation Links', 'Пригласительные ссылки'),
(1578, '', NULL, 'available_links', 'Available links', 'Доступные ссылки'),
(1579, '', NULL, 'generated_links', 'Generated links', 'Сгенерированные ссылки'),
(1580, '', NULL, 'used_links', 'Used links', 'Используемые ссылки'),
(1581, '', NULL, 'generate_link', 'Generate link', 'Создать ссылку'),
(1582, '', NULL, 'url', 'url', 'URL'),
(1583, '', NULL, 'invited_user', 'invited user', 'приглашенный пользователь'),
(1584, '', NULL, 'copy', 'copy', 'копировать'),
(1585, '', NULL, 'code_successfully_generated', 'Code successfully generated', 'Код успешно сгенерирован'),
(1586, '', NULL, 'copied', 'copied', 'скопировано'),
(1587, '', NULL, 'function_not_found', 'Function not found', 'Функция не найдена'),
(1588, 'country', '93', 'AF', 'Afghanistan', 'Афганистан'),
(1589, 'country', '355', 'AL', 'Albania', 'Албания'),
(1590, 'country', '213', 'DZ', 'Algeria', 'Алжир'),
(1591, 'country', '1684', 'AS', 'American Samoa', 'американское Самоа'),
(1592, 'country', '376', 'AD', 'Andorra', 'Андорра'),
(1593, 'country', '244', 'AO', 'Angola', 'Ангола'),
(1594, 'country', '1264', 'AI', 'Anguilla', 'Ангилья'),
(1595, 'country', '0', 'AQ', 'Antarctica', 'Антарктида'),
(1596, 'country', '1268', 'AG', 'Antigua and Barbuda', 'Антигуа и Барбуда'),
(1597, 'country', '54', 'AR', 'Argentina', 'Аргентина'),
(1598, 'country', '374', 'AM', 'Armenia', 'Армения'),
(1599, 'country', '297', 'AW', 'Aruba', 'Аруба'),
(1600, 'country', '61', 'AU', 'Australia', 'Австралия'),
(1601, 'country', '43', 'AT', 'Austria', 'Австрия'),
(1602, 'country', '994', 'AZ', 'Azerbaijan', 'Азербайджан'),
(1603, 'country', '1242', 'BS', 'Bahamas', 'Багамы'),
(1604, 'country', '973', 'BH', 'Bahrain', 'Бахрейн'),
(1605, 'country', '880', 'BD', 'Bangladesh', 'Бангладеш'),
(1606, 'country', '1246', 'BB', 'Barbados', 'Барбадос'),
(1607, 'country', '375', 'BY', 'Belarus', 'Беларусь'),
(1608, 'country', '32', 'BE', 'Belgium', 'Бельгия'),
(1609, 'country', '501', 'BZ', 'Belize', 'Белиз'),
(1610, 'country', '229', 'BJ', 'Benin', 'Бенин'),
(1611, 'country', '1441', 'BM', 'Bermuda', 'Бермуды'),
(1612, 'country', '975', 'BT', 'Bhutan', 'Бутан'),
(1613, 'country', '591', 'BO', 'Bolivia', 'Боливия'),
(1614, 'country', '387', 'BA', 'Bosnia and Herzegovina', 'Босния и Герцеговина'),
(1615, 'country', '267', 'BW', 'Botswana', 'Ботсвана'),
(1616, 'country', '0', 'BV', 'Bouvet Island', 'Остров Буве'),
(1617, 'country', '55', 'BR', 'Brazil', 'Бразилия'),
(1618, 'country', '246', 'IO', 'British Indian Ocean Territory', 'Британская территория Индийского океана'),
(1619, 'country', '673', 'BN', 'Brunei Darussalam', 'Бруней-Даруссалам'),
(1620, 'country', '359', 'BG', 'Bulgaria', 'Болгария'),
(1621, 'country', '226', 'BF', 'Burkina Faso', 'Буркина-Фасо'),
(1622, 'country', '257', 'BI', 'Burundi', 'Бурунди'),
(1623, 'country', '855', 'KH', 'Cambodia', 'Камбоджа'),
(1624, 'country', '237', 'CM', 'Cameroon', 'Камерун'),
(1625, 'country', '1', 'CA', 'Canada', 'Канада'),
(1626, 'country', '238', 'CV', 'Cape Verde', 'Кабо-Верде'),
(1627, 'country', '1345', 'KY', 'Cayman Islands', 'Каймановы острова'),
(1628, 'country', '236', 'CF', 'Central African Republic', 'Центрально-Африканская Республика'),
(1629, 'country', '235', 'TD', 'Chad', 'Чад'),
(1630, 'country', '56', 'CL', 'Chile', 'Чили'),
(1631, 'country', '86', 'CN', 'China', 'Китай'),
(1632, 'country', '61', 'CX', 'Christmas Island', 'Остров Рождества'),
(1633, 'country', '672', 'CC', 'Cocos (Keeling) Islands', 'Кокосовые (Килинг) острова'),
(1634, 'country', '57', 'CO', 'Colombia', 'Колумбия'),
(1635, 'country', '269', 'KM', 'Comoros', 'Коморы'),
(1636, 'country', '242', 'CG', 'Congo', 'Конго'),
(1637, 'country', '242', 'CD', 'Congo, the Democratic Republic of the', 'Конго, Демократическая Республика'),
(1638, 'country', '682', 'CK', 'Cook Islands', 'Острова Кука'),
(1639, 'country', '506', 'CR', 'Costa Rica', 'Коста-Рика'),
(1640, 'country', '225', 'CI', 'Cote D\'Ivoire', 'Кот-д\'Ивуар'),
(1641, 'country', '385', 'HR', 'Croatia', 'Хорватия'),
(1642, 'country', '53', 'CU', 'Cuba', 'Куба'),
(1643, 'country', '357', 'CY', 'Cyprus', 'Кипр'),
(1644, 'country', '420', 'CZ', 'Czech Republic', 'Чешская Республика'),
(1645, 'country', '45', 'DK', 'Denmark', 'Дания'),
(1646, 'country', '253', 'DJ', 'Djibouti', 'Джибути'),
(1647, 'country', '1767', 'DM', 'Dominica', 'Доминика'),
(1648, 'country', '1809', 'DO', 'Dominican Republic', 'Доминиканская Респблика'),
(1649, 'country', '626', 'TP', 'East Timor', 'Восточный Тимор'),
(1650, 'country', '593', 'EC', 'Ecuador', 'Эквадор'),
(1651, 'country', '20', 'EG', 'Egypt', 'Египет'),
(1652, 'country', '503', 'SV', 'El Salvador', 'Эль Сальвадор'),
(1653, 'country', '240', 'GQ', 'Equatorial Guinea', 'Экваториальная Гвинея'),
(1654, 'country', '291', 'ER', 'Eritrea', 'Эритрея'),
(1655, 'country', '372', 'EE', 'Estonia', 'Эстония'),
(1656, 'country', '251', 'ET', 'Ethiopia', 'Эфиопия'),
(1657, 'country', '61', 'XA', 'External Territories of Australia', 'Внешние территории Австралии'),
(1658, 'country', '500', 'FK', 'Falkland Islands (Malvinas)', 'Фолклендские (Мальвинские) острова'),
(1659, 'country', '298', 'FO', 'Faroe Islands', 'Фарерские острова'),
(1660, 'country', '679', 'FJ', 'Fiji', 'Фиджи'),
(1661, 'country', '358', 'FI', 'Finland', 'Финляндия'),
(1662, 'country', '33', 'FR', 'France', 'Франция'),
(1663, 'country', '594', 'GF', 'French Guiana', 'Французская Гвиана'),
(1664, 'country', '689', 'PF', 'French Polynesia', 'Французская Полинезия'),
(1665, 'country', '0', 'TF', 'French Southern Territories', 'Южные Французские Территории'),
(1666, 'country', '241', 'GA', 'Gabon', 'Габон'),
(1667, 'country', '220', 'GM', 'Gambia', 'Гамбия'),
(1668, 'country', '995', 'GE', 'Georgia', 'Грузия'),
(1669, 'country', '49', 'DE', 'Germany', 'Германия'),
(1670, 'country', '233', 'GH', 'Ghana', 'Гана'),
(1671, 'country', '350', 'GI', 'Gibraltar', 'Гибралтар'),
(1672, 'country', '30', 'GR', 'Greece', 'Греция'),
(1673, 'country', '299', 'GL', 'Greenland', 'Гренландия'),
(1674, 'country', '1473', 'GD', 'Grenada', 'Гренада'),
(1675, 'country', '590', 'GP', 'Guadeloupe', 'Гваделупа'),
(1676, 'country', '1671', 'GU', 'Guam', 'Гуам'),
(1677, 'country', '502', 'GT', 'Guatemala', 'Гватемала'),
(1678, 'country', '44', 'GG', 'Guernsey and Alderney', 'Гернси и Олдерни'),
(1679, 'country', '224', 'GN', 'Guinea', 'Гвинея'),
(1680, 'country', '245', 'GW', 'Guinea-Bissau', 'Гвинея-Бисау'),
(1681, 'country', '592', 'GY', 'Guyana', 'Гайана'),
(1682, 'country', '509', 'HT', 'Haiti', 'Гаити'),
(1683, 'country', '0', 'HM', 'Heard Island and Mcdonald Islands', 'Остров Херд и острова Макдональдс'),
(1684, 'country', '504', 'HN', 'Honduras', 'Гондурас'),
(1685, 'country', '852', 'HK', 'Hong Kong', 'Гонконг'),
(1686, 'country', '36', 'HU', 'Hungary', 'Венгрия'),
(1687, 'country', '354', 'IS', 'Iceland', 'Исландия'),
(1688, 'country', '91', 'IN', 'India', 'Индия'),
(1689, 'country', '62', 'ID', 'Indonesia', 'Индонезия'),
(1690, 'country', '98', 'IR', 'Iran, Islamic Republic of', 'Иран, Исламская Республика'),
(1691, 'country', '964', 'IQ', 'Iraq', 'Ирак'),
(1692, 'country', '353', 'IE', 'Ireland', 'Ирландия'),
(1693, 'country', '972', 'IL', 'Israel', 'Израиль'),
(1694, 'country', '39', 'IT', 'Italy', 'Италия'),
(1695, 'country', '1876', 'JM', 'Jamaica', 'Ямайка'),
(1696, 'country', '81', 'JP', 'Japan', 'Япония'),
(1697, 'country', '44', 'JE', 'Jersey', 'Джерси'),
(1698, 'country', '962', 'JO', 'Jordan', 'Иордания'),
(1699, 'country', '7', 'KZ', 'Kazakhstan', 'Казахстан'),
(1700, 'country', '254', 'KE', 'Kenya', 'Кения'),
(1701, 'country', '686', 'KI', 'Kiribati', 'Кирибати'),
(1702, 'country', '850', 'KP', 'Korea, Democratic People\'s Republic of', 'Корея, Народно-Демократическая Республика'),
(1703, 'country', '82', 'KR', 'Korea, Republic of', 'Корея, Республика'),
(1704, 'country', '965', 'KW', 'Kuwait', 'Кувейт'),
(1705, 'country', '996', 'KG', 'Kyrgyzstan', 'Кыргызстан'),
(1706, 'country', '856', 'LA', 'Lao People\'s Democratic Republic', 'Лаосская Народно-Демократическая Республика'),
(1707, 'country', '371', 'LV', 'Latvia', 'Латвия'),
(1708, 'country', '961', 'LB', 'Lebanon', 'Ливан'),
(1709, 'country', '266', 'LS', 'Lesotho', 'Лесото'),
(1710, 'country', '231', 'LR', 'Liberia', 'Либерия'),
(1711, 'country', '218', 'LY', 'Libyan Arab Jamahiriya', 'Ливийская арабская джамахирия'),
(1712, 'country', '423', 'LI', 'Liechtenstein', 'Лихтенштейн'),
(1713, 'country', '370', 'LT', 'Lithuania', 'Литва'),
(1714, 'country', '352', 'LU', 'Luxembourg', 'Люксембург'),
(1715, 'country', '853', 'MO', 'Macao', 'Макао'),
(1716, 'country', '389', 'MK', 'Macedonia, the Former Yugoslav Republic of', 'Македония, бывшая югославская республика'),
(1717, 'country', '261', 'MG', 'Madagascar', 'Мадагаскар'),
(1718, 'country', '265', 'MW', 'Malawi', 'Малави'),
(1719, 'country', '60', 'MY', 'Malaysia', 'Малайзия'),
(1720, 'country', '960', 'MV', 'Maldives', 'Мальдивы'),
(1721, 'country', '223', 'ML', 'Mali', 'Мали'),
(1722, 'country', '356', 'MT', 'Malta', 'Мальта'),
(1723, 'country', '1624', 'IM', 'Isle of Man', 'Остров Мэн'),
(1724, 'country', '692', 'MH', 'Marshall Islands', 'Маршалловы острова'),
(1725, 'country', '596', 'MQ', 'Martinique', 'Мартиника'),
(1726, 'country', '222', 'MR', 'Mauritania', 'Мавритания'),
(1727, 'country', '230', 'MU', 'Mauritius', 'Маврикий'),
(1728, 'country', '269', 'YT', 'Mayotte', 'Майотта'),
(1729, 'country', '52', 'MX', 'Mexico', 'Мексика'),
(1730, 'country', '691', 'FM', 'Micronesia, Federated States of', 'Микронезия, Федеративные Штаты'),
(1731, 'country', '373', 'MD', 'Moldova, Republic of', 'Молдова, Республика'),
(1732, 'country', '377', 'MC', 'Monaco', 'Монако'),
(1733, 'country', '976', 'MN', 'Mongolia', 'Монголия'),
(1734, 'country', '1664', 'MS', 'Montserrat', 'Монтсеррат'),
(1735, 'country', '212', 'MA', 'Morocco', 'Марокко'),
(1736, 'country', '258', 'MZ', 'Mozambique', 'Мозамбик'),
(1737, 'country', '95', 'MM', 'Myanmar', 'Мьянма'),
(1738, 'country', '264', 'NA', 'Namibia', 'Намибия'),
(1739, 'country', '674', 'NR', 'Nauru', 'Науру'),
(1740, 'country', '977', 'NP', 'Nepal', 'Непал'),
(1741, 'country', '599', 'AN', 'Netherlands Antilles', 'Нидерландские Антильские острова'),
(1742, 'country', '31', 'NL', 'Netherlands', 'Нидерланды'),
(1743, 'country', '687', 'NC', 'New Caledonia', 'Новая Каледония'),
(1744, 'country', '64', 'NZ', 'New Zealand', 'Новая Зеландия'),
(1745, 'country', '505', 'NI', 'Nicaragua', 'Никарагуа'),
(1746, 'country', '227', 'NE', 'Niger', 'Нигер'),
(1747, 'country', '234', 'NG', 'Nigeria', 'Нигерия'),
(1748, 'country', '683', 'NU', 'Niue', 'Ниуэ'),
(1749, 'country', '672', 'NF', 'Norfolk Island', 'Остров Норфолк'),
(1750, 'country', '1670', 'MP', 'Northern Mariana Islands', 'Северные Марианские острова'),
(1751, 'country', '47', 'NO', 'Norway', 'Норвегия'),
(1752, 'country', '968', 'OM', 'Oman', 'Оман'),
(1753, 'country', '92', 'PK', 'Pakistan', 'Пакистан'),
(1754, 'country', '680', 'PW', 'Palau', 'Палау'),
(1755, 'country', '970', 'PS', 'Palestinian Territory, Occupied', 'Палестинская территория, оккупированная'),
(1756, 'country', '507', 'PA', 'Panama', 'Панама'),
(1757, 'country', '675', 'PG', 'Papua New Guinea', 'Папуа - Новая Гвинея'),
(1758, 'country', '595', 'PY', 'Paraguay', 'Парагвай'),
(1759, 'country', '51', 'PE', 'Peru', 'Перу'),
(1760, 'country', '63', 'PH', 'Philippines', 'Филиппины'),
(1761, 'country', '0', 'PN', 'Pitcairn', 'Питкэрн'),
(1762, 'country', '48', 'PL', 'Poland', 'Польша'),
(1763, 'country', '351', 'PT', 'Portugal', 'Португалия'),
(1764, 'country', '1787', 'PR', 'Puerto Rico', 'Пуэрто-Рико'),
(1765, 'country', '974', 'QA', 'Qatar', 'Катар'),
(1766, 'country', '262', 'RE', 'Reunion', 'Воссоединение'),
(1767, 'country', '40', 'RO', 'Romania', 'Румыния'),
(1768, 'country', '7', 'RU', 'Russian Federation', 'Российская Федерация'),
(1769, 'country', '250', 'RW', 'Rwanda', 'Руанда'),
(1770, 'country', '290', 'SH', 'Saint Helena', 'Святая Елена'),
(1771, 'country', '1869', 'KN', 'Saint Kitts and Nevis', 'Сент-Китс и Невис'),
(1772, 'country', '1758', 'LC', 'Saint Lucia', 'Сент-Люсия'),
(1773, 'country', '508', 'PM', 'Saint Pierre and Miquelon', 'Сен-Пьер и Микелон'),
(1774, 'country', '1784', 'VC', 'Saint Vincent and the Grenadines', 'Святой Винсент и Гренадины'),
(1775, 'country', '684', 'WS', 'Samoa', 'Самоа'),
(1776, 'country', '378', 'SM', 'San Marino', 'Сан-Марино'),
(1777, 'country', '239', 'ST', 'Sao Tome and Principe', 'Сан-Томе и Принсипи'),
(1778, 'country', '966', 'SA', 'Saudi Arabia', 'Саудовская Аравия'),
(1779, 'country', '221', 'SN', 'Senegal', 'Сенегал'),
(1780, 'country', '381', 'CS', 'Serbia and Montenegro', 'Сербия и Черногория'),
(1781, 'country', '248', 'SC', 'Seychelles', 'Сейшелы'),
(1782, 'country', '232', 'SL', 'Sierra Leone', 'Сьерра-Леоне'),
(1783, 'country', '65', 'SG', 'Singapore', 'Сингапур'),
(1784, 'country', '421', 'SK', 'Slovakia', 'Словакия'),
(1785, 'country', '386', 'SI', 'Slovenia', 'Словения'),
(1786, 'country', '44', 'XG', 'Smaller Territories of the UK', 'Меньшие территории Великобритании'),
(1787, 'country', '677', 'SB', 'Solomon Islands', 'Соломоновы острова'),
(1788, 'country', '252', 'SO', 'Somalia', 'Сомали'),
(1789, 'country', '27', 'ZA', 'South Africa', 'Южная Африка'),
(1790, 'country', '0', 'GS', 'South Georgia and the South Sandwich Islands', 'Южная Георгия и Южные Сандвичевы острова'),
(1791, 'country', '211', 'SS', 'South Sudan', 'южный Судан'),
(1792, 'country', '34', 'ES', 'Spain', 'Испания'),
(1793, 'country', '94', 'LK', 'Sri Lanka', 'Шри-Ланка'),
(1794, 'country', '249', 'SD', 'Sudan', 'Судан'),
(1795, 'country', '597', 'SR', 'Suriname', 'Суринам'),
(1796, 'country', '47', 'SJ', 'Svalbard and Jan Mayen', 'Шпицберген и Ян-Майен'),
(1797, 'country', '268', 'SZ', 'Swaziland', 'Свазиленд'),
(1798, 'country', '46', 'SE', 'Sweden', 'Швеция'),
(1799, 'country', '41', 'CH', 'Switzerland', 'Швейцария'),
(1800, 'country', '963', 'SY', 'Syrian Arab Republic', 'Сирийская Арабская Республика'),
(1801, 'country', '886', 'TW', 'Taiwan, Province of China', 'Тайвань, провинция Китая'),
(1802, 'country', '992', 'TJ', 'Tajikistan', 'Таджикистан'),
(1803, 'country', '255', 'TZ', 'Tanzania, United Republic of', 'Танзания, Объединенная Республика'),
(1804, 'country', '66', 'TH', 'Thailand', 'Таиланд'),
(1805, 'country', '670', 'TL', 'Timor-Leste', 'Тимор-Лешти'),
(1806, 'country', '228', 'TG', 'Togo', 'Идти'),
(1807, 'country', '690', 'TK', 'Tokelau', 'Токелау'),
(1808, 'country', '676', 'TO', 'Tonga', 'Тонга'),
(1809, 'country', '1868', 'TT', 'Trinidad and Tobago', 'Тринидад и Тобаго'),
(1810, 'country', '216', 'TN', 'Tunisia', 'Тунис'),
(1811, 'country', '90', 'TR', 'Turkey', 'Турция'),
(1812, 'country', '7370', 'TM', 'Turkmenistan', 'Туркменистан'),
(1813, 'country', '1649', 'TC', 'Turks and Caicos Islands', 'острова Теркс и Кайкос'),
(1814, 'country', '688', 'TV', 'Tuvalu', 'Тувалу'),
(1815, 'country', '256', 'UG', 'Uganda', 'Уганда'),
(1816, 'country', '380', 'UA', 'Ukraine', 'Украина'),
(1817, 'country', '971', 'AE', 'United Arab Emirates', 'Объединенные Арабские Эмираты'),
(1818, 'country', '44', 'GB', 'United Kingdom', 'Соединенное Королевство'),
(1819, 'country', '1', 'US', 'United States', 'Соединенные Штаты'),
(1820, 'country', '1', 'UM', 'United States Minor Outlying Islands', 'Малые отдаленные острова США'),
(1821, 'country', '598', 'UY', 'Uruguay', 'Уругвай'),
(1822, 'country', '998', 'UZ', 'Uzbekistan', 'Узбекистан'),
(1823, 'country', '678', 'VU', 'Vanuatu', 'Вануату'),
(1824, 'country', '39', 'VA', 'Holy See (Vatican City State)', 'Святой Престол (город-государство Ватикан)'),
(1825, 'country', '58', 'VE', 'Venezuela', 'Венесуэла'),
(1826, 'country', '84', 'VN', 'Viet Nam', 'Вьетнам'),
(1827, 'country', '1284', 'VG', 'Virgin Islands, British', 'Виргинские острова, Британские'),
(1828, 'country', '1340', 'VI', 'Virgin Islands, U.s.', 'Виргинские острова, США'),
(1829, 'country', '681', 'WF', 'Wallis and Futuna', 'Уоллис и Футуна'),
(1830, 'country', '212', 'EH', 'Western Sahara', 'Западная Сахара'),
(1831, 'country', '967', 'YE', 'Yemen', 'Йемен'),
(1832, 'country', '38', 'YU', 'Yugoslavia', 'Югославия'),
(1833, 'country', '260', 'ZM', 'Zambia', 'Замбия'),
(1834, 'country', '263', 'ZW', 'Zimbabwe', 'Зимбабве'),
(1835, '', 'swedish', 'swedish', 'swedish', 'шведский'),
(1836, '', 'russian', 'russian', 'russian', 'русский'),
(1837, '', NULL, '3d_printing', '3D printing', NULL),
(1838, '', NULL, 'acroyoga', 'Acroyoga', NULL),
(1839, '', NULL, 'acting', 'Acting', NULL),
(1840, '', NULL, 'aerial_silk', 'Aerial silk', NULL),
(1841, '', NULL, 'airbrushing', 'Airbrushing', NULL),
(1842, '', NULL, 'amateur_radio', 'Amateur radio', NULL),
(1843, '', NULL, 'animation', 'Animation', NULL),
(1844, '', NULL, 'anime', 'Anime', NULL),
(1845, '', NULL, 'aquascaping', 'Aquascaping', NULL),
(1846, '', NULL, 'art', 'Art', NULL),
(1847, '', NULL, 'astrology', 'Astrology', NULL),
(1848, '', NULL, 'baking', 'Baking', NULL),
(1849, '', NULL, 'barbershop_music', 'Barbershop Music', NULL),
(1850, '', NULL, 'baton_twirling', 'Baton twirling', NULL),
(1851, '', NULL, 'beatboxing', 'Beatboxing', NULL),
(1852, '', NULL, 'beer_tasting', 'Beer tasting', NULL),
(1853, '', NULL, 'bell_ringing', 'Bell ringing', NULL),
(1854, '', NULL, 'binge-watching', 'Binge-watching', NULL),
(1855, '', NULL, 'blogging', 'Blogging', NULL),
(1856, '', NULL, 'board_tabletop_games', 'Board/tabletop games', NULL),
(1857, '', NULL, 'book_discussion_clubs', 'Book discussion clubs', NULL),
(1858, '', NULL, 'book_restoration', 'Book restoration', NULL),
(1859, '', NULL, 'bowling', 'Bowling', NULL),
(1860, '', NULL, 'brazilian_jiu-jitsu', 'Brazilian jiu-jitsu', NULL),
(1861, '', NULL, 'breadmaking', 'Breadmaking', NULL),
(1862, '', NULL, 'bullet_journaling', 'Bullet journaling', NULL),
(1863, '', NULL, 'calligraphy', 'Calligraphy', NULL),
(1864, '', NULL, 'candle_making', 'Candle making', NULL),
(1865, '', NULL, 'candy_making', 'Candy making', NULL),
(1866, '', NULL, 'car_fixing_building', 'Car fixing building', NULL),
(1867, '', NULL, 'card_games', 'Card games', NULL),
(1868, '', NULL, 'cardistry', 'Cardistry', NULL),
(1869, '', NULL, 'ceramics', 'Ceramics', NULL),
(1870, '', NULL, 'chatting', 'Chatting', NULL),
(1871, '', NULL, 'cheesemaking', 'Cheesemaking', NULL),
(1872, '', NULL, 'chess', 'Chess', NULL),
(1873, '', NULL, 'cleaning', 'Cleaning', NULL),
(1874, '', NULL, 'clothesmaking', 'Clothesmaking', NULL),
(1875, '', NULL, 'coffee_roasting', 'Coffee roasting', NULL),
(1876, '', NULL, 'collecting', 'Collecting', NULL),
(1877, '', NULL, 'coloring', 'Coloring', NULL),
(1878, '', NULL, 'flag_football', 'Flag football', NULL),
(1879, '', NULL, 'flower_growing', 'Flower growing', NULL),
(1880, '', NULL, 'flying', 'Flying', NULL),
(1881, '', NULL, 'flying_disc', 'Flying disc', NULL),
(1882, '', NULL, 'flying_model_planes', 'Flying model planes', NULL),
(1883, '', NULL, 'foraging', 'Foraging', NULL),
(1884, '', NULL, 'fossicking', 'Fossicking', NULL),
(1885, '', NULL, 'freestyle_football', 'Freestyle football', NULL),
(1886, '', NULL, 'fruit_picking', 'Fruit picking', NULL),
(1887, '', NULL, 'gardening', 'Gardening', NULL),
(1888, '', NULL, 'geocaching', 'Geocaching', NULL),
(1889, '', NULL, 'ghost_hunting', 'Ghost hunting', NULL),
(1890, '', NULL, 'gold_prospecting', 'Gold prospecting', NULL),
(1891, '', NULL, 'graffiti', 'Graffiti', NULL),
(1892, '', NULL, 'groundhopping', 'Groundhopping', NULL),
(1893, '', NULL, 'guerrilla_gardening', 'Guerrilla gardening', NULL),
(1894, '', NULL, 'gymnastics', 'Gymnastics', NULL),
(1895, '', NULL, 'handball', 'Handball', NULL),
(1896, '', NULL, 'herbalism', 'Herbalism', NULL),
(1897, '', NULL, 'herping', 'Herping', NULL),
(1898, '', NULL, 'your_x4_likes_will_expire_in', 'Your x4 likes will expire in', NULL),
(1899, '', NULL, 'index', 'index', NULL),
(1900, '', NULL, 'steps', 'steps', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `langs_rus1`
--

CREATE TABLE `langs_rus1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref` varchar(250) NOT NULL DEFAULT '',
  `options` text DEFAULT NULL,
  `lang_key` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `english` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `russian` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `langs_rus1`
--

INSERT INTO `langs_rus1` (`id`, `ref`, `options`, `lang_key`, `english`, `russian`) VALUES
(1, '', NULL, 'male', 'Male', 'Male'),
(2, '', NULL, 'english', 'English', 'English'),
(4, '', NULL, 'sandy', 'Sandy', 'Sandy'),
(5, '', NULL, 'about_a_minute_ago', 'about a minute ago', 'about a minute ago'),
(6, '', NULL, 'female', 'Female', 'Female'),
(7, '', NULL, '141_cm', '141 cm', '141 cm'),
(8, '', NULL, '143_cm', '143 cm', '143 cm'),
(9, '', NULL, 'white', 'White', 'White'),
(11, '', NULL, 'just_now', 'Just now', 'Just now'),
(12, '', NULL, 'about', 'About', 'About'),
(13, '', NULL, 'view_profile', 'View Profile', 'View Profile'),
(14, '', NULL, '_d_years_ago', '%d years ago', '%d years ago'),
(15, '', NULL, 'find_matches', 'Find Matches', 'Find Matches'),
(16, '', NULL, 'premium', 'Premium', 'Premium'),
(17, '', NULL, 'boost_me_', 'Boost me!', 'Boost me!'),
(18, '', NULL, 'credits', 'Credits', 'Credits'),
(19, '', NULL, 'profile', 'Profile', 'Profile'),
(20, '', NULL, 'matches', 'Matches', 'Matches'),
(21, '', NULL, 'visits', 'Visitors', 'Visitors'),
(22, '', NULL, 'likes', 'Likes', 'Likes'),
(23, '', NULL, 'people_i_liked', 'People I Liked', 'People I Liked'),
(24, '', NULL, 'people_i_disliked', 'People I Disliked', 'People I Disliked'),
(25, '', NULL, 'settings', 'Settings', 'Settings'),
(26, '', NULL, 'transactions', 'Transactions', 'Transactions'),
(27, '', NULL, 'admin_panel', 'Admin Panel', 'Admin Panel'),
(28, '', NULL, 'log_out', 'Log Out', 'Log Out'),
(29, '', NULL, 'messenger', 'Messenger', 'Messenger'),
(30, '', NULL, 'active_status', 'Active Status', 'Active Status'),
(31, '', NULL, 'offline', 'Offline', 'Offline'),
(32, '', NULL, 'online', 'Online', 'Online'),
(33, '', NULL, 'mark_all_as_read', 'Mark all as read', 'Mark all as read'),
(34, '', NULL, 'search_for_chats', 'Search for conversations', 'Search for conversations'),
(35, '', NULL, 'reset', 'Reset', 'Reset'),
(36, '', NULL, 'all', 'All', 'All'),
(37, '', NULL, 'no_more_messages_to_show.', 'No more messages to show.', 'No more messages to show.'),
(38, '', NULL, 'load_more...', 'Load more', 'Load more'),
(39, '', NULL, 'stickers', 'Stickers', 'Stickers'),
(40, '', NULL, 'very_low', 'Very low', 'Very low'),
(41, '', NULL, 'popularity', 'Popularity', 'Popularity'),
(42, '', NULL, 'increase', 'Increase', 'Increase'),
(43, '', NULL, 'premium_users', 'Premium Users', 'Premium Users'),
(44, '', NULL, 'add_me', 'Add Me', 'Add Me'),
(45, '', NULL, 'who_ages', 'who ages', 'who ages'),
(46, '', NULL, 'located_within', 'located within', 'located within'),
(47, '', NULL, 'km_of', 'km of', 'km of'),
(48, '', NULL, 'apply_filters', 'Apply Filters', 'Apply Filters'),
(49, '', NULL, 'close_filters', 'Close Filters', 'Close Filters'),
(50, '', NULL, 'basic', 'Basic', 'Basic'),
(51, '', NULL, 'looks', 'Looks', 'Looks'),
(52, '', NULL, 'background', 'Background', 'Background'),
(53, '', NULL, 'lifestyle', 'Lifestyle', 'Lifestyle'),
(54, '', NULL, 'more', 'More', 'More'),
(55, '', NULL, 'gender', 'Gender', 'Gender'),
(56, '', NULL, 'location', 'Location', 'Location'),
(57, '', NULL, 'start_typing..', 'Start typing..', 'Start typing..'),
(58, '', NULL, 'ages', 'Ages', 'Ages'),
(59, '', NULL, 'distance', 'Distance', 'Distance'),
(60, '', NULL, 'search', 'Search', 'Search'),
(61, '', NULL, 'height', 'Height', 'Height'),
(62, '', NULL, 'body_type', 'Body type', 'Body type'),
(63, '', NULL, 'language', 'Language', 'Language'),
(64, '', NULL, 'ethnicity', 'Ethnicity', 'Ethnicity'),
(65, '', NULL, 'religion', 'Religion', 'Religion'),
(66, '', NULL, 'status', 'Status', 'Status'),
(67, '', NULL, 'smokes', 'Smokes', 'Smokes'),
(68, '', NULL, 'drinks', 'Drinks', 'Drinks'),
(69, '', NULL, 'by_interest', 'By Interest', 'By Interest'),
(70, '', NULL, 'e.g.__singing', 'e.g Singing', 'e.g Singing'),
(71, '', NULL, 'education', 'Education', 'Education'),
(72, '', NULL, 'pets', 'Pets', 'Pets'),
(73, '', NULL, 'no_more_users_to_show.', 'No more users to show', 'No more users to show'),
(74, '', NULL, 'random_users', 'Random Users', 'Random Users'),
(75, '', NULL, 'copyright', 'Copyright', 'Copyright'),
(76, '', NULL, 'all_rights_reserved', 'All rights reserved', 'All rights reserved'),
(77, '', NULL, 'about_us', 'About Us', 'About Us'),
(78, '', NULL, 'terms', 'Terms', 'Terms'),
(79, '', NULL, 'privacy_policy', 'Privacy Policy', 'Privacy Policy'),
(80, '', NULL, 'contact', 'Contact', 'Contact'),
(81, '', NULL, 'get_seen_more_by_people_around_you_in_find_match.', 'Get seen more by people around you in find match.', 'Get seen more by people around you in find match.'),
(82, '', NULL, 'this_service_costs_you', 'This service costs you', 'This service costs you'),
(83, '', NULL, 'credits_and_will_last_for', 'credits and will last for', 'credits and will last for'),
(84, '', NULL, 'miuntes', 'miuntes', 'miuntes'),
(85, '', NULL, 'cancel', 'Cancel', 'Cancel'),
(86, '', NULL, 'boost_now', 'Boost Now', 'Boost Now'),
(87, '', NULL, 'ago', 'ago', 'ago'),
(88, '', NULL, 'from_now', 'from now', 'from now'),
(89, '', NULL, 'any_moment_now', 'any moment now', 'any moment now'),
(90, '', NULL, '_d_minutes_ago', '%d minutes ago', '%d minutes ago'),
(91, '', NULL, 'about_an_hour_ago', 'about an hour ago', 'about an hour ago'),
(92, '', NULL, '_d_hours_ago', '%d hours ago', '%d hours ago'),
(93, '', NULL, 'a_day_ago', 'a day ago', 'a day ago'),
(94, '', NULL, '_d_days_ago', '%d days ago', '%d days ago'),
(95, '', NULL, 'about_a_month_ago', 'about a month ago', 'about a month ago'),
(96, '', NULL, '_d_months_ago', '%d months ago', '%d months ago'),
(97, '', NULL, 'about_a_year_ago', 'about a year ago', 'about a year ago'),
(98, '', NULL, 'loading...', 'Loading..', 'Loading..'),
(99, '', NULL, 'payment_declined', 'Payment declined', 'Payment declined'),
(100, '', NULL, 'amazing', 'Amazing', 'Amazing'),
(101, '', NULL, 'features_you_can___t_live_without', 'features you can’t live without', 'features you can’t live without'),
(102, '', NULL, 'activating_premium_will_help_you_meet_more_people__faster.', 'Activating Premium will help you meet more people, faster.', 'Activating Premium will help you meet more people, faster.'),
(103, '', NULL, 'choose_a_plan', 'Choose a Plan', 'Choose a Plan'),
(104, '', NULL, 'weekly', 'Weekly', 'Weekly'),
(105, '', NULL, 'monthly', 'Monthly', 'Monthly'),
(106, '', NULL, 'most_popular', 'Most popular', 'Most popular'),
(107, '', NULL, 'yearly', 'Yearly', 'Yearly'),
(108, '', NULL, 'lifetime', 'Lifetime', 'Lifetime'),
(109, '', NULL, 'pay_using', 'Pay Using', 'Pay Using'),
(110, '', NULL, 'paypal', 'PayPal', 'PayPal'),
(111, '', NULL, 'card', 'Card', 'Card'),
(112, '', NULL, 'why_choose_premium_membership', 'Why Choose Premium Membership', 'Why Choose Premium Membership'),
(113, '', NULL, 'see_more_stickers_on_chat', 'Get more stickers in chat', 'Get more stickers in chat'),
(114, '', NULL, 'show_in_premium_bar', 'Show yourself in premium bar', 'Show yourself in premium bar'),
(115, '', NULL, 'see_likes_notifications', 'View likes notifications', 'View likes notifications'),
(116, '', NULL, 'get_discount_when_buy_boost_me', 'Get a discount when using \"boost me\"', 'Get a discount when using &quot;boost me&quot;'),
(117, '', NULL, 'display_first_in_find_matches', 'Display first in find matches', 'Display first in find matches'),
(118, '', NULL, 'display_on_top_in_random_users', 'Display on top in random users', 'Display on top in random users'),
(119, '', NULL, 'your_popularity_', 'Your Popularity:', 'Your Popularity:'),
(120, '', NULL, 'increase_your_popularity_with_credits_and_enjoy_the_features.', 'Increase your popularity with credits and enjoy the features.', 'Increase your popularity with credits and enjoy the features.'),
(122, '', NULL, 'x10_visits', 'x10 Visits', 'x10 Visits'),
(123, '', NULL, 'promote_your_profile_by_get_more_visits', 'Promote your profile by getting more visitors', 'Promote your profile by getting more visitors'),
(124, '', NULL, 'this_service_will_cost_you', 'this service will cost you', 'this service will cost you'),
(125, '', NULL, 'for', 'For', 'For'),
(126, '', NULL, 'minutes', 'Minutes', 'Minutes'),
(127, '', NULL, 'buy_now', 'Buy Now', 'Buy Now'),
(128, '', NULL, 'x3_matches', 'x3 Matches', 'x3 Matches'),
(129, '', NULL, 'shown_more_and_rise_up_at_the_same_time', 'Shown more and rise up at the same time', 'Shown more and rise up at the same time'),
(130, '', NULL, 'x4_likes', 'x4 Likes', 'x4 Likes'),
(131, '', NULL, 'tell_everyone_you_re_online_and_be_seen_by_users_who_want_to_chat', 'Tell everyone you&#039;re online and be seen by users who want to chat', 'Tell everyone you&#039;re online and be seen by users who want to chat'),
(132, '', NULL, 'visited_you', 'visited you', 'visited you'),
(133, '', NULL, 'your', 'Your', 'Your'),
(134, '', NULL, 'credits_balance', 'Credits balance', 'Credits balance'),
(135, '', NULL, 'use_your_credits_to', 'Use your Credits to', 'Use your Credits to'),
(136, '', NULL, 'boost_your_profile', 'Boost your profile', 'Boost your profile'),
(137, '', NULL, 'send_a_gift', 'Send a gift', 'Send a gift'),
(138, '', NULL, 'get_seen_100x_in_discover', 'Get seen 100x in Discover', 'Get seen 100x in Discover'),
(139, '', NULL, 'put_yourself_first_in_search', 'Put yourself First in Search', 'Put yourself First in Search'),
(140, '', NULL, 'get_additional_stickers', 'Get additional Stickers', 'Get additional Stickers'),
(141, '', NULL, 'double_your_chances_for_a_friendship', 'Double your chances for a friendship', 'Double your chances for a friendship'),
(142, '', NULL, 'buy_credits', 'Buy Credits', 'Buy Credits'),
(143, '', NULL, 'bag_of_credits', 'Bag of Credits', 'Bag of Credits'),
(144, '', NULL, 'box_of_credits', 'Box of Credits', 'Box of Credits'),
(145, '', NULL, 'chest_of_credits', 'Chest of Credits', 'Chest of Credits'),
(146, '', NULL, 'year', 'year', 'year'),
(147, '', NULL, 'month', 'month', 'month'),
(148, '', NULL, 'day', 'day', 'day'),
(149, '', NULL, 'hour', 'hour', 'hour'),
(150, '', NULL, 'minute', 'minute', 'minute'),
(151, '', NULL, 'second', 'second', 'second'),
(152, '', NULL, 'years', 'years', 'years'),
(153, '', NULL, 'months', 'months', 'months'),
(154, '', NULL, 'days', 'days', 'days'),
(155, '', NULL, 'hours', 'hours', 'hours'),
(156, '', NULL, 'seconds', 'seconds', 'seconds'),
(157, '', NULL, 'please_enable_location_services_on_your_browser.', 'Please enable location services on your browser.', 'Please enable location services on your browser.'),
(158, '', NULL, 'change_photo', 'Change Avatar', 'Change Avatar'),
(159, '', NULL, 'upgrade', 'Upgrade', 'Upgrade'),
(160, '', NULL, 'profile_completion', 'Profile Completion', 'Profile Completion'),
(161, '', NULL, 'this_profile_is_verified', 'This profile is verified', 'This profile is verified'),
(162, '', NULL, 'edit', 'Edit', 'Edit'),
(163, '', NULL, 'views', 'Views', 'Views'),
(164, '', NULL, 'add_photos', 'Add Photos', 'Add Photos'),
(165, '', NULL, 'interests', 'Interests', 'Interests'),
(166, '', NULL, 'profile_info', 'Profile Info', 'Profile Info'),
(167, '', NULL, 'preferred_language', 'Preferred Language', 'Preferred Language'),
(168, '', NULL, 'hair_color', 'Hair color', 'Hair color'),
(169, '', NULL, 'upload_completion', 'Upload Completion', 'Upload Completion'),
(170, '', NULL, 'general', 'General', 'General'),
(171, '', NULL, 'privacy', 'Privacy', 'Privacy'),
(172, '', NULL, 'password', 'Password', 'Password'),
(173, '', NULL, 'social_links', 'Social Links', 'Social Links'),
(174, '', NULL, 'blocked_users', 'Blocked Users', 'Blocked Users'),
(175, '', NULL, 'first_name', 'First Name', 'First Name'),
(176, '', NULL, 'last_name', 'Last Name', 'Last Name'),
(177, '', NULL, 'username', 'Username', 'Username'),
(178, '', NULL, 'email', 'Email', 'Email'),
(179, '', NULL, 'choose_your_country', 'Choose your country', 'Choose your country'),
(180, '', NULL, 'country', 'Country', 'Country'),
(181, '', NULL, 'mobile_number', 'Phone Number', 'Phone Number'),
(182, '', NULL, 'birth_date', 'Birthday', 'Birthday'),
(183, '', NULL, 'free_member', 'Free Member', 'Free Member'),
(184, '', NULL, 'pro_member', 'Pro Member', 'Pro Member'),
(185, '', NULL, 'save', 'Save', 'Save'),
(186, '', NULL, 'about_me', 'About Me', 'About Me'),
(187, '', NULL, 'relationship_status', 'Relationship status', 'Relationship status'),
(188, '', NULL, 'work_status', 'Work status', 'Work status'),
(189, '', NULL, 'education_level', 'Education Level', 'Education Level'),
(190, '', NULL, 'character', 'Character', 'Character'),
(191, '', NULL, 'children', 'Children', 'Children'),
(192, '', NULL, 'friends', 'Friends', 'Friends'),
(193, '', NULL, 'i_live_with', 'I live with', 'I live with'),
(194, '', NULL, 'car', 'Car', 'Car'),
(195, '', NULL, 'smoke', 'Smoke', 'Smoke'),
(196, '', NULL, 'drink', 'Drink', 'Drink'),
(197, '', NULL, 'travel', 'Travel', 'Travel'),
(198, '', NULL, 'music_genre', 'Music Genre', 'Music Genre'),
(199, '', NULL, 'dish', 'Dish', 'Dish'),
(200, '', NULL, 'song', 'Song', 'Song'),
(201, '', NULL, 'hobby', 'Hobby', 'Hobby'),
(202, '', NULL, 'city', 'City', 'City'),
(203, '', NULL, 'sport', 'Sport', 'Sport'),
(204, '', NULL, 'book', 'Book', 'Book'),
(205, '', NULL, 'movie', 'Movie', 'Movie'),
(206, '', NULL, 'color', 'Color', 'Color'),
(207, '', NULL, 'tv_show', 'TV Show', 'TV Show'),
(208, '', NULL, 'show_my_profile_on_google', 'Show my profile on search engines?', 'Show my profile on search engines?'),
(209, '', NULL, 'show_my_profile_in_random_users', 'Show my profile in random users?', 'Show my profile in random users?'),
(210, '', NULL, 'show_my_profile_in_match_profiles', 'Show my profile in find match page?', 'Show my profile in find match page?'),
(211, '', NULL, 'new_password', 'New Password', 'New Password'),
(212, '', NULL, 'confirm_new_password', 'Confirm New Password', 'Confirm New Password'),
(213, '', NULL, 'change', 'Change', 'Change'),
(214, '', NULL, 'facebook', 'Facebook', 'Facebook'),
(215, '', NULL, 'twitter', 'Twitter', 'Twitter'),
(216, '', NULL, 'google_plus', 'Google Plus', 'Google Plus'),
(217, '', NULL, 'instagrem', 'instagrem', 'instagrem'),
(218, '', NULL, 'linkedin', 'LinkedIn', 'LinkedIn'),
(219, '', NULL, 'website', 'Website', 'Website'),
(220, '', NULL, 'there_is_no_blocked_user_yet.', 'There are no blocked users found.', 'There are no blocked users found.'),
(221, '', NULL, 'no_transactions_found.', 'No transactions found.', 'No transactions found.'),
(222, '', NULL, 'login', 'Login', 'Login'),
(223, '', NULL, 'register', 'Register', 'Register'),
(224, '', NULL, 'meet_new_and_interesting_people.', 'Meet new and interesting people.', 'Meet new and interesting people.'),
(225, '', NULL, 'join', 'Join', 'Join'),
(226, '', NULL, 'where_you_could_meet_anyone__anywhere_', 'where you could meet anyone, anywhere!', 'where you could meet anyone, anywhere!'),
(227, '', NULL, 'get_started', 'Get Started', 'Get Started'),
(228, '', NULL, 'know_more', 'Know More', 'Know More'),
(229, '', NULL, 'i_am_a', 'I am a', 'I am a'),
(230, '', NULL, 'i_m_looking_for_a', 'I&#039;m looking for a', 'I&#039;m looking for a'),
(231, '', NULL, 'between_ages', 'Between ages', 'Between ages'),
(232, '', NULL, 'and', 'and', 'and'),
(233, '', NULL, 'let_s_begin', 'Let&#039;s Begin', 'Let&#039;s Begin'),
(234, '', NULL, 'how', 'How', 'How'),
(235, '', NULL, 'works', 'Works', 'Works'),
(236, '', NULL, 'create_account', 'Create Account', 'Create Account'),
(237, '', NULL, 'register_for_free___create_up_your_good_looking_profile.', 'Register for free &amp; create up your good looking Profile.', 'Register for free &amp; create up your good looking Profile.'),
(238, '', NULL, 'search___connect_with_matches_which_are_perfect_for_you.', 'Search &amp; Connect with Matches which are perfect for you.', 'Search &amp; Connect with Matches which are perfect for you.'),
(239, '', NULL, 'start_dating', 'Start Dating', 'Start Dating'),
(240, '', NULL, 'start_doing_conversations_and_date_your_best_match.', 'Start doing conversations and date your best match.', 'Start doing conversations and date your best match.'),
(241, '', NULL, 'users_loves_us', 'Users Loves Us', 'Users Loves Us'),
(243, '', NULL, 'best_match', 'Best Match', 'Best Match'),
(244, '', NULL, 'based_on_your_location__we_find_best_and_suitable_matches_for_you.', 'Based on your location, we find best and suitable matches for you.', 'Based on your location, we find best and suitable matches for you.'),
(245, '', NULL, 'fully_secure', 'Fully Secure', 'Fully Secure'),
(247, '', NULL, '100__privacy', '100% Privacy', '100% Privacy'),
(248, '', NULL, 'you_have_full_control_over_your_personal_information_that_you_share.', 'You have full control over your personal information that you share.', 'You have full control over your personal information that you share.'),
(250, '', NULL, 'don_t_have_an_account_', 'Don&#039;t have an account?', 'Don&#039;t have an account?'),
(251, '', NULL, 'welcome_back_', 'Welcome back,', 'Welcome back,'),
(252, '', NULL, 'please_login_to_your_account.', 'Login to your account to continue. ', 'Login to your account to continue.'),
(253, '', NULL, 'username_or_email', 'Username or Email', 'Username or Email'),
(254, '', NULL, 'forgot_password_', 'Forgot Password?', 'Forgot Password?'),
(255, '', NULL, 'login_with_facebook', 'Login with Facebook', 'Login with Facebook'),
(256, '', NULL, 'login_with_twitter', 'Login with Twitter', 'Login with Twitter'),
(257, '', NULL, 'login_with_google', 'Login with Google', 'Login with Google'),
(258, '', NULL, 'login_with_vk', 'Login with VK', 'Login with VK'),
(259, '', NULL, 'already_have_an_account_', 'Already have an account?', 'Already have an account?'),
(260, '', NULL, 'password_recovery_', 'Password recovery,', 'Password recovery,'),
(261, '', NULL, 'please_enter_your_registered_email_to_proceed.', 'Please enter your registered email address to proceed. ', 'Please enter your registered email address to proceed.'),
(262, '', NULL, 'proceed', 'Proceed', 'Proceed'),
(263, '', NULL, 'contact_us', 'Contact Us', 'Contact Us'),
(264, '', NULL, 'how_can_we_help_', 'How can we help?', 'How can we help?'),
(265, '', NULL, 'send', 'Send', 'Send'),
(266, '', NULL, 'terms_of_use', 'Terms of use', 'Terms of use'),
(267, '', NULL, 'get_started_', 'Get started,', 'Get started,'),
(268, '', NULL, 'please_signup_to_continue_your_account.', 'Sign up to get started finding your partner!', 'Sign up to get started finding your partner!'),
(269, '', NULL, 'confirm_password', 'Confirm Password', 'Confirm Password'),
(270, '', NULL, 'people_who_are_interested_in__', 'People who are interested in:', 'People who are interested in:'),
(271, '', NULL, 'no_interested_people_found.', 'No interested people found.', 'No interested people found.'),
(272, '', NULL, 'like', 'Like', 'Like'),
(273, '', NULL, 'dislike', 'Dislike', 'Dislike'),
(274, '', NULL, 'disliked', 'Disliked', 'Disliked'),
(275, '', NULL, 'you_disliked', 'you disliked', 'you disliked'),
(276, '', NULL, 'delete_account', 'Delete Account', 'Delete Account'),
(277, '', NULL, 'liked', 'Liked', 'Liked'),
(278, '', NULL, 'you_liked', 'you liked', 'you liked'),
(279, '', NULL, 'message', 'Message', 'Message'),
(280, '', NULL, 'report_user.', 'Report user.', 'Report user.'),
(281, '', NULL, 'type_here_why_you_want_to_report_this_user.', 'Please let us know why you want to report this person.', 'Please let us know why you want to report this person.'),
(282, '', NULL, 'report', 'Report', 'Report'),
(283, '', NULL, 'send_gift_costs_', 'Send gift costs', 'Send gift costs'),
(284, '', NULL, 'chat', 'Chat', 'Chat'),
(285, '', NULL, 'you_have_reached_your_daily_limit', 'You have reached your daily limit', 'You have reached your daily limit'),
(286, '', NULL, 'you_can_chat_to_new_people_after', 'you can chat to new people after', 'you can chat to new people after'),
(287, '', NULL, 'can_t_wait__this_service_costs_you', 'can&#039;t wait? this service costs you', 'can&#039;t wait? this service costs you'),
(288, '', NULL, 'likes_you', 'likes you', 'likes you'),
(289, '', NULL, 'this_profile_is_not_verified', 'This profile is not verified yet', 'This profile is not verified yet'),
(290, '', NULL, 'block_user', 'Block', 'Block'),
(291, '', NULL, 'report_user', 'Report', 'Report'),
(292, '', NULL, 'buy_now.', 'Buy Now.', 'Buy Now.'),
(293, '', NULL, 'low', 'Low', 'Low'),
(294, '', NULL, 'matched_you', 'matched you', 'matched you'),
(295, '', NULL, 'user__1', 'User #1', 'User #1'),
(297, '', NULL, 'user__2', 'User #2', 'User #2'),
(298, '', NULL, 'user__3', 'User #3', 'User #3'),
(299, '', NULL, 'user__4', 'User #4', 'User #4'),
(308, '', NULL, 'unread_messages', 'Unread Messages', 'Unread Messages'),
(309, '', NULL, 'there_is_no_new_notifications.', 'There are no new notifications', 'There are no new notifications'),
(310, '', NULL, '183_cm__6__039__0__', '183 cm (6 \'0\')', '183 cm (6 &#039;0&#039;)'),
(311, '', NULL, '184_cm', '184 cm', '184 cm'),
(312, '', NULL, '180_cm__5__039__11__', '180 cm (5 \'11\')', '180 cm (5 &#039;11&#039;)'),
(313, '', NULL, 'wanna_get_more__get_premium__or_get_new_stickers_for', 'Wanna get more? get premium! OR get new stickers for', 'Wanna get more? get premium! OR get new stickers for'),
(314, '', NULL, 'get_premium', 'Get premium', 'Get premium'),
(315, '', NULL, 'buy_now_', 'Buy Now!', 'Buy Now!'),
(316, '', NULL, 'liked_you', 'liked you', 'liked you'),
(317, '', NULL, 'arabic', 'Arabic', 'Arabic'),
(318, '', NULL, 'dutch', 'Dutch', 'Dutch'),
(319, '', NULL, 'french', 'French', 'French'),
(320, '', NULL, 'german', 'German', 'German'),
(321, '', NULL, 'italian', 'Italian', 'Italian'),
(322, '', NULL, 'portuguese', 'Portuguese', 'Portuguese'),
(323, '', NULL, 'russian', 'Russian', 'Russian'),
(324, '', NULL, 'spanish', 'Spanish', 'Spanish'),
(325, '', NULL, 'turkish', 'Turkish', 'Turkish'),
(405, '', NULL, 'brown', 'Brown', 'Brown'),
(406, '', NULL, 'black', 'Black', 'Black'),
(407, '', NULL, 'gray_or_partially_gray', 'Gray or Partially Gray', 'Gray or Partially Gray'),
(408, '', NULL, 'red_auburn', 'Red/Auburn', 'Red/Auburn'),
(409, '', NULL, 'blond_strawberry', 'Blond/Strawberry', 'Blond/Strawberry'),
(410, '', NULL, 'blue', 'Blue', 'Blue'),
(411, '', NULL, 'green', 'Green', 'Green'),
(412, '', NULL, 'orange', 'Orange', 'Orange'),
(413, '', NULL, 'pink', 'Pink', 'Pink'),
(414, '', NULL, 'purple', 'Purple', 'Purple'),
(415, '', NULL, 'partly_or_completely_bald', 'Partly or Completely Bald', 'Partly or Completely Bald'),
(416, '', NULL, 'other', 'Other', 'Other'),
(417, '', NULL, 'single', 'Single', 'Single'),
(418, '', NULL, 'married', 'Married', 'Married'),
(419, '', NULL, 'i_m_studying', 'I&#039;m studying', 'I&#039;m studying'),
(420, '', NULL, 'i_m_working', 'I&#039;m working', 'I&#039;m working'),
(421, '', NULL, 'i_m_looking_for_work', 'I&#039;m looking for work', 'I&#039;m looking for work'),
(422, '', NULL, 'i_m_retired', 'I&#039;m retired', 'I&#039;m retired'),
(423, '', NULL, 'self-employed', 'Self-Employed', 'Self-Employed'),
(424, '', NULL, 'secondary_school', 'Secondary school', 'Secondary school'),
(425, '', NULL, 'iti', 'ITI', 'ITI'),
(426, '', NULL, 'college', 'College', 'College'),
(427, '', NULL, 'university', 'University', 'University'),
(428, '', NULL, 'advanced_degree', 'Advanced degree', 'Advanced degree'),
(429, '', NULL, 'middle_eastern', 'Middle Eastern', 'Middle Eastern'),
(430, '', NULL, 'north_african', 'North African', 'North African'),
(431, '', NULL, 'latin_american', 'Latin American', 'Latin American'),
(432, '', NULL, 'mixed', 'Mixed', 'Mixed'),
(433, '', NULL, 'asian', 'Asian', 'Asian'),
(434, '', NULL, 'slim', 'Slim', 'Slim'),
(435, '', NULL, 'sporty', 'Sporty', 'Sporty'),
(436, '', NULL, 'curvy', 'Curvy', 'Curvy'),
(437, '', NULL, 'round', 'Round', 'Round'),
(438, '', NULL, 'supermodel', 'Supermodel', 'Supermodel'),
(439, '', NULL, 'average', 'Average', 'Average'),
(440, '', NULL, 'accommodating', 'Accommodating', 'Accommodating'),
(441, '', NULL, 'adventurous', 'Adventurous', 'Adventurous'),
(442, '', NULL, 'calm', 'Calm', 'Calm'),
(443, '', NULL, 'careless', 'Careless', 'Careless'),
(444, '', NULL, 'cheerful', 'Cheerful', 'Cheerful'),
(445, '', NULL, 'demanding', 'Demanding', 'Demanding'),
(446, '', NULL, 'extroverted', 'Extroverted', 'Extroverted'),
(447, '', NULL, 'honest', 'Honest', 'Honest'),
(448, '', NULL, 'generous', 'Generous', 'Generous'),
(449, '', NULL, 'humorous', 'Humorous', 'Humorous'),
(450, '', NULL, 'introverted', 'Introverted', 'Introverted'),
(451, '', NULL, 'liberal', 'Liberal', 'Liberal'),
(452, '', NULL, 'lively', 'Lively', 'Lively'),
(453, '', NULL, 'loner', 'Loner', 'Loner'),
(454, '', NULL, 'nervous', 'Nervous', 'Nervous'),
(455, '', NULL, 'possessive', 'Possessive', 'Possessive'),
(456, '', NULL, 'quiet', 'Quiet', 'Quiet'),
(457, '', NULL, 'reserved', 'Reserved', 'Reserved'),
(458, '', NULL, 'sensitive', 'Sensitive', 'Sensitive'),
(459, '', NULL, 'shy', 'Shy', 'Shy'),
(460, '', NULL, 'social', 'Social', 'Social'),
(461, '', NULL, 'spontaneous', 'Spontaneous', 'Spontaneous'),
(462, '', NULL, 'stubborn', 'Stubborn', 'Stubborn'),
(463, '', NULL, 'suspicious', 'Suspicious', 'Suspicious'),
(464, '', NULL, 'thoughtful', 'Thoughtful', 'Thoughtful'),
(465, '', NULL, 'proud', 'Proud', 'Proud'),
(466, '', NULL, 'considerate', 'Considerate', 'Considerate'),
(467, '', NULL, 'friendly', 'Friendly', 'Friendly'),
(468, '', NULL, 'polite', 'Polite', 'Polite'),
(469, '', NULL, 'reliable', 'Reliable', 'Reliable'),
(470, '', NULL, 'careful', 'Careful', 'Careful'),
(471, '', NULL, 'helpful', 'Helpful', 'Helpful'),
(472, '', NULL, 'patient', 'Patient', 'Patient'),
(473, '', NULL, 'optimistic', 'Optimistic', 'Optimistic'),
(474, '', NULL, 'no__never', 'No, never', 'No, never'),
(475, '', NULL, 'someday__maybe', 'Someday, maybe', 'Someday, maybe'),
(476, '', NULL, 'expecting', 'Expecting', 'Expecting'),
(477, '', NULL, 'i_already_have_kids', 'I already have kids', 'I already have kids'),
(478, '', NULL, 'i_have_kids_and_don_t_want_more', 'I have kids and don&#039;t want more', 'I have kids and don&#039;t want more'),
(479, '', NULL, 'no_friends', 'No friends', 'No friends'),
(480, '', NULL, 'some_friends', 'Some friends', 'Some friends'),
(481, '', NULL, 'many_friends', 'Many friends', 'Many friends'),
(482, '', NULL, 'only_good_friends', 'Only good friends', 'Only good friends'),
(483, '', NULL, 'none', 'None', 'None'),
(484, '', NULL, 'have_pets', 'Have pets', 'Have pets'),
(485, '', NULL, 'alone', 'Alone', 'Alone'),
(486, '', NULL, 'parents', 'Parents', 'Parents'),
(487, '', NULL, 'partner', 'Partner', 'Partner'),
(488, '', NULL, 'my_own_car', 'My own car', 'My own car'),
(489, '', NULL, 'muslim', 'Muslim', 'Muslim'),
(490, '', NULL, 'atheist', 'Atheist', 'Atheist'),
(491, '', NULL, 'buddhist', 'Buddhist', 'Buddhist'),
(492, '', NULL, 'catholic', 'Catholic', 'Catholic'),
(493, '', NULL, 'christian', 'Christian', 'Christian'),
(494, '', NULL, 'hindu', 'Hindu', 'Hindu'),
(495, '', NULL, 'jewish', 'Jewish', 'Jewish'),
(496, '', NULL, 'agnostic', 'Agnostic', 'Agnostic'),
(497, '', NULL, 'sikh', 'Sikh', 'Sikh'),
(498, '', NULL, 'never', 'Never', 'Never'),
(499, '', NULL, 'i_smoke_sometimes', 'I smoke sometimes', 'I smoke sometimes'),
(500, '', NULL, 'chain_smoker', 'Chain Smoker', 'Chain Smoker'),
(501, '', NULL, 'i_drink_sometimes', 'I drink sometimes', 'I drink sometimes'),
(502, '', NULL, 'yes__all_the_time', 'Yes, all the time', 'Yes, all the time'),
(503, '', NULL, 'yes__sometimes', 'Yes, sometimes', 'Yes, sometimes'),
(504, '', NULL, 'not_very_much', 'Not very much', 'Not very much'),
(505, '', NULL, 'no', 'No', 'Norway'),
(507, '', NULL, 'avatar', 'Avatar', 'Avatar'),
(508, '', NULL, 'info', 'Info', 'Info'),
(509, '', NULL, 'finish', 'Finish', 'Finish'),
(510, '', NULL, 'people_want_to_see_what_you_look_like_', 'people want to see what you look like!', 'people want to see what you look like!'),
(511, '', NULL, 'upload_images_to_set_your_profile_picture_image.', 'Upload photos to set your profile picture.', 'Upload photos to set your profile picture.'),
(512, '', NULL, 'next', 'Next', 'Next'),
(513, '', NULL, 'birthdate', 'Birthday', 'Birthday'),
(514, '', NULL, 'congratulations_', 'Congratulations!', 'Congratulations!'),
(515, '', NULL, 'you_have_successfully_registered.', 'You have successfully created your account, please wait..', 'You have successfully created your account, please wait..'),
(516, '', NULL, 'images_uploaded', 'Photos successfully uploaded.', 'Photos successfully uploaded.'),
(517, '', NULL, 'now__select_any_one_image_that_you_want_to_set_as_your_profile_picture.', 'Now, choose which image you would like to be your avatar.', 'Now, choose which image you would like to be your avatar.'),
(518, '', NULL, 'apply', 'Apply', 'Apply'),
(519, '', NULL, 'please_verify_your_phone_number', 'Please verify your phone number.', 'Please verify your phone number.'),
(520, '', NULL, 'verify_now', 'verify now', 'verify now'),
(522, '', NULL, 'user', 'User', 'User'),
(523, '', NULL, 'admin', 'Admin', 'Admin'),
(524, '', NULL, 'unreport', 'Delete report', 'Delete report'),
(525, '', NULL, 'user_has_been_reported_successfully.', 'Your report has been record, thank you.', 'Your report has been record, thank you.'),
(526, '', NULL, 'remove_report', 'Remove report', 'Remove report'),
(527, '', NULL, 'sent_image_to_you.', 'sent an image to you.', 'sent an image to you.'),
(528, '', NULL, 'very_high', 'Very high', 'Very high'),
(529, '', NULL, 'high', 'High', 'High'),
(530, '', NULL, '180_cm__5__039__11_quot__', '180 cm (5&#039; 11&amp;quot;)', '180 cm (5&#039; 11&amp;quot;)'),
(531, '', NULL, 'get_premium_to_view_who_liked_you_', 'Get premium to view who liked you!', 'Get premium to view who liked you!'),
(532, '', NULL, '__sitename___brings_out_the_sense_of_adventure_in_me__the_website_is_so_easy_to_use_and_the_possibility_of_meeting_someone_from_another_culture_that_r', '{{sitename}} brings out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.', '{{sitename}} brings out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.'),
(533, '', NULL, 'why___sitename___is_best', 'Why {{sitename}} is Best', 'Why {{sitename}} is Best'),
(534, '', NULL, 'your_account_is_safe_on___sitename__._we_never_share_your_data_with_third_party.', 'Your account is Safe on {{sitename}}. We never share your data with third party.', 'Your account is Safe on {{sitename}}. We never share your data with third party.'),
(535, '', NULL, 'connect_with_your_perfect_soulmate_here__on___sitename__.', 'Connect with your perfect Soulmate here, on {{sitename}}.', 'Connect with your perfect Soulmate here, on {{sitename}}.'),
(539, '', NULL, '142_cm__4__039__8_quot__', '142 cm (4&#039; 8&amp;quot;)', '142 cm (4&#039; 8&amp;quot;)'),
(588, '', NULL, 'users', 'users', 'users'),
(590, '', NULL, 'login_with_wowonder', 'Login with Wowonder', 'Login with Wowonder'),
(592, '', NULL, 'meet_more_people_with___sitename___credits', 'Meet more People with {{sitename}} Credits', 'Meet more People with {{sitename}} Credits'),
(595, '', NULL, 'meet_more_people_with___sitename___credits.', 'Meet more People with {{sitename}} Credits.', 'Meet more People with {{sitename}} Credits.'),
(598, '', NULL, 'hack_attempt.', 'Hack attempt.', 'Hack attempt.'),
(599, '', NULL, 'forbidden', 'Forbidden', 'Forbidden'),
(600, '', NULL, 'no_from_id_found.', 'No from id found.', 'No from id found.'),
(601, '', NULL, 'please_recharge_your_credits.', 'please recharge your credits.', 'please recharge your credits.'),
(602, '', NULL, 'message_sent', 'Message sent', 'Message sent'),
(603, '', NULL, 'bad_request', 'Bad Request', 'Bad Request'),
(604, '', NULL, 'no_user_id_found.', 'No user ID found.', 'No user ID found.'),
(605, '', NULL, 'no_credit_available.', 'No credit available.', 'No credit available.'),
(606, '', NULL, 'user_buy_stickers_successfully.', 'User buy stickers successfully.', 'User buy stickers successfully.'),
(607, '', NULL, 'error_while_save_like.', 'Error while save like.', 'Error while save like.'),
(608, '', NULL, 'no_chat_user_id_found.', 'No chat user ID found.', 'No chat user ID found.'),
(609, '', NULL, 'user_buy_new_chat_successfully.', 'User buy new chat successfully.', 'User buy new chat successfully.'),
(610, '', NULL, 'error_while_buy_more_chat_credit.', 'Error while buy more chat credit.', 'Error while buy more chat credit.'),
(611, '', NULL, 'no_page_number_found.', 'no page number found.', 'no page number found.'),
(612, '', NULL, 'no_content', 'No Content', 'No Content'),
(613, '', NULL, 'no_amount_passed', 'No amount passed', 'No amount passed'),
(614, '', NULL, 'amount_is_not_number', 'Amount is not number', 'Amount is not number'),
(615, '', NULL, 'no_description_passed', 'No description passed', 'No description passed'),
(616, '', NULL, 'there_is_no_mode_set_for_this_call', 'There is no mode set for this call', 'There is no mode set for this call'),
(617, '', NULL, 'link_generated_successfully', 'Link generated successfully', 'Link generated successfully'),
(618, '', NULL, 'transaction_user_not_match_current_active_user', 'Transaction user not match current active user', 'Transaction user not match current active user'),
(619, '', NULL, 'error_while_update_balance_after_charging', 'Error While update balance after charging', 'Error While update balance after charging'),
(620, '', NULL, 'missing__url__parameter.', 'Missing `url` parameter.', 'Missing `url` parameter.'),
(621, '', NULL, 'you_can_not_delete_your_profile_image__but_you_can_change_it_first.', 'You can not delete your profile image, but you can change it first.', 'You can not delete your profile image, but you can change it first.'),
(622, '', NULL, 'file_deleted_successfully', 'File deleted successfully', 'File deleted successfully'),
(623, '', NULL, 'you_can_not_use_more_than_30_character_for_first_name.', 'you can not use more than 30 character for first name.', 'you can not use more than 30 character for first name.'),
(624, '', NULL, 'you_can_not_use_more_than_30_character_for_last_name.', 'you can not use more than 30 character for last name.', 'you can not use more than 30 character for last name.'),
(625, '', NULL, 'this_user_name_is_already_exist.', 'This User name is Already exist.', 'This User name is Already exist.'),
(626, '', NULL, 'this_user_name_is_reserved_word._please_choose_anther_username.', 'This User name is reserved word. please choose anther username.', 'This User name is reserved word. please choose anther username.'),
(627, '', NULL, 'empty_user_name.', 'empty user name.', 'empty user name.'),
(628, '', NULL, 'this_e-mail_is_invalid.', 'This e-mail is invalid.', 'This e-mail is invalid.'),
(629, '', NULL, 'this_email_is_already_exist.', 'This email is Already exist.', 'This email is Already exist.'),
(630, '', NULL, 'profile_general_data_saved_successfully.', 'Profile general data saved successfully.', 'Profile general data saved successfully.'),
(631, '', NULL, 'error_while_saving_general_profile_settings.', 'Error while saving general profile settings.', 'Error while saving general profile settings.'),
(632, '', NULL, 'profile_data_saved_successfully.', 'Profile data saved successfully.', 'Profile data saved successfully.'),
(633, '', NULL, 'error_while_saving_profile_settings.', 'Error while saving profile settings.', 'Error while saving profile settings.'),
(634, '', NULL, 'profile_privacy_data_saved_successfully.', 'Profile privacy data saved successfully.', 'Profile privacy data saved successfully.'),
(635, '', NULL, 'passwords_don_t_match.', 'Passwords Don&#039;t Match.', 'Passwords Don&#039;t Match.'),
(636, '', NULL, 'missing_new_password.', 'Missing New password.', 'Missing New password.'),
(637, '', NULL, 'password_is_too_short.', 'Password is too short.', 'Password is too short.'),
(638, '', NULL, 'current_password_missing_.', 'Current password missing .', 'Current password missing .'),
(639, '', NULL, 'current_password_is_wrong__please_check_again.', 'Current password is wrong, please check again.', 'Current password is wrong, please check again.'),
(640, '', NULL, 'password_updated_successfully.', 'Password updated successfully.', 'Password updated successfully.'),
(641, '', NULL, 'error_while_update_your_password__please_check_again.', 'Error while update your password, please check again.', 'Error while update your password, please check again.'),
(642, '', NULL, 'please_enter_just_facebook_profile_user.', 'Please enter just facebook profile user.', 'Please enter just facebook profile user.'),
(643, '', NULL, 'please_enter_just_twitter_profile_user.', 'Please enter just twitter profile user.', 'Please enter just twitter profile user.'),
(644, '', NULL, 'please_enter_just_google_profile_user.', 'Please enter just google profile user.', 'Please enter just google profile user.'),
(645, '', NULL, 'please_enter_just_instagrem_profile_user.', 'Please enter just instagrem profile user.', 'Please enter just instagrem profile user.'),
(646, '', NULL, 'please_enter_just_linkedin_profile_user.', 'Please enter just linkedin profile user.', 'Please enter just linkedin profile user.'),
(647, '', NULL, 'please_enter_valid_domain_name.', 'Please enter valid domain name.', 'Please enter valid domain name.'),
(648, '', NULL, 'social_setting_updated_successfully.', 'Social setting updated successfully.', 'Social setting updated successfully.'),
(649, '', NULL, 'error_while_saving_social_setting.', 'Error while saving social setting.', 'Error while saving social setting.'),
(650, '', NULL, 'emails_setting_saved_successfully.', 'Emails setting saved successfully.', 'Emails setting saved successfully.'),
(651, '', NULL, 'error_while_saving_email_setting.', 'Error while saving email setting.', 'Error while saving email setting.'),
(652, '', NULL, 'missing__to__parameter.', 'Missing `to` parameter.', 'Missing `to` parameter.'),
(653, '', NULL, 'missing__gift_id__parameter.', 'Missing `gift_id` parameter.', 'Missing `gift_id` parameter.'),
(654, '', NULL, 'gift_send_successfully.', 'Gift send successfully.', 'Gift send successfully.'),
(655, '', NULL, 'gift_send_failed.', 'Gift send failed.', 'Gift send failed.'),
(656, '', NULL, 'missing__id__parameter.', 'Missing `id` parameter.', 'Missing `id` parameter.'),
(657, '', NULL, 'user_buy_more_visits_successfully.', 'User buy more visits successfully.', 'User buy more visits successfully.'),
(658, '', NULL, 'error_while_buy_more_visits.', 'Error while buy more visits.', 'Error while buy more visits.'),
(659, '', NULL, 'user_buy_more_matches_successfully.', 'User buy more matches successfully.', 'User buy more matches successfully.'),
(660, '', NULL, 'error_while_buy_more_matches.', 'Error while buy more matches.', 'Error while buy more matches.'),
(661, '', NULL, 'user_buy_more_likes_successfully.', 'User buy more likes successfully.', 'User buy more likes successfully.'),
(662, '', NULL, 'error_while_buy_more_likes.', 'Error while buy more likes.', 'Error while buy more likes.'),
(663, '', NULL, 'current_password_missing.', 'Current password missing.', 'Current password missing.'),
(664, '', NULL, 'your_account_deleted_successfully.', 'Your account deleted successfully.', 'Your account deleted successfully.'),
(665, '', NULL, 'missing_e-mail', 'Missing E-mail', 'Missing E-mail'),
(666, '', NULL, 'this_e-mail_is_invalid', 'This E-mail is invalid', 'This E-mail is invalid'),
(667, '', NULL, 'missing_message', 'Missing message', 'Missing message'),
(668, '', NULL, 'thank_you_for_contacting_us', 'Thank you for contacting us', 'Thank you for contacting us'),
(669, '', NULL, 'message_sent_successfully', 'message sent successfully', 'message sent successfully'),
(670, '', NULL, 'can_not_send_message', 'can not send message', 'can not send message'),
(671, '', NULL, 'no_token', 'No Token', 'No Token'),
(672, '', NULL, 'no_description', 'No description', 'No description'),
(673, '', NULL, 'no_paytype', 'No payType', 'No payType'),
(674, '', NULL, 'payment_successfully', 'Payment successfully', 'Payment successfully'),
(675, '', NULL, 'missing_username.', 'Missing username.', 'Missing username.'),
(676, '', NULL, 'missing_password.', 'Missing password.', 'Missing password.'),
(677, '', NULL, 'this_e-mail_is_already_exist.', 'This E-mail is Already exist.', 'This E-mail is Already exist.'),
(678, '', NULL, 'username_must_be_between_5_32.', 'Username must be between 5/32.', 'Username must be between 5/32.'),
(679, '', NULL, 'invalid_username_characters.', 'Invalid username characters.', 'Invalid username characters.'),
(680, '', NULL, 'registration_successfully', 'Registration successfully', 'Registration successfully'),
(681, '', NULL, 'incorrect_username_or_password.', 'Incorrect username or password.', 'Incorrect username or password.'),
(682, '', NULL, 'resource_endpoint_class_file_not_found.', 'Resource endpoint class file not found.', 'Resource endpoint class file not found.'),
(683, '', NULL, 'login_successfully', 'Login successfully', 'Login successfully'),
(684, '', NULL, 'an_error_occurred_while_processing_the_form.', 'An error occurred while processing the form.', 'An error occurred while processing the form.'),
(685, '', NULL, 'missing_e-mail.', 'Missing E-mail.', 'Missing E-mail.'),
(686, '', NULL, 'this_e-mail', 'This E-mail', 'This E-mail'),
(687, '', NULL, 'is_not_registered.', 'is not registered.', 'is not registered.'),
(688, '', NULL, 'password_reset.', 'password reset.', 'password reset.'),
(689, '', NULL, 'reset_password_email_sent_successfully.', 'Reset password email sent successfully.', 'Reset password email sent successfully.'),
(690, '', NULL, 'server_can_t_send_email_to', 'Server can&#039;t send email to', 'Server can&#039;t send email to'),
(691, '', NULL, 'right_now__please_try_again_later.', 'right now, please try again later.', 'right now, please try again later.'),
(692, '', NULL, 'missing_email_code.', 'Missing email code.', 'Missing email code.'),
(693, '', NULL, 'email_verified_successfully', 'Email verified successfully', 'Email verified successfully'),
(694, '', NULL, 'wrong_email_verification_code.', 'Wrong email verification code.', 'Wrong email verification code.'),
(695, '', NULL, 'no_user_found_with_this_email_or_code.', 'No user found with this email or code.', 'No user found with this email or code.'),
(696, '', NULL, 'you_are_not_allowed_to_open_this_page_directly.', 'You are not allowed to open this page directly.', 'You are not allowed to open this page directly.'),
(697, '', NULL, 'this_email_code_is_invalid.', 'This Email code is invalid.', 'This Email code is invalid.'),
(698, '', NULL, 'empty_password.', 'Empty password.', 'Empty password.'),
(699, '', NULL, 'password_reset_successfully', 'Password reset successfully', 'Password reset successfully'),
(700, '', NULL, 'error_while_login_with_new_password.', 'Error While login with new password.', 'Error While login with new password.'),
(701, '', NULL, 'error_while_save_new_password.', 'Error While save new password.', 'Error While save new password.'),
(702, '', NULL, 'missing_phone_number.', 'Missing phone number.', 'Missing phone number.'),
(703, '', NULL, 'please_provide_international_number_with_your_area_code_starting_with__.', 'Please provide international number with your area code starting with +.', 'Please provide international number with your area code starting with +.'),
(704, '', NULL, 'please_enter_valid_number.', 'Please enter valid number.', 'Please enter valid number.'),
(705, '', NULL, 'invalid_phone_number_characters.', 'Invalid phone number characters.', 'Invalid phone number characters.'),
(706, '', NULL, 'this_mobile_number_is_already_exist.', 'This Mobile number is Already exist.', 'This Mobile number is Already exist.'),
(707, '', NULL, 'mobile_activation_code.', 'Mobile Activation code.', 'Mobile Activation code.'),
(708, '', NULL, 'verification_sms_sent_successfully.', 'Verification sms sent successfully.', 'Verification sms sent successfully.'),
(709, '', NULL, 'can_t_send_verification_sms__please_try_again_later.', 'Can&#039;t send verification sms, please try again later.', 'Can&#039;t send verification sms, please try again later.'),
(710, '', NULL, 'missing_email.', 'Missing email.', 'Missing email.'),
(711, '', NULL, 'thank_you_for_your_registration.', 'Thank you for your registration.', 'Thank you for your registration.'),
(712, '', NULL, 'can_t_send_verification_email__please_try_again_later.', 'Can&#039;t send verification email, please try again later.', 'Can&#039;t send verification email, please try again later.'),
(713, '', NULL, 'you_can_not_like_your_self.', 'You can not like your self.', 'You can not like your self.'),
(714, '', NULL, 'you_can_not_perform_this_action.', 'You can not perform this action.', 'You can not perform this action.'),
(715, '', NULL, 'error_while_deleting_dislike.', 'Error while deleting dislike.', 'Error while deleting dislike.'),
(716, '', NULL, 'user_has_been_blocked_successfully.', 'User has been blocked successfully.', 'User has been blocked successfully.'),
(717, '', NULL, 'error_while_save_block.', 'Error while save block.', 'Error while save block.'),
(718, '', NULL, 'user_has_been_unblocked_successfully.', 'User has been unblocked successfully.', 'User has been unblocked successfully.'),
(719, '', NULL, 'error_while_delete_user_block.', 'Error while delete user block.', 'Error while delete user block.'),
(720, '', NULL, 'error_while_save_report.', 'Error while save report.', 'Error while save report.'),
(721, '', NULL, 'user_has_been_unreported_successfully.', 'User has been unreported successfully.', 'User has been unreported successfully.'),
(722, '', NULL, 'error_while_delete_user_report.', 'Error while delete user report.', 'Error while delete user report.'),
(723, '', NULL, 'email_verification.', 'Email Verification.', 'Email Verification.'),
(724, '', NULL, 'verification_email_sent_successfully.', 'Verification email sent successfully.', 'Verification email sent successfully.'),
(725, '', NULL, 'error_while_update_email_activation.', 'Error while update email activation.', 'Error while update email activation.'),
(726, '', NULL, 'missing_sms_code.', 'Missing sms code.', 'Missing sms code.'),
(727, '', NULL, 'phone_verified_successfully', 'Phone verified successfully', 'Phone verified successfully'),
(728, '', NULL, 'error_while_update_phone_activation.', 'Error while update phone activation.', 'Error while update phone activation.'),
(729, '', NULL, 'wrong_phone_verification_code.', 'Wrong phone verification code.', 'Wrong phone verification code.'),
(730, '', NULL, 'no_user_found_with_this_phone_number_or_code.', 'No user found with this phone number or code.', 'No user found with this phone number or code.'),
(731, '', NULL, 'user_boosted_successfully.', 'User boosted successfully.', 'User boosted successfully.'),
(732, '', NULL, 'error_while_boost_user.', 'Error while boost user.', 'Error while boost user.'),
(733, '', NULL, 'user_unmatched_successfully.', 'User unmatched successfully.', 'User unmatched successfully.'),
(734, '', NULL, 'method_not_allowed', 'Method Not Allowed', 'Method Not Allowed'),
(735, '', NULL, 'this_call_from_test_function', 'this call from test function', 'this call from test function'),
(736, '', NULL, 'credit', 'Credit', 'Credit'),
(737, '', NULL, 'forgot_password', 'Forgot password', 'Forgot password'),
(738, '', NULL, 'home', 'Home', 'Home'),
(739, '', NULL, 'interest', 'Interest', 'Interest'),
(740, '', NULL, 'people_liked_me', 'People liked me', 'People liked me'),
(741, '', NULL, 'email_code_verification', 'Email code verification', 'Email code verification'),
(742, '', NULL, 'premium_membership', 'Premium Membership', 'Premium Membership'),
(743, '', NULL, 'premium_membership_success', 'Premium Membership Success', 'Premium Membership Success'),
(744, '', NULL, 'reset_password', 'Reset Password', 'Reset Password'),
(745, '', NULL, 'general_settings', 'General Settings', 'General Settings'),
(746, '', NULL, 'profile_settings_blocked', 'Profile Settings Blocked', 'Profile Settings Blocked'),
(747, '', NULL, 'delete_profile', 'Delete Profile', 'Delete Profile'),
(748, '', NULL, 'profile_email_settings', 'Profile Email Settings', 'Profile Email Settings'),
(749, '', NULL, 'account_password_settings', 'Account Password Settings', 'Account Password Settings'),
(750, '', NULL, 'privacy_setting', 'Privacy Setting', 'Privacy Setting'),
(751, '', NULL, 'profile_setting', 'Profile Setting', 'Profile Setting'),
(752, '', NULL, 'social_setting', 'Social Setting', 'Social Setting'),
(753, '', NULL, 'profile_steps', 'Profile steps', 'Profile steps'),
(754, '', NULL, 'verify_your_account', 'Verify your account', 'Verify your account'),
(755, '', NULL, 'verify_e-mail_address', 'Verify E-Mail address', 'Verify E-Mail address'),
(756, '', NULL, 'verify_phone', 'Verify Phone', 'Verify Phone'),
(757, '', NULL, 'sms_code_verification', 'SMS code verification', 'SMS code verification'),
(758, '', NULL, 'id_cannot_be_empty__or_character._only_numbers_allowed__or_you_have_call_undefined_method', 'ID cannot be empty, or character. only numbers allowed, or you have call undefined method', 'ID cannot be empty, or character. only numbers allowed, or you have call undefined method'),
(759, '', NULL, 'bad_request__invalid_or_missing_parameter', 'Bad Request, Invalid or missing parameter', 'Bad Request, Invalid or missing parameter'),
(760, '', NULL, 'user_in_black_list', 'User in black list', 'User in black list'),
(761, '', NULL, 'message_sent_successfully.', 'Message sent successfully.', 'Message sent successfully.'),
(762, '', NULL, 'operation_successfully.', 'Operation successfully.', 'Operation successfully.'),
(763, '', NULL, 'options_loaded_successfully.', 'Options loaded successfully.', 'Options loaded successfully.'),
(764, '', NULL, 'user_name_cannot_be_empty', 'User name cannot be empty', 'User name cannot be empty'),
(765, '', NULL, 'password_cannot_be_empty', 'Password cannot be empty', 'Password cannot be empty'),
(766, '', NULL, 'login_successfully__please_wait..', 'Login successfully, Please wait..', 'Login successfully, Please wait..'),
(767, '', NULL, 'could_not_save_session', 'Could not save session', 'Could not save session'),
(768, '', NULL, 'user_not_exist', 'User Not Exist', 'User Not Exist'),
(769, '', NULL, 'wrong_password', 'Wrong password', 'Wrong password'),
(770, '', NULL, 'user_data_unset', 'User data unset', 'User data unset'),
(771, '', NULL, 'username_must_be_between_5_32', 'Username must be between 5/32', 'Username must be between 5/32'),
(772, '', NULL, 'invalid_username_characters', 'Invalid username characters', 'Invalid username characters'),
(773, '', NULL, 'user_name_exists', 'User Name Exists', 'User Name Exists'),
(774, '', NULL, 'email_cannot_be_empty', 'Email cannot be empty', 'Email cannot be empty'),
(775, '', NULL, 'email_already_exists', 'Email Already Exists', 'Email Already Exists'),
(776, '', NULL, 'registration_failed', 'Registration Failed', 'Registration Failed');
INSERT INTO `langs_rus1` (`id`, `ref`, `options`, `lang_key`, `english`, `russian`) VALUES
(777, '', NULL, 'successfully_joined.', 'Successfully joined.', 'Successfully joined.'),
(778, '', NULL, 'could_not_send_verification_email', 'Could not send verification email', 'Could not send verification email'),
(779, '', NULL, 'successfully_joined__please_wait..', 'Successfully joined, Please wait..', 'Successfully joined, Please wait..'),
(780, '', NULL, 'error__an_unknown_error_occurred._please_try_again_later', 'Error: an unknown error occurred. Please try again later', 'Error: an unknown error occurred. Please try again later'),
(781, '', NULL, 'registration_success', 'Registration Success', 'Registration Success'),
(782, '', NULL, 'error_400_-_session_does_not_exist', 'Error 400 - Session does not exist', 'Error 400 - Session does not exist'),
(783, '', NULL, 'successfully_logged_out', 'Successfully logged out', 'Successfully logged out'),
(784, '', NULL, 'no_user_email__sent', 'No user email  sent', 'No user email  sent'),
(785, '', NULL, 'e-mail_is_not_exists', 'E-mail is not exists', 'E-mail is not exists'),
(786, '', NULL, 'a_reset_password_link_has_been_sent_to_your_e-mail_address', 'A reset password link has been sent to your e-mail address', 'A reset password link has been sent to your e-mail address'),
(787, '', NULL, 'you_enter_wrong_password', 'You enter wrong password', 'You enter wrong password'),
(788, '', NULL, 'profile_fetch_successfully', 'Profile fetch successfully', 'Profile fetch successfully'),
(789, '', NULL, 'empty_username', 'Empty username', 'Empty username'),
(790, '', NULL, 'empty_password', 'Empty password', 'Empty password'),
(791, '', NULL, 'id_cannot_be_empty__or_character._only_numbers_allowed', 'ID cannot be empty, or character. only numbers allowed', 'ID cannot be empty, or character. only numbers allowed'),
(792, '', NULL, 'session_add_failed', 'Session add failed', 'Session add failed'),
(793, '', NULL, 'username_cannot_be_empty', 'Username cannot be empty', 'Username cannot be empty'),
(794, '', NULL, 'token_cannot_be_empty', 'Token cannot be empty', 'Token cannot be empty'),
(795, '', NULL, 'could_not_ave_session', 'Could not ave session', 'Could not ave session'),
(796, '', NULL, 'user_not_found', 'User not found', 'User not found'),
(797, '', NULL, 'id_cannot_be_empty__or_character._only_numbers_allowed.', 'ID cannot be empty, or character. only numbers allowed.', 'ID cannot be empty, or character. only numbers allowed.'),
(798, '', NULL, 'error_while_deleting__blocks__data.', 'Error while deleting &quot;Blocks&quot; data.', 'Error while deleting &quot;Blocks&quot; data.'),
(799, '', NULL, 'error_while_deleting__conversations__data.', 'Error while deleting &quot;Conversations&quot; data.', 'Error while deleting &quot;Conversations&quot; data.'),
(800, '', NULL, 'error_while_deleting__likes__data.', 'Error while deleting &quot;Likes&quot; data.', 'Error while deleting &quot;Likes&quot; data.'),
(801, '', NULL, 'error_while_deleting__media_files__data.', 'Error while deleting &quot;Media files&quot; data.', 'Error while deleting &quot;Media files&quot; data.'),
(802, '', NULL, 'error_while_deleting__messages__data.', 'Error while deleting &quot;Messages&quot; data.', 'Error while deleting &quot;Messages&quot; data.'),
(803, '', NULL, 'error_while_deleting__notifications__data.', 'Error while deleting &quot;Notifications&quot; data.', 'Error while deleting &quot;Notifications&quot; data.'),
(804, '', NULL, 'error_while_deleting__reports__data.', 'Error while deleting &quot;Reports&quot; data.', 'Error while deleting &quot;Reports&quot; data.'),
(805, '', NULL, 'error_while_deleting__gifts__data.', 'Error while deleting &quot;Gifts&quot; data.', 'Error while deleting &quot;Gifts&quot; data.'),
(806, '', NULL, 'error_while_deleting__visits__data.', 'Error while deleting &quot;Visits&quot; data.', 'Error while deleting &quot;Visits&quot; data.'),
(807, '', NULL, 'error_while_deleting__user__data.', 'Error while deleting &quot;User&quot; data.', 'Error while deleting &quot;User&quot; data.'),
(808, '', NULL, 'error_while_deleting__sessions__data.', 'Error while deleting &quot;Sessions&quot; data.', 'Error while deleting &quot;Sessions&quot; data.'),
(809, '', NULL, 'error_while_deleting__payments__data.', 'Error while deleting &quot;Payments&quot; data.', 'Error while deleting &quot;Payments&quot; data.'),
(810, '', NULL, 'like_delete_successfully.', 'Like delete successfully.', 'Like delete successfully.'),
(811, '', NULL, 'dislike_delete_successfully.', 'Dislike delete successfully.', 'Dislike delete successfully.'),
(812, '', NULL, 'user_unblocked_successfully.', 'User unblocked successfully.', 'User unblocked successfully.'),
(813, '', NULL, 'user_blocked_successfully.', 'User blocked successfully.', 'User blocked successfully.'),
(814, '', NULL, 'user_unreported_successfully.', 'User unreported successfully.', 'User unreported successfully.'),
(815, '', NULL, 'user_reported_successfully.', 'User reported successfully.', 'User reported successfully.'),
(816, '', NULL, 'user_visited_successfully.', 'User visited successfully.', 'User visited successfully.'),
(817, '', NULL, 'could_not_save_user_visit', 'Could not save user visit', 'Could not save user visit'),
(818, '', NULL, 'gift_sent_successfully.', 'Gift sent successfully.', 'Gift sent successfully.'),
(819, '', NULL, 'could_not_save_user_gift', 'Could not save user gift', 'Could not save user gift'),
(820, '', NULL, 'search_fetch_successfully', 'Search fetch successfully', 'Search fetch successfully'),
(821, '', NULL, 'profile_updated_successfully.', 'Profile updated successfully.', 'Profile updated successfully.'),
(822, '', NULL, 'can_not_update_profile.', 'Can not update profile.', 'Can not update profile.'),
(823, '', NULL, 'profile_avatar_updated_successfully.', 'Profile avatar updated successfully.', 'Profile avatar updated successfully.'),
(824, '', NULL, 'can_not_upload_avatar_file.', 'Can not upload avatar file.', 'Can not upload avatar file.'),
(825, '', NULL, 'google_key__post__is_missing', 'google_key (POST) is missing', 'google_key (POST) is missing'),
(826, '', NULL, 'login_success', 'Login Success', 'Login Success'),
(827, '', NULL, 'empty_social_id', 'Empty social id', 'Empty social id'),
(828, '', NULL, 'payment_processed_successfully', 'Payment processed successfully', 'Payment processed successfully'),
(829, '', NULL, 'error_while_payment_process', 'Error While Payment process', 'Error While Payment process'),
(830, '', NULL, 'visit_you', 'Visit you', 'Visit you'),
(831, '', NULL, 'like_you', 'Like you', 'Like you'),
(832, '', NULL, 'dislike_you', 'Dislike you', 'Dislike you'),
(833, '', NULL, 'send_gift_to_you', 'Send gift to you', 'Send gift to you'),
(834, '', NULL, 'you_got_a_new_match__click_to_view_', 'You got a new match, click to view!', 'You got a new match, click to view!'),
(835, '', NULL, 'choose_your_relationship_status', 'Choose your Relationship status', 'Choose your Relationship status'),
(836, '', NULL, 'choose_your_preferred_language', 'Choose your Preferred Language', 'Choose your Preferred Language'),
(837, '', NULL, 'choose_your_work_status', 'Choose your Work status', 'Choose your Work status'),
(838, '', NULL, 'choose_your_hair_color', 'Choose your Hair Color', 'Choose your Hair Color'),
(839, '', NULL, 'live_with', 'Live with', 'Live with'),
(840, '', NULL, 'enter_a_tag__then_hit_enter', 'Enter a tag, then hit enter', 'Enter a tag, then hit enter'),
(841, '', NULL, '_tag__hit_enter_to_add_more', '+Tag, Hit enter to add more', '+Tag, Hit enter to add more'),
(842, '', NULL, 'i__039_m_studying', 'I&#039;m studying', 'I&#039;m studying'),
(843, '', NULL, 'i__039_m_working', 'I&#039;m working', 'I&#039;m working'),
(844, '', NULL, 'i__039_m_looking_for_work', 'I&#039;m looking for work', 'I&#039;m looking for work'),
(845, '', NULL, 'i__039_m_retired', 'I&#039;m retired', 'I&#039;m retired'),
(877, '', NULL, 'i_have_kids_and_don__039_t_want_more', 'I have kids and don&#039;t want more', 'I have kids and don&#039;t want more'),
(878, '', NULL, 'personality', 'Personality', 'Personality'),
(879, '', NULL, 'favourites', 'Favourites', 'Favourites'),
(880, '', NULL, 'notification_saved_successfully', 'Notification saved successfully', 'Notification saved successfully'),
(881, '', NULL, 'error_found__please_try_again_later.', 'Error found, please try again later.', 'Error found, please try again later.'),
(882, '', NULL, 'return_back', 'Return back', 'Return back'),
(1103, '', NULL, 'choose_your_gender', 'Choose your Gender', 'Choose your Gender'),
(1111, '', NULL, 'enter_a_location', 'Enter a location', 'Enter a location'),
(1116, '', NULL, 'by_creating_your_account__you_agree_to_our', 'By creating your account, you agree to our', 'By creating your account, you agree to our'),
(1117, '', NULL, 'this_phone_number_is_already_exist.', 'This Phone number is Already exist.', 'This Phone number is Already exist.'),
(1120, '', NULL, 'current_password', 'Current Password', 'Current Password'),
(1153, '', NULL, 'delete_account_', 'Delete account?', 'Delete account?'),
(1154, '', NULL, 'are_you_sure_you_want_to_delete_your_account__all_content_including_published_photos_and_other_data_will_be_permanetly_removed_', 'Are you sure you want to delete your account? All content including published photos and other data will be permanetly removed!', 'Are you sure you want to delete your account? All content including published photos and other data will be permanetly removed!'),
(1155, '', NULL, 'delete', 'Delete', 'Delete'),
(1156, '', NULL, 'chat_conversations_fetch_successfully', 'Chat conversations fetch successfully', 'Chat conversations fetch successfully'),
(1158, '', NULL, 'bank_transfer', 'Bank Transfer', 'Bank Transfer'),
(1159, '', NULL, 'close', 'Close', 'Close'),
(1160, '', NULL, 'bank_information', 'Bank Information', 'Bank Information'),
(1161, '', NULL, 'please_transfer_the_amount_of', 'Please transfer the amount of', 'Please transfer the amount of'),
(1162, '', NULL, 'to_this_bank_account_to_buy', 'to this bank account to purchase', 'to this bank account to purchase'),
(1163, '', NULL, 'upload_receipt', 'Upload Receipt', 'Upload Receipt'),
(1164, '', NULL, 'confirm', 'Confirm', 'Confirm'),
(1165, '', NULL, 'your_receipt_uploaded_successfully.', 'Your was receipt successfully uploaded.', 'Your was receipt successfully uploaded.'),
(1166, '', NULL, 'date', 'Date', 'Date'),
(1167, '', NULL, 'processed_by', 'Processed By', 'Processed By'),
(1168, '', NULL, 'amount', 'Amount', 'Amount'),
(1169, '', NULL, 'type', 'Type', 'Type'),
(1170, '', NULL, 'notes', 'Notes', 'Notes'),
(1171, '', NULL, 'plan_premium_membership', 'Plan Premium Membership', 'Plan Premium Membership'),
(1172, '', NULL, 'your_boost_will_expire_in', 'Your boost will expire in', 'Your boost will expire in'),
(1173, '', NULL, 'hide', 'Hide', 'Hide'),
(1174, '', NULL, 'you_reach_the_max_of_swipes_per_day._you_have_to_wait__0__hours_before_you_can_redo_likes_or_upgrade_to_pro_to_for_unlimited.', 'You have reached the maximum amuont of swipes per day, you have to wait {0} hours before you can redo swipes, OR upgrade now to Pro Membership for unlimited swipes and likes.', 'You have reached the maximum amuont of swipes per day, you have to wait {0} hours before you can redo swipes, OR upgrade now to Pro Membership for unlimited swipes and likes.'),
(1175, '', NULL, 'your_payment_was_processed_successfully.', 'Your payment was successfully processed.', 'Your payment was successfully processed.'),
(1176, '', NULL, 'sms', 'SMS', 'SMS'),
(1177, '', NULL, 'sent_you_message_', 'sent you a message!', 'sent you a message!'),
(1178, '', NULL, 'sent_you_a_message_', 'sent you a message!', 'sent you a message!'),
(1179, '', NULL, 'accept', 'Accept', 'Accept'),
(1180, '', NULL, 'decline', 'Decline', 'Decline'),
(1181, '', NULL, 'calling', 'Calling', 'Calling'),
(1182, '', NULL, 'please_wait_for_your_friend_answer.', 'Please wait for your friend\'s answer.', 'Please wait for your friend&#039;s answer.'),
(1183, '', NULL, 'no_answer', 'No answer', 'No answer'),
(1184, '', NULL, 'please_try_again_later.', 'Please try again later.', 'Please try again later.'),
(1185, '', NULL, 'new_video_call', 'New incoming video call', 'New incoming video call'),
(1186, '', NULL, 'wants_to_video_chat_with_you.', 'wants to video chat with you.', 'wants to video chat with you.'),
(1187, '', NULL, 'call_declined', 'Call declined', 'Call declined'),
(1188, '', NULL, 'the_recipient_has_declined_the_call__please_try_again_later.', 'The recipient has declined the call, please try again later.', 'The recipient has declined the call, please try again later.'),
(1189, '', NULL, 'accept___start', 'Accept & Start', 'Accept &amp; Start'),
(1190, '', NULL, 'answered__', 'Answered!', 'Answered!'),
(1191, '', NULL, 'please_wait..', 'Please wait..', 'Please wait..'),
(1192, '', NULL, 'video_call', 'Video Call', 'Video Call'),
(1193, '', NULL, 'new_audio_call', 'New incoming audio call', 'New incoming audio call'),
(1194, '', NULL, 'wants_to_talk_with_you.', 'wants to talk with you.', 'wants to talk with you.'),
(1195, '', NULL, 'audio_call', 'Audio call', 'Audio call'),
(1196, '', NULL, 'talking_with', 'talking with', 'talking with'),
(1197, '', NULL, 'this_website_uses_cookies_to_ensure_you_get_the_best_experience_on_our_website.', 'This website uses cookies to ensure you get the best experience on our website.', 'This website uses cookies to ensure you get the best experience on our website.'),
(1198, '', NULL, 'got_it_', 'Got It!', 'Got It!'),
(1199, '', NULL, 'learn_more', 'Learn More', 'Learn More'),
(1200, '', NULL, 'no_result_found', 'No result found', 'No result found'),
(1201, '', NULL, 'send_gif', 'Send GIF', 'Send GIF'),
(1202, '', NULL, 'search_gifs', 'Search GIFs', 'Search GIFs'),
(1203, '', NULL, 'sticker_added', 'Sticker added', 'Sticker added'),
(1204, '', NULL, 'your_phone_number_is_required.', 'Your phone number is required.', 'Your phone number is required.'),
(1205, '', NULL, 'select_your_country.', 'Please select your country.', 'Please select your country.'),
(1206, '', NULL, 'select_your_birth_date.', 'Please select your birthday.', 'Please select your birthday.'),
(1207, '', NULL, 'my_location', 'My Location', 'My Location'),
(1208, '', NULL, 'or', 'OR', 'OR'),
(1209, '', NULL, 'instagram', 'Instagram', 'Instagram'),
(1210, '', NULL, 'disable', 'disable', 'disable'),
(1211, '', NULL, 'enable', 'enable', 'enable'),
(1212, '', NULL, 'travel_to_another_country__and_relocate_', 'Travel to another country, and relocate!', 'Travel to another country, and relocate!'),
(1213, 'gender', NULL, '4525', 'Male', 'Male'),
(1214, 'gender', NULL, '4526', 'Female', 'Female'),
(1215, '', NULL, 'about_you', 'About You', 'About You'),
(1216, '', NULL, 'km', 'km', 'Comoros'),
(1217, '', NULL, 'message_requests', 'Message requests', 'Message requests'),
(1218, '', NULL, 'all_conversations', 'All conversations', 'All conversations'),
(1219, '', NULL, 'you_can_chat_with_this_user_after', 'You can chat with this profile after', 'You can chat with this profile after'),
(1220, '', NULL, 'hours.', 'hours.', 'hours.'),
(1221, '', NULL, 'this_user_decline_your_chat_before_so_you_can_chat_with_this_user_after', 'This user has declined your chat before, you\'ll be able to chat with this user after', 'This user has declined your chat before, you&#039;ll be able to chat with this user after'),
(1222, '', NULL, 'active', 'active', 'active'),
(1223, '', NULL, 'declined', 'Declined', 'Declined'),
(1224, '', NULL, 'pending', 'Pending', 'Pending'),
(1225, '', NULL, 'night_mode', 'Night mode', 'Night mode'),
(1226, '', NULL, 'day_mode', 'Day mode', 'Day mode'),
(1227, '', NULL, 'we___ll_be_back_soon_', 'We’ll be back soon!', 'We’ll be back soon!'),
(1228, '', NULL, 'sorry_for_the_inconvenience_but_we_rsquo_re_performing_some_maintenance_at_the_moment._if_you_need_help_you_can_always', 'Sorry for the inconvenience but we\'re performing some maintenance at the moment. If you need help you can always', 'Sorry for the inconvenience but we&#039;re performing some maintenance at the moment. If you need help you can always'),
(1229, '', NULL, 'otherwise_we_rsquo_ll_be_back_online_shortly_', 'otherwise we\'ll be back online shortly!', 'otherwise we&#039;ll be back online shortly!'),
(1230, '', NULL, 'declined_your_message_request_', 'declined your message request!', 'declined your message request!'),
(1231, '', NULL, 'accepted_your_message_request_', 'accepted your message request!', 'accepted your message request!'),
(1232, '', NULL, 'we_have_rejected_your_bank_transfer__please_contact_us_for_more_details', 'We have rejected your bank transfer, please contact us for more details.', 'We have rejected your bank transfer, please contact us for more details.'),
(1233, '', NULL, 'we_approved_your_bank_transfer_of__d_', 'We approved your bank transfer of %d!', 'We approved your bank transfer of %d!'),
(1234, '', NULL, 'note', 'Note', 'Note'),
(1235, '', NULL, 'delete_chat', 'Delete chat', 'Delete chat'),
(1236, '', NULL, 'your_x3_matches_will_expire_in', 'Your x3 matches will expire in', 'Your x3 matches will expire in'),
(1237, '', NULL, 'to_get_your_profile_verified_you_have_to_verify_these.', 'To get your profile verified you have to verify these.', 'To get your profile verified you have to verify these.'),
(1238, '', NULL, 'upload_at_least_5_image.', 'Upload at least 5 image.', 'Upload at least 5 image.'),
(1239, '', NULL, 'unblock', 'Unblock', 'Unblock'),
(1240, '', NULL, 'phone_number__e.g__90..', 'Phone number, e.g +90..', 'Phone number, e.g +90..'),
(1241, '', NULL, 'phone_verification_needed', 'Phone verification required', 'Phone verification required'),
(1242, '', NULL, 'phone', 'Phone', 'Phone'),
(1243, '', NULL, 'send_otp', 'Send OTP', 'Send OTP'),
(1244, '', NULL, 'phone_activiation_', 'Phone activiation,', 'Phone activiation,'),
(1245, '', NULL, 'please_enter_the_verification_code_sent_to_your_phone', 'Please enter the verification code that was sent to your phone. ', 'Please enter the verification code that was sent to your phone.'),
(1246, '', NULL, 'resend', 'Re-send', 'Re-send'),
(1247, '', NULL, 'please_verify_your_email_address', 'Please verify your email address.', 'Please verify your email address.'),
(1248, '', NULL, 'error_while_sending_an_sms__please_try_again_later.', 'Error while sending the SMS, please try again later.', 'Error while sending the SMS, please try again later.'),
(1249, '', NULL, 'error_while_submitting_form.', 'Error while submitting form.', 'Error while submitting form.'),
(1250, '', NULL, 'email_verification_needed', 'Email verification required', 'Email verification required'),
(1251, '', NULL, 'email_activiation_', 'Email activiation,', 'Email activiation,'),
(1252, '', NULL, 'please_enter_the_verification_code_sent_to_your_email', 'Please enter the verification code that was sent to your E-mail.', 'Please enter the verification code that was sent to your E-mail.'),
(1253, '', NULL, 'video_and_audio_calls_to_all_users', 'Create unlimited video and audio calls.', 'Create unlimited video and audio calls.'),
(1254, '', NULL, 'latest_users', 'Latest Users', 'Latest Users'),
(1255, '', NULL, 'wanna_get_more__get_new_stickers_for', 'Wanna get more? get new stickers for', 'Wanna get more? get new stickers for'),
(1256, '', NULL, 'this_image_now_is_private.', 'This photo is private.', 'This photo is private.'),
(1257, '', NULL, 'emails', 'Emails', 'Emails'),
(1258, '', NULL, 'email_me_when_someone_views_your_profile', 'Email me when someone views my profile.', 'Email me when someone views my profile.'),
(1259, '', NULL, 'email_me_when_you_get_a_new_message', 'Email me when I get a new message.', 'Email me when I get a new message.'),
(1260, '', NULL, 'email_me_when_someone_like_your_profile', 'Email me when someone like me.', 'Email me when someone like me.'),
(1261, '', NULL, 'email_me_purchase_notifications', 'Email me my purchase notifications.', 'Email me my purchase notifications.'),
(1262, '', NULL, 'email_me_special_offers___promotions', 'Email me special offers & promotions.', 'Email me special offers &amp; promotions.'),
(1263, '', NULL, 'email_me_feature_announcements', 'Email me future announcements.', 'Email me future announcements.'),
(1264, '', NULL, 'email_me_when_someone_like_my_profile', 'Email me when someone like my profile.', 'Email me when someone like my profile.'),
(1265, '', NULL, 'email_me_when_i_get_new_gift', 'Email me when I get a new gift.', 'Email me when I get a new gift.'),
(1266, '', NULL, 'email_me_when_i_get_new_match', 'Email me when I get a new match.', 'Email me when I get a new match.'),
(1267, '', NULL, 'email_me_when_i_get_new_chat_request', 'Email me when I get a new chat request.', 'Email me when I get a new chat request.'),
(1268, '', NULL, 'why__0__is_best', 'Why {0} is Best', 'Why {0} is Best'),
(1269, '', NULL, 'your_account_is_safe_on__0_._we_never_share_your_data_with_third_party.', 'Your account is safe on {0}. We never share your data with third party.', 'Your account is safe on {0}. We never share your data with third party.'),
(1270, '', NULL, 'connect_with_your_perfect_soulmate_here__on__0_.', 'Connect with your perfect Soulmate here, on {0}.', 'Connect with your perfect Soulmate here, on {0}.'),
(1271, '', NULL, 'verification', 'Verification', 'Verification'),
(1272, '', NULL, 'you_have_been_exceed_the_activation_request_limit.', 'You have exceeded the activation request limit.', 'You have exceeded the activation request limit.'),
(1273, '', NULL, 'you_have_to_wait', 'You have to wait', 'You have to wait'),
(1274, '', NULL, 'minutes_before_you_try_to_activate_again.', 'minutes before you try to activate again.', 'minutes before you try to activate again.'),
(1275, '', NULL, 'we_have_rejected_your_bank_transfer__please_contact_us_for_more_details.', 'We have rejected your bank transfer, please contact us for more details.', 'We have rejected your bank transfer, please contact us for more details.'),
(1276, '', NULL, 'you_transmitting_spam_messages._the_system_automatically_restricts_chat_for_you__so_you_can_chat_again_after', 'You transmitting spam messages. the system automatically restricts chat for you, so you can chat again after', 'You transmitting spam messages. the system automatically restricts chat for you, so you can chat again after'),
(1277, '', NULL, 'options', 'options', 'options'),
(1278, '', NULL, 'blog', 'Blog', 'Blog'),
(1279, '', NULL, 'success_stories', 'Success stories', 'Success stories'),
(1280, '', NULL, 'add_new_story', 'Add your story', 'Add your story'),
(1281, '', NULL, 'create_story', 'Create story', 'Create story'),
(1282, '', NULL, 'no_more_stories_to_show.', 'No more stories to show.', 'No more stories to show.'),
(1283, '', NULL, 'add_new_success_stories', 'Add your successful story', 'Add your successful story'),
(1284, '', NULL, 'story__html_allowed_', 'Story (HTML allowed)', 'Story (HTML allowed)'),
(1285, '', NULL, 'quote', 'Quote', 'Quote'),
(1286, '', NULL, 'story_date', 'When this story happened?', 'When this story happened?'),
(1287, '', NULL, 'please_select_user_first.', 'Please choose with whom you had this story.', 'Please choose with whom you had this story.'),
(1288, '', NULL, 'please_select_when_story_started.', 'Please select when the story occurred.', 'Please select when the story occurred.'),
(1289, '', NULL, 'please_enter_quote.', 'Please enter a quote.', 'Please enter a quote.'),
(1290, '', NULL, 'please_enter_your_story.', 'Please enter your story.', 'Please enter your story.'),
(1291, '', NULL, 'story_add_successfully', 'Your story has been added successfully.', 'Your story has been added successfully.'),
(1292, '', NULL, 'story_add_successfully__please_wait_while_admin_approve_this_story_and_it_will_show_on_site.', 'Your story has been added successfully, please wait while we review your story and approve it.', 'Your story has been added successfully, please wait while we review your story and approve it.'),
(1293, '', NULL, 'story', 'Story', 'Story'),
(1294, '', NULL, '1309', 'Comedy', 'Comedy'),
(1295, '', NULL, '1310', 'Cars and Vehicles', 'Cars and Vehicles'),
(1296, '', NULL, '1311', 'Economics and Trade', 'Economics and Trade'),
(1297, '', NULL, '1312', 'Education', 'Education'),
(1298, '', NULL, '1313', 'Entertainment', 'Entertainment'),
(1299, '', NULL, '1314', 'Movies & Animation', 'Movies &amp; Animation'),
(1300, '', NULL, '1315', 'Gaming', 'Gaming'),
(1301, '', NULL, '1316', 'History and Facts', 'History and Facts'),
(1302, '', NULL, '1317', 'Live Style', 'Live Style'),
(1303, '', NULL, '1318', 'Natural', 'Natural'),
(1304, '', NULL, '1319', 'News and Politics', 'News and Politics'),
(1305, '', NULL, '1320', 'People and Nations', 'People and Nations'),
(1306, '', NULL, '1321', 'Pets and Animals', 'Pets and Animals'),
(1307, '', NULL, '1322', 'Places and Regions', 'Places and Regions'),
(1308, '', NULL, '1323', 'Science and Technology', 'Science and Technology'),
(1309, '', NULL, '1324', 'Sport', 'Sport'),
(1310, '', NULL, '1325', 'Travel and Events', 'Travel and Events'),
(1311, '', NULL, '1326', 'Other', 'Other'),
(1312, '', NULL, 'read_more', 'Read more', 'Read more'),
(1313, '', NULL, 'categories', 'Categories', 'Categories'),
(1314, '', NULL, 'no_more_articles_to_show.', 'No more articles to show.', 'No more articles to show.'),
(1315, '', NULL, 'article', 'Article', 'Article'),
(1316, '', NULL, 'share_to', 'Share to', 'Share to'),
(1317, '', NULL, 'hot_or_not', 'Hot OR Not', 'Hot OR Not'),
(1318, '', NULL, 'image_verification', 'Image Verification', 'Image Verification'),
(1319, '', NULL, 'verify_your', 'Verify your', 'Verify your'),
(1320, '', NULL, 'account', 'account', 'account'),
(1321, '', NULL, 'you_will_be_required_to_take_a_selfie_holding_the_id_document_next_to_your_face__so_we_can_compare_your_photo_with_your_actual_look.this_is_just_an_additional_security_measure', 'You will be required to take a selfie holding the ID document next to your face, so we can compare your photo with your actual look. This is just an additional security measure.', 'You will be required to take a selfie holding the ID document next to your face, so we can compare your photo with your actual look. This is just an additional security measure.'),
(1322, '', NULL, 'take_snapshot', 'Take Snapshot', 'Take Snapshot'),
(1323, '', NULL, 'retake_snapshot', 'Retake Snapshot', 'Retake Snapshot'),
(1324, '', NULL, 'back', 'Back', 'Back'),
(1325, '', NULL, 'keyword', 'Keyword', 'Keyword'),
(1326, '', NULL, 'no_articles_found', 'No articles found', 'No articles found'),
(1327, '', NULL, 'tags', 'Tags', 'Tags'),
(1328, '', NULL, 'free', 'Free', 'Free'),
(1329, '', NULL, 'brings_out_the_sense_of_adventure_in_me__the_website_is_so_easy_to_use_and_the_possibility_of_meeting_someone_from_another_culture_that_relates_to_me_is_simply_thrilling.', 'Brings out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.', 'Brings out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.'),
(1330, '', NULL, 'brings_out_the_feelings_of_adventure_in_me__the_website_is_so_easy_to_use_and_the_possibility_of_meeting_someone_from_another_culture_that_relates_to_me_is_simply_thrilling.', 'Brings out the feelings of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.', 'Brings out the feelings of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.'),
(1331, '', NULL, 'produce_out_the_sense_of_adventure_in_me__the_website_is_so_easy_to_use_and_the_possibility_of_meeting_someone_from_another_culture_that_relates_to_me_is_simply_thrilling.', 'produce out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.', 'produce out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.'),
(1332, '', NULL, 'bring_out_the_sense_of_adventure_in_me__the_website_is_so_easy_to_use_and_the_possibility_of_meeting_someone_from_another_culture_that_relates_to_me_is_simply_thrilling.', 'bring out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.', 'bring out the sense of adventure in me! The website is so easy to use and the possibility of meeting someone from another culture that relates to me is simply thrilling.'),
(1333, '', NULL, 'this_profile_is_verified_by_photos', 'This profile is verified by user picture. ', 'This profile is verified by user picture.'),
(1334, '', NULL, 'your_account_wait_admin_photo_verification._please_try_again_later.', 'Your account is under review, Please wait until we review your picture and try again later.', 'Your account is under review, Please wait until we review your picture and try again later.'),
(1335, '', NULL, 'your_camera_is_off_or_disconnected__please_connect_your_camera_and_try_again.', 'Your camera is off or disconnected, Please connect your camera and try again.', 'Your camera is off or disconnected, Please connect your camera and try again.'),
(1336, '', NULL, 'try_again', 'Try again', 'Try again'),
(1337, '', NULL, 'you_have_previous_story_with_this_user', 'You have previous story with this user', 'You have previous story with this user'),
(1338, '', NULL, 'with', 'With', 'With'),
(1339, '', NULL, 'create_story_with_you', 'created a story with you.', 'created a story with you.'),
(1340, '', NULL, 'approved_your_story_', 'approved your story!', 'approved your story!'),
(1341, '', NULL, 'has_rejected_your_story.', 'has rejected your story.', 'has rejected your story.'),
(1342, '', NULL, 'approve_story', 'Approve story', 'Approve story'),
(1343, '', NULL, 'disapprove_story', 'Disapprove story', 'Disapprove story'),
(1344, '', NULL, 'you_have_story_with', 'You have a story with', 'You have a story with'),
(1345, '', NULL, 'on', 'on', 'on'),
(1346, '', NULL, 'story_approved_successfully.', 'Your story has been approved.', 'Your story has been approved.'),
(1347, '', NULL, 'story_disapproved_successfully.', 'Your story has been declined.', 'Your story has been declined.'),
(1348, '', NULL, 'social_accounts', 'Social accounts', 'Social accounts'),
(1349, '', NULL, 'publish', 'Publish', 'Publish'),
(1350, '', NULL, 'thank_you_for_your_story__we_have_sent_the_story_to__0___once_approved_your_story_will_be_published.', 'Thank you for your story, we have sent the story to {0}, once approved your story will be published.', 'Thank you for your story, we have sent the story to {0}, once approved your story will be published.'),
(1351, '', NULL, 'no_user_found_with_this_name', 'No user found with this name', 'No user found with this name'),
(1352, '', NULL, 'vk', 'VK', 'VK'),
(1353, '', NULL, 'type_a_message', 'Type a message', 'Type a message'),
(1354, '', NULL, 'boost_for_free', 'Boost For Free', 'Boost For Free'),
(1355, '', NULL, 'boost_your_profile_for_free_for', 'Boost your profile for free for', 'Boost your profile for free for'),
(1356, '', NULL, 'this_profile_is_verified_by_phone', 'This profile is verified by phone', 'This profile is verified by phone'),
(1357, '', NULL, 'your_height_is_required.', 'Your height is required.', 'Your height is required.'),
(1358, '', NULL, 'name', 'Name', 'Name'),
(1359, '', NULL, 'card_number', 'Card Number', 'Card Number'),
(1360, '', NULL, 'pay', 'Pay', 'Pay'),
(1361, '', NULL, 'please_check_your_details', 'Please check your details', 'Please check your details'),
(1362, '', NULL, 'manage_sessions', 'Manage Sessions', 'Manage Sessions'),
(1363, '', NULL, 'platform', 'Platform', 'Platform'),
(1364, '', NULL, 'last_seen', 'Last seen', 'Last seen'),
(1365, '', NULL, 'os', 'OS', 'OS'),
(1366, '', NULL, 'browser', 'Browser', 'Browser'),
(1367, '', NULL, 'action', 'Action', 'Action'),
(1368, '', NULL, 'error_while_deleting_session__please_try_again_later.', 'Error while deleting session, please try again later.', 'Error while deleting session, please try again later.'),
(1369, '', NULL, 'session_deleted_successfully.', 'Session has been deleted successfully.', 'Session has been deleted successfully.'),
(1370, '', NULL, 'two-factor_authentication', 'Two-factor authentication', 'Two-factor authentication'),
(1371, '', NULL, 'turn_on_2-step_login_to_level-up_your_account_s_security__once_turned_on__you_ll_use_both_your_password_and_a_6-digit_security_code_sent_to_your_phone_or_email_to_log_in.', 'Turn on 2-step login to level-up your account&#039;s security, Once turned on, you&#039;ll use both your password and a 6-digit security code sent to your phone or email to log in.', 'Turn on 2-step login to level-up your account&#039;s security, Once turned on, you&#039;ll use both your password and a 6-digit security code sent to your phone or email to log in.'),
(1372, '', NULL, 'two-factor_authentication_data_saved_successfully.', 'Two-factor authentication data saved successfully.', 'Two-factor authentication data saved successfully.'),
(1373, '', NULL, 'a_confirmation_email_has_been_sent.', 'A confirmation email has been sent.', 'A confirmation email has been sent.'),
(1374, '', NULL, 'we_have_sent_an_email_that_contains_the_confirmation_code_to_enable_two-factor_authentication.', 'We have sent an email that contains the confirmation code to enable Two-factor authentication.', 'We have sent an email that contains the confirmation code to enable Two-factor authentication.'),
(1375, '', NULL, 'confirmation_code', 'Confirmation code', 'Confirmation code'),
(1376, '', NULL, 'please_check_your_details.', 'Please check your details.', 'Please check your details.'),
(1377, '', NULL, 'your_e-mail_has_been_successfully_verified.', 'Your e-mail has been successfully verified.', 'Your e-mail has been successfully verified.'),
(1378, '', NULL, 'phone_number_should_be_as_this_format___90..', 'Phone number should be as this format: +90..', 'Phone number should be as this format: +90..'),
(1379, '', NULL, 'your_phone_number_and_e-mail_have_been_successfully_verified.', 'Your phone number and e-mail have been successfully verified.', 'Your phone number and e-mail have been successfully verified.'),
(1380, '', NULL, 'unusual_login', 'Unusual Login', 'Unusual Login'),
(1381, '', NULL, 'to_log_in__you_need_to_verify_your_identity.', 'To log in, you need to verify your identity.', 'To log in, you need to verify your identity.'),
(1382, '', NULL, 'we_have_sent_you_the_confirmation_code_to_your_phone_and_to_your_email_address.', 'We have sent you the confirmation code to your phone and to your email address.', 'We have sent you the confirmation code to your phone and to your email address.'),
(1383, '', NULL, 'we_have_sent_you_the_confirmation_code_to_your_email_address.', 'We have sent you the confirmation code to your email address.', 'We have sent you the confirmation code to your email address.'),
(1384, '', NULL, 'please_enter_confirmation_code.', 'Please enter confirmation code.', 'Please enter confirmation code.'),
(1385, '', NULL, 'something_went_wrong__please_try_again_later.', 'Something went wrong, please try again later.', 'Something went wrong, please try again later.'),
(1386, '', NULL, 'wrong_confirmation_code.', 'Wrong confirmation code.', 'Wrong confirmation code.'),
(1387, '', NULL, 'error_while_login__please_try_again_later.', 'Error while login, please try again later.', 'Error while login, please try again later.'),
(1388, '', NULL, 'invalid_user_id', 'Invalid User ID', 'Invalid User ID'),
(1389, '', NULL, 'invalid_confirmation_code', 'Invalid confirmation code', 'Invalid confirmation code'),
(1390, '', NULL, 'find_potential_matches_by_country', 'Find potential matches by country', 'Find potential matches by country'),
(1391, '', NULL, 'manage_notifications', 'Manage Notifications', 'Manage Notifications'),
(1392, '', NULL, 'custom_field', 'Custom field', 'Custom field'),
(1393, '', NULL, 'food', 'food', 'food'),
(1394, '', NULL, 'add_media', 'Add Media', 'Add Media'),
(1395, '', NULL, 'add_video', 'Add Video', 'Add Video'),
(1396, '', NULL, 'add_photo', 'Add Photo', 'Add Photo'),
(1397, '', NULL, 'upload', 'Upload', 'Upload'),
(1398, '', NULL, 'video_title', 'Video Title', 'Video Title'),
(1399, '', NULL, 'public', 'Public', 'Public'),
(1400, '', NULL, 'private', 'Private', 'Private'),
(1401, '', NULL, 'thumbnail', 'Thumbnail', 'Thumbnail'),
(1402, '', NULL, 'my_affiliates', 'My affiliates', 'My affiliates'),
(1403, '', NULL, 'your_affiliate_link_is', 'Your affiliate link is', 'Your affiliate link is'),
(1404, '', NULL, 'my_balance', 'My balance', 'My balance'),
(1405, '', NULL, 'earn_up_to', 'Earn up to', 'Earn up to'),
(1406, '', NULL, 'for_each_user_your_refer_to_us__', 'for each user your refer to us !', 'for each user your refer to us !'),
(1407, '', NULL, 'joined', 'joined', 'joined'),
(1408, '', NULL, 'payments', 'Payments', 'Payments'),
(1409, '', NULL, 'your_balance_is', 'Your balance is', 'Your balance is'),
(1410, '', NULL, '__minimum_withdrawal_request_is', ', minimum withdrawal request is', ', minimum withdrawal request is'),
(1411, '', NULL, 'paypal_email', 'PayPal email', 'PayPal email'),
(1412, '', NULL, 'request_withdrawal', 'Request withdrawal', 'Request withdrawal'),
(1413, '', NULL, 'your_request_has_been_sent__you__039_ll_receive_an_email_regarding_the_payment_details_soon.', 'Your request has been sent, you&#039;ll receive an email regarding the payment details soon.', 'Your request has been sent, you&#039;ll receive an email regarding the payment details soon.'),
(1414, '', NULL, 'requested', 'requested', 'requested'),
(1415, '', NULL, 'payment_history', 'Payment history', 'Payment history'),
(1416, '', NULL, 'approved', 'approved', 'approved'),
(1417, '', NULL, 'invalid_amount_value__your_amount_is_', 'Invalid amount value, your amount is:', 'Invalid amount value, your amount is:'),
(1418, '', NULL, 'add_friend', 'Add Friend', 'Add Friend'),
(1419, '', NULL, 'unfriend', 'UnFriend', 'UnFriend'),
(1420, '', NULL, 'friend_request_sent', 'Friend request sent', 'Friend request sent'),
(1421, '', NULL, 'you_already_sent_friend_request.', 'You have already sent a request.', 'You have already sent a request.'),
(1422, '', NULL, 'success', 'Success', 'Success'),
(1423, '', NULL, 'confirm_request_when_someone_follows_you__', 'Confirm request when someone follows you?', 'Confirm request when someone follows you?'),
(1424, '', NULL, 'confirm_request_when_someone_request_friend_you__', 'Confirm request when someone request to be a friend with you?', 'Confirm request when someone request to be a friend with you?'),
(1425, '', NULL, 'created_a_story_with_you.', 'created a story with you.', 'created a story with you.'),
(1426, '', NULL, 'accepted_your_friend_request.', 'accepted your friend request.', 'accepted your friend request.'),
(1427, '', NULL, 'declined_your_friend_request.', 'declined your friend request.', 'declined your friend request.'),
(1428, '', NULL, 'send_friend_request_to_you.', 'requested to be a friend with you.', 'requested to be a friend with you.'),
(1429, '', NULL, 'friend_requests', 'Friend requests', 'Friend requests'),
(1430, '', NULL, 'is_now_in_friend_list.', 'is now in your friend list.', 'is now in your friend list.'),
(1431, '', NULL, 'decline_request', 'Decline request', 'Decline request'),
(1432, '', NULL, 'accept_request', 'Accept request', 'Accept request'),
(1433, '', NULL, 'request_your_friendship.', 'requested to be your friend.', 'requested to be your friend.'),
(1434, '', NULL, 'can_not_create_notification', 'can not create notification', 'can not create notification'),
(1435, '', NULL, 'pending_review', 'pending review', 'pending review'),
(1436, '', NULL, 'the_username_is_blacklisted_and_not_allowed__please_choose_another_username.', 'The username is blacklisted and not allowed, please choose another username.', 'The username is blacklisted and not allowed, please choose another username.'),
(1437, '', NULL, 'the_email_provider_is_blacklisted_and_not_allowed__please_choose_another_email_provider.', 'The email provider is blacklisted and not allowed, please choose another email provider.', 'The email provider is blacklisted and not allowed, please choose another email provider.'),
(1438, '', NULL, 'latest__0__users.', 'Latest {0} users.', 'Latest {0} users.'),
(1439, '', NULL, 'you_reach_to_limit_of_media_uploads.', 'You have reached the limit of media uploads.', 'You have reached the limit of media uploads.'),
(1440, '', NULL, 'email_sent_to', 'Email sent to', 'Email sent to'),
(1441, '', NULL, 'error_while_sending_emails', 'Error while sending emails', 'Error while sending emails'),
(1442, '', NULL, 'under_review', 'Under Review', 'Under Review'),
(1443, '', NULL, 'id', 'id', 'Indonesia'),
(1444, '', NULL, 'ref', 'ref', 'ref'),
(1445, '', NULL, 'lang_key', 'lang_key', 'lang_key'),
(1446, '', NULL, 'unlock_private_photo_payment', 'Unlock Private Photo Feature', 'Unlock Private Photo Feature'),
(1447, '', NULL, 'to_unlock_private_photo_feature_in_your_account__you_have_to_pay', 'To unlock private photo feature in your account, you can purchase it.', 'To unlock private photo feature in your account, you can purchase it.'),
(1448, '', NULL, 'unlock_private_photo_feature', 'Unlock Private Photo Feature', 'Unlock Private Photo Feature'),
(1449, '', NULL, 'to_unlock_video_upload_feature_in_your_account__you_have_to_pay', 'To unlock private photo feature in your account, you can purchase it.', 'To unlock private photo feature in your account, you can purchase it.'),
(1450, '', NULL, 'unlock_upload_video_feature', 'Unlock Upload Video Feature', 'Unlock Upload Video Feature'),
(1451, '', NULL, 'unlock_video_upload_feature', 'Unlock Upload Video Feature', 'Unlock Upload Video Feature'),
(1452, '', NULL, 'please_upload_a_photo_with_your_passport___id____your_distinct_photo', 'Please upload a photo with your passport / ID  &amp; your distinct picture.', 'Please upload a photo with your passport / ID  &amp; your distinct picture.'),
(1453, '', NULL, 'credit_reward', 'Credit Reward', 'Credit Reward'),
(1454, '', NULL, 'congratulation_._you_login_to_our_site_for', 'Congratulation! you logged in to our site for', 'Congratulation! you logged in to our site for'),
(1455, '', NULL, 'and_you_earn', 'and you will earn', 'and you will earn'),
(1456, '', NULL, 'user_who_logs_in_consecutively_for', 'Anyone who logs in consecutively for', 'Anyone who logs in consecutively for'),
(1457, '', NULL, 'you_currently_logged_in_for', 'You currently logged in for', 'You currently logged in for'),
(1458, '', NULL, 'your_account_is_waiting_admin_approval.', 'Thank you, Your account is waiting admin approval.', 'Thank you, Your account is waiting admin approval.'),
(1459, '', NULL, 'friend-requests', 'Friend Requests', 'Friend Requests'),
(1460, '', NULL, 'notifications_single', 'Notifications', 'Notifications'),
(1461, '', NULL, 'for_each_user_your_refer_to_us_and_bought_a_pro_package___credit', 'For every user your refer to us and bought a pro package or credits', 'For every user your refer to us and bought a pro package or credits'),
(1462, '', NULL, 'find-matches', 'find-matches', 'find-matches'),
(1463, '', NULL, 'gifts', 'Gifts', 'Gifts'),
(1464, '', NULL, 'send_to_you', 'sent to you.', 'sent to you.'),
(1465, '', NULL, 'no_more_gifts_to_show.', 'No gifts to show.', 'No gifts to show.'),
(1497, '', NULL, 'gift_added', 'Gift added', 'Gift added'),
(1498, '', NULL, 'send_a_gift_to_you.', 'sent a gift to you.', 'sent a gift to you.'),
(1499, '', NULL, 'you_must_signup_using__0__only.', 'you must signup using {0} only.', 'you must signup using {0} only.'),
(1500, '', NULL, 'no_hash', 'No hash', 'No hash'),
(1501, '', NULL, 'no_friend_request_found', 'No friend requests found', 'No friend requests found'),
(1502, '', NULL, 'friend_request_received', 'Friend request received', 'Friend request received'),
(1503, '', NULL, 'you_are_a_pro_now.', 'You are a pro now.', 'You are a pro now.'),
(1504, '', NULL, 'cashfree', 'CashFree', 'CashFree'),
(1505, '', NULL, 'phone_number', 'phone number', 'phone number'),
(1506, '', NULL, 'please_wait', 'please wait', 'please wait'),
(1507, '', NULL, 'iyzipay', 'Iyzipay', 'Iyzipay'),
(1508, '', NULL, 'unknown_error', 'Unknown error occured', 'Unknown error occured'),
(1509, '', NULL, '2checkout', '2Checkout', '2Checkout'),
(1510, '', NULL, 'check_out', 'Check out', 'Check out'),
(1511, '', NULL, 'address', 'address', 'address'),
(1512, '', NULL, 'state', 'state', 'state'),
(1513, '', NULL, 'zip', 'zip', 'zip'),
(1514, '', NULL, 'please_check_details', 'please check your details.', 'please check your details.'),
(1515, '', NULL, 'paystack', 'PayStack', 'PayStack'),
(1516, '', NULL, 'my_information', 'My Information', 'My Information'),
(1517, '', NULL, 'please_choose_which_information_you_would_like_to_download', 'Please choose which information you would like to download', 'Please choose which information you would like to download'),
(1518, '', NULL, 'generate_file', 'Generate file', 'Generate file'),
(1519, '', NULL, 'missing_fields', 'Missing fields', 'Missing fields'),
(1520, '', NULL, 'cover', 'Cover', 'Cover'),
(1521, '', NULL, 'member_type', 'Member Type', 'Member Type'),
(1522, '', NULL, 'sessions', 'Sessions', 'Sessions'),
(1523, '', NULL, 'media', 'Media', 'Media'),
(1524, '', NULL, 'your_file_is_ready_to_download_', 'Your file is ready to download!', 'Your file is ready to download!'),
(1525, '', NULL, 'bank', 'Bank', 'Bank'),
(1526, '', NULL, 'withdraw_method', 'Withdraw Method', 'Withdraw Method'),
(1527, '', NULL, 'iban', 'iban', 'iban'),
(1528, '', NULL, 'full_name', 'Full Name', 'Full Name'),
(1529, '', NULL, 'swift_code', 'Swift Code', 'Swift Code'),
(1530, '', NULL, 'you_have_already_a_pending_request.', 'You have already a pending request.', 'You have already a pending request.'),
(1531, '', NULL, 'stream_has_ended', '{{user}} stream has ended.', '{{user}} stream has ended.'),
(1532, '', NULL, 'paystack', 'PayStack', 'PayStack'),
(1533, '', NULL, 'end_call', 'End Call', 'End Call'),
(1534, '', NULL, 'live', 'Live', 'Live'),
(1535, '', NULL, 'end_live', 'End Live', 'End Live'),
(1536, '', NULL, 'go_live', 'Go Live', 'Go Live'),
(1537, '', NULL, 'mic_source', 'Mic Source', 'Mic Source'),
(1538, '', NULL, 'cam_source', 'Cam Source', 'Cam Source'),
(1539, '', NULL, 'live_videos', 'Live Videos', 'Live Videos'),
(1540, '', NULL, 'live_users', 'Live Users', 'Live Users'),
(1541, '', NULL, 'live-users', 'live-users', 'live-users'),
(1542, '', NULL, 'video', 'video', 'video'),
(1543, '', NULL, 'is_live', 'is Live', 'is Live'),
(1544, '', NULL, 'was_live', 'was Live', 'was Live'),
(1545, '', NULL, 'write_a_comment', 'Write a comment', 'Write a comment'),
(1546, '', NULL, 'user-live', 'user-live', 'user-live'),
(1547, '', NULL, 'no_more_videos_to_show.', 'No more videos to show.', 'No more videos to show.'),
(1548, '', NULL, 'login_with_qq', 'Login with QQ', 'Login with QQ'),
(1549, '', NULL, 'login_with_wechat', 'Login with WeChat', 'Login with WeChat'),
(1550, '', NULL, 'login_with_discord', 'Login with Discord', 'Login with Discord'),
(1551, '', NULL, 'login_with_mailru', 'Login with Mailru', 'Login with Mailru'),
(1552, '', NULL, 'developers', 'Developers', 'Developers'),
(1553, '', NULL, 'create-app', 'create-app', 'create-app'),
(1554, '', NULL, 'create_new_app', 'Create new App', 'Create new App'),
(1555, '', NULL, 'domain', 'Domain', 'Domain'),
(1556, '', NULL, 'redirect_uri', 'Redirect URI', 'Redirect URI'),
(1557, '', NULL, 'description', 'Description', 'Description'),
(1558, '', NULL, 'app', 'app', 'app'),
(1559, '', NULL, 'your_application_name._this_is_used_to_attribute_the_source_user-facing_authorization_screens._32_characters_max.', 'Your application name. This is used to attribute the source user-facing authorization screens. 32 characters max.', 'Your application name. This is used to attribute the source user-facing authorization screens. 32 characters max.'),
(1560, '', NULL, 'your_application_s_publicly_accessible_home_page.', 'Your application&#039;s publicly accessible home page.', 'Your application&#039;s publicly accessible home page.'),
(1561, '', NULL, 'where_should_we_return_after_successfully_authenticating_', 'Where should we return after successfully authenticating?', 'Where should we return after successfully authenticating?'),
(1562, '', NULL, 'your_application_description__which_will_be_shown_in_user-facing_authorization_screens._between_10_and_200_characters_max.', 'Your application description, which will be shown in user-facing authorization screens. Between 10 and 200 characters max.', 'Your application description, which will be shown in user-facing authorization screens. Between 10 and 200 characters max.'),
(1563, '', NULL, 'image', 'Image', 'Image'),
(1564, '', NULL, 'your_application_thumbnail', 'Your application thumbnail', 'Your application thumbnail'),
(1565, '', NULL, 'choose_image', 'choose image', 'choose image'),
(1566, '', NULL, 'apps', 'apps', 'apps'),
(1567, '', NULL, 'create', 'Create', 'Create'),
(1568, '', NULL, 'create_app', 'Create App', 'Create App'),
(1569, '', NULL, 'oauth', 'oauth', 'oauth'),
(1570, '', NULL, 'app_permissions', 'App Permissions', 'App Permissions'),
(1571, '', NULL, 'invalid_url', 'Invalid Url', 'Invalid Url'),
(1572, '', NULL, 'are_you_sure_you_want_to_remove_the_video', 'Are you sure you want to remove the video?', 'Are you sure you want to remove the video?'),
(1573, '', NULL, 'authorize.net', 'Authorize.net', 'Authorize.net'),
(1574, '', NULL, 'are_you_sure_you_want_to_remove_this_comment', 'Are you sure you want to remove this comment?', 'Are you sure you want to remove this comment?'),
(1575, '', NULL, 'securionpay', 'Securionpay', 'Securionpay'),
(1576, '', NULL, 'discussion', 'Discussion', 'Discussion'),
(1577, '', NULL, 'invitation_links', 'Invitation Links', 'Invitation Links'),
(1578, '', NULL, 'available_links', 'Available links', 'Available links'),
(1579, '', NULL, 'generated_links', 'Generated links', 'Generated links'),
(1580, '', NULL, 'used_links', 'Used links', 'Used links'),
(1581, '', NULL, 'generate_link', 'Generate link', 'Generate link'),
(1582, '', NULL, 'url', 'url', 'url'),
(1583, '', NULL, 'invited_user', 'invited user', 'invited user'),
(1584, '', NULL, 'copy', 'copy', 'copy');
INSERT INTO `langs_rus1` (`id`, `ref`, `options`, `lang_key`, `english`, `russian`) VALUES
(1585, '', NULL, 'code_successfully_generated', 'Code successfully generated', 'Code successfully generated'),
(1586, '', NULL, 'copied', 'copied', 'copied'),
(1587, '', NULL, 'function_not_found', 'Function not found', 'Function not found'),
(1588, 'country', '93', 'AF', 'Afghanistan', 'Afghanistan'),
(1589, 'country', '355', 'AL', 'Albania', 'Albania'),
(1590, 'country', '213', 'DZ', 'Algeria', 'Algeria'),
(1591, 'country', '1684', 'AS', 'American Samoa', 'American Samoa'),
(1592, 'country', '376', 'AD', 'Andorra', 'Andorra'),
(1593, 'country', '244', 'AO', 'Angola', 'Angola'),
(1594, 'country', '1264', 'AI', 'Anguilla', 'Anguilla'),
(1595, 'country', '0', 'AQ', 'Antarctica', 'Antarctica'),
(1596, 'country', '1268', 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda'),
(1597, 'country', '54', 'AR', 'Argentina', 'Argentina'),
(1598, 'country', '374', 'AM', 'Armenia', 'Armenia'),
(1599, 'country', '297', 'AW', 'Aruba', 'Aruba'),
(1600, 'country', '61', 'AU', 'Australia', 'Australia'),
(1601, 'country', '43', 'AT', 'Austria', 'Austria'),
(1602, 'country', '994', 'AZ', 'Azerbaijan', 'Azerbaijan'),
(1603, 'country', '1242', 'BS', 'Bahamas', 'Bahamas'),
(1604, 'country', '973', 'BH', 'Bahrain', 'Bahrain'),
(1605, 'country', '880', 'BD', 'Bangladesh', 'Bangladesh'),
(1606, 'country', '1246', 'BB', 'Barbados', 'Barbados'),
(1607, 'country', '375', 'BY', 'Belarus', 'Belarus'),
(1608, 'country', '32', 'BE', 'Belgium', 'Belgium'),
(1609, 'country', '501', 'BZ', 'Belize', 'Belize'),
(1610, 'country', '229', 'BJ', 'Benin', 'Benin'),
(1611, 'country', '1441', 'BM', 'Bermuda', 'Bermuda'),
(1612, 'country', '975', 'BT', 'Bhutan', 'Bhutan'),
(1613, 'country', '591', 'BO', 'Bolivia', 'Bolivia'),
(1614, 'country', '387', 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina'),
(1615, 'country', '267', 'BW', 'Botswana', 'Botswana'),
(1616, 'country', '0', 'BV', 'Bouvet Island', 'Bouvet Island'),
(1617, 'country', '55', 'BR', 'Brazil', 'Brazil'),
(1618, 'country', '246', 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory'),
(1619, 'country', '673', 'BN', 'Brunei Darussalam', 'Brunei Darussalam'),
(1620, 'country', '359', 'BG', 'Bulgaria', 'Bulgaria'),
(1621, 'country', '226', 'BF', 'Burkina Faso', 'Burkina Faso'),
(1622, 'country', '257', 'BI', 'Burundi', 'Burundi'),
(1623, 'country', '855', 'KH', 'Cambodia', 'Cambodia'),
(1624, 'country', '237', 'CM', 'Cameroon', 'Cameroon'),
(1625, 'country', '1', 'CA', 'Canada', 'Canada'),
(1626, 'country', '238', 'CV', 'Cape Verde', 'Cape Verde'),
(1627, 'country', '1345', 'KY', 'Cayman Islands', 'Cayman Islands'),
(1628, 'country', '236', 'CF', 'Central African Republic', 'Central African Republic'),
(1629, 'country', '235', 'TD', 'Chad', 'Chad'),
(1630, 'country', '56', 'CL', 'Chile', 'Chile'),
(1631, 'country', '86', 'CN', 'China', 'China'),
(1632, 'country', '61', 'CX', 'Christmas Island', 'Christmas Island'),
(1633, 'country', '672', 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands'),
(1634, 'country', '57', 'CO', 'Colombia', 'Colombia'),
(1635, 'country', '269', 'KM', 'Comoros', 'Comoros'),
(1636, 'country', '242', 'CG', 'Congo', 'Congo'),
(1637, 'country', '242', 'CD', 'Congo, the Democratic Republic of the', 'Congo, the Democratic Republic of the'),
(1638, 'country', '682', 'CK', 'Cook Islands', 'Cook Islands'),
(1639, 'country', '506', 'CR', 'Costa Rica', 'Costa Rica'),
(1640, 'country', '225', 'CI', 'Cote D\'Ivoire', 'Cote D&#039;Ivoire'),
(1641, 'country', '385', 'HR', 'Croatia', 'Croatia'),
(1642, 'country', '53', 'CU', 'Cuba', 'Cuba'),
(1643, 'country', '357', 'CY', 'Cyprus', 'Cyprus'),
(1644, 'country', '420', 'CZ', 'Czech Republic', 'Czech Republic'),
(1645, 'country', '45', 'DK', 'Denmark', 'Denmark'),
(1646, 'country', '253', 'DJ', 'Djibouti', 'Djibouti'),
(1647, 'country', '1767', 'DM', 'Dominica', 'Dominica'),
(1648, 'country', '1809', 'DO', 'Dominican Republic', 'Dominican Republic'),
(1649, 'country', '626', 'TP', 'East Timor', 'East Timor'),
(1650, 'country', '593', 'EC', 'Ecuador', 'Ecuador'),
(1651, 'country', '20', 'EG', 'Egypt', 'Egypt'),
(1652, 'country', '503', 'SV', 'El Salvador', 'El Salvador'),
(1653, 'country', '240', 'GQ', 'Equatorial Guinea', 'Equatorial Guinea'),
(1654, 'country', '291', 'ER', 'Eritrea', 'Eritrea'),
(1655, 'country', '372', 'EE', 'Estonia', 'Estonia'),
(1656, 'country', '251', 'ET', 'Ethiopia', 'Ethiopia'),
(1657, 'country', '61', 'XA', 'External Territories of Australia', 'External Territories of Australia'),
(1658, 'country', '500', 'FK', 'Falkland Islands (Malvinas)', 'Falkland Islands (Malvinas)'),
(1659, 'country', '298', 'FO', 'Faroe Islands', 'Faroe Islands'),
(1660, 'country', '679', 'FJ', 'Fiji', 'Fiji'),
(1661, 'country', '358', 'FI', 'Finland', 'Finland'),
(1662, 'country', '33', 'FR', 'France', 'France'),
(1663, 'country', '594', 'GF', 'French Guiana', 'French Guiana'),
(1664, 'country', '689', 'PF', 'French Polynesia', 'French Polynesia'),
(1665, 'country', '0', 'TF', 'French Southern Territories', 'French Southern Territories'),
(1666, 'country', '241', 'GA', 'Gabon', 'Gabon'),
(1667, 'country', '220', 'GM', 'Gambia', 'Gambia'),
(1668, 'country', '995', 'GE', 'Georgia', 'Georgia'),
(1669, 'country', '49', 'DE', 'Germany', 'Germany'),
(1670, 'country', '233', 'GH', 'Ghana', 'Ghana'),
(1671, 'country', '350', 'GI', 'Gibraltar', 'Gibraltar'),
(1672, 'country', '30', 'GR', 'Greece', 'Greece'),
(1673, 'country', '299', 'GL', 'Greenland', 'Greenland'),
(1674, 'country', '1473', 'GD', 'Grenada', 'Grenada'),
(1675, 'country', '590', 'GP', 'Guadeloupe', 'Guadeloupe'),
(1676, 'country', '1671', 'GU', 'Guam', 'Guam'),
(1677, 'country', '502', 'GT', 'Guatemala', 'Guatemala'),
(1678, 'country', '44', 'GG', 'Guernsey and Alderney', 'Guernsey and Alderney'),
(1679, 'country', '224', 'GN', 'Guinea', 'Guinea'),
(1680, 'country', '245', 'GW', 'Guinea-Bissau', 'Guinea-Bissau'),
(1681, 'country', '592', 'GY', 'Guyana', 'Guyana'),
(1682, 'country', '509', 'HT', 'Haiti', 'Haiti'),
(1683, 'country', '0', 'HM', 'Heard Island and Mcdonald Islands', 'Heard Island and Mcdonald Islands'),
(1684, 'country', '504', 'HN', 'Honduras', 'Honduras'),
(1685, 'country', '852', 'HK', 'Hong Kong', 'Hong Kong'),
(1686, 'country', '36', 'HU', 'Hungary', 'Hungary'),
(1687, 'country', '354', 'IS', 'Iceland', 'Iceland'),
(1688, 'country', '91', 'IN', 'India', 'India'),
(1689, 'country', '62', 'ID', 'Indonesia', 'Indonesia'),
(1690, 'country', '98', 'IR', 'Iran, Islamic Republic of', 'Iran, Islamic Republic of'),
(1691, 'country', '964', 'IQ', 'Iraq', 'Iraq'),
(1692, 'country', '353', 'IE', 'Ireland', 'Ireland'),
(1693, 'country', '972', 'IL', 'Israel', 'Israel'),
(1694, 'country', '39', 'IT', 'Italy', 'Italy'),
(1695, 'country', '1876', 'JM', 'Jamaica', 'Jamaica'),
(1696, 'country', '81', 'JP', 'Japan', 'Japan'),
(1697, 'country', '44', 'JE', 'Jersey', 'Jersey'),
(1698, 'country', '962', 'JO', 'Jordan', 'Jordan'),
(1699, 'country', '7', 'KZ', 'Kazakhstan', 'Kazakhstan'),
(1700, 'country', '254', 'KE', 'Kenya', 'Kenya'),
(1701, 'country', '686', 'KI', 'Kiribati', 'Kiribati'),
(1702, 'country', '850', 'KP', 'Korea, Democratic People\'s Republic of', 'Korea, Democratic People&#039;s Republic of'),
(1703, 'country', '82', 'KR', 'Korea, Republic of', 'Korea, Republic of'),
(1704, 'country', '965', 'KW', 'Kuwait', 'Kuwait'),
(1705, 'country', '996', 'KG', 'Kyrgyzstan', 'Kyrgyzstan'),
(1706, 'country', '856', 'LA', 'Lao People\'s Democratic Republic', 'Lao People&#039;s Democratic Republic'),
(1707, 'country', '371', 'LV', 'Latvia', 'Latvia'),
(1708, 'country', '961', 'LB', 'Lebanon', 'Lebanon'),
(1709, 'country', '266', 'LS', 'Lesotho', 'Lesotho'),
(1710, 'country', '231', 'LR', 'Liberia', 'Liberia'),
(1711, 'country', '218', 'LY', 'Libyan Arab Jamahiriya', 'Libyan Arab Jamahiriya'),
(1712, 'country', '423', 'LI', 'Liechtenstein', 'Liechtenstein'),
(1713, 'country', '370', 'LT', 'Lithuania', 'Lithuania'),
(1714, 'country', '352', 'LU', 'Luxembourg', 'Luxembourg'),
(1715, 'country', '853', 'MO', 'Macao', 'Macao'),
(1716, 'country', '389', 'MK', 'Macedonia, the Former Yugoslav Republic of', 'Macedonia, the Former Yugoslav Republic of'),
(1717, 'country', '261', 'MG', 'Madagascar', 'Madagascar'),
(1718, 'country', '265', 'MW', 'Malawi', 'Malawi'),
(1719, 'country', '60', 'MY', 'Malaysia', 'Malaysia'),
(1720, 'country', '960', 'MV', 'Maldives', 'Maldives'),
(1721, 'country', '223', 'ML', 'Mali', 'Mali'),
(1722, 'country', '356', 'MT', 'Malta', 'Malta'),
(1723, 'country', '1624', 'IM', 'Isle of Man', 'Isle of Man'),
(1724, 'country', '692', 'MH', 'Marshall Islands', 'Marshall Islands'),
(1725, 'country', '596', 'MQ', 'Martinique', 'Martinique'),
(1726, 'country', '222', 'MR', 'Mauritania', 'Mauritania'),
(1727, 'country', '230', 'MU', 'Mauritius', 'Mauritius'),
(1728, 'country', '269', 'YT', 'Mayotte', 'Mayotte'),
(1729, 'country', '52', 'MX', 'Mexico', 'Mexico'),
(1730, 'country', '691', 'FM', 'Micronesia, Federated States of', 'Micronesia, Federated States of'),
(1731, 'country', '373', 'MD', 'Moldova, Republic of', 'Moldova, Republic of'),
(1732, 'country', '377', 'MC', 'Monaco', 'Monaco'),
(1733, 'country', '976', 'MN', 'Mongolia', 'Mongolia'),
(1734, 'country', '1664', 'MS', 'Montserrat', 'Montserrat'),
(1735, 'country', '212', 'MA', 'Morocco', 'Morocco'),
(1736, 'country', '258', 'MZ', 'Mozambique', 'Mozambique'),
(1737, 'country', '95', 'MM', 'Myanmar', 'Myanmar'),
(1738, 'country', '264', 'NA', 'Namibia', 'Namibia'),
(1739, 'country', '674', 'NR', 'Nauru', 'Nauru'),
(1740, 'country', '977', 'NP', 'Nepal', 'Nepal'),
(1741, 'country', '599', 'AN', 'Netherlands Antilles', 'Netherlands Antilles'),
(1742, 'country', '31', 'NL', 'Netherlands', 'Netherlands'),
(1743, 'country', '687', 'NC', 'New Caledonia', 'New Caledonia'),
(1744, 'country', '64', 'NZ', 'New Zealand', 'New Zealand'),
(1745, 'country', '505', 'NI', 'Nicaragua', 'Nicaragua'),
(1746, 'country', '227', 'NE', 'Niger', 'Niger'),
(1747, 'country', '234', 'NG', 'Nigeria', 'Nigeria'),
(1748, 'country', '683', 'NU', 'Niue', 'Niue'),
(1749, 'country', '672', 'NF', 'Norfolk Island', 'Norfolk Island'),
(1750, 'country', '1670', 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands'),
(1751, 'country', '47', 'NO', 'Norway', 'Norway'),
(1752, 'country', '968', 'OM', 'Oman', 'Oman'),
(1753, 'country', '92', 'PK', 'Pakistan', 'Pakistan'),
(1754, 'country', '680', 'PW', 'Palau', 'Palau'),
(1755, 'country', '970', 'PS', 'Palestinian Territory, Occupied', 'Palestinian Territory, Occupied'),
(1756, 'country', '507', 'PA', 'Panama', 'Panama'),
(1757, 'country', '675', 'PG', 'Papua New Guinea', 'Papua New Guinea'),
(1758, 'country', '595', 'PY', 'Paraguay', 'Paraguay'),
(1759, 'country', '51', 'PE', 'Peru', 'Peru'),
(1760, 'country', '63', 'PH', 'Philippines', 'Philippines'),
(1761, 'country', '0', 'PN', 'Pitcairn', 'Pitcairn'),
(1762, 'country', '48', 'PL', 'Poland', 'Poland'),
(1763, 'country', '351', 'PT', 'Portugal', 'Portugal'),
(1764, 'country', '1787', 'PR', 'Puerto Rico', 'Puerto Rico'),
(1765, 'country', '974', 'QA', 'Qatar', 'Qatar'),
(1766, 'country', '262', 'RE', 'Reunion', 'Reunion'),
(1767, 'country', '40', 'RO', 'Romania', 'Romania'),
(1768, 'country', '7', 'RU', 'Russian Federation', 'Russian Federation'),
(1769, 'country', '250', 'RW', 'Rwanda', 'Rwanda'),
(1770, 'country', '290', 'SH', 'Saint Helena', 'Saint Helena'),
(1771, 'country', '1869', 'KN', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis'),
(1772, 'country', '1758', 'LC', 'Saint Lucia', 'Saint Lucia'),
(1773, 'country', '508', 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon'),
(1774, 'country', '1784', 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines'),
(1775, 'country', '684', 'WS', 'Samoa', 'Samoa'),
(1776, 'country', '378', 'SM', 'San Marino', 'San Marino'),
(1777, 'country', '239', 'ST', 'Sao Tome and Principe', 'Sao Tome and Principe'),
(1778, 'country', '966', 'SA', 'Saudi Arabia', 'Saudi Arabia'),
(1779, 'country', '221', 'SN', 'Senegal', 'Senegal'),
(1780, 'country', '381', 'CS', 'Serbia and Montenegro', 'Serbia and Montenegro'),
(1781, 'country', '248', 'SC', 'Seychelles', 'Seychelles'),
(1782, 'country', '232', 'SL', 'Sierra Leone', 'Sierra Leone'),
(1783, 'country', '65', 'SG', 'Singapore', 'Singapore'),
(1784, 'country', '421', 'SK', 'Slovakia', 'Slovakia'),
(1785, 'country', '386', 'SI', 'Slovenia', 'Slovenia'),
(1786, 'country', '44', 'XG', 'Smaller Territories of the UK', 'Smaller Territories of the UK'),
(1787, 'country', '677', 'SB', 'Solomon Islands', 'Solomon Islands'),
(1788, 'country', '252', 'SO', 'Somalia', 'Somalia'),
(1789, 'country', '27', 'ZA', 'South Africa', 'South Africa'),
(1790, 'country', '0', 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands'),
(1791, 'country', '211', 'SS', 'South Sudan', 'South Sudan'),
(1792, 'country', '34', 'ES', 'Spain', 'Spain'),
(1793, 'country', '94', 'LK', 'Sri Lanka', 'Sri Lanka'),
(1794, 'country', '249', 'SD', 'Sudan', 'Sudan'),
(1795, 'country', '597', 'SR', 'Suriname', 'Suriname'),
(1796, 'country', '47', 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen'),
(1797, 'country', '268', 'SZ', 'Swaziland', 'Swaziland'),
(1798, 'country', '46', 'SE', 'Sweden', 'Sweden'),
(1799, 'country', '41', 'CH', 'Switzerland', 'Switzerland'),
(1800, 'country', '963', 'SY', 'Syrian Arab Republic', 'Syrian Arab Republic'),
(1801, 'country', '886', 'TW', 'Taiwan, Province of China', 'Taiwan, Province of China'),
(1802, 'country', '992', 'TJ', 'Tajikistan', 'Tajikistan'),
(1803, 'country', '255', 'TZ', 'Tanzania, United Republic of', 'Tanzania, United Republic of'),
(1804, 'country', '66', 'TH', 'Thailand', 'Thailand'),
(1805, 'country', '670', 'TL', 'Timor-Leste', 'Timor-Leste'),
(1806, 'country', '228', 'TG', 'Togo', 'Togo'),
(1807, 'country', '690', 'TK', 'Tokelau', 'Tokelau'),
(1808, 'country', '676', 'TO', 'Tonga', 'Tonga'),
(1809, 'country', '1868', 'TT', 'Trinidad and Tobago', 'Trinidad and Tobago'),
(1810, 'country', '216', 'TN', 'Tunisia', 'Tunisia'),
(1811, 'country', '90', 'TR', 'Turkey', 'Turkey'),
(1812, 'country', '7370', 'TM', 'Turkmenistan', 'Turkmenistan'),
(1813, 'country', '1649', 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands'),
(1814, 'country', '688', 'TV', 'Tuvalu', 'Tuvalu'),
(1815, 'country', '256', 'UG', 'Uganda', 'Uganda'),
(1816, 'country', '380', 'UA', 'Ukraine', 'Ukraine'),
(1817, 'country', '971', 'AE', 'United Arab Emirates', 'United Arab Emirates'),
(1818, 'country', '44', 'GB', 'United Kingdom', 'United Kingdom'),
(1819, 'country', '1', 'US', 'United States', 'United States'),
(1820, 'country', '1', 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands'),
(1821, 'country', '598', 'UY', 'Uruguay', 'Uruguay'),
(1822, 'country', '998', 'UZ', 'Uzbekistan', 'Uzbekistan'),
(1823, 'country', '678', 'VU', 'Vanuatu', 'Vanuatu'),
(1824, 'country', '39', 'VA', 'Holy See (Vatican City State)', 'Holy See (Vatican City State)'),
(1825, 'country', '58', 'VE', 'Venezuela', 'Venezuela'),
(1826, 'country', '84', 'VN', 'Viet Nam', 'Viet Nam'),
(1827, 'country', '1284', 'VG', 'Virgin Islands, British', 'Virgin Islands, British'),
(1828, 'country', '1340', 'VI', 'Virgin Islands, U.s.', 'Virgin Islands, U.s.'),
(1829, 'country', '681', 'WF', 'Wallis and Futuna', 'Wallis and Futuna'),
(1830, 'country', '212', 'EH', 'Western Sahara', 'Western Sahara'),
(1831, 'country', '967', 'YE', 'Yemen', 'Yemen'),
(1832, 'country', '38', 'YU', 'Yugoslavia', 'Yugoslavia'),
(1833, 'country', '260', 'ZM', 'Zambia', 'Zambia'),
(1834, 'country', '263', 'ZW', 'Zimbabwe', 'Zimbabwe'),
(1835, '', 'swedish', 'swedish', 'swedish', 'swedish'),
(1836, '', 'russian', 'russian', 'russian', 'russian');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 0,
  `like_userid` int(11) UNSIGNED DEFAULT 0,
  `is_like` int(11) UNSIGNED DEFAULT 0,
  `is_dislike` int(11) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `like_userid`, `is_like`, `is_dislike`, `created_at`) VALUES
(1, 1, 102, 1, 0, '2022-06-06 13:07:26'),
(2, 1, 99, 1, 0, '2022-06-07 01:30:17'),
(3, 1, 98, 0, 1, '2022-06-07 01:30:18'),
(4, 1, 97, 0, 1, '2022-06-07 01:30:20'),
(5, 1, 91, 0, 1, '2022-06-07 02:54:09'),
(8, 2, 105, 1, 0, '2022-06-18 05:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `live_sub_users`
--

CREATE TABLE `live_sub_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `is_watching` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mediafiles`
--

CREATE TABLE `mediafiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 0,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `is_private` int(11) UNSIGNED DEFAULT 0,
  `private_file` varchar(250) DEFAULT '',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `is_video` int(11) UNSIGNED DEFAULT 0,
  `video_file` varchar(255) DEFAULT '',
  `is_confirmed` int(11) UNSIGNED DEFAULT 0,
  `is_approved` int(11) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mediafiles`
--

INSERT INTO `mediafiles` (`id`, `user_id`, `file`, `is_private`, `private_file`, `created_at`, `is_video`, `video_file`, `is_confirmed`, `is_approved`) VALUES
(1, 1, 'upload/photos/2022/06/d4FSkNUFEjataGmPiEh2_full.jpg', 0, '', '2022-06-02 18:15:29', 0, '', 0, 1),
(2, 2, 'upload/photos/2022/06/rTKLcXfWzdPAUgi5ssFc_full.jpg', 0, '', '2022-06-03 18:58:14', 0, '', 0, 1),
(5, 105, 'upload/photos/2022/06/sbh9refkehKngF3wO4ri_full.jpg', 0, '', '2022-06-07 05:46:43', 0, '', 0, 1),
(6, 105, 'upload/photos/2022/06/9IIS7Cn85nBmO3ZLPJa5_full.jpg', 0, '', '2022-06-07 06:01:51', 0, '', 0, 1),
(8, 105, 'upload/photos/2022/06/5ZVKrmOXdUAXVFbHenL5_full.JPG', 0, '', '2022-06-07 06:04:33', 0, '', 0, 1),
(9, 105, 'upload/photos/2022/06/3PchigLnwlSDMLf9d5wI_full.jpg', 0, '', '2022-06-07 06:04:44', 0, '', 0, 1),
(10, 117, 'upload/photos/2022/06/Id2D8uafHM27NOVreXfs_full.jpg', 0, '', '2022-06-27 04:40:49', 0, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from` int(11) NOT NULL DEFAULT 0,
  `from_delete` int(11) DEFAULT 0,
  `to` int(11) NOT NULL DEFAULT 0,
  `to_delete` int(11) DEFAULT 0,
  `text` text DEFAULT NULL,
  `media` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `sticker` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `seen` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `notifier_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `recipient_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `seen` int(11) UNSIGNED DEFAULT 0,
  `type` varchar(50) NOT NULL DEFAULT '',
  `text` varchar(250) DEFAULT '',
  `url` varchar(150) DEFAULT '',
  `full_url` varchar(150) DEFAULT '',
  `push_sent` int(1) UNSIGNED DEFAULT 0,
  `created_at` int(11) UNSIGNED DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notifier_id`, `recipient_id`, `seen`, `type`, `text`, `url`, `full_url`, `push_sent`, `created_at`, `admin`) VALUES
(1, 1, 2, 1655505911, 'visit', '', '/@admin', '', 0, 1654323833, 0),
(2, 1, 103, 0, 'visit', '', '/@admin', '', 0, 1654506411, 0),
(3, 1, 99, 0, 'visit', '', '/@admin', '', 0, 1654513244, 0),
(4, 1, 92, 0, 'visit', '', '/@admin', '', 0, 1654513273, 0),
(5, 1, 86, 0, 'visit', '', '/@admin', '', 0, 1654513289, 0),
(7, 1, 55, 0, 'visit', '', '/@admin', '', 0, 1654552040, 0),
(8, 105, 103, 0, 'visit', '', '/@liadovm', '', 0, 1654566768, 0),
(9, 105, 94, 0, 'visit', '', '/@liadovm', '', 0, 1654567641, 0),
(10, 2, 104, 0, 'visit', '', '/@liadov', '', 0, 1654647768, 0),
(11, 2, 105, 0, 'visit', '', '/@liadov', '', 0, 1655504980, 0),
(12, 2, 96, 0, 'visit', '', '/@liadov', '', 0, 1655505090, 0),
(13, 2, 101, 0, 'visit', '', '/@liadov', '', 0, 1655505973, 0),
(14, 117, 1, 0, 'visit', '', '/@nishantmm21', '', 0, 1656325052, 0);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `option_value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_name`, `option_value`, `created_at`) VALUES
(1, 'load_config_in_session', '0', '2018-11-04 21:00:00'),
(2, 'meta_description', 'Magnoliadates', '2018-11-04 21:00:00'),
(3, 'meta_keywords', 'Magnoliadates', '2018-11-04 21:00:00'),
(4, 'default_title', 'Magnoliadates', '2018-11-04 21:00:00'),
(5, 'site_name', 'Magnoliadates', '2018-11-04 21:00:00'),
(6, 'default_language', 'english', '2018-11-04 21:00:00'),
(7, 'smtp_or_mail', 'smtp', '2018-11-04 21:00:00'),
(8, 'smtp_host', 'p3plzcpnl489492.prod.phx3.secureserver.net', '2018-11-04 21:00:00'),
(9, 'smtp_username', 'noreply@magnoliadates.com', '2018-11-04 21:00:00'),
(10, 'smtp_password', '4OccTu4nQiDxaZSxccSL0A==', '2018-11-04 21:00:00'),
(11, 'smtp_encryption', 'ssl', '2018-11-04 21:00:00'),
(12, 'smtp_port', '465', '2018-11-04 21:00:00'),
(13, 'siteEmail', 'noreply@magnoliadates.com', '2018-11-04 21:00:00'),
(14, 'theme', 'default', NULL),
(15, 'AllLogin', '0', '2018-11-04 21:00:00'),
(16, 'googleLogin', '1', '2018-11-04 21:00:00'),
(17, 'facebookLogin', '0', '2018-11-04 21:00:00'),
(18, 'twitterLogin', '0', '2018-11-04 21:00:00'),
(19, 'linkedinLogin', '0', '2018-11-04 21:00:00'),
(20, 'VkontakteLogin', '0', '2018-11-04 21:00:00'),
(21, 'facebookAppId', '', '2018-11-04 21:00:00'),
(22, 'facebookAppKey', '', '2018-11-04 21:00:00'),
(23, 'googleAppId', '167212765600-qhu5d6c8s8k6k9p8720h0p2l17c2j2vn.apps.googleusercontent.com', '2018-11-04 21:00:00'),
(24, 'googleAppKey', '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', '2018-11-04 21:00:00'),
(25, 'twitterAppId', '', '2018-11-04 21:00:00'),
(26, 'twitterAppKey', '', '2018-11-04 21:00:00'),
(27, 'linkedinAppId', '', '2018-11-04 21:00:00'),
(28, 'linkedinAppKey', '', '2018-11-04 21:00:00'),
(29, 'VkontakteAppId', '', '2018-11-04 21:00:00'),
(30, 'VkontakteAppKey', '', '2018-11-04 21:00:00'),
(31, 'instagramAppId', '', '2018-11-04 21:00:00'),
(32, 'instagramAppkey', '', '2018-11-04 21:00:00'),
(33, 'instagramLogin', '1', '2018-11-04 21:00:00'),
(34, 'sms_or_email', 'mail', '2018-11-09 08:28:39'),
(37, 'sms_phone_number', '', '2018-11-04 21:00:00'),
(38, 'paypal_id', 'AfZOYJS6cKOOtFovo96-FGTF68zaYiFlxpBoVrT1FMdcwh67-66GsbfDBYF8UaVjnL0NCYHcBRHJEfJt', '2018-11-09 08:36:37'),
(39, 'paypal_secret', 'EMB-UvRaEjuizjEfye8Jco24pBi-4Trtldn6u8aepwmAyTSyObHeeMS9qVEWZ2i2KOqOlWQp48shL0ZT', '2018-11-09 08:36:49'),
(40, 'paypal_mode', 'sandbox', '2018-11-09 08:36:09'),
(41, 'currency', 'USD', '2018-11-09 09:57:45'),
(42, 'last_backup', '00-00-0000', NULL),
(44, 'amazone_s3', '0', '2018-11-09 08:43:47'),
(45, 'bucket_name', '', '2018-11-09 08:44:13'),
(46, 'amazone_s3_key', '', '2018-11-09 08:44:34'),
(47, 'amazone_s3_s_key', '', '2018-11-09 08:44:51'),
(48, 'region', 'us-east-1', '2018-11-09 08:45:22'),
(50, 'sms_t_phone_number', '', '2018-11-04 21:00:00'),
(52, 'sms_twilio_username', '', '2018-11-04 21:00:00'),
(53, 'sms_twilio_password', '', '2018-11-04 21:00:00'),
(54, 'sms_provider', 'twilio', NULL),
(55, 'profile_picture_width_crop', '400', '2018-11-09 10:04:07'),
(56, 'profile_picture_height_crop', '400', '2018-11-09 10:04:09'),
(57, 'userDefaultAvatar', 'upload/photos/d-avatar.jpg', '2018-11-09 10:08:31'),
(58, 'profile_picture_image_quality', '80', '2018-11-09 10:10:08'),
(59, 'emailValidation', '1', '2018-11-09 08:28:58'),
(60, 'stripe_secret', '', '2018-11-09 08:35:37'),
(61, 'stripe_id', '', '2018-11-09 08:35:52'),
(62, 'push_id', 'f799dc13-ec22-4d1f-9306-b9fbde7d6106', NULL),
(63, 'push_key', 'NWFjODkxZDQtYWRhYy00NTJiLTlmYTItMmEwNmIwYWZlMTcx', NULL),
(64, 'push_id_2', NULL, NULL),
(65, 'push_key_2', NULL, NULL),
(68, 'terms', '                <h4>1- Write your Terms Of Use here.</h4>\n                <p>Lorem ipsum dolor sit amet, consectetur adisdpisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis sdnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n                <br>\n                <h4>2- Random title</h4>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL),
(69, 'about', '                <h4>1- Write your About us here.</h4>\n                <p>Lorem ipsum dolor sit amet, consectetur adisdpisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis sdnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n                <br>\n                <h4>2- Random title</h4>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL),
(70, 'privacy_policy', '                <h4>1- Write your Privacy Policy here.</h4>\n                <p>Lorem ipsum dolor sit amet, consectetur adisdpisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis sdnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n                <br>\n                <h4>2- Random title</h4>\n                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL),
(71, 'facebook_url', 'http://facebook.com', '2018-11-09 09:42:51'),
(72, 'twitter_url', 'http://twitter.com', '2018-11-09 09:42:53'),
(73, 'google_url', 'http://google.com', '2018-11-09 09:42:53'),
(74, 'currency_symbol', '$', '2018-11-09 09:18:29'),
(75, 'bag_of_credits_price', '50', '2018-11-09 09:12:55'),
(76, 'bag_of_credits_amount', '1000', '2018-11-09 09:13:00'),
(77, 'box_of_credits_price', '100', '2018-11-09 09:12:57'),
(78, 'box_of_credits_amount', '5000', '2018-11-09 09:13:01'),
(79, 'chest_of_credits_price', '150', '2018-11-09 09:13:03'),
(80, 'chest_of_credits_amount', '10000', '2018-11-09 09:13:05'),
(81, 'weekly_pro_plan', '8', '2018-11-09 09:13:07'),
(82, 'monthly_pro_plan', '25', '2018-11-09 09:24:48'),
(83, 'yearly_pro_plan', '280', '2018-11-09 09:24:50'),
(84, 'lifetime_pro_plan', '500', '2018-11-09 09:24:52'),
(85, 'worker_updateDelay', '4000', '2018-11-09 09:30:26'),
(87, 'profile_record_views_minute', '1', NULL),
(90, 'cost_per_gift', '50', '2018-11-09 09:37:38'),
(91, 'deleteAccount', '1', '2018-11-09 08:29:15'),
(92, 'user_registration', '1', '2018-11-09 08:28:24'),
(93, 'maxUpload', '96000000', NULL),
(94, 'mime_types', 'text/plain,video/mp4,video/mov,video/mpeg,video/flv,video/avi,video/webm,audio/wav,audio/mpeg,video/quicktime,audio/mp3,image/png,image/jpeg,image/gif,application/pdf,application/msword,application/zip,application/x-rar-compressed,text/pdf,application/x-pointplus,text/css', NULL),
(95, 'normal_boost_me_credits_price', '70', '2018-11-14 06:39:56'),
(96, 'more_stickers_credits_price', '45', '2018-11-14 06:39:59'),
(97, 'pro_boost_me_credits_price', '35', '2018-11-16 03:23:30'),
(98, 'boost_expire_time', '4', '2018-11-16 03:23:49'),
(99, 'not_pro_chat_limit_daily', '4', '2018-11-16 03:24:06'),
(100, 'not_pro_chat_credit', '30', NULL),
(101, 'not_pro_chat_stickers_credit', '25', '2018-11-16 03:25:55'),
(102, 'not_pro_chat_stickers_limit', '24', '2018-11-16 03:26:16'),
(103, 'cost_per_xvisits', '25', NULL),
(104, 'xvisits_expire_time', '5', NULL),
(105, 'cost_per_xmatche', '35', NULL),
(106, 'xmatche_expire_time', '5', NULL),
(107, 'cost_per_xlike', '45', NULL),
(108, 'xlike_expire_time', '5', NULL),
(109, 'google_place_api', '', NULL),
(110, 'wowonder_login', '0', NULL),
(111, 'wowonder_app_ID', '', NULL),
(112, 'wowonder_app_key', '', NULL),
(113, 'wowonder_domain_uri', '', NULL),
(114, 'wowonder_domain_icon', '', NULL),
(115, 'bank_transfer_note', 'In order to confirm the bank transfer, you will need to upload a receipt or take a screenshot of your transfer within 1 day from your payment date. If a bank transfer is made but no receipt is uploaded within this period, your order will be cancelled. We will verify and confirm your receipt within 3 working days from the date you upload it.', NULL),
(116, 'max_swaps', '50', NULL),
(117, 'stripe_version', 'v1', NULL),
(118, 'paysera_project_id', '0', NULL),
(119, 'paysera_password', '', NULL),
(120, 'paysera_test_mode', 'test', NULL),
(121, 'message_request_system', 'on', NULL),
(122, 'video_chat', '0', NULL),
(123, 'audio_chat', '0', NULL),
(124, 'video_accountSid', '', NULL),
(125, 'video_apiKeySid', '', NULL),
(126, 'video_apiKeySecret', '', NULL),
(127, 'giphy_api', 'GIjbMwjlfGcmNEgB0eqphgRgwNCYN8gh', NULL),
(128, 'default_unit', 'km', NULL),
(129, 'maintenance_mode', '0', NULL),
(130, 'displaymode', 'day', NULL),
(131, 'bank_description', '&lt;div class=&quot;dt_settings_header bg_gradient&quot;&gt;\r\n                    &lt;div class=&quot;dt_settings_circle-1&quot;&gt;&lt;/div&gt;\r\n                    &lt;div class=&quot;dt_settings_circle-2&quot;&gt;&lt;/div&gt;\r\n                    &lt;div class=&quot;bank_info_innr&quot;&gt;\r\n                        &lt;svg xmlns=&quot;http://www.w3.org/2000/svg&quot; viewBox=&quot;0 0 24 24&quot;&gt;&lt;path fill=&quot;currentColor&quot; d=&quot;M11.5,1L2,6V8H21V6M16,10V17H19V10M2,22H21V19H2M10,10V17H13V10M4,10V17H7V10H4Z&quot;&gt;&lt;/path&gt;&lt;/svg&gt;\r\n                        &lt;h4 class=&quot;bank_name&quot;&gt;BANK NAME&lt;/h4&gt;\r\n                        &lt;div class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col s12&quot;&gt;\r\n                                &lt;div class=&quot;bank_account&quot;&gt;\r\n                                    &lt;p&gt;4796824372433055&lt;/p&gt;\r\n                                    &lt;span class=&quot;help-block&quot;&gt;Account number / IBAN&lt;/span&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;col s12&quot;&gt;\r\n                                &lt;div class=&quot;bank_account_holder&quot;&gt;\r\n                                    &lt;p&gt;Antoian Kordiyal&lt;/p&gt;\r\n                                    &lt;span class=&quot;help-block&quot;&gt;Account name&lt;/span&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;col s6&quot;&gt;\r\n                                &lt;div class=&quot;bank_account_code&quot;&gt;\r\n                                    &lt;p&gt;TGBATRISXXX&lt;/p&gt;\r\n                                    &lt;span class=&quot;help-block&quot;&gt;Routing code&lt;/span&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                            &lt;div class=&quot;col s6&quot;&gt;\r\n                                &lt;div class=&quot;bank_account_country&quot;&gt;\r\n                                    &lt;p&gt;Turkey&lt;/p&gt;\r\n                                    &lt;span class=&quot;help-block&quot;&gt;Country&lt;/span&gt;\r\n                                &lt;/div&gt;\r\n                            &lt;/div&gt;\r\n                        &lt;/div&gt;\r\n                    &lt;/div&gt;\r\n                &lt;/div&gt;', NULL),
(132, 'version', '1.5', '2019-05-08 11:18:08'),
(133, 'google_tag_code', '', '2019-05-08 11:18:10'),
(134, 'avcall_pro', '1', '2019-05-08 11:18:11'),
(135, 'pro_system', '1', '2019-05-08 11:18:13'),
(136, 'img_blur_amount', '50', '2019-05-08 11:18:15'),
(137, 'emailNotification', '1', '2019-05-08 11:18:17'),
(138, 'activation_limit_system', '1', '2019-05-09 18:06:09'),
(139, 'max_activation_request', '5', '2019-05-09 18:06:09'),
(140, 'activation_request_time_limit', '5', '2019-05-09 18:06:09'),
(141, 'free_features', '0', '2019-08-22 14:10:20'),
(142, 'opposite_gender', '0', '2019-08-22 14:10:22'),
(143, 'image_verification', '0', '2019-08-22 14:10:24'),
(145, 'pending_verification', '0', '2019-08-22 14:10:27'),
(146, 'push', '1', '2019-08-30 19:18:56'),
(147, 'spam_warning', '1', '2019-08-30 19:18:57'),
(148, 'image_verification_start', '0', '2019-08-30 19:18:59'),
(149, 'two_factor', '1', '2020-02-23 14:17:03'),
(150, 'two_factor_type', 'email', '2020-02-23 14:17:03'),
(151, 'affiliate_system', '1', '2020-02-23 14:17:04'),
(152, 'affiliate_type', '1', '2020-02-23 14:17:04'),
(153, 'm_withdrawal', NULL, '2020-02-23 14:17:04'),
(154, 'amount_ref', NULL, '2020-02-23 14:17:04'),
(155, 'amount_percent_ref', NULL, '2020-02-23 14:17:04'),
(156, 'connectivitySystem', '0', '2020-02-23 14:17:04'),
(157, 'connectivitySystemLimit', '5000', '2020-02-23 14:17:04'),
(158, 'show_user_on_homepage', '1', '2020-02-23 14:17:04'),
(159, 'showed_user', '25', '2020-02-23 14:17:04'),
(160, 'max_photo_per_user', '12', '2020-02-23 14:17:04'),
(161, 'review_media_files', '0', '2020-02-23 14:17:04'),
(162, 'ffmpeg_sys', '0', '2020-02-23 14:17:04'),
(163, 'max_video_duration', '30', '2020-02-23 14:17:04'),
(164, 'ffmpeg_binary', './ffmpeg/ffmpeg', '2020-02-23 14:17:04'),
(165, 'disable_phone_field', 'on', '2020-07-30 15:29:34'),
(166, 'social_media_links', 'on', '2020-07-30 15:29:35'),
(167, 'yt_api', '', '2020-07-30 15:29:37'),
(168, 'seo', 'a:32:{s:5:\"index\";a:3:{s:5:\"title\";s:17:\"Index . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:12:\"find-matches\";a:3:{s:5:\"title\";s:24:\"Find-matches . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:5:\"about\";a:3:{s:5:\"title\";s:17:\"About . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:7:\"contact\";a:3:{s:5:\"title\";s:19:\"Contact . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:6:\"credit\";a:3:{s:5:\"title\";s:18:\"Credit . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:8:\"disliked\";a:3:{s:5:\"title\";s:20:\"Disliked . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:6:\"forgot\";a:3:{s:5:\"title\";s:18:\"Forgot . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:7:\"friends\";a:3:{s:5:\"title\";s:19:\"Friends . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:3:\"hot\";a:3:{s:5:\"title\";s:15:\"Hot . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:8:\"interest\";a:3:{s:5:\"title\";s:20:\"Interest . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:5:\"liked\";a:3:{s:5:\"title\";s:17:\"Liked . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:5:\"likes\";a:3:{s:5:\"title\";s:17:\"Likes . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:5:\"login\";a:3:{s:5:\"title\";s:17:\"Login . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:10:\"popularity\";a:3:{s:5:\"title\";s:22:\"Popularity . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:7:\"privacy\";a:3:{s:5:\"title\";s:19:\"Privacy . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:3:\"pro\";a:3:{s:5:\"title\";s:15:\"Pro . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:8:\"register\";a:3:{s:5:\"title\";s:20:\"Register . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:5:\"reset\";a:3:{s:5:\"title\";s:17:\"Reset . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:5:\"story\";a:3:{s:5:\"title\";s:17:\"Story . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:7:\"stories\";a:3:{s:5:\"title\";s:19:\"Stories . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:5:\"terms\";a:3:{s:5:\"title\";s:17:\"Terms . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:6:\"visits\";a:3:{s:5:\"title\";s:18:\"Visits . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:11:\"maintenance\";a:3:{s:5:\"title\";s:23:\"Maintenance . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:12:\"transactions\";a:3:{s:5:\"title\";s:24:\"Transactions . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:10:\"userverify\";a:3:{s:5:\"title\";s:22:\"Userverify . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:10:\"verifymail\";a:3:{s:5:\"title\";s:22:\"Verifymail . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:13:\"verifymailotp\";a:3:{s:5:\"title\";s:25:\"Verifymailotp . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:13:\"unusual-login\";a:3:{s:5:\"title\";s:25:\"Unusual-login . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:11:\"verifyphone\";a:3:{s:5:\"title\";s:23:\"Verifyphone . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:14:\"verifyphoneotp\";a:3:{s:5:\"title\";s:26:\"Verifyphoneotp . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:5:\"steps\";a:3:{s:5:\"title\";s:17:\"Steps . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}s:10:\"video-call\";a:3:{s:5:\"title\";s:22:\"Video-call . Magnoliadates\";s:16:\"meta_description\";s:9:\"Magnoliadates\";s:13:\"meta_keywords\";s:9:\"Magnoliadates\";}}', '2020-07-30 15:29:39'),
(169, 'lock_private_photo', '0', '2020-07-30 15:29:40'),
(170, 'lock_private_photo_fee', '30', '2020-07-30 15:29:42'),
(171, 'lock_pro_video', '0', '2020-07-30 15:29:43'),
(172, 'lock_pro_video_fee', '40', '2020-07-30 15:29:45'),
(173, 'verification_on_signup', '0', '2020-07-30 15:29:46'),
(174, 'credit_earn_system', '0', '2020-07-30 15:29:48'),
(175, 'credit_earn_max_days', '10', '2020-07-30 15:29:50'),
(176, 'credit_earn_day_amount', '50', '2020-07-30 15:29:51'),
(177, 'specific_email_signup', NULL, '2021-03-21 12:15:32'),
(178, 'push1', '0', '2021-03-21 12:15:32'),
(179, 'checkout_payment', 'yes', '2021-03-21 12:15:32'),
(180, 'checkout_mode', 'sandbox', '2021-03-21 12:15:32'),
(181, 'checkout_currency', 'USD', '2021-03-21 12:15:33'),
(182, 'checkout_seller_id', '', '2021-03-21 12:15:33'),
(183, 'checkout_publishable_key', '', '2021-03-21 12:15:33'),
(184, 'checkout_private_key', '', '2021-03-21 12:15:33'),
(185, 'cashfree_payment', 'no', '2021-03-21 12:15:34'),
(186, 'cashfree_mode', 'sandBox', '2021-03-21 12:15:34'),
(187, 'cashfree_client_key', '', '2021-03-21 12:15:34'),
(188, 'cashfree_secret_key', '', '2021-03-21 12:15:34'),
(189, 'iyzipay_payment', 'no', '2021-03-21 12:15:35'),
(190, 'iyzipay_mode', '1', '2021-03-21 12:15:35'),
(191, 'iyzipay_key', '', '2021-03-21 12:15:35'),
(192, 'iyzipay_buyer_id', '', '2021-03-21 12:15:35'),
(193, 'iyzipay_secret_key', '', '2021-03-21 12:15:36'),
(194, 'iyzipay_buyer_name', '', '2021-03-21 12:15:36'),
(195, 'iyzipay_buyer_surname', '', '2021-03-21 12:15:36'),
(196, 'iyzipay_buyer_gsm_number', '', '2021-03-21 12:15:37'),
(197, 'iyzipay_buyer_email', '', '2021-03-21 12:15:37'),
(198, 'iyzipay_identity_number', '', '2021-03-21 12:15:37'),
(199, 'iyzipay_address', '', '2021-03-21 12:15:37'),
(200, 'iyzipay_city', '', '2021-03-21 12:15:38'),
(201, 'iyzipay_country', '', '2021-03-21 12:15:38'),
(202, 'iyzipay_zip', '', '2021-03-21 12:15:38'),
(203, 'google_map_api_key', '', '2021-03-21 12:15:38'),
(204, 'payu_payment', 'no', '2021-03-21 12:15:38'),
(205, 'payu_mode', '1', '2021-03-21 12:15:38'),
(206, 'payu_merchant_id', '', '2021-03-21 12:15:38'),
(207, 'payu_secret_key', '', '2021-03-21 12:15:38'),
(208, 'payu_buyer_name', '', '2021-03-21 12:15:38'),
(209, 'payu_buyer_surname', '', '2021-03-21 12:15:38'),
(210, 'payu_buyer_gsm_number', '', '2021-03-21 12:15:38'),
(211, 'payu_buyer_email', '', '2021-03-21 12:15:38'),
(212, 'prevent_system', '0', '2021-08-08 12:15:24'),
(213, 'bad_login_limit', '4', '2021-08-08 12:15:24'),
(214, 'lock_time', '10', '2021-08-08 12:15:24'),
(215, 'paystack_payment', 'no', '2021-08-08 12:15:25'),
(216, 'paystack_secret_key', '', '2021-08-08 12:15:25'),
(217, 'twilio_chat_call', '0', '2021-08-08 12:15:25'),
(218, 'agora_chat_call', '0', '2021-08-08 12:15:25'),
(219, 'agora_chat_app_id', '', '2021-08-08 12:15:26'),
(220, 'agora_chat_app_certificate', '', '2021-08-08 12:15:26'),
(221, 'agora_chat_customer_id', '', '2021-08-08 12:15:26'),
(222, 'agora_chat_customer_secret', '', '2021-08-08 12:15:26'),
(223, 'live_video', '1', '2021-08-08 12:15:26'),
(224, 'live_video_save', '0', '2021-08-08 12:15:26'),
(225, 'agora_live_video', '0', '2021-08-08 12:15:27'),
(226, 'agora_app_id', '', '2021-08-08 12:15:27'),
(227, 'agora_app_certificate', '', '2021-08-08 12:15:27'),
(228, 'agora_customer_id', '', '2021-08-08 12:15:27'),
(229, 'agora_customer_certificate', '', '2021-08-08 12:15:27'),
(230, 'amazone_s3_2', '0', '2021-08-08 12:15:27'),
(231, 'bucket_name_2', '', '2021-08-08 12:15:27'),
(232, 'amazone_s3_key_2', '', '2021-08-08 12:15:28'),
(233, 'amazone_s3_s_key_2', '', '2021-08-08 12:15:28'),
(234, 'region_2', 'us-east-1', '2021-08-08 12:15:28'),
(235, 'qqAppId', '', '2021-08-08 12:15:30'),
(236, 'qqAppkey', '', '2021-08-08 12:15:30'),
(237, 'WeChatAppId', '', '2021-08-08 12:15:30'),
(238, 'WeChatAppkey', '', '2021-08-08 12:15:30'),
(239, 'DiscordAppId', '', '2021-08-08 12:15:30'),
(240, 'DiscordAppkey', '', '2021-08-08 12:15:30'),
(241, 'MailruAppId', '', '2021-08-08 12:15:30'),
(242, 'MailruAppkey', '', '2021-08-08 12:15:31'),
(243, 'qqLogin', '0', '2021-08-08 12:15:31'),
(244, 'WeChatLogin', '0', '2021-08-08 12:15:31'),
(245, 'DiscordLogin', '0', '2021-08-08 12:15:31'),
(246, 'MailruLogin', '0', '2021-08-08 12:15:31'),
(247, 'twilio_provider', '0', '2021-08-08 12:15:31'),
(248, 'bulksms_provider', '0', '2021-08-08 12:15:31'),
(249, 'bulksms_username', '', '2021-08-08 12:15:32'),
(250, 'bulksms_password', '', '2021-08-08 12:15:32'),
(251, 'messagebird_provider', '0', '2021-08-08 12:15:32'),
(252, 'messagebird_key', '', '2021-08-08 12:15:32'),
(253, 'messagebird_phone', '', '2021-08-08 12:15:32'),
(254, 'authorize_payment', 'no', '2021-08-08 12:15:33'),
(255, 'authorize_login_id', '', '2021-08-08 12:15:33'),
(256, 'authorize_transaction_key', '', '2021-08-08 12:15:33'),
(257, 'authorize_test_mode', 'SANDBOX', '2021-08-08 12:15:33'),
(258, 'securionpay_payment', 'no', '2021-08-08 12:15:33'),
(259, 'securionpay_public_key', '', '2021-08-08 12:15:34'),
(260, 'securionpay_secret_key', '', '2021-08-08 12:15:34'),
(261, 'invite_links_system', '0', '2021-08-08 12:15:35'),
(262, 'user_links_limit', '10', '2021-08-08 12:15:35'),
(263, 'expire_user_links', 'month', '2021-08-08 12:15:35'),
(264, 'infobip_provider', '0', '2021-08-08 12:15:35'),
(265, 'infobip_username', '', '2021-08-08 12:15:35'),
(266, 'infobip_password', '', '2021-08-08 12:15:35'),
(267, 'msg91_provider', '0', '2021-08-08 12:15:35'),
(268, 'msg91_authKey', '', '2021-08-08 12:15:36'),
(269, 'auto_user_like', '', '2021-08-08 12:15:36'),
(270, 'developers_page', '1', '2021-08-08 12:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `type` varchar(15) NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pro_plan` varchar(100) DEFAULT '',
  `credit_amount` varchar(100) DEFAULT '0',
  `via` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `text` text CHARACTER SET utf8 DEFAULT NULL,
  `postType` text CHARACTER SET utf8 DEFAULT NULL,
  `postFile` text CHARACTER SET utf8 DEFAULT NULL,
  `image` text CHARACTER SET utf8 DEFAULT NULL,
  `stream_name` text CHARACTER SET utf8 DEFAULT NULL,
  `agora_token` text CHARACTER SET utf8 DEFAULT NULL,
  `live_time` int(15) NOT NULL DEFAULT 0,
  `live_ended` int(11) NOT NULL DEFAULT 0,
  `agora_resource_id` text CHARACTER SET utf8 DEFAULT NULL,
  `agora_sid` text CHARACTER SET utf8 DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profilefields`
--

CREATE TABLE `profilefields` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` int(11) NOT NULL DEFAULT 0,
  `placement` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'profile',
  `registration_page` int(11) NOT NULL DEFAULT 0,
  `profile_page` int(11) NOT NULL DEFAULT 0,
  `select_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 0,
  `report_userid` int(11) UNSIGNED DEFAULT 0,
  `report_text` text DEFAULT NULL,
  `seen` int(11) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `platform` varchar(30) NOT NULL DEFAULT 'web',
  `platform_details` text DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session_id`, `user_id`, `platform`, `platform_details`, `time`) VALUES
(5, '04fab64486a892f0250466a8e7a4119c07b6e57f8ac46d821b8e06abbb0e879fcb9f0bcf69518870e2a08f2ebe0d5593fdb22010cd00c7c2', 1, 'web', 'a:5:{s:9:\"userAgent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:13:\"102.0.5005.63\";s:8:\"platform\";s:7:\"windows\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654178078),
(6, 'fd796ff415af96be176c5bba1b0bdb0fe24ed55fca521c95edb2ec27841dea70853c5e9e6202754349562478de4c54fafd4ec46fdb297de5', 1, 'web', 'a:5:{s:9:\"userAgent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:13:\"102.0.5005.61\";s:8:\"platform\";s:7:\"windows\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654239641),
(7, '7a41c34b79a9aef0fa2618cb6896e242a4e9edc847f4068978159c0bf5eb97e859b385ee356508259c4e6233c6d5ff637e7984152a3531d5', 1, 'web', 'a:5:{s:9:\"userAgent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:13:\"102.0.5005.61\";s:8:\"platform\";s:7:\"windows\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654242250),
(13, '52fd0a0188085a67caebf49fabef836d9f2f1eee3e027a164fd9a3e9583f46956a070d2d379837655a16bce575f3ddce9c819de125ba0029', 1, 'web', 'a:5:{s:9:\"userAgent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:13:\"102.0.5005.63\";s:8:\"platform\";s:7:\"windows\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654291414),
(15, '189ade02e8cde9a1670d48f519968c307b713a0fe606e0dde22585dfdca555f71d120a371219479874961657ae02e93fc17be9d9fc864620', 1, 'web', 'a:5:{s:9:\"userAgent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:13:\"102.0.5005.63\";s:8:\"platform\";s:7:\"windows\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654323790),
(16, '9525400b85b96b88cbc23fc5e53ffef3c41bfc9a897c3a11e9f1ac28dc9349f24c47f3df538323407470dce917e7c4b279db989a4b9208d1', 1, 'web', 'a:5:{s:9:\"userAgent\";s:117:\"Mozilla/5.0 (Linux; Android 10; POT-LX1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Mobile Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:9:\"102.0.0.0\";s:8:\"platform\";s:5:\"linux\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654323942),
(19, '5c28c4d820db29843eb9ab3c1350a2341d1fd2dbd4745901a98133113e6f6e8de7f186bb69180124a292685556cdeb779dbc336e83dfb3cb', 1, 'web', 'a:5:{s:9:\"userAgent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:13:\"102.0.5005.61\";s:8:\"platform\";s:7:\"windows\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654500256),
(20, '9bb34d85761e3258af7b9559a1907f52f74331e07ed9a5a91c5e6aa1fb80e31da9d370b2513153714feb2371a1843d099b28dd419dbab1ef', 1, 'web', 'a:5:{s:9:\"userAgent\";s:121:\"Mozilla/5.0 (Linux; Android 9; SM-G950W) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.78 Mobile Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:13:\"102.0.5005.78\";s:8:\"platform\";s:5:\"linux\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654506387),
(22, '0a205d71ed17a6f033e7c05b537b4ab6b89ec062d2b5172b44b53f82dbb7200447a63041943183855011bf6d8a37692913fce3a15a51f070', 1, 'web', 'a:5:{s:9:\"userAgent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:13:\"102.0.5005.61\";s:8:\"platform\";s:7:\"windows\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654524343),
(23, '95103655c9ab383385021f411e2a74dc232ea9d1bed341f5aa1e674558001a83a76162b7217014356c351da15b5e8a743a21ee96a86e25df', 1, 'web', 'a:5:{s:9:\"userAgent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:13:\"102.0.5005.63\";s:8:\"platform\";s:7:\"windows\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654524377),
(24, '73a4fdec8dfdec408979f6bccef4d82c9e08183c8c437b9d103470939b5f7db6baa436fb562543332ea6241cf767c279cf1e80a790df1885', 1, 'web', 'a:5:{s:9:\"userAgent\";s:119:\"Mozilla/5.0 (Linux; Android 11; 6025H_EEA) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Mobile Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:9:\"101.0.0.0\";s:8:\"platform\";s:5:\"linux\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654550478),
(26, '38a1a69bb1509ad8ae073ac6e17209a565867c9e4827b9943e8063982646c2c1ee7982766597743576d7c0780ceb8fbf964c102ebc16d75f', 2, 'web', 'a:5:{s:9:\"userAgent\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:13:\"102.0.5005.63\";s:8:\"platform\";s:7:\"windows\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1654570459),
(28, 'a629caef8ad97a1570d3b256a295bfcce0b274d1d05ec101d73c43b5b74b3fadfec402d07334936096bf57c6ff19504ff145e2a32991ea96', 1, 'web', 'a:5:{s:9:\"userAgent\";s:116:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36\";s:4:\"name\";s:13:\"Google Chrome\";s:7:\"version\";s:14:\"102.0.5005.115\";s:8:\"platform\";s:7:\"windows\";s:7:\"pattern\";s:66:\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\";}', 1655097816);

-- --------------------------------------------------------

--
-- Table structure for table `site_ads`
--

CREATE TABLE `site_ads` (
  `id` int(11) NOT NULL,
  `placement` varchar(50) NOT NULL DEFAULT '',
  `code` text DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site_ads`
--

INSERT INTO `site_ads` (`id`, `placement`, `code`, `active`) VALUES
(1, 'header', '', 0),
(2, 'footer', '', 0),
(3, 'home_side_bar', '', 0),
(4, 'profile_side_bar', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stickers`
--

CREATE TABLE `stickers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `is_pro` int(11) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `success_stories`
--

CREATE TABLE `success_stories` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `story_user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `quote` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `story_date` date NOT NULL,
  `status` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userfields`
--

CREATE TABLE `userfields` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `avater` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'upload/photos/d-avatar.jpg  ',
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `gender` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `facebook` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `google` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `twitter` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `linkedin` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `website` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `instagram` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_device_id` varchar(100) CHARACTER SET utf8 DEFAULT '',
  `language` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'english',
  `email_code` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `src` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Undefined',
  `ip_address` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'user',
  `phone_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `timezone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `lat` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `lng` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `about` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(200) DEFAULT '0000-00-00',
  `country` varchar(10) CHARACTER SET utf8 DEFAULT '',
  `registered` int(10) UNSIGNED DEFAULT 0,
  `lastseen` int(10) UNSIGNED DEFAULT 0,
  `smscode` int(10) UNSIGNED DEFAULT 0,
  `pro_time` int(10) UNSIGNED DEFAULT 0,
  `last_location_update` int(10) UNSIGNED DEFAULT 0,
  `balance` decimal(11,2) UNSIGNED DEFAULT 0.00,
  `verified` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `status` enum('0','1','2','3') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `active` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `admin` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `start_up` enum('0','1','2','3') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `is_pro` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `pro_type` enum('0','1','2','3','4') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `social_login` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT current_timestamp(),
  `mobile_device_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `web_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `mobile_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `height` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `hair_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `web_token_created_at` int(11) DEFAULT 0,
  `mobile_token_created_at` int(11) DEFAULT 0,
  `web_device` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `mobile_device` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `interest` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `cc_phone_number` varchar(50) DEFAULT '',
  `zip` int(11) UNSIGNED DEFAULT 0,
  `state` varchar(50) DEFAULT '',
  `relationship` int(10) UNSIGNED DEFAULT 0,
  `work_status` int(10) UNSIGNED DEFAULT 0,
  `education` int(10) UNSIGNED DEFAULT 0,
  `ethnicity` int(10) UNSIGNED DEFAULT 0,
  `body` int(10) UNSIGNED DEFAULT 0,
  `character` int(10) UNSIGNED DEFAULT 0,
  `children` int(10) UNSIGNED DEFAULT 0,
  `friends` int(10) UNSIGNED DEFAULT 0,
  `pets` int(10) UNSIGNED DEFAULT 0,
  `live_with` int(10) UNSIGNED DEFAULT 0,
  `car` int(10) UNSIGNED DEFAULT 0,
  `religion` int(10) UNSIGNED DEFAULT 0,
  `smoke` int(10) UNSIGNED DEFAULT 0,
  `drink` int(10) UNSIGNED DEFAULT 0,
  `travel` int(10) UNSIGNED DEFAULT 0,
  `music` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `dish` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `song` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `hobby` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `sport` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `book` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `movie` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `colour` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `tv` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `privacy_show_profile_on_google` int(10) UNSIGNED DEFAULT 0,
  `privacy_show_profile_random_users` int(10) UNSIGNED DEFAULT 0,
  `privacy_show_profile_match_profiles` int(10) UNSIGNED DEFAULT 0,
  `email_on_profile_view` int(10) UNSIGNED DEFAULT 0,
  `email_on_new_message` int(10) UNSIGNED DEFAULT 0,
  `email_on_profile_like` int(10) UNSIGNED DEFAULT 0,
  `email_on_purchase_notifications` int(10) UNSIGNED DEFAULT 0,
  `email_on_special_offers` int(10) UNSIGNED DEFAULT 0,
  `email_on_announcements` int(11) UNSIGNED DEFAULT 0,
  `phone_verified` int(11) UNSIGNED DEFAULT 0,
  `online` int(11) UNSIGNED DEFAULT 0,
  `is_boosted` int(11) UNSIGNED DEFAULT 0,
  `boosted_time` int(11) UNSIGNED DEFAULT 0,
  `is_buy_stickers` int(11) UNSIGNED DEFAULT 0,
  `user_buy_xvisits` int(11) UNSIGNED DEFAULT 0,
  `xvisits_created_at` int(11) UNSIGNED DEFAULT 0,
  `user_buy_xmatches` int(11) UNSIGNED DEFAULT 0,
  `xmatches_created_at` int(11) UNSIGNED DEFAULT 0,
  `user_buy_xlikes` int(11) UNSIGNED DEFAULT 0,
  `xlikes_created_at` int(11) UNSIGNED DEFAULT 0,
  `show_me_to` varchar(50) NOT NULL DEFAULT '',
  `email_on_get_gift` int(11) UNSIGNED DEFAULT 0,
  `email_on_got_new_match` int(11) UNSIGNED DEFAULT 0,
  `email_on_chat_request` int(11) UNSIGNED DEFAULT 0,
  `last_email_sent` int(32) UNSIGNED DEFAULT 0,
  `approved_at` int(11) UNSIGNED DEFAULT 0,
  `snapshot` varchar(250) NOT NULL DEFAULT '',
  `hot_count` int(11) UNSIGNED DEFAULT 0,
  `spam_warning` int(11) UNSIGNED DEFAULT 0,
  `activation_request_count` int(11) UNSIGNED DEFAULT 0,
  `last_activation_request` int(11) UNSIGNED DEFAULT 0,
  `two_factor` int(11) UNSIGNED DEFAULT 0,
  `two_factor_verified` int(11) UNSIGNED DEFAULT 0,
  `two_factor_email_code` varchar(250) DEFAULT '',
  `new_email` varchar(250) DEFAULT '',
  `new_phone` varchar(250) DEFAULT '',
  `permission` text DEFAULT NULL,
  `referrer` int(11) UNSIGNED DEFAULT 0,
  `aff_balance` varchar(100) DEFAULT '0',
  `paypal_email` varchar(100) DEFAULT '',
  `confirm_followers` enum('0','1') DEFAULT '1',
  `reward_daily_credit` int(11) UNSIGNED DEFAULT 0,
  `lock_pro_video` int(11) UNSIGNED DEFAULT 1,
  `lock_private_photo` int(11) UNSIGNED DEFAULT 1,
  `conversation_id` varchar(250) DEFAULT NULL,
  `info_file` varchar(300) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `paystack_ref` text CHARACTER SET utf8 DEFAULT NULL,
  `securionpay_key` int(30) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `avater`, `address`, `gender`, `facebook`, `google`, `twitter`, `linkedin`, `website`, `instagram`, `web_device_id`, `language`, `email_code`, `src`, `ip_address`, `type`, `phone_number`, `timezone`, `lat`, `lng`, `about`, `birthday`, `country`, `registered`, `lastseen`, `smscode`, `pro_time`, `last_location_update`, `balance`, `verified`, `status`, `active`, `admin`, `start_up`, `is_pro`, `pro_type`, `social_login`, `created_at`, `updated_at`, `deleted_at`, `mobile_device_id`, `web_token`, `mobile_token`, `height`, `hair_color`, `web_token_created_at`, `mobile_token_created_at`, `web_device`, `mobile_device`, `interest`, `location`, `cc_phone_number`, `zip`, `state`, `relationship`, `work_status`, `education`, `ethnicity`, `body`, `character`, `children`, `friends`, `pets`, `live_with`, `car`, `religion`, `smoke`, `drink`, `travel`, `music`, `dish`, `song`, `hobby`, `city`, `sport`, `book`, `movie`, `colour`, `tv`, `privacy_show_profile_on_google`, `privacy_show_profile_random_users`, `privacy_show_profile_match_profiles`, `email_on_profile_view`, `email_on_new_message`, `email_on_profile_like`, `email_on_purchase_notifications`, `email_on_special_offers`, `email_on_announcements`, `phone_verified`, `online`, `is_boosted`, `boosted_time`, `is_buy_stickers`, `user_buy_xvisits`, `xvisits_created_at`, `user_buy_xmatches`, `xmatches_created_at`, `user_buy_xlikes`, `xlikes_created_at`, `show_me_to`, `email_on_get_gift`, `email_on_got_new_match`, `email_on_chat_request`, `last_email_sent`, `approved_at`, `snapshot`, `hot_count`, `spam_warning`, `activation_request_count`, `last_activation_request`, `two_factor`, `two_factor_verified`, `two_factor_email_code`, `new_email`, `new_phone`, `permission`, `referrer`, `aff_balance`, `paypal_email`, `confirm_followers`, `reward_daily_credit`, `lock_pro_video`, `lock_private_photo`, `conversation_id`, `info_file`, `paystack_ref`, `securionpay_key`) VALUES
(1, 'admin', 'noreply@magnoliadates.com', '$2y$11$gTSRNVA9aoqKfaIbXNEdtObUgvdfD1NUlwxOitNEsNANzKy9PeTBa', 'Admin', '.', 'upload/photos/2022/06/d4FSkNUFEjataGmPiEh2_avater.jpg', '', '4525', '', '', '', '', '', NULL, '', 'english', '9366', 'installation', '', 'admin', '+123123123', '', '25.9644027', '-80.1370743', 'Hola!!!!', '1994-06-16', 'US', 1654073630, 1655512378, 3599, 1655098362, 1655555940, '9999.00', '1', '0', '1', '1', '3', '1', '4', '0', '2022-06-01 12:53:50', '2022-06-01 08:53:50', '2022-06-01 08:53:50', '', NULL, '', '145', '1', 0, 0, NULL, '', 'Dating,friendship,', 'Newyork', '', 0, '', 1, 5, 5, 8, 6, 8, 2, 2, 2, 3, 2, 5, 1, 1, 1, '', '', '', '', '', '', '', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'US', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, '', '', '', NULL, 0, '0', '', '1', 0, 1, 1, NULL, '', NULL, 0),
(2, 'liadov', 'mike793@gmail.com', '$2y$11$j6CXZjxhj1xOPsRK6079e.YHMsAh9Y5PZ4LSGX6U4Ef/u7K5C8paO', 'Mike', 'Lieadov', 'upload/photos/2022/06/rTKLcXfWzdPAUgi5ssFc_avater.jpg', '', '4525', '', '', '', '', '', '', '', 'english', '3471', 'site', '138.207.221.160', 'user', '', 'UTC', '25.9643781', '-80.1369729', '', '06/09/1965', 'US', 1654268263, 1655512102, 4812, 0, 1655512076, '0.00', '1', '3', '1', '0', '3', '0', '0', '0', '2022-06-03 18:57:43', '2022-06-03 14:57:43', '2022-06-03 14:57:43', '', NULL, '', '177', '', 0, 0, NULL, '', NULL, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, '', '', '', NULL, 0, '0', '', '1', 0, 1, 1, NULL, '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_chat_buy`
--

CREATE TABLE `user_chat_buy` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `chat_user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_gifts`
--

CREATE TABLE `user_gifts` (
  `id` int(11) NOT NULL,
  `from` int(11) NOT NULL DEFAULT 0,
  `to` int(11) NOT NULL DEFAULT 0,
  `gift_id` int(11) NOT NULL DEFAULT 0,
  `time` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `verification_requests`
--

CREATE TABLE `verification_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `message` text DEFAULT NULL,
  `user_name` varchar(150) NOT NULL DEFAULT '',
  `passport` varchar(3000) NOT NULL DEFAULT '',
  `photo` varchar(3000) NOT NULL DEFAULT '',
  `seen` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `videocalles`
--

CREATE TABLE `videocalles` (
  `id` int(11) NOT NULL,
  `access_token` text DEFAULT NULL,
  `access_token_2` text DEFAULT NULL,
  `from_id` int(11) NOT NULL DEFAULT 0,
  `to_id` int(11) NOT NULL DEFAULT 0,
  `room_name` varchar(50) NOT NULL DEFAULT '',
  `active` int(11) NOT NULL DEFAULT 0,
  `called` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  `declined` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 0,
  `view_userid` int(11) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `user_id`, `view_userid`, `created_at`) VALUES
(1, 1, 2, '2022-06-04 10:23:53'),
(2, 1, 103, '2022-06-06 13:06:51'),
(3, 1, 99, '2022-06-06 15:00:44'),
(4, 1, 92, '2022-06-06 15:01:13'),
(5, 1, 86, '2022-06-06 15:01:29'),
(7, 1, 55, '2022-06-07 01:47:20'),
(8, 105, 103, '2022-06-07 05:52:48'),
(9, 105, 94, '2022-06-07 06:07:21'),
(10, 2, 104, '2022-06-08 04:22:48'),
(11, 2, 105, '2022-06-18 05:29:40'),
(12, 2, 96, '2022-06-18 05:31:30'),
(13, 2, 101, '2022-06-18 05:46:13'),
(14, 117, 1, '2022-06-27 04:47:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininvitations`
--
ALTER TABLE `admininvitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `affiliates_requests`
--
ALTER TABLE `affiliates_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `time` (`time`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `announcement_views`
--
ALTER TABLE `announcement_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `announcement_id` (`announcement_id`);

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_user_id` (`app_user_id`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `apps_permission`
--
ALTER TABLE `apps_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `audiocalls`
--
ALTER TABLE `audiocalls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_id` (`to_id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `call_id` (`call_id`),
  ADD KEY `called` (`called`),
  ADD KEY `declined` (`declined`);

--
-- Indexes for table `bad_login`
--
ALTER TABLE `bad_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `bank_receipts`
--
ALTER TABLE `bank_receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `banned_ip`
--
ALTER TABLE `banned_ip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_address` (`ip_address`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `block_userid` (`block_userid`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `category` (`category`),
  ADD KEY `tags` (`tags`(255));

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `app_id` (`app_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `receiver_id_2` (`receiver_id`),
  ADD KEY `sender_id_2` (`sender_id`),
  ADD KEY `from_delete` (`from_delete`),
  ADD KEY `to_delete` (`to_delete`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_credits`
--
ALTER TABLE `daily_credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `following_id` (`following_id`),
  ADD KEY `follower_id` (`follower_id`),
  ADD KEY `active` (`active`),
  ADD KEY `order1` (`following_id`,`id`),
  ADD KEY `order2` (`follower_id`,`id`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `hot`
--
ALTER TABLE `hot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `hot_userid` (`hot_userid`),
  ADD KEY `val` (`hot_userid`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `invitation_links`
--
ALTER TABLE `invitation_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `invited_id` (`invited_id`),
  ADD KEY `code` (`code`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `langs_english_index` (`english`),
  ADD KEY `ref` (`ref`(191)),
  ADD KEY `langs_lang_key_unique` (`lang_key`) USING BTREE;

--
-- Indexes for table `langs_rus1`
--
ALTER TABLE `langs_rus1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `langs_english_index` (`english`),
  ADD KEY `ref` (`ref`(191)),
  ADD KEY `langs_lang_key_unique` (`lang_key`) USING BTREE;

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `like_userid` (`like_userid`),
  ADD KEY `is_like` (`is_like`),
  ADD KEY `is_dislike` (`is_dislike`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `live_sub_users`
--
ALTER TABLE `live_sub_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `is_watching` (`is_watching`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `mediafiles`
--
ALTER TABLE `mediafiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `file` (`file`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `is_private` (`is_private`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`),
  ADD KEY `seen` (`seen`),
  ADD KEY `order1` (`from`,`id`),
  ADD KEY `order3` (`to`,`id`),
  ADD KEY `order7` (`seen`,`id`),
  ADD KEY `order8` (`id`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `messages_from_delete_index` (`from_delete`),
  ADD KEY `messages_to_delete_index` (`to_delete`);
ALTER TABLE `messages` ADD FULLTEXT KEY `text` (`text`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifier_id` (`notifier_id`),
  ADD KEY `recipient_id` (`recipient_id`),
  ADD KEY `type` (`type`),
  ADD KEY `push_sent` (`push_sent`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `seen` (`seen`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `options_option_name_unique` (`option_name`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `live_time` (`live_time`),
  ADD KEY `live_ended` (`live_ended`),
  ADD KEY `time` (`time`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `profilefields`
--
ALTER TABLE `profilefields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_page` (`registration_page`),
  ADD KEY `active` (`active`),
  ADD KEY `profile_page` (`profile_page`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `report_userid` (`report_userid`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `seen` (`seen`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`(191)),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `platform` (`platform`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `site_ads`
--
ALTER TABLE `site_ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `placement` (`placement`);

--
-- Indexes for table `stickers`
--
ALTER TABLE `stickers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file` (`file`);

--
-- Indexes for table `success_stories`
--
ALTER TABLE `success_stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `story_user_id` (`story_user_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `userfields`
--
ALTER TABLE `userfields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_first_name_index` (`first_name`),
  ADD KEY `users_web_token` (`web_token`) USING BTREE,
  ADD KEY `users_mobile_token` (`mobile_token`) USING BTREE,
  ADD KEY `users_hair_color` (`hair_color`) USING BTREE,
  ADD KEY `is_boosted` (`is_boosted`),
  ADD KEY `is_buy_stickers` (`is_buy_stickers`),
  ADD KEY `ethnicity` (`ethnicity`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `address` (`address`),
  ADD KEY `language` (`language`),
  ADD KEY `lat` (`lat`),
  ADD KEY `lng` (`lng`),
  ADD KEY `birthday` (`birthday`(191)),
  ADD KEY `lastseen` (`lastseen`),
  ADD KEY `start_up` (`start_up`),
  ADD KEY `height` (`height`),
  ADD KEY `location` (`location`),
  ADD KEY `relationship` (`relationship`),
  ADD KEY `work_status` (`work_status`),
  ADD KEY `education` (`education`),
  ADD KEY `education_2` (`education`),
  ADD KEY `body` (`body`),
  ADD KEY `character` (`character`),
  ADD KEY `children` (`children`),
  ADD KEY `friends` (`friends`),
  ADD KEY `pets` (`pets`),
  ADD KEY `live_with` (`live_with`),
  ADD KEY `religion` (`religion`),
  ADD KEY `smoke` (`smoke`),
  ADD KEY `drink` (`drink`),
  ADD KEY `online` (`online`),
  ADD KEY `xvisits_created_at` (`xvisits_created_at`),
  ADD KEY `show_me_to` (`show_me_to`),
  ADD KEY `verified` (`verified`),
  ADD KEY `xmatches_created_at` (`xmatches_created_at`),
  ADD KEY `smscode` (`smscode`),
  ADD KEY `password` (`password`),
  ADD KEY `gender` (`gender`),
  ADD KEY `email_code` (`email_code`),
  ADD KEY `type` (`type`),
  ADD KEY `country` (`country`),
  ADD KEY `balance` (`balance`),
  ADD KEY `active` (`active`),
  ADD KEY `status` (`status`),
  ADD KEY `admin` (`admin`),
  ADD KEY `location_2` (`location`),
  ADD KEY `relationship_2` (`relationship`),
  ADD KEY `work_status_2` (`work_status`),
  ADD KEY `education_3` (`education`),
  ADD KEY `body_2` (`body`),
  ADD KEY `character_2` (`character`,`children`,`friends`,`pets`,`live_with`,`car`,`religion`),
  ADD KEY `height_2` (`height`),
  ADD KEY `show_me_to_2` (`show_me_to`),
  ADD KEY `securionpay_key` (`securionpay_key`);

--
-- Indexes for table `user_chat_buy`
--
ALTER TABLE `user_chat_buy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `chat_user_id` (`chat_user_id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `user_gifts`
--
ALTER TABLE `user_gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`),
  ADD KEY `gift_id` (`gift_id`);

--
-- Indexes for table `verification_requests`
--
ALTER TABLE `verification_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `videocalles`
--
ALTER TABLE `videocalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_id` (`to_id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `called` (`called`),
  ADD KEY `declined` (`declined`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `view_userid` (`view_userid`),
  ADD KEY `created_at` (`created_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admininvitations`
--
ALTER TABLE `admininvitations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `affiliates_requests`
--
ALTER TABLE `affiliates_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement_views`
--
ALTER TABLE `announcement_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apps_permission`
--
ALTER TABLE `apps_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audiocalls`
--
ALTER TABLE `audiocalls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bad_login`
--
ALTER TABLE `bad_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_receipts`
--
ALTER TABLE `bank_receipts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banned_ip`
--
ALTER TABLE `banned_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_credits`
--
ALTER TABLE `daily_credits`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hot`
--
ALTER TABLE `hot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invitation_links`
--
ALTER TABLE `invitation_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `langs`
--
ALTER TABLE `langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1901;

--
-- AUTO_INCREMENT for table `langs_rus1`
--
ALTER TABLE `langs_rus1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1837;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `live_sub_users`
--
ALTER TABLE `live_sub_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mediafiles`
--
ALTER TABLE `mediafiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profilefields`
--
ALTER TABLE `profilefields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `site_ads`
--
ALTER TABLE `site_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stickers`
--
ALTER TABLE `stickers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `success_stories`
--
ALTER TABLE `success_stories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userfields`
--
ALTER TABLE `userfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `user_chat_buy`
--
ALTER TABLE `user_chat_buy`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_gifts`
--
ALTER TABLE `user_gifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verification_requests`
--
ALTER TABLE `verification_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videocalles`
--
ALTER TABLE `videocalles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
