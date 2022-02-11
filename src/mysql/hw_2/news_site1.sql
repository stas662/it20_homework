-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 11 2022 г., 15:20
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
-- База данных: `news_site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id_comment` int NOT NULL,
  `body_comment` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `likes_comment` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `comment_like`
--

CREATE TABLE `comment_like` (
  `id_comment` int NOT NULL,
  `id_like` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comment_like`
--

INSERT INTO `comment_like` (`id_comment`, `id_like`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `comment_post`
--

CREATE TABLE `comment_post` (
  `id_post` int NOT NULL,
  `id_comment` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comment_post`
--

INSERT INTO `comment_post` (`id_post`, `id_comment`) VALUES
(1, 1),
(1, 2),
(4, 4),
(5, 3),
(5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `comment_user`
--

CREATE TABLE `comment_user` (
  `id_user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id_comment` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comment_user`
--

INSERT INTO `comment_user` (`id_user`, `id_comment`) VALUES
('7a41e096-c565-46c6-93fa-86c23e2dafe7', 1),
('7a41e096-c565-46c6-93fa-86c23e2dafe7', 2),
('a4c1e096-c565-46c6-93fa-86c23e2dafe7', 4),
('a4c5353a-effb-4687-aabb-9ce21aeafdd6', 5),
('a4c5353a-effb-4687-aabb-9ce21aeafdd6', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `labels`
--

CREATE TABLE `labels` (
  `id_label` int NOT NULL,
  `name_label` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `labels`
--

INSERT INTO `labels` (`id_label`, `name_label`) VALUES
(1, 'Наука'),
(2, 'Космос'),
(3, 'Гаджеты'),
(4, 'Техника');

-- --------------------------------------------------------

--
-- Структура таблицы `label_post`
--

CREATE TABLE `label_post` (
  `id_post` int NOT NULL,
  `id_label` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `label_post`
--

INSERT INTO `label_post` (`id_post`, `id_label`) VALUES
(1, 2),
(1, 1),
(4, 4),
(3, 1),
(5, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `id_like` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`id_like`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Структура таблицы `like_user`
--

CREATE TABLE `like_user` (
  `id_user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id_like` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `like_user`
--

INSERT INTO `like_user` (`id_user`, `id_like`) VALUES
('7a41e096-c565-46c6-93fa-86c23e2dafe7', 1),
('7a41e096-c565-4687-aabb-9ce21aeafdd6', 1),
('a4c5353a-effb-4687-aabb-9ce21aeafdd6', 2),
('a4c5353a-effb-4687-aabb-9ce21aeafdd6', 4),
('a4c1e096-c565-46c6-93fa-86c23e2dafe7', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id_post` int NOT NULL,
  `name_post` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `title_post` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `body_post` varchar(15000) COLLATE utf8mb4_general_ci NOT NULL,
  `image_post` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `label_post` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id_post`, `name_post`, `title_post`, `body_post`, `image_post`, `label_post`) VALUES
(1, 'Новость', '1 Lorem ipsum dolor sit amet consectetur adipisicing elit.', '1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias repudiandae est eveniet eligendi officia expedita aliquid. Consectetur dolor laboriosam, autem eveniet reprehenderit? Sint ducimus impedit, et sapiente maxime iure rerum.\\nMaiores unde, debitis laboriosam praesentium, animi ipsa, eligendi nam modi earum tempora dolorem, veniam? Excepturi voluptate eaque neque modi? Error, illum voluptas earum. Quaerat, voluptas ducimus earum libero quidem sed.\\nDelectus unde, pariatur, beatae corporis hic sapiente eaque asperiores iure rem excepturi ullam, sunt, nesciunt et assumenda eligendi ad minus reprehenderit cupiditate. Quae aspernatur quis soluta. Dicta quaerat similique nemo.\\nMaiores tenetur dolorem, ad dolores! Dolor, a. Quisquam, quis fugiat? Temporibus quisquam quia, ipsum eveniet id corrupti aperiam hic, similique nesciunt ipsa harum sint quae est? Voluptatibus dicta, dolores soluta.\\nMaxime excepturi ipsa aliquid sit est ea animi suscipit dolorum non. Fugiat, soluta amet, ullam fuga nobis distinctio, dolorum blanditiis autem officia quis commodi. Non eveniet esse omnis minus enim.', 'images/post.jpg', 'Не помещать в слайдер'),
(2, 'Новость', '2 Lorem ipsum dolor sit amet consectetur adipisicing elit.', '2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias repudiandae est eveniet eligendi officia expedita aliquid. Consectetur dolor laboriosam, autem eveniet reprehenderit? Sint ducimus impedit, et sapiente maxime iure rerum.\\nMaiores unde, debitis laboriosam praesentium, animi ipsa, eligendi nam modi earum tempora dolorem, veniam? Excepturi voluptate eaque neque modi? Error, illum voluptas earum. Quaerat, voluptas ducimus earum libero quidem sed.\\nDelectus unde, pariatur, beatae corporis hic sapiente eaque asperiores iure rem excepturi ullam, sunt, nesciunt et assumenda eligendi ad minus reprehenderit cupiditate. Quae aspernatur quis soluta. Dicta quaerat similique nemo.\\nMaiores tenetur dolorem, ad dolores! Dolor, a. Quisquam, quis fugiat? Temporibus quisquam quia, ipsum eveniet id corrupti aperiam hic, similique nesciunt ipsa harum sint quae est? Voluptatibus dicta, dolores soluta.\\nMaxime excepturi ipsa aliquid sit est ea animi suscipit dolorum non. Fugiat, soluta amet, ullam fuga nobis distinctio, dolorum blanditiis autem officia quis commodi. Non eveniet esse omnis minus enim.', 'images/post.jpg', 'Не помещать в слайдер'),
(3, 'Статья', '3 Lorem ipsum dolor sit amet consectetur adipisicing elit.', '3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias repudiandae est eveniet eligendi officia expedita aliquid. Consectetur dolor laboriosam, autem eveniet reprehenderit? Sint ducimus impedit, et sapiente maxime iure rerum.\\nMaiores unde, debitis laboriosam praesentium, animi ipsa, eligendi nam modi earum tempora dolorem, veniam? Excepturi voluptate eaque neque modi? Error, illum voluptas earum. Quaerat, voluptas ducimus earum libero quidem sed.\\nDelectus unde, pariatur, beatae corporis hic sapiente eaque asperiores iure rem excepturi ullam, sunt, nesciunt et assumenda eligendi ad minus reprehenderit cupiditate. Quae aspernatur quis soluta. Dicta quaerat similique nemo.\\nMaiores tenetur dolorem, ad dolores! Dolor, a. Quisquam, quis fugiat? Temporibus quisquam quia, ipsum eveniet id corrupti aperiam hic, similique nesciunt ipsa harum sint quae est? Voluptatibus dicta, dolores soluta.\\nMaxime excepturi ipsa aliquid sit est ea animi suscipit dolorum non. Fugiat, soluta amet, ullam fuga nobis distinctio, dolorum blanditiis autem officia quis commodi. Non eveniet esse omnis minus enim.', 'images/post.jpg', 'Не помещать в слайдер'),
(4, 'Новость', '4 Lorem ipsum dolor sit amet consectetur adipisicing elit.', '4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias repudiandae est eveniet eligendi officia expedita aliquid. Consectetur dolor laboriosam, autem eveniet reprehenderit? Sint ducimus impedit, et sapiente maxime iure rerum.\\nMaiores unde, debitis laboriosam praesentium, animi ipsa, eligendi nam modi earum tempora dolorem, veniam? Excepturi voluptate eaque neque modi? Error, illum voluptas earum. Quaerat, voluptas ducimus earum libero quidem sed.\\nDelectus unde, pariatur, beatae corporis hic sapiente eaque asperiores iure rem excepturi ullam, sunt, nesciunt et assumenda eligendi ad minus reprehenderit cupiditate. Quae aspernatur quis soluta. Dicta quaerat similique nemo.\\nMaiores tenetur dolorem, ad dolores! Dolor, a. Quisquam, quis fugiat? Temporibus quisquam quia, ipsum eveniet id corrupti aperiam hic, similique nesciunt ipsa harum sint quae est? Voluptatibus dicta, dolores soluta.\\nMaxime excepturi ipsa aliquid sit est ea animi suscipit dolorum non. Fugiat, soluta amet, ullam fuga nobis distinctio, dolorum blanditiis autem officia quis commodi. Non eveniet esse omnis minus enim.', 'images/post.jpg', 'Не помещать в слайдер'),
(5, 'Статья', '5 Lorem ipsum dolor sit amet consectetur adipisicing elit.', '5 Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestias repudiandae est eveniet eligendi officia expedita aliquid. Consectetur dolor laboriosam, autem eveniet reprehenderit? Sint ducimus impedit, et sapiente maxime iure rerum.\\nMaiores unde, debitis laboriosam praesentium, animi ipsa, eligendi nam modi earum tempora dolorem, veniam? Excepturi voluptate eaque neque modi? Error, illum voluptas earum. Quaerat, voluptas ducimus earum libero quidem sed.\\nDelectus unde, pariatur, beatae corporis hic sapiente eaque asperiores iure rem excepturi ullam, sunt, nesciunt et assumenda eligendi ad minus reprehenderit cupiditate. Quae aspernatur quis soluta. Dicta quaerat similique nemo.\\nMaiores tenetur dolorem, ad dolores! Dolor, a. Quisquam, quis fugiat? Temporibus quisquam quia, ipsum eveniet id corrupti aperiam hic, similique nesciunt ipsa harum sint quae est? Voluptatibus dicta, dolores soluta.\\nMaxime excepturi ipsa aliquid sit est ea animi suscipit dolorum non. Fugiat, soluta amet, ullam fuga nobis distinctio, dolorum blanditiis autem officia quis commodi. Non eveniet esse omnis minus enim.', 'images/post.jpg', 'Не помещать в слайдер');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id_user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `login_user` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_user` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password_user` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `image_user` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `login_user`, `email_user`, `password_user`, `image_user`) VALUES
('7a41e096-c565-4687-aabb-9ce21aeafdd6', 'test', 'test@mail.com', 'test@mail.com', 'images/image.jpg'),
('7a41e096-c565-46c6-93fa-86c23e2dafe7', 'test2', 'test2@mail.com', 'test2@mail.com', 'images/image.jpg'),
('a4c1e096-c565-46c6-93fa-86c23e2dafe7', 'user2', 'user2@mail.com', 'user2@mail.com', 'images/image.jpg'),
('a4c5353a-effb-4687-aabb-9ce21aeafdd6', 'login', 'login@mail.com', 'login@mail.com', 'images/image.jpg'),
('a4c5353a-effb-46c6-93fa-86c23e2dafe7', 'user1', 'user1@mail.com', 'user1@mail.com', 'images/image.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Индексы таблицы `comment_like`
--
ALTER TABLE `comment_like`
  ADD KEY `id_comment` (`id_comment`),
  ADD KEY `id_like` (`id_like`);

--
-- Индексы таблицы `comment_post`
--
ALTER TABLE `comment_post`
  ADD KEY `id_comment` (`id_comment`),
  ADD KEY `id_post` (`id_post`);

--
-- Индексы таблицы `comment_user`
--
ALTER TABLE `comment_user`
  ADD KEY `id_comment` (`id_comment`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id_label`);

--
-- Индексы таблицы `label_post`
--
ALTER TABLE `label_post`
  ADD KEY `id_label` (`id_label`),
  ADD KEY `id_post` (`id_post`);

--
-- Индексы таблицы `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id_like`);

--
-- Индексы таблицы `like_user`
--
ALTER TABLE `like_user`
  ADD KEY `id_like` (`id_like`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `labels`
--
ALTER TABLE `labels`
  MODIFY `id_label` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `likes`
--
ALTER TABLE `likes`
  MODIFY `id_like` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment_like`
--
ALTER TABLE `comment_like`
  ADD CONSTRAINT `comment_like_ibfk_1` FOREIGN KEY (`id_comment`) REFERENCES `comments` (`id_comment`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `comment_like_ibfk_2` FOREIGN KEY (`id_like`) REFERENCES `likes` (`id_like`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `comment_post`
--
ALTER TABLE `comment_post`
  ADD CONSTRAINT `comment_post_ibfk_1` FOREIGN KEY (`id_comment`) REFERENCES `comments` (`id_comment`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `comment_post_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id_post`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `comment_user`
--
ALTER TABLE `comment_user`
  ADD CONSTRAINT `comment_user_ibfk_1` FOREIGN KEY (`id_comment`) REFERENCES `comments` (`id_comment`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `comment_user_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `label_post`
--
ALTER TABLE `label_post`
  ADD CONSTRAINT `label_post_ibfk_1` FOREIGN KEY (`id_label`) REFERENCES `labels` (`id_label`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `label_post_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id_post`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `like_user`
--
ALTER TABLE `like_user`
  ADD CONSTRAINT `like_user_ibfk_1` FOREIGN KEY (`id_like`) REFERENCES `likes` (`id_like`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `like_user_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;