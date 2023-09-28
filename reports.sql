
CREATE USER IF NOT EXISTS 'tibame'@'%' IDENTIFIED BY 'tibame';

GRANT ALL ON *.* TO 'tibame'@'%'; 
-- should modifiy if using cloud sql
-- grant all on tibame.* to 'tibame'@'%';

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+08:00";

CREATE  DATABASE  IF NOT EXISTS tibame ;
USE  tibame;

-- should insert here if using cloud sql
-- grant all on tibame.* to 'tibame'@'%';

CREATE  TABLE IF NOT EXISTS `reports` (
  `id` int(11) NOT NULL,
  `report_type` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;