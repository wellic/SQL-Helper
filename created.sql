-- ------------------------------------------------------------
-- Сначала удаляем если есть такая схема
-- далее создаем новую схему с именем, указуется чарсет и прочии параметры
-- ------------------------------------------------------------
DROP SCHEMA IF EXISTS `homework2` ;
CREATE SCHEMA IF NOT EXISTS `homework2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `homework2`;

-- ------------------------------------------------------------
-- Сначала удаляем если есть такая бд
-- далее создаем новую бд с именем
-- ------------------------------------------------------------
DROP DATABASE IF EXISTS `education_choo_100`;
CREATE DATABASE IF NOT EXISTS `education_choo_100`;
USE `education_choo_100`;


-- ------------------------------------------------------------
-- Создаем таблицу если нету такой, с именем и в () указуем нужные колонки
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `choo_municipality` (
  `municipality_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `municipality_name` varchar(45) COLLATE utf8_danish_ci NOT NULL,
  `municipality_county_id` int(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`municipality_id`),
  KEY `municipality_county_id` (`municipality_county_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

ALTER TABLE `choo_municipality`
  ADD CONSTRAINT `choo_municipality_ibfk_1` FOREIGN KEY (`municipality_county_id`)
  REFERENCES `choo_county` (`county_id`) ON DELETE CASCADE ON UPDATE CASCADE;