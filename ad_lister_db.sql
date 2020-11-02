use ad_lister_db;

CREATE TABLE users (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(100),
user_name VARCHAR(20) UNIQUE,
user_email VARCHAR(50) UNIQUE,
PRIMARY KEY (id)
);

INSERT INTO users(first_name, last_name, user_name, user_email) VALUES
    ('Donelle', 'Harris', 'donelleharris', 'donelle@codeup.com'),
    ('Ryan', 'Kendall', 'rmk1775', 'ryan@codeup.com'),
    ('Blossom', 'Perez', 'blperez', 'blossom@codeup.com'),
    ('Chris', 'Parker', 'chrisparker', 'chris@codeup.com'),
    ('Sahara', 'Tijol', 'stijol', 'sahara@codeup.com');

CREATE TABLE ad_post (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO ad_post (user_id, title, content)
VALUES (1, 'Compound Miter Saw', 'Ryobi 16" Compound Miter Saw'),
       (2, 'Suzuki Katana', '2015 Suzuki Katana, yellow, 3,000 miles'),
       (3, '1/2 acre lot', '.5 acre lot with mesquite trees, Cotulla, TX'),
       (4, '2014 COACHMAN FREELANDER 32BH', 'Class C motor home.  Very clean inside out. Nice clean.  Has bunks and rear bedroom.  Fully contain,  onan generator, has engine (Chevy) it only has 70k miles.  Everything works perfectly.'),
       (5, 'Kenmore Refrigerator', 'Great condition only 3 years old. Moving and down sizing.');

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO categories(name) VALUES
('Tools'), #1
('Power Tools'), #2
('Hand Tools'), #3
('Lawn & Garden'), #4
('Appliances'),  #5
('Large Appliances'), #6
('Small Appliances'), #7
('Cars & Trucks'), #8
('Motorcycles'), #9
('Pickup Truck'), #10
('Recreational Vehicles'), #11
('Real Estate'), #12
('Lots/Land'), #13
('Single Family Homes'), #14
('Multifamily Homes'); #15

CREATE TABLE post_category(
    post_id INTEGER UNSIGNED NOT NULL,
    category_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (post_id) REFERENCES ad_post(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO post_category(post_id, category_id)
VALUES (1, 1), (1, 2), #miter saw
       (2, 8), (2, 9), #motorcycle
       (3, 12), (3, 13), #1/2 acre lot
       (4, 8), (4, 11), #rv
       (5, 5), (5, 6); #refrigerator

INSERT INTO ad_post (user_id, title, content)
VALUES (1, 'Microwave', 'Samsung 1200 watt microwave'),
       (1, '2007 Chevy Silverado 1500', '2007 Chevy Silverado 1/2 ton truck, blue, 205K miles');

INSERT INTO post_category(post_id, category_id)
VALUES (6, 5), (6, 7), #microwave
       (7, 8), (7, 10); #truck


ALTER TABLE users
    ADD user_pw VARCHAR(24) NOT NULL;

ALTER TABLE users
    MODIFY COLUMN user_name VARCHAR(20) UNIQUE,
    MODIFY COLUMN user_email VARCHAR(50) UNIQUE;

UPDATE users
    SET user_pw = 'Codeup5!'
    WHERE id = 5;

UPDATE users
SET user_pw = 'Codeup4!'
WHERE id = 4;

UPDATE users
SET user_pw = 'Codeup3!'
WHERE id = 3;

UPDATE users
SET user_pw = 'Codeup2!'
WHERE id = 2;

UPDATE users
SET user_pw = 'Codeup1!'
WHERE id = 1;