-- In this file, I will add data into the sql. For that, I will use mockaroo.com for that

-- First, let's populate the Department table with some commands

INSERT INTO Department (Deptcode, Deptlocation) VALUES ('3D', 'Sidokumpul');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('1C', 'Changhua');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('4B', 'Lilla Edet');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('1A', 'Lemery');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('4A', 'Vancouver');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('4H', 'Sao Paulo');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('9K', 'Ourinhos');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('9J', 'Jundiai');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('0L', 'Campinas');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('2C', 'Jaragua');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('5G', 'Jcen');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('7N', 'Banff');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('8M', 'Locev');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('9N', 'LVR');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('2X', 'Aniver');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('1X', 'Joceni');
INSERT INTO Department (Deptcode, Deptlocation) VALUES ('7R', 'Munkaruna');

-- After that, we can use mockaroo for dummy data: 

insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Carry Jerratsch', 'Structural Engineer', '2025-11-03', 24847.05, '2X');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Cameron Mauser', 'Analog Circuit Design manager', '2025-06-26', 17619.8, '4H');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Lukas Tindley', 'Geologist III', '2025-05-13', 18907.66, '5G');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Ram Graber', 'Assistant Manager', '2025-05-10', 27052.82, '7R');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Alicea Jado', 'Staff Accountant III', '2025-04-03', 26390.5, '9J');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Hubert Pensom', 'Structural Analysis Engineer', '2025-05-24', 20887.73, '9J');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Raquel Biscomb', 'Senior Cost Accountant', '2025-10-10', 25730.61, '9J');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Codie Wilkinson', 'Staff Scientist', '2025-12-08', 9537.15, '8M');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Marni Abramof', 'Account Executive', '2025-06-19', 10930.31, '9N');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Doroteya Candlish', 'Analog Circuit Design manager', '2025-10-14', 11461.11, '7R');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Rochester Gregg', 'Structural Engineer', '2025-04-30', 24140.15, '7R');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Jaymie Sherwood', 'Food Chemist', '2025-04-02', 29953.04, '1A');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Lucius Caves', 'Financial Analyst', '2025-07-13', 6259.17, '4H');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Katey Bater', 'Professor', '2025-07-21', 24576.04, '4B');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Rourke Ventom', 'Pharmacist', '2025-10-22', 7761.92, '0L');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Sibyl Danzig', 'Sales Representative', '2025-09-26', 9909.61, '1C');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Odilia Lackeye', 'Human Resources Manager', '2025-12-02', 28381.9, '1C');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Orsa Tatham', 'Developer I', '2025-09-16', 17011.4, '5G');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Alon Seeks', 'Geologist III', '2025-11-15', 14558.36, '3D');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Fancy Cureton', 'Associate Professor', '2025-11-29', 11537.55, '9J');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Roseline Danihel', 'VP Quality Control', '2025-09-30', 28913.76, '4A');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Helenelizabeth Balls', 'Geological Engineer', '2025-09-11', 5159.21, '2X');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Olga Josskowitz', 'Sales Associate', '2025-02-01', 18723.73, '2C');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Hershel Deacon', 'Chemical Engineer', '2025-05-16', 6628.71, '1C');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Devi Talks', 'Technical Writer', '2025-11-21', 24788.74, '9N');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Had Exelby', 'Desktop Support Technician', '2025-08-26', 18988.99, '9K');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Anthia Janczewski', 'Junior Executive', '2025-02-01', 7011.5, '4H');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Ebenezer Gorse', 'Executive Secretary', '2025-06-04', 17946.32, '5G');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Juliane Deverson', 'Computer Systems Analyst IV', '2025-02-22', 21494.33, '4A');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Kellia Amner', 'Electrical Engineer', '2025-10-23', 14741.23, '8M');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Albie Leirmonth', 'Financial Analyst', '2025-02-15', 24496.85, '2X');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Miner Lawrence', 'Recruiting Manager', '2025-04-22', 22364.22, '7N');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Bartel Kelberer', 'Quality Control Specialist', '2025-05-06', 21413.01, '7R');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Meredithe Kleinstern', 'Sales Associate', '2024-12-21', 6958.34, '9J');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Gracie Cheek', 'Clinical Specialist', '2025-03-16', 10515.03, '2C');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Myrwyn Desson', 'Chemical Engineer', '2025-07-11', 12238.39, '7R');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Karlee Dowry', 'Occupational Therapist', '2025-05-04', 16522.38, '8M');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Charmaine Riddoch', 'Accountant IV', '2025-01-10', 14777.64, '1X');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Clywd Lake', 'Human Resources Manager', '2025-05-29', 16470.32, '4B');
insert into employee (Name, Job, hiredate, salary, Deptcode) values ('Craggie Lacotte', 'Product Engineer', '2025-04-22', 28728.71, '5G');

-- After that, we have a lot of dummy, but realistic data, and you can see in your sql that the "Deptcode" column has a 
-- link, so you can see the relation between the two tables.


-- Now, let me give an example of the SELECT command:
-- If I put SELECT * FROM `employee` WHERE Name = "Orsa Tatham";
-- The return will be: 18 5G Orsa Tatham Developer I 2025-09-16 17011.4
-- Of course, if you do this in the sql, you will receive this with an Polished UI, column name and etc.
-- To sum up, you can have a query set using the SELECT command. This is very useful to filter or use that data in
-- your php, for example.

-- More examples:
-- SELECT * FROM `employee` WHERE salary > "28000";
-- return the following query sets:

-- 12 1A Jaymie Sherwood Food Chemist 2025-04-02 29953

-- 17 1C Odilia Lackeye Human Resources Manager 2025-12-02 28381.9

-- 21 4A Roseline Danihel VP Quality Control 2025-09-30 28913.8

-- 40 5G Craggie Lacotte Product Engineer 2025-04-22 28728.7

-- Now in the Department table:
-- SELECT * FROM `department` WHERE Deptcode = "1C";
-- 1C Changhua

-- SELECT * FROM `department` WHERE Deptlocation = "Campinas";
-- 0L Campinas