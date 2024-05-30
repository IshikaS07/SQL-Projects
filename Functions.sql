-- List all movies with their respective directors
SELECT m.title, d.name AS director
FROM Movies m
JOIN Directors d ON m.director_id = d.director_id;

-- Find all actors who acted in 'Inception'
SELECT a.name
FROM Actors a
JOIN Movie_Actors ma ON a.actor_id = ma.actor_id
JOIN Movies m ON ma.movie_id = m.movie_id
WHERE m.title = 'Inception';

-- Get the average rating of each movie
SELECT m.title, AVG(r.rating) AS average_rating
FROM Movies m
JOIN Reviews r ON m.movie_id = r.movie_id
GROUP BY m.title;

-- List movies along with the number of reviews they have received
SELECT m.title, COUNT(r.review_id) AS review_count
FROM Movies m
JOIN Reviews r ON m.movie_id = r.movie_id
GROUP BY m.title;

-- Find the highest-rated movie
SELECT m.title
FROM Movies m
JOIN Reviews r ON m.movie_id = r.movie_id
GROUP BY m.title
ORDER BY AVG(r.rating) DESC
LIMIT 1;
