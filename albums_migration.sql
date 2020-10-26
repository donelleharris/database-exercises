USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(30) NOT NULL,
    name VARCHAR(50) NOT NULL DEFAULT 'Untitled',
    release_date INT UNSIGNED,
    sales FLOAT UNSIGNED,
    genre VARCHAR(20),
    PRIMARY KEY (id)
);