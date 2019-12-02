--QUESTION 1
SELECT id, title, genres
FROM movies.movies;

--QUESTION 2
SELECT id, title 
FROM movies.movies
LIMIT 10

--QUESTION 3
Select title
From movies.movies
Where id=485

--QUESTION 4
select id 
from movies.movies
Where title Like "%Made in America (1993)%"

--QUESTION 5
select id, title, genres 
from movies.movies
ORDER BY if (title Rlike '^[A-Z]',1,2), title
limit 10

--QUESTION 6
Select id, title, genres
From movies.movies
Where title Like "%2002%"

--QUESTION 7
Select id, title, genres
From movies.movies
Where title like "%godfather, the%"

--QUESTION 8
Select id, title, genres
From movies.movies
Where genres Like "%comedy%"

--QUESTION 9
Select id, title, genres
From movies.movies
Where title like "%2000%" and genres Like "%comedy%"

--QUESTION 10
Select id, title, genres
From movies.movies
Where title like "%death%" and genres Like "%comedy%"

--QUESTION 11
Select id, title, genres
From movies.movies
Where title like "%super%" && title like "%2001%" 
or title like "%super%" && title like "%2002%"

--QUESTION 12
--question 13

--QUESTION 14
INSERT INTO actors (name, character_name, birthday, movie_id)
VALUES
('henry tomish',	'iron man',	'2000-03-13',	54),
('billy irish',	'loll pyop',	'2040-01-23',	54),
('drake'	'the fabrat pit',	'1060-02-12',	54),
('ana ashes', 	'batman',	'2000-03-13',	54),
('biggie smalls',	'superman',	'2000-05-03',	54),
('angelo smith', 	'neo',	'2000-03-13',	54),
('will smith', 	'hulk',	'9020-12-20',	54),
('tod smith', 	'bee man',	'2020-09-19',	54),
('maybe tod', 	'zibra man',	'2020-11-01',	54),
('robert d.j', 	'not iron man',	'2120-08-13',	54),
('cheen',	'm j',	'3002-05-20',	111),
('sean', 	'star lord',	'3002-04-21',	111),
('seen',	'ultra lord',	'3002-05-22',	111),
('circle kot',	'dog cat',	'3302-08-23',	111),
('no mom',	'patrick not star',	'3055-09-24',	111),
('mom yes', 	'large sponge',	'3002-07-25',	111),
('jesus crist', 'ant-crist',	'3022-10-11',	111),
('god', 	'morgan f',	'3302-12-12',	111),
('justin biever',	'bad bunny',	'3002-02-13',	111),
('kok', 	'dads',	'3002-05-15',	111),
('ricku tu',	'pika chu',	'1987-01-10',	164),
('tommy two',	'jerry', 	'1987-01-10',	164),
('mike luke',	'cheff',	'1987-01-10',	164),
('loopy joe',	'noshy',	'1987-01-10',	164),
('harry nuget',	'loppp',	'1987-01-10',	164),
('tosh.o',	'sour hed',	'1987-01-10',	164),
('sushi hot', 	'hot log',	'1987-01-10',	164),
('thor', 	'loki',	'1987-01-10', 164),
('fire tom', 	'ice tacy',	'1987-01-10',	164),
('yep yes', 	'no nope',	'1987-01-10', 164),


--QUESTION 15
Update movies.movies 
SET rating = 'G'
WHERE id = 1;
Update movies.movies 
SET rating = 'PG-13'
WHERE id = 2;
Update movies.movies 
SET rating = 'PG-13'
WHERE id = 3;
Update movies.movies 
SET rating = 'R'
WHERE id = 4;
Update movies.movies 
SET rating = 'PG'
WHERE id = 5;

SELECT id, title, geners, rating
FROM  movies.movies;

--QUESTION 16
SELECT title, ratings.rating
FROM movies.movies
LEFT outer JOIN movies.rating
ON movies.movies.id = movies.ratings.movie_id
WHERE movies.title LIKE '%godfather, the%';

--QUESTION 17
SELECT title, ratings.rating
FROM movies.movies
LEFT JOIN movies.rating
ON movies.movies.id = movies.ratings.movie_id
WHERE title LIKE '%godfather, the%';
ORDER BY timestamp ASC 

--QUESTION 18
SELECT title,rating, timestamp
FROM movies.movies
INNER JOIN movies.links
ON movies.movies.id =
movies.links.imdb_id
WHERE geners LIKE '%comed%' && title LIKE 
('%2005%')

--QUESTION 19
SELECT title
FROM movies.movies
WHERE id NOT IN (SELECT movies_id FROM movies.ratings)

--QUESTION 20
SELECT AVG (rating)
FROM movies.ratings
WHERE movies.ratings.movie_id  = 17 


--QUESTION 21
SELECT COUNT (rating)
FROM movies.ratings
WHERE movies.ratings.movie_id  = 17

--QUESTION 22
SELECT COUNT (geners)
FROM movies.movies
WHERE geners LIKE ('%comedy%')

--Question 23
SELECT Avg(rating)
FROM movies m 
LEFT JOIN ratings r ON r.user_id = m.id
WHERE r.user_id = 8;

--Question 24
SELECT MAX(rating)
FROM movies m
LEFT JOIN ratings r ON r.user_id = m.id;
--Question 25
SELECT Avg(rating) h, user_id
FROM ratings
GROUP BY user_id
ORDER BY h DESC
LIMIT 1;
--Question 26
SELECT Avg(rating) h, user_id, COUNT(rating) r
FROM ratings
GROUP BY user_id
HAVING r > 50
ORDER BY h DESC
LIMIT 1;
--Question 27
SELECT  m.title, Avg(r.rating) as avgRating
FROM movies.ratings r
LEFT JOIN movies.movies m ON m.id=r.movie_id
GROUP BY m.title
HAVING avgRating > 4;






