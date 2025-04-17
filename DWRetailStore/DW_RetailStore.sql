USE [master]
GO
/****** Object:  Database [RetailDW]    Script Date: 4/17/2025 1:51:22 PM ******/
CREATE DATABASE [RetailDW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RetailDW', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RetailDW.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RetailDW_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\RetailDW_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [RetailDW] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RetailDW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RetailDW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RetailDW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RetailDW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RetailDW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RetailDW] SET ARITHABORT OFF 
GO
ALTER DATABASE [RetailDW] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RetailDW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RetailDW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RetailDW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RetailDW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RetailDW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RetailDW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RetailDW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RetailDW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RetailDW] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RetailDW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RetailDW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RetailDW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RetailDW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RetailDW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RetailDW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RetailDW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RetailDW] SET RECOVERY FULL 
GO
ALTER DATABASE [RetailDW] SET  MULTI_USER 
GO
ALTER DATABASE [RetailDW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RetailDW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RetailDW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RetailDW] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RetailDW] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RetailDW] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RetailDW', N'ON'
GO
ALTER DATABASE [RetailDW] SET QUERY_STORE = ON
GO
ALTER DATABASE [RetailDW] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [RetailDW]
GO
/****** Object:  Table [dbo].[Branch1]    Script Date: 4/17/2025 1:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch1](
	[CustomerID] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[product] [nvarchar](50) NOT NULL,
	[Price] [nchar](10) NOT NULL,
	[NetPrice] [decimal](18, 2) NULL,
	[Discount] [nchar](10) NOT NULL,
	[SaleDate] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NULL,
	[SaleID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch2]    Script Date: 4/17/2025 1:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch2](
	[CustomerID] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[product] [nvarchar](50) NOT NULL,
	[Price] [nchar](10) NOT NULL,
	[NetPrice] [decimal](18, 2) NULL,
	[Discount] [nchar](10) NOT NULL,
	[SaleDate] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[SaleID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Branch3]    Script Date: 4/17/2025 1:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch3](
	[CustomerID] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[product] [nvarchar](50) NOT NULL,
	[Price] [nchar](10) NOT NULL,
	[NetPrice] [decimal](18, 2) NULL,
	[Discount] [nchar](10) NOT NULL,
	[SaleDate] [nvarchar](50) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
	[SaleID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invalid_Customer]    Script Date: 4/17/2025 1:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invalid_Customer](
	[customerID] [nvarchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [RetailDW] SET  READ_WRITE 
GO
