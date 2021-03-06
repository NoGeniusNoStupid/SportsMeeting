USE [master]
GO
/****** Object:  Database [SportsMeeting]    Script Date: 2019-1-10 14:03:35 ******/
CREATE DATABASE [SportsMeeting] ON  PRIMARY 
( NAME = N'SportsMeeting', FILENAME = N'F:\项目数据库\运动会管理系统\SportsMeeting.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SportsMeeting_log', FILENAME = N'F:\项目数据库\运动会管理系统\SportsMeeting_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
EXEC sys.sp_db_vardecimal_storage_format N'SportsMeeting', N'ON'
GO
USE [SportsMeeting]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2019-1-10 14:03:36 ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 2019-1-10 14:03:36 ******/
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
/****** Object:  Table [dbo].[Referee]    Script Date: 2019-1-10 14:03:36 ******/
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
/****** Object:  Table [dbo].[SignUp]    Script Date: 2019-1-10 14:03:36 ******/
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
	[RanK] [int] NULL,
	[FinalRanK] [int] NULL,
	[IsFinal] [varchar](2) NULL,
	[Detail] [varchar](50) NULL,
	[OperTime] [datetime] NULL,
 CONSTRAINT [PK_SignUp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SportsItem]    Script Date: 2019-1-10 14:03:36 ******/
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
	[Limit] [varchar](20) NULL,
	[RefereeId] [int] NULL,
	[FirstTime] [datetime] NULL,
	[FinalTime] [datetime] NULL,
	[OperTime] [datetime] NULL,
	[State] [varchar](10) NULL,
	[Rule] [varchar](10) NULL,
	[Num] [int] NULL,
 CONSTRAINT [PK_SportsItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SportsMan]    Script Date: 2019-1-10 14:03:36 ******/
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

INSERT [dbo].[Admin] ([Id], [Name], [Pwd], [OperTime]) VALUES (1, N'admin', N'123456', CAST(0x0000A9CE00000000 AS DateTime))
INSERT [dbo].[Admin] ([Id], [Name], [Pwd], [OperTime]) VALUES (2, N'user01', N'123456', CAST(0x0000A9CF00EEE8AA AS DateTime))
INSERT [dbo].[Admin] ([Id], [Name], [Pwd], [OperTime]) VALUES (3, N'user02', N'123456', CAST(0x0000A9CF00EEF6D3 AS DateTime))
INSERT [dbo].[Admin] ([Id], [Name], [Pwd], [OperTime]) VALUES (4, N'user03', N'123456', CAST(0x0000A9CF00EEFFB8 AS DateTime))
INSERT [dbo].[Admin] ([Id], [Name], [Pwd], [OperTime]) VALUES (5, N'user04', N'123456', CAST(0x0000A9CF00EF089E AS DateTime))
INSERT [dbo].[Admin] ([Id], [Name], [Pwd], [OperTime]) VALUES (6, N'user05', N'123456', CAST(0x0000A9CF00EF118D AS DateTime))
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
INSERT [dbo].[News] ([Id], [Title], [Type], [Content], [ClickNum], [Image], [OperTime]) VALUES (2, N'朝气蓬勃的运动会', N'精彩新闻', N'<p>这充满奋斗的日子。在&quot;碧云天，黄叶地，秋色连波&quot;的日子里，校园第*届运动会缓缓地拉开了帷幕。在那里，你能够触摸到跳跃的青春音符，感受到燃烧的活力，体会到四射的光芒。</p>

<p>　　《十日谈》中有这样一句话&quot;攀缘的艰辛就换来了加倍的快乐。&quot;运动会前期，我们计算机学院文艺部、实践部、自律部等各部人员干得热火朝天，如火如荼，正如巴金在散文《生》里写到：&quot;将个人的生存放在群体的生存里，群体绵延不绝，能够继续到永久，则个人亦何尝不能够说是永生。&quot;人人都在努力，醉心于群众的欢乐，宣传部：出会刊、拉横幅、做宣传板，风风火火，好不热闹。实践部：蓄势待发，做好会前会后的各种准备工作......上下齐心，势如破竹，铸就崭新的一页。&quot;团结就是胜利&quot;、&quot;友谊万岁&quot;、&quot;拼搏奋斗&quot;的运动精神在那里已经得到了很好的体现。</p>

<p>　　信念的坚定，能够使死亡转化为复活，使瞬间转化为永恒。为了心中的信念、自我的实现与塑造，看，当朝阳的光芒带来了新的生机，我们的运动员就早早地起来锻炼了。</p>

<p>　　在沉寂和悄然中，他们已经为我们栽种了火种，相信在今年的运动会上，我们与时俱进，开拓创新，在运动精神的鼓舞下，必须会赛出好成绩的!</p>
', 0, NULL, CAST(0x0000A9D000F5437C AS DateTime))
INSERT [dbo].[News] ([Id], [Title], [Type], [Content], [ClickNum], [Image], [OperTime]) VALUES (3, N'第一届校运会', N'精彩新闻', N'<p>第xx届运动会顺利召开，教育传媒战绩辉煌</p>

<p>　　为了展现当代大学生风采，为了激发大学生用心参加体育锻炼，我校于2012年5月24日举行了历时两天的运动会并取得圆满成功。</p>

<p>　　此次运动会共设有项目男子组：100米、200米、400米、800米、1500米、5000米、10000米、110米栏、4&times;100米接力、4&times;400米接力、跳高、跳远、三级跳远、铅球、标枪、铁饼，女子组：100米、200米、400米、800米、1500米、3000米、5000米、100米栏、4&times;100米接力、4&times;400米接力、跳高、跳远、铅球、标枪、铁饼，学生群众项目：10000米异程接力，游戏项目：手足情，能量传输。我院领导十分重视，全体师生用心参与，并为运动会做了充分的准备，早在四月初，就开始对运动员进行训练。</p>

<p>　　绿色竞技场，青春无极限。比赛中，我院选手表现出色，犹如离弦的箭一般在赛道上驰骋与拼搏，充分展现教育与传媒学院的风采。观众席上也是气势如虹，每当赛道上有我院运动员，呐喊声，加油声，连绵不断，敲鼓声震耳欲聋。这声音仿佛是一种无形的力量，推动运动员奋勇向前，活力拼搏，伴随着阵阵助威声，他们精神百倍，活力四射，取得一个又一个奖牌。</p>

<p>　　在我院师生的共同努力下，经过两天的厮杀，我院取得团体总分第二名的好成绩，其中，我院余番雨、吕红霞、冯兰英、张松旭凭借精彩的表现荣获十佳运动员称号。赛后，体育部部长刘广平说：&ldquo;运动员们平时训练十分辛苦，几乎每个人脚底都磨出了泡，有的脚已经肿了，涂完药之后还是坚持训练，取得这样的成绩也是理所应当。&rdquo;手足情运动员隋海义说：&ldquo;为了学院的荣誉，吃点苦也没什么，还好，比赛的时候发挥正常，取得第二名的好成绩，我们的付出总算没有白费。&rdquo;</p>

<p>　　喜迎甲子华诞，共创辉煌伟业。此次运动会，让我们感受到了齐大学子的热情与朝气，他们锻炼的是体力，激活的是生命，弘扬的是个性和青春活力。教育与传媒学院也在本次运动会上大放异彩，让整个齐大认识到了教传的精神与活力，更为齐大60岁生日献上一份特殊的贺礼。</p>
', 0, NULL, CAST(0x0000A9D000F55DC2 AS DateTime))
INSERT [dbo].[News] ([Id], [Title], [Type], [Content], [ClickNum], [Image], [OperTime]) VALUES (4, N'加油吧运动健儿们！', N'精彩新闻', N'<p>20xx年xx月xx日和xx日，中央财经大学20xx年田径运动会在沙河校区的田径场上隆重举行。在本次运动会中，商学院的同学们团结奋进，勇敢拼搏，展现了商学院学生的良好的精神风貌和高涨的运动热情。</p>

<p>　　为了在运动会开幕式上展现商学院的风采，商学院体育部用心组织12级的46名同学进行方阵训练，商学院的团总支书记张碘老师和12级的铺导员于海莹老师也很关心商院方阵的训练状况。在老师和同学们的共同努力下，20号的开幕式上，商学院方阵的成员身着统一的服装，迈着整齐的步伐，带着昂扬的气势透过主席台前;他们在主席台前拼成的&ldquo;中财龙马&rdquo;的字样，表达了商院学生对中财的热爱。他们个个精神饱满，朝气蓬勃，展现了商院人的风貌。</p>

<p>　　对于本次运动会，商院健儿们踊跃报名，用心参与，共有50名运动员参加了比赛。赛前，运动员们刻苦训练，为比赛做准备。比赛时，他们奋勇争先，顽强拼搏，取得了优秀的成绩，为商院赢得了荣誉。他们在比赛中表现出的不甘落后、用心进取、团结协作的运动精神显示了商院健儿们优秀的运动品质。</p>

<p>　　运动会期间，运动员井然有序地参与比赛离不开商学院后勤人员的努力工作。他们坚守在自己的岗位上，只为商院在运动会上有出色的表现。商学院团学体育部的工作人员及时通知运动员们参加比赛，协助运动员去检录、进场。信息部的成员奔波在田径场上，捕捉运动员们精彩的比赛瞬间。办公室的工作人员在记录运动员们比赛过程的同时，还收集、整理各班的加油稿，报送到主席台，为商学院的运动员们加油助威。商院的同学们也很关心比赛，不能进入田径场，他们就在场外观看比赛，为运动员呐喊。</p>
', 0, NULL, CAST(0x0000A9D000F571A1 AS DateTime))
INSERT [dbo].[News] ([Id], [Title], [Type], [Content], [ClickNum], [Image], [OperTime]) VALUES (5, N'矫健的身影，热闹的操场', N'精彩新闻', N'<p>在金秋送爽的十月十八日，北京西城区阜外一小在月坛体育场举办了校园秋季运动会。入场式上，共建单位的武警战士手举国旗走在队列的最前面，旗手们昂首挺胸高举彩旗紧随其后，各年级的学生代表组成了各有特色的方阵向观众们挥手致意。三年级同学身穿少数民族服装边走边跳，当二年级亲子队伍透过主席台时放飞手中的气球引来了全场的一片欢呼。</p>

<p>　　运动场上，周密的安排，辛苦的赛程，紧张的观众，忙碌的裁判，拼搏的运动员，让人心跳的发令枪声，展现了一道靓丽的风景线。首先比赛的是三年级男子100米赛跑，三年级一班男生有四名参赛选手分别获得了第一、二、三、五名的好成绩，取得了比赛的&ldquo;开门红&rdquo;！</p>

<p>　　主席台上，主持人播放各班的加油词为运动员鼓劲；主席台下，好人好事随处可见。三年一班两位女生为二年级二班走丢的同学找到了家长得到了称赞。</p>

<p>　　比赛场上热火朝天，赛场下面拉拉队员呐喊助威，大鼓、小号齐欢唱。同学们的脸上都洋溢着欢乐的笑容，无论输赢胜败，大家都好象在欢度自己的节日！</p>

<p>　　本届运动会以亲子接力赛画上一个完美的句号，我们期盼着下届运动会更精彩！</p>

<p>　　运动会新闻稿（五）：</p>

<p>　　一大早，全院学生来到了运动场，他们有的安排场地，有的整理服装，有的安放运动器材，忙得不亦乐乎，原本寂静的赛场一下子热闹起来。</p>

<p>　　当学生会主席王子瀚宣布运动比赛正式开始时，整个赛场顿时沸腾起来，尤其是上午举行的田径比赛，同学们的加油助威声此起彼伏，络绎不绝。</p>

<p>　　你看那径赛场上的运动员，一个个如矫兔般飞离起点，像利箭般冲向终点，引得在场的观众兴奋不已。</p>

<p>　　不论选手名次如何，他们都会得到观众的赞美和鼓励。</p>

<p>　　因为在观众的心中，这些运动员都发挥出了不屈不挠。</p>

<p>　　这次运动会诞生了许多第一，为明年的校运动会准备了力量。</p>

<p>　　下午举行的趣味运动会让人笑声不断，自行车慢骑，选手们的平衡力，掌握度，定力在此一一展现。</p>

<p>　　还有两人三足，更是考验着选手的团结与合作潜力，展现了选手的活力与付出。</p>

<p>　　最后的拔河比赛使运动会到达了高潮，拉拉队的欢呼一浪高过一浪。</p>

<p>　　此次运动会在我院人员的辛苦准备和各个专业的用心参加下取得了圆满成功，这次活动为整个校园增添了色彩，也在无形中增进了各个专业的了解，拉近了个专业间的距离，增厚了同学们的友谊。</p>
', 0, NULL, CAST(0x0000A9D000F5823C AS DateTime))
INSERT [dbo].[News] ([Id], [Title], [Type], [Content], [ClickNum], [Image], [OperTime]) VALUES (6, N'拼搏吧', N'比赛信息', N'<p>蔚蓝的天空下，有你矫健的身影，热闹的操场上，有你坚定的步伐，秀丽的鲜花后有你辛勤的汗水，我们的喝彩中，有你的自豪与骄傲!你的飒爽英姿，你的顽强拼搏，你的永不屈服，你的自我挑战，都深深地烙在每个人的心中，!拼搏者，你是赛场上最亮的点。拼搏者，你是生命乐章中最响的音符。场上的拼搏者，你是我们永久的骄傲!</p>

<p>　　朋友，在你踏上跑道的那一刻，告诉自己，无论成功与否，微笑着跑完全程，只要年轻的心还在蓬勃的跳动，就要大声告诉自己――将信心进行到底。</p>

<p>　　无论成功与否，我们永久铭记这充满奋斗印记的阳光灿烂的日子，无论你成功与否，刹那属于你。而你，必须属于永恒!</p>

<p>　　只要你拚搏了奋斗了，你就不必失望，你的生命已放出了闪光!成功属于每一个勇敢者!</p>

<p>　　我们为你呐喊，期望给你力量给你信心，因为我们明白那开似简单的脚步其实迈的艰难。</p>

<p>　　我们为你呐喊，虽然喊的火热朝天，但却期望给你送去荫凉。</p>

<p>&nbsp;</p>
', 1, NULL, CAST(0x0000A9D000F61794 AS DateTime))
INSERT [dbo].[News] ([Id], [Title], [Type], [Content], [ClickNum], [Image], [OperTime]) VALUES (7, N'XX同学获得100米冲刺第一名！', N'荣誉表彰', N'<p>祝贺XXX获得了第一名，你是最棒的</p>
', 4, N'/File/63682642741903.jpg', CAST(0x0000A9D000F66FE4 AS DateTime))
INSERT [dbo].[News] ([Id], [Title], [Type], [Content], [ClickNum], [Image], [OperTime]) VALUES (8, N'测试', N'精彩新闻', N'<p>123</p>
', 1, NULL, CAST(0x0000A9D000F6FD9A AS DateTime))
INSERT [dbo].[News] ([Id], [Title], [Type], [Content], [ClickNum], [Image], [OperTime]) VALUES (9, N'测试2', N'精彩新闻', N'<p>1234</p>
', 1, N'/File/63682642799332.jpg', CAST(0x0000A9D000F73078 AS DateTime))
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

INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (6, 3, 1, N'15.5', NULL, N'同意', 5, NULL, N'是', NULL, CAST(0x0000A9CE0001BB31 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (7, 1, 1, N'00:18:55', NULL, N'同意', 4, NULL, N'是', NULL, CAST(0x0000A9CE00021059 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (8, 3, 2, N'16.8', NULL, N'同意', 4, NULL, N'是', NULL, CAST(0x0000A9CF011F5B6F AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (9, 2, 2, N'04:10.22', NULL, N'同意', 1, NULL, N'是', NULL, CAST(0x0000A9CF011F5F13 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (10, 1, 2, N'00:18:18', NULL, N'同意', 2, NULL, N'是', NULL, CAST(0x0000A9CF011F6266 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (11, 5, 3, N'1.95', N'1.90', N'同意', 3, 3, N'是', NULL, CAST(0x0000A9CF011FC560 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (12, 4, 3, N'01:10.25', N'01:15:24', N'同意', 5, 4, N'是', NULL, CAST(0x0000A9CF011FC8DC AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (13, 5, 4, N'2.05', N'2.01', N'同意', 2, 2, N'是', NULL, CAST(0x0000A9CF011FDB33 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (14, 4, 4, N'02:10.25', N'01:55.12', N'同意', 1, 1, N'是', NULL, CAST(0x0000A9CF011FDEAA AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (15, 5, 10, N'1.86', N'1.88', N'同意', 4, 4, N'是', NULL, CAST(0x0000A9CF011FF3BD AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (16, 4, 10, N'01:50.25', N'01:44.23', N'同意', 2, 2, N'是', NULL, CAST(0x0000A9CF011FF7CD AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (17, 5, 11, N'1.75', N'1.85', N'同意', 5, 5, N'是', NULL, CAST(0x0000A9CF01200D9F AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (18, 4, 11, N'01:11.25', N'01:12:33', N'同意', 4, 5, N'是', NULL, CAST(0x0000A9CF01201047 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (19, 5, 18, N'2.15', N'2.16', N'同意', 1, 1, N'是', NULL, CAST(0x0000A9CF01202BEF AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (20, 4, 18, N'01:30.25', N'01:25.12', N'同意', 3, 3, N'是', NULL, CAST(0x0000A9CF01202F2B AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (21, 3, 21, N'19.52', NULL, N'同意', 3, NULL, N'是', NULL, CAST(0x0000A9CF0121CD56 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (22, 2, 21, N'05:10.22', NULL, N'同意', 5, NULL, N'是', NULL, CAST(0x0000A9CF0121D1AE AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (23, 1, 21, N'00:19:33', NULL, N'同意', 5, NULL, N'是', NULL, CAST(0x0000A9CF0121D52F AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (24, 2, 22, N'04:18.44', NULL, N'同意', 2, NULL, N'是', NULL, CAST(0x0000A9CF0121F3C1 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (25, 1, 22, N'00:21:55', NULL, N'同意', 6, NULL, N'是', NULL, CAST(0x0000A9CF0121F661 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (26, 3, 22, N'14', NULL, N'同意', 6, NULL, N'是', NULL, CAST(0x0000A9CF0121F999 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (27, 1, 12, N'00:16:46', NULL, N'同意', 1, NULL, N'是', NULL, CAST(0x0000A9CF01224740 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (28, 2, 12, N'04:37:21', NULL, N'同意', 3, NULL, N'是', NULL, CAST(0x0000A9CF01224A3E AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (29, 3, 12, N'20.5', NULL, N'同意', 1, NULL, N'是', NULL, CAST(0x0000A9CF01224D7E AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (30, 1, 13, N'00:18:26', NULL, N'同意', 3, NULL, N'是', NULL, CAST(0x0000A9CF01227382 AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (31, 2, 13, N'04:38:12', NULL, N'同意', 4, NULL, N'是', NULL, CAST(0x0000A9CF012276CD AS DateTime))
INSERT [dbo].[SignUp] ([Id], [ItemId], [ManId], [FirstScore], [FinalScore], [State], [RanK], [FinalRanK], [IsFinal], [Detail], [OperTime]) VALUES (32, 3, 13, N'19.9', NULL, N'同意', 2, NULL, N'是', NULL, CAST(0x0000A9CF012279BF AS DateTime))
SET IDENTITY_INSERT [dbo].[SignUp] OFF
SET IDENTITY_INSERT [dbo].[SportsItem] ON 

INSERT [dbo].[SportsItem] ([Id], [Name], [Type], [Limit], [RefereeId], [FirstTime], [FinalTime], [OperTime], [State], [Rule], [Num]) VALUES (1, N'男子100米冲刺', N'跑步', N'男', 1, CAST(0x0000A9CF00E6B680 AS DateTime), CAST(0x0000A9D000E6B680 AS DateTime), CAST(0x0000A9CD01021ADA AS DateTime), N'初赛完成', N'时间', 50)
INSERT [dbo].[SportsItem] ([Id], [Name], [Type], [Limit], [RefereeId], [FirstTime], [FinalTime], [OperTime], [State], [Rule], [Num]) VALUES (2, N'男子1000米跑', N'跑步', N'男', 2, CAST(0x0000A9CF00E6B680 AS DateTime), CAST(0x0000A9D000E6B680 AS DateTime), CAST(0x0000A9CD01026D54 AS DateTime), N'初赛完成', N'时间', 50)
INSERT [dbo].[SportsItem] ([Id], [Name], [Type], [Limit], [RefereeId], [FirstTime], [FinalTime], [OperTime], [State], [Rule], [Num]) VALUES (3, N'男子铅球', N'铅球', N'男', 1, CAST(0x0000A9CF00E6B680 AS DateTime), CAST(0x0000A9D000E6B680 AS DateTime), CAST(0x0000A9CD010382B9 AS DateTime), N'初赛完成', N'距离', 50)
INSERT [dbo].[SportsItem] ([Id], [Name], [Type], [Limit], [RefereeId], [FirstTime], [FinalTime], [OperTime], [State], [Rule], [Num]) VALUES (4, N'女子200米跑', N'跑步', N'女', 7, CAST(0x0000A9CF00E6B680 AS DateTime), CAST(0x0000A9D000E6B680 AS DateTime), CAST(0x0000A9CF011C0387 AS DateTime), N'决赛完成', N'距离', 50)
INSERT [dbo].[SportsItem] ([Id], [Name], [Type], [Limit], [RefereeId], [FirstTime], [FinalTime], [OperTime], [State], [Rule], [Num]) VALUES (5, N'女子跳远', N'跳远', N'女', 4, CAST(0x0000A9CF00E6B680 AS DateTime), CAST(0x0000A9D000E6B680 AS DateTime), CAST(0x0000A9CF011C506F AS DateTime), N'决赛完成', N'距离', 50)
SET IDENTITY_INSERT [dbo].[SportsItem] OFF
SET IDENTITY_INSERT [dbo].[SportsMan] ON 

INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (1, N'zhangtao', N'张涛', N'123456', N'20', N'男', N'信管151', N'13860626309', CAST(0x0000A9CD01471772 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (2, N'licheng', N'李晨', N'123456', N'21', N'男', N'信管151', N'13858642858', CAST(0x0000A9CF01129D9D AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (3, N'liman', N'李曼', N'123456', N'21', N'女', N'信管151', N'15256475578', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (4, N'zhangqiang', N'张蔷', N'123456', N'21', N'女', N'信管151', N'15256475548', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (5, N'xueqiang', N'薛熊', N'123456', N'22', N'男', N'信管151', N'15562475548', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (6, N'wuwei', N'吴伟', N'123456', N'22', N'男', N'信管151', N'18859106078', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (7, N'xiekang', N'谢康', N'123456', N'22', N'男', N'计科151', N'18859113296', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (8, N'maming', N'马敏', N'123456', N'20', N'男', N'计科151', N'18859106156', CAST(0x0000A9CD01471772 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (9, N'zhoutao', N'周涛', N'123456', N'21', N'男', N'计科151', N'15959101036', CAST(0x0000A9CF01129D9D AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (10, N'zhanghua', N'张花', N'123456', N'21', N'女', N'计科151', N'18858801542', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (11, N'wangnannan', N'汪楠楠', N'123456', N'21', N'女', N'计科151', N'15678150131', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (12, N'xieweiwei', N'谢伟伟', N'123456', N'22', N'男', N'计科151', N'18654012340', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (13, N'yulijie', N'余丽洁', N'123456', N'22', N'男', N'计科151', N'17560235012', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (14, N'yanghuahua', N'杨华华', N'123456', N'22', N'男', N'计科151', N'19501265042', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (15, N'mateng', N'马腾', N'123456', N'22', N'男', N'中文151', N'15689512310', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (16, N'linkang', N'林康', N'123456', N'20', N'男', N'中文151', N'13860626309', CAST(0x0000A9CD01471772 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (17, N'keshumin', N'柯淑敏', N'123456', N'21', N'男', N'中文151', N'13556505120', CAST(0x0000A9CF01129D9D AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (18, N'zouxiaowen', N'邹小文', N'123456', N'21', N'女', N'中文151', N'15548501531', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (19, N'guohua', N'郭桦', N'123456', N'21', N'女', N'中文151', N'18256550124', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (20, N'lizhe', N'李喆', N'123456', N'22', N'男', N'中文151', N'18652561201', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (21, N'caixiaowei', N'蔡晓伟', N'123456', N'22', N'男', N'中文151', N'17786541204', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
INSERT [dbo].[SportsMan] ([Id], [Account], [Name], [Pwd], [Age], [Sex], [Class], [Tel], [OperTime], [State]) VALUES (22, N'laizhelan', N'赖哲岚', N'123456', N'22', N'男', N'中文151', N'18759402356', CAST(0x0000A9CF0112D868 AS DateTime), N'正常')
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
