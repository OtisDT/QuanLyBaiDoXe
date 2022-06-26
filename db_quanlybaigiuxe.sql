﻿CREATE DATABASE QUANLYBAIDOXE	
GO
USE QUANLYBAIDOXE
GO
---------------NHAN VIEN--------------
CREATE TABLE NHANVIEN(
	MANHANVIEN VARCHAR(20) PRIMARY KEY,
	TENNHANVIEN NVARCHAR(100), 
	GIOITINH  NVARCHAR(20),
	DIENTHOAI CHAR(20) ,
	NGAYSINH DATE,
	DIACHI NVARCHAR(100),
	TENTAIKHOAN VARCHAR(50),
	MATKHAU VARCHAR(50) ,
	LOAITAIKHOAN INT
	)
GO
--------------RA VAO BEN----------------

CREATE TABLE RAVAOBEN(
	MAVE VARCHAR(20) ,
	TENVITRI VARCHAR(20),
	TENKHUVUC VARCHAR(20),
	BIENSOXE VARCHAR(20),
	THOIGIANVAO DATE,
	THOIGIANRA DATE,
	TRANGTHAI NVARCHAR(20)
)
GO

-------------------VI TRI-------------------

CREATE TABLE VITRI(
	TENVITRI VARCHAR(20)  PRIMARY KEY,
	TRANGTHAI NVARCHAR(20),
	TENKHUVUC VARCHAR(20),
)
GO

-------------------KHU VỰC--------------

CREATE TABLE KHUVUC(
	TENKHUVUC VARCHAR(20) PRIMARY KEY ,
	TRANGTHAI NVARCHAR(20)
)
GO

-------------------VE--------------------

CREATE TABLE VE(
	MAVE VARCHAR(20) PRIMARY KEY,
	TINHTRANGVE NVARCHAR(20)
)
GO 

CREATE TABLE HOADON(
	MAHOADON VARCHAR(20)  PRIMARY KEY,
	MAVE VARCHAR(20),
	TENVITRI VARCHAR(20),
	TENKHUVUC VARCHAR(20),
	TENNHANVIEN NVARCHAR(100),
	SONGAYGUI INT,
	BIENSOXE VARCHAR(20),
	THANHTIEN INT,
	NGAYLAP DATE
)
GO

ALTER TABLE dbo.VITRI ADD CONSTRAINT fk_vt_kv
FOREIGN KEY (TENKHUVUC) REFERENCES dbo.KHUVUC(TENKHUVUC)
GO
ALTER TABLE dbo.RAVAOBEN ADD CONSTRAINT fk_rvb_kv
FOREIGN KEY (TENKHUVUC) REFERENCES dbo.KHUVUC(TENKHUVUC)
GO
ALTER TABLE dbo.RAVAOBEN ADD CONSTRAINT fk_rvb_vt
FOREIGN KEY (TENVITRI) REFERENCES dbo.VITRI(TENVITRI)
GO
ALTER TABLE dbo.RAVAOBEN ADD CONSTRAINT fk_rvb_mv
FOREIGN KEY (MAVE) REFERENCES dbo.VE(MAVE)
GO
ALTER TABLE dbo.HOADON ADD CONSTRAINT fk_hd_mv
FOREIGN KEY (MAVE) REFERENCES dbo.VE(MAVE)
GO
ALTER TABLE dbo.HOADON ADD CONSTRAINT fk_hd_kv
FOREIGN KEY (TENKHUVUC) REFERENCES dbo.KHUVUC(TENKHUVUC)
GO
ALTER TABLE dbo.HOADON ADD CONSTRAINT fk_hd_vt
FOREIGN KEY (TENVITRI) REFERENCES dbo.VITRI(TENVITRI)
GO
INSERT INTO dbo.NHANVIEN VALUES('NV01',N'TRẦN ĐỨC ĐẠT',N'NAM','0904717823','2001-06-20',N'HÀ TĨNH','dat','12',1)
INSERT INTO dbo.NHANVIEN VALUES('NV02',N'NGUYỄN TOÀN',N'NAM','0391231359','2001-09-10',N'HÀ NỘI','toan','12',2)
INSERT INTO dbo.NHANVIEN VALUES('NV03',N'NGUYỄN ADMIN',N'NỮ','0312231359','2001-01-10',N'HÀ NỘI','admin','12',3)
GO
INSERT INTO dbo.KHUVUC VALUES('KV-A',N'CÒN CHỖ')
INSERT INTO dbo.KHUVUC VALUES('KV-B',N'CÒN CHỖ')
INSERT INTO dbo.KHUVUC VALUES('KV-C',N'CÒN CHỖ')
GO
INSERT INTO dbo.VITRI VALUES('VT-A1',N'TRỐNG','KV-A')
INSERT INTO dbo.VITRI VALUES('VT-A2',N'TRỐNG','KV-A')
INSERT INTO dbo.VITRI VALUES('VT-A3',N'TRỐNG','KV-A')
INSERT INTO dbo.VITRI VALUES('VT-A4',N'TRỐNG','KV-A')
INSERT INTO dbo.VITRI VALUES('VT-A5',N'TRỐNG','KV-A')
---KV-B---
INSERT INTO dbo.VITRI VALUES('VT-B1',N'TRỐNG','KV-B')
INSERT INTO dbo.VITRI VALUES('VT-B2',N'TRỐNG','KV-B')
INSERT INTO dbo.VITRI VALUES('VT-B3',N'TRỐNG','KV-B')
INSERT INTO dbo.VITRI VALUES('VT-B4',N'TRỐNG','KV-B')
INSERT INTO dbo.VITRI VALUES('VT-B5',N'TRỐNG','KV-B')
--KV-C
INSERT INTO dbo.VITRI VALUES('VT-C1',N'TRỐNG','KV-C')
INSERT INTO dbo.VITRI VALUES('VT-C2',N'TRỐNG','KV-C')
INSERT INTO dbo.VITRI VALUES('VT-C3',N'TRỐNG','KV-C')
INSERT INTO dbo.VITRI VALUES('VT-C4',N'TRỐNG','KV-C')
INSERT INTO dbo.VITRI VALUES('VT-C5',N'TRỐNG','KV-C')
GO
INSERT INTO dbo.VE VALUES('0001',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0002',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0003',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0004',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0005',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0006',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0007',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0008',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0009',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0010',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0011',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0012',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0013',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0014',N'CHƯA SỬ DỤNG')
INSERT INTO dbo.VE VALUES('0015',N'CHƯA SỬ DỤNG')
GO