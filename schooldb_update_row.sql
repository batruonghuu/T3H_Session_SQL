/*
 * Cập nhật gía trị cho một bản ghi sử dụng câu lệnh SQL có
 * cấu trúc như sau:
 *        UPDATE <tên_bảng>
 *        SET <tên_trường_1> = <giá_trị_1>,
 *            <tên_trường_2> = <giá_trị_2>,
 *            ...
 *        WHERE condition
 *        RETURNING *;
 * Trong đó:
 * - UPDATE: chỉ định bảng dữ liệu
 * - SET: các giá trị được cập nhật tương ứng với trường dữ liệu
 * - WHERE: chỉ định điều kiện lọc các bản ghi sẽ được cập nhật   
 */
 INSERT INTO bng_sinh_vien (svID, svHOTEN, svNGAYSINH)
 VALUES ('2021050691', 'Lê Anh Tuấn', '1996-08-21'),
        ('2021050874', 'Lê Anh Tuấn', '1996-08-21'),
        ('2024011226', 'Lê Mậu Toàn', '1998-05-16')
 RETURNING *;

 UPDATE bng_sinh_vien
 SET svHOTEN = 'Nguyễn Văn Thao',
     svNGAYSINH = '1998-03-25'
 WHERE svID = '2021050874'
 RETURNING *;

 SELECT * FROM bng_sinh_vien;


 