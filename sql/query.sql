-- create the directors table

CREATE TABLE directors (
	
	director_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30) NOT NULL,
	date_of_birth DATE,
	nationality VARCHAR(20)
);

SELECT * FROM directors;

--create the actors table

CREATE TABLE actors (
	
	actor_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender CHAR(1),	
	date_of_birth DATE
);

SELECT * FROM actors;

-- creating the movies table (with a foreign key)

CREATE TABLE movies (
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(50) NOT NULL,
	movie_length INT,
	movie_lang VARCHAR(20),
	release_date DATE,
	age_certificate VARCHAR(5),
	director_id INT REFERENCES directors (director_id)
)

SELECT * FROM movies;




-- DROP TABLE actors;