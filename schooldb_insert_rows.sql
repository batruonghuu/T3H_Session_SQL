/*
 * Câu lệnh SQL thêm mới nhiều bản ghi có cấu trúc tương tự thêm mới
 * một bản ghi, khác ở chỗ tại mệnh đề VALUES chúng ta cung cấp dữ liệu
 * của nhiều bản ghi.
 *        INSERT INTO <tên_bảng>([<trường_1>], [<trường_2>], ...)
 *        VALUES (<giá_trị_1>, <giá_trị_1>, ...),
 *               (<giá_trị_1>, <giá_trị_1>, ...),
 *               (<giá_trị_1>, <giá_trị_1>, ...),
 *               ...
 *        RETURNING *;
 */
 ALTER TABLE bng_mon_hoc
 ALTER COLUMN mhTENMON TYPE varchar(50);


 INSERT INTO bng_mon_hoc(mhID, mhTENMON)
 VALUES ('7080319', 'Trực quan hóa dữ liệu'),
        ('7080512', 'Lập trình JAVA'),
        ('7080403', 'Đồ án CNTT'),
        ('7080206', 'Cấu trúc dữ liệu & giải thuật'),
        ('7080323', 'Dịch vụ dựa trên địa điểm (LBS)'),
        ('7080116', 'Phát triển ứng dụng web với PHP')
 RETURNING *;


