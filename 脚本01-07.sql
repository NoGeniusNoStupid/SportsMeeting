USE [master]
GO
/****** Object:  Database [SportsMeeting]    Script Date: 2019/1/7 0:49:31 ******/
CREATE DATABASE [SportsMeeting]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SportsMeeting', FILENAME = N'F:\项目数据库\运动会管理系统\SportsMeeting.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SportsMeeting_log', FILENAME = N'F:\项目数据库\运动会管理系统\SportsMeeting_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SportsMeeting] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SportsMeeting].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SportsMeeting] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SportsMeeting] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SportsMeeting] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SportsMeeting] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SportsMeeting] SET ARITHABORT OFF 
GO
ALTER DATABASE [SportsMeeting] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SportsMeeting] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SportsMeeting] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SportsMeeting] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SportsMeeting] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SportsMeeting] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SportsMeeting] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SportsMeeting] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SportsMeeting] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SportsMeeting] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SportsMeeting] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SportsMeeting] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SportsMeeting] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SportsMeeting] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SportsMeeting] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SportsMeeting] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SportsMeeting] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SportsMeeting] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SportsMeeting] SET RECOVERY FULL 
GO
ALTER DATABASE [SportsMeeting] SET  MULTI_USER 
GO
ALTER DATABASE [SportsMeeting] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SportsMeeting] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SportsMeeting] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SportsMeeting] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SportsMeeting', N'ON'
GO
USE [SportsMeeting]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2019/1/7 0:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Pwd] [varchar](20) NULL,
	[OperTime] [datetime] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[News]    Script Date: 2019/1/7 0:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](20) NULL,
	[Type] [varchar](20) NULL,
	[Content] [text] NULL,
	[ClickNum] [int] NULL,
	[Image] [varchar](50) NULL,
	[OperTime] [datetime] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Referee]    Script Date: 2019/1/7 0:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Referee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](20) NULL,
	[Name] [varchar](20) NULL,
	[Pwd] [varchar](20) NULL,
	[Age] [varchar](20) NULL,
	[Tel] [varchar](20) NULL,
	[Sex] [varchar](20) NULL,
	[OperTime] [datetime] NULL,
 CONSTRAINT [PK_Referee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SignUp]    Script Date: 2019/1/7 0:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SignUp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NULL,
	[ManId] [int] NULL,
	[FirstScore] [varchar](10) NULL,
	[FinalScore] [varchar](10) NULL,
	[State] [varchar](10) NULL,
	[Rand] [varchar](10) NULL,
	[Detail] [varchar](50) NULL,
	[Team] [varchar](50) NULL,
	[OperTime] [datetime] NULL,
 CONSTRAINT [PK_SignUp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SportsItem]    Script Date: 2019/1/7 0:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SportsItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](20) NULL,
	[Type] [varchar](20) NULL,
	[RefereeId] [int] NULL,
	[FirstTime] [datetime] NULL,
	[FinalTime] [datetime] NULL,
	[OperTime] [datetime] NULL,
 CONSTRAINT [PK_SportsItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SportsMan]    Script Date: 2019/1/7 0:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SportsMan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](20) NULL,
	[Name] [varchar](20) NULL,
	[Pwd] [varchar](20) NULL,
	[Age] [varchar](20) NULL,
	[Sex] [varchar](20) NULL,
	[Team] [varchar](20) NULL,
	[Class] [varchar](20) NULL,
	[Tel] [varchar](20) NULL,
	[OperTime] [datetime] NULL,
	[State] [varchar](10) NULL,
 CONSTRAINT [PK_Athletes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Referee] ON 

