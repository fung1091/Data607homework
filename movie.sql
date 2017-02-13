/*
  movie.sql
*/

DROP TABLE IF EXISTS movie;

CREATE TABLE movie 
(
  name varchar(100) NOT NULL,
  movie varchar(150) NOT NULL,
  rating int NULL
);


SELECT * FROM movie;

LOAD DATA LOCAL INFILE 'd:/data/movie.csv' 
INTO TABLE movie
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(Name, Movie, Rating)

;

select sum(rating) from movie where movie = 'The LEGO Batman Movie';