-- 1. Create the database
CREATE DATABASE World;
USE World;

-- 2. Create Country table
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population BIGINT,
    Area INT
);

-- 3. Create Persons table
CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population BIGINT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(50),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

-- 4. Insert 10 rows into Country
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9834000),
(2, 'India', 1393000000, 3287000),
(3, 'UK', 67000000, 243000),
(4, 'Canada', 38000000, 9985000),
(5, 'Australia', 26000000, 7692000),
(6, 'France', 67000000, 551695),
(7, 'Germany', 83000000, 357000),
(8, 'Italy', 60000000, 301000),
(9, 'Mexico', 128000000, 1964000),
(10, 'Spain', 47000000, 505990);

-- 5. Insert 10 rows into Persons
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 30000, 4.2, 1, 'USA'),
(2, 'Jane', 'Smith', 25000, 3.8, 2, 'India'),
(3, 'Aaliya', 'Khan', 20000, 4.5, 3, 'UK'),
(4, 'Emily', 'Clark', 15000, 4.0, 4, 'Canada'),
(5, 'Liam', 'Brown', 35000, 4.7, 5, 'Australia'),
(6, 'Noah', 'Wilson', 28000, 3.9, 6, 'France'),
(7, 'Emma', 'Taylor', 10000, 4.6, 7, 'Germany'),
(8, 'Olivia', 'Martinez', 22000, 4.1, 8, 'Italy'),
(9, 'Ava', 'Lopez', 18000, 4.3, 9, 'Mexico'),
(10, 'Sophia', 'Lee', 26000, 4.9, 10, 'Spain');

-- 6. SQL Queries

-- 1. First three characters of Country_name
SELECT LEFT(Country_name, 3) AS Country_Abbr FROM Country;

-- 2. Concatenate first and last names
SELECT CONCAT(Fname, ' ', Lname) AS Full_Name FROM Persons;

-- 3. Count unique country names from Persons
SELECT COUNT(DISTINCT Country_name) AS Unique_Countries FROM Persons;

-- 4. Max population from Country
SELECT MAX(Population) AS Max_Population FROM Country;

-- 5. Min population from Persons
SELECT MIN(Population) AS Min_Population FROM Persons;

-- 6. Insert 2 rows with NULL Lname
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(11, 'Leo', NULL, 12000, 3.5, 1, 'USA'),
(12, 'Mila', NULL, 13000, 4.0, 2, 'India');

-- Count Lname
SELECT COUNT(Lname) AS Lname_Count FROM Persons;

-- 7. Count rows in Persons
SELECT COUNT(*) AS Total_Rows FROM Persons;

-- 8. Population of first 3 rows from Country
SELECT Population FROM Country LIMIT 3;

-- 9. 3 random countries
SELECT * FROM Country ORDER BY RAND() LIMIT 3;

-- 10. Persons ordered by rating descending
SELECT * FROM Persons ORDER BY Rating DESC;

-- 11. Total population per country from Persons
SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name;

-- 12. Countries in Persons with total population > 50000
SELECT Country_name, SUM(Population) AS Total_Pop
FROM Persons
GROUP BY Country_name
HAVING SUM(Population) > 50000;

-- 13. Count of persons and avg rating per country, filter > 2 persons, order by avg rating
SELECT Country_name, COUNT(*) AS Total_Persons, AVG(Rating) AS Avg_Rating
FROM Persons
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY Avg_Rating ASC;