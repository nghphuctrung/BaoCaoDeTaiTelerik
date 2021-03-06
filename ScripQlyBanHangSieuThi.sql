USE [QLyBanHangSieuThi]
GO
/****** Object:  Table [dbo].[TKLogin]    Script Date: 08/22/2016 22:32:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TKLogin](
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TKLogin] ([TaiKhoan], [MatKhau]) VALUES (N'admin', N'1234')
INSERT [dbo].[TKLogin] ([TaiKhoan], [MatKhau]) VALUES (N'gm01', N'12345')
INSERT [dbo].[TKLogin] ([TaiKhoan], [MatKhau]) VALUES (N'gm02', N'12345')
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 08/22/2016 22:32:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](50) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](350) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Website] [nvarchar](250) NULL,
 CONSTRAINT [PK_NHACUNGCAP] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Website]) VALUES (N'NCC1', N'Công Ty Cổ Phần OTRAN Việt Nam', N'Cụm CN Dốc 47, Xã Tam Phước, Tp. Biên Hòa, Đồng Nai', N'(061) 38261919', N'http://otrangroup.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Website]) VALUES (N'NCC2', N'Công Ty CoCaCoLa Việt Nam', N'485 Xa lộ Hà Nội, Linh Trung, Thủ Đức, Hồ Chí Minh', N'08 3896 1000', N'www.coca-cola.vn')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Website]) VALUES (N'NCC3', N'Công Ty Cố Phần Foodtech', N'Ấp 1, X. Nhựt Chánh, H. Bến Lức,Long An', N'(072) 3871080', N'http://trangvangvietnam.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Website]) VALUES (N'NCC4', N'Công Ty Cổ Phần Thực Phẩm Đức Việt', N'Tòa Nhà Seaprodex – 20 Láng Hạ, Đống Đa, Hà Nội. ', N'043.776.4322', N'ducvietfoods.vn')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Website]) VALUES (N'NCC5', N'Công Ty Cổ Phần Bột Thực Phẩm Tài Ký', N'324 Điện Biên Phủ, P.17, Q.Bình Thạnh, Tp.HCM', N'19006108', N'takyfood.com.vn')
/****** Object:  Table [dbo].[NguoiDungCa]    Script Date: 08/22/2016 22:32:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDungCa](
	[MaNV] [nvarchar](50) NOT NULL,
	[HoNV] [nvarchar](50) NULL,
	[TenNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](350) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Quyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_NGUOIDUNGCA] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NguoiDungCa] ([MaNV], [HoNV], [TenNV], [DiaChi], [DienThoai], [TaiKhoan], [MatKhau], [Quyen]) VALUES (N'NV001', N'Lê văn', N'Tâm', N'45 Trần Phú', N'8663447', N'nhanvien01', N'03071994', N'ThanhToan')
INSERT [dbo].[NguoiDungCa] ([MaNV], [HoNV], [TenNV], [DiaChi], [DienThoai], [TaiKhoan], [MatKhau], [Quyen]) VALUES (N'NV002', N'Tạ Thành', N'Tâm', N'15 Nguyễn Trãi', N'8565666', N'nhanvien02', N'05031993', N'ThanhToan')
INSERT [dbo].[NguoiDungCa] ([MaNV], [HoNV], [TenNV], [DiaChi], [DienThoai], [TaiKhoan], [MatKhau], [Quyen]) VALUES (N'NV003', N'Lê thị', N'Thuỷ', N'20 Võ thị Sáu', N'9767677', N'nhanvien03', N'20031990', N'ThanhToan')
INSERT [dbo].[NguoiDungCa] ([MaNV], [HoNV], [TenNV], [DiaChi], [DienThoai], [TaiKhoan], [MatKhau], [Quyen]) VALUES (N'NV004', N'Trần Văn', N'Thanh', N'122 Trần Phú', N'0918158', N'nhanvien04', N'26031991', N'ThanhToan')
INSERT [dbo].[NguoiDungCa] ([MaNV], [HoNV], [TenNV], [DiaChi], [DienThoai], [TaiKhoan], [MatKhau], [Quyen]) VALUES (N'NV005', N'Lê Dũng', N'Bảo', N'25 Ngô Quyền', N'6987456', N'nhanvien05', N'01051992', N'ThanhToan')
INSERT [dbo].[NguoiDungCa] ([MaNV], [HoNV], [TenNV], [DiaChi], [DienThoai], [TaiKhoan], [MatKhau], [Quyen]) VALUES (N'NV006', N'Nguyễn Thị', N'Thủy', N'12 Lê Thánh Tôn', N'9998745', N'nhanvien06', N'25081994', N'ThanhToan')
INSERT [dbo].[NguoiDungCa] ([MaNV], [HoNV], [TenNV], [DiaChi], [DienThoai], [TaiKhoan], [MatKhau], [Quyen]) VALUES (N'NV007', N'Nguyễn Thu', N'Hồng', N'987 Lê Lợi', N'8535313', N'nhanvien07', N'19111993', N'ThanhToan')
/****** Object:  Table [dbo].[Loai_HH]    Script Date: 08/22/2016 22:32:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_HH](
	[MaLoaiHH] [nvarchar](50) NOT NULL,
	[TenLoaiHH] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loai_HH] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Loai_HH] ([MaLoaiHH], [TenLoaiHH]) VALUES (N'1', N'Dầu Ăn')
INSERT [dbo].[Loai_HH] ([MaLoaiHH], [TenLoaiHH]) VALUES (N'2', N'Bột')
INSERT [dbo].[Loai_HH] ([MaLoaiHH], [TenLoaiHH]) VALUES (N'3', N'Xúc Xích')
INSERT [dbo].[Loai_HH] ([MaLoaiHH], [TenLoaiHH]) VALUES (N'4', N'Đồ Hộp')
INSERT [dbo].[Loai_HH] ([MaLoaiHH], [TenLoaiHH]) VALUES (N'5', N'Đồ Uống')
/****** Object:  Table [dbo].[KhachHang]    Script Date: 08/22/2016 22:32:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[HoKH] [nvarchar](50) NULL,
	[TenKH] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[SoDiem] [nchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000001            ', N'Nguyễn Đức', N'Trường', N'908859023', N'200       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000002            ', N'Hoàng Trường ', N'Sơn', N'902823475', N'371       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000003            ', N'Huỳnh Văn', N'Hiệu', N'988007623', N'215       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000004            ', N'Ngô Quang', N'Tuệ', N'918636437', N'362       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000005            ', N'Trần Thị Mỹ', N'Liên', N'977794526', N'754       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000006            ', N'Tạ Thị Kim', N'Thanh', N'914136317', N'135       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000007            ', N'Lý Thị Bích ', N'Dung', N'902826317', N'464       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000008            ', N'Nguyễn Huỳnh Quang', N'Huy', N'918173163', N'134       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000009            ', N'Nguyễn Bảo', N'Hưng', N'944773617', N'574       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000010            ', N'Lê Nguyễn Trọng', N'Nhân', N'902017427', N'354       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000011            ', N'Phùng Đăng', N'Huy', N'77777777', N'235       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000012', N'Nguyễn ', N'Khôi', N'3251235', N'250       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000013', N'Trần Thị ', N'Nghĩa', N'1341313523', N'204       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000014', N'Nguyễn Thị Thùy', N'Dương', N'043141241', N'400       ')
INSERT [dbo].[KhachHang] ([MaKH], [HoKH], [TenKH], [SoDienThoai], [SoDiem]) VALUES (N'KH000015', N'Trần Mỹ', N'Hiền', N'036123151', N'350       ')
/****** Object:  Table [dbo].[HoaDon]    Script Date: 08/22/2016 22:32:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](50) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNV] [nvarchar](50) NULL,
	[MaKH] [nvarchar](50) NULL,
	[TongThanhTien] [int] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000001', CAST(0x3F240B00 AS Date), N'NV002', N'KH000004            ', 52000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000002', CAST(0xD1260B00 AS Date), N'NV001', N'KH000007            ', 169000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000003', CAST(0x95250B00 AS Date), N'NV007', N'KH000002            ', 290000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000004', CAST(0xDF240B00 AS Date), N'NV001', N'KH000003            ', 24000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000005', CAST(0xE0240B00 AS Date), N'NV002', N'KH000009            ', 123000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000006', CAST(0xAB290B00 AS Date), N'NV007', N'KH000010            ', 278000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000007', CAST(0x3F270B00 AS Date), N'NV004', N'KH000001            ', 39000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000008', CAST(0x2D250B00 AS Date), N'NV003', N'KH000011            ', 178000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000009', CAST(0x7E270B00 AS Date), N'NV003', N'KH000010            ', 288000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000010', CAST(0x50260B00 AS Date), N'NV003', N'KH000008            ', 231000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000011', CAST(0xA3250B00 AS Date), N'NV005', N'KH000006            ', 52000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongThanhTien]) VALUES (N'HD000012', CAST(0xDD270B00 AS Date), N'NV006', N'KH000005            ', 172000)
/****** Object:  Table [dbo].[HangHoa]    Script Date: 08/22/2016 22:32:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[MaHH] [nvarchar](50) NOT NULL,
	[TenHH] [nvarchar](50) NULL,
	[GiaBan] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[MaNCC] [nvarchar](50) NULL,
	[MaLoaiHH] [nvarchar](50) NULL,
 CONSTRAINT [PK_HANGHOA] PRIMARY KEY CLUSTERED 
(
	[MaHH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000001', N'Dầu Ăn Kiddy', 36000, N'Chai', N'NCC1', N'1')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000002', N'Dầu Ăn Neptune', 15000, N'Chai', N'NCC1', N'1')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000003', N'Dầu Ăn Simply', 43000, N'Chai', N'NCC1', N'1')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000004', N'Dầu Ăn Mezan', 31000, N'Chai', N'NCC1', N'1')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000005', N'Bột Cánh Gà Angon', 3000, N'Gói', N'NCC5', N'2')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000006', N'Bột Mì Mezan', 8000, N'Gói', N'NCC5', N'2')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000007', N'Bột Làm Bánh ', 13500, N'Gói', N'NCC5', N'2')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000008', N'Xúc Xích Heo', 20000, N'Túi', N'NCC4', N'3')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000009', N'Xúc Xích Bông Mai', 15000, N'Túi', N'NCC4', N'3')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000010', N'Xúc Xích Bò', 17000, N'Túi', N'NCC4', N'3')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000011', N'Xúc Xích Gà', 16000, N'Túi', N'NCC4', N'3')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000012', N'Thịt Hộp Pate Heo', 24000, N'Hộp', N'NCC3', N'4')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000013', N'Thịt Hộp Heo Hầm', 19000, N'Hộp', N'NCC3', N'4')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000014', N'Thịt Hộp Bò Xay', 16000, N'Hộp', N'NCC3', N'4')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000015', N'Thịt Hộp Bò Hầm', 25000, N'Hộp', N'NCC3', N'4')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000016', N'Nước CoCa 1,5L', 15000, N'Chai', N'NCC2', N'5')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000017', N'Nước Fanta 1,5L', 16000, N'Chai', N'NCC2', N'5')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000018', N'Nước Sprite 1,5L', 15500, N'Chai', N'NCC2', N'5')
INSERT [dbo].[HangHoa] ([MaHH], [TenHH], [GiaBan], [DonViTinh], [MaNCC], [MaLoaiHH]) VALUES (N'HH000019', N'Nước NumberOne', 12000, N'Chai', N'NCC2', N'5')
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 08/22/2016 22:32:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaHH] [nvarchar](50) NOT NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_CHITIETHOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaHH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000001', N'HH000003', 43000, 1, 43000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000001', N'HH000005', 3000, 3, 9000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000002', N'HH000007', 13500, 4, 54000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000002', N'HH000009', 15000, 2, 30000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000002', N'HH000010', 17000, 5, 85000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000003', N'HH000001', 36000, 2, 72000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000003', N'HH000011', 16000, 3, 48000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000003', N'HH000014', 16000, 5, 80000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000003', N'HH000016', 15000, 6, 90000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000004', N'HH000012', 24000, 1, 24000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000005', N'HH000001', 36000, 3, 108000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000005', N'HH000005', 3000, 5, 15000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000006', N'HH000010', 17000, 6, 102000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000006', N'HH000011', 16000, 2, 32000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000006', N'HH000012', 24000, 6, 144000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000007', N'HH000007', 13500, 2, 27000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000007', N'HH000019', 12000, 1, 12000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000008', N'HH000002', 15000, 2, 30000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000008', N'HH000006', 8000, 3, 24000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000008', N'HH000008', 20000, 5, 100000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000008', N'HH000012', 24000, 1, 24000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000009', N'HH000004', 31000, 2, 62000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000009', N'HH000013', 19000, 6, 114000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000009', N'HH000017', 16000, 7, 112000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000010', N'HH000015', 25000, 8, 200000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000010', N'HH000018', 15500, 2, 31000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000011', N'HH000004', 16000, 1, 16000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000011', N'HH000019', 12000, 3, 36000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000012', N'HH000005', 3000, 4, 12000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000012', N'HH000008', 20000, 2, 40000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaHH], [DonGia], [SoLuong], [ThanhTien]) VALUES (N'HD000012', N'HH000012', 24000, 5, 120000)
/****** Object:  ForeignKey [FK_CHITIETHOADON_HANGHOA]    Script Date: 08/22/2016 22:32:34 ******/
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HANGHOA] FOREIGN KEY([MaHH])
REFERENCES [dbo].[HangHoa] ([MaHH])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CHITIETHOADON_HANGHOA]
GO
/****** Object:  ForeignKey [FK_CHITIETHOADON_HOADON]    Script Date: 08/22/2016 22:32:34 ******/
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HOADON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_CHITIETHOADON_HOADON]
GO
/****** Object:  ForeignKey [FK_HANGHOA_Loai_HH]    Script Date: 08/22/2016 22:32:34 ******/
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_Loai_HH] FOREIGN KEY([MaLoaiHH])
REFERENCES [dbo].[Loai_HH] ([MaLoaiHH])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HANGHOA_Loai_HH]
GO
/****** Object:  ForeignKey [FK_HANGHOA_NHACUNGCAP]    Script Date: 08/22/2016 22:32:34 ******/
ALTER TABLE [dbo].[HangHoa]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_NHACUNGCAP] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HangHoa] CHECK CONSTRAINT [FK_HANGHOA_NHACUNGCAP]
GO
/****** Object:  ForeignKey [FK_HOADON_KhachHang]    Script Date: 08/22/2016 22:32:34 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HOADON_KhachHang]
GO
/****** Object:  ForeignKey [FK_HOADON_NGUOIDUNGCA]    Script Date: 08/22/2016 22:32:34 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NGUOIDUNGCA] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NguoiDungCa] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HOADON_NGUOIDUNGCA]
GO
