

USE DbPratice
CREATE TABLE [BaoHiem]
(
 [Ma]                 int NOT NULL IDENTITY(1,1),
 [BaoHiem_Ma]         varchar(20) NULL ,
 [BaoHiem_NgayDangKi] datetime NULL ,
 [BaoHiem_NgayHetHan] datetime NULL ,
 [BaoHiem_Phi]        int NULL ,
 [BaoHiem_NgayTao]    datetime NULL ,
 [BaoHiem_NguoiTao]   varchar(20) NULL ,
 [BaoHiem_GhiChu]     nvarchar(max) NULL ,
 [BaoHiem_TrangThai]  varchar(1) NULL ,
 [BaoHiem_Xe]         int NULL ,


 CONSTRAINT [PK_BaoHiem] PRIMARY KEY CLUSTERED ([Ma] ASC)
);
GO

CREATE TABLE [DangKiem]
(
 [Ma]                    int NOT NULL IDENTITY(1,1),
 [DangKiem_Ma]           varchar(20) NULL ,
 [DangKiem_NgayDangKiem] datetime NULL ,
 [DangKiem_NgayHetHan]   datetime NULL ,
 [DangKiem_Phi]          int NULL ,
 [DangKiem_NgayTao]      date NULL ,
 [DangKiem_NguoiTao]     varchar(20) NULL ,
 [DangKiem_Xe]           int NULL ,
 [DangKiem_GhiChu]       nvarchar(max) NULL ,
 [DangKiem_TrangThai]    varchar(1) NULL ,


 CONSTRAINT [PK_DangKiem] PRIMARY KEY CLUSTERED ([Ma] ASC)
);
GO

CREATE TABLE [DKDuongBo]
(
 [Ma]                   int NOT NULL IDENTITY(1,1),
 [DKDuongBo_Ma]         varchar(20) NULL ,
 [DKDuongBo_Phi]        int NULL ,
 [DKDuongBo_Xe]         int NULL ,
 [DKDuongBo_NgayDangKi] datetime NULL ,
 [DKDuongBo_NgayHetHan] datetime NULL ,
 [DKDuongBo_NgayTao]    datetime NULL ,
 [DKDuongBo_NguoiTao]   varchar(50) NULL ,
 [DKDuongBo_GhiChu]     nvarchar(max) NULL ,
 [DKDuongBo_TrangThai]  varchar(1) NULL ,


 CONSTRAINT [PK_DKDuongBo] PRIMARY KEY CLUSTERED ([Ma] ASC)
);
GO

CREATE TABLE [GiaoDich]
(
 [Ma]                  int NOT NULL IDENTITY(1,1),
 [GiaoDich_Ma]         varchar(20) NULL ,
 [GiaoDich_Xe]         nvarchar(50) NULL ,
 [GiaoDich_Loai]       nvarchar(50) NULL ,
 [GiaoDich_TriGia]     int NULL ,
 [GiaoDich_GhiChu]     nvarchar(max) NULL ,
 [GiaoDich_TrangThai]  varchar(1) NULL ,
 [GiaoDich_NguoiTao]   varchar(20) NULL ,
 [GiaoDich_NgayTao]    datetime NULL ,
 [GiaoDich_NguoiDuyet] varchar(20) NULL ,
 [GiaoDich_NgayDuyet]  datetime NULL ,


 CONSTRAINT [PK_GiaoDich] PRIMARY KEY CLUSTERED ([Ma] ASC)
);
GO

CREATE TABLE [HoaDon]
(
 [Ma]                  int NOT NULL IDENTITY(1,1),
 [HoaDon_Ma]           varchar(20) NULL ,
 [HoaDon_SoHD]         nvarchar(50) NULL ,
 [HoaDon_GiaTri]       int NULL ,
 [HoaDon_NgayTao]      datetime NULL ,
 [HoaDon_NguoiTao]     varchar(20) NULL ,
 [HoaDon_GiaNhienLieu] int NULL ,
 [HoaDon_LoTrinh]      int NULL ,


 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED ([Ma] ASC)
);
GO

