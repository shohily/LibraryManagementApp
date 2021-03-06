USE [master]
GO
/****** Object:  Database [DB_LibraryBookManagement]    Script Date: 6/3/2015 8:38:51 AM ******/
CREATE DATABASE [DB_LibraryBookManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_LibraryBookManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_LibraryBookManagement.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_LibraryBookManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_LibraryBookManagement_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_LibraryBookManagement] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_LibraryBookManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_LibraryBookManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET  MULTI_USER 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_LibraryBookManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_LibraryBookManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DB_LibraryBookManagement]
GO
/****** Object:  Table [dbo].[LibraryManagement_Table]    Script Date: 6/3/2015 8:38:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LibraryManagement_Table](
	[BookId] [varchar](50) NULL,
	[BookName] [varchar](50) NULL,
	[AuthorName] [varchar](50) NULL,
	[Edition] [varchar](50) NULL,
	[Genre] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LibraryManagement_Table] ([BookId], [BookName], [AuthorName], [Edition], [Genre]) VALUES (N'11', N'Software', N'MD. Rana', N'5th', N'01120')
INSERT [dbo].[LibraryManagement_Table] ([BookId], [BookName], [AuthorName], [Edition], [Genre]) VALUES (N'23', N'Bangla', N'Soma', N'3rd', N'33378')
INSERT [dbo].[LibraryManagement_Table] ([BookId], [BookName], [AuthorName], [Edition], [Genre]) VALUES (N'02', N'Compiler', N'Najmul', N'2nd', N'00222')
INSERT [dbo].[LibraryManagement_Table] ([BookId], [BookName], [AuthorName], [Edition], [Genre]) VALUES (N'03', N'Software Design', N'Md. Maruzur Rahman', N'7th', N'000334')
USE [master]
GO
ALTER DATABASE [DB_LibraryBookManagement] SET  READ_WRITE 
GO
