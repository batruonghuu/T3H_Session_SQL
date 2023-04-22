/*
mệnh đề 'HAVING' được sử dụng để lọc các nhóm được trả lại từ mệnh đề 'GROUP BY'
theo một điều kiện cụ thể hoặc chỉ định điều kiện cho các hàm tổng hợp.Chú ý bí danh
(alias) không dùng được trong mệnh đề 'HAVING'
*/

SELECT
  flight_id AS "Chuyến bay",
  fare_conditions AS "Hạng ghế ngồi",
  COUNT(ticket_no) AS "Số lượng vé"
FROM 
  ticket_flights
GROUP BY
  flight_id,
  fare_conditions
HAVING
  COUNT(ticket_no) >= 50;


