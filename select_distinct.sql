/*
  Mệnh đề DISTINCT được sử dụng trong truy vấn dữ liệu nhằm loại bỏ
  các giá trị trùng lặp trên tập kết quả trả về
 */

/*
 SELECT
  DISTINCT(flight_no) AS "Các số hiệu chuyến bay"
 FROM
  flights
 ORDER BY
  "Các số hiệu chuyến bay" ASC
 LIMIT 20;
*/

/*
 SELECT
  COUNT(DISTINCT(flight_no)) AS "Số lượng Các số hiệu chuyến bay"
 FROM
  flights
 ORDER BY
  "Các số hiệu chuyến bay" ASC
 LIMIT 20;
*/

/*
 SELECT
  DISTINCT departure_airport AS "Điểm cất cánh",
           arrival_airport AS "Điểm hạ cánh"
 FROM
  flights
 ORDER BY
  "Điểm cất cánh",
  "Điểm hạ cánh"
 LIMIT 20;
*/


 SELECT
  DISTINCT ON (departure_airport) 
           departure_airport AS "Điểm cất cánh",
           arrival_airport AS "Điểm hạ cánh"
 FROM
  flights
 ORDER BY
  "Điểm cất cánh",
  "Điểm hạ cánh"
 LIMIT 20;


