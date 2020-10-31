use codeup_test_db;

CREATE TABLE authors (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO authors(first_name, last_name) VALUES
    ('Douglas', 'Adams'),
    ('Mark', 'Twain'),
    ('Kurt', 'Vonnegut'),
    ('Carol', 'Dweck'),
    ('John', 'Muir');

DESCRIBE authors;
SELECT * FROM authors;

CREATE TABLE quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    content TEXT NOT NULL,
    author_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) REFERENCES authors (id)
);

INSERT INTO quotes (author_id, content)
VALUES (1, 'I love deadlines. I love the whooshing noise they make as they go by.'),
       (1,    'Time is an illusion. Lunchtime doubly so.'),
       (2,    'Clothes make the man. Naked people have little or no influence on society.'),
       (3, 'The universe is a big place, perhaps the biggest.'),
       (4, 'Love challenges, be intrigued by mistakes, enjoy effort and keep on learning.'),
       (5, 'The mountains are calling and I must go.');

DESCRIBE quotes;
SELECT * FROM quotes;

CREATE TABLE topics (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO topics(name) VALUES
('Space and Time'),
('Humor'),
('Office Life'),
('Hitchiker''s Guide to the Galaxy');

SELECT * FROM topics;

CREATE TABLE quote_topic (
    quote_id INTEGER UNSIGNED NOT NULL,
    topic_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (quote_id) REFERENCES quotes(id),
    FOREIGN KEY (topic_id) REFERENCES topics(id)
);

INSERT INTO quote_topic(quote_id, topic_id)
VALUES (1, 2), (1, 3), (2, 4), (3, 1),
       (3, 2), (3, 3), (3, 4), (4, 2), (5, 1);

SELECT * FROM quote_topic;

