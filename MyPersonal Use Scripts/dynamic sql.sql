USE `sql_hr`;
DROP procedure IF EXISTS `new_procedure`;

USE `sql_hr`;
DROP procedure IF EXISTS `sql_hr`.`new_procedure`;
;

DELIMITER $$
USE `sql_hr`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`(limitval integer)
BEGIN
set @l=limitval;
prepare stmt from 'select * from sql_hr.employees limit ?';

execute stmt using @l;
END$$

DELIMITER ;
;


-- apply changes 

--- then call procedure

call new_procedure(10);

