-- Find 5 oldest users
SELECT * FROM users
ORDER BY created_at
LIMIT 5;

-- Most popular registration date
SELECT created_at FROM users
ORDER BY created_at
LIMIT 5;

-- Users never posted photos
SELECT
	username,
    image_url
FROM users
LEFT JOIN photos
	ON users.id = photos.user_id
WHERE photos.id IS NULL;
