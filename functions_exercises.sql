USE
employees;

-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT('name: ', first_name, ' ', last_name)
FROM employees
WHERE first_name LIKE 'E%'
  AND first_name LIKE '%E';

/*Find all employees born on Christmas — 842 rows.
*/

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

/*Find all employees hired in the 90s and born on Christmas — 362 rows.
*/

SELECT *
FROM employees
WHERE year(hire_date) LIKE '199%'
AND month(birth_date) = 12
AND day (birth_date) = 25;

/*Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
*/
SELECT CONCAT ('name: ' , first_name, ' ', last_name)
FROM employees
WHERE year(hire_date) LIKE '199%'
AND month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY hire_date;