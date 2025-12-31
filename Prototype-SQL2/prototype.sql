CREATE DATABASE IF NOT EXISTS prototype;
USE prototype;

CREATE TABLE Department (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL
);
/* Departments */
INSERT INTO Department (nom) VALUES
('Dev Web'),
('Dev Mobile'),
('IT');

CREATE TABLE Employee (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  prenom VARCHAR(100) NOT NULL,
  salaire DECIMAL(10,2) NOT NULL CHECK (salaire >= 0),
  id_department INT,
  FOREIGN KEY (id_department) REFERENCES Department(id)
);
/* Employees */
INSERT INTO Employee (nom, prenom, salaire, id_department) VALUES
('Soukayna', 'Assila', 5000.00, 3),
('Sara', 'Alaoui', 4500.00, 2),
('Taha', 'Mahir', 4000.00, 1);

CREATE TABLE Project (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  id_employee INT,
  FOREIGN KEY (id_employee) REFERENCES Employee(id)
);

/* Projects */
INSERT INTO Project (nom, id_employee) VALUES
('Website Redesign', 1),
('Mobile App', 2),
('JavaScript Website', 3);

/* 1. Show all employees */
SELECT * FROM Employee;

/* 2. Employees with their departments */
SELECT e.nom, e.prenom, d.nom AS department
FROM Employee e
JOIN Department d ON e.id_department = d.id;

/* 3. Number of employees per department */
SELECT d.nom AS department, COUNT(e.id) AS total_employees
FROM Department d
LEFT JOIN Employee e ON d.id = e.id_department
GROUP BY d.nom;

/* 4. Highest salary */
SELECT MAX(salaire) AS highest_salary
FROM Employee;

/* 5. Average salary per department */
SELECT d.nom AS department, AVG(e.salaire) AS average_salary
FROM Employee e
JOIN Department d ON e.id_department = d.id
GROUP BY d.nom;

/* 6. Projects with employees */
SELECT p.nom AS project, e.nom AS employee
FROM Project p
JOIN Employee e ON p.id_employee = e.id;



