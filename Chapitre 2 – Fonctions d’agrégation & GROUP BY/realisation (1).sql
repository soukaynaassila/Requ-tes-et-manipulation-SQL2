/*Count all employees*/
SELECT COUNT(*) AS total_employees
FROM Employee;
/*Calculate average salary*/
SELECT AVG(salaire) AS average_salary
FROM Employee;
/*Get minimum and maximum salary*/
SELECT MIN(salaire) AS min_salary, MAX(salaire) AS max_salary
FROM Employee;
/*Number of employees per department*/
SELECT id_department, COUNT(*) AS nb_employees
FROM Employee
GROUP BY id_department;
/*Filter groups using HAVING*/
SELECT id_department, COUNT(*) AS nb_employees
FROM Employee
GROUP BY id_department
HAVING COUNT(*) > 1;