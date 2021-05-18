USE [Students]
GO
/****** Object:  Table [dbo].[Discipline]    Script Date: 18.05.2021 18:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[KolChasov] [int] NOT NULL,
	[IdPrepod] [int] NOT NULL,
 CONSTRAINT [PK_Discipline] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discipline_Kafedra]    Script Date: 18.05.2021 18:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline_Kafedra](
	[idDiscipline] [int] NOT NULL,
	[IdKafedra] [int] NOT NULL,
 CONSTRAINT [PK_Discipline_Kafedra] PRIMARY KEY CLUSTERED 
(
	[idDiscipline] ASC,
	[IdKafedra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discipline_Prepodovatel]    Script Date: 18.05.2021 18:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline_Prepodovatel](
	[IdDiscipline] [int] NOT NULL,
	[IdPrepodovatel] [int] NOT NULL,
 CONSTRAINT [PK_Discipline_Prepodovatel] PRIMARY KEY CLUSTERED 
(
	[IdDiscipline] ASC,
	[IdPrepodovatel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discipline_Vedomost]    Script Date: 18.05.2021 18:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline_Vedomost](
	[IdVedomost] [int] NOT NULL,
	[IdDescipline] [int] NOT NULL,
 CONSTRAINT [PK_Discipline_Vedomost] PRIMARY KEY CLUSTERED 
(
	[IdVedomost] ASC,
	[IdDescipline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kafedra]    Script Date: 18.05.2021 18:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kafedra](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ZavKafedri] [nvarchar](50) NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kafedra] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prepod]    Script Date: 18.05.2021 18:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prepod](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Middlename] [nvarchar](50) NOT NULL,
	[IdDiscipline] [int] NOT NULL,
 CONSTRAINT [PK_Prepod] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 18.05.2021 18:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 18.05.2021 18:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Zachetka] [int] IDENTITY(1,1) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Middlename] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Student_1] PRIMARY KEY CLUSTERED 
(
	[Zachetka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 18.05.2021 18:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[IdRole] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vedomost]    Script Date: 18.05.2021 18:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vedomost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdStudent] [int] NOT NULL,
	[Semesrt] [int] NOT NULL,
	[Estimation] [int] NOT NULL,
 CONSTRAINT [PK_Vedomost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Discipline] ([Id], [Name], [KolChasov], [IdPrepod]) VALUES (1, N'Мировая литература', 120, 1)
INSERT [dbo].[Discipline] ([Id], [Name], [KolChasov], [IdPrepod]) VALUES (2, N'Античная литература', 60, 1)
INSERT [dbo].[Discipline] ([Id], [Name], [KolChasov], [IdPrepod]) VALUES (3, N'Древнеримская литература', 100, 2)
INSERT [dbo].[Discipline] ([Id], [Name], [KolChasov], [IdPrepod]) VALUES (4, N'Английская литература', 120, 3)
GO
SET IDENTITY_INSERT [dbo].[Kafedra] ON 

INSERT [dbo].[Kafedra] ([Id], [Name], [ZavKafedri], [Number]) VALUES (1, N'Кафедра Литературы', N'1', N'+79584632514')
INSERT [dbo].[Kafedra] ([Id], [Name], [ZavKafedri], [Number]) VALUES (2, N'Кафедра Исскуства', N'2', N'+79586425123')
INSERT [dbo].[Kafedra] ([Id], [Name], [ZavKafedri], [Number]) VALUES (3, N'Кафедра Истории', N'3', N'+79584125623')
SET IDENTITY_INSERT [dbo].[Kafedra] OFF
GO
SET IDENTITY_INSERT [dbo].[Prepod] ON 

INSERT [dbo].[Prepod] ([Id], [Lastname], [Firstname], [Middlename], [IdDiscipline]) VALUES (1, N'Федотов', N'Андрей', N'Матвеевич', 1)
INSERT [dbo].[Prepod] ([Id], [Lastname], [Firstname], [Middlename], [IdDiscipline]) VALUES (2, N'Захарова', N'Алиса', N'Ивановна', 2)
INSERT [dbo].[Prepod] ([Id], [Lastname], [Firstname], [Middlename], [IdDiscipline]) VALUES (5, N'Никифоров', N'Никита', N'Тимофеевич', 3)
SET IDENTITY_INSERT [dbo].[Prepod] OFF
GO
INSERT [dbo].[Role] ([Id], [Role]) VALUES (1, N'Преподователь')
INSERT [dbo].[Role] ([Id], [Role]) VALUES (2, N'Студент')
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Zachetka], [Lastname], [Firstname], [Middlename]) VALUES (1, N'Власова', N'Мила', N'Марковна')
INSERT [dbo].[Student] ([Zachetka], [Lastname], [Firstname], [Middlename]) VALUES (2, N'Кузнецов', N'Кирилл', N'Русланович')
INSERT [dbo].[Student] ([Zachetka], [Lastname], [Firstname], [Middlename]) VALUES (3, N'Титова', N'Ярослава', N'Савельевна')
INSERT [dbo].[Student] ([Zachetka], [Lastname], [Firstname], [Middlename]) VALUES (5, N'Колесов', N'Даниил', N'Алексеевич')
INSERT [dbo].[Student] ([Zachetka], [Lastname], [Firstname], [Middlename]) VALUES (6, N'Жуков', N'Фёдор', N'Глебович')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
INSERT [dbo].[User] ([Id], [IdRole], [Login], [Password]) VALUES (1, 1, N'111', N'111')
INSERT [dbo].[User] ([Id], [IdRole], [Login], [Password]) VALUES (2, 1, N'222', N'222')
INSERT [dbo].[User] ([Id], [IdRole], [Login], [Password]) VALUES (3, 2, N'123', N'123')
GO
ALTER TABLE [dbo].[Discipline_Kafedra]  WITH CHECK ADD  CONSTRAINT [FK_Discipline_Kafedra_Discipline] FOREIGN KEY([idDiscipline])
REFERENCES [dbo].[Discipline] ([Id])
GO
ALTER TABLE [dbo].[Discipline_Kafedra] CHECK CONSTRAINT [FK_Discipline_Kafedra_Discipline]
GO
ALTER TABLE [dbo].[Discipline_Kafedra]  WITH CHECK ADD  CONSTRAINT [FK_Discipline_Kafedra_Kafedra] FOREIGN KEY([IdKafedra])
REFERENCES [dbo].[Kafedra] ([Id])
GO
ALTER TABLE [dbo].[Discipline_Kafedra] CHECK CONSTRAINT [FK_Discipline_Kafedra_Kafedra]
GO
ALTER TABLE [dbo].[Discipline_Prepodovatel]  WITH CHECK ADD  CONSTRAINT [FK_Discipline_Prepodovatel_Discipline] FOREIGN KEY([IdDiscipline])
REFERENCES [dbo].[Discipline] ([Id])
GO
ALTER TABLE [dbo].[Discipline_Prepodovatel] CHECK CONSTRAINT [FK_Discipline_Prepodovatel_Discipline]
GO
ALTER TABLE [dbo].[Discipline_Prepodovatel]  WITH CHECK ADD  CONSTRAINT [FK_Discipline_Prepodovatel_Prepod] FOREIGN KEY([IdPrepodovatel])
REFERENCES [dbo].[Prepod] ([Id])
GO
ALTER TABLE [dbo].[Discipline_Prepodovatel] CHECK CONSTRAINT [FK_Discipline_Prepodovatel_Prepod]
GO
ALTER TABLE [dbo].[Discipline_Vedomost]  WITH CHECK ADD  CONSTRAINT [FK_Discipline_Vedomost_Discipline] FOREIGN KEY([IdDescipline])
REFERENCES [dbo].[Discipline] ([Id])
GO
ALTER TABLE [dbo].[Discipline_Vedomost] CHECK CONSTRAINT [FK_Discipline_Vedomost_Discipline]
GO
ALTER TABLE [dbo].[Discipline_Vedomost]  WITH CHECK ADD  CONSTRAINT [FK_Discipline_Vedomost_Vedomost] FOREIGN KEY([IdVedomost])
REFERENCES [dbo].[Vedomost] ([Id])
GO
ALTER TABLE [dbo].[Discipline_Vedomost] CHECK CONSTRAINT [FK_Discipline_Vedomost_Vedomost]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[Vedomost]  WITH CHECK ADD  CONSTRAINT [FK_Vedomost_Student] FOREIGN KEY([IdStudent])
REFERENCES [dbo].[Student] ([Zachetka])
GO
ALTER TABLE [dbo].[Vedomost] CHECK CONSTRAINT [FK_Vedomost_Student]
GO
