CREATE TABLE HoaDonNhap(
	[MaHD] [nchar](4) NOT NULL,
	[TenHD] [nvarchar](100) NOT NULL,
	[NgayNhap] [datetime] NULL,
	[DonGia] [float] NULL,
	[MaNCC] [nchar](5) NOT NULL,
	[MaDP] [nchar](4) NOT NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nchar](5) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[DienThoai] [nchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
CREATE TABLE [dbo].[DuocPham](
	[MaDP] [nchar](4) NOT NULL,
	[TenDP] [nvarchar](100) NOT NULL,
	[SoLuong] [int] NULL,
	[DVT] [nvarchar](100) NULL,
	[DonGia] [float] NULL,
	[XuatXu] [nvarchar](100) NULL,
 CONSTRAINT [PK_DuocPham] PRIMARY KEY CLUSTERED 
(
	[MaDP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
CREATE TABLE [dbo].[HoaDonXuat](
	[MaHD] [nchar](4) NOT NULL,
	[TenHD] [nvarchar](100) NOT NULL,
	[NgayXuat] [datetime] NULL,
	[DonGia] [float] NULL,
	[MaCT] [nchar](4) NOT NULL,
	[MaDP] [nchar](4) NOT NULL,
 CONSTRAINT [PK_HoaDonXuat] PRIMARY KEY CLUSTERED 
(	
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
go
CREATE TABLE [dbo].[CongTy](
	[MaCT] [nchar](4) NOT NULL,
	[TenCT] [nvarchar](100) NULL,
	[DienThoai] [nchar](10) NULL,
	[Email] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
 CONSTRAINT [PK_CongTy] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


go
Insert Into DuocPham(MaDP,TenDP,SoLuong,DVT,DonGia,XuatXu) values 
(N'DP13',N'Vitamin E',25,'hộp',260000,N'Hàn Quốc'),
(N'DP03',N'Vitamin B',11,'hộp',1289033,'Indonesia'),
(N'DP04',N'Levothyroxine',10,'hộp',1200000,N'Lào'),
(N'DP05',N'	Memantine',22,'hộp',239000,'Campuchia'),
(N'DP06',N'	Donepezil',33,'hộp',128900,'Mianma'),
(N'DP07',N'	Motilium‑M',12,'hộp',1987000,N'Việt Nam'),
(N'DP08',N'LEVOFLOXACIN',34,'hộp',129000,N'Mỹ'),
(N'DP09',N' TATANOL',13,'hộp',1289002,'Califonia'),
(N'DP10',N'Bảo xuân',12,'hộp',1287009,N'Bỉ'),
(N'DP11',N'Tottri',09,'hộp',2789111,'Anh'),
(N'DP12',N'An trĩ vương',12,'hộp',6729167,'Miên')
go
Insert Into HoaDonNhap(MaHD,TenHD,NgayNhap,DonGia,MaNCC,MaDP) values 
(N'DP02',N'Vitamin C',12,'hộp',269880,N'thái lan'),
(N'DP03',N'Vitamin B',11,'hộp',1289033,'Indonesia'),
(N'DP04',N'Levothyroxine',10,'hộp',1200000,N'Lào'),
(N'DP05',N'	Memantine',22,'hộp',239000,'Campuchia'),
(N'DP06',N'	Donepezil',33,'hộp',128900,'Mianma'),
(N'DP07',N'	Motilium‑M',12,'hộp',1987000,N'Việt Nam'),
(N'DP08',N'LEVOFLOXACIN',34,'hộp',129000,N'Mỹ'),
(N'DP09',N' TATANOL',13,'hộp',1289002,'Califonia'),
(N'DP10',N'Bảo xuân',12,'hộp',1287009,N'Bỉ'),
(N'DP11',N'Tottri',09,'hộp',2789111,'Anh'),
(N'DP12',N'An trĩ vương',12,'hộp',6729167,'Miên')
go
Insert Into NhaCungCap(MaNCC,TenNCC,DienThoai,DiaChi,Email) values 
(N'NCC14',N'An Nam','0975126715',N'23 Quận 12',N'tq1204@gmail.com'),
(N'NCC04',N'Thảo Quyên','0975126716',N'25 Trần Bá Giao','I@gamil.com'),
(N'NCC05',N'Phương Trinh','0975196715',N'16 An Vương',N'l@gamll.com'),
(N'NCC06',N'QUế Trân','0975126725',N'18 Mina','k@gmail.com'),
(N'NCC07',N'Đoan Trang','0975126785',N'67 Bình Phước','M@gmail.com'),
(N'NCC08',N'Duy Khánh','0975126715',N'12 quận 10',N'V@gamil.com'),
(N'NCC09',N'VĂn Tiên','0975126756',N'Nguyễn Thái Sơn Gò Vấp',N'M@gamil.com'),
(N'NCC10',N'Hoài Linh','0975126215',N'lê van sỹ quận 3','C@gmail.com'),
(N'NCC11',N'Thiên Tính','0975126895',N'Bình nam',N'B@gmail.com'),
(N'NCC12',N'Mai Ly','0975126115','14 an nam','Anh@gmail.com'),
(N'NCC13',N'Michu','0975126745',N'19 mĩ an',N'kh@gmail.com')
go
Insert Into CongTy(MaCT,TenCT,DienThoai,Email,DiaChi) values 
(N'CT14',N'Giáo Sư','0975126115',N'212@gmail.com',N'Quận Gò Vấp'),
(N'CT04',N'Mai Mai','0975126726',N'22@gmail.com',N'Quận 2'),
(N'CT05',N'Chí Bảo','0975196715',N'162@gmail.com',N'Quận 3'),
(N'CT06',N'Minh Tuấn','0975136725',N'182@gmail.com',N'Quận 4'),
(N'CT07',N'Xuân Tùng','0975125785',N'672@gmail.com',N'Quận 5'),
(N'CT08',N'Duy Khánh','0975127715',N'122@gmail.com',N'Quận 7'),
(N'CT09',N'Nam Khơi','0975126456',N'N2@gmail.com',N'Quận 8'),
(N'CT10',N'Dương Dương','0975226215',N'l2@gmail.com',N'Quận 9'),
(N'CT11',N'Thảo Ngọc','0975127895',N'B2@gmail.com',N'Quận 10'),
(N'CT12',N'Hoa Lan','0975126125','12@gmail.com',N'Quận 11'),
(N'CT13',N'MiLai','0975126747',N'192@gmail.com',N'12')

Insert Into HoaDonNhap(MaHD,TenHD,NgayNhap,DonGia,MaNCC,MaDP) values 
(N'HD03',N'Hóa đơn số 1','2023/2/2',120000,'NCC01','DP01'),
(N'HD04',N'Hóa đơn số 2','2023-12-2',23000,'NCC01','DP02'),
(N'HD05',N'Hóa đơn số 3','2023-12-3',340000,'NCC03','DP03'),
(N'HD06',N'Hóa đơn số 4','2023-12-8',89000,'NCC05','DP04'),
(N'HD07',N'Hóa đơn số 5','2023-12-12',23000,'NCC04','DP05'),
(N'HD08',N'Hóa đơn số 6','2023-12-18',980000,'NCC12','DP06'),
(N'HD09',N'Hóa đơn số 7','2023-1-1',123000,'NCC11','DP07'),
(N'HD10',N'Hóa đơn số 8','2023-2-1',679999,'NCC09','DP08'),
(N'HD11',N'THóa đơn số 9','2023-2-16',980000,'NCC12','DP11'),
(N'HD12',N'Hóa đơn số 10','2023-2-21',123000,'NCC01','DP01'),
(N'HD13',N'Hóa đơn số 11','2023-2-19',230000,'NCC03','DP10')

update HoaDonNhap
set DonGia=129000
where MaHD = 'HD03'

update HoaDonXuat
set TenHD=N'Hóa đơn phụ'
where MaHD = 'HD03'

Insert Into HoaDonXuat(MaHD,TenHD,NgayXuat,DonGia,MaCT,MaDP) values 
(N'HD03',N'Hóa đơn số 1','2023/2/2',120000,'CT01','DP01'),
(N'HD04',N'Hóa đơn số 2','2023-12-2',23000,'CT03','DP02'),
(N'HD05',N'Hóa đơn số 3','2023-12-3',340000,'CT06','DP03'),
(N'HD06',N'Hóa đơn số 4','2023-12-8',89000,'CT07','DP04'),
(N'HD07',N'Hóa đơn số 5','2023-12-12',23000,'CT01','DP05'),
(N'HD08',N'Hóa đơn số 6','2023-12-18',980000,'CT11','DP06'),
(N'HD09',N'Hóa đơn số 7','2023-1-1',123000,'CT09','DP07'),
(N'HD10',N'Hóa đơn số 8','2023-2-1',679999,'CT09','DP08'),
(N'HD11',N'THóa đơn số 9','2023-2-16',980000,'CT08','DP11'),
(N'HD12',N'Hóa đơn số 10','2023-2-21',123000,'CT01','DP01'),
(N'HD13',N'Hóa đơn số 11','2023-2-19',230000,'CT01','DP10')


GO
CREATE PROCEDURE SelectAllDuocpham
AS 
BEGIN
     SELECT * 
     FROM DuocPham
END;
go
CREATE FUNCTION SoLuong
( @soluong INT )

RETURNS VARCHAR(50)

AS

BEGIN

DECLARE @duocpham_name VARCHAR(100);

IF @soluong < 10
SET @duocpham_name = N'Số lượng ít';
ELSE
SET @duocpham_name = N'Số lượng nhiều';

RETURN @duocpham_name;

END;
go

Create trigger capnhat on HoaDonXuat after update as
begin
update DuocPham set SoLuong = SoLuong -
(Select SoLuong from inserted where MaDP = DuocPham.MaDP)+
(Select SoLuong from inserted where MaDP = DuocPham.MaDP)
from DuocPham
join deleted on DuocPham.MaDP = deleted.MaDP
end
