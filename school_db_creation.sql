/*
 * Xóa CSDL tên 'school_db'
 */
--DROP DATABASE school_db;

/*
 * Tạo CSDL tên 'school_db'
 */
CREATE DATABASE school_db;

/*
 * đổi tên csdl từ  school_db --> 't3h_db_ex'
 */
-- ALTER DATABASE school_db RENAME TO t3h_db_ex;

\connect school_db

/*
 * tạo các bảng trong csdl
 */
CREATE TABLE bng_giang_vien (
  gvID      varchar(5) NOT NULL,
  gvHOTEN   varchar(20)
);

CREATE TABLE bng_sinh_vien (
  svID        varchar(10) NOT NULL,
  svHOTEN     varchar(20),
  svNGAYSINH  time
);

CREATE TABLE bng_lop_hoc (
  lhID      varchar(8) NOT NULL,
  lhTENLOP  varchar(20)
);

CREATE TABLE bng_mon_hoc (
  mhID      varchar(8) NOT NULL,
  mhTENMON  varchar(20)
);

CREATE TABLE bng_hoc_ki (
  hkID      varchar(8) NOT NULL,
  hkTEN     varchar(10)
);

CREATE TABLE bng_bang_diem (
  svID      varchar(10) NOT NULL,
  mhID      varchar(8) NOT NULL,
  dC1       real,
  dC2       real,
  dC3       real,
  dB1       real,
  dB2       real,
  dB3       real,
  dA        real
);

/*
 * Xóa các bảng trong csdl
 */
--DROP TABLE bng_giang_vien, bng_sinh_vien, bng_lop_hoc, bng_mon_hoc, bng_hoc_ki, bng_bang_diem;

/*
 * đổi một tên bảng trong csdl 
 */
--ALTER TABLE IF EXISTS bng_bang_diem RENAME TO bng_bangdiem;


/*
 * Sau khi tạo bảng, chúng ta nhận thấy cần phải thay đổi một số
 * thành phần của bảng (cập nhật lại cấu trúc của bảng) --> nhu cầu
 * thay đổi cấu trúc bảng. Để làm được việc này chúng ta sử dụng mệnh đề
 * theo mẫu như bên dưới:
 *        ALTER TABLE <tên_bảng> <thay_đổi>;
 * Câu lệnh này cho phép thực hiện các thay đổi như:
 * - Thêm trường dữ liệu mới (thêm cột).
 * - Xóa trường dữ liệu cụ (xóa cột).
 * - Thay đổi kiểu dữ liệu của trường dữ liệu.
 * - Thay đổi tên trường dữ liệu.
 * - Thiết lập giá trị mặc định cho trường dữ liệu.
 * - Thêm/xóa các ràng buộc trên trường dữ liệu.
 */


/*
 -- Thêm một trường dữ liệu mới vào bảng --
 ALTER TABLE bng_giang_vien
 ADD COLUMN gvNGAYSINH time NOT NULL;

-- xóa một trường dữ liệu trong bảng --
ALTER TABLE <tên_bảng>
ADD COLUMN <tên_trường_dữ _liệu>;

-- sửa tên một trường dữ liệu --
ALTER TABLE <tên_bảng> 
RENAME COLUMN <tên_trường_cũ> 
TO <tên_trường_mới>;

-- thêm ràng buộc mới vào trường dữ liệu --
ALTER TABLE <tên_bảng> 
ADD CONSTRAINT <tên_ràng_buộc> <định_nghĩa_ràng_buộc>;

-- thiết lập/xóa thiết lập giá trị mặc định của trường dữ liệu --
ALTER TABLE <tên_bảng> 
RENAME COLUMN <tên_trường> 
[SET DEFAULT <giá_trị> | DROP DEFAULT];

-- thiết lập/xóa thiết lập ràng buộc NOT NULL --
ALTER TABLE <tên_bảng> 
ALTER COLUMN <tên_trường> 
[SET NOT NULL| DROP NOT NULL];

-- thiết lập/xóa thiết lập ràng buộc CHECK --
ALTER TABLE <tên_bảng> 
ADD CHECK <diễn _đạt(expression)>;
*/

