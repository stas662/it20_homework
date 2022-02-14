-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 14 2022 г., 14:05
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
-- База данных: `hm_3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `certificates`
--

CREATE TABLE `certificates` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `fio` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `series` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `number` int NOT NULL,
  `year` year DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `certificates`
--

INSERT INTO `certificates` (`id`, `user_id`, `fio`, `series`, `number`, `year`) VALUES
(1, 3, 'Петров Петр Петрович', 'GD', 23154, NULL),
(2, 7, 'Иванов Иван Иванович', 'HG', 20902, 2018),
(3, 2, 'Буря Виктор Петрович', 'GD', 22541, 2018),
(4, 7, 'Иванов Иван Иванович', 'QS', 31222, NULL),
(5, 2, 'Буря Виктор Петрович', 'DD', 23541, 2019);

-- --------------------------------------------------------

--
-- Структура таблицы `directors`
--

CREATE TABLE `directors` (
  `id` int NOT NULL,
  `phones` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `organization` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `directors`
--

INSERT INTO `directors` (`id`, `phones`, `name`, `organization`) VALUES
(1, '+330129222', 'Валерий', 'ВУЗ ПАВР'),
(2, '+3212122', 'Дмитрий', 'ВРвВ'),
(3, '+220112', 'Елена', 'ВУЗ КАВ'),
(4, '+3000000', 'Петр', 'ВУЗ ЗИИ'),
(5, '+331212', 'Николай', 'АзР'),
(6, '+399999', 'Елесей', 'ВУ ПАВР');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `created_at` date NOT NULL,
  `news` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `created_at`, `news`) VALUES
(1, '2018-06-18', 'Новость 1'),
(2, '2018-06-19', 'Новость 2'),
(3, '2018-06-20', 'Новость 3'),
(4, '2018-06-21', 'Новость 4'),
(5, '2018-06-22', 'Новость 5'),
(6, '2018-06-17', 'Новость 6'),
(7, '2018-06-16', 'Новость 7'),
(8, '2018-06-15', 'Новость 8'),
(9, '2018-06-14', 'Новость 9'),
(10, '2018-06-23', 'Новость 10'),
(11, '2018-06-14', 'Новость 11'),
(12, '2018-06-25', 'Новость 12');

-- --------------------------------------------------------

--
-- Структура таблицы `organizations`
--

CREATE TABLE `organizations` (
  `id` int NOT NULL,
  `count_students` int NOT NULL,
  `type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `organizations`
--

INSERT INTO `organizations` (`id`, `count_students`, `type_id`) VALUES
(1, 25, 3),
(2, 10, 4),
(3, 3, 21),
(4, 18, 5),
(5, 7, 24),
(6, 23, 5),
(7, 5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `practice`
--

CREATE TABLE `practice` (
  `id` int NOT NULL,
  `rating` int NOT NULL,
  `practice_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `practice`
--

INSERT INTO `practice` (`id`, `rating`, `practice_id`) VALUES
(1, 87, 1888),
(2, 67, 1878),
(3, 97, 1888),
(4, 77, 1898),
(5, 84, 1888);

-- --------------------------------------------------------

--
-- Структура таблицы `publishes`
--

CREATE TABLE `publishes` (
  `id` int NOT NULL,
  `publish_date` date NOT NULL,
  `body` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `publishes`
--

INSERT INTO `publishes` (`id`, `publish_date`, `body`) VALUES
(1, '2018-06-21', 'Текст 1'),
(2, '2018-06-22', 'Текст 2'),
(3, '2018-06-23', 'Текст 3'),
(4, '2018-07-19', 'Текст 4'),
(5, '2018-07-20', 'Текст 5'),
(6, '2018-08-11', 'Текст 6'),
(7, '2018-08-21', 'Текст 7'),
(8, '2018-09-21', 'Текст 8');

-- --------------------------------------------------------

--
-- Структура таблицы `schools`
--

CREATE TABLE `schools` (
  `id` int NOT NULL,
  `region_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `schools`
--

INSERT INTO `schools` (`id`, `region_id`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(5, 2),
(6, 1),
(7, 1),
(8, 3),
(9, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `surname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `surname`, `birthday`) VALUES
(1, 'Петров', '1995-09-10'),
(2, 'Петрохов', '1996-09-10'),
(3, 'Иванов', '1994-09-10'),
(4, 'Буря', '1995-09-10'),
(5, 'Андреев', '1998-09-10'),
(6, 'Алексеев', '1995-09-10');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `surname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `surname`, `email`) VALUES
(1, 'Петров', 'petrov@mail.com'),
(2, 'Иванов', 'ivanov@gmail.com'),
(3, 'Буря', 'burya@gmail.com'),
(4, 'Алексеев', 'Alekseyev@mail.com'),
(5, 'Андреев', 'Andreyev@gmail.com'),
(6, 'Васильев', 'vasiliev@gmail.com'),
(7, 'Котов', 'kotov@mail.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `practice`
--
ALTER TABLE `practice`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publishes`
--
ALTER TABLE `publishes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `practice`
--
ALTER TABLE `practice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `publishes`
--
ALTER TABLE `publishes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
