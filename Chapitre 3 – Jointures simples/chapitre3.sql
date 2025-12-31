/*EX 1*/
SELECT e.nom, e.prenom, d.nom
FROM Employee e
INNER JOIN Department d
ON e.id_department = d.id;
/*EX 2*/
SELECT e.nom, e.prenom
FROM Employee e
INNER JOIN Department d
ON e.id_department = d.id
WHERE d.nom = 'IT';
/*EX 3*/
SELECT e.nom, p.nom
FROM Employee e
LEFT JOIN Project p
ON e.id = p.id_employee;
/*EX*/
SELECT e.nom, d.nom, p.nom
FROM Employee e
INNER JOIN Department d
ON e.id_department = d.id
INNER JOIN Project p
ON e.id = p.id_employee;

