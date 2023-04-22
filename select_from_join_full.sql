/*
mệnh đề 'JOIN' được sử dụng để kết hợp các trường dữ liệu (các cột) từ một hay nhiều bảng
dựa trên giá trị của trường dữ liệu chung. PostgreSQL hỗ trợ các kiểu inner join, left join,
right join, full outer join, cross join, natural join
*/

-- INNER JOIN --
/*
SELECT
  DISTINCT (departure_airport) AS "Sân bay đi",
  airport_name AS "Tên sân bay",
  city AS "Tên thành phố",
  timezone AS "Múi giờ"
FROM
  airports
INNER JOIN flights
  ON airport_code = departure_airport;
*/

-- LEFT-JOIN --
/*
SELECT
  DISTINCT (departure_airport) AS "Sân bay đi",
  airport_name AS "Tên sân bay",
  city AS "Tên thành phố",
  timezone AS "Múi giờ"
FROM
  airports
LEFT JOIN flights
  ON airport_code = departure_airport;
*/

-- RIGHT-JOIN --
/*
SELECT
  DISTINCT (departure_airport) AS "Sân bay đi",
  airport_name AS "Tên sân bay",
  city AS "Tên thành phố",
  timezone AS "Múi giờ"
FROM
  airports
RIGHT JOIN flights
  ON airport_code = departure_airport;
*/

-- LEFT-OUTER-JOIN --
/*
SELECT
  DISTINCT (departure_airport) AS "Sân bay đi",
  airport_name AS "Tên sân bay",
  city AS "Tên thành phố",
  timezone AS "Múi giờ"
FROM
  airports
RIGHT JOIN flights
  ON airport_code = departure_airport
WHERE departure_airport IS NULL;
*/

-- RIGHT-OUTER-JOIN --
/*
SELECT
  DISTINCT (departure_airport) AS "Sân bay đi",
  airport_name AS "Tên sân bay",
  city AS "Tên thành phố",
  timezone AS "Múi giờ"
FROM
  airports
RIGHT JOIN flights
  ON airport_code = departure_airport
WHERE airport_code IS NULL;
*/

-- FULL-JOIN --
/*
SELECT
  DISTINCT (departure_airport) AS "Sân bay đi",
  airport_name AS "Tên sân bay",
  city AS "Tên thành phố",
  timezone AS "Múi giờ"
FROM
  airports
FULL JOIN flights
  ON airport_code = departure_airport;
*/

-- FULL OUTER JOIN --
SELECT
  passenger_name AS "Tên hành khách",
  contact_data AS "Liên lạc",
  book_date AS "Ngày đặt vé"
FROM
  bookings AS b
FULL JOIN tickets AS t
  ON b.book_ref = t.book_ref
WHERE
  b.book_ref IS NULL OR t.book_ref IS NULL;
