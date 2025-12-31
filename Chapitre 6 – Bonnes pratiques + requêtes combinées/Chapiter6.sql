/*Step 1(Bonne pratique)*/
-- Base de données : prototype SQL1
/*Step 2 Transaction*/
START TRANSACTION;
/*Step 3: INSERT*/
INSERT INTO Employee (nom, prenom, salaire, id_department)
VALUES ('Omar', 'Benali', 4200.00, 1);
/*Step 4: UPDATE*/
UPDATE Employee
SET salaire = 4800.00
WHERE nom = 'Soukayna';
/*Step 5: DELETE*/
DELETE FROM Project
WHERE nom = 'Website with js';
/*Step 6 Valider ou annuler*/
COMMIT; -- ou ROLLBACK en cas d’erreur
/*Step 7 Vérifier*/
SELECT * FROM Employee;
SELECT * FROM Project;

