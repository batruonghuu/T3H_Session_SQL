/*
mệnh đề 'UNION' dùng để gộp kết quả truy vấn từ hai hay nhiều câu lệnh truy vấn
'SELECT' thành một kết quả trả lại duy nhất.
*/
\connect t3h_db_ex

DROP TABLE IF EXISTS top_rated_films;
CREATE TABLE top_rated_films(
	title VARCHAR NOT NULL,
	release_year SMALLINT
);

DROP TABLE IF EXISTS most_popular_films;
CREATE TABLE most_popular_films(
	title VARCHAR NOT NULL,
	release_year SMALLINT
);

INSERT INTO 
  top_rated_films(title,release_year)
VALUES
  ('The Shawshank Redemption',1994),
  ('The Godfather',1972),
  ('12 Angry Men',1957);

INSERT INTO 
  most_popular_films(title,release_year)
VALUES
  ('An American Pickle',2020),
  ('The Godfather',1972),
  ('Greyhound',2020);

--- UNION ---
SELECT * FROM top_rated_films
UNION
SELECT * FROM most_popular_films;


--- UNION ALL (có sự trùng lặp) ---
SELECT * FROM top_rated_films
UNION ALL
SELECT * FROM most_popular_films;

--- UNION ALL - GROUP BY ---
SELECT * FROM top_rated_films
UNION ALL
SELECT * FROM most_popular_films
ORDER BY title;

--- INTERSECT ---
SELECT *
FROM most_popular_films 
INTERSECT
SELECT *
FROM top_rated_films;

--- EXCEPT ---
SELECT * FROM top_rated_films
EXCEPT 
SELECT * FROM most_popular_films
ORDER BY title;

