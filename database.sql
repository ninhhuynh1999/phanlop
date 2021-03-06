USE [tour]
GO
/****** Object:  Table [dbo].[ChiPhi]    Script Date: 11/15/2020 7:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiPhi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaDoan] [int] NOT NULL,
	[LoaiChiPhi] [int] NOT NULL,
	[GiaTien] [money] NULL,
	[GhiChu] [ntext] NULL,
 CONSTRAINT [PK_ChiPhi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDoan]    Script Date: 11/15/2020 7:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDoan](
	[MaDoan] [int] NOT NULL,
	[MaNguoiThamGia] [int] NOT NULL,
	[GhiChu] [nchar](100) NULL,
	[ChucVuTrongDoan] [nchar](50) NULL,
 CONSTRAINT [PK_CTDoan] PRIMARY KEY CLUSTERED 
(
	[MaDoan] ASC,
	[MaNguoiThamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTTour]    Script Date: 11/15/2020 7:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTour](
	[MaTour] [int] NOT NULL,
	[MaDiaDiem] [int] NOT NULL,
	[ThuTu] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[MaTour] ASC,
	[MaDiaDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 11/15/2020 7:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nchar](30) NULL,
	[GhiChu] [ntext] NULL,
 CONSTRAINT [PK_DiaDiem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanDL]    Script Date: 11/15/2020 7:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanDL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nchar](30) NULL,
	[KhoiHanh] [date] NULL,
	[KetThuc] [date] NULL,
	[LichTrinh] [int] NULL,
	[MaTour] [int] NULL,
	[Gia] [money] NULL,
 CONSTRAINT [PK_DoanDL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gia]    Script Date: 11/15/2020 7:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gia] [money] NOT NULL,
	[BatDau] [date] NOT NULL,
	[KetThuc] [date] NOT NULL,
	[MaTour] [int] NOT NULL,
 CONSTRAINT [PK_Gia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiCP]    Script Date: 11/15/2020 7:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiCP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nchar](20) NULL,
	[GhiChu] [ntext] NULL,
 CONSTRAINT [PK_LoaiCP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTour]    Script Date: 11/15/2020 7:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nchar](30) NOT NULL,
 CONSTRAINT [PK_LoaiTour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoi]    Script Date: 11/15/2020 7:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nchar](30) NOT NULL,
	[CMND] [nchar](12) NULL,
	[SDT] [nchar](11) NULL,
	[Email] [nchar](35) NULL,
	[MaVaiTro] [int] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 11/15/2020 7:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nchar](40) NULL,
	[MaLoaiTour] [int] NOT NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 11/15/2020 7:14:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenVaiTro] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_VaiTro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiPhi] ON 

INSERT [dbo].[ChiPhi] ([Id], [MaDoan], [LoaiChiPhi], [GiaTien], [GhiChu]) VALUES (4, 1, 3, 12331.2000, N'eweq')
SET IDENTITY_INSERT [dbo].[ChiPhi] OFF
GO
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (1, 2, NULL, N'Nhập vai trò của nhân viên                     ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (1, 3, NULL, N'Nhập vai trò của nhân viên                     ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (1, 5, NULL, N'Nhập vai trò của nhân viên                     ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (1, 8, NULL, N'Khách                                            ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (1, 9, NULL, N'Khách                                            ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (1, 10, NULL, N'Khách                                            ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (1, 11, NULL, N'Khách                                            ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (1, 13, NULL, N'Khách                                            ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (2, 1, NULL, N'Khách                                            ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (2, 2, NULL, N'Nhập vai trò của nhân viên                     ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (2, 8, NULL, N'Khách                                            ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (2, 9, NULL, N'Khách                                            ')
INSERT [dbo].[CTDoan] ([MaDoan], [MaNguoiThamGia], [GhiChu], [ChucVuTrongDoan]) VALUES (2, 10, NULL, N'Khách                                            ')
GO
INSERT [dbo].[CTTour] ([MaTour], [MaDiaDiem], [ThuTu]) VALUES (1, 3, 1)
INSERT [dbo].[CTTour] ([MaTour], [MaDiaDiem], [ThuTu]) VALUES (1, 4, 2)
INSERT [dbo].[CTTour] ([MaTour], [MaDiaDiem], [ThuTu]) VALUES (1, 11, 3)
INSERT [dbo].[CTTour] ([MaTour], [MaDiaDiem], [ThuTu]) VALUES (2, 5, 1)
INSERT [dbo].[CTTour] ([MaTour], [MaDiaDiem], [ThuTu]) VALUES (2, 9, 2)
INSERT [dbo].[CTTour] ([MaTour], [MaDiaDiem], [ThuTu]) VALUES (13, 3, 1)
INSERT [dbo].[CTTour] ([MaTour], [MaDiaDiem], [ThuTu]) VALUES (13, 6, 2)
INSERT [dbo].[CTTour] ([MaTour], [MaDiaDiem], [ThuTu]) VALUES (13, 8, 3)
GO
SET IDENTITY_INSERT [dbo].[DiaDiem] ON 

INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (1, N'HCM                           ', NULL)
INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (2, N'Nha Trang                     ', NULL)
INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (3, N'Mui Ne                        ', NULL)
INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (4, N'HaNoi                         ', NULL)
INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (5, N'DaNang                        ', NULL)
INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (6, N'DongNai                       ', NULL)
INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (7, N'BacLieu                       ', NULL)
INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (8, N'SoocTrang                     ', NULL)
INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (9, N'CaMau                         ', NULL)
INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (10, N'QuangNgai                     ', NULL)
INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (11, N'Vinh Ha Long                  ', NULL)
INSERT [dbo].[DiaDiem] ([Id], [Ten], [GhiChu]) VALUES (12, N'quang nam                     ', NULL)
SET IDENTITY_INSERT [dbo].[DiaDiem] OFF
GO
SET IDENTITY_INSERT [dbo].[DoanDL] ON 

INSERT [dbo].[DoanDL] ([Id], [Ten], [KhoiHanh], [KetThuc], [LichTrinh], [MaTour], [Gia]) VALUES (1, N'doan di choiiiiii             ', CAST(N'2020-10-10' AS Date), CAST(N'2020-10-29' AS Date), NULL, 1, 600000.0000)
INSERT [dbo].[DoanDL] ([Id], [Ten], [KhoiHanh], [KetThuc], [LichTrinh], [MaTour], [Gia]) VALUES (2, N'doan du lich 2                ', CAST(N'2020-11-15' AS Date), CAST(N'2020-11-20' AS Date), NULL, 2, 5000000.0000)
INSERT [dbo].[DoanDL] ([Id], [Ten], [KhoiHanh], [KetThuc], [LichTrinh], [MaTour], [Gia]) VALUES (3, N'Doan du lich Vo Tan           ', CAST(N'2020-11-03' AS Date), CAST(N'2020-11-06' AS Date), NULL, 3, 450000.0000)
SET IDENTITY_INSERT [dbo].[DoanDL] OFF
GO
SET IDENTITY_INSERT [dbo].[Gia] ON 

INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (4, 450000.0000, CAST(N'2020-10-12' AS Date), CAST(N'2020-12-12' AS Date), 3)
INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (8, 560000.0000, CAST(N'2020-02-06' AS Date), CAST(N'2020-12-31' AS Date), 6)
INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (9, 600000.0000, CAST(N'2020-01-01' AS Date), CAST(N'2020-06-01' AS Date), 6)
INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (11, 800000.0000, CAST(N'2020-06-02' AS Date), CAST(N'2020-12-31' AS Date), 7)
INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (12, 700000.0000, CAST(N'2020-01-01' AS Date), CAST(N'2020-12-31' AS Date), 7)
INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (13, 1500000.0000, CAST(N'2020-01-01' AS Date), CAST(N'2020-04-01' AS Date), 5)
INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (17, 1350000.0000, CAST(N'2020-04-02' AS Date), CAST(N'2020-08-01' AS Date), 5)
INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (18, 1900000.0000, CAST(N'2020-08-02' AS Date), CAST(N'2020-12-31' AS Date), 5)
INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (49, 333000.0000, CAST(N'2020-01-01' AS Date), CAST(N'2020-02-01' AS Date), 1)
INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (50, 400000.0000, CAST(N'2020-02-02' AS Date), CAST(N'2020-04-01' AS Date), 1)
INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (51, 500000.0000, CAST(N'2020-04-02' AS Date), CAST(N'2020-10-01' AS Date), 1)
INSERT [dbo].[Gia] ([Id], [Gia], [BatDau], [KetThuc], [MaTour]) VALUES (52, 600000.0000, CAST(N'2020-10-02' AS Date), CAST(N'2020-12-31' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Gia] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiCP] ON 

INSERT [dbo].[LoaiCP] ([Id], [Ten], [GhiChu]) VALUES (1, N'Khách sạn         ', NULL)
INSERT [dbo].[LoaiCP] ([Id], [Ten], [GhiChu]) VALUES (2, N'Ăn uống            ', NULL)
INSERT [dbo].[LoaiCP] ([Id], [Ten], [GhiChu]) VALUES (3, N'Phương tiện đi lại', NULL)
INSERT [dbo].[LoaiCP] ([Id], [Ten], [GhiChu]) VALUES (4, N'Khác               ', NULL)
SET IDENTITY_INSERT [dbo].[LoaiCP] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTour] ON 

INSERT [dbo].[LoaiTour] ([Id], [Ten]) VALUES (1, N'Du lich                       ')
INSERT [dbo].[LoaiTour] ([Id], [Ten]) VALUES (2, N'Tham Quan                     ')
INSERT [dbo].[LoaiTour] ([Id], [Ten]) VALUES (3, N'Kham Pha                      ')
INSERT [dbo].[LoaiTour] ([Id], [Ten]) VALUES (4, N'Tham Hiem                     ')
SET IDENTITY_INSERT [dbo].[LoaiTour] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoi] ON 

INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (1, N'nguyễn văn bgb               ', N'321312312312', N'05404450754', N'123123@gmail.com                   ', 1)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (2, N'nhan vien 1                   ', N'31232       ', N'123123     ', N'123123                             ', 2)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (3, N'nhan vien 2                   ', N'eqweqwe     ', N'qưeqwe     ', N'qưe                                ', 2)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (5, N'nhan vien 3                   ', N'eqweqwe     ', N'qưeqwe     ', N'qưe                                ', 2)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (6, N'nhan vien 4                   ', N'eqweqwe     ', N'qưeqwe     ', N'qưe                                ', 2)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (7, N'nhan vien 5                   ', N'eqweqwe     ', N'qưeqwe     ', N'qưe                                ', 2)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (8, N'Khach hang 1                  ', N'123123      ', N'123123     ', N'123123                             ', 1)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (9, N'Khach hang 2                  ', N'123123      ', N'123123     ', N'123123                             ', 1)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (10, N'Khach hang 3                  ', N'123123      ', N'123123     ', N'123123                             ', 1)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (11, N'Khach hang 4                  ', N'123123      ', N'123123     ', N'123123                             ', 1)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (12, N'Khach hang 5                  ', N'123123      ', N'123123     ', N'123123                             ', 1)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (13, N'Khach hang 6                  ', N'123123      ', N'123123     ', N'123123                             ', 1)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (14, N'huynh khuong ninh             ', N'132873612938', N'42736482374', N'324876387@yahoo.com                ', 1)
INSERT [dbo].[Nguoi] ([Id], [Ten], [CMND], [SDT], [Email], [MaVaiTro]) VALUES (15, N'Test Them                     ', N'348762423487', N'23874263498', N'23897464892@gmail.com              ', 2)
SET IDENTITY_INSERT [dbo].[Nguoi] OFF
GO
SET IDENTITY_INSERT [dbo].[Tour] ON 

INSERT [dbo].[Tour] ([Id], [Ten], [MaLoaiTour]) VALUES (1, N'HCM_NhaTrang56                          ', 3)
INSERT [dbo].[Tour] ([Id], [Ten], [MaLoaiTour]) VALUES (2, N'HCM-MuiNe                               ', 2)
INSERT [dbo].[Tour] ([Id], [Ten], [MaLoaiTour]) VALUES (3, N'HN-HCM                                  ', 3)
INSERT [dbo].[Tour] ([Id], [Ten], [MaLoaiTour]) VALUES (5, N'HCM_TayBac                              ', 3)
INSERT [dbo].[Tour] ([Id], [Ten], [MaLoaiTour]) VALUES (6, N'HN_Cà Mau                               ', 1)
INSERT [dbo].[Tour] ([Id], [Ten], [MaLoaiTour]) VALUES (7, N'HN-NT                                   ', 1)
INSERT [dbo].[Tour] ([Id], [Ten], [MaLoaiTour]) VALUES (9, N'flksnfl                                 ', 3)
INSERT [dbo].[Tour] ([Id], [Ten], [MaLoaiTour]) VALUES (10, N'Bà Nà Hiêu                            ', 2)
INSERT [dbo].[Tour] ([Id], [Ten], [MaLoaiTour]) VALUES (11, N'Bảo tàng việt Nam                    ', 2)
INSERT [dbo].[Tour] ([Id], [Ten], [MaLoaiTour]) VALUES (12, N'Oc Cho                                  ', 1)
INSERT [dbo].[Tour] ([Id], [Ten], [MaLoaiTour]) VALUES (13, N'44554645                                ', 1)
SET IDENTITY_INSERT [dbo].[Tour] OFF
GO
SET IDENTITY_INSERT [dbo].[VaiTro] ON 

INSERT [dbo].[VaiTro] ([Id], [TenVaiTro]) VALUES (1, N'Khách hàng')
INSERT [dbo].[VaiTro] ([Id], [TenVaiTro]) VALUES (2, N'Nhân Viên')
SET IDENTITY_INSERT [dbo].[VaiTro] OFF
GO
ALTER TABLE [dbo].[ChiPhi]  WITH CHECK ADD  CONSTRAINT [FK_ChiPhi_DoanDL1] FOREIGN KEY([MaDoan])
REFERENCES [dbo].[DoanDL] ([Id])
GO
ALTER TABLE [dbo].[ChiPhi] CHECK CONSTRAINT [FK_ChiPhi_DoanDL1]
GO
ALTER TABLE [dbo].[ChiPhi]  WITH CHECK ADD  CONSTRAINT [FK_ChiPhi_LoaiCP1] FOREIGN KEY([LoaiChiPhi])
REFERENCES [dbo].[LoaiCP] ([Id])
GO
ALTER TABLE [dbo].[ChiPhi] CHECK CONSTRAINT [FK_ChiPhi_LoaiCP1]
GO
ALTER TABLE [dbo].[CTDoan]  WITH CHECK ADD  CONSTRAINT [FK_CTDoan_DoanDL] FOREIGN KEY([MaDoan])
REFERENCES [dbo].[DoanDL] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTDoan] CHECK CONSTRAINT [FK_CTDoan_DoanDL]
GO
ALTER TABLE [dbo].[CTDoan]  WITH CHECK ADD  CONSTRAINT [FK_CTDoan_Nguoi] FOREIGN KEY([MaNguoiThamGia])
REFERENCES [dbo].[Nguoi] ([Id])
GO
ALTER TABLE [dbo].[CTDoan] CHECK CONSTRAINT [FK_CTDoan_Nguoi]
GO
ALTER TABLE [dbo].[CTTour]  WITH CHECK ADD  CONSTRAINT [FK_CTTour_DiaDiem] FOREIGN KEY([MaDiaDiem])
REFERENCES [dbo].[DiaDiem] ([Id])
GO
ALTER TABLE [dbo].[CTTour] CHECK CONSTRAINT [FK_CTTour_DiaDiem]
GO
ALTER TABLE [dbo].[CTTour]  WITH CHECK ADD  CONSTRAINT [FK_CTTour_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTTour] CHECK CONSTRAINT [FK_CTTour_Tour]
GO
ALTER TABLE [dbo].[DoanDL]  WITH CHECK ADD  CONSTRAINT [FK_DoanDL_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoanDL] CHECK CONSTRAINT [FK_DoanDL_Tour]
GO
ALTER TABLE [dbo].[Gia]  WITH CHECK ADD  CONSTRAINT [FK_Gia_Tour] FOREIGN KEY([MaTour])
REFERENCES [dbo].[Tour] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Gia] CHECK CONSTRAINT [FK_Gia_Tour]
GO
ALTER TABLE [dbo].[Nguoi]  WITH CHECK ADD  CONSTRAINT [FK_Nguoi_VaiTro] FOREIGN KEY([MaVaiTro])
REFERENCES [dbo].[VaiTro] ([Id])
GO
ALTER TABLE [dbo].[Nguoi] CHECK CONSTRAINT [FK_Nguoi_VaiTro]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_LoaiTour] FOREIGN KEY([MaLoaiTour])
REFERENCES [dbo].[LoaiTour] ([Id])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_LoaiTour]
GO
