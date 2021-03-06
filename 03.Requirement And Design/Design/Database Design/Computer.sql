USE [master]
GO
/****** Object:  Database [Computer]    Script Date: 1/10/2017 11:07:18 AM ******/
CREATE DATABASE [Computer] ON  PRIMARY 
( NAME = N'Computer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Computer.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Computer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Computer_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Computer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Computer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Computer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Computer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Computer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Computer] SET ARITHABORT OFF 
GO
ALTER DATABASE [Computer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Computer] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Computer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Computer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Computer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Computer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Computer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Computer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Computer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Computer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Computer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Computer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Computer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Computer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Computer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Computer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Computer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Computer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Computer] SET RECOVERY FULL 
GO
ALTER DATABASE [Computer] SET  MULTI_USER 
GO
ALTER DATABASE [Computer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Computer] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Computer', N'ON'
GO
USE [Computer]
GO
/****** Object:  Table [dbo].[AirCooler]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirCooler](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[AirCooler] WITH ROWCOUNT = 161, PAGECOUNT = 4
GO
/****** Object:  Table [dbo].[CASE]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASE](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[CASE] WITH ROWCOUNT = 329, PAGECOUNT = 7
GO
/****** Object:  Table [dbo].[CPU]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPU](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[CPU] WITH ROWCOUNT = 32, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[HDD]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDD](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[HDD] WITH ROWCOUNT = 24, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[HDDExternal]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDDExternal](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[HDDExternal] WITH ROWCOUNT = 15, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[MainAMD]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainAMD](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[MainAMD] WITH ROWCOUNT = 4, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[MainIntel]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainIntel](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[MainIntel] WITH ROWCOUNT = 98, PAGECOUNT = 2
GO
/****** Object:  Table [dbo].[ODD]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ODD](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[ODD] WITH ROWCOUNT = 4, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[PSU]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PSU](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[PSU] WITH ROWCOUNT = 0, PAGECOUNT = 0
GO
/****** Object:  Table [dbo].[RAM]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAM](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[RAM] WITH ROWCOUNT = 128, PAGECOUNT = 4
GO
/****** Object:  Table [dbo].[SSD]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSD](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[SSD] WITH ROWCOUNT = 44, PAGECOUNT = 1
GO
/****** Object:  Table [dbo].[VGA]    Script Date: 1/10/2017 11:07:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VGA](
	[Infomation] [nvarchar](255) NULL,
	[Price] [numeric](28, 2) NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]

GO
UPDATE STATISTICS [dbo].[VGA] WITH ROWCOUNT = 124, PAGECOUNT = 3
GO
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master C3(BH 12 Tháng .)', CAST(159984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master XtraFlo Blue Led- Fan Case(BH 12 Tháng)', CAST(189992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master XtraFlo Ruby Red - Fan Case(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master XtraFlo Slim - Fan Case(BH 12 Tháng)', CAST(154990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Cougar Turbine 120mm Super Silent Case Fan(BH 12 Tháng)', CAST(129998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Cougar Turbine 140mm Super Silent Case Fan(BH 12 Tháng)', CAST(159984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Cougar Vortex 120mm H.D.T PWM Super Silent Hi-end Case Fan(BH 12 Tháng)', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcoo Zignum M-Desk W1 - Ergonomic Monitor Stand(BH 12 Tháng)', CAST(399999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool 2011 Clip for cpu cooler(BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool 4 Pin 12V Fan Hub(BH )', CAST(99990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool i-Cozy Zignum - Smart Stand for ipad(BH )', CAST(999988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool i-Stand S3(BH )', CAST(429990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool Ice Disk 1(BH 06 Tháng .)', CAST(34980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool Ice Disk 100(BH )', CAST(289999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool M3 Black Super Sound Laptop Cooling (BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool M6 - Premium Speaker &amp; Gaming Laptop Cooling(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool N2000 FS Laptop Cooling (BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool N300 200mm fan - Laptop Cooling(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool N8 Black Laptop Cooling (BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool N8 Laptop Cooling (BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool N8 Ultra Black Laptop Cooling (BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool N8 Ultra Laptop Cooling (BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool N9 Black - Ultimate Laptop Cooling (BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool N9 Ultimate Laptop Cooling (BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Deepcool Ultimate Mouting Kit for cpu cooler(BH )', CAST(149996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'EK Thermal pad 0.5mm  (BH )', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling Colorful SF-12025- PWM High Performance Fan(BH 12 Tháng . )', CAST(220000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling Concentric Circular CF-12025 Blue Led - PWM High Performance Fan(BH 12 Tháng . )', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling Concentric Circular CF-12025 Green Led - PWM High Performance Fan(BH 12 tháng .)', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling Concentric Circular CF-12025 Red Led - PWM High Performance Fan(BH 12 Tháng . )', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling DK-01T Sunflower - Cpu Cooler(BH 12 Tháng)', CAST(159984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling IS-25i -Low-Profile Cpu Cooler(BH 12 Tháng)', CAST(379984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling IS-50 -Top-down Cpu Cooler(BH 12 Tháng)', CAST(449988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling NO-12015- PWM Super Slim Fan(BH 12 Tháng)', CAST(149996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling PL-12025 Blue led - 120mm PWM High Performance Fan(BH 12 Tháng)', CAST(129998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling PL-12025 Green led - 120mm PWM High Performance Fan(BH 12 Tháng)', CAST(129998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling PL-12025 Red led - 120mm PWM High Performance Fan(BH 12 Tháng)', CAST(129998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling PL-12025 White led - 120mm PWM High Performance Fan(BH 12 Tháng)', CAST(129998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling SE-204 Pro - Cpu Cooler(BH 12 Tháng)', CAST(679998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling SE-204K Black - Cpu Cooler(BH 12 Tháng)', CAST(779988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling SE-205 - Extreme Cpu Cooler(BH 12 Tháng)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling SE-214X -Unique Aluminium Stick Cpu Cooler(BH 12 Tháng)', CAST(489984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling SE-902 V3 - Cpu Cooler(BH 12 Tháng)', CAST(220000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling SE-903 - Cpu Cooler(BH 12 Tháng)', CAST(319990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling TG01 0.5g - Extreme Performance Thermal Grease (BH )', CAST(29986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling TG11 1.5g - Extreme Performance Thermal Grease (BH )', CAST(74800.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling TG31 3g - Extreme Performance Thermal Grease (BH )', CAST(149996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Infinity Crytal Blue Led - 120mm Case fan(BH 12 Tháng .)', CAST(99990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Infinity Crytal Red Led - 120mm Case fan(BH 12 Tháng .)', CAST(99990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Infinity Eclipse Blood Red  -Cycle LED illumination 120mm Silent Fan(BH 12 Tháng .)', CAST(179999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Infinity Eclipse Halo White  -Cycle LED illumination 120mm Silent Fan(BH 12 Tháng .)', CAST(179999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Infinity Eclipse Sea Blue  -Cycle LED illumination 120mm Silent Fan(BH 12 Tháng .)', CAST(179999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Infinity Eclipse Tesla Green  -Cycle LED illumination 120mm Silent Fan(BH 12 Tháng .)', CAST(179999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Infinity Galaxy -15 RGB LED with Remote Control 120mm Silent Fan(BH 12 Tháng .)', CAST(279994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks 4-Pin PWM Fan Splitter(BH )', CAST(99990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks F140 HP Black PWM - Premier fan case (BH 60 Tháng)', CAST(349998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks F140 HP Blue PWM - Premier fan case (BH 60 Tháng)', CAST(349998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks F140 HP Red PWM - Premier fan case (BH 60 Tháng)', CAST(349998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks F140 HP White PWM - Premier fan case (BH 60 Tháng)', CAST(349998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks F140 SP - Premier fan case (BH 60 Tháng)', CAST(349998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks F140 SP Blue Led- Premier fan case (BH 60 Tháng)', CAST(369996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks F140 SP Orange Led- Premier fan case (BH 60 Tháng)', CAST(369996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks F140 SP Red Led- Premier fan case (BH 60 Tháng)', CAST(369996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks F140 SP White Led- Premier fan case (BH 60 Tháng)', CAST(369996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks F140 XP PWM - Premier fan case (BH 60 Tháng)', CAST(369996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Nano-Diamond - Ultimate Performance Thermal Compound(BH )', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks TC12DX Black Edition- Dual Fans Premium Cpu Cooler(BH 60 Tháng)', CAST(1049994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks TC12DX Blue Edition- Dual Fans Premium Cpu Cooler(BH 60 Tháng)', CAST(1049994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks TC12DX Red Edition- Dual Fans Premium Cpu Cooler(BH 60 Tháng)', CAST(1049994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks TC12DX White Edition- Dual Fans Premium Cpu Cooler(BH 60 Tháng)', CAST(1049994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks TC12LS Black/White Edition- Top Down ITX Cpu Cooler(BH 60 Tháng)', CAST(899998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks TC14PE - Dual Fans Ultimate Cpu Cooler(BH 60 Tháng)', CAST(1849999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks TC14PE Black Edition - Dual Fans Ultimate Cpu Cooler(BH 60 Tháng)', CAST(1849999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks TC14PE Blue Edition - Dual Fans Ultimate Cpu Cooler(BH 60 Tháng)', CAST(1849999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks TC14PE Red Edition - Dual Fans Ultimate Cpu Cooler(BH 60 Tháng)', CAST(1849999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Phanteks TC14S Black/White Edition- Dual Tower ITX Cpu Cooler(BH 60 Tháng)', CAST(1100000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Double end stud with nut(BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Genesis (BH )', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Genesis Black Edition (BH )', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Genesis fan Clip for 12 &amp; 14cm (BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Intel Spring Loaded Crew(BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech LGA 2011 Mouting Kit (BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech LynX(BH )', CAST(579999.20 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Mega fan Clip for 12 &amp; 14cm (BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Mega fan Clip for 38mm fan(BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Megahalems Black Edition(BH )', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Megahalems Rev.C (BH )', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech MK-26 Ultimate VGA Cooling(BH )', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Mouting Plate for Intel/AMD(BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech O-ring(BH )', CAST(19998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Panther(BH )', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Rivet Nut(BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Prolimatech Scew nut(BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Sharkoon Shark Blades Blue - Premium fan case (BH 12 Tháng .)', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Sharkoon Shark Blades Green - Premium fan case (BH 12 Tháng .)', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Sharkoon Shark Blades Red - Premium fan case (BH 12 Tháng .)', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Sharkoon Shark Blades Yellow - Premium fan case (BH 12 Tháng .)', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Sharkoon Silent Eagle Blue led 120mm - Fan case (BH 12 Tháng .)', CAST(119988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Sharkoon Silent Eagle Red led 120mm - Fan case (BH 12 Tháng .)', CAST(119988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright AXP-200 - Ultimate Cpu cooler for HTPC(BH 12 tháng .)', CAST(1499999.60 AS Numeric(28, 2)), N'Có Sẵn')
GO
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright AXP-200R - Ultimate Cpu cooler for HTPC(BH 12 tháng .)', CAST(1549988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright Chill Factor III 2g(BH )', CAST(74998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright Chill Factor III 4g - Retail(BH )', CAST(149996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright Le Grand Macho - Fanless Cpu cooling(BH 12 tháng .)', CAST(1549988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright Metal Bright Heatsink Cleaner (BH )', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright Silver Arrow IB-E Extreme Edition (BH 12 tháng .)', CAST(1799996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright Silver Arrow ITX Black Edition (BH 12 tháng .)', CAST(1749990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright Silver Arrow SB-E Extreme Edition (BH 12 tháng .)', CAST(1799996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright True Spirit 120i(BH 12 tháng .)', CAST(699996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright True Spirit 120M (BH 12 tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright True Spirit 120M BW Rev.A(BH 12 tháng .)', CAST(699996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright True Spirit 140 BW Rev.A(BH 12 tháng .)', CAST(1100000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright True Spirit 140 Extreme Edition(BH 12 tháng .)', CAST(1100000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright True Spirit 140 Power Edition(BH 12 tháng .)', CAST(1299999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright True Spirit 90M Rev.A(BH 12 tháng .)', CAST(579986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright TY-143 140mm Extreme fan - Retail(BH 12 tháng .)', CAST(349998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Thermalright Venomous X-RT Rev.SB-E(BH 12 tháng .)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 120mm CLF-F1251 Blue led Crystal Silent Fan (BH 12 Tháng .)', CAST(159999.40 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 120mm XAF-F1253(BH 12 Tháng .)', CAST(159999.40 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 120mm XAF-F1254 Black(BH 12 Tháng .)', CAST(159999.40 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 120mm XAF-F1255 90CFM PWM(BH 12 Tháng .)', CAST(255992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 120mm XLF-F1255 Black PWM(BH 12 Tháng .)', CAST(129998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 120mm XOF-F1251 White(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 140mm XAF-F1451 Black(BH 12 Tháng .)', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 140mm XAF-F1452 White(BH 12 Tháng .)', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 140mm XAF-F1453(BH 12 Tháng .)', CAST(330000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 140mm XAF-F1454 Black(BH 12 Tháng .)', CAST(330000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 140mm XAF-F1456 Blue(BH 12 Tháng .)', CAST(330000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 140mm XLF-F1453 Orange(BH 12 Tháng .)', CAST(199999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 140mm XLF-F1454 Blue(BH 12 Tháng .)', CAST(199999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 140mm XLF-F1455 Black(BH 12 Tháng .)', CAST(199999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 140mm XSF-F1452 Silent(BH 12 Tháng .)', CAST(119999.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek 200mm XLF-F2003 (BH 12 Tháng .)', CAST(279994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek Aegir - Double Layer H.D.T(BH 12 Tháng)', CAST(999988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek Anti-vibration rubber clip fan(BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek Crossbar Mouting Kit for cpu cooler(BH )', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek Freezing Point - 4g(BH )', CAST(119988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'XSPC Thermal pad 0.5mm(BH )', CAST(99990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'XSPC Thermal pad 1mm(BH )', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman CNPS 10X Exterme - Extreme Cooling Performance(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman CNPS 10X Optima 2011- Powerful Cooling Performance(BH 12 Tháng)', CAST(550000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman CNPS 10X Performa - Extreme Cooling Performance(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman CNPS 12X - Extreme Performance with Triple Fan(BH 12 Tháng)', CAST(2094994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman CNPS 14X - Ultra Quiet Performance(BH 12 Tháng)', CAST(1119998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman CNPS 2X -Full Copper High Performance HTPC Cpu Cooler(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman CNPS 5X Performa - Powerful Cooling Performance(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman CNPS 90F - Ultra Quite Cpu Cooler(BH 12 Tháng)', CAST(159984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman CNPS9500A Led- Full Cu Cpu Cooler (BH 12 Tháng)', CAST(1019986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman CNPS9900 MAX Blue Led- Powerful Cooling Performance(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman CNPS9900 MAX Red Led- Powerful Cooling Performance(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman DF12 120mm - Premium Ultra Case Fan(BH 12 Tháng .)', CAST(449988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman F2 LED 92mm - Ultra Quite Case Fan(BH 12 Tháng .)', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman F3 LED 120mm - Ultra Quite Case Fan(BH 12 Tháng .)', CAST(279840.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman FX100 - Ultimate Fanless CPU Cooler - CES 2013 Winner Award(BH )', CAST(1549988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman FX70 - Ultimate Fanless CPU Cooler(BH )', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman NC11- Gaming Notebook Cooler (BH 12 Tháng - 1 đổi 1)', CAST(749999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman NC2500 Plus - HDD enclosure &amp; Cooling for Notebook(BH 12 Tháng - 1 đổi 1)', CAST(1049994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman NC3 - Ultra Quiet Notebook Cooler(BH 12 Tháng - 1 đổi 1)', CAST(364999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman NC3500 - Turbo Cooling Notebook Cooler(BH 12 Tháng - 1 đổi 1)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman NC3500 Plus - Perfect Sound Experience Premium Notebook Cooler(BH 12 Tháng - 1 đổi 1)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[AirCooler] ([Infomation], [Price], [Status]) VALUES (N'Zalman NS2000 -High Performance  Notebook Cooler(BH 12 Tháng - 1 đổi 1)', CAST(550000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Aerocool Aero 1000 Black - Mid Tower Case(BH 12 Tháng . )', CAST(1650000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Aerocool Aero 500 Black - Mid Tower Case(BH 12 Tháng . )', CAST(689986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Aerocool Aero 800 Black - Mid Tower Case(BH 12 Tháng . )', CAST(1249996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Aerocool Aero 800 White - Mid Tower Case(BH 12 Tháng . )', CAST(1249996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Aerocool Battle Hawk - Mid Tower Case(BH 12 Tháng . )', CAST(959992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Aerocool CS 1101 - Mid Tower Case(BH 12 Tháng . )', CAST(419999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Aerocool CS 1102 - Mid Tower Case(BH 12 Tháng . )', CAST(419999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Centurion 6 Mid-Tower Case (BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Cosmos II(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master K280(BH 12 Tháng)', CAST(770000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master K350(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master K380(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master K550(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master RC 690 II Advance (BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master RC 690 II Plus (BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Siliencio 650 Mid-Tower Case (BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Storm Enforcer Gaming Case  (BH 12 Tháng)', CAST(2099938.34 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Storm Scout II(BH 12 Tháng)', CAST(2204943.82 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Trooper Gaming Case  (BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Carbide Series 100R Window Mid-Tower Case(BH 12 tháng )', CAST(1119999.10 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Carbide Series 200R Window Mid-Tower Case(BH 12 tháng )', CAST(1384994.82 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Carbide Series 300R Windowed Mid-Tower Case(BH 12 tháng )', CAST(1709984.54 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Carbide Series 330R Titanium Edition Mid-Tower Case(BH 12 tháng )', CAST(2239998.20 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Carbide Series 400R Mid-Tower Case(BH 12 tháng )', CAST(2019997.98 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Carbide Series 500R White Mid-Tower Case(BH 12 tháng )', CAST(2699996.64 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Carbide Series Air 240 White  Mini-Tower Case(BH 12 tháng )', CAST(2109988.98 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Carbide Series Air 540 White  Mid-Tower Case(BH 12 tháng )', CAST(3259985.08 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Graphite Series 600T White Special Edition Mid-Tower Case (BH 12 tháng )', CAST(3589996.52 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Graphite Series 760T Black Full-Tower Case (BH 12 tháng )', CAST(4389983.18 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Graphite Series 760T White Full-Tower Case (BH 12 tháng )', CAST(4389983.18 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Graphite Series 780T Black - Full-Tower Case (BH 12 tháng )', CAST(4249997.18 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Graphite Series 780T White - Full-Tower Case (BH 12 tháng )', CAST(4489995.40 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Obsidian Series 450D - Mid Tower Case (BH 12 Tháng)', CAST(2809985.64 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Obsidian Series 750D - Mid Tower Case (BH 12 Tháng)', CAST(3819995.74 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Obsidian Series 900D Super Full Tower Case (BH 12 Tháng)', CAST(7869990.70 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair SSD bracket 2.5 to 3.5\"(BH )', CAST(79998.67 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cougar Panzer Max - Superior Expandability Full Tower Case(BH 12 tháng . 1 đổi 1 .)', CAST(2499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Deepcool Dukase V2 Black - Mid-Tower Case (BH 12 Tháng)', CAST(1249996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Deepcool Dukase V2 White - Mid-Tower Case (BH 12 Tháng)', CAST(1249996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Deepcool Kendomen Red - Mid-Tower Case (BH 12 Tháng)', CAST(1049994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Deepcool Kendomen Titan - Mid-Tower Case (BH 12 Tháng)', CAST(1049994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Deepcool Tesseract Black - Mid-Tower Case (BH 12 Tháng)', CAST(819984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Deepcool Tesseract White - Mid-Tower Case (BH 12 Tháng)', CAST(819984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer Flo  - Windowed Mid-Tower Gaming Case(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer Ghost  - Windowed Mid-Tower Gaming Case(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer Inferno  - Windowed Mid-Tower Gaming Case(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer Inferno Pure White  - Windowed Mid-Tower Gaming Case(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer Nano - Mini Tower Case(BH 12 Tháng .)', CAST(649990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer Nano Pure White - Mini Tower Case(BH 12 Tháng .)', CAST(699996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer Ninja  - Windowed Mid-Tower Gaming Case(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer Pro  - Windowed Mid-Tower Gaming Case(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer T3 Red USB 3.0 - Gaming Case(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer T6 Red USB 3.0 - Gaming Case(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer V1 (P08)  - Gaming Case(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'HiGamer V1 Blue  - Gaming Case(BH 12 Tháng .)', CAST(189992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling Stream 1 - Frame Tubing Aluminium Premium ITX Case(BH )', CAST(5999994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'ID Cooling Stream 2 - Frame Tubing Aluminium Premium M-ATX Case(BH )', CAST(6999982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 303 Black - Full Side Tempered Glass Mid-Tower Case(BH 12 Tháng .)', CAST(2499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 303 Nvidia Limited Edition - Full Side Tempered Glass Mid-Tower Case(BH 12 Tháng .)', CAST(2999986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 303 White - Full Side Tempered Glass Mid-Tower Case(BH 12 Tháng .)', CAST(2499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 503 Black/Red Tempered Glass - Mid Tower Case(BH 12 Tháng .)', CAST(1399992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 503 White/Black Tempered Glass - Mid Tower Case(BH 12 Tháng .)', CAST(1399992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 703 Black/Red Aluminium-  Mid-Tower Case(BH 12 Tháng .)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 703 White/Silver Aluminium-  Mid-Tower Case(BH 12 Tháng .)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 707 Black/Red Aluminium-  Full Tower Case(BH 12 Tháng .)', CAST(2499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 707 White/Silver Aluminium-  Full Tower Case(BH 12 Tháng .)', CAST(2499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 805 - Aluminium &amp; Tempered Glass Mid-Tower Case(BH 12 Tháng .)', CAST(3999996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 805 Infinity RGB Led- Aluminium &amp; Tempered Glass Mid-Tower Case(BH 12 Tháng .)', CAST(6499988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 805 Red/Black Type C - Aluminium &amp; Tempered Glass Mid-Tower Case(BH 12 Tháng .)', CAST(4499990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 901 Aluminium &amp; Tempered Glass - Hi-end Mini ITX Tower Case (BH 12 Tháng .)', CAST(4899994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 904 Aluminium &amp; Tempered Glass - Hi-end Full Tower Case (BH 12 Tháng .)', CAST(5499978.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 904 Golden Limited Edition - Hi-end Case (BH 12 Tháng .)', CAST(6499988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 904 Plus -Aluminium&amp;Tempered Glass Hi-end Case (BH 12 Tháng .)', CAST(5999994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 909 Black Edition - Aluminium &amp; Tempered Glass Full-Tower Case(BH 12 Tháng .)', CAST(8800000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win 909 Silver Edition - Aluminium &amp; Tempered Glass Full-Tower Case(BH 12 Tháng .)', CAST(8800000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win Chopin Black Aluminium Super mini-ITX - 150W PSU Combo(BH 12 Tháng .)', CAST(2200000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win Chopin Silver Aluminium Super mini-ITX - 150W PSU Combo(BH 12 Tháng .)', CAST(2200000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win D-Frame 2.0 + SII-1065W - 30th Anniversary Premium Signature Combo(BH 12 Tháng .)', CAST(29989960.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win D-Frame Red Limited Edition - Open Air Case(BH 12 Tháng .)', CAST(14899984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win G7 Black Windowed Mid-Tower Case(BH 12 Tháng .)', CAST(990000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win G7 Grey Windowed Mid-Tower Case(BH 12 Tháng .)', CAST(990000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win GRone Black/red Gaming Full Tower Case(BH 12 Tháng .)', CAST(2599982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win GRone Gaming Full Tower Case(BH 12 Tháng .)', CAST(2499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win GRone Snow White Gaming Full Tower Case(BH 12 Tháng .)', CAST(2599982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win GT1 Black Gaming Mid-Tower Case(BH 12 Tháng .)', CAST(1149984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win GT1 Snow White Gaming Mid-Tower Case(BH 12 Tháng .)', CAST(1149984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win H-Frame 2.0 + SII-1065W - 30th Anniversary Premium Signature Combo(BH 12 Tháng .)', CAST(29989960.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win H-Frame Green 2.0 + SII-1065W - 30th Anniversary Premium Signature Combo(BH 12 Tháng .)', CAST(29989960.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win H-Frame Limited Edition - Premium Aluminium Case (BH 12 Tháng .)', CAST(9550002.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win S-Frame Black/Gold Limited Edition - Luxury Case (BH 12 Tháng .)', CAST(19899990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win Signature Motorized Transformer H-Tower R.O.G Certificated - E-ATX Aluminium Full Tower Case(BH 12 Tháng .)', CAST(59999940.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win Signature Motorized Transformer H-Tower RGB - E-ATX Aluminium Limited Edition Full Tower Case(BH 12 Tháng .)', CAST(55000000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Infinity Armor - Hybrid Tower Silent Case(BH 12 Tháng .)', CAST(990000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Infinity Armor Lite - Hybrid Tower Silent Case(BH 12 Tháng .)', CAST(749999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Infinity Revenge -3 Sides Tempered Glass Mid-Tower Silent Case(BH 12 Tháng .)', CAST(2799984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Infinity Tesla - Side Tempered Glass Mid-Tower Silent Case(BH 12 Tháng .)', CAST(1899986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Inwin 509 - Full Side Tempered Glass Full-Tower Case(BH 12 Tháng .)', CAST(3599992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Inwin 509 ROG Certified - Full Side Tempered Glass Full-Tower Case(BH 12 Tháng .)', CAST(3799994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT H440 Black - Mid-Tower Case(BH 24 Tháng .)', CAST(3059980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT H440 Razer Edition - Mid-Tower Case(BH 24 Tháng .)', CAST(3879986.00 AS Numeric(28, 2)), N'Có Sẵn')
GO
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT H440 White - Mid-Tower Case(BH 24 Tháng .)', CAST(3059980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Noctis N450  Black - Mid-Tower Case(BH 24 Tháng .)', CAST(3459984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Noctis N450 White - Mid-Tower Case(BH 24 Tháng .)', CAST(3459984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Phantom P630 Black - Mid-Tower Case(BH 24 Tháng .)', CAST(4259992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Phantom P630 White - Mid-Tower Case(BH 24 Tháng .)', CAST(4259992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Source S340 Black - Mid-Tower Case(BH 24 Tháng .)', CAST(1989988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Source S340 White - Mid-Tower Case(BH 24 Tháng .)', CAST(1989988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Patriot PS-06 - Mid Tower Case(BH )', CAST(174988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Patriot PS-07 - Mid Tower Case(BH )', CAST(174988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Eclipse P400 Anthracite Grey - RGB illumination Mid-Tower Case(BH 60 Tháng)', CAST(1949992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Eclipse P400 Black - RGB illumination Mid-Tower Case(BH 60 Tháng)', CAST(1949992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Eclipse P400 White - RGB illumination Mid-Tower Case(BH 60 Tháng)', CAST(2099988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Eclipse P400S Silent Edition Anthracite Grey - RGB illumination Mid-Tower Case(BH 60 Tháng)', CAST(2149994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Eclipse P400S Silent Edition Black - RGB illumination Mid-Tower Case(BH 60 Tháng)', CAST(2149994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Eclipse P400S Silent Edition White - RGB illumination Mid-Tower Case(BH 60 Tháng)', CAST(2349996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Evolv ATX Anthracite Grey - Full Aluminium Mid-Tower Case(BH 60 Tháng)', CAST(4499990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Evolv ATX Galaxy Silver - Full Aluminium Mid-Tower Case(BH 60 Tháng)', CAST(4499990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Evolv ATX Satin Black - Full Aluminium Mid-Tower Case(BH 60 Tháng)', CAST(4499990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Evolv ATX/PRO M 3.5" HDD Bracket(BH 12 Tháng)', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Evolv Glacier White - Aluminium Mini-Tower Case(BH 60 Tháng)', CAST(2999986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Evolv ITX Black/Red Special Edition - ITX Tower Case(BH 60 Tháng)', CAST(2099988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Evolv ITX Glacier White - ITX Tower Case(BH 60 Tháng)', CAST(2099988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Evolv ITX Satin Black - ITX Tower Case(BH 60 Tháng)', CAST(1949992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Evolv ITX Satin Black - No Window ITX Tower Case(BH 60 Tháng)', CAST(1899986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Evolv Satin Black - Aluminium Mini-Tower Case(BH 60 Tháng)', CAST(2799984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Luxe Glacier White - Multi-color Aluminium Full Tower Case (BH 60 Tháng)', CAST(3999996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Luxe Satin Black- Multi-color Aluminium Full Tower Case (BH 60 Tháng)', CAST(3799994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Primo - Full Tower Ultimate Chassis (BH 60 Tháng)', CAST(5989984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Primo Snow White- Full Tower Ultimate Chassis (BH 60 Tháng)', CAST(6299986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Primo Special Edition Black/Green - Full Tower Ultimate Chassis (BH 60 Tháng)', CAST(6299986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Primo Special Edition Black/Orange - Full Tower Ultimate Chassis (BH 60 Tháng)', CAST(6299986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Primo Special Edition Black/Red - Full Tower Ultimate Chassis (BH 60 Tháng)', CAST(6299986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Primo Special Edition Black/White - Full Tower Ultimate Chassis (BH 60 Tháng)', CAST(6299986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Pro - Full Tower Case (BH 60 Tháng)', CAST(2299990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Pro M Black - Acrylic Window Mid Tower Case (BH 60 Tháng)', CAST(2249984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Pro M Satin Black - Mid Tower Case (BH 60 Tháng)', CAST(2049999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Pro M Titanium Green - Mid Tower Case (BH 60 Tháng)', CAST(2049999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Pro Pure White Windowed - Full Tower Case (BH 60 Tháng)', CAST(2599982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Pro Titannium Green Windowed - Full Tower Case (BH 60 Tháng)', CAST(2499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Enthoo Pro Windowed - Full Tower Case (BH 60 Tháng)', CAST(2499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks SSD Bracket for 1 in 1 for All Enthoo Series(BH )', CAST(149996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Sama G1 - Case(BH )', CAST(439978.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Sharkoon 5.25 Bay Extension Black(BH )', CAST(179982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Sharkoon 5.25 Bay Extension Blue(BH )', CAST(179982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Sharkoon 5.25 Bay Extension Green(BH )', CAST(179982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Sharkoon 5.25 Bay Extension Red(BH )', CAST(179982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Sharkoon Hotswap Sata QP Intern Multi USB 3.0(BH 12 Tháng .)', CAST(699996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Thermaltake Level 10 Full Tower Case (BH 24 Tháng)', CAST(17999982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'THOR Erosi Hero Mid-Tower Gaming Case(BH )', CAST(359999.20 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'THOR Erosi X3 Mid-Tower Case(BH )', CAST(269984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'THOR Erosi X5 Mid-Tower Case(BH )', CAST(269984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Xigmatek Frontliner - Mid-Tower Case(BH 12 Tháng .)', CAST(789998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman H1 - Full Tower Luxurious Hi-end Case(BH 12 Tháng)', CAST(2799984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman HD501 - HTPC Case(BH 12 Tháng)', CAST(1299980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman M1 - ITX Mini Tower Case(BH 12 Tháng)', CAST(1549988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman MS800 Plus  - Mid-Tower Case(BH 12 Tháng)', CAST(1549988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman R1 - Mid-Tower Silent Case(BH 12 Tháng)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman R1 White - Mid-Tower Silent Case(BH 12 Tháng)', CAST(1249996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman Z11 Neo - ATX Tower Case(BH 12 Tháng)', CAST(2049982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman Z11 Plus  -Ultimate Gaming Case(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman Z11 Plus HF1 -Ultimate Gaming Case(BH 12 Tháng)', CAST(1799996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman Z3 Plus - ATX Tower Case(BH 12 Tháng)', CAST(899998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman Z3 Plus Pure White - ATX Tower Case(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman Z9 Neo - ATX Tower Case(BH 12 Tháng)', CAST(1879988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman Z9 Neo White - ATX Tower Case(BH 12 Tháng)', CAST(1949992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman Z9 U3 Windowed  - Tower Case(BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Acbel HK350 - PSU (BH 24 Tháng)', CAST(379984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson E5 300W - Single Rail True Power PSU(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(419980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson E5 400W - Single Rail True Power PSU(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(499994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson E5 500W - Single Rail True Power PSU(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(599984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson H6 Series 600W Japan Caps - 80 Plus Gold - Single Rail Modular PSU(BH 60 Tháng 1 đổi 1 mới 100% .)', CAST(1989988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson H6 Series 800W Japan Caps - 80 Plus Gold - Single Rail Modular PSU(BH 60 Tháng 1 đổi 1 mới 100% .)', CAST(2499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson M5 500W Japan Cap Single Rail - 80 Plus Bronze PSU(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(899998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson M5 600W Japan Cap - Single Rail - 80 Plus Bronze PSU(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(1049994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson M5 700W Japan Cap - Single Rail - 80 Plus Bronze PSU(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson M5+ 450W 100% Japan Cap - Single Rail - 80 Plus Bronze PSU(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(849992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson M5+ 550W 100% Japan Cap - Single Rail - 80 Plus Bronze PSU(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(999988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson M5+ 650W 100% Japan Cap - Single Rail - 80 Plus Bronze PSU(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(1149984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson N700 700W - 80 Plus Titanium PSU(BH 60 Tháng 1 đổi 1 mới 100% .)', CAST(2789996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Andyson R1200 1200W - Full Modular 80 Plus Platinium PSU(BH 60 Tháng 1 đổi 1 mới 100% .)', CAST(4999984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Antec BP300S - True Power(BH 24 Tháng . )', CAST(474980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Antec BP350S - True Power(BH 24 Tháng . )', CAST(550000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Antec HCG - 850M 850W 80Plus Bronze (BH 36 Tháng)', CAST(2699994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Antec HCP 1300P 1300W(BH 36 Tháng)', CAST(6899992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Antec Neo ECO II 550W(BH 36 Tháng)', CAST(1349986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Antec Neo ECO II 650W(BH 36 Tháng)', CAST(1549988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Cable Comb 24 pin – Transparent (BH 12 tháng .)', CAST(19998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Cable Comb 6 pin – Transparent (BH 12 tháng .)', CAST(14982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Cable Comb 8 pin – Transparent (BH 12 tháng .)', CAST(14982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Connector Pack – 24 pin ATX – Black(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Connector Pack – 6 pin PCI-e – Black(BH 12 tháng .)', CAST(34980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Connector Pack – 8 pin EPS – Black(BH 12 tháng .)', CAST(34980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Connector Pack – 8 pin PCI-e – Black(BH 12 tháng .)', CAST(34980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Black 4x20cm(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Black 4x40cm(BH 12 tháng .)', CAST(59994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Blue 4x20cm(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Blue 4x40cm(BH 12 tháng .)', CAST(59994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Green 4x20cm(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Green 4x40cm(BH 12 tháng .)', CAST(59994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Light Blue 4x20cm(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
GO
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Light Blue 4x40cm(BH 12 tháng .)', CAST(59994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Light Green 4x20cm(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Light Green 4x40cm(BH 12 tháng .)', CAST(59994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Orange 4x20cm(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Orange 4x40cm(BH 12 tháng .)', CAST(59994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Purple 4x20cm(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Purple 4x40cm(BH 12 tháng .)', CAST(59994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Red 4x20cm(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Red 4x40cm(BH 12 tháng .)', CAST(59994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Silver 4x20cm(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Silver 4x40cm(BH 12 tháng .)', CAST(59994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires White 4x20cm(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires White 4x40cm(BH 12 tháng .)', CAST(59994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Yellow 4x20cm(BH 12 tháng .)', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod ModFlex™ Sleeved Wires Yellow 4x40cm(BH 12 tháng .)', CAST(59994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Molex to 4X Sata Power Sleeved Cable Black (BH 12 tháng .)', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Molex to 4X Sata Power Sleeved Cable Blue(BH 12 tháng .)', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Molex to 4X Sata Power Sleeved Cable Green(BH 12 tháng .)', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Molex to 4X Sata Power Sleeved Cable Orange(BH 12 tháng .)', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Molex to 4X Sata Power Sleeved Cable Red(BH 12 tháng .)', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Molex to 4X Sata Power Sleeved Cable White(BH 12 tháng .)', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Sata 3 6Gb/s Sleeved Cable Black(BH 12 tháng .)', CAST(159984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Sata 3 6Gb/s Sleeved Cable Blue(BH 12 tháng .)', CAST(159984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Sata 3 6Gb/s Sleeved Cable Green(BH 12 tháng .)', CAST(159984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Sata 3 6Gb/s Sleeved Cable Red(BH 12 tháng .)', CAST(159984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Sata 3 6Gb/s Sleeved Cable White(BH 12 tháng .)', CAST(159984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'CableMod Sata 3 6Gb/s Sleeved Cable Yellow(BH 12 tháng .)', CAST(159984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master B600 80Plus(BH 36 Tháng)', CAST(1599994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Elite Power 400W(BH 24 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Extreme 2 475W(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Extreme 2 525W(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Extreme 2 625W(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Extreme 2 725W(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master GX Lite 500W(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master GX Lite 600W(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master GX Lite 700W(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Silent Pro M2 1000W(BH 60 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Thunder 450W(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Thunder 500W(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Thunder 550W(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master Thunder 600W(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master V1000 Fully Modular 80 Plus Gold(BH 36 Tháng)', CAST(4499990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Cooler Master V850 Fully Modular 80 Plus Gold(BH 36 Tháng)', CAST(4049980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair AX1200i 1200W Profesional Platinium Series(BH 60 Tháng)', CAST(7869990.70 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair AX1500i 1500W Profesional Platinium Series(BH 60 Tháng)', CAST(10959992.78 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair AX860i 860W Profesional Platinium Series(BH 60 Tháng)', CAST(5399993.28 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair Builder VS550 550W - 85% Efficiency - Active PFC (BH 36 Tháng)', CAST(999988.88 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair CXV3 430W - Single Rail - 80 Plus Bronze PSU(BH 36 Tháng)', CAST(1069981.88 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair CXV3 500W - Single Rail - 80 Plus Bronze PSU(BH 36 Tháng)', CAST(1399993.32 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair CXV3 600W - Single Rail - 80 Plus Bronze PSU(BH 36 Tháng)', CAST(1599995.54 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair CXV3 750W - Single Rail - 80 Plus Bronze PSU(BH 36 Tháng)', CAST(2098767.88 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair RM Series 1000X - 80 Plus Gold - Full Modular (BH 36 Tháng)', CAST(4689997.62 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair RM Series 650W - 80 Plus Gold - Full Modular (BH 36 Tháng)', CAST(3089979.86 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Corsair RM Series 850X - 80 Plus Gold - Full Modular (BH 36 Tháng)', CAST(3990000.96 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'FSP Aurum S 500W - Single Rail - 80 Plus Gold(BH 60 Tháng)', CAST(1749990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'FSP Saga 450 400W - Active PFC   (BH 24 Tháng)', CAST(699996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'FSP Saga 500 - 450W - Active PFC   (BH 24 Tháng)', CAST(779988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win Classic 750W Aluminium - Full Modular 80Plus Platinium Premium PSU(BH 60 tháng 1 đổi 1 .)', CAST(3999996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win Classic 900W Aluminium - Full Modular 80Plus Platinium Premium PSU(BH 60 tháng 1 đổi 1 . )', CAST(4799982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'In-Win PowerMan IP-S 400W Peak 480W - True Power PSU(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(550000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'MDPC Sleeve Small - Black (BH )', CAST(24992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'MDPC Sleeve Small - Blue(BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'MDPC Sleeve Small - Red (BH )', CAST(49984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'MDPC Sleeve Small - White (BH )', CAST(32997.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 24pin for Mainboard Black(BH )', CAST(279994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 24pin for Mainboard Red(BH )', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 24pin for Mainboard White(BH )', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 6pin to 6+2pin for VGA Black(BH )', CAST(159984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 6pin to 6+2pin for VGA Red(BH )', CAST(179982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 6pin to 6+2pin for VGA White(BH )', CAST(179982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 8pin for Mainboard Black(BH )', CAST(169994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 8pin for Mainboard Red(BH )', CAST(189992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 8pin for Mainboard White(BH )', CAST(189992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 8pin to 8pin for VGA Black(BH )', CAST(169994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 8pin to 8pin for VGA Red(BH )', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved 8pin to 8pin for VGA White(BH )', CAST(189992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Fan ( 3pin ) Black(BH )', CAST(99990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Fan ( 3pin ) Red(BH )', CAST(99990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Fan ( 3pin ) White(BH )', CAST(99990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Fpanel Kit Black  (BH )', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Fpanel Kit Red (BH )', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Fpanel Kit White(BH )', CAST(249986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Molex to 3 Sata Black(BH )', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Molex to 3 Sata Red(BH )', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Molex to 3 Sata White(BH )', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Sata  Black(BH )', CAST(149996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Sata  Red(BH )', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Sata  White(BH )', CAST(149996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Sata Power Black(BH )', CAST(149996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Sata Power Red(BH )', CAST(149996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'NZXT Premium Cable Sleeved Sata Power White(BH )', CAST(149996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Motherboard 24-pin Extension 500mm - Black Sleeved Cable(BH )', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Motherboard 24-pin Extension 500mm - Black/Red Sleeved Cable(BH )', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Motherboard 24-pin Extension 500mm - Red Sleeved Cable(BH )', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Motherboard 24-pin Extension 500mm - White Sleeved Cable(BH )', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Motherboard 8-pin Extension 500mm - Black Sleeved Cable(BH )', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Motherboard 8-pin Extension 500mm - Black/Red Sleeved Cable(BH )', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Motherboard 8-pin Extension 500mm - Red Sleeved Cable(BH )', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Motherboard 8-pin Extension 500mm - White Sleeved Cable(BH )', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks PCI-E 6-pin to 6-pin Extension 500mm - Black Sleeved Cable(BH )', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
GO
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks PCI-E 6-pin to 6-pin Extension 500mm - Black/Red Sleeved Cable(BH )', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks PCI-E 6-pin to 6-pin Extension 500mm - Red Sleeved Cable(BH )', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks PCI-E 6-pin to 6-pin Extension 500mm - White Sleeved Cable(BH )', CAST(199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks PCI-E 8-pin to 6+2-pin Extension 500mm - Black Sleeved Cable(BH )', CAST(220000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks PCI-E 8-pin to 6+2-pin Extension 500mm - Black/Red Sleeved Cable(BH )', CAST(220000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks PCI-E 8-pin to 6+2-pin Extension 500mm - Red Sleeved Cable(BH )', CAST(220000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks PCI-E 8-pin to 6+2-pin Extension 500mm - White Sleeved Cable(BH )', CAST(220000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Phanteks Power Splitter - Dual System PSU(BH )', CAST(899998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic G650 - 80 Plus Gold PSU (BH 60 Tháng)', CAST(2600004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic G750 - 80 Plus Gold PSU (BH 60 Tháng)', CAST(2899996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic M12II 520 - 80 Plus Bronze PSU (BH 36 Tháng)', CAST(1799996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic M12II 620 - 80 Plus Bronze PSU (BH 36 Tháng)', CAST(1999998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic M12II 750 - 80 Plus Bronze PSU (BH 60 Tháng)', CAST(2600004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic M12II 850 - 80 Plus Bronze PSU (BH 60 Tháng)', CAST(2899996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic P1050 - 80 Plus Platinium PSU (BH 60 Tháng)', CAST(5599990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic P1200 - 80 Plus Platinium PSU (BH 60 Tháng)', CAST(6600000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic P660 - 80 Plus Platinium PSU (BH 60 Tháng)', CAST(3599992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic P760 - 80 Plus Platinium PSU (BH 60 Tháng)', CAST(4099986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic P860 - 80 Plus Platinium PSU (BH 60 Tháng)', CAST(4799982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic S12II 520 - 80 Plus Bronze PSU (BH 36 Tháng)', CAST(1499999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic S12II 620 - 80 Plus Bronze PSU (BH 36 Tháng)', CAST(1650000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic Snow Silent 1050 - 80 Plus Platinium PSU (BH 60 Tháng)', CAST(6199996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Seasonic Snow Silent 750 - 80 Plus Platinium PSU (BH 60 Tháng)', CAST(4600002.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Vizo UV Sleeve complete kits - Blue (BH )', CAST(329780.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Vizo UV Sleeve complete kits - Orange(BH )', CAST(329780.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman Goldrock 550W Single Rail - 80 Plus Gold - Modular PSU(BH 60 tháng .)', CAST(2159999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman GV-500 500W - 80 Plus Bronze Single Rail(BH 36 tháng .)', CAST(1014992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman GV-600 600W - 80 Plus Bronze Single Rail(BH 36 tháng .)', CAST(1129986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CASE] ([Infomation], [Price], [Status]) VALUES (N'Zalman GV-700 700W - 80 Plus Bronze Single Rail(BH 36 tháng .)', CAST(1359996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'AMD Athlon II X4-651K BE Unlocked 3.0GHz FM1 - Box ( Chính hãng )(BH 36 Tháng .)', CAST(1899999.20 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'AMD Kaveri A6-7400K Black Edition 3.5GHz ( 3.9Ghz Turbo ) Dual-Core  - Box ( Chính hãng )(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'AMD Vishera FX 9590 4.7GHz ( 5.0GHz Turbo ) AM3+ 8 Cores - Box ( Chính hãng )(BH 24 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i3-4160 3.6GHz Haswell LGA 1150(BH 36 Tháng)', CAST(2479994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i3-6100 3.7GHz - Skylake LGA 1151(BH 36 Tháng)', CAST(2789996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i5-4460 3.1GHz (3.4GHz Turbo Boost ) Haswell Refresh LGA 1150(BH 36 Tháng)', CAST(4250004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i5-6400 2.7GHz (3.3GHz Turbo Boost ) Skylake LGA 1151(BH 36 Tháng)', CAST(4439996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i5-6500 3.2GHz (3.6GHz Turbo Boost ) Skylake LGA 1151(BH 36 Tháng)', CAST(4809992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i5-6600 3.3GHz (3.9GHz Turbo Boost ) Skylake LGA 1151(BH 36 Tháng)', CAST(5399988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i5-6600K 3.5GHz (3.9GHz Turbo Boost ) Skylake LGA 1151(BH 36 Tháng)', CAST(5799992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i7-4790 3.6GHz (4.0GHz Turbo Boost ) Haswell Refresh LGA 1150(BH 36 Tháng)', CAST(7399986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i7-4790K 4.0GHz (4.4GHz Turbo Boost ) Haswell Refresh LGA 1150(BH 36 Tháng)', CAST(8250000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i7-5820K 3.3GHz - Haswell-E LGA 2011-V3(BH 36 Tháng)', CAST(9399984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i7-5930K 3.5GHz - Haswell-E LGA 2011-V3(BH 36 Tháng)', CAST(14199988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i7-5960X Extreme 3.0GHz - Haswell-E LGA 2011-V3(BH 36 Tháng)', CAST(24999920.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i7-6700 3.4GHz (4.0GHz Turbo Boost ) Skylake LGA 1151(BH 36 Tháng)', CAST(7499998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i7-6700K 4.0GHz (4.4GHz Turbo Boost ) Skylake LGA 1151(BH 36 Tháng)', CAST(8399996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i7-6800K 3.4Ghz - 6-Core Broadwell-E LGA 2011-V3(BH 36 Tháng .)', CAST(10399994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i7-6850K 3.6Ghz - 6-Core Broadwell-E LGA 2011-V3(BH 36 Tháng .)', CAST(15099986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i7-6900K 3.2Ghz - 8-Core Broadwell-E LGA 2011-V3(BH 36 Tháng .)', CAST(25800060.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Core i7-6950X 3.0Ghz - 10-Core Broadwell-E LGA 2011-V3(BH 36 Tháng .)', CAST(41499920.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Pentium G3250 3.2GHz Haswell LGA 1150(BH 36 Tháng)', CAST(1249996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Pentium G3260 3.3GHz - Haswell LGA 1151(BH 36 Tháng)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Pentium G3450 3.4GHz Haswell LGA 1150(BH 36 Tháng)', CAST(1519980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Pentium G4400 3.3GHz - Skylake LGA 1151(BH 36 Tháng)', CAST(1389982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Xeon E3-1220V3 3.1GHz (3.4GHz Turbo Boost ) Haswell LGA 1150(BH 36 Tháng)', CAST(4799982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Xeon E3-1230V5 3.4GHz (3.8GHz Turbo Boost ) Skylake LGA 1151(BH 36 Tháng)', CAST(6349992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Xeon E3-1231V3 3.4GHz (3.7GHz Turbo Boost ) Haswell LGA 1150(BH 36 Tháng)', CAST(6050000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Xeon E5-1620V3 3.5GHz - Haswell-E LGA 2011-V3(BH 36 Tháng)', CAST(7799990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Xeon E5-2620 V4 2.1GHz - 8 cores LGA 2011-V3(BH 36 Tháng .)', CAST(10599996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Xeon E5-2630 V3 2.4GHz - LGA 2011-V3(BH 36 Tháng .)', CAST(16799992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[CPU] ([Infomation], [Price], [Status]) VALUES (N'Intel Xeon E5-2630 V4 2.1GHz - 8 cores LGA 2011-V3(BH 36 Tháng .)', CAST(16599990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Seagate Barracuda 7200.10 80GB 7200 vòng (BH 12 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Toshiba 1TB 7200rpm - Desktop HDD(BH 24 Tháng - 1 đổi 1 mới 100% )', CAST(1049994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Toshiba 2TB 7200rpm - Desktop HDD(BH 24 Tháng .)', CAST(1749990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Black 1TB -64MB cache Sata 3(BH 36 Tháng)', CAST(1749990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Black 2TB -64MB cache Sata 3(BH 36 Tháng)', CAST(3199988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Black 3TB -64MB cache Sata 3(BH 36 Tháng)', CAST(3999996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Black 4TB -64MB cache Sata 3(BH 36 Tháng)', CAST(5299998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Black 500GB 7200 vòng Sata 3(BH 36 Tháng)', CAST(1489994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Blue 1TB - 64MB cache - 5400 vòng - Sata 3(BH 24 Tháng)', CAST(1109988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Blue 1TB - 64MB cache - 7200 vòng - Sata 3(BH 24 Tháng)', CAST(1149984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Blue 250GB - 5400 vòng - Sata 3(BH 24 Tháng)', CAST(1089990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Blue 2TB - 64MB cache - 5400 vòng - Sata 3(BH 24 Tháng)', CAST(1749990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Blue 3TB - 64MB cache - 5400 vòng - Sata 3(BH 24 Tháng)', CAST(2279992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Blue 4TB - 54MB cache - 7200 vòng - Sata 3(BH 24 Tháng)', CAST(3199988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Blue 500GB - 7200 vòng - Sata 3(BH 24 Tháng)', CAST(1059999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Blue 6TB - 64MB cache - 5400 vòng - Sata 3(BH 24 Tháng)', CAST(5399988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Green 2.0TB Sata 3 6Gb/s / 64MB (BH 24 Tháng)', CAST(1899986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Green 3.0TB 64MB cache Sata 3(BH 24 Tháng)', CAST(2510002.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Green 4.0TB 64MB cache Sata 3(BH 24 Tháng)', CAST(3599992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Red 1TB - 24/7 64MB cache Sata 3(BH 36 Tháng)', CAST(1629999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Red 2TB - 24/7 64MB cache Sata 3(BH 36 Tháng)', CAST(2299990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Red 3TB - 24/7 64MB cache Sata 3(BH 36 Tháng)', CAST(2899996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Red 4TB - 24/7 64MB cache Sata 3(BH 36 Tháng)', CAST(3999996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDD] ([Infomation], [Price], [Status]) VALUES (N'Western Digital Caviar Red 6TB - 24/7 64MB cache Sata 3(BH 36 Tháng)', CAST(6499988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'HDD Lacie Porsche P\"9220 2.5” USB 3.0 1.0 TB  (BH 24 Tháng)', CAST(2519990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'HDD Lacie Porsche P\"9220 2.5” USB 3.0 500GB  (BH 24 Tháng)', CAST(1819994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'HDD Lacie Porsche P\"9223 Slim 2.5” USB 3.0 500GB(BH 24 Tháng)', CAST(2299990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'HDD Lacie Porsche P\"9230 3.5” USB 3.0 2.0 TB  (BH 24 Tháng)', CAST(3099998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'HDD Lacie Porsche P\"9230 3.5” USB 3.0 3.0 TB  (BH 24 Tháng)', CAST(3799994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'Seagate Goplex Home 2TB - Gigabit Network Storage System(BH 36 Tháng .)', CAST(2999986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'Sony HD-E1 1TB Black - USB 3.0 Exteral HDD (BH 36 Tháng .)', CAST(1749990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'Sony HD-E1 1TB Pink - USB 3.0 Exteral HDD (BH 36 Tháng .)', CAST(1749990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'Sony HD-E1 1TB Silver - USB 3.0 Exteral HDD (BH 36 Tháng .)', CAST(1749990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'Sony HD-E2 2TB Black - USB 3.0 Exteral HDD (BH 36 Tháng .)', CAST(2950002.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'Sony HD-E2 2TB Blue- USB 3.0 Exteral HDD (BH 36 Tháng .)', CAST(2950002.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'Sony HD-E2 2TB Silver - USB 3.0 Exteral HDD (BH 36 Tháng .)', CAST(2950002.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'Western Digital 3.5 My Book World Edition II Gigabit 2TB(BH 36 Tháng .)', CAST(2999986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'Western Digital My Book Essential 2.0TB USB 3.0 External 3.5(BH 36 Tháng - 1 đổi 1 .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[HDDExternal] ([Infomation], [Price], [Status]) VALUES (N'Western Digital My Book Essential 3.0TB USB 3.0 External 3.5(BH 36 Tháng - 1 đổi 1 .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainAMD] ([Infomation], [Price], [Status]) VALUES (N'Asus FM2+ A88X-Gamer(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainAMD] ([Infomation], [Price], [Status]) VALUES (N'BioStar A70U3P Hi-Fi - FM2+ Motherboard(BH 36 Tháng)', CAST(1249996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainAMD] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte FM2+ A88X-D3H(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainAMD] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte FM2+ A88XM-HD3(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N' Asus H170 PRO GAMING - LGA 1151 Skylake (BH 36 Tháng)', CAST(3799994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock B150M Pro4 - Skylake LGA 1151(BH 36 Tháng)', CAST(2149994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock B150M Pro4/D3 - Skylake LGA 1151(BH 36 Tháng)', CAST(1949992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock B150M Pro4/Hyper - Skylake LGA 1151(BH 36 Tháng)', CAST(2449986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock B250M-PRO4 SK1151 Kaby Lake(BH 36 Tháng)', CAST(2599982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock B85M-ITX - Haswell LGA 1150(BH 36 Tháng)', CAST(1903990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock B85M-Pro4 - Haswell LGA 1150(BH 36 Tháng)', CAST(1449998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'ASRock Fatal1ty B150 Gaming K4 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock Fatal1ty B85 Killer - Haswell LGA 1150(BH 36 Tháng)', CAST(2149994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'ASRock Fatal1ty E3V5 Performance Gaming/OC - LGA 1151 Skylake(BH 36 Tháng .)', CAST(3199988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'ASRock Fatal1ty H170 Performance - LGA 1151 Skylake(BH 36 Tháng .)', CAST(2999986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock Fatal1ty H97 Killer - Haswell LGA 1150(BH 36 Tháng)', CAST(2649988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock H110M-DVS R2.0 - Skylake LGA 1151(BH 36 Tháng)', CAST(1549988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock H110M-HDV - Skylake LGA 1151(BH 36 Tháng)', CAST(1599994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock H110M-HDV/D3 - Skylake LGA 1151(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock H170 Pro4/Hyper - Skylake LGA 1151(BH 36 Tháng)', CAST(3069990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock H81M-DGS - Haswell LGA 1150(BH 36 Tháng)', CAST(1149984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock H81M-G - Haswell LGA 1150(BH 36 Tháng)', CAST(1299980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'ASRock Z170 Extreme 4 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(3949990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock Z270 Extreme4 socket 1151(BH 36 Tháng)', CAST(4599980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock Z270 Gaming K6 Socket 1151(BH 36 Tháng)', CAST(5399988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asrock Z97M Anniversary - Haswell LGA 1150(BH 36 Tháng)', CAST(1999998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus B150 Pro Gaming Aura - LGA 1151 Skylake(BH 36 Tháng .)', CAST(3499980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus B150-A D3 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(1899986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus B150M Pro Gaming - LGA 1151 Skylake (BH 36 Tháng)', CAST(2389992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus B85 Pro Gamer - LGA 1150 (BH 36 Tháng .)', CAST(2389992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus B85M-Gamer - LGA 1150 (BH 36 Tháng .)', CAST(1799996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus E3 Pro Gaming V5 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(3799994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus H110M-E - LGA 1151 Skylake(BH 36 Tháng .)', CAST(1629980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus H170 Plus D3 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(3219986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus H81M-E - LGA 1150 (BH 36 Tháng .)', CAST(1349986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus ROG STRIX X99 GAMING(BH 36 Tháng)', CAST(9499996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus X99-A - LGA 2011-V3 Intel X99(BH 36 Tháng)', CAST(6299986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus X99-A II - LGA 2011-V3 Intel X99(BH 36 Tháng)', CAST(6800002.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus X99-Pro - LGA 2011-V3 Intel X99(BH 36 Tháng)', CAST(7099994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus Z170 Maximus VIII Extreme/Assembly - LGA 1151 Skylake(BH 36 Tháng .)', CAST(18499998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus Z170 Maximus VIII Gene - LGA 1151 Skylake(BH 36 Tháng .)', CAST(6349992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus Z170 Maximus VIII Hero - LGA 1151 Skylake(BH 36 Tháng .)', CAST(6979984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus Z170 Maximus VIII Ranger - LGA 1151 Skylake(BH 36 Tháng .)', CAST(5799992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Asus Z170 Pro Gaming - LGA 1151 Skylake(BH 36 Tháng .)', CAST(4579982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte B150 G1 Sniper B7 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(2750000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte B150M-D3H - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte B150M-HD3-DDR3 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte B250M-D2V LGA 1151(BH 36 Tháng)', CAST(1874994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte B250M-D3H LGA 1151(BH 36 Tháng)', CAST(2339986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte B250M-D3V LGA 1151(BH 36 Tháng)', CAST(2035000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte B85M-D3H - LGA 1150(BH 36 Tháng)', CAST(1959980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GA-X99-Designare EX - LGA 2011-V3 Intel X99(BH 36 Tháng)', CAST(10499984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte H110M-D3V - LGA 1151 Skylake(BH 36 Tháng .)', CAST(1974984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte H110M-DS2-DDR4 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(1629999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte H110M-S2PV-DDR3 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte H170-D3H - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte H170-Gaming 3 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(3339996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte H170M-D3H - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte H270 Gaming 3 LGA 1151(BH 36 Tháng)', CAST(3394996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte H270M-D3H LGA 1151(BH 36 Tháng)', CAST(2964984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte H81M-DS2 - LGA 1150(BH 36 Tháng)', CAST(1379994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte H97-D3H - LGA 1150(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte H97M-D3H - LGA 1150(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte X150 Plus WS- LGA 1151 Skylake(BH 36 Tháng .)', CAST(3099998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte x150m Plus WS- LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte X99-Gaming 5P - LGA 2011-V3 Intel X99(BH 36 Tháng)', CAST(8199994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte X99-SLI - LGA 2011-V3 Intel X99(BH 36 Tháng)', CAST(6699990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte X99-UD4 - LGA 2011-V3 Intel X99(BH 36 Tháng)', CAST(5799992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte X99-Ultra Gaming - LGA 2011-V3 Intel X99(BH 36 Tháng)', CAST(8299984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z170 G1 Gaming - LGA 1151 Skylake(BH 36 Tháng .)', CAST(12699984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z170-D3H - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z170X-Gaming 3 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(4329996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z170X-Gaming 5 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(4950000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z170X-Gaming 7 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z170X-Gaming GT - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z170X-SOC Force - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z170X-UD3 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z170X-UD5 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z170X-Ultra Gaming - LGA 1151 Skylake(BH 36 Tháng .)', CAST(4490002.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z270M-D3H LGA 1151(BH 36 Tháng)', CAST(3575000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z270N-Wifi LGA 1151(BH 36 Tháng)', CAST(4049980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z270X-Gaming 5 LGA 1151(BH 36 Tháng)', CAST(5294982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z270X-Gaming 7 LGA 1151(BH 36 Tháng)', CAST(6374984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z270X-Gaming 9 LGA 1151(BH 36 Tháng)', CAST(13549998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z270X-UD3 LGA 1151(BH 36 Tháng)', CAST(4209986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z270X-Ultra Gaming LGA 1151(BH 36 Tháng)', CAST(4694998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z97-D3H - LGA 1150(BH 36 Tháng)', CAST(3599992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z97M-D3H - LGA 1150(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z97X-Gaming G1 - LGA 1150(BH 36 Tháng)', CAST(5299998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Z97X-Gaming G1 Wifi-BK - LGA 1150(BH 60 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Mainboard Asrock X99 Gaming I7(BH 36 Tháng)', CAST(7499998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Mainboard Asrock X99-Taichi 2011 v3(BH 36 Tháng)', CAST(6099984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'Mainboard Asrock Z170 OC Formula(BH 36 Tháng)', CAST(6999982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'MSI B150A Gaming Pro - LGA 1151 Skylake(BH 36 Tháng .)', CAST(3149982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'MSI B150M Bazoka - LGA 1151 Skylake(BH 36 Tháng .)', CAST(2319988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'MSI B150M Gaming Pro - LGA 1151 Skylake(BH 36 Tháng .)', CAST(2189990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'MSI B150M Mortar - LGA 1151 Skylake(BH 36 Tháng .)', CAST(2399980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'MSI E3 Krait Gaming V5 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(3500002.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'MSI E3M WORKSTATION V5 - LGA 1151 Skylake(BH 36 Tháng .)', CAST(2249984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'MSI H110 Pro VD - LGA 1151 Skylake(BH 36 Tháng .)', CAST(1849999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'MSI H170A Gaming Pro RGB Led - LGA 1151 Skylake(BH 36 Tháng .)', CAST(3449996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[MainIntel] ([Infomation], [Price], [Status]) VALUES (N'MSI Z170A Tomahawk - LGA 1151 Skylake(BH 36 Tháng .)', CAST(3899984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[ODD] ([Infomation], [Price], [Status]) VALUES (N'ASUS DVD-Rom DVD-E818A7T 18X Sata(BH 12 Tháng)', CAST(299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[ODD] ([Infomation], [Price], [Status]) VALUES (N'DVD RW Asus 24B1ST - Sata (BH 12 Tháng)', CAST(385000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[ODD] ([Infomation], [Price], [Status]) VALUES (N'DVD RW LG GH22 Sata (BH 12 Tháng)', CAST(349998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[ODD] ([Infomation], [Price], [Status]) VALUES (N'LG DVD Rom 18X DH18NS40 Sata(BH 12 Tháng)', CAST(254980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N' Gskill Ripjaws V 16GB ( 2x8GB ) Bus 2133 cas 15 - DDR4 Quad Channel (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N' Ram Team Elite Plus 8GB(1x8GB) bus 2133 cas 15(BH 36 Tháng)', CAST(979990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Core Series Blue Led 16GB ( 2x8GB ) Bus 2400 Cas 16 - Dual Channel DDR4(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(2200000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Core Series Blue Led 32GB ( 2x16GB ) Bus 2400 Cas 16 - Dual Channel DDR4(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(3699982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Core Series Blue Led 8GB ( 2x4GB ) Bus 2400 Cas 16 - Dual Channel DDR4(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(1289992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Core Series Red Led 16GB ( 2x8GB ) Bus 2400 Cas 16 - Dual Channel DDR4(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(2200000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Core Series Red Led 32GB ( 2x16GB ) Bus 2400 Cas 16 - Dual Channel DDR4(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(3700004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Core Series Red Led 8GB ( 2x4GB ) Bus 2400 Cas 16 - Dual Channel DDR4(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(1289992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Core Series White Led 16GB ( 2x8GB ) Bus 2400 Cas 16 - Dual Channel DDR4(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(2200000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Core Series White Led 32GB ( 2x16GB ) Bus 2400 Cas 16 - Dual Channel DDR4(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(3700004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Core Series White Led 8GB ( 2x4GB ) Bus 2400 Cas 16 - Dual Channel DDR4(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(1289992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Core Series Yellow Led 16GB ( 2x8GB ) Bus 2400 Cas 16 - Dual Channel DDR4(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(2200000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Core Series Yellow Led 8GB ( 2x4GB ) Bus 2400 Cas 16 - Dual Channel DDR4(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(1289992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Green Tesla 8GB ( 2x4GB ) Bus 3000 Cas 16 - DDR4(BH 60 Tháng 1 đối 1 mới 100% .)', CAST(2799984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir Raiden 8GB ( 2x4GB ) Bus 3000 Cas 16 - DDR4(BH 60 Tháng 1 đối 1 mới 100% .)', CAST(2799984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir ROG Impact 16GB ( 2x8GB ) Bus 2666 Cas 15 - ROG Certified DDR4(BH 60 Tháng 1 đối 1 mới 100% .)', CAST(3700004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir ROG Impact 8GB ( 2x4GB ) Bus 2666 Cas 15 - ROG Certified DDR4(BH 60 Tháng 1 đối 1 mới 100% .)', CAST(2400002.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir ROG Red Tesla 16GB ( 2x8GB ) Bus 2666 Cas 15 - ROG Certified DDR4(BH 60 Tháng 1 đối 1 mới 100% .)', CAST(5899982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Avexir ROG Red Tesla 8GB ( 2x4GB ) Bus 2666 Cas 15 - ROG Certified DDR4(BH 60 Tháng 1 đối 1 mới 100% .)', CAST(3599992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Dominator GT AirFlow(BH )', CAST(807919.20 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Dominator Platinium 16GB ( 2x8GB ) Bus 1866 Cas 9 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Dominator Platinium 16GB ( 4x4GB ) Bus 1866 Cas 9 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Dominator Platinium 16GB ( 4x4GB ) Bus 2666 Cas 16 -DDR4(BH 36 Tháng)', CAST(4342987.88 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Dominator Platinium 8GB ( 2x4GB ) Bus 2133 Cas 9 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance 4GB ( 1x4GB ) DDR3 bus 1600 cas 9 (BH 36 Tháng)', CAST(777700.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance 4GB ( 2x2GB ) DDR3 bus 1600 cas 9 (BH 36 Tháng)', CAST(829983.66 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance 8GB ( 1x8GB ) DDR3 bus 1600(BH 36 Tháng)', CAST(1312979.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance 8GB ( 2x4GB ) DDR3 Bus 1600 SO-DIMM for laptop(BH 36 Tháng .)', CAST(1849992.76 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance Black 8GB ( 2x4GB ) DDR3 bus 1600 cas 9 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance LPX 16GB ( 2x8GB ) Bus 2133 cas 13 - DDR4(BH 36 Tháng)', CAST(2444200.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance LPX 16GB ( 2x8GB ) Bus 2400 cas 14 - DDR4(BH 36 Tháng)', CAST(2625981.82 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance LPX 32GB ( 2x16GB ) Bus 2400 cas 14 - DDR4(BH 36 Tháng)', CAST(5655989.90 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance LPX 8GB ( 1x8GB ) DDR4 bus 2400 cas 14(BH 36 Tháng)', CAST(1349986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance LPX 8GB ( 2x4GB ) Bus 2133 cas 13 - DDR4(BH 36 Tháng)', CAST(1393793.94 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance LPX 8GB ( 2x4GB ) Bus 2400 cas 14 - DDR4(BH 36 Tháng)', CAST(1464497.98 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance LPX Red 16GB ( 2x8GB ) Bus 2400 cas 14 - DDR4(BH 36 Tháng)', CAST(2589985.42 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance Pro Series 16GB ( 2x8GB ) DDR3 bus 1600 cas 9 (BH 36 Tháng)', CAST(2559988.42 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance Pro Series 16GB ( 2x8GB ) DDR3 bus 2133 cas 11(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance Pro Series 16GB ( 2x8GB ) DDR3 bus 2400 cas 11(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance Pro Series 8GB ( 2x4GB ) DDR3 bus 1600 cas 9 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance Pro Series Blue  8GB ( 2x4GB ) DDR3 bus 1600 cas 9 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance Pro Series Red  8GB ( 2x4GB ) DDR3 bus 1600 cas 9 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Corsair Vengeance White LED 16GB (2x8GB) Bus 2666 Cas 16(BH 36 Tháng)', CAST(2799984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Crucial Sodimm 4GB ( 1x4GB ) bus 1600 - DDR3 for Laptop(BH 36 Tháng)', CAST(679998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Geil Evo Potenza 16GB ( 2x8GB ) Bus 2400 - DDR4(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Geil Evo Potenza 8GB ( 2x4GB ) Bus 2400 - DDR4(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Geil Super Luce 16GB ( 2x8GB ) Bus 2400 - DDR4(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Geil Super Luce 8GB ( 2x4GB ) Bus 2400 - DDR4(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Aegis 16GB ( 1x16GB ) Bus 2133 cas 15 - DDR4(BH 36 Tháng)', CAST(1949992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Aegis 4GB ( 1x4GB ) Bus 2133 cas 15 - DDR4(BH 36 Tháng)', CAST(679998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Aegis 4GB ( 1x4GB ) DDR3 Bus 1600 cas 11(BH 36 Tháng)', CAST(649990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Aegis 8GB ( 1x8GB ) Bus 2133 cas 15 - DDR4(BH 36 Tháng)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Aegis 8GB ( 1x8GB ) Bus 2400 cas 15 - DDR4(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Aegis 8GB ( 1x8GB ) DDR3 Bus 1600 cas 11(BH 36 Tháng)', CAST(1149984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill RIPJAWS Gaming Series 4GB ( 1x4GB ) DDR3 Bus 1600 Cas 9(BH 36 Tháng)', CAST(699996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 16GB ( 2x8GB ) Bus 2400 cas 15 - DDR4 Quad Channel(BH 36 Tháng)', CAST(2499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 16GB ( 2x8GB ) Bus 2666 cas 15 - DDR4 Quad Channel(BH 36 Tháng)', CAST(2599982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 16GB ( 2x8GB ) Bus 2800 cas 15 - DDR4 Quad Channel(BH 36 Tháng)', CAST(2459996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 16GB ( 2x8GB ) Bus 3000 cas 15 - DDR4(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 16GB ( 4x4GB ) Bus 2400 cas 15 - DDR4(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 16GB ( 4x4GB ) Bus 2666 cas 15 - DDR4 Quad Channel(BH 36 Tháng)', CAST(2599982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 16GB ( 4x4GB ) Bus 3000 cas 15 - DDR4 Quad Channel(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 16GB ( 4x4GB ) Bus 3200 cas 15 - DDR4(BH 36 Tháng)', CAST(3049992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 32GB ( 2x16GB ) Bus 3200 cas 15 - DDR4(BH 36 Tháng)', CAST(5379990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 32GB ( 4x8GB ) Bus 2666 cas 15 - DDR4 Quad Channel(BH 36 Tháng)', CAST(4070000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 32GB ( 4x8GB ) Bus 2800 cas 15 - DDR4 Quad Channel(BH 36 Tháng)', CAST(4299988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 32GB ( 4x8GB ) Bus 3000 cas 15 - DDR4 Quad Channel(BH 36 Tháng)', CAST(5549984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 32GB ( 4x8GB ) Bus 3200 cas 15 - DDR4(BH 36 Tháng)', CAST(5749986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 8GB ( 2x4GB ) Bus 2133 cas 15 - DDR4 Dual Channel (BH )', CAST(1349986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws V 8GB ( 2x4GB ) Bus 2400 cas 15 - DDR4 Dual Channel(BH 36 Tháng)', CAST(1399992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill RIPJAWS X Gaming Series 8GB ( 1x8GB ) DDR3 Bus 1600(BH 36 Tháng)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill RIPJAWS X Gaming Series 8GB ( 1x8GB ) DDR3 Bus 1866 Cas 10 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill RIPJAWS X Gaming Series 8GB ( 2x4GB ) DDR3 Bus 1866(BH 36 Tháng)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill RIPJAWS X Gaming Series 8GB ( 2x4GB ) DDR3 Bus 2400 cas 11(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Ripjaws4 16GB ( 2x8GB ) Bus 2800 cas 16 - DDR4 Quad Channel(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill TridentZ 16GB ( 2x8GB ) Bus 2800 cas 16 - DDR4(BH 36 Tháng)', CAST(2949980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill TridentZ 16GB ( 2x8GB ) Bus 3200 cas 16 - DDR4(BH 36 Tháng)', CAST(3049992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill TridentZ 32GB ( 4x8GB ) Bus 3200 cas 16 - DDR4(BH 36 Tháng)', CAST(5899982.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Turbulence II 3500 rpm - Fan Ram (BH 12 tháng .)', CAST(399999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Gskill Turbulence III 3500 rpm - Cooler Fan Ram (BH 12 tháng .)', CAST(499994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingmax 4GB ( 1x4GB ) bus 1333 ECC/Registered for Server(BH 12 Tháng - 1 đổi 1 .)', CAST(399999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingston 8GB ( 1x8GB ) bus 1600 ECC/Unbuffered DDR3 - Server(BH 36 Tháng - 1 đổi 1 .)', CAST(2149994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingston HyperX Fury 4GB ( 1x4GB ) bus 2133 - DDR4(BH 36 Tháng .)', CAST(660000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingston HyperX Fury 8GB ( 1x8GB ) bus 2133 - DDR4 (BH 36 Tháng)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingston HyperX Fury Black 4GB ( 1x4GB ) Gaming Series bus 1600 - DDR3 (BH 36 Tháng .)', CAST(679998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingston HyperX Fury Black 4GB ( 1x4GB ) Gaming Series bus 1866 - DDR3 (BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingston HyperX Fury Blue 4GB ( 1x4GB ) Gaming Series bus 1600 - DDR3 (BH 36 Tháng .)', CAST(679998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingston HyperX Fury Blue 4GB ( 1x4GB ) Gaming Series bus 1866 - DDR3 (BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingston HyperX Fury Red 4GB ( 1x4GB ) Gaming Series bus 1600 - DDR3 (BH 36 Tháng .)', CAST(679998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingston HyperX Fury Red 4GB ( 1x4GB ) Gaming Series bus 1866 - DDR3 (BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingston HyperX Fury White 4GB ( 1x4GB ) Gaming Series bus 1600 - DDR3 (BH 36 Tháng .)', CAST(679998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Kingston HyperX Fury White 4GB ( 1x4GB ) Gaming Series bus 1866 - DDR3 (BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Blackline Extreme 4GB ( 1x4GB ) bus 2400 Cas 11 - DDR3 Dual Channel(BH 60 Tháng .)', CAST(849992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Blackline Extreme V2 16GB ( 2x8GB ) bus 2400 cas 15 - DDR4(BH 60 Tháng .)', CAST(2679996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Blackline Extreme V2 4GB ( 1x4GB ) bus 2400 cas 15 - DDR4 (BH 60 Tháng .)', CAST(699996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Blackline Extreme V2 8GB ( 1x8GB ) bus 2400 cas 15 - DDR4(BH 60 Tháng .)', CAST(1359996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Blackline Extreme V2 8GB ( 2x4GB ) bus 2400 cas 15 - DDR4 (BH 60 Tháng .)', CAST(1359996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Blackline Pro 16GB ( 2x8GB ) bus 1600 cas 9 -Low vol DDR3 For Skylake(BH 60 Tháng .)', CAST(2119999.20 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Blackline Pro 4GB ( 1x4GB ) bus 1600 cas 9 -Low vol DDR3 For Skylake(BH 60 Tháng .)', CAST(550000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Blackline Pro 4GB ( 1x4GB ) bus 2400 cas 15 - DDR4 (BH 60 Tháng .)', CAST(574992.00 AS Numeric(28, 2)), N'Có Sẵn')
GO
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Blackline Pro 8GB ( 1x8GB ) bus 1600 cas 9 -Low vol DDR3 For Skylake(BH 60 Tháng .)', CAST(1079999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Blackline Pro 8GB ( 1x8GB ) bus 2400 cas 15 - DDR4 (BH 60 Tháng .)', CAST(999988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Blackline Pro 8GB ( 2x4GB ) bus 1600 cas 9 -Low vol DDR3 For Skylake(BH 60 Tháng .)', CAST(1079999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Essential 16GB ( 2x8GB ) bus 1600 - Low vol DDR3 For Skylake(BH 36 Tháng .)', CAST(1719999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Essential 4GB ( 1x4GB ) bus 1600 - Low vol DDR3 For Skylake(BH 36 Tháng .)', CAST(449988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Essential 8GB ( 1x8GB ) bus 1600 - Low vol DDR3 For Skylake(BH 36 Tháng .)', CAST(880000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Essential 8GB ( 2x4GB ) bus 1600 - Low vol DDR3 For Skylake(BH 36 Tháng .)', CAST(880000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Proline 8GB ( 1x8GB ) bus 1600 - ECC Unbuffered(BH 60 Tháng .)', CAST(1449998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Redline Extreme 4GB ( 1x4GB ) bus 2400 cas 10 - DDR3(BH 60 Tháng .)', CAST(899998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Redline Extreme 8GB ( 2x4GB ) bus 2133 cas 9 - DDR3(BH 60 Tháng .)', CAST(1699984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Redline Extreme 8GB ( 2x4GB ) bus 2400 cas 10 - DDR3 Dual Channel(BH 60 Tháng .)', CAST(1799996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Redline Extreme V2 4GB ( 1x4GB ) bus 2666 cas 15 - DDR4 (BH 60 Tháng .)', CAST(819986.20 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Redline Extreme V2 4GB ( 1x4GB ) bus 3000 cas 15 - DDR4 (BH 60 Tháng .)', CAST(880000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Redline Extreme V2 8GB ( 1x8GB ) bus 3000 cas 15 - DDR4 (BH 60 Tháng .)', CAST(1749990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Redline Pro 4GB ( 1x4GB ) bus 2666 cas 15 - DDR4 (BH 60 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Redline Pro 8GB ( 2x4GB ) bus 2400 cas 10 - DDR3 Dual Channel (BH 60 Tháng .)', CAST(1549988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Redline Pro 8GB ( 2x4GB ) bus 2400 cas 13 - DDR4 (BH 60 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Sodim 16GB ( 2x8GB ) bus 1866 - DDR3 Notebook Ram(BH 36 Tháng .)', CAST(1949992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Sodim 4GB ( 1x4GB ) bus 1866 - DDR3 Notebook Ram(BH 36 Tháng .)', CAST(550000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Sodim 8GB ( 1x8GB ) bus 1866 - DDR3 Notebook Ram(BH 36 Tháng .)', CAST(974996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Sodim 8GB ( 2x4GB ) bus 1866 - DDR3 Notebook Ram(BH 36 Tháng .)', CAST(1100000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Sodim Low Vol 4GB ( 1x4GB ) bus 1600 - DDR3 Notebook Ram for Haswell(BH 36 Tháng .)', CAST(519992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Sodim Low Vol 4GB ( 1x4GB ) bus 1866 - DDR3 Notebook Ram for Haswell/Skylake(BH 36 Tháng .)', CAST(569998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Mushkin Enhanced Sodim Low Vol 8GB ( 1x8GB ) bus 1866 - DDR3 Notebook Ram for Haswell/Skylake(BH 36 Tháng .)', CAST(1119998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Panram Gaming Light Sword 16GB ( 2x8GB ) bus 1600 - LED DDR3 (BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(3019984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Panram Gaming Light Sword 4GB ( 1x4GB ) bus 1600 - LED DDR3 (BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(779988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Panram Gaming Light Sword 8GB ( 1x8GB ) bus 1600 - LED DDR3 (BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(1509992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[RAM] ([Infomation], [Price], [Status]) VALUES (N'Panram Gaming Light Sword 8GB ( 2x4GB ) bus 1600 - LED DDR3 (BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(1559998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'Avexir SSD E100 240GB True Speed - Sata 3 SSD(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(1849999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'Avexir SSD S100 Blue Led 120GB True Speed - MLC Sata 3 SSD(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(2099988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'Avexir SSD S100 Green Led 120GB True Speed - MLC Sata 3 SSD(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(2099988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'Avexir SSD S100 Red Led 120GB True Speed - MLC Sata 3 SSD(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(2099988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'Avexir SSD S100 White Led 120GB True Speed - MLC Sata 3 SSD(BH 36 Tháng 1 đối 1 mới 100% .)', CAST(2099988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'Kingston SSDNow V300 120 GB Sata 3 (BH 36 Tháng)', CAST(1149984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'Kingston SSDNow V300 240 GB Sata 3 (BH 36 Tháng)', CAST(2799984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'Panram Velocity 120GB - True Speed SSD Sata 3(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'Panram Velocity 240GB - True Speed SSD Sata 3(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Corsair Force LE 240GB - Sata 3(BH 36 Tháng)', CAST(2029996.98 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Corsair Force LE 480GB - Sata 3(BH 36 Tháng)', CAST(3849992.74 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Corsair Force LE 960GB - Sata 3(BH 36 Tháng)', CAST(8599984.36 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Crucial M550 128GB - Sata 3 True Speed(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Lite-On MU II 120GB - Sata 3(BH 36 tháng .)', CAST(990000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Lite-On MU II 240GB - Sata 3(BH 36 tháng .)', CAST(1679986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Mushkin Enhanced  Reactor 7mm 1TB - Sata 3 True Speed(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Mushkin Enhanced  Striker 7mm 240GB - Sata 3 True Speed(BH 36 Tháng .)', CAST(2299990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Mushkin Enhanced  Striker 7mm 480GB - Sata 3 True Speed(BH 36 Tháng .)', CAST(4250004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Mushkin Enhanced Atlas Deluxe 240GB  Read 560MB/s - Write 530MB/s - mSata 3(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Mushkin Enhanced Chronos 7mm 120GB  Read 555MB/s - Write 525MB/s - Sata 3(BH 36 Tháng .)', CAST(1299999.80 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Mushkin Enhanced Chronos 7mm 240GB  Read 560MB/s - Write 525MB/s - Sata 3(BH 36 Tháng .)', CAST(2099988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Mushkin Enhanced Chronos G2 7mm 120GB  Read 555MB/s - Write 525MB/s - Sata 3(BH 36 Tháng .)', CAST(1349986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Mushkin Enhanced Chronos G2 7mm 240GB  Read 555MB/s - Write 535MB/s - Sata 3(BH 36 Tháng .)', CAST(2200000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Mushkin Enhanced Chronos GO 120GB  - 1.8(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Mushkin Enhanced Chronos GO 240GB  - 1.8(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Mushkin Enhanced Triactor 7mm 240GB - Sata 3 True Speed(BH 36 Tháng .)', CAST(1899986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD OCZ Trion 100 120GB Sata 3 - True Speed(BH 36 tháng .)', CAST(1249996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD OCZ Trion 150 120GB Sata 3 - True Speed(BH 36 tháng .)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD OCZ Trion 240GB Sata 3 - True Speed(BH 36 tháng .)', CAST(2699994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor M6 Pro 128GB - True Speed Sata 3(BH 60 tháng .)', CAST(1899986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor M6 Pro 256GB - True Speed Sata 3(BH 60 tháng .)', CAST(3190000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor M6 Pro 512GB - True Speed Sata 3(BH 60 tháng .)', CAST(6549994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor M6S+ 128GB - True Speed Sata 3(BH 36 tháng .)', CAST(1499999.60 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor M6S+ 256GB - True Speed Sata 3(BH 36 tháng .)', CAST(2499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor M6V 128GB - True Speed Sata 3(BH 36 tháng .)', CAST(1349999.20 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor M6V 256GB - True Speed Sata 3(BH 36 tháng .)', CAST(2194984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor M6V 512GB - True Speed Sata 3(BH 36 tháng .)', CAST(3799994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor M7V 128GB - True Speed Sata 3(BH 36 tháng .)', CAST(1199990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor M7V 256GB - True Speed Sata 3(BH 36 tháng .)', CAST(1929994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor S1C 128GB - Sata 3(BH 36 Tháng)', CAST(1179992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Plextor S1C 256GB - Sata 3(BH 36 Tháng)', CAST(1949992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Samsung 850 EVO 120GB - True Speed Sata 3(BH 60 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Samsung 850 EVO 250GB - True Speed Sata 3(BH 60 Tháng .)', CAST(2649988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[SSD] ([Infomation], [Price], [Status]) VALUES (N'SSD Samsung 850 EVO 500GB - True Speed Sata 3(BH 60 Tháng .)', CAST(4749998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N' Gigabyte Geforce GTX 1050 OC 2GB ( 128bit ) DDR5 (BH 36 Tháng)', CAST(3609980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N' Gigabyte Geforce GTX 1050 TI 4GB ( 128bit ) DDR5 (BH 36 Tháng)', CAST(4149992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N' Gigabyte Geforce GTX 1050 TI G1 Gaming 4GB ( 128bit ) DDR5 (BH 36 Tháng)', CAST(4950000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N' Gigabyte Geforce GTX 1050 TI OC 4GB ( 128bit ) DDR5 (BH 36 Tháng)', CAST(4394984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N' Gigabyte Geforce GTX 1060 D5 3GB ( 192 bit ) DDR5 (BH 36 Tháng)', CAST(5699980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N' Gigabyte Geforce GTX 1060 Extreme Gaming 6GB ( 192 bit ) DDR5 (BH 36 Tháng)', CAST(8733750.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N' Gigabyte Geforce GTX 1070 Extreme Gaming 8GB ( 256 bit ) DDR5 (BH 36 Tháng)', CAST(12799996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N' GIGABYTE Radeon RX 470 G1 Gaming 4GB (BH 36 Tháng)', CAST(5889994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N' MSI Nvidia GTX 1050 Ti OC 4GB (BH 36 Tháng)', CAST(4199998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N' MSI Nvidia GTX 1060 ARMOR 6GB OC( 192 Bit ) DDR5 (BH 36 Tháng)', CAST(7399986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N' MSI Nvidia GTX 1060 Gaming X 6GB( 192 Bit ) DDR5 (BH 36 Tháng)', CAST(7899980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N': Asus Nvidia GTX 1060 Dual OC 6GB ( 192 Bit ) DDR5 (BH 36 Tháng)', CAST(6699990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 1050Ti Expedition 4GB ( 128 Bit ) DDR5 (BH 36 Tháng)', CAST(4250004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 1060 Strix OC RGB LED 6GB ( 192 Bit ) DDR5(BH 36 Tháng)', CAST(8989992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 1070 Strix 8GB Gaming ( 256 Bit ) DDR5(BH 36 Tháng)', CAST(12449998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 1070 Strix OC RGB LED 8GB ( 256 Bit ) DDR5(BH 36 Tháng)', CAST(13499992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 1080 Strix A8GB Gaming ( 256 Bit ) DDR5(BH 36 Tháng)', CAST(17799980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 1080 Strix OC 8GB ( 256 Bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 750 Ti Dual Fan OC 2GB ( 128 Bit ) DDR5 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 750 Ti Strix Edition 2GB ( 128 Bit ) DDR5 (BH 36 Tháng)', CAST(3300000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 950 Dual Fan OC 2GB ( 128 Bit ) DDR5 (BH 36 Tháng)', CAST(4099986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 950 Strix Gaming OC 2GB ( 128 Bit ) DDR5 (BH 36 Tháng)', CAST(4499990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 960 Strix Edition 2GB ( 128 Bit ) DDR5 (BH 36 Tháng)', CAST(5500000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 960 Strix Edition 4GB ( 128 Bit ) DDR5 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 960 Turbo OC 2GB ( 128 Bit ) DDR5 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 970 Strix Edition 4GB ( 256 Bit ) DDR5 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 980Ti Gold Anniversary Limited Edition 6GB ( 384 Bit ) DDR5 (BH 36 Tháng)', CAST(22000000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 980Ti OC Strix Edition 6GB ( 384 Bit ) DDR5(BH 36 Tháng)', CAST(18299996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus Nvidia GTX 980Ti Strix Edition 6GB ( 384 Bit ) DDR5 (BH 36 Tháng)', CAST(16500000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus R7 260X Direct CU II OC 1GB ( 128 Bit ) DDR5(BH 36 Tháng)', CAST(2600004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus R7 260X Direct CU II OC 2GB ( 128 Bit ) DDR5(BH 36 Tháng)', CAST(2799984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus RX470 Strix OC 4GB ( 256 Bit ) DDR5(BH 36 Tháng)', CAST(5240004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Asus RX480 Dual Fan OC 4GB ( 256 Bit ) DDR5(BH 36 Tháng)', CAST(5900004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Geforce GTX 1060 G1 Gaming 6GB ( 192 bit ) DDR5(BH 36 Tháng)', CAST(8100004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Geforce GTX 1070 Founders Edition 8GB ( 256 bit ) DDR5(BH 36 Tháng)', CAST(12449998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Geforce GTX 1070 G1 Gaming 8GB ( 256 bit ) DDR5(BH 36 Tháng)', CAST(11990000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Geforce GTX 1080  Xtreme Gaming Water cooling 8GB ( 256 bit ) DDR5(BH 36 Tháng)', CAST(22399960.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Geforce GTX 1080 Founders Edition 8GB ( 256 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Geforce GTX 1080 G1 Gaming 8GB ( 256 bit ) DDR5(BH 36 Tháng)', CAST(17989994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte Geforce GTX 1080 Xtreme Gaming Premium 8GB ( 256 bit ) DDR5(BH 36 Tháng)', CAST(19849984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GT 730 2GB ( 64 bit ) DDR5(BH 36 Tháng)', CAST(1650000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GT 740 OC 1GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GT 740 OC 2GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX  950 2GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX  950 OC 2GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX  950 Windforce 2GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX  960 OC 4GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX  980 G1 Gaming 4GB ( 256 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX  980 Ti G1 Gaming 6GB ( 384 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX 750 Ti 2GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX 750 Ti WindForce OC 2GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX 960 G1 Gaming 4GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX 960 Windforce2 OC 4GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX 960 Xtreme Gaming 4GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX 970 Xtreme Gaming OC 4GB ( 256 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX 980Ti Extreme 6GB ( 384 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte GTX 980Ti Extreme Water Cooling 6GB ( 384 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte R7 240 OC 2GB ( 128 bit ) DDR3 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte R7 250X OC 2GB ( 128 bit ) DDR5 (BH 36 Tháng)', CAST(2750000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte R7 260X OC 1GB ( 128 bit ) DDR5 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte R7 260X Windforce 2GB ( 128 bit ) DDR5 (BH 36 Tháng)', CAST(3789984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte RX 480 8GB ( 256 bit ) DDR5 (BH 36 Tháng)', CAST(7349980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Gigabyte TitanX Xtreme 12GB ( 384 bit ) DDR5(BH 36 Tháng)', CAST(27500000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'HIS HD 7730 iCooler Boost Clock 1GB ( 128 bit ) DDR5 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'HIS R7 240 iCooler Boost Clock 2GB ( 128 bit ) DDR5 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'HIS R7 250 IceQ Boost Clock 2GB ( 128 bit ) DDR5 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'HIS R7 250X Icooler 1GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'HIS R7 260X IceQ X2 1GB ( 128 bit ) DDR5 (BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'HIS R7 360 iCooler OC 2GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'HIS R7 370 IceQ X2 OC 2GB ( 256 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'HIS R9 390X IceQ X2 8GB ( 512 bit ) DDR5 (BH 36 Tháng)', CAST(10499984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'HIS RX 470 IceQ X² OC 4GB ( 256 bit ) DDR5 (BH 36 Tháng)', CAST(5299998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'HIS RX 480 Fan 8GB ( 256 bit ) DDR5 (BH 36 Tháng)', CAST(7199984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'HIS RX 480 IceQ X² Roaring OC 8GB ( 256 bit ) DDR5 (BH 36 Tháng)', CAST(7499998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'MSI Nvidia GTX 1060 3GT OC ( 192 Bit ) DDR5 (BH 36 Tháng)', CAST(5710540.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'MSI Nvidia GTX 1060 Tiger OC 6GB ( 192 Bit ) DDR5 (BH 36 Tháng .)', CAST(6899992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'MSI Nvidia GTX 750 Ti Twin Frozr 2GB ( 128 Bit ) DDR5 (BH 36 Tháng .)', CAST(3199988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Fermi 2000(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Fermi 400(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Fermi 4000(BH 12 Tháng .)', CAST(17499988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Fermi 600(BH 12 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro K1200 - Workstation Video Card(BH 36 Tháng .)', CAST(11199980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro K4200 - Workstation Video Card(BH 36 Tháng .)', CAST(22999900.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Kepler K2000 - Workstation Video Card(BH 36 Tháng .)', CAST(12799996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Kepler K4000 - Workstation Video Card(BH 36 Tháng .)', CAST(21799998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Kepler K5000 - Workstation Video Card(BH 36 Tháng .)', CAST(49800080.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Kepler K600 - Workstation Video Card(BH 36 Tháng .)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Kepler K6000 - Workstation Video Card(BH 36 Tháng .)', CAST(108999880.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro M2000 - Workstation Video Card(BH 36 Tháng .)', CAST(11990000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro M4000 - Workstation Video Card(BH 36 Tháng .)', CAST(24999920.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro M5000 - Workstation Video Card(BH 36 Tháng .)', CAST(49500000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro M6000 - Workstation Video Card(BH 36 Tháng .)', CAST(129000080.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Maxwell K2200 - Workstation Video Card(BH 36 Tháng .)', CAST(13799984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Maxwell K620 - Workstation Video Card(BH 36 Tháng .)', CAST(5149980.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Nvidia Quadro Tesla K40 - Workstation Video Card(BH 36 Tháng .)', CAST(99900020.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit G-Panel USB 3.0 VGA Card Monitoring (BH 12 Tháng 1 đổi 1 mới 100% .)', CAST(1699984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GT 710 2GB ( 64 Bit ) DDR3(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(799986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GT 730 1GB ( 64 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(1379994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GT 730 2GB ( 64 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(1379994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 1050 StormX 2GB ( 128 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(2950002.00 AS Numeric(28, 2)), N'Có Sẵn')
GO
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 1050 Ti StormX 4GB ( 128 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(3500002.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 1060 Dual Fan 3GB ( 192 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(5500000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 1060 Dual Fan 6GB ( 192 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(6699990.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 1060 Super Jetstream RGB Led 6GB ( 192 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(7399986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 1070 Dual Fan 8GB ( 256 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(10499984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 1070 Game Rock RGB Led 8GB ( 256 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(11299992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 1070 Super Jetstream RGB Led 8GB ( 256 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(10999780.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 1080 GameRock Premium RGB Led 8GB ( 256 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(17899992.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 1080 Super JetStream RGB Led 8GB ( 256 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(17199996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 750 Ti StormX 1GB ( 128 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(2449986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 750 Ti StormX Dual 2GB ( 128 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(2750000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 950 StormX Dual 2GB ( 128 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(3449996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 960 JetStream 2GB ( 128 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(4299988.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Palit Nvidia GTX 960 JetStream 4GB ( 128 Bit ) DDR5(BH 36 Tháng 1 đổi 1 mới 100% .)', CAST(4800004.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'PowerColor R7 240 1GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(1349986.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'PowerColor R7 250X 2GB ( 128 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'PowerColor TurboDuo R9 280X OC 2GB ( 256 bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Sapphire RX 460 Dual Fan OC 2GB ( 128 Bit ) DDR5(BH 36 Tháng .)', CAST(2879998.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Sapphire RX 460 Nitro+ OC 4GB ( 128 Bit ) DDR5(BH 36 Tháng .)', CAST(3579994.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Sapphire RX 470 Nitro+ RGB Led OC 8GB ( 256 Bit ) DDR5 (BH 36 Tháng .)', CAST(6099984.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Sapphire RX 470 Titanium OC 4GB ( 256 Bit ) DDR5(BH 36 Tháng .)', CAST(4950000.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'Sapphire RX 480 Nitro+ RGB Led OC 8GB ( 256 Bit ) DDR5  (BH 36 Tháng .)', CAST(7299996.00 AS Numeric(28, 2)), N'Có Sẵn')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'XFX HD7790 Double Dissipation OC 1GB ( 128 Bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
INSERT [dbo].[VGA] ([Infomation], [Price], [Status]) VALUES (N'XFX R7 260X Core Edition OC 2GB ( 128 Bit ) DDR5(BH 36 Tháng)', CAST(0.00 AS Numeric(28, 2)), N'Hết Hàng')
USE [master]
GO
ALTER DATABASE [Computer] SET  READ_WRITE 
GO
