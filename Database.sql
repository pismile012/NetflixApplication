USE [master]
GO
/****** Object:  Database [DB_Digam_Netfix]    Script Date: 7/9/2021 10:19:37 AM ******/
CREATE DATABASE [DB_Digam_Netfix]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Digam_Netfix', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.VANNGUYEN\MSSQL\DATA\DB_Digam_Netfix.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_Digam_Netfix_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.VANNGUYEN\MSSQL\DATA\DB_Digam_Netfix_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[Account]    Script Date: 7/9/2021 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Account_ID] [int] IDENTITY(1,1) NOT NULL,
	[Account_FName] [nvarchar](50) NULL,
	[Account_LName] [nvarchar](50) NULL,
	[Account_Email] [nvarchar](50) NULL,
	[Account_Phone] [nvarchar](50) NULL,
	[Account_Address] [nvarchar](50) NULL,
	[Account_Password] [nvarchar](50) NULL,
	[Account_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Account_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Actor]    Script Date: 7/9/2021 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[Actor_ID] [int] IDENTITY(1,1) NOT NULL,
	[Actor_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY CLUSTERED 
(
	[Actor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/9/2021 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Director]    Script Date: 7/9/2021 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[Director_ID] [int] IDENTITY(1,1) NOT NULL,
	[Director_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[Director_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DirectorMovie]    Script Date: 7/9/2021 10:19:38 AM ******/
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
/****** Object:  Table [dbo].[Movie]    Script Date: 7/9/2021 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movie](
	[Movie_ID] [int] IDENTITY(1,1) NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Movie_Name] [nvarchar](100) NULL,
	[Movie_Lenght] [float] NULL,
	[Movie_Year] [int] NULL,
	[Movie_Describe] [nvarchar](500) NULL,
	[Movie_Posting] [image] NULL,
	[Movie_Trailer] [nvarchar](50) NULL,
	[Movie_View] [varbinary](1) NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MovieActor]    Script Date: 7/9/2021 10:19:38 AM ******/
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
/****** Object:  Table [dbo].[MyList]    Script Date: 7/9/2021 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyList](
	[Mylist_ID] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
 CONSTRAINT [PK_MyList] PRIMARY KEY CLUSTERED 
(
	[Mylist_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rating]    Script Date: 7/9/2021 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Customer_ID] [int] NOT NULL,
	[Movie_ID] [int] NOT NULL,
	[Rating_Point] [int] NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC,
	[Movie_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rental]    Script Date: 7/9/2021 10:19:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental](
	[Rental_ID] [int] IDENTITY(1,1) NOT NULL,
	[Rental_Date] [int] NULL,
	[Return_Date] [int] NULL,
	[Customer_ID] [int] NOT NULL,
	[Account_Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rental] PRIMARY KEY CLUSTERED 
(
	[Rental_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Account_ID], [Account_FName], [Account_LName], [Account_Email], [Account_Phone], [Account_Address], [Account_Password], [Account_Type]) VALUES (1, N'Văn', N'Nguyễn', N'vannguyen0708@gmail.com', NULL, NULL, N'db69fc039dcbd2962cb4d28f5891aae1', N'Admin')
INSERT [dbo].[Account] ([Account_ID], [Account_FName], [Account_LName], [Account_Email], [Account_Phone], [Account_Address], [Account_Password], [Account_Type]) VALUES (2, N'Trí', N'Nguyễn', N'nguyentri291999@gmail.com', N'0981192881', N'194 Bạch Đằng, Sài Gòn', N'978aae9bb6bee8fb75de3e4830a1be46', N'User')
INSERT [dbo].[Account] ([Account_ID], [Account_FName], [Account_LName], [Account_Email], [Account_Phone], [Account_Address], [Account_Password], [Account_Type]) VALUES (3, N'Van ', N'Nguyen', N'vannguyen@gmail.com', NULL, NULL, N'6b2cd8cb828804a3d48f7baaa6de5a5e', N'User')
INSERT [dbo].[Account] ([Account_ID], [Account_FName], [Account_LName], [Account_Email], [Account_Phone], [Account_Address], [Account_Password], [Account_Type]) VALUES (4, N'Văn', N'Nguyên', N'vannguyen123@gmail.com', NULL, NULL, N'6b2cd8cb828804a3d48f7baaa6de5a5e', N'User')
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Actor] ON 

INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (1, N'Vin Diesel')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (2, N'Michelle Rodriguez')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (3, N'Sylvester StalloneRay')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (4, N'Dave Bautista Trent')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (5, N'Margot Robbie')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (6, N'Jared Leto')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (7, N'Daniel Craig')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (8, N'Rami Malek')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (9, N'Léa Seydoux')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (10, N'Naomie Harris')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (11, N'Tom Cruise')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (12, N'Rebecca Ferguson')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (13, N'Henry Cavill')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (14, N'Vanessa Kirby')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (15, N'Steve Carell')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (16, N'Lucy Lawless')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (17, N'Michelle Yeoh')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (18, N'Rebel Wilson')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (19, N'Anne Hathaway')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (20, N'Alex Sharp')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (21, N'Ingrid Oliver')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (22, N'Beyoncé')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (23, N'Donald Glover')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (24, N'James Earl Jones')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (25, N'Seth Rogen')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (26, N'Mowgli')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (27, N'Baloo')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (28, N'Kaa')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (29, N'Bagheera')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (30, N'Alec Baldwin')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (31, N'Lisa Kudrow')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (32, N'Jimmy Kimmel')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (33, N'Ariana Greenblatt')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (34, N'Christian Bale')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (35, N'Heath Ledger')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (36, N'Gary Oldman')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (37, N'Michael Caine')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (38, N'Ma Dong‑seok')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (39, N'Kim Ah‑joong')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (40, N'Jang Ki‑yong')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (41, N'Dong ‑ Hyuk Cho')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (42, N'Kenneth Branagh')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (43, N'Johnny Depp')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (44, N'Daisy Ridley')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (45, N'Michelle Pfeiffer')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (46, N'Melanie Lynskey')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (47, N'Elijah Wood')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (48, N'Macon Blair')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (49, N'Jane Levy')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (50, N'Ahn Sung‑ki')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (51, N'Choi Woo‑sik')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (52, N'Park Ji‑hyun')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (53, N'Jo Eun‑hyung')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (54, N'Zoe Saldana')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (55, N'Sam Worthingto')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (56, N'Kate Winslet')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (57, N'Sigourney Weaver')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (58, N'Millie Bobby Brown')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (59, N'Alexander Skarsgård')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (60, N'Rebecca Hall')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (61, N'Julian Dennison')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (62, N'Tom Hardy')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (63, N'Michelle Williams')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (64, N'Woody Harrelson')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (65, N'Riz Ahmed')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (66, N'Alina Lanina')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (67, N'Valeriya Shkirando')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (68, N'Anton Pampush')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (69, N'Emma Stone')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (70, N'Ryan Gosling')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (71, N'John Legend')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (72, N'J. K. Simmons')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (73, N'Emilia Clarke')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (74, N'Sam Claflin')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (75, N'Matthew Lewis')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (76, N'Jenna Coleman')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (77, N'Alicia Vikander')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (78, N'Michael Fassben')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (79, N'Rachel Weisz')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (80, N'Jack Thompson')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (81, N'Alicia Vikander')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (82, N'Dane DeHaan')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (83, N'Christoph Waltz')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (84, N'Cara Delevingne')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (85, N'Shailene Woodley')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (86, N'Ansel Elgort')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (87, N'Bruno Ganz')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (88, N'Alexandra Maria Laraová')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (89, N'Ulrich Matthes')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (90, N'Thomas Kretschm')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (91, N'Colin Firth')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (92, N'Geoffrey Rush')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (93, N'Helena Bonham Carter')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (94, N'Guy Pearce')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (95, N'Kenneth Branagh')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (96, N'Derek Jacobi')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (97, N'Ian Holm')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (98, N'Brian Blessed')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (99, N'Timothée Chalamet')
GO
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (100, N'Lily‑Rose Depp')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (101, N'Chris Pine')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (102, N'Florence Pugh')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (103, N'Aaron Taylor‑Jo')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (104, N'Billy Howle')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (105, N'Angus Macfadyen')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (106, N'Anna Hutchison')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (107, N'Zach McGowan')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (108, N'Emma Kenney')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (109, N'Leonardo DiCaprio')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (110, N'Tom Hardy')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (111, N'Will Poulter')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (112, N'Domhnall Gleeson')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (113, N'Harry Styles')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (114, N'Cillian Murphy')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (115, N'Fionn Whitehead')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (116, N'Tom Hardy')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (117, N'Daisy Ridley')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (118, N'John Boyega')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (119, N'Adam Driver')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (120, N'Oscar Isaac')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (121, N'Chris Hemsworth')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (122, N'Tom Holland')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (123, N'Cillian Murphy')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (124, N'Benjamin Walker')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (125, N'Chris Pine')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (126, N'Casey Affleck')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (127, N'Ben Foster')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (128, N'Joaquin Phoenix')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (129, N'Zazie Beetz')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (130, N'Frances Conroy')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (131, N'Brett Cullen')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (132, N'Margot Robbie')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (133, N'Mary Elizabeth Winstead')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (134, N'Jurnee Smollett')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (135, N'Ewan McGregor')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (136, N'Daniel Kaluuya')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (137, N'Allison Williams')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (138, N'Bradley Whitford')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (139, N'Lakeith Stanfield')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (140, N'Janelle Monáe')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (141, N'Gabourey Sidibe')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (142, N'Kiersey Jena Malone')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (143, N'Elisabeth Moss')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (144, N'Oliver Jackson')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (145, N'Aldis Hodge')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (146, N'Storm Reid')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (147, N'Robert Downey Jr')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (148, N'Jude Law')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (149, N'Rachel McAdams')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (150, N'Kelly Reilly')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (151, N'Vera Farmiga')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (152, N'Patrick Wilson')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (153, N'Madison Iseman')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (154, N'James Wan')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (155, N'Kristen Stewart')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (156, N'Robert Pattinson')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (157, N'Taylor Lautner')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (158, N'Nikki Reed')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (159, N'Kristen Stewart')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (160, N'Robert Pattinson')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (161, N'Taylor Lautner')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (162, N'Ashley Greene')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (163, N'Kristen Stewart')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (164, N'Robert Pattinson')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (165, N'Taylor Lautner')
INSERT [dbo].[Actor] ([Actor_ID], [Actor_Name]) VALUES (166, N'Ashley Greene"')
SET IDENTITY_INSERT [dbo].[Actor] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (1, N'Hành động')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (2, N'Hoạt hình')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (3, N'Hình sự')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (4, N'Khoa học viễn tưởng')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (5, N'Tình cảm')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (6, N'Lịch sử')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (7, N'Phiêu lưu')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (8, N'Kinh dị')
INSERT [dbo].[Category] ([Category_ID], [Category_Name]) VALUES (9, N'Huyền bí')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Director] ON 

INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (1, N'Steven C. Miller')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (2, N'Vin Diesel')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (3, N'Justin Lin')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (4, N'Samantha Vincent')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (5, N'Jeff Kirschenbaum')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (6, N'Clayton Townsend')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (7, N'Neal H. Moritz')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (8, N'Joe Roth')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (9, N'James Gunn')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (10, N'Cary Joji Fukunaga')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (11, N'Christopher McQuarrie')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (12, N'Kyle Balda')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (13, N'Brad Ableson')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (14, N'Chris Addison')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (15, N'Rebel Wilson')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (16, N'Jon Favreau')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (17, N'Ramsey Ann Naito')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (18, N'Jeff Hermann')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (19, N'Christopher Nolan')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (20, N'Tom McGrath')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (21, N'Son Yong-ho')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (22, N'Bae Su-hong')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (23, N'Kwon Min-sung')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (24, N'Kenneth Branagh')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (25, N'Macon Blair')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (26, N'Kim Joo-Hwan')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (27, N'James Cameron')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (28, N'Adam Wingard')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (29, N'Ruben Fleischer')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (30, N'Sarik Andreasyan')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (31, N'Gevond Andreasyan')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (32, N'Vladimir Polyakov')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (33, N'Aleksei Ryazantsev')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (34, N'Damien Chazelle')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (35, N'Thea Sharrock')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (36, N'Derek Cianfrance')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (37, N'Justin Chadwick')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (38, N'Josh Boone')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (39, N'Oliver Hirschbiegel')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (40, N'Tom Hooper')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (41, N'Kenneth Branagh')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (42, N'David Michôd')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (43, N'David Mackenzie')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (44, N'Richard Gray')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (45, N'Alejandro González Iñárritu')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (46, N'Christopher Nolan')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (47, N'Caaaaa')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (48, N'J. J. Abrams')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (49, N'Ron Howard')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (50, N'Craig Gillespie')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (51, N'Todd Phillips')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (52, N'Jordan Peele')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (53, N'Cathy Yan')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (54, N'Gerard Bush')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (55, N'Christopher Renz')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (56, N'Leigh Whannell')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (57, N'Guy Ritchie')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (58, N'Gary Dauberman')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (59, N'Catherine Hardwicke')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (60, N'Bill Condon')
INSERT [dbo].[Director] ([Director_ID], [Director_Name]) VALUES (61, N'David Slade')
SET IDENTITY_INSERT [dbo].[Director] OFF
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
ALTER TABLE [dbo].[MyList]  WITH CHECK ADD  CONSTRAINT [FK_MyList_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[MyList] CHECK CONSTRAINT [FK_MyList_Customer]
GO
ALTER TABLE [dbo].[MyList]  WITH CHECK ADD  CONSTRAINT [FK_MyList_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[MyList] CHECK CONSTRAINT [FK_MyList_Movie]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Customer]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Movie] FOREIGN KEY([Movie_ID])
REFERENCES [dbo].[Movie] ([Movie_ID])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Movie]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Account] ([Account_ID])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Customer]
GO
USE [master]
GO
ALTER DATABASE [DB_Digam_Netfix] SET  READ_WRITE 
GO
