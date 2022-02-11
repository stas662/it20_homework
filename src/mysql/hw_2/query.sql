-- 1. Одним запросом добавить сразу несколько записей в таблицу.
INSERT INTO `comments` (id_comment, body_comment, likes_comment)
VALUES  ('6', '6 Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '6'),
	('7', '7 Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '29'),
        ('8', '8 Lorem ipsum dolor sit, amet consectetur adipisicing elit.', '0');

-- 2. Удалить одну конкретную запись из таблицы.
DELETE FROM `comments` WHERE `id_comment` = 5;

-- 3. Удалить все записи из таблицы.
DELETE FROM `comments`;

-- 4. Вывести значения двух полей из таблицы.
SELECT `id_user`, `login_user` FROM `users`;

-- 5. Выбрать все записи из таблицы.
SELECT * FROM `users`;

-- 6. Обновить значение полей в нескольких записях по условию.
UPDATE `posts` SET `label_post` = 'Не помещать в слайдер' WHERE `label_post` = 'Поместить в слайдер';

-- 7. Выбрать записи соответсвующие заданному условию.
SELECT * FROM `posts` WHERE `name_post` = 'Новость';