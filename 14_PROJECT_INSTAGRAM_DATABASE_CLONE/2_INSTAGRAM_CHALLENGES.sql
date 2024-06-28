  -- Find the 5 oldest users
  
  SELECT * FROM users ORDER BY created_at LIMIT 5;
  
  -- Find the most popular registration day of the week
  
  SELECT DAYNAME(created_at) AS day, COUNT(*) AS total FROM users GROUP BY day ORDER BY total DESC LIMIT 2;
  
  -- Find users who have never posted a photo
  
  SELECT username, image_url FROM users
  LEFT JOIN photos ON users.id = photos.user_id
  WHERE photos.id IS NULL;
  
  -- Finding the most liked photo
  
  SELECT username, photos.id, photos.image_url, COUNT(*) AS total FROM photos
  INNER JOIN likes ON likes.photo_id = photos.id
  INNER JOIN users ON photos.user_id= users.id
  GROUP BY photos.id
  ORDER BY total DESC
  LIMIT 1;
  
  -- Find the no of times an average user post
  
  SELECT ((SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)) AS avg;
  
  -- Find top 5 most commonly used hastags
  
  SELECT tags.tag_name, COUNT(*) AS total FROM photo_tags
  JOIN tags ON photo_tags.tag_id = tags.id
  GROUP BY tags.id
  ORDER BY total DESC
  LIMIT 10;
  
  -- Find users who have likes every single photo on the site
  
  SELECT username, user_id, COUNT(*) as num_likes FROM users
  INNER JOIN likes ON users.id = likes.user_id
  GROUP BY likes.user_id
  HAVING num_likes = (SELECT COUNT(*) FROM photos);