# country_persons
This project demonstrates a comprehensive set of SQL operations using two relational tables: `Country` and `Persons`. It includes table creation, data insertion, and a variety of queries that cover string functions, filtering, grouping, and aggregation.

---

## Tables Overview

### 🔹 Table 1: `Country`
| Column        | Type        | Description                  |
|---------------|-------------|------------------------------|
| `Id`          | INT         | Primary Key                  |
| `Country_name`| VARCHAR(50) | Name of the country          |
| `Population`  | BIGINT      | Total population             |
| `Area`        | INT         | Total area in square kilometers |

### 🔹 Table 2: `Persons`
| Column        | Type        | Description                      |
|---------------|-------------|----------------------------------|
| `Id`          | INT         | Primary Key                      |
| `Fname`       | VARCHAR(50) | First Name                       |
| `Lname`       | VARCHAR(50) | Last Name                        |
| `Population`  | BIGINT      | Population associated with person|
| `Rating`      | FLOAT       | Custom rating (e.g. performance) |
| `Country_Id`  | INT         | Foreign Key referencing Country  |
| `Country_name`| VARCHAR(50) | Redundant but used for filtering |


###  SELECT Queries

| No. | Description |
|-----|-------------|
| 1   | Print first 3 characters of `Country_name` from `Country` |
| 2   | Concatenate `Fname` and `Lname` in `Persons` |
| 3   | Count unique `Country_name` values in `Persons` |
| 4   | Find the maximum population in the `Country` table |
| 5   | Find the minimum population in the `Persons` table |
| 6   | Count number of `Lname` values (after inserting `NULL`s) |
| 7   | Count total rows in `Persons` |
| 8   | Display population of the first 3 countries (using `LIMIT`) |
| 9   | Display 3 random countries (using `RAND()` and `LIMIT`) |
| 10  | List all persons ordered by `Rating` in descending order |
| 11  | Total population grouped by country in `Persons` |
| 12  | Filter countries with total population > 50,000 |
| 13  | Group and display number of persons & average rating for countries with more than 2 persons, ordered by avg rating (ascending) |
