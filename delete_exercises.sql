/*
Write SELECT statements for:
Albums released after 1991
Albums with the genre 'disco'
Albums by 'Whitney Houston' (...or maybe an artist of your choice)
Make sure to put appropriate captions before each SELECT.
Convert the SELECT statements to DELETE.
Use the MySQL command line client to make sure your records really were removed.*/

USE codeup_test_db;

SELECT 'before deleting' AS 'info';
SELECT * FROM albums;

SELECT 'Albums' AS 'Release date is less than 1990';
SELECT * FROM albums WHERE release_date <= 1990;

SELECT 'Albums' AS 'ALL albums with the genre of disco';
SELECT * FROM albums WHERE genre = 'disco';
SELECT * FROM albums WHERE artist_name = 'Whitney Houston';

SELECT 'After Deletions' AS 'INFO';
SELECT * FROM albums;
DELETE * FROM albums WHERE release_date < 1990;
DELETE * FROM albums WHERE genre = 'disco';
DELETE * FROM albums WHERE artist_name = 'Whitney Houston';

SELECT * FROM albums;

