--TODO Find all the employees with the same hire date as employee 101010 using a subquery.

SELECT *
FROM employees
WHERE hire_date IN (SELECT hire_date FROM employees WHERE emp_no = '101010');

--TODO Find all the titles held by all employees with the first name Aamod.

SELECT *
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

--TODO Find all the current department managers that are female.

SELECT first_name, last_name
FROM dept_manager
         JOIN employees USING (emp_no)
WHERE emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F') AND to_date LIKE '9999%';

