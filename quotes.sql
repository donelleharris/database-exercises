USE codeup_test_db;

DROP TABLE IF EXISTS quotes;
CREATE TABLE IF NOT EXISTS quotes(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_first_name VARCHAR(50) DEFAULT 'NONE',
    author_last_name VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams', 'I love deadlines. I love the whooshing noise they make as they go by.');

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams',    'Time is an illusion. Lunchtime doubly so.'),
       ('Mark',    'Twain',    'Clothes make the man. Naked people have little or no influence on society.'),
       ('Kurt',    'Vonnegut', 'The universe is a big place, perhaps the biggest.');

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES ('Douglas', 'Adams', 'Don''t Panic.');