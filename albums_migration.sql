CREATE DATABASE IF NOT EXISTS codeup_test_db;

USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(20) DEFAULT 'NONE',
    record_name VARCHAR(50) NOT NULL,
    release_date INT NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);