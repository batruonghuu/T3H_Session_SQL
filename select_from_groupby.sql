/*
Mệnh đề 'GROUPBY' được sử dụng để chia nhóm các bản ghi được trả về từ
mệnh đề truy vấn 'SELECT'. Đối với mỗi nhóm có thể áp dụng các hàm tổng
hợp như 'SUM()' hoặc COUNT().
*/


SELECT
  flight_id AS "Chuyến bay"
FROM
  ticket_flights
GROUP BY
  flight_id
ORDER BY
  flight_id DESC
LIMIT 10;


/*
SELECT
  flight_id AS "Chuyến bay",
  fare_conditions AS "Hạng ghế ngồi",
  COUNT(ticket_no) AS "Số lượng vé"
FROM 
  ticket_flights
GROUP BY
  flight_id,
  fare_conditions;
*/

/*
SELECT
  flight_id AS "Chuyến bay",
  fare_conditions AS "Hạng ghế ngồi",
  COUNT(ticket_no) AS "Số lượng vé",
  SUM(amount) AS "Tổng tiền"
FROM 
  ticket_flights
GROUP BY
  flight_id,
  fare_conditions;
*/

/*
SELECT
  EXTRACT(MONTH FROM book_date) AS "Tháng",
  COUNT(book_ref) AS "Vé/Tháng",
  SUM(total_amount) AS "Tiền/Tháng"
FROM
  bookings
WHERE
  EXTRACT(YEAR FROM book_date) = 2017
GROUP BY
  "Tháng";
*/