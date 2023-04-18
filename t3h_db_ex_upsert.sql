/*
  Trong CSDL quan hệ, thuật ngữ 'upsert' liên quan đến ý tưởng khi chúng ta thêm một bản ghi
  vào trong bảng, PostgreSQL sẽ cập nhật bản ghi nếu nó đã tồn tại, ngược lại thêm bản ghi mới.
  Để thực hiện ý tưởng này trong PostgreSQL chúng ta sử dụng mệnh đề 'INSERT ON CONFLICT', cấu
  trúc câu lênh SQL như sau:
        INSERT INTO <tên bảng>(<danh_sach_trường_dữ liệu >) 
        VALUES(<danh_sách_giá_trị>)
        ON CONFLICT <mục_tiêu_cập_nhật> <hành_động>;
  trong đó:
  - <mục_tiêu_cập_nhật>: có thể là 
      + tên một trường dữ liệu
      + là một ràng buộc: ON CONSTRAINT <tên_ràng_buộc>
      + mệnh đề WHERE
  - <hành_động>: có thể là
      + DO NOTHING: không làm gì nếu bản ghi đã tồn tại
      + DO UPDATE SET <trường_1> = <giá_trị_1>, ... WHERE <điều_kiện>: cập nhật giá trị 
 */
SELECT 'CREATE DATABASE t3h_db_ex'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 't3h_db_ex')\gexec

\connect t3h_db_ex

 CREATE TABLE IF NOT EXISTS bng_khach_hang (
  khID serial PRIMARY KEY,
	khHO_TEN VARCHAR UNIQUE,
	khEMAIL VARCHAR NOT NULL,
	khKICH_HOAT bool NOT NULL DEFAULT TRUE
 );

 INSERT INTO 
  bng_khach_hang (khHO_TEN, khEMAIL)
 VALUES 
  ('IBM', 'contact@ibm.com'),
  ('Microsoft', 'contact@microsoft.com'),
  ('Intel', 'contact@intel.com');

 INSERT INTO bng_khach_hang (khHO_TEN, khEMAIL)
 VALUES('Microsoft','hotline@microsoft.com') 
 ON CONFLICT (khHO_TEN) 
 DO NOTHING;

 INSERT INTO bng_khach_hang (khHO_TEN, khEMAIL)
 VALUES('Microsoft','hotline@microsoft.com') 
 ON CONFLICT (khHO_TEN) 
 DO UPDATE SET khEMAIL = EXCLUDED.khEMAIL || ';' || bng_khach_hang.khEMAIL;

 