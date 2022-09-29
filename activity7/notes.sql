-- CRUD Operations
-- Create... CREATE TABLE... INSERT INTO
-- Read... SELECT
-- Update
-- Delete... DROP TABLE... DELETE FROM

CREATE TABLE employees (
--- col_name ------- data_type ----- constraint ---
	id integer PRIMARY KEY, -- NOT NULL and UNIQUE
	first_name character varying(255) NOT NULL,
	last_name character varying(255) NOT NULL,
-- character varying(255) means maximum of 255 length of characters
-- NOT NULL is what the data type should not be, this case it should not be null
	favorite_quote text,
--	active BOOLEAN DEFAULT true, -- this is built-in to any table so we can disregard the code
-- BOOLEAN is data type
-- 
	salary NUMERIC(8, 2) DEFAULT 50000,
-- (8, 2) 8 characters for real number, 2 for decimals (ex. 10000000.00)
	created_at TIMESTAMP WITHOUT time zone NOT NULL,
	updated_at TIMESTAMP WITHOUT time zone NOT NULL
);

SELECT * FROM employees;	-- the "*" means all columns

INSERT INTO employees (id, first_name, last_name, favorite_quote, salary, created_at, updated_at) VALUES 
	(1, 'Shawn', 'Go', 'TIME is bold', 100000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	(2, 'Shawn', 'Go', 'Time is money', 60000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	(3, 'Abdul', 'Jafar', 'I can show you the world', 60000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

SELECT employees.first_name, employees.salary
FROM employees;

-- Or

SELECT first_name, salary
FROM employees;

UPDATE employees SET favorite_quote = 'It is what it is' WHERE id = 3;
UPDATE employees SET active = false WHERE id = 1;

SELECT * FROM employees WHERE NOT salary > 70000; -- WHERE is for conditions

DELETE FROM employees WHERE first_name = 'Shawn' AND active = false; -- delete row

ALTER TABLE employees DROP COLUMN favorite_quote; -- remove column
ALTER TABLE employees RENAME COLUMN active TO status; -- change column name

DROP TABLE employees; -- delete table employees


-- CREATE DATABASE avionschool_development; -- option for Create table
-- DROP DATABASE avionschool_development; -- option for Delete table