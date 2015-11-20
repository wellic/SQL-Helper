-- ------------------------------------------------------------
-- ALTER имеет такие модификаторы
-- ------------------------------------------------------------
ALTER
ADD - доабвление столбцов в таблице и выбором типов данных
CHANGE - изменение имени и типа данных
MODIFY - изменяет только тип данных. не затрагивая имя
DROP - удаляет то что указано

-- ------------------------------------------------------------
-- Можно использовать сразу несколько изменений в алтере, через кому
-- ------------------------------------------------------------
ALTER TABLE project_list
CHANGE COLUMN description proj_desc VARCHAR (100),
CHANGE COLUMN contractor con_name VARCHAR (30);

-- ------------------------------------------------------------
-- MODIFY изменяет только тип данных, и не затрагивает имя
-- ------------------------------------------------------------
ALTER TABLE project_list
MODIFY COLUMN proj_desc VARCHAR(120);

-- ------------------------------------------------------------
-- RENAME изменяет название таблицы
-- ------------------------------------------------------------
ALTER TABLE hooptie
RENAME TO car_table;

-- ------------------------------------------------------------
-- ADD COLUMN - добавляет новую колонку с нужным параметрами,
-- так же добавляем PRIMARY KEY если он надо
-- ------------------------------------------------------------
ALTER TABLE car_table
ADD COLUMN `car_id` INT(11) NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (car_id),

-- ------------------------------------------------------------
-- Можно удалить праймери кей если он не надо
-- ------------------------------------------------------------
ALTER TABLE your_table
DROP PRIMARY KEY;

-- ------------------------------------------------------------
-- В конце указываем место где хотим чтобы находилась колонка
-- например SECOND, FIFTH, или BEFORE name или AFTER name
-- ------------------------------------------------------------
ADD COLUMN `VIN` VARCHAR(20) NOT NULL SECOND,
MODIFY COLUMN `year` SIXTH,