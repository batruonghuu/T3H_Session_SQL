-- tạo bảng 'bng_links' nếu chưa tồn tại --
CREATE TABLE IF NOT EXISTS bng_links (
  lnkID serial PRIMARY KEY,
  lnkTIEU_DE VARCHAR (512) NOT NULL,
  lnkURL VARCHAR (1024) NOT NULL
);


-- thêm trường dữ liệu mới tên 'lnkKICH_HOAT' --
ALTER TABLE bng_links
ADD COLUMN lnkKICH_HOAT boolean;

-- xóa trường dữ liệu tên 'lnkKICH_HOAT' --
ALTER TABLE bng_links 
DROP COLUMN lnkKICH_HOAT;

-- đổi tên 'lnkTIEU_DE' --> 'lnkTEN_LIEN_KET' --
ALTER TABLE bng_links 
RENAME COLUMN lnkTIEU_DE TO lnkTEN_LIEN_KET;

-- thêm trường dữ liệu mới tên 'lnkMUC_TIEU' --
ALTER TABLE bng_links
ADD COLUMN lnkMUC_TIEU varchar(10);

-- thiết lập giá trị '_blank' là giá trị mặc định của 'lnkMUC_TIEU'
ALTER TABLE bng_links 
ALTER COLUMN lnkMUC_TIEU
SET DEFAULT '_blank';

-- tạo ràng buộc 'CHECK' để chỉ định trường dữ liệu 'lnkMUC_TIEU' chỉ
-- chấp nhận các giá trị sau: _self, _blank, _parent, và _top
INSERT INTO bng_links (lnkTEN_LIEN_KET, lnkURL)
VALUES('PostgreSQL Tutorial','https://www.postgresqltutorial.com/');

ALTER TABLE bng_links 
ADD CHECK (lnkMUC_TIEU IN ('_self', '_blank', '_parent', '_top'));

-- tạo ràng buộc 'UNIQUE' để chỉ định trường 'lnkURL' không chấp nhận giá
-- trị trùng lặp.
ALTER TABLE bng_links 
ADD CONSTRAINT lnkURL_RANGBUOC_DUYNHAT UNIQUE ( lnkURL );





