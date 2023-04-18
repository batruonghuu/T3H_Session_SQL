/*
  Khi truy vấn dữ liệu chúng ta có thể kết hợp thêm mệnh đề WHERE để tạo
  các bộ lọc dữ liệu
 */

/*
 SELECT
  *
 FROM
  flights
 WHERE
  flight_no = 'PG0710'
 ORDER BY
  scheduled_arrival ASC;
*/

/*
 SELECT
  *
 FROM
  flights
 WHERE
  departure_airport = 'ROV' AND arrival_airport = 'EGO'
 ORDER BY
  arrival_airport ASC;
*/

/*
 SELECT
  *
 FROM
  flights
 WHERE
  departure_airport = 'ROV' OR arrival_airport = 'EGO'
 ORDER BY
  arrival_airport ASC;
*/

/*
 SELECT
  *
 FROM
  flights
 WHERE
  arrival_airport IN ('EGO', 'SVO', 'OMS')
 ORDER BY
  arrival_airport ASC
 LIMIT 10;
*/

/*
SELECT airport_name AS "Tên sân bay",
       city AS "Thành phố"
FROM airports
WHERE city LIKE '%Peters%';
*/

/*
SELECT airport_name AS "Tên sân bay",
       city AS "Thành phố"
FROM airports
WHERE city LIKE 'S%' AND LENGTH(city) BETWEEN 3 AND 20;
*/

SELECT airport_name AS "Tên sân bay",
       city AS "Thành phố"
FROM airports
WHERE city LIKE 'K%' AND city NOT IN ('Khabarovsk', 'Kemorovo', 'Kursk');




