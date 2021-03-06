USE [master]
GO
/****** Object:  Database [SportsMeeting]    Script Date: 2019-1-7 20:28:42 ******/
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
/****** Object:  Table [dbo].[Admin]    Script Date: 2019-1-7 20:28:42 ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 2019-1-7 20:28:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[Referee]    Script Date: 2019-1-7 20:28:42 ******/
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
/****** Object:  Table [dbo].[SignUp]    Script Date: 2019-1-7 20:28:42 ******/
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
/****** Object:  Table [dbo].[SportsItem]    Script Date: 2019-1-7 20:28:42 ******/
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
/****** Object:  Table [dbo].[SportsMan]    Script Date: 2019-1-7 20:28:42 ******/
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
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [Name], [Pwd], [OperTime]) VALUES (1, N'admin', N'admin', CAST(0x0000A9CE00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [Title], [Type], [Content], [ClickNum], [Image], [OperTime]) VALUES (1, N'精彩省运 奉献有您 感谢有您', N'精彩新闻', N'<p>亲爱的市民朋友们：</p>

<p>大家好！</p>

<p>在省委、省政府的坚强领导下，在全市人民的共同努力下，备受瞩目的广东省第十五届运动会暨第八届残疾人运动会圆满落下帷幕。在此，中共肇庆市委、肇庆市人民政府、省运会筹委会向所有关心、支持、参与省运会的全市市民朋友表示衷心的感谢和崇高的敬意！</p>

<p>本次省运会是在党的十九大胜利召开之后、迎接改革开放40周年之际，我省举办的第一个大型综合性体育盛会，是筹备时间最短、赛事规模最大、办赛任务最重的一次省运会。面对光荣的使命和艰巨的任务，我们举全市之力、汇全民之智，万众一心、众志成城，&ldquo;建设一流场馆、提供一流保障、展示一流城市形象&rdquo;，成功承办了一届&ldquo;零差错、零投诉、零事故&rdquo;的&ldquo;绿色省运、精彩省运、廉洁省运&rdquo;，充分展现了&ldquo;新时代、新广东、新肇庆&rdquo;的魅力风采，打造了&ldquo;新时代省运会史上的新标杆&rdquo;。特别是以国家级标准打造的省运会开幕式，为全省、全国人民献上了一场政治性与艺术性高度融合、岭南文化与肇庆本土特色完美结合的视觉盛宴，得到了省委、省政府特别是主要领导的高度评价，以及全省人民的广泛赞誉。</p>

<p>成功承办省运会，离不开赛场上无数运动员的奋力拼搏，离不开赛场下无数工作人员的辛勤劳作，更离不开全市人民的支持配合。回首过去三年的日日夜夜，从筹备、开幕、竞赛到闭幕，千余日日夜夜，几度春夏秋冬，肇庆人民始终识大体、顾大局，全力支持、积极参与、甘于奉献，营造了&ldquo;人人都是东道主、人人都是参与者、人人都是服务员、人人都是形象大使&rdquo;的浓厚氛围，确保了城市交通安全顺畅、市容环境整洁有序、服务保障周到细致、社会氛围热烈祥和。特别是在推进&ldquo;八大整治行动&rdquo;等城市改造提升工程过程中，面对种种不便，广大市民朋友充分理解、全力配合，为城市更新创造了有利条件，让我们在省运会举办期间向全省、全国人民呈现出了一个景色更美、环境更优、品质更高的&ldquo;中华砚都、七星肇庆&rdquo;。你们用强烈的家园情怀、真诚的自觉行动、崇高的奉献精神树立了肇庆的良好形象、浇筑了精彩省运的丰碑，功劳归于大家，荣誉属于大家！</p>

<p>扬帆起航新征程、砥砺奋进新辉煌！本次省运会，让我们记住了&ldquo;绿色省运，砚玉肇庆&rdquo;的主题口号、唱响了《走在前列》的新时代最强音，让我们刷新了肇庆形象、展示了肇庆魅力、凝聚了肇庆力量、树立了肇庆自信，为肇庆未来发展留下了宝贵的物质和精神财富。市委、市政府将以成功承办省运会为新起点，与全市人民一起，高举习近平新时代中国特色社会主义思想伟大旗帜，闻鸡起舞、日夜兼程、实干兴肇，加快建设粤港澳大湾区面向大西南枢纽门户城市，为广东实现&ldquo;四个走在全国前列&rdquo;、当好&ldquo;两个重要窗口&rdquo;贡献肇庆力量，为实现肇庆人民对美好生活的向往而不懈奋斗！我们衷心希望，广大市民倍加珍惜省运会成果，发扬主人翁精神，一如既往地关心、支持、参与肇庆各项事业发展。我们始终坚信，有广大市民的鼎力支持和携手奋进，肇庆一定能够走好新征程、实现新目标、铸就新辉煌！</p>

<p>真诚祝愿广大市民朋友生活美满、幸福安康！</p>
', 0, NULL, CAST(0x0000A9CE010D33CC AS DateTime))
SET IDENTITY_INSERT [dbo].[News] OFF
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
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [Rand], [Detail], [Team], [OperTime]) VALUES (7, 1, 1, NULL, NULL, N'通过', NULL, NULL, NULL, CAST(0x0000A9CE00021059 AS DateTime))
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
