-- Create the database
CREATE DATABASE myDatabase;

-- Use the database
USE myDatabase;

-- Create the users table
CREATE TABLE users (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    userPassword VARCHAR(255) NOT NULL, 
    salary DECIMAL(10, 2),              
    cellNumber VARCHAR(10),             
    accountNumber VARCHAR(20) UNIQUE  
);

-- Insert data into the users table
INSERT INTO users (firstName, lastName, email, userPassword, salary, cellNumber, accountNumber)
VALUES
    ('Ace', 'John', 'acejohn@gmail.com', '23and12', 70000, '0683453384', '11327123'),
    ('Peter', 'Craige', 'craigepeter@gmail.com', '212nsjs', 66370, '0632468763', '23325543'),
    ('John', 'Doe', 'john.doe@example.com', 'password123', 78070, '0732968063', '10009610'),
    ('Jane', 'Smith', 'jane.smith@example.com', 'securepassword', 88100, '0712268363', '92109617'),
    ('Mike', 'Brown', 'mike.brown@example.com', 'mike2023', 25670, '0619026833', NULL),
    ('Emily', 'Davis', 'emily.davis@example.com', 'emilySecure1', 30000, '0835267313', NULL),
    ('Chris', 'Wilson', 'chris.wilson@example.com', 'chrisPass#', 45900, '0730026863', NULL),
    ('Sophia', 'Taylor', 'sophia.taylor@example.com', 'sophia789', 97230, '0791269303', NULL),
    ('Liam', 'Anderson', 'liam.anderson@example.com', 'anderson@2023', 23311, '0851168362', NULL),
    ('Olivia', 'Martinez', 'olivia.martinez@example.com', 'Olivia!23', 85600, '0648268323', NULL);

-- Select all users
SELECT * FROM users;

-- Query users sorted by first name
SELECT * FROM users ORDER BY firstName;

-- Query users with specific criteria
SELECT * FROM users WHERE firstName = 'John';
SELECT * FROM users WHERE salary > 30000;
SELECT * FROM users ORDER BY salary;

-- Update salary for specific users
UPDATE users SET salary = 56342 WHERE userID BETWEEN 10 AND 20;

-- Update cell numbers for specific users
UPDATE users SET cellNumber = '0730426817' WHERE userID = 3;
UPDATE users SET cellNumber = '0622237100' WHERE userID = 4;

-- Add or modify account numbers
UPDATE users SET accountNumber = '12345678' WHERE userID = 6;
UPDATE users SET accountNumber = '87654321' WHERE userID = 7;

