**﻿HOSPITAL DATABASE REPORT** 

**Student Number: 760016527 
Program: MSc Health Data Science** 

**Module: Computational Skills and Python 
Date: February 2026**  

**Project Overview**

This project involves the creation of a relational database system for a hospital. The planning for the database is done using an Entity Relationship Diagram and the database is created using SQL, with data loaded from CSV files into structured tables. The project illustrates fundamental database operations such as creating tables, inserting data and query execution to extract meaningful insights. 

The repository contains: 

- Database schema design (tables, relationships, constraints). 
- Data loading scripts (importing CSV files). 
- SQL queries (retrieving and analyzing hospital data). 

**Repository Structure** 

Erd\_assignment1.png: Contains the Entity Relationship Diagram of the database. 

Tables\_creation.sql: Includes SQL commands for creating tables with primary/foreign keys and constraints for hospitals, patients, doctors and prescriptions. 

As1\_queries.sql: Contains a collection of SQL queries used to demonstrate the functionality of the database. 

Load\_data.sql: Used for importing CSV data using SQL scripts into the respective tables. 

Data\_files: Holds the CSV files (hospitals.csv, patients.csv, doctors.csv, prescriptions.csv) that were used to populate the database. 

README.md: Contains documentation describing the project and repository 

**Database Tables** 

The database consists of the following tables: 

- Hospital: Contains hospital information including name, address, size (number of beds), type, accreditation status. 
- Patients and Doctors: Stores all doctors and patient information. Each patient is linked to exactly one doctor. 
- Prescriptions: Contains prescriptions issued by doctors to patients. 

*Relationships:*                                                                                                                                                                               

- Hospitals → patients\_doctors:  
  - Each doctor must belong to exactly one hospital (1..1).  
  - Hospital may have zero or more doctors (0 ..\*). 
- patients\_doctors → prescriptions:  
- Each doctor and patient can have zero or more prescriptions ( 0..\*). 
- Each prescription must have exactly one doctor and one patient (1..1). 

**Queries** 

- Query 1: Prints a list of all doctors based at a particular hospital. 
- Query 2: Print a list of all prescriptions for a particular patient, ordered by the prescription date. 
- Query 3: Print a list of all prescriptions that a particular doctor has prescribed. 
- Query 4:  Add a new patient to the database, including being registered with one of the doctors. 
- Query 5:  Identify which doctor has made the most prescriptions. 
- Query 6:  Print a list of all doctors at the hospital with biggest size (number of beds). 

**How to Use** 

1. Create the database hospital\_system. 
1. Run the tables\_creation.sql file to create the tables. 
1. Download the CSV files located in the Data\_files file. 
1. Load the data into the tables using load\_data.sql file. 
1. Run as1\_queries.sql to execute the queries. 
1. Use the erd\_assignment1.png file to view the ERD in order to understand the database structure and logic. 

**REFERENCES** 

1. MySQL Tutorial. (n.d.). *Import CSV File Into MySQL Table*. [online] Available at: [https://www.mysqltutorial.org/mysql-basics/import-csv-file-mysql-table/.](https://www.mysqltutorial.org/mysql-basics/import-csv-file-mysql-table/) 
1. w3resource. (n.d.). *Sql max count and having*. [online] Available at: [https://www.w3resource.com/sql/aggregate-functions/max-count.php.](https://www.w3resource.com/sql/aggregate-functions/max-count.php) 
1. MySQL Tutorial. (2023). *MySQL INNER JOIN*. [online] Available at: [https://www.mysqltutorial.org/mysql-basics/mysql-inner-join/.](https://www.mysqltutorial.org/mysql-basics/mysql-inner-join/) 

