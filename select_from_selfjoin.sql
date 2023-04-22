/*
'SELF-JOIN' là kiểu kết hợp các trường dữ liệu nằm trên chính bản thân bảng dữ liệu.
Chúng ta thường sử dụng 'SELF-JOIN' để truy vấn dữ liệu có tính thứ bậc (hierarchical data)
hoặc để so sánh các bản ghi trong cùng một bảng. Để thực hiện 'SELF-JOIN' chúng ta tạo ra hai
bí danh cho cùng một bảng và cung cấp điều kiện kết hợp sau mệnh đề 'ON'.
*/
\connect t3h_db_ex

CREATE TABLE employee (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	manager_id INT,
	FOREIGN KEY (manager_id) 
	REFERENCES employee (employee_id) 
	ON DELETE CASCADE
);

INSERT INTO employee (
	employee_id,
	first_name,
	last_name,
	manager_id
)
VALUES
	(1, 'Windy', 'Hays', NULL),
	(2, 'Ava', 'Christensen', 1),
	(3, 'Hassan', 'Conner', 1),
	(4, 'Anna', 'Reeves', 2),
	(5, 'Sau', 'Norman', 2),
	(6, 'Kelsie', 'Hays', 3),
	(7, 'Tory', 'Goff', 3),
	(8, 'Salley', 'Lester', 3);


-- SELF-JOIN --
SELECT
  e.first_name || ' ' || e.last_name employee,
  m .first_name || ' ' || m .last_name manager
FROM
  employee e
LEFT JOIN employee m 
  ON m .employee_id = e.manager_id
ORDER BY manager;

