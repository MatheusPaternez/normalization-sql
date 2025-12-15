-- Here, I will do some SQL statements just for showcase.

-- Average and Total Salary
SELECT AVG(salary) FROM `employee`; 
-- AVG(salary) = 17658.382373046876
SELECT SUM(salary) FROM `employee`; 
-- SUM(salary) = 706335.294921875

-- Count Employees in a Department
SELECT COUNT(Empno) FROM `employee` WHERE Deptcode = "2X";
-- 3

-- Find employees whose name are 4 character long and start with a specific letter
SELECT Name FROM `employee` WHERE Name LIKE "a___%";
-- Alicea Jado
-- Alon Seeks
-- Anthia Janczewski
-- Albie Leirmonth

-- Find all employees with a specific job title
SELECT Name FROM `employee` WHERE Job = "Developer I";
-- Orsa Tatham

-- Retrieve employees hired between two dates and order result by employee name
SELECT Name FROM `employee` WHERE hiredate BETWEEN "2025-01-01" AND "2025-12-15" ORDER BY Name; -- ASC is default
-- Albie Leirmonth
-- Alicea Jado
-- Alon Seeks
-- Anthia Janczewski
-- Bartel Kelberer
-- Cameron Mauser
-- Carry Jerratsch
-- Charmaine Riddoch
-- Clywd Lake
-- Codie Wilkinson
-- Craggie Lacotte
-- Devi Talks
-- Doroteya Candlish
-- Ebenezer Gorse
-- Fancy Cureton
-- Gracie Cheek
-- Had Exelby
-- Helenelizabeth Balls
-- Hershel Deacon
-- Hubert Pensom
-- Jaymie Sherwood
-- Juliane Deverson
-- Karlee Dowry
-- Katey Bater
-- Kellia Amner

-- Find minimum and maximum salary
SELECT MIN(salary) FROM `employee`;
-- MIN(salary) 5159.21
SELECT MAX(salary) FROM `employee`;
-- MAX(salary) 29953

-- Find the earliest and latest hire date among the employees
SELECT MAX(hiredate),MIN(hiredate) FROM `employee`;
-- MAX(hiredate) 2025-12-08
-- MIN(hiredate) 2024-12-21

-- Count the number of employees in each department.
-- Display department name and the count.
-- (This may require a JOIN between employee and department tables.)
SELECT department.Deptlocation,COUNT(employee.Empno) FROM `Department` JOIN employee ON 
department.Deptcode = employee.Deptcode GROUP BY department.Deptlocation ORDER BY COUNT(employee.Empno);
-- Campinas 1
-- Lemery 1
-- Joceni 1
-- Sidokumpul 1
-- Banff 1
-- Ourinhos 1
-- Jaragua 2
-- Vancouver 2
-- Lilla Edet 2
-- LVR 2
-- Changhua 3
-- Aniver 3
-- Sao Paulo 3
-- Locev 3
-- Jcen 4
-- Munkaruna 5
-- Jundiai 5

-- Average Salary per Department: Compute the average salary per department. Use an alias like "Average Salary".
SELECT department.Deptlocation,AVG(employee.salary) as "Average Salary" FROM `Department` 
JOIN employee ON department.Deptcode = employee.Deptcode GROUP BY department.Deptlocation ORDER BY COUNT(employee.Empno);
-- Campinas 7761.919921875
-- Lemery 29953.0390625
-- Joceni 14777.6396484375
-- Sidokumpul 14558.3603515625
-- Banff 22364.220703125
-- Ourinhos 18988.990234375
-- Jaragua 14619.38037109375
-- Vancouver 25204.044921875
-- Lilla Edet 20523.1796875
-- LVR 17859.52490234375
-- Changhua 14973.406901041666
-- Aniver 18167.703450520832
-- Sao Paulo 10296.823567708334
-- Locev 13600.25390625
-- Jcen 20648.52294921875
-- Munkaruna 19261.09609375
-- Jundiai 18300.9458984375

-- High-Salary Departments: 
-- Identify departments where the total salary exceeds a threshold of your choice (e.g., 50000). Use GROUP BY and HAVING.
SELECT department.Deptlocation,SUM(employee.salary) as "Total Salary" FROM `Department` JOIN employee 
ON department.Deptcode = employee.Deptcode GROUP BY department.Deptlocation HAVING SUM(employee.salary) > 50000;
-- Aniver 54503.1103515625
-- Vancouver 50408.08984375
-- Jcen 82594.091796875
-- Munkaruna 96305.48046875
-- Jundiai 91504.7294921875

-- Employees in a Location:
-- Choose a location from your dataset. List all employees working in that location.
SELECT department.Deptlocation,employee.Name FROM `Employee` 
JOIN department ON employee.Deptcode = department.Deptcode WHERE department.Deptlocation = "Campinas";
-- Campinas Rourke Ventom

-- Calculate the total salary grouped by department AND job title.
SELECT department.Deptlocation,employee.Job,SUM(employee.salary) FROM `Employee` JOIN department ON employee.Deptcode = department.Deptcode 
GROUP BY department.Deptlocation, employee.Job ORDER BY department.Deptlocation;
-- Aniver Financial Analyst 24496.849609375
-- Aniver Geological Engineer 5159.2099609375
-- Aniver Structural Engineer 24847.05078125
-- Banff Recruiting Manager 22364.220703125
-- Campinas Pharmacist 7761.919921875
-- Changhua Chemical Engineer 6628.7099609375
-- Changhua Human Resources Manager 28381.900390625
-- Changhua Sales Representative 9909.6103515625
-- Jaragua Clinical Specialist 10515.0302734375
-- Jaragua Sales Associate 18723.73046875
-- Jcen Developer I 17011.400390625
-- Jcen Executive Secretary 17946.3203125
-- Jcen Geologist III 18907.66015625
-- Jcen Product Engineer 28728.7109375
-- Joceni Accountant IV 14777.6396484375
-- Jundiai Associate Professor 11537.5498046875
-- Jundiai Sales Associate 6958.33984375
-- Jundiai Senior Cost Accountant 25730.609375
-- Jundiai Staff Accountant III 26390.5
-- Jundiai Structural Analysis Engineer 20887.73046875
-- Lemery Food Chemist 29953.0390625
-- Lilla Edet Human Resources Manager 16470.3203125
-- Lilla Edet Professor 24576.0390625
-- Locev Electrical Engineer 14741.23046875
-- Locev Occupational Therapist 16522.380859375