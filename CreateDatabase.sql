USE [master]
GO
/****** Object:  Database [RxSavingsCodeChallenge]    Script Date: 1/6/2021 1:03:38 PM ******/
IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[dbo].[RxSavingsCodeChallenge]') AND type in (N'U'))
BEGIN
CREATE DATABASE [RxSavingsCodeChallenge]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RxSavingsCodeChallenge', FILENAME = N'C:\Users\brian\RxSavingsCodeChallenge.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RxSavingsCodeChallenge_log', FILENAME = N'C:\Users\brian\RxSavingsCodeChallenge_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RxSavingsCodeChallenge].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET ARITHABORT OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET  MULTI_USER 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET QUERY_STORE = OFF
GO
USE [RxSavingsCodeChallenge]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [RxSavingsCodeChallenge]
GO
/****** Object:  Table [dbo].[Pharmacy]    Script Date: 1/6/2021 1:03:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmacy](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Zip] [nvarchar](50) NOT NULL,
	[Latitude] [decimal](18, 10) NOT NULL,
	[Longitude] [decimal](18, 10) NOT NULL,
 CONSTRAINT [PK_Pharmacy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (1, N'WALGREENS', N'3696 SW TOPEKA BLVD', N'TOPEKA', N'KS', N'66611', CAST(39.0014230000 AS Decimal(18, 10)), CAST(-95.6869500000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (2, N'KMART PHARMACY   ', N'1740 SW WANAMAKER ROAD', N'TOPEKA', N'KS', N'66604', CAST(39.0350400000 AS Decimal(18, 10)), CAST(-95.7587000000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (3, N'CONTINENTAL PHARMACY LLC', N'821 SW 6TH AVE', N'TOPEKA', N'KS', N'66603', CAST(39.0543300000 AS Decimal(18, 10)), CAST(-95.6845300000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (4, N'STORMONT-VAIL RETAIL PHARMACY', N'2252 SW 10TH AVE.', N'TOPEKA', N'KS', N'66604', CAST(39.0516700000 AS Decimal(18, 10)), CAST(-95.7053400000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (5, N'DILLON PHARMACY', N'2010 SE 29TH ST', N'TOPEKA', N'KS', N'66605', CAST(39.0163840000 AS Decimal(18, 10)), CAST(-95.6506500000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (6, N'WAL-MART PHARMACY       ', N'1501 S.W. WANAMAKER ROAD', N'TOPEKA', N'KS', N'66604', CAST(39.0395500000 AS Decimal(18, 10)), CAST(-95.7645900000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (7, N'KING PHARMACY', N'4033 SW 10TH AVE', N'TOPEKA', N'KS', N'66604', CAST(39.0512100000 AS Decimal(18, 10)), CAST(-95.7270000000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (8, N'HY-VEE PHARMACY      ', N'12122 STATE LINE RD', N'LEAWOOD', N'KS', N'66209', CAST(38.9077530000 AS Decimal(18, 10)), CAST(-94.6080100000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (9, N'JAYHAWK PHARMACY AND PATIENT SUPPLY', N'2860 SW MISSION WOODS DR', N'TOPEKA', N'KS', N'66614', CAST(39.0150530000 AS Decimal(18, 10)), CAST(-95.7786600000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (10, N'PRICE CHOPPER PHARMACY', N'3700 W 95TH ST', N'LEAWOOD', N'KS', N'66206', CAST(38.9579200000 AS Decimal(18, 10)), CAST(-94.6288150000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (11, N'AUBURN PHARMACY', N'13351 MISSION RD', N'LEAWOOD', N'KS', N'66209', CAST(38.8853450000 AS Decimal(18, 10)), CAST(-94.6280000000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (12, N'CVS PHARMACY', N'5001 WEST 135 ST', N'LEAWOOD', N'KS', N'66224', CAST(38.8832300000 AS Decimal(18, 10)), CAST(-94.6451800000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (13, N'SAMS PHARMACY       ', N'1401 SW WANAMAKER ROAD', N'TOPEKA', N'KS', N'66604', CAST(39.0416030000 AS Decimal(18, 10)), CAST(-95.7646260000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (14, N'CVS PHARMACY', N'2835 SW WANAMAKER RD', N'TOPEKA', N'KS', N'66614', CAST(39.0155030000 AS Decimal(18, 10)), CAST(-95.7643400000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (15, N'HY-VEE PHARMACY      ', N'2951 SW WANAMAKER RD', N'TOPEKA', N'KS', N'66614', CAST(39.0121570000 AS Decimal(18, 10)), CAST(-95.7639400000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (16, N'TALLGRASS PHARMACY', N'601 SW CORPORATE VIEW', N'TOPEKA', N'KS', N'66615', CAST(39.0571600000 AS Decimal(18, 10)), CAST(-95.7669200000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (17, N'HUNTERS RIDGE PHARMACY', N'3405 NW HUNTERS RIDGE TER STE 200', N'TOPEKA', N'KS', N'66618', CAST(39.1298450000 AS Decimal(18, 10)), CAST(-95.7126540000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (18, N'ASSURED PHARMACY  ', N'11100 ASH ST STE 200', N'LEAWOOD', N'KS', N'66211', CAST(38.9266320000 AS Decimal(18, 10)), CAST(-94.6474400000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (19, N'WALGREENS', N'4701 TOWN CENTER DR', N'LEAWOOD', N'KS', N'66211', CAST(38.9161900000 AS Decimal(18, 10)), CAST(-94.6403660000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (20, N'PRICE CHOPPER PHARMACY', N'1100 SOUTH 7 HWY', N'BLUE SPRINGS', N'MO', N'64015', CAST(39.0293100000 AS Decimal(18, 10)), CAST(-94.2717500000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (21, N'CVS PHARMACY', N'1901 WEST KANSAS STREET', N'LIBERTY', N'MO', N'64068', CAST(39.2438500000 AS Decimal(18, 10)), CAST(-94.4496100000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (22, N'MARRS PHARMACY', N'205 RD MIZE ROAD', N'BLUE SPRINGS', N'MO', N'64014', CAST(39.0235300000 AS Decimal(18, 10)), CAST(-94.2606050000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (23, N'WAL-MART PHARMACY       ', N'600 NE CORONADO DRIVE', N'BLUE SPRINGS', N'MO', N'64014', CAST(39.0241930000 AS Decimal(18, 10)), CAST(-94.2550300000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (24, N'WAL-MART PHARMACY       ', N'10300 E HWY 350', N'RAYTOWN', N'MO', N'64133', CAST(38.9837650000 AS Decimal(18, 10)), CAST(-94.4593050000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (25, N'HY-VEE PHARMACY      ', N'9400 E. 350 HIGHWAY', N'RAYTOWN', N'MO', N'64133', CAST(38.9930000000 AS Decimal(18, 10)), CAST(-94.4708300000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (26, N'HY-VEE PHARMACY      ', N'625 W 40 HWY', N'BLUE SPRINGS', N'MO', N'64014', CAST(39.0107040000 AS Decimal(18, 10)), CAST(-94.2710800000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (27, N'HY-VEE PHARMACY      ', N'109 NORTH BLUE JAY DRIVE', N'LIBERTY', N'MO', N'64068', CAST(39.2457580000 AS Decimal(18, 10)), CAST(-94.4470200000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (28, N'WALGREENS     ', N'1701 NW HIGHWAY 7', N'BLUE SPRINGS', N'MO', N'64015', CAST(39.0375480000 AS Decimal(18, 10)), CAST(-94.2715300000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (29, N'WALGREENS     ', N'9300 E GREGORY BLVD', N'RAYTOWN', N'MO', N'64133', CAST(38.9953420000 AS Decimal(18, 10)), CAST(-94.4734000000 AS Decimal(18, 10)))
GO
INSERT [dbo].[Pharmacy] ([Id], [Name], [Address], [City], [State], [Zip], [Latitude], [Longitude]) VALUES (30, N'WALGREENS     ', N'1191 W KANSAS AVE', N'LIBERTY', N'MO', N'64068', CAST(39.2438700000 AS Decimal(18, 10)), CAST(-94.4418640000 AS Decimal(18, 10)))
GO
END
USE [master]
GO
ALTER DATABASE [RxSavingsCodeChallenge] SET  READ_WRITE 
GO