CREATE TABLE [LoaiXe]
(
 [Ma]                      int NOT NULL IDENTITY(1,1),
 [LoaiXe_Ma]               varchar(20) NULL ,
 [LoaiXe_Ten]              nvarchar(50) NULL ,
 [LoaiXe_Hang]             nvarchar(50) NULL ,
 [LoaiXe_NamSX]            nvarchar(50) NULL ,
 [LoaiXe_SoChoNgoi]        int NULL ,
 [LoaiXe_NuocSX]           nvarchar(50) NULL ,
 [LoaiXe_DinhMucNhienLieu] int NULL ,
 [LoaiXe_BoiTronDongCo]    int NULL ,
 [LoaiXe_BaoTriChuKi]      int NULL ,
 [LoaiXe_BaoTriSoKm]       int NULL ,
 [LoaiXe_NhacNhoBoiTron]   varchar(1) NULL ,
 [LoaiXe_NhacNhoBaoTri]    varchar(1) NULL ,
 [LoaiXe_TrangThai]        varchar(1) NULL ,
 [LoaiXe_NgayTao]          datetime NULL ,
 [LoaiXe_NguoiTao]         nvarchar(50) NULL ,


 CONSTRAINT [PK_CarModel] PRIMARY KEY CLUSTERED ([Ma] ASC)
);
GO

CREATE TABLE [LoTrinh]
(
 [Ma]               int NOT NULL IDENTITY(1,1),
 [LoTrinh_Ma]       varchar(20) NULL ,
 [LoTrinh_TaiXe]    varchar(20) NULL ,
 [LoTrinh_Xe]       int NULL ,
 [LoTrinh_DiemDi]   nvarchar(50) NULL ,
 [LoTrinh_DiemDen]  nvarchar(50) NULL ,
 [LoTrinh_SoKm]     int NULL ,
 [LoTrinh_NgayTao]  datetime NULL ,
 [LoTrinh_NguoiTao] varchar(20) NULL ,


 CONSTRAINT [PK_LoTrinh] PRIMARY KEY CLUSTERED ([Ma] ASC)
);
GO

CREATE TABLE [ThanhLy]
(
 [Ma]                int NOT NULL IDENTITY(1,1),
 [ThanhLy_Ma]        varchar(20) NULL ,
 [ThanhLy_Xe]        int NULL ,
 [ThanhLy_GiaTri]    int NULL ,
 [ThanhLy_GhiChu]    nvarchar(max) NULL ,
 [ThanhLy_NguoiTao]  varchar(20) NULL ,
 [ThanhLy_NgayTao]   datetime NULL ,
 [ThanhLy_TrangThai] varchar(1) NULL ,
 [ThanhLy_NgayBan]   datetime NULL ,


 CONSTRAINT [PK_ThanhLy] PRIMARY KEY CLUSTERED ([Ma] ASC)
);
GO

CREATE TABLE [ThongBao]
(
 [Ma]                     int NOT NULL IDENTITY(1,1),
 [ThongBao_Ma]            varchar(20) NULL ,
 [ThongBao_Xe]            int NULL ,
 [ThongBao_NgayBaoTri]    datetime NULL ,
 [ThongBao_NoiBaoTri]     nvarchar(50) NULL ,
 [ThongBao_Tien]          int NULL ,
 [ThongBao_GhiChu]        nvarchar(max) NULL ,
 [ThongBao_NgayXuatXuong] datetime NULL ,
 [ThongBao_NguoiTao]      varchar(20) NULL ,
 [ThongBao_NgayTao]       datetime NULL ,
 [ThongBao_Loai]          int NULL ,


 CONSTRAINT [PK_ThongBao] PRIMARY KEY CLUSTERED ([Ma] ASC)
);
GO

CREATE TABLE [Xe]
(
 [Ma]                int NOT NULL IDENTITY(1,1),
 [Xe_Ma]             varchar(20) NULL ,
 [Xe_Ten]            nvarchar(50) NULL ,
 [Xe_LoaiXe]         int NULL ,
 [Xe_Gia]            int NULL ,
 [Xe_Mau]            nvarchar(50) NULL ,
 [Xe_TrangThai]      varchar(1) NULL ,
 [Xe_NgayTao]        datetime NULL ,
 [Xe_NguoiTao]       nvarchar(50) NULL ,
 [Xe_PhieuDKDuongBo] int NULL ,
 [Xe_PhieuDangKiem]  int NULL ,
 [Xe_BaoHiem]        int NULL ,


 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED ([Ma] ASC)
);
GO






















































































