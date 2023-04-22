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


-- FULL OUTER JOIN --
/*
SELECT
  passenger_name AS "Tên hành khách",
  contact_data AS "Liên lạc",
  book_date AS "Ngày đặt vé"
FROM
  bookings AS b
FULL OUTER JOIN tickets AS t
  ON b.book_ref = t.book_ref;
*/