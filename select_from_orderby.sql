/*
 Truy vấn và sắp xếp dữ liệu sử dụng mệnh đề ORDERBY
 */

 -- sắp xếp dữ liệu giảm dần trên trường 'flight_id' và truy vấn 15 bản ghi --
/* 
 SELECT
  *
 FROM
  flights
 ORDER BY
  flight_id DESC
 LIMIT 15;
*/

-- sắp xếp dữ liệu tăng dần trên trường 'flight_no' và truy vấn 15 bản ghi --
/*
 SELECT
  *
 FROM
  flights
 ORDER BY
  flight_no ASC
 LIMIT 15;
*/

/*
 SELECT
  flight_no AS "Số hiệu chuyến bay",
  EXTRACT(HOUR FROM scheduled_departure) AS "Giờ cất cánh"
 FROM
  flights 
 ORDER BY
  "Giờ cất cánh" ASC
 LIMIT 50;
*/

-- sắp xếp dữ liệu giảm dần và bỏ giá trị NULL lên đầu trên trường 'actual_arrival' --
/*
SELECT
  *
FROM
  flights
ORDER BY
  actual_arrival DESC NULLS FIRST;
*/

SELECT
  *
FROM
  flights
ORDER BY
  actual_departure ASC NULLS LAST;
