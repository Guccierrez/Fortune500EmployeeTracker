DROP DATABASE IF EXISTS Gucci_db;
CREATE DATABASE Gucci_db;

use Gucci_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);
CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary decimal NOT NULL,
  department_id Integer
);
CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER, 
    manager_id Integer
);
INSERT INTO department (name)
VALUES 
('Board of Directors'),
('Sales'),
('Accounting'),
("HR"),
("Janitorial");

INSERT INTO role (title, salary, department_id)
VALUES
('CEO', 1000000, 1),
('Director of the Board', 900000, 1),
('Sales Lead',850000,2 ),
('Sales Intern',800000,2 ),
('Senior Accounter', 750000,3),
('Junior Accounter',700000, 3),
('Human Resources', 650000,4),
('Custodian',600000,5);



INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES 
('Cristiano', 'Ronaldo', 1, null),
('Lionel', 'Messi', 2, 1),
('Neymar', 'Jr', 3, 1),
('Fernando', 'Torres', 4, 3),
('Kylian', 'Mbappe', 5, 1),
('Erling', 'Haaland', 6, 5),
('Zlatan', 'Ibrahimovic', 7, 1),
('Sergio', 'Ramos', 8, 1);

SELECT * FROM Gucci_db.role;
SELECT * FROM Gucci_db.employees;
SELECT * FROM Gucci_db.department;





