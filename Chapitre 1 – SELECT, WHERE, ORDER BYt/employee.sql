/*khedemt 3ela l ex dyal realisation sql1*/
SELECT * FROM employee;
/*2*/
SELECT nom, prenom FROM employee;
/*3*/
SELECT nom, prenom, salaire
FROM Employee
WHERE salaire > 4500;
/*4*/
SELECT nom, prenom, salaire
FROM Employee
ORDER BY salaire DESC;
/*5*/
SELECT * FROM Employee
LIMIT 2;
/*6*/
