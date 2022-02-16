-- 1. Необходимо отобразить названия жанров (name) из таблицы
-- genres, у которых нет ни одной книги из таблицы books. Связь
-- books.genre_id = genres.id.
SELECT genres.name FROM genres genres LEFT JOIN books books ON books.genre_id = genres.id
WHERE books.genre_id IS NULL

-- 2. Выбрать фамилию surname пользователя и имя name из таблицы
-- users и соответствующее название региона (поле name) из
-- таблицы areas. Связь: users.area_id = areas.id, отсортировать
-- по названию региона. Выбрать всего 4 записи.
SELECT users.surname, users.name, areas.name FROM users users
JOIN areas areas ON users.area_id = areas.id ORDER BY areas.name LIMIT 4;

-- 3. Необходимо посчитать сколько новостей в каждой категории.
-- Связь news.category_id = categories.id.
SELECT categories.name, COUNT(*) FROM categories categories
JOIN news news ON categories.id = news.category_id GROUP BY categories.id

-- 4. Выбрать название города (name) из таблицы cities и
-- соответствующее название региона (name) из таблицы areas.
-- Связь: cities.area_id = areas.id.
SELECT cities.name, areas.name FROM cities cities
JOIN areas areas ON cities.area_id = areas.id;

-- 5. Выбрать название школы (name) из таблицы schools и
-- соответствующее название региона (name) из таблицы districts.
-- Связь: schools.district_id = districts.id.
SELECT schools.name, districts.name FROM schools schools
JOIN districts districts ON schools.district_id = districts.id;