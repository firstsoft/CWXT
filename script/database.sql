USE [master]
GO
/****** 对象:  Database [CWXT]    脚本日期: 12/27/2014 15:10:30 ******/
CREATE DATABASE [CWXT] ON  PRIMARY 
( NAME = N'CWXT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CWXT.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CWXT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\CWXT_1.ldf' , SIZE = 43264KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE Chinese_PRC_CI_AS
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'CWXT', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CWXT].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [CWXT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CWXT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CWXT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CWXT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CWXT] SET ARITHABORT OFF 
GO
ALTER DATABASE [CWXT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CWXT] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CWXT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CWXT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CWXT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CWXT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CWXT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CWXT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CWXT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CWXT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CWXT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CWXT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CWXT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CWXT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CWXT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CWXT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CWXT] SET  READ_WRITE 
GO
ALTER DATABASE [CWXT] SET RECOVERY FULL 
GO
ALTER DATABASE [CWXT] SET  MULTI_USER 
GO
ALTER DATABASE [CWXT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CWXT] SET DB_CHAINING OFF 