USE [master]
GO
/****** Object:  Database [HastaneProjeDB]    Script Date: 03/03/2022 02:07:28 ******/
CREATE DATABASE [HastaneProjeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HastaneProjeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HastaneProjeDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HastaneProjeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HastaneProjeDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HastaneProjeDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HastaneProjeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HastaneProjeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HastaneProjeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HastaneProjeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HastaneProjeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HastaneProjeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HastaneProjeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HastaneProjeDB] SET  MULTI_USER 
GO
ALTER DATABASE [HastaneProjeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HastaneProjeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HastaneProjeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HastaneProjeDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HastaneProjeDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HastaneProjeDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HastaneProjeDB] SET QUERY_STORE = OFF
GO
USE [HastaneProjeDB]
GO
/****** Object:  Table [dbo].[Tbl_Branslar]    Script Date: 03/03/2022 02:07:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Branslar](
	[Bransid] [tinyint] IDENTITY(1,1) NOT NULL,
	[BransAd] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Bransid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Doktorlar]    Script Date: 03/03/2022 02:07:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Doktorlar](
	[Doktorid] [tinyint] IDENTITY(1,1) NOT NULL,
	[DoktorAd] [varchar](10) NULL,
	[DoktorSoyad] [varchar](10) NULL,
	[DoktorBrans] [varchar](30) NULL,
	[DoktorTC] [char](11) NULL,
	[DoktorSifre] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Doktorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Duyurular]    Script Date: 03/03/2022 02:07:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Duyurular](
	[Duyuruid] [int] IDENTITY(1,1) NOT NULL,
	[Duyuru] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Duyuruid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hastalar]    Script Date: 03/03/2022 02:07:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hastalar](
	[Hastaid] [smallint] IDENTITY(1,1) NOT NULL,
	[HastaAd] [varchar](10) NULL,
	[HastaSoyad] [varchar](10) NULL,
	[HastaTC] [char](11) NULL,
	[HastaTelefon] [varchar](15) NULL,
	[HastaSifre] [varchar](10) NULL,
	[HastaCinsiyet] [varchar](5) NULL,
	[HastaSikayet] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Hastaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Randevular]    Script Date: 03/03/2022 02:07:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Randevular](
	[Randevuid] [int] IDENTITY(1,1) NOT NULL,
	[RandevuTarih] [varchar](10) NULL,
	[RandevuSaat] [varchar](5) NULL,
	[RandevuBrans] [varchar](30) NULL,
	[RandevuDoktor] [varchar](20) NULL,
	[RandevuDurum] [bit] NULL,
	[HastaTC] [char](11) NULL,
	[HastaSikayet] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Randevuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Sekreterler]    Script Date: 03/03/2022 02:07:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Sekreterler](
	[Sekreterid] [tinyint] IDENTITY(1,1) NOT NULL,
	[SekreterAdSoyad] [varchar](20) NULL,
	[SekreterTC] [char](11) NULL,
	[SekreterSifre] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sekreterid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Branslar] ON 

INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (1, N'Fizik Tedavi')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (2, N'Göz')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (3, N'Dahiliye')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (4, N'Diyetisyen')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (5, N'Kulak Burun Bogaz')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (6, N'Psikoloji')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (7, N'Cildiye')
SET IDENTITY_INSERT [dbo].[Tbl_Branslar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] ON 

INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (1, N'Asli', N'Eren', N'Fizik Tedavi', N'11111111111', N'1111')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (2, N'Selma', N'Seren', N'Fizik Tedavi', N'22222222222', N'2222')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (3, N'Ada', N'Tas', N'Göz', N'33333333333', N'3333')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (4, N'Esra', N'Yurt', N'Göz', N'44444444444', N'4444')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (5, N'Ahmet', N'Kas', N'Dahiliye', N'55555555555', N'5555')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (6, N'Seher', N'Sel', N'Dahiliye', N'66666666666', N'6666')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (7, N'Mehmet', N'Kel', N'Diyetisyen', N'77777777777', N'7777')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (8, N'Ahmet', N'Kel', N'Diyetisyen', N'88888888888', N'8888')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (9, N'Cem', N'Sen', N'Kulak Burun Bogaz', N'99999999999', N'9999')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (10, N'Selin', N'Seker', N'Kulak Burun Bogaz', N'00000000000', N'0000')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (11, N'Ceren', N'Sen', N'Psikoloji', N'12345678900', N'0000')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (12, N'Onur', N'Sen', N'Psikoloji', N'12345678999', N'9999')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (13, N'Duygu', N'Okur', N'Cildiye', N'12345678988', N'8888')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (14, N'Ada', N'Ada', N'Cildiye', N'12345678977', N'7777')
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Duyurular] ON 

INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (1, N'Duyuru1')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (2, N'Duyuru2')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (3, N'Duyuru3')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (4, N'Duyuru4')
SET IDENTITY_INSERT [dbo].[Tbl_Duyurular] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] ON 

INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet], [HastaSikayet]) VALUES (1, N'Fatma', N'Aliye', N'11111111111', N'5371111111', N'1111', N'Kadin', N'')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet], [HastaSikayet]) VALUES (2, N'Onur', N'Tavukçuer', N'22222222222', N'5371111111', N'2222', N'Erkek', N'')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet], [HastaSikayet]) VALUES (3, N'Ali', N'Ege', N'33333333333', N'5471111111', N'3333', N'Erkek', N'')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet], [HastaSikayet]) VALUES (4, N'Seher', N'Er', N'44444444444', N'5471111111', N'4444', N'Kadin', N'')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet], [HastaSikayet]) VALUES (5, N'Asli', N'Yel', N'55555555555', N'5471111111', N'5555', N'Kadin', N'')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet], [HastaSikayet]) VALUES (6, N'Mahmut', N'Kar', N'66666666666', N'5376736565', N'6666', N'Erkek', N'')
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Randevular] ON 

INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (1, N'08.02.2022', N'09.00', N'Fizik Tedavi', N'Asli Eren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (2, N'08.02.2022', N'09.30', N'Fizik Tedavi', N'Asli Eren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (3, N'08.02.2022', N'10.00', N'Fizik Tedavi', N'Asli Eren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (4, N'08.02.2022', N'10.30', N'Fizik Tedavi', N'Asli Eren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (5, N'08.02.2022', N'11.00', N'Fizik Tedavi', N'Asli Eren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (6, N'08.02.2022', N'11.15', N'Fizik Tedavi', N'Asli Eren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (7, N'08.02.2022', N'11.30', N'Fizik Tedavi', N'Asli Eren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (8, N'08.02.2022', N'11.45', N'Fizik Tedavi', N'Asli Eren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (9, N'08.02.2022', N'09.00', N'Fizik Tedavi', N'Selma Seren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (10, N'08.02.2022', N'09.30', N'Fizik Tedavi', N'Selma Seren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (11, N'08.02.2022', N'10.00', N'Fizik Tedavi', N'Selma Seren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (12, N'08.02.2022', N'10.30', N'Fizik Tedavi', N'Selma Seren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (13, N'08.02.2022', N'11.00', N'Fizik Tedavi', N'Selma Seren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (14, N'08.02.2022', N'11.15', N'Fizik Tedavi', N'Selma Seren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (15, N'08.02.2022', N'11.30', N'Fizik Tedavi', N'Selma Seren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (16, N'08.02.2022', N'11.45', N'Fizik Tedavi', N'Selma Seren', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (17, N'08.02.2022', N'09.00', N'Göz', N'Ada Tas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (18, N'08.02.2022', N'09.30', N'Göz', N'Ada Tas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (19, N'08.02.2022', N'10.00', N'Göz', N'Ada Tas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (20, N'08.02.2022', N'10.30', N'Göz', N'Ada Tas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (21, N'08.02.2022', N'10.45', N'Göz', N'Ada Tas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (22, N'08.02.2022', N'11.00', N'Göz', N'Ada Tas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (23, N'08.02.2022', N'11.15', N'Göz', N'Ada Tas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (24, N'08.02.2022', N'11.30', N'Göz', N'Ada Tas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (25, N'08.02.2022', N'09.00', N'Göz', N'Esra Yurt', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (26, N'08.02.2022', N'09.30', N'Göz', N'Esra Yurt', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (27, N'08.02.2022', N'10.00', N'Göz', N'Esra Yurt', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (28, N'08.02.2022', N'10.30', N'Göz', N'Esra Yurt', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (29, N'08.02.2022', N'10.45', N'Göz', N'Esra Yurt', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (30, N'08.02.2022', N'11.00', N'Göz', N'Esra Yurt', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (31, N'08.02.2022', N'11.15', N'Göz', N'Esra Yurt', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (32, N'08.02.2022', N'11.30', N'Göz', N'Esra Yurt', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (33, N'08.02.2022', N'09.00', N'Dahiliye', N'Ahmet Kas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (34, N'08.02.2022', N'09.30', N'Dahiliye', N'Ahmet Kas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (35, N'08.02.2022', N'10.00', N'Dahiliye', N'Ahmet Kas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (36, N'08.02.2022', N'10.30', N'Dahiliye', N'Ahmet Kas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (37, N'08.02.2022', N'10.45', N'Dahiliye', N'Ahmet Kas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (38, N'08.02.2022', N'11.00', N'Dahiliye', N'Ahmet Kas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (39, N'08.02.2022', N'11.15', N'Dahiliye', N'Ahmet Kas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (40, N'08.02.2022', N'11.30', N'Dahiliye', N'Ahmet Kas', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (41, N'08.02.2022', N'09.00', N'Dahiliye', N'Seher Sel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (42, N'08.02.2022', N'09.30', N'Dahiliye', N'Seher Sel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (43, N'08.02.2022', N'10.00', N'Dahiliye', N'Seher Sel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (44, N'08.02.2022', N'10.30', N'Dahiliye', N'Seher Sel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (45, N'08.02.2022', N'10.45', N'Dahiliye', N'Seher Sel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (46, N'08.02.2022', N'11.00', N'Dahiliye', N'Seher Sel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (47, N'08.02.2022', N'11.30', N'Dahiliye', N'Seher Sel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (48, N'08.02.2022', N'11.45', N'Dahiliye', N'Seher Sel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (49, N'08.02.2022', N'09.00', N'Diyetisyen', N'Ahmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (50, N'08.02.2022', N'09.15', N'Diyetisyen', N'Ahmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (51, N'08.02.2022', N'09.30', N'Diyetisyen', N'Ahmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (52, N'08.02.2022', N'09.45', N'Diyetisyen', N'Ahmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (53, N'08.02.2022', N'10.00', N'Diyetisyen', N'Ahmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (54, N'08.02.2022', N'10.15', N'Diyetisyen', N'Ahmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (55, N'08.02.2022', N'10.30', N'Diyetisyen', N'Ahmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (56, N'08.02.2022', N'10.45', N'Diyetisyen', N'Ahmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (57, N'08.02.2022', N'09.00', N'Diyetisyen', N'Mehmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (58, N'08.02.2022', N'09.30', N'Diyetisyen', N'Mehmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (59, N'08.02.2022', N'10.00', N'Diyetisyen', N'Mehmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (60, N'08.02.2022', N'10.30', N'Diyetisyen', N'Mehmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (61, N'08.02.2022', N'10.45', N'Diyetisyen', N'Mehmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (62, N'08.02.2022', N'11.00', N'Diyetisyen', N'Mehmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (63, N'08.02.2022', N'11.15', N'Diyetisyen', N'Mehmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (64, N'08.02.2022', N'11.30', N'Diyetisyen', N'Mehmet Kel', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (65, N'08.02.2022', N'09.00', N'Kulak Burun Bogaz', N'Cem Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (66, N'08.02.2022', N'09.30', N'Kulak Burun Bogaz', N'Cem Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (67, N'08.02.2022', N'10.00', N'Kulak Burun Bogaz', N'Cem Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (68, N'08.02.2022', N'10.30', N'Kulak Burun Bogaz', N'Cem Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (69, N'08.02.2022', N'10.45', N'Kulak Burun Bogaz', N'Cem Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (70, N'08.02.2022', N'11.00', N'Kulak Burun Bogaz', N'Cem Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (71, N'08.02.2022', N'11.15', N'Kulak Burun Bogaz', N'Cem Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (72, N'08.02.2022', N'11.30', N'Kulak Burun Bogaz', N'Cem Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (73, N'08.02.2022', N'09.00', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (74, N'08.02.2022', N'09.30', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (75, N'08.02.2022', N'10.00', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (76, N'08.02.2022', N'10.45', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (77, N'08.02.2022', N'11.00', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (78, N'08.02.2022', N'11.15', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (79, N'08.02.2022', N'11.30', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (80, N'08.02.2022', N'11.45', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (81, N'08.02.2022', N'13.15', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (82, N'08.02.2022', N'13.30', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (83, N'08.02.2022', N'13.45', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (84, N'08.02.2022', N'14.00', N'Kulak Burun Bogaz', N'Selin Seker', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (85, N'08.02.2022', N'09.00', N'Psikoloji', N'Ceren Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (86, N'08.02.2022', N'09.30', N'Psikoloji', N'Ceren Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (87, N'08.02.2022', N'09.45', N'Psikoloji', N'Ceren Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (88, N'08.02.2022', N'10.00', N'Psikoloji', N'Ceren Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (89, N'08.02.2022', N'10.15', N'Psikoloji', N'Ceren Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (90, N'08.02.2022', N'10.30', N'Psikoloji', N'Ceren Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (91, N'08.02.2022', N'10.45', N'Psikoloji', N'Ceren Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (92, N'08.02.2022', N'11.00', N'Psikoloji', N'Ceren Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (93, N'08.02.2022', N'11.15', N'Psikoloji', N'Ceren Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (94, N'08.02.2022', N'11.45', N'Psikoloji', N'Ceren Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (95, N'08.02.2022', N'09.00', N'Psikoloji', N'Onur Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (96, N'08.02.2022', N'09.30', N'Psikoloji', N'Onur Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (97, N'08.02.2022', N'09.45', N'Psikoloji', N'Onur Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (98, N'08.02.2022', N'10.00', N'Psikoloji', N'Onur Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (99, N'08.02.2022', N'10.00', N'Psikoloji', N'Onur Sen', 0, N'           ', N'')
GO
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (100, N'08.02.2022', N'10.15', N'Psikoloji', N'Onur Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (101, N'08.02.2022', N'10.30', N'Psikoloji', N'Onur Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (102, N'08.02.2022', N'10.45', N'Psikoloji', N'Onur Sen', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (103, N'08.02.2022', N'09.00', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (104, N'08.02.2022', N'09.15', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (105, N'08.02.2022', N'09.45', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (106, N'08.02.2022', N'10.00', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (107, N'08.02.2022', N'10.00', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (108, N'08.02.2022', N'10.15', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (109, N'08.02.2022', N'10.30', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (110, N'08.02.2022', N'10.45', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (111, N'08.02.2022', N'11.00', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (112, N'08.02.2022', N'11.15', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (113, N'08.02.2022', N'11.30', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (114, N'08.02.2022', N'11.45', N'Cildiye', N'Duygu Okur', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (115, N'08.02.2022', N'09.00', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (116, N'08.02.2022', N'09.15', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (117, N'08.02.2022', N'09.30', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (118, N'08.02.2022', N'09.45', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (119, N'08.02.2022', N'10.15', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (120, N'08.02.2022', N'10.30', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (121, N'08.02.2022', N'10.45', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (122, N'08.02.2022', N'11.00', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (123, N'08.02.2022', N'11.15', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (124, N'08.02.2022', N'11.30', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (125, N'08.02.2022', N'11.45', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (126, N'08.02.2022', N'13.15', N'Cildiye', N'Ada Ada', 0, N'           ', N'')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (127, N'08.02.2022', N'10.10', N'Fizik Tedavi', N'Asli Eren', 1, N'11111111111', N'sikayet')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (128, N'08.02.2022', N'10.20', N'Fizik Tedavi', N'Selma Seren', 1, N'11111111111', N'sikayet2')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (129, N'08.02.2022', N'10.40', N'Göz', N'Ada Tas', 1, N'11111111111', N'sikayet3')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (130, N'08.02.2022', N'10.50', N'Dahiliye', N'Seher Sel', 1, N'11111111111', N'sikayet4')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (131, N'08.02.2022', N'11.10', N'Diyetisyen', N'Ahmet Kel', 1, N'11111111111', N'sikayet5')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (132, N'08.02.2022', N'11.20', N'Kulak Burun Bogaz', N'Selin Seker', 1, N'11111111111', N'sikayet6')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (133, N'08.02.2022', N'11.40', N'Psikoloji', N'Onur Sen', 1, N'11111111111', N'sikayet7')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (134, N'08.02.2022', N'11.50', N'Cildiye', N'Ada Ada', 1, N'11111111111', N'sikayet8')
SET IDENTITY_INSERT [dbo].[Tbl_Randevular] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Sekreterler] ON 

INSERT [dbo].[Tbl_Sekreterler] ([Sekreterid], [SekreterAdSoyad], [SekreterTC], [SekreterSifre]) VALUES (1, N'Ahmet Er', N'55555555555', N'5555')
INSERT [dbo].[Tbl_Sekreterler] ([Sekreterid], [SekreterAdSoyad], [SekreterTC], [SekreterSifre]) VALUES (2, N'Cem Kus', N'11111111111', N'1111')
SET IDENTITY_INSERT [dbo].[Tbl_Sekreterler] OFF
GO
ALTER TABLE [dbo].[Tbl_Randevular] ADD  DEFAULT ((0)) FOR [RandevuDurum]
GO
USE [master]
GO
ALTER DATABASE [HastaneProjeDB] SET  READ_WRITE 
GO
