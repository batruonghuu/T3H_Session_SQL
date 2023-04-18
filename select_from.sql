-- truy vấn dữ liệu trong trường 'passenger_name' trong bảng 'tickets' --
--SELECT passenger_name FROM tickets;

--SELECT passenger_name FROM tickets
--LIMIT 10;

--SELECT scheduled_departure, scheduled_arrival,departure_airport, arrival_airport
--FROM flights
--LIMIT 15;

--SELECT * FROM flights LIMIT 15;

/*
SELECT
  departure_airport || ' - ' || arrival_airport AS "Điểm đầu - điểm cuối",
  scheduled_departure || ' - ' || scheduled_arrival AS "Giờ cất cánh - giờ hạ cánh"
FROM
  flights
LIMIT
  15;
*/

-- SELECT (15 * 3) AS "Phép nhân";

-- SELECT count(flight_id) from flights;


