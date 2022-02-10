-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 09 2022 г., 16:28
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `education`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `news_title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `news_text` text COLLATE utf8mb4_general_ci NOT NULL,
  `image` text COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `publication_date` date NOT NULL,
  `news_activity` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `region_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`region_name`) VALUES
('Днепропетровская область'),
('Донецкая область'),
('Запорожская область'),
('Одесская область'),
('Харьковская область');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `surname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `patronymic` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `surname`, `name`, `patronymic`, `address`, `date_of_birth`, `role`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', 'ул. Мира д.35 кв.6', '1998-09-09', 'Аналитик данных'),
(2, 'Петров', 'Пётр', 'Петрович', 'ул. Мира д.35 кв.9', '1990-09-09', 'Программист'),
(3, 'Сидоров', 'Иван', 'Петрович', 'ул. Мира д.35 кв.14', '1995-09-09', 'Программист'),
(4, 'Буря', 'Ярослав', 'Викторович', 'ул. Мира д.36 кв.10', '1998-10-09', 'Дизайнер'),
(5, 'Буря', 'Иван', 'Викторович', 'ул. Паровая д.36', '1998-10-09', 'Маркетолог');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`region_name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
