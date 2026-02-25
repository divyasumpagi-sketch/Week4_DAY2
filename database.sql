-- Create Database
CREATE DATABASE college_db;
USE college_db;

-- ======================
-- Create Tables
-- ======================

-- Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100)
);

-- Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50)
);

-- Tasks Table
CREATE TABLE Tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR(100),
    status VARCHAR(20),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- ======================
-- Insert Records
-- ======================

-- Users Data
INSERT INTO Users (username, email, password)
VALUES
('Divya', 'divya@gmail.com', '12345'),
('keerti', 'keerti@gmail.com', 'abc123');

-- Students Data
INSERT INTO Students (name, age, course)
VALUES
('Kavya', 21, 'Computer Science'),
('Aishwarya', 22, 'Information Science');

-- Tasks Data
INSERT INTO Tasks (task_name, status, student_id)
VALUES
('Complete SQL Assignment', 'Pending', 1),
('Submit Project', 'Completed', 2);

-- ======================
-- Fetch Records
-- ======================

SELECT * FROM Users;
SELECT * FROM Students;
SELECT * FROM Tasks;