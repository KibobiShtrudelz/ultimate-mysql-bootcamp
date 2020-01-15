-- 1. Find 5 oldest users
SELECT * FROM users
ORDER BY created_at
LIMIT 5;

-- 2. Most popular registration date
SELECT created_at FROM users
ORDER BY created_at
LIMIT 5;

-- 3. Users never posted photos
SELECT
	username,
    image_url
FROM users
LEFT JOIN photos
	ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- 4. Most popular photo
SELECT
	username,
	photos.id,
    photos.image_url,
    COUNT(*) AS total
FROM photos
INNER JOIN likes
	ON likes.photo_id = photos.id
INNER JOIN users
	ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- 5. How many times average user posts
SELECT
	(SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;

-- 6. Top 5 most commonly used hashtags
SELECT
	tags.tag_name,
    COUNT(*) AS tags_count
FROM
	photo_tags
JOIN tags
	ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY tags_count DESC
LIMIT 5;

-- 7. Finding Bots - users who have liked every single photo
SELECT
	username,
    COUNT(*) AS num_likes
FROM users
INNER JOIN likes
	ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING  num_likes = (SELECT COUNT(*) FROM photos);
