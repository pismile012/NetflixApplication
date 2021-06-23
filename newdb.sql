USE [master]
GO
/****** Object:  Database [DB_Digam_Netfix]    Script Date: 6/23/2021 5:29:07 PM ******/
CREATE DATABASE [DB_Digam_Netfix]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Digam_Netfix', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.VANNGUYEN\MSSQL\DATA\DB_Digam_Netfix.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_Digam_Netfix_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.VANNGUYEN\MSSQL\DATA\DB_Digam_Netfix_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_Digam_Netfix] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Digam_Netfix].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Digam_Netfix] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_Digam_Netfix] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Digam_Netfix] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Digam_Netfix] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_Digam_Netfix] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Digam_Netfix] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_Digam_Netfix] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Digam_Netfix] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Digam_Netfix] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Digam_Netfix] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Digam_Netfix] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DB_Digam_Netfix] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DB_Digam_Netfix]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/23/2021 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Account_ID] [int] NOT NULL,
	[Account_FName] [nvarchar](50) NULL,
	[Account_LName] [nvarchar](50) NULL,
	[Account_Email] [nvarchar](50) NULL,
	[Account_Phone] [nvarchar](50) NULL,
	[Account_Address] [nvarchar](50) NULL,
	[Account_Login] [nvarchar](50) NULL,
	[Account_Password] [nvarchar](50) NULL,
	[Account_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Actor]    Script Date: 6/23/2021 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[Actor_ID] [int] NOT NULL,
	[Actor_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY CLUSTERED 
(
	[Actor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AddMovie]    Script Date: 6/23/2021 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddMovie](
	[Movie_ID] [int] NOT NULL,
	[Admin_ID] [int] NOT NULL,
 CONSTRAINT [PK_AddMovie] PRIMARY KEY CLUSTERED 
(
	[Movie_ID] ASC,
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/23/2021 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_ID] [int] NOT NULL,
	[Category_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Director]    Script Date: 6/23/2021 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[Director_ID] [int] NOT NULL,
	[Director_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[Director_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DirectorMovie]    Script Date: 6/23/2021 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DirectorMovie](
	[Director_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
 CONSTRAINT [PK_DirectorMovie] PRIMARY KEY CLUSTERED 
(
	[Director_ID] ASC,
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 6/23/2021 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[Inventory_ID] [int] NOT NULL,
	[Inventory_Stock] [nvarchar](50) NULL,
	[Movie_ID] [int] NOT NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[Inventory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movie]    Script Date: 6/23/2021 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[Movie_ID] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Movie_Name] [nvarchar](50) NULL,
	[Movie_Lenght] [float] NULL,
	[Movie_Year] [int] NULL,
	[Movie_Describe] [nvarchar](50) NULL,
	[Movie_Rating] [int] NULL,
	[Movie_Trailer] [nvarchar](50) NULL,
	[Movie_View] [int] NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MovieActor]    Script Date: 6/23/2021 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovieActor](
	[Movie_ID] [int] NOT NULL,
	[Actor_ID] [int] NOT NULL,
 CONSTRAINT [PK_MovieActor] PRIMARY KEY CLUSTERED 
(
	[Movie_ID] ASC,
	[Actor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Queue]    Script Date: 6/23/2021 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Queue](
	[Queue_ID] [int] NOT NULL,
	[Inventory_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Date_Add] [date] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Queue] PRIMARY KEY CLUSTERED 
(
	[Queue_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rental]    Script Date: 6/23/2021 5:29:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental](
	[Rental_ID] [int] NOT NULL,
	[Rental_Date] [int] NULL,
	[Return_Date] [int] NULL,
	[Inventory_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
 CONSTRAINT [PK_Rental] PRIMARY KEY CLUSTERED 
(
	[Rental_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AddMovie]  WITH CHECK ADD  CONSTRAINT [FK_AddMovie_Customer] FOREIGN KEY([Admin_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[AddMovie] CHECK CONSTRAINT [FK_AddMovie_Customer]
GO
ALTER TABLE [dbo].[AddMovie]  WITH CHECK ADD  CONSTRAINT [FK_AddMovie_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[AddMovie] CHECK CONSTRAINT [FK_AddMovie_Movie]
GO
ALTER TABLE [dbo].[DirectorMovie]  WITH CHECK ADD  CONSTRAINT [FK_DirectorMovie_Director] FOREIGN KEY([Director_ID])
REFERENCES [dbo].[Director] ([Director_ID])
GO
ALTER TABLE [dbo].[DirectorMovie] CHECK CONSTRAINT [FK_DirectorMovie_Director]
GO
ALTER TABLE [dbo].[DirectorMovie]  WITH CHECK ADD  CONSTRAINT [FK_DirectorMovie_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[DirectorMovie] CHECK CONSTRAINT [FK_DirectorMovie_Movie]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Movie]
GO
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD  CONSTRAINT [FK_Movie_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([Category_ID])
GO
ALTER TABLE [dbo].[Movie] CHECK CONSTRAINT [FK_Movie_Category]
GO
ALTER TABLE [dbo].[MovieActor]  WITH CHECK ADD  CONSTRAINT [FK_MovieActor_Actor] FOREIGN KEY([Actor_ID])
REFERENCES [dbo].[Actor] ([Actor_ID])
GO
ALTER TABLE [dbo].[MovieActor] CHECK CONSTRAINT [FK_MovieActor_Actor]
GO
ALTER TABLE [dbo].[MovieActor]  WITH CHECK ADD  CONSTRAINT [FK_MovieActor_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[MovieActor] CHECK CONSTRAINT [FK_MovieActor_Movie]
GO
ALTER TABLE [dbo].[Queue]  WITH CHECK ADD  CONSTRAINT [FK_Queue_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[Queue] CHECK CONSTRAINT [FK_Queue_Customer]
GO
ALTER TABLE [dbo].[Queue]  WITH CHECK ADD  CONSTRAINT [FK_Queue_Inventory] FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Queue] CHECK CONSTRAINT [FK_Queue_Inventory]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Customer]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Inventory] FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Inventory]
GO
USE [master]
GO
ALTER DATABASE [DB_Digam_Netfix] SET  READ_WRITE 
GO
