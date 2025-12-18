-- Create Database
CREATE DATABASE banking_db;
USE banking_db;


-- Accounts Table
CREATE TABLE accounts (
account_id INT PRIMARY KEY AUTO_INCREMENT,
account_holder VARCHAR(50),
account_type VARCHAR(20),
created_date DATE
);


-- Transactions Table
CREATE TABLE transactions (
transaction_id INT PRIMARY KEY AUTO_INCREMENT,
account_id INT,
transaction_type ENUM('DEPOSIT','WITHDRAWAL','TRANSFER'),
amount DECIMAL(10,2),
transaction_date DATE,
FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
