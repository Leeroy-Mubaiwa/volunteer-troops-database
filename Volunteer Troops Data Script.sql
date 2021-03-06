USE [master]
GO
/****** Object:  Database [VolunteerTroops]    Script Date: 14/8/2020 9:32:12 AM ******/
CREATE DATABASE [VolunteerTroops]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VolunteerTroops', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VolunteerTroops.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VolunteerTroops_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VolunteerTroops_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VolunteerTroops] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VolunteerTroops].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VolunteerTroops] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VolunteerTroops] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VolunteerTroops] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VolunteerTroops] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VolunteerTroops] SET ARITHABORT OFF 
GO
ALTER DATABASE [VolunteerTroops] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [VolunteerTroops] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VolunteerTroops] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VolunteerTroops] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VolunteerTroops] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VolunteerTroops] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VolunteerTroops] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VolunteerTroops] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VolunteerTroops] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VolunteerTroops] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VolunteerTroops] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VolunteerTroops] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VolunteerTroops] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VolunteerTroops] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VolunteerTroops] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VolunteerTroops] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VolunteerTroops] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VolunteerTroops] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VolunteerTroops] SET  MULTI_USER 
GO
ALTER DATABASE [VolunteerTroops] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VolunteerTroops] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VolunteerTroops] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VolunteerTroops] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VolunteerTroops] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VolunteerTroops] SET QUERY_STORE = OFF
GO
USE [VolunteerTroops]
GO
/****** Object:  Table [dbo].[EMPLOYMENT_STATUS]    Script Date: 14/8/2020 9:32:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYMENT_STATUS](
	[ORG_ID] [varchar](10) NULL,
	[STATUS] [varchar](max) NOT NULL,
	[counter] [int] NOT NULL,
 CONSTRAINT [PK_EMPLOYMENT_STATUS] PRIMARY KEY CLUSTERED 
(
	[counter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FIELDS]    Script Date: 14/8/2020 9:32:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIELDS](
	[ORG_ID] [varchar](10) NULL,
	[NAME] [varchar](max) NULL,
	[counter] [int] NOT NULL,
 CONSTRAINT [PK_FIELDS] PRIMARY KEY CLUSTERED 
(
	[counter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Institution]    Script Date: 14/8/2020 9:32:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Institution](
	[Id] [int] NOT NULL,
	[institution_name] [text] NULL,
	[address] [text] NULL,
	[ORG_ID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEMBERS]    Script Date: 14/8/2020 9:32:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEMBERS](
	[COUNTER] [int] NOT NULL,
	[NAME] [varchar](max) NULL,
	[PROFESSION] [varchar](max) NULL,
	[FIELD] [varchar](max) NULL,
	[EMPLOYMENT] [varchar](max) NULL,
	[DATE] [date] NULL,
	[INSTITUTION] [varchar](max) NULL,
	[ORG_ID] [varchar](10) NULL,
	[CONTACTS] [varchar](max) NULL,
	[DUTY] [varchar](max) NULL,
 CONSTRAINT [PK_MEMBERS] PRIMARY KEY CLUSTERED 
(
	[COUNTER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEMBERSTATES]    Script Date: 14/8/2020 9:32:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEMBERSTATES](
	[ORG_ID] [varchar](10) NULL,
	[NAME] [varchar](max) NULL,
	[counter] [int] NOT NULL,
 CONSTRAINT [PK_STATES] PRIMARY KEY CLUSTERED 
(
	[counter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORGANISATION]    Script Date: 14/8/2020 9:32:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORGANISATION](
	[ID] [varchar](10) NOT NULL,
	[NAME] [varchar](max) NULL,
	[VISION] [varchar](max) NULL,
	[MISSION] [varchar](max) NULL,
	[BACKGROUND] [varchar](max) NULL,
	[ABOUT_US] [varchar](max) NULL,
	[OBJECTIVES] [varchar](max) NULL,
	[UBUNTU] [varchar](max) NULL,
	[USERNAME] [varchar](max) NULL,
	[PASSWORD] [varchar](max) NULL,
 CONSTRAINT [PK_ORGANISATION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROFESSIONS]    Script Date: 14/8/2020 9:32:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROFESSIONS](
	[ORG_ID] [varchar](10) NULL,
	[NAME] [varchar](max) NULL,
	[counter] [int] NOT NULL,
 CONSTRAINT [PK_Profession] PRIMARY KEY CLUSTERED 
(
	[counter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[EMPLOYMENT_STATUS] ([ORG_ID], [STATUS], [counter]) VALUES (N'vt_19', N'Whaat', 3)
GO
INSERT [dbo].[FIELDS] ([ORG_ID], [NAME], [counter]) VALUES (N'vt_19', N'None', 1)
GO
INSERT [dbo].[Institution] ([Id], [institution_name], [address], [ORG_ID]) VALUES (1, N'Harare Institute of Technology', NULL, N'vt_19')
INSERT [dbo].[Institution] ([Id], [institution_name], [address], [ORG_ID]) VALUES (2, N'University of Zimbabwe', NULL, N'vt_19')
GO
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (1, N'Busani Musiza', N'Food Science and Technology
', N'Healt and Social Services', N'Unemployed', CAST(N'2020-05-21' AS Date), N'University of Zimbabwe (UZ)', N'vt_19', N'+263738196758 / +263787733614', N'Secretary General')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (2, N'Tymore', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (3, N'Munyaradzi', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (4, N'Tanatswa Zibowa', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (5, N'Richard Chikomo', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (6, N'Panashe Tigere', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (7, N'Nyere Gavin', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (8, N'Michael Ndlovu', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (9, N'Mbwachena Innocent', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (10, N'Kadungure Junior', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (11, N'Gotosa Enersty', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (12, N'Dzingai Emmanuel', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (13, N'Bamala Rachel', N'N/A
', N'MINING', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (14, N'Tadiwanashe Masunda', N'Student
', N'Human Resources', N'N/A', CAST(N'2019-11-24' AS Date), N'MIdlands State University', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (15, N'Laiza Ruziwa', N'Student
', N'Human Resources', N'N/A', CAST(N'2019-11-24' AS Date), N'MIdlands State University', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (16, N'Mumpande Langelihle', N'Student
', N'Human Resources', N'N/A', CAST(N'2019-11-24' AS Date), N'MIdlands State University', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (17, N'Naledi Cube', N'Student
', N'Journalism and Mass Communication', N'N/A', CAST(N'2019-11-24' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (18, N'Ashley M. Mutowo', N'Psychology Student
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'Africa University', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (19, N'Ian Mapira', N'Journalism and Mass Communication
', N'Media Arts and Culture', N'Unemployed', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (20, N'Alice Mangwanda', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (21, N'Amanda Mavhaza', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (22, N'Thandiwe Gwapedza', N'photojournalist
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (23, N'Tafadzwa Kachiko', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (24, N'Conrad Mupesa', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (25, N'Philomina Musekiwa', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (26, N'Costa Mataga', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'Unemployed', CAST(N'2019-12-27' AS Date), N'National University of Science and Technology (NUST)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (27, N'Kundai', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'Unemployed', CAST(N'2019-12-27' AS Date), N'National University of Science and Technology (NUST)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (28, N'Atkins Chimunhu', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'Unemployed', CAST(N'2019-12-27' AS Date), N'Midlands State University (MSU)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (29, N'Wilson Dakwa ', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (30, N'Rumbidzai Nyabako', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'Unemployed', CAST(N'2019-12-27' AS Date), N'Midlands State University (MSU)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (31, N'MILDRED NCUBE', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (32, N'EVANS JONA', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (33, N'TENDAI GOVERA', N'JOURNALISM AND MASS COMMUNICATION
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (34, N'Leroy Kandeya', N'FILM AND PHOTOGRAPHY
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (35, N'Knowledge Chingwecha', N'FILM AND PHOTOGRAPHY
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (36, N'Nomore Kudzedzereka', N'FILM AND PHOTOGRAPHY
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (37, N'Buhle Dzinomurumbi', N'CULTURAL STUDIES
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (38, N'Tafadzwa Chirisa', N'Pharmacy
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'Harare Institute of Technology (HIT)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (39, N'Tendai Nyika', N'Pharmacy
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'Harare Institute of Technology (HIT)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (40, N'Dominic Muperi', N'Pharmacy
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'Harare Institute of Technology (HIT)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (41, N'Harliet Shangwa', N'Pharmacy
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'Harare Institute of Technology (HIT)', N'vt_19', N'0', N'member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (42, N'Lynette January', N'Nutrition Science
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'UNiversity of Zimbabwe (UZ)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (43, N'Lucia Chipendo', N'Nutrition Science
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'UNiversity of Zimbabwe (UZ)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (44, N'Fungai T Mashongwa', N'Food Processing Technology
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'Harare Institute Of Technology (HIT)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (45, N'Tinomudaishe Mupesa', N'Food Processing Technology
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'University of Zimbabwe (UZ)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (46, N'Nyasha Ndemera', N'Agribusiness
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'Africa University (AU)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (47, N'Kudakwashe Bvuma', N'Medical Laboratory Sciences
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'Africa University (AU)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (48, N'Munyaradzi Manyawu', N'Geographic Information Science
', N'Health and Social Service', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (49, N'Tatenda Vhori', N'Forensic Science
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'University of Zimbabwe (UZ)', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (50, N'DAISY MIDZI', N'MUSIC
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (51, N'JOSHUA CHATAPA', N'ABSTRACT EXPRESSIONISM
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (52, N'Hazel Mahachi', N'DECOR
', N'MEDIA ARTS AND CULTURE', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (53, N'vimbai kaplin', N'public admin and management
', N'Health and Social Service', N'Unemployed', CAST(N'2019-12-27' AS Date), N'Africa University', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (54, N'Bongani Gwenya', N'Hospitality
', N'Unkown', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (55, N'Maxime Kampira', N'Human Resources
', N'Law and Public Policy', N'Unemployed', CAST(N'2020-01-14' AS Date), N'Midlands State University (MSU)', N'vt_19', N'+', N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (56, N'Maxine Kampira', N'
', N'', N'Unemployed', CAST(N'2020-01-14' AS Date), N'', N'vt_19', N'', N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (57, N'Maxime Kampira', N'Human Resources
', N'Law and Public Policy', N'Unemployed', CAST(N'2020-01-14' AS Date), N'Midlands State University (MSU)', N'vt_19', N'+', N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (58, N'Danmore Maaauso', N'Hospitality
', N'Unkown', N'N/A', CAST(N'2019-12-27' AS Date), N'N/A', N'vt_19', NULL, N'Member')
INSERT [dbo].[MEMBERS] ([COUNTER], [NAME], [PROFESSION], [FIELD], [EMPLOYMENT], [DATE], [INSTITUTION], [ORG_ID], [CONTACTS], [DUTY]) VALUES (59, N'Leeroy Mubaiwa', N'Computer Scientist', N'None', N'Whaat', NULL, N'Harare Institute of Technology', N'vt_19', N'0774454447', N'ICT')
GO
INSERT [dbo].[MEMBERSTATES] ([ORG_ID], [NAME], [counter]) VALUES (N'vt_19', N'None', 1)
GO
INSERT [dbo].[ORGANISATION] ([ID], [NAME], [VISION], [MISSION], [BACKGROUND], [ABOUT_US], [OBJECTIVES], [UBUNTU], [USERNAME], [PASSWORD]) VALUES (N'vt_19', N'LEEROY', N'To be a youth organization which provide skills, knowledge, labor and expertise towards sustainable development of Zimbabwe.
', N'Promote youth volunteerism through mobilizing youths to participate in projects towards sustainable development.', N'Zimbabwe is one of the underdeveloped countries around the world with quite a number of qualified graduates and many youths with different skills. The literacy rate of Zimbabwe is high although our development as a country is very poor. Volunteer troops for Sustainable Development seek to bring youths into action towards voluntary participation in the development of Zimbabwe across all professions. We believe the youth are the leaders of tomorrow and it’s our responsibility to develop our country through hard work and commitment.
', N'VTSDZ is a non-political organization which was founded by a group of youths who realized the importance of youth participation in sustainable development of Zimbabwe. 
Their main goal is to bring all youths with different qualifications and skills to work together in different sectors of the economy and society so as to develop the country. Volunteerism is the main goal of the organization. 
Apart from that, the youth will be gaining experience and expertise in their different professions as they will be working under the guidance of experienced professionals. 
With a vibrant group of volunteering youth equipped with their skills we believe in turning the country into a land of milk and honey.

Contact details soon', N'* Promote voluntary work amongst people in their communities there by promoting national building.

* To advance and promote awareness of UBUNTU to members of the public especially youths

* To promote and take part in self sustainable projects thereby creating employment in communities.

* To promote service learning

* To mobilize youths to participate voluntarily in national and public projects?', N'-', N'volunteertroops', N'-')
GO
INSERT [dbo].[PROFESSIONS] ([ORG_ID], [NAME], [counter]) VALUES (N'vt_19', N'Computer Scientist', 1)
GO
ALTER TABLE [dbo].[EMPLOYMENT_STATUS]  WITH CHECK ADD  CONSTRAINT [FK_EMPLOYMENT_STATUS_ToORG] FOREIGN KEY([ORG_ID])
REFERENCES [dbo].[ORGANISATION] ([ID])
GO
ALTER TABLE [dbo].[EMPLOYMENT_STATUS] CHECK CONSTRAINT [FK_EMPLOYMENT_STATUS_ToORG]
GO
ALTER TABLE [dbo].[FIELDS]  WITH CHECK ADD  CONSTRAINT [FK_FIELDS_ToORG] FOREIGN KEY([ORG_ID])
REFERENCES [dbo].[ORGANISATION] ([ID])
GO
ALTER TABLE [dbo].[FIELDS] CHECK CONSTRAINT [FK_FIELDS_ToORG]
GO
ALTER TABLE [dbo].[Institution]  WITH CHECK ADD  CONSTRAINT [FK_Institution_ToORG] FOREIGN KEY([ORG_ID])
REFERENCES [dbo].[ORGANISATION] ([ID])
GO
ALTER TABLE [dbo].[Institution] CHECK CONSTRAINT [FK_Institution_ToORG]
GO
ALTER TABLE [dbo].[MEMBERS]  WITH CHECK ADD  CONSTRAINT [FK_MEMBERS_ToTable] FOREIGN KEY([ORG_ID])
REFERENCES [dbo].[ORGANISATION] ([ID])
GO
ALTER TABLE [dbo].[MEMBERS] CHECK CONSTRAINT [FK_MEMBERS_ToTable]
GO
ALTER TABLE [dbo].[MEMBERSTATES]  WITH CHECK ADD  CONSTRAINT [FK_STATES_ToORG] FOREIGN KEY([ORG_ID])
REFERENCES [dbo].[ORGANISATION] ([ID])
GO
ALTER TABLE [dbo].[MEMBERSTATES] CHECK CONSTRAINT [FK_STATES_ToORG]
GO
ALTER TABLE [dbo].[PROFESSIONS]  WITH CHECK ADD  CONSTRAINT [FK_Profession_ToORG] FOREIGN KEY([ORG_ID])
REFERENCES [dbo].[ORGANISATION] ([ID])
GO
ALTER TABLE [dbo].[PROFESSIONS] CHECK CONSTRAINT [FK_Profession_ToORG]
GO
USE [master]
GO
ALTER DATABASE [VolunteerTroops] SET  READ_WRITE 
GO
