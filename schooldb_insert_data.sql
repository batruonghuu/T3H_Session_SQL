/*
 * Câu lệnh thêm mới một bản ghi(hàng) trong bảng dữ liệu như sau:
 *        INSERT INTO <tên_bảng>([<trường_1>], [<trường_2>], ...)
 *        VALUES (<giá_trị_1>, <giá_trị_1>, ...)
 *        RETURNING *;
 * Trong đó:
 * - INSERT INTO: chỉ định bảng dữ liệu muốn thêm bản ghi vào
 * - VALUES: chỉ định các giá trị tương ứng với các trường dữ liệu
 * - RETURNING *: trả lại thông tin về bản ghi vừa thêm vào bảng
 */
 ALTER TABLE bng_sinh_vien
 DROP COLUMN svNGAYSINH;

 ALTER TABLE bng_sinh_vien
 ADD COLUMN svNGAYSINH DATE;

 INSERT INTO bng_sinh_vien (svID, svHOTEN, svNGAYSINH)
 VALUES ('2021050708', 'Nguyễn Bá Tùng', '1998-07-12')
 RETURNING *;

 INSERT INTO bng_mon_hoc(mhID, mhTENMON)
 VALUES ('7080112', 'Trí Tuệ Nhân Tạo')
 RETURNING *;

 INSERT INTO bng_bangdiem(svID, mhID, dC1, dC2, dC3, dB1, dB2, dB3, dA)
 VALUES ('2021050708', '7080112', 7, 8, 8, 7.5, 7.6, 7.0, 7.3)
 RETURNING *;


-- xóa tất cả bản ghi trong bảng dữ liệu --
--DELETE FROM bng_mon_hoc;
--DELETE FROM bng_bangdiem;
--DELETE FROM bng_sinh_vien;



