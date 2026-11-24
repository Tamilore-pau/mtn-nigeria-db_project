-- 1. Create and connect to the database
CREATE DATABASE mtnnigeria_db;
\c mtnnigeria_db

-- 2. Create the three tables
CREATE TABLE Employees (
    Eid INT PRIMARY KEY,
    Ename VARCHAR(100) NOT NULL,
    DNo INT,
    Esal NUMERIC(12, 2),
    Age INT,
    Phone VARCHAR(15)
);

CREATE TABLE Department (
    Dept_Managerid INT,
    Dno INT PRIMARY KEY,
    Dname VARCHAR(50),
    Dlocation VARCHAR(50),
    Pno INT
);

CREATE TABLE Project (
    PNo INT PRIMARY KEY,
    Pname VARCHAR(50),
    Pduration INTERVAL,
    Project_Managerid INT
);

-- 3. Insert all rows into each table
INSERT INTO Employees (Eid, Ename, DNo, Esal, Age, Phone)
VALUES
    (101, 'Alade Joy', 2, 250000, 33, '08023089632'),
    (100, 'Mustapha Ali', 3, 175000, 32, '08063285631'),
    (107, 'Alokwe Martin', 7, 380000, 48, '07090082812'),
    (97, 'Dankade Aminat', 5, 550000, 40, '09023688832'),
    (108, 'Josiah Joshua', 1, 120000, 30, '08053189131'),
    (102, 'Mankinde Mary', 2, 450000, 55, '09023487830'),
    (120, 'Adeleke Jane', 4, 200000, 38, '07061045862'),
    (122, 'Osahon Mark', 6, 320000, 44, '08022289642'),
    (117, 'Suleman Ajayi', 3, 800000, 50, '07030089811'),
    (104, 'Kuti Lawal', 1, 750000, 35, '09145689642');

INSERT INTO Department (Dept_Managerid, Dno, Dname, Dlocation, Pno)
VALUES
    (108, 1, 'Administration', 'Ikeja', 44),
    (101, 2, 'Account', 'Egbeda', 11),
    (100, 3, 'Packaging', 'Ajah', 44),
    (120, 4, 'Research', 'V.I', 33),
    (97, 5, 'Account', 'Magodo', 22),
    (122, 6, 'Operations', 'Mile 2', 44),
    (107, 7, 'Packaging', 'Ketu', 55);

INSERT INTO Project (PNo, Pname, Pduration, Project_Managerid)
VALUES
    (11, 'A', '9 Months', 102),
    (22, 'B', '14 Months', 97),
    (33, 'C', '16 Months', 120),
    (44, 'D', '25 Months', 108),
    (55, 'E', '9 Months', 107);

-- 4. Verify all tables
SELECT * FROM Employees;
SELECT * FROM Department;
SELECT * FROM Project;
