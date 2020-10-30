USE join_test_db;

DROP TABLE users;
DROP TABLE roles;


CREATE TABLE IF NOT EXISTS roles (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   role_id INT UNSIGNED DEFAULT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id) VALUES
('donelle', 'donelle@example.com', 2),
('jocelyn', 'jocelyn@example.com', 2),
('jace', 'jace@example.com', null),
('abby', 'abby@example.com', 2);

SELECT u.name AS user_name, r.name AS role_name
FROM users AS u
 JOIN roles AS r
 ON u.role_id = r.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
 LEFT JOIN roles
 ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
 RIGHT JOIN roles
 ON users.role_id = roles.id;
