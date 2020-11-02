USE quiz_app_db;

INSERT INTO users(first_name, last_name, user_name, user_email) VALUES
    ('Donelle', 'Harris', 'donelleharris', 'donelle@codeup.com'),
    ('Ryan', 'Kendall', 'rmk1775', 'ryan@codeup.com'),
    ('Blossom', 'Perez', 'blperez', 'blossom@codeup.com'),
    ('Chris', 'Parker', 'chrisparker', 'chris@codeup.com'),
    ('Sahara', 'Tijol', 'stijol', 'sahara@codeup.com'),
    ('Caleb', 'Wheeler', 'cwheeler', 'caleb@codeup.com'),
    ('Cory', 'Holley', 'cholley', 'cory@codeup.com');

INSERT INTO user_categories(name) VALUES
('Admin'), #1
('Student'); #2

INSERT INTO quiz_categories(name) VALUES
('Math'), #1
('Basic Math'), #2
('Algebra'), #3
('Calculus'), #4
('Science'),  #5
('Life Science'), #6
('Physics'), #7
('Chemistry'), #8
('Social Studies'), #9
('American History'), #10
('World History'), #11
('World Geography'), #12
('Reading/Language Arts'), #13
('Grammar'), #14
('Reading Comprehension'); #15


INSERT INTO user_category(user_id, category_id)
VALUES (1, 1), (2, 2), (3, 1), (4, 2),
       (5, 1), (6, 2), (7, 1);