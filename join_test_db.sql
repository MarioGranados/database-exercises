CREATE
DATABASE IF NOT EXISTS join_test_db;
USE
join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

/*Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
*/
INSERT INTO users (name, email, role_id)
VALUES ('Jimmy', 'Jimmy@example.com', 2),
       ('Jasmine', 'Jasmine@example.com', 2),
       ('Alan', 'Alan@example.com', 2),
       ('Betty', 'Betty@example.com', 2);


/*Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.*/
SELECT dept_name, CONCAT(first_name, ' ', last_name) as full_name
FROM employees
         JOIN dept_manager using (emp_no)
         JOIN departments using (dept_no)
WHERE to_date LIKE '9999%';

/*Find the name of all departments currently managed by women.
*/

SELECT dept_name, CONCAT(first_name, ' ', last_name) as full_name
FROM employees
         JOIN dept_manager using (emp_no)
         JOIN departments using (dept_no)
WHERE to_date LIKE '9999%' AND gender LIKE 'F';

/*Find the current titles of employees currently working in the Customer Service department.
*/
SELECT title as Title, count(title) as Total
FROM titles
         JOIN dept_emp using (emp_no)
         JOIN departments using (dept_no)
WHERE dept_no LIKE 'd009'
GROUP BY title;


