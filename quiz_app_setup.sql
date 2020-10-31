USE quiz_app_db;

INSERT INTO users(first_name, last_name, user_name, user_email) VALUES
    ('Donelle', 'Harris', 'donelleharris', 'donelle@codeup.com'),
    ('Ryan', 'Kendall', 'rmk1775', 'ryan@codeup.com'),
    ('Blossom', 'Perez', 'blperez', 'blossom@codeup.com'),
    ('Chris', 'Parker', 'chrisparker', 'chris@codeup.com'),
    ('Sahara', 'Tijol', 'stijol', 'sahara@codeup.com');

INSERT INTO user_categories(name) VALUES
('Admin'), #1
('Teacher'), #2
('Student'); #3

INSERT INTO quiz_categories(name) VALUES
('Math'), #1
('Basic Math'), #2
('Algebra'), #3
('Calculus'), #4
('Science'),  #5
('Life Science'), #6
('Physics'), #7
('Social Studies'), #8
('American History'), #9
('World History'), #10
('World Geography'), #11
('Reading/Language Arts'), #12
('Grammar'), #13
('Reading Comprehension'); #14