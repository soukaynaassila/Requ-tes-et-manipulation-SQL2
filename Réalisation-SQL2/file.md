MCD – Conceptual Data Model
Prototype: Company Management System
🔹 Entities
DEPARTMENT
id_department
name

EMPLOYEE
id_employee
first_name
last_name
salary

PROJECT
id_project
name

🔹 Relationships & Cardinalities
1) DEPARTMENT — contains — EMPLOYEE
A department can contain several employees.
An employee belongs to only one department.

Cardinalities:
DEPARTMENT (1, N)
EMPLOYEE (1, 1)

2) EMPLOYEE — works_on — PROJECT
An employee can work on several projects.
A project is assigned to only one employee.

Cardinalities:
EMPLOYEE (1, N)
PROJECT (1, 1)

📌 Conceptual Summary (MCD)
This conceptual model represents a company where departments manage employees, and employees are responsible for projects.
SQL Reports & Business Queries – Prototype
🔹 Description
This document presents a set of SQL queries that answer common business questions related to the company database, such as:
Which employees work in each department?
How many employees are there per department?
What is the highest salary in the company?
What is the average salary per department?
Which projects are assigned to which employees?

🔹 Query 1: Employees with their Departments
SELECT e.first_name, e.last_name, d.name AS department
FROM Employee e
JOIN Department d ON e.id_department = d.id_department;


Explanation:
This query displays each employee along with the department they belong to.

🔹 Query 2: Number of Employees per Department
SELECT d.name AS department, COUNT(e.id_employee) AS total_employees
FROM Department d
LEFT JOIN Employee e ON d.id_department = e.id_department
GROUP BY d.id_department;


Explanation:
This query calculates the number of employees in each department, including departments with no employees.

🔹 Query 3: Highest Salary
SELECT MAX(salary) AS highest_salary
FROM Employee;


Explanation:
This query finds the highest salary in the company.

🔹 Query 4: Average Salary per Department
SELECT d.name AS department, AVG(e.salary) AS average_salary
FROM Employee e
JOIN Department d ON e.id_department = d.id_department
GROUP BY d.id_department;


Explanation:
This query compares average salaries between departments.

🔹 Query 5: Projects with Assigned Employees
SELECT p.name AS project, e.first_name, e.last_name
FROM Project p
JOIN Employee e ON p.id_employee = e.id_employee;

