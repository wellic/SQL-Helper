-- ------------------------------------------------------------
-- Выборка всего по имени
-- ------------------------------------------------------------
SELECT * FROM clown_info WHERE name = 'Зиппо';

-- ------------------------------------------------------------
-- Выборка OR , или то или то , или можно использовать
-- AND , и то и то !!
-- ------------------------------------------------------------
SELECT first_name FROM student WHERE city ='Paris' OR city = 'Kiev';
SELECT first_name FROM student WHERE city ='Paris' AND city = 'Kiev';

-- ------------------------------------------------------------
-- Выборка IN, чтобы много раз не использовать OR
-- ------------------------------------------------------------
SELECT first_name FROM student WHERE city IN('Paris','Kiev');

-- ------------------------------------------------------------
-- Выборка BETWEEN для диапазонов <= a =>
-- ------------------------------------------------------------
SELECT price FROM blank WHERE price BETWEEN 30 AND 60;

-- ------------------------------------------------------------
-- Выборка LIKE , покажет все что заканчивается на СА
-- % - большое кол-во, "_"- только 1 символ // '_Н%' - Индия
-- ------------------------------------------------------------
SELECT kod FROM country WHERE contry LIKE '%CA'

-- ------------------------------------------------------------
-- RIGHT или LEFT
-- Указывается 2- количество символов что берет
-- location - используемый столбец
-- ------------------------------------------------------------
SELECT RIGHT(location, 2) FROM my_contacts;

-- ------------------------------------------------------------
-- MODIFY изменяет только тип данных, и не затрагивает имя
-- ------------------------------------------------------------
SELECT SUBSTRING_INDEX(location, ',' 1) FROM my_contacts;

-- ------------------------------------------------------------
-- Функция SUBSTRING (текст, начало, длина) возвращает часть строкового значения текст, начиная
-- с буквы в позиции начало. Параметр длина определяет длину возвращаемой строки.
-- ------------------------------------------------------------
SELECT SUBSTRING('Сан-Антонио, ТХ', 5, 3);

-- ------------------------------------------------------------
-- Функции UPPER (текст) и LOWER (текст) преобразуют все символы строки к верхнему или нижнему
-- регистру соответственно.
-- ------------------------------------------------------------
SELECT UPPER(' сШа ');
SELECT LOWER('спаГЕтти');

-- ------------------------------------------------------------
-- функция REVERSE (текст) переставляет символы строки в обратном порядке.
-- ------------------------------------------------------------
SELECT REVERSE('спаГЕтти');

-- ------------------------------------------------------------
-- функции LTRIM(TeKCT) и RTRIM(TeKCT) возвращают строку, полученную удалением лишних пробе­
-- лов в начале (у левого края) или в конце (у правого края) строки.
-- ------------------------------------------------------------
SELECT LTRIM ('собака ')
SELECT RTRIM ( 'кошка ')

-- ------------------------------------------------------------
-- функция LENGTH (текст) возвращает количество символов в строке.
-- ------------------------------------------------------------
SELECT LENGTH('Сан-Антонио, ТХ ');

-- ------------------------------------------------------------
-- ORDER BY - сортирует в алфовитном порядке
-- выборка покажет названия и категории из таблицы муви
-- где категории = семейные и отсортирует их в алфавите из таблицы титл
-- ------------------------------------------------------------
SELECT title, categori
FROM movie_table
WHERE categori = 'семейные'
ORDER BY title;

-- ------------------------------------------------------------
-- Можно сортировать сразу несколько, только отсортируются
-- каждый по отдельности и таблица перемешается
-- ------------------------------------------------------------
SELECT * FROM movie_table
ORDER BY categori, purchased,title;

-- ------------------------------------------------------------
-- Что отсортировать все в обратном порядке добавляется DESC
-- ASC - по возрастанию(можно не писать) DESC- по убиванию
-- ------------------------------------------------------------
SELECT title, purchased
FROM movie_table
ORDER BY title ASC, purchased DESC;