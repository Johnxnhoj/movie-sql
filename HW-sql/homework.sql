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


--QUESTION 13

--QUESTION 14

--QUESTION 15
