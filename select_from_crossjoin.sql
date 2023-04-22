/*
'CROSS-JOIN' cho phép chúng ta thu được kết quả là sự kết hợp các trường dữ liệu
theo kiểu 'Cartesian Product' từ hai hay nhiều bảng. 
*/

\connect t3h_db_ex

DROP TABLE IF EXISTS T1;
CREATE TABLE T1 (label CHAR(1) PRIMARY KEY);

DROP TABLE IF EXISTS T2;
CREATE TABLE T2 (score INT PRIMARY KEY);

INSERT INTO T1 (label)
VALUES
	('A'),
	('B');

INSERT INTO T2 (score)
VALUES
	(1),
	(2),
	(3);

-- CROSS-JOIN --
SELECT *
FROM T1
CROSS JOIN T2;


