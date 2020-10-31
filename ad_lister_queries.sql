use ad_lister_db;

SELECT * FROM users;

SELECT user_email FROM users
 JOIN ad_post ap on users.id = ap.user_id
WHERE ap.user_id = users.id AND ap.id = 1;

SELECT name FROM categories
 JOIN post_category pc on categories.id = pc.category_id
 JOIN ad_post ap on ap.id = pc.post_id
WHERE post_id = 5;

SELECT title, content FROM ad_post
 JOIN post_category pc on ad_post.id = pc.post_id
WHERE category_id = 13;

SELECT title, content FROM ad_post
 JOIN users u on ad_post.user_id = u.id
WHERE user_id = 1;