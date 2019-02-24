-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 24 2019 г., 13:50
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `id` int(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `manufacture_year` year(4) NOT NULL,
  `city_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cars`
--

INSERT INTO `cars` (`id`, `name`, `manufacture_year`, `city_id`, `create_at`, `update_at`) VALUES
(1, 'Машина', 2019, 1, '2019-02-24 11:25:51', NULL),
(4, 'Машина', 2017, 2, '2019-02-24 12:35:01', NULL),
(8, 'просто машинка', 2001, 2, '2019-02-24 13:08:33', NULL),
(9, 'авто', 1997, 3, '2019-02-24 13:09:12', NULL),
(10, 'авто', 1997, 3, '2019-02-24 13:11:55', NULL),
(13, '13131313', 1999, 1, '2019-02-24 13:13:34', NULL),
(27, 'rrr', 2000, 1, '2019-02-24 13:39:17', NULL),
(28, 'просто машинка', 2002, 3, '2019-02-24 13:49:35', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `post_index` varchar(50) DEFAULT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `post_index`, `create_at`, `update_at`) VALUES
(1, 'крматорск', '54545454', '0000-00-00 00:00:00', NULL),
(2, 'sdfsdfsdf', '32234234', '2019-02-22 19:06:48', NULL),
(3, 'fggsdfg', '888888', '2019-02-23 10:34:20', NULL),
(4, 'Фыва', '111', '2019-02-24 12:13:24', NULL),
(10, 'Город', '123', '2019-02-24 12:51:12', NULL),
(11, 'Город', '12345', '2019-02-24 12:52:03', NULL),
(12, 'dfasdf', '1', '2019-02-24 13:08:00', NULL),
(13, 'a', '1', '2019-02-24 13:23:36', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
