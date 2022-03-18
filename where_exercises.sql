USE employees;

SELECT first_name FROM employees WHERE first_name IN ('Irene', 'Vidya', 'Maya');
SELECT last_name FROM employees WHERE last_name LIKE 'E%';
SELECT last_name FROM employees WHERE last_name LIKE '%q%';

SELECT first_name FROM employees WHERE last_name IN ('Irene', 'Vidya') or last_name = 'Maya';
SELECT first_name FROM employees WHERE first_name IN ('Irene', 'Vidya', 'Maya') AND gender = 'M';



