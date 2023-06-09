USE [master]
GO
/****** Object:  Database [DBJoblinq]    Script Date: 28.04.2023 13:33:21 ******/
CREATE DATABASE [DBJoblinq]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBJoblinq', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DBJoblinq.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBJoblinq_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DBJoblinq_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBJoblinq].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBJoblinq] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBJoblinq] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBJoblinq] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBJoblinq] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBJoblinq] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBJoblinq] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBJoblinq] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBJoblinq] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBJoblinq] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBJoblinq] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBJoblinq] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBJoblinq] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBJoblinq] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBJoblinq] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBJoblinq] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBJoblinq] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBJoblinq] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBJoblinq] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBJoblinq] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBJoblinq] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBJoblinq] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBJoblinq] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBJoblinq] SET RECOVERY FULL 
GO
ALTER DATABASE [DBJoblinq] SET  MULTI_USER 
GO
ALTER DATABASE [DBJoblinq] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBJoblinq] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBJoblinq] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBJoblinq] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBJoblinq] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBJoblinq] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBJoblinq', N'ON'
GO
ALTER DATABASE [DBJoblinq] SET QUERY_STORE = ON
GO
ALTER DATABASE [DBJoblinq] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DBJoblinq]
GO
/****** Object:  Table [dbo].[datIlan]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datIlan](
	[IlanID] [int] IDENTITY(1,1) NOT NULL,
	[SirketID] [int] NULL,
	[IlanBaslik] [nvarchar](50) NULL,
	[IlanDetay] [nvarchar](max) NULL,
	[SehirID] [int] NULL,
	[IsTip] [char](1) NULL,
 CONSTRAINT [PK_datIlan] PRIMARY KEY CLUSTERED 
(
	[IlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datOzluk]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datOzluk](
	[OzlukID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[UAd] [nvarchar](20) NULL,
	[USoyad] [nvarchar](20) NULL,
	[UDT] [nchar](8) NULL,
	[SehirID] [int] NULL,
	[GSMNo] [nchar](10) NULL,
 CONSTRAINT [PK_datOzluk] PRIMARY KEY CLUSTERED 
(
	[OzlukID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datSirket]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datSirket](
	[SirketID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[SirketAd] [nvarchar](50) NULL,
	[SektorID] [int] NULL,
	[SAdres] [nvarchar](50) NULL,
	[SehirID] [int] NULL,
 CONSTRAINT [PK_datSirket] PRIMARY KEY CLUSTERED 
(
	[SirketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datUser]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserEMail] [nvarchar](50) NULL,
	[UserPassword] [nvarchar](10) NULL,
	[UserAType] [char](1) NULL,
 CONSTRAINT [PK_datUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jnkBasvuru]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jnkBasvuru](
	[BasvuruID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_jnkBasvuru] PRIMARY KEY CLUSTERED 
(
	[BasvuruID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Junction]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Junction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[IlanID] [int] NULL,
 CONSTRAINT [PK_Junction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prmHesapTipi]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prmHesapTipi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HesapTipi] [nvarchar](10) NULL,
 CONSTRAINT [PK_prmHesapTipi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prmSehir]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prmSehir](
	[SehirID] [int] IDENTITY(1,1) NOT NULL,
	[SehirAdi] [nvarchar](10) NULL,
 CONSTRAINT [PK_prmSehir] PRIMARY KEY CLUSTERED 
(
	[SehirID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prmSektorBilgisi]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prmSektorBilgisi](
	[SektorID] [int] IDENTITY(1,1) NOT NULL,
	[SektorName] [nvarchar](20) NULL,
 CONSTRAINT [PK_prmSektorBilgisi] PRIMARY KEY CLUSTERED 
(
	[SektorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDatUser]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDatUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Parola] [nvarchar](10) NULL,
	[HesapTipi] [int] NULL,
 CONSTRAINT [PK_tblDatUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblilan]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblilan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Sirket] [int] NULL,
	[Departman] [nvarchar](20) NULL,
	[Tecrube] [nvarchar](50) NULL,
	[EgitimSeviyesi] [nvarchar](50) NULL,
	[YabancilDil] [nvarchar](50) NULL,
	[CalismaSekli] [nvarchar](50) NULL,
	[Pozisyon] [nvarchar](20) NULL,
	[Sehir] [int] NULL,
	[IlanDetay] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblilan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOzlukBilgisi]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOzlukBilgisi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Ad] [nvarchar](10) NULL,
	[Soyad] [nvarchar](10) NULL,
	[DogumTarihi] [date] NULL,
	[Sehir] [int] NULL,
	[CepNo] [nvarchar](15) NULL,
	[SirketAdi] [nvarchar](20) NULL,
	[Tecrube] [nvarchar](10) NULL,
	[EgitimSeviyesi] [nvarchar](50) NULL,
	[Pozisyon] [nvarchar](50) NULL,
	[Okul] [nvarchar](50) NULL,
	[Bolum] [nvarchar](50) NULL,
	[Onyazi] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblOzlukBilgisi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSirketBilgisi]    Script Date: 28.04.2023 13:33:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSirketBilgisi](
	[SirketID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Ad] [nchar](10) NULL,
	[Sektor] [int] NULL,
	[Adres] [nvarchar](100) NULL,
	[Sehir] [int] NULL,
	[CalisanSayisi] [int] NULL,
	[Aciklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblSirketBilgisi] PRIMARY KEY CLUSTERED 
(
	[SirketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[datIlan]  WITH CHECK ADD  CONSTRAINT [FK_datIlan_datSirket] FOREIGN KEY([SirketID])
REFERENCES [dbo].[datSirket] ([SirketID])
GO
ALTER TABLE [dbo].[datIlan] CHECK CONSTRAINT [FK_datIlan_datSirket]
GO
ALTER TABLE [dbo].[datIlan]  WITH CHECK ADD  CONSTRAINT [FK_datIlan_prmSehir] FOREIGN KEY([SehirID])
REFERENCES [dbo].[prmSehir] ([SehirID])
GO
ALTER TABLE [dbo].[datIlan] CHECK CONSTRAINT [FK_datIlan_prmSehir]
GO
ALTER TABLE [dbo].[datOzluk]  WITH CHECK ADD  CONSTRAINT [FK_datOzluk_datUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[datUser] ([UserID])
GO
ALTER TABLE [dbo].[datOzluk] CHECK CONSTRAINT [FK_datOzluk_datUser]
GO
ALTER TABLE [dbo].[datOzluk]  WITH CHECK ADD  CONSTRAINT [FK_datOzluk_prmSehir] FOREIGN KEY([SehirID])
REFERENCES [dbo].[prmSehir] ([SehirID])
GO
ALTER TABLE [dbo].[datOzluk] CHECK CONSTRAINT [FK_datOzluk_prmSehir]
GO
ALTER TABLE [dbo].[datSirket]  WITH CHECK ADD  CONSTRAINT [FK_datSirket_datUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[datUser] ([UserID])
GO
ALTER TABLE [dbo].[datSirket] CHECK CONSTRAINT [FK_datSirket_datUser]
GO
ALTER TABLE [dbo].[datSirket]  WITH CHECK ADD  CONSTRAINT [FK_datSirket_prmSehir] FOREIGN KEY([SehirID])
REFERENCES [dbo].[prmSehir] ([SehirID])
GO
ALTER TABLE [dbo].[datSirket] CHECK CONSTRAINT [FK_datSirket_prmSehir]
GO
ALTER TABLE [dbo].[datSirket]  WITH CHECK ADD  CONSTRAINT [FK_datSirket_prmSektorBilgisi] FOREIGN KEY([SektorID])
REFERENCES [dbo].[prmSektorBilgisi] ([SektorID])
GO
ALTER TABLE [dbo].[datSirket] CHECK CONSTRAINT [FK_datSirket_prmSektorBilgisi]
GO
ALTER TABLE [dbo].[jnkBasvuru]  WITH CHECK ADD  CONSTRAINT [FK_jnkBasvuru_datIlan] FOREIGN KEY([IlanID])
REFERENCES [dbo].[datIlan] ([IlanID])
GO
ALTER TABLE [dbo].[jnkBasvuru] CHECK CONSTRAINT [FK_jnkBasvuru_datIlan]
GO
ALTER TABLE [dbo].[jnkBasvuru]  WITH CHECK ADD  CONSTRAINT [FK_jnkBasvuru_datUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[datUser] ([UserID])
GO
ALTER TABLE [dbo].[jnkBasvuru] CHECK CONSTRAINT [FK_jnkBasvuru_datUser]
GO
ALTER TABLE [dbo].[Junction]  WITH CHECK ADD  CONSTRAINT [FK_Junction_tblilan] FOREIGN KEY([IlanID])
REFERENCES [dbo].[tblilan] ([ID])
GO
ALTER TABLE [dbo].[Junction] CHECK CONSTRAINT [FK_Junction_tblilan]
GO
ALTER TABLE [dbo].[Junction]  WITH CHECK ADD  CONSTRAINT [FK_Junction_tblOzlukBilgisi] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblOzlukBilgisi] ([ID])
GO
ALTER TABLE [dbo].[Junction] CHECK CONSTRAINT [FK_Junction_tblOzlukBilgisi]
GO
ALTER TABLE [dbo].[tblDatUser]  WITH CHECK ADD  CONSTRAINT [FK_tblDatUser_prmHesapTipi] FOREIGN KEY([HesapTipi])
REFERENCES [dbo].[prmHesapTipi] ([ID])
GO
ALTER TABLE [dbo].[tblDatUser] CHECK CONSTRAINT [FK_tblDatUser_prmHesapTipi]
GO
ALTER TABLE [dbo].[tblOzlukBilgisi]  WITH CHECK ADD  CONSTRAINT [FK_tblOzlukBilgisi_prmSehir] FOREIGN KEY([Sehir])
REFERENCES [dbo].[prmSehir] ([SehirID])
GO
ALTER TABLE [dbo].[tblOzlukBilgisi] CHECK CONSTRAINT [FK_tblOzlukBilgisi_prmSehir]
GO
ALTER TABLE [dbo].[tblOzlukBilgisi]  WITH CHECK ADD  CONSTRAINT [FK_tblOzlukBilgisi_tblDatUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblDatUser] ([UserID])
GO
ALTER TABLE [dbo].[tblOzlukBilgisi] CHECK CONSTRAINT [FK_tblOzlukBilgisi_tblDatUser]
GO
ALTER TABLE [dbo].[tblSirketBilgisi]  WITH CHECK ADD  CONSTRAINT [FK_tblSirketBilgisi_prmSehir] FOREIGN KEY([Sehir])
REFERENCES [dbo].[prmSehir] ([SehirID])
GO
ALTER TABLE [dbo].[tblSirketBilgisi] CHECK CONSTRAINT [FK_tblSirketBilgisi_prmSehir]
GO
ALTER TABLE [dbo].[tblSirketBilgisi]  WITH CHECK ADD  CONSTRAINT [FK_tblSirketBilgisi_prmSektorBilgisi] FOREIGN KEY([Sektor])
REFERENCES [dbo].[prmSektorBilgisi] ([SektorID])
GO
ALTER TABLE [dbo].[tblSirketBilgisi] CHECK CONSTRAINT [FK_tblSirketBilgisi_prmSektorBilgisi]
GO
ALTER TABLE [dbo].[tblSirketBilgisi]  WITH CHECK ADD  CONSTRAINT [FK_tblSirketBilgisi_tblDatUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblDatUser] ([UserID])
GO
ALTER TABLE [dbo].[tblSirketBilgisi] CHECK CONSTRAINT [FK_tblSirketBilgisi_tblDatUser]
GO
USE [master]
GO
ALTER DATABASE [DBJoblinq] SET  READ_WRITE 
GO
