USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;



SELECT last_name FROM employees WHERE last_name LIKE 'E%';
SELECT last_name FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no;
SELECT * FROM employees WHERE last_name LIKE '%E%' ORDER BY emp_no DESC;



SELECT first_name FROM employees WHERE last_name IN ('Irene', 'Vidya') or last_name = 'Maya';
SELECT first_name FROM employees WHERE first_name IN ('Irene', 'Vidya', 'Maya') AND gender = 'M';
SELECT last_name FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';
SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';
SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';