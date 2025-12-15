-- In this file, I will show the sql commands to create the table that we normalized.

-- First, let's create the table Department, so we can create a reference after with a foreign key to Employee table.

CREATE TABLE `employee`.`department` (`Deptcode` VARCHAR(30) NOT NULL , `Deptlocation` VARCHAR(200) NOT NULL , 
PRIMARY KEY (`Deptcode`)) ENGINE = InnoDB;

-- Then, we create the Employee table:

CREATE TABLE `employee`.`employee` (`Empno` INT NOT NULL AUTO_INCREMENT , `Deptcode` VARCHAR(30) NOT NULL , 
`Name` VARCHAR(50) NOT NULL , `Job` VARCHAR(50) NOT NULL , `hiredate` DATE NOT NULL , `salary` FLOAT(15) NOT NULL , 
PRIMARY KEY (`Empno`)) ENGINE = InnoDB;

-- After that, we create a relation between Deptcode in the tables, making it a foreign key in the Employee table.

ALTER TABLE `employee` ADD FOREIGN KEY (`Deptcode`) REFERENCES `department`(`Deptcode`) ON DELETE RESTRICT ON UPDATE RESTRICT;