INSERT [dbo].[Referee] ([Id], [Account], [Name], [Pwd], [Age], [Tel], [Sex], [OperTime]) VALUES (1, N'zhangshiming', N'张世明', N'123456', N'42', N'13862054071', N'男', CAST(0x0000A9CD00A88A3B AS DateTime))
INSERT [dbo].[Referee] ([Id], [Account], [Name], [Pwd], [Age], [Tel], [Sex], [OperTime]) VALUES (2, N'zhoutianci', N'邹天赐', N'123456', N'30', N'15680415698', N'男', CAST(0x0000A9CD00A8C90E AS DateTime))
INSERT [dbo].[Referee] ([Id], [Account], [Name], [Pwd], [Age], [Tel], [Sex], [OperTime]) VALUES (4, N'zhangsi', N'张思', N'123456', N'20', N'15486254120', N'女', CAST(0x0000A9CD00C36B03 AS DateTime))
INSERT [dbo].[Referee] ([Id], [Account], [Name], [Pwd], [Age], [Tel], [Sex], [OperTime]) VALUES (5, N'limin', N'李敏', N'123456', N'35', N'15486254120', N'男', CAST(0x0000A9CD00C38175 AS DateTime))
INSERT [dbo].[Referee] ([Id], [Account], [Name], [Pwd], [Age], [Tel], [Sex], [OperTime]) VALUES (6, N'wangdi', N'王迪', N'123456', N'25', N'15486254120', N'男', CAST(0x0000A9CD00C390E2 AS DateTime))
INSERT [dbo].[Referee] ([Id], [Account], [Name], [Pwd], [Age], [Tel], [Sex], [OperTime]) VALUES (7, N'lida', N'李达', N'123456', N'28', N'15486254120', N'男', CAST(0x0000A9CD00C3A5B1 AS DateTime))
INSERT [dbo].[Referee] ([Id], [Account], [Name], [Pwd], [Age], [Tel], [Sex], [OperTime]) VALUES (8, N'wangmin', N'汪敏', N'123456', N'27', N'15486254120', N'女', CAST(0x0000A9CD00C3B664 AS DateTime))
SET IDENTITY_INSERT [dbo].[Referee] OFF
SET IDENTITY_INSERT [dbo].[SignUp] ON 

INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [Rand], [Detail], [Team], [OperTime]) VALUES (6, 3, 1, NULL, NULL, N'待审', NULL, NULL, NULL, CAST(0x0000A9CE0001BB31 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [Rand], [Detail], [Team], [OperTime]) VALUES (7, 1, 1, NULL, NULL, N'审核', NULL, NULL, NULL, CAST(0x0000A9CE00021059 AS DateTime))
SET IDENTITY_INSERT [dbo].[SignUp] OFF
SET IDENTITY_INSERT [dbo].[SportsItem] ON 

INSERT [dbo].[SportsItem] ([Id], [Name], [Type], [RefereeId], [FirstTime], [FinalTime], [OperTime]) VALUES (1, N'男子100米冲刺', N'个人赛', 1, CAST(0x0000A9CF00E6B680 AS DateTime), CAST(0x0000A9D100E6B680 AS DateTime), CAST(0x0000A9CD01021ADA AS DateTime))
INSERT [dbo].[SportsItem] ([Id], [Name], [Type], [RefereeId], [FirstTime], [FinalTime], [OperTime]) VALUES (2, N'男子1000米跑', N'个人赛', 2, CAST(0x0000A9CD00E6B680 AS DateTime), CAST(0x0000A9D100E6B680 AS DateTime), CAST(0x0000A9CD01026D54 AS DateTime))
INSERT [dbo].[SportsItem] ([Id], [Name], [Type], [RefereeId], [FirstTime], [FinalTime], [OperTime]) VALUES (3, N'男子铅球', N'个人赛', 1, CAST(0x0000A9CF00E6B680 AS DateTime), CAST(0x0000A9D000E6B680 AS DateTime), CAST(0x0000A9CD010382B9 AS DateTime))
SET IDENTITY_INSERT [dbo].[SportsItem] OFF
SET IDENTITY_INSERT [dbo].[SportsMan] ON 

INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Team], [Class], [Tel], [OperTime], [State]) VALUES (1, N'zhangtao', N'张涛', N'123456', N'20', N'男', NULL, N'信管151', N'13860626309', CAST(0x0000A9CD01471772 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[SportsMan] OFF
ALTER TABLE [dbo].[SignUp]  WITH CHECK ADD  CONSTRAINT [FK_SignUp_SportsItem] FOREIGN KEY([ItemId])
REFERENCES [dbo].[SportsItem] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SignUp] CHECK CONSTRAINT [FK_SignUp_SportsItem]
GO
ALTER TABLE [dbo].[SignUp]  WITH CHECK ADD  CONSTRAINT [FK_SignUp_SportsMan] FOREIGN KEY([ManId])
REFERENCES [dbo].[SportsMan] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SignUp] CHECK CONSTRAINT [FK_SignUp_SportsMan]
GO
ALTER TABLE [dbo].[SportsItem]  WITH CHECK ADD  CONSTRAINT [FK_SportsItem_Referee] FOREIGN KEY([RefereeId])
REFERENCES [dbo].[Referee] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SportsItem] CHECK CONSTRAINT [FK_SportsItem_Referee]
GO
USE [master]
GO
ALTER DATABASE [SportsMeeting] SET  READ_WRITE 
GO
