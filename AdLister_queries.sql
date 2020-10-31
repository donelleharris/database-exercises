use AdLister_db;

SELECT * FROM users;

SELECT user_email FROM users
 JOIN ad_post ap on users.id = ap.user_id
WHERE ap.user_id = users.id AND ap.id = 1;

