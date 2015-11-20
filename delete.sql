-- ------------------------------------------------------------
-- Перед удалением сначала лучше сделать выборку через SELECT
-- посмотреть что он удалит, а потом уже удалять
-- ------------------------------------------------------------

DROP SCHEMA IF EXISTS `homework2`

DROP TABLE IF EXISTS `table_1`

ALTER TABLE project_table
DROP COLUMN start_date;


-- ------------------------------------------------------------
-- Вместо такой комбинации лучше использовать UPDATE
-- ------------------------------------------------------------
INSERT INTO drinkinfo VALUES ('Поцелуй', 5,5 , 42,5,'фиолетовый', 'Д', 170 ) ;
DELETE FROM drinkinfo WHERE calories - 171 ;


DELETE FROM doughnut_ratings
WHERE location = 'Krispy king' AND rating <>6;
WHERE location = 'Krispy king' OR rating = 3;