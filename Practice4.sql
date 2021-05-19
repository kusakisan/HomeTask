USE [Readers]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 19.05.2021 19:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[Year] [nchar](10) NOT NULL,
	[Kolvo] [nchar](10) NOT NULL,
	[Sale] [money] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books_Vidacha]    Script Date: 19.05.2021 19:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books_Vidacha](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdBook] [int] NOT NULL,
	[IdVidacha] [int] NOT NULL,
 CONSTRAINT [PK_Books_Vidacha] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izdatelctva_Books]    Script Date: 19.05.2021 19:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izdatelctva_Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdIzdatelstva] [int] NOT NULL,
	[IdBook] [int] NOT NULL,
 CONSTRAINT [PK_Izdatelctva_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izdatelstva]    Script Date: 19.05.2021 19:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izdatelstva](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Index] [nchar](10) NOT NULL,
	[Mail] [nvarchar](50) NOT NULL,
	[Webite] [nchar](10) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Izdatelstva] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Readers]    Script Date: 19.05.2021 19:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Readers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Middlename] [nvarchar](50) NULL,
	[Adress] [nvarchar](50) NOT NULL,
	[NumberPassport] [nvarchar](50) NOT NULL,
	[SeriesPassport] [nchar](10) NOT NULL,
	[NumberPhone] [varchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Readers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Readers_Vidacha]    Script Date: 19.05.2021 19:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Readers_Vidacha](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdReaders] [int] NOT NULL,
	[IdVidacha] [int] NOT NULL,
 CONSTRAINT [PK_Readers_Vidacha] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vidacha]    Script Date: 19.05.2021 19:14:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vidacha](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date_vidachi] [date] NOT NULL,
	[Date_sdachi] [date] NOT NULL,
	[KolvoZvezd] [int] NOT NULL,
	[IdDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Vidacha] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [Name], [Author], [Year], [Kolvo], [Sale], [IsDeleted]) VALUES (1, N'Мастер и Маргарита', N'Булгаков', N'2011      ', N'150       ', 300.0000, 0)
INSERT [dbo].[Books] ([Id], [Name], [Author], [Year], [Kolvo], [Sale], [IsDeleted]) VALUES (2, N'50 оттенков серого', N'Эрика Джаеймс', N'2012      ', N'200       ', 350.0000, 0)
INSERT [dbo].[Books] ([Id], [Name], [Author], [Year], [Kolvo], [Sale], [IsDeleted]) VALUES (3, N'До встречи с тобой', N'Джоджо Мойес', N'2013      ', N'252       ', 300.0000, 0)
INSERT [dbo].[Books] ([Id], [Name], [Author], [Year], [Kolvo], [Sale], [IsDeleted]) VALUES (4, N'Шантарам', N'Грегори Дэвид', N'2013      ', N'236       ', 400.0000, 0)
INSERT [dbo].[Books] ([Id], [Name], [Author], [Year], [Kolvo], [Sale], [IsDeleted]) VALUES (5, N'Чужак', N'Макс Фрай', N'2013      ', N'541       ', 500.0000, 0)
INSERT [dbo].[Books] ([Id], [Name], [Author], [Year], [Kolvo], [Sale], [IsDeleted]) VALUES (6, N'Острые преметы', N'Гиллиан Флинн', N'2014      ', N'125       ', 500.0000, 0)
INSERT [dbo].[Books] ([Id], [Name], [Author], [Year], [Kolvo], [Sale], [IsDeleted]) VALUES (7, N'Исчезнувшая', N'Гиллиан Флинн', N'2014      ', N'350       ', 500.0000, 0)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Books_Vidacha] ON 

INSERT [dbo].[Books_Vidacha] ([Id], [IdBook], [IdVidacha]) VALUES (1, 2, 1)
INSERT [dbo].[Books_Vidacha] ([Id], [IdBook], [IdVidacha]) VALUES (2, 1, 2)
INSERT [dbo].[Books_Vidacha] ([Id], [IdBook], [IdVidacha]) VALUES (3, 3, 4)
INSERT [dbo].[Books_Vidacha] ([Id], [IdBook], [IdVidacha]) VALUES (4, 4, 5)
INSERT [dbo].[Books_Vidacha] ([Id], [IdBook], [IdVidacha]) VALUES (5, 7, 6)
INSERT [dbo].[Books_Vidacha] ([Id], [IdBook], [IdVidacha]) VALUES (6, 2, 7)
INSERT [dbo].[Books_Vidacha] ([Id], [IdBook], [IdVidacha]) VALUES (7, 6, 8)
INSERT [dbo].[Books_Vidacha] ([Id], [IdBook], [IdVidacha]) VALUES (8, 5, 9)
INSERT [dbo].[Books_Vidacha] ([Id], [IdBook], [IdVidacha]) VALUES (9, 4, 10)
INSERT [dbo].[Books_Vidacha] ([Id], [IdBook], [IdVidacha]) VALUES (10, 5, 11)
SET IDENTITY_INSERT [dbo].[Books_Vidacha] OFF
GO
SET IDENTITY_INSERT [dbo].[Izdatelctva_Books] ON 

INSERT [dbo].[Izdatelctva_Books] ([Id], [IdIzdatelstva], [IdBook]) VALUES (1, 2, 1)
INSERT [dbo].[Izdatelctva_Books] ([Id], [IdIzdatelstva], [IdBook]) VALUES (2, 1, 2)
INSERT [dbo].[Izdatelctva_Books] ([Id], [IdIzdatelstva], [IdBook]) VALUES (3, 3, 3)
INSERT [dbo].[Izdatelctva_Books] ([Id], [IdIzdatelstva], [IdBook]) VALUES (4, 2, 4)
INSERT [dbo].[Izdatelctva_Books] ([Id], [IdIzdatelstva], [IdBook]) VALUES (5, 3, 5)
INSERT [dbo].[Izdatelctva_Books] ([Id], [IdIzdatelstva], [IdBook]) VALUES (6, 4, 6)
INSERT [dbo].[Izdatelctva_Books] ([Id], [IdIzdatelstva], [IdBook]) VALUES (7, 4, 7)
SET IDENTITY_INSERT [dbo].[Izdatelctva_Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Izdatelstva] ON 

INSERT [dbo].[Izdatelstva] ([Id], [Name], [City], [Index], [Mail], [Webite], [IsDeleted]) VALUES (1, N'Эксмо', N'Москва', N'6565656   ', N'eksmo@mail.ru', N'eksmo.ru  ', 0)
INSERT [dbo].[Izdatelstva] ([Id], [Name], [City], [Index], [Mail], [Webite], [IsDeleted]) VALUES (2, N'Россия', N'СанктПетербург', N'9848454   ', N'Russia@ya.ru', N'Russia.com', 0)
INSERT [dbo].[Izdatelstva] ([Id], [Name], [City], [Index], [Mail], [Webite], [IsDeleted]) VALUES (3, N'Буква', N'Смоленск', N'9878545   ', N'bukva@mail.ru', N'Bukva.com ', 0)
INSERT [dbo].[Izdatelstva] ([Id], [Name], [City], [Index], [Mail], [Webite], [IsDeleted]) VALUES (4, N'Издат ', N'Псков', N'9145588   ', N'lzdat@mail.ru', N'Lzdat.net ', 0)
SET IDENTITY_INSERT [dbo].[Izdatelstva] OFF
GO
SET IDENTITY_INSERT [dbo].[Readers] ON 

INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Middlename], [Adress], [NumberPassport], [SeriesPassport], [NumberPhone], [IsDeleted]) VALUES (1, N'Иван', N'Иванов', N'', N'Ул. Новая 1,кв.1', N'1011', N'111112    ', N'89520543632 ', 0)
INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Middlename], [Adress], [NumberPassport], [SeriesPassport], [NumberPhone], [IsDeleted]) VALUES (2, N'Сергей', N'Петров', NULL, N'Ул. Путина 5,кв 6', N'1371', N'641254    ', N'89654440231', 0)
INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Middlename], [Adress], [NumberPassport], [SeriesPassport], [NumberPhone], [IsDeleted]) VALUES (3, N'Светлана', N'Кривчик', NULL, N'Ул. Киевская 1, кв 1', N'1621', N'544847    ', N'8521441451', 0)
INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Middlename], [Adress], [NumberPassport], [SeriesPassport], [NumberPhone], [IsDeleted]) VALUES (4, N'Петрова', N'Анна', NULL, N'Ул. Авиаторов 5,кв 4', N'1021', N'222222    ', N'89111645215', 0)
INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Middlename], [Adress], [NumberPassport], [SeriesPassport], [NumberPhone], [IsDeleted]) VALUES (5, N'Андрей', N'Жильцов', NULL, N'Ул. Смоленская 15, кв 4', N'1215', N'421032    ', N'89478263154', 0)
INSERT [dbo].[Readers] ([Id], [Firstname], [Lastname], [Middlename], [Adress], [NumberPassport], [SeriesPassport], [NumberPhone], [IsDeleted]) VALUES (6, N'Катерина', N'Степанова', NULL, N' Ул. Ленина 8, кв 1', N'1210', N'326142    ', N'89011154577', 0)
SET IDENTITY_INSERT [dbo].[Readers] OFF
GO
SET IDENTITY_INSERT [dbo].[Readers_Vidacha] ON 

INSERT [dbo].[Readers_Vidacha] ([Id], [IdReaders], [IdVidacha]) VALUES (1, 1, 1)
INSERT [dbo].[Readers_Vidacha] ([Id], [IdReaders], [IdVidacha]) VALUES (2, 2, 2)
INSERT [dbo].[Readers_Vidacha] ([Id], [IdReaders], [IdVidacha]) VALUES (5, 3, 4)
INSERT [dbo].[Readers_Vidacha] ([Id], [IdReaders], [IdVidacha]) VALUES (6, 4, 5)
INSERT [dbo].[Readers_Vidacha] ([Id], [IdReaders], [IdVidacha]) VALUES (7, 5, 6)
INSERT [dbo].[Readers_Vidacha] ([Id], [IdReaders], [IdVidacha]) VALUES (8, 1, 7)
INSERT [dbo].[Readers_Vidacha] ([Id], [IdReaders], [IdVidacha]) VALUES (10, 2, 8)
INSERT [dbo].[Readers_Vidacha] ([Id], [IdReaders], [IdVidacha]) VALUES (11, 5, 9)
INSERT [dbo].[Readers_Vidacha] ([Id], [IdReaders], [IdVidacha]) VALUES (12, 4, 10)
SET IDENTITY_INSERT [dbo].[Readers_Vidacha] OFF
GO
SET IDENTITY_INSERT [dbo].[Vidacha] ON 

INSERT [dbo].[Vidacha] ([Id], [Date_vidachi], [Date_sdachi], [KolvoZvezd], [IdDeleted]) VALUES (1, CAST(N'2015-03-01' AS Date), CAST(N'2015-03-04' AS Date), 3, 0)
INSERT [dbo].[Vidacha] ([Id], [Date_vidachi], [Date_sdachi], [KolvoZvezd], [IdDeleted]) VALUES (2, CAST(N'2015-03-03' AS Date), CAST(N'2015-03-05' AS Date), 5, 0)
INSERT [dbo].[Vidacha] ([Id], [Date_vidachi], [Date_sdachi], [KolvoZvezd], [IdDeleted]) VALUES (4, CAST(N'2015-03-07' AS Date), CAST(N'2015-03-10' AS Date), 1, 0)
INSERT [dbo].[Vidacha] ([Id], [Date_vidachi], [Date_sdachi], [KolvoZvezd], [IdDeleted]) VALUES (5, CAST(N'2015-03-03' AS Date), CAST(N'2015-03-05' AS Date), 2, 0)
INSERT [dbo].[Vidacha] ([Id], [Date_vidachi], [Date_sdachi], [KolvoZvezd], [IdDeleted]) VALUES (6, CAST(N'2015-03-09' AS Date), CAST(N'2015-03-13' AS Date), 3, 0)
INSERT [dbo].[Vidacha] ([Id], [Date_vidachi], [Date_sdachi], [KolvoZvezd], [IdDeleted]) VALUES (7, CAST(N'2015-03-16' AS Date), CAST(N'2015-03-20' AS Date), 4, 0)
INSERT [dbo].[Vidacha] ([Id], [Date_vidachi], [Date_sdachi], [KolvoZvezd], [IdDeleted]) VALUES (8, CAST(N'2015-03-23' AS Date), CAST(N'2015-03-27' AS Date), 3, 0)
INSERT [dbo].[Vidacha] ([Id], [Date_vidachi], [Date_sdachi], [KolvoZvezd], [IdDeleted]) VALUES (9, CAST(N'2015-03-24' AS Date), CAST(N'2015-03-27' AS Date), 4, 0)
INSERT [dbo].[Vidacha] ([Id], [Date_vidachi], [Date_sdachi], [KolvoZvezd], [IdDeleted]) VALUES (10, CAST(N'2015-03-30' AS Date), CAST(N'2015-04-01' AS Date), 2, 0)
INSERT [dbo].[Vidacha] ([Id], [Date_vidachi], [Date_sdachi], [KolvoZvezd], [IdDeleted]) VALUES (11, CAST(N'2015-03-06' AS Date), CAST(N'2015-03-08' AS Date), 3, 0)
SET IDENTITY_INSERT [dbo].[Vidacha] OFF
GO
ALTER TABLE [dbo].[Books] ADD  CONSTRAINT [DF_Books_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Izdatelstva] ADD  CONSTRAINT [DF_Izdatelstva_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Readers] ADD  CONSTRAINT [DF_Readers_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Vidacha] ADD  CONSTRAINT [DF_Vidacha_IdDeleted]  DEFAULT ((0)) FOR [IdDeleted]
GO
ALTER TABLE [dbo].[Books_Vidacha]  WITH CHECK ADD  CONSTRAINT [FK_Books_Vidacha_Books] FOREIGN KEY([IdBook])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Books_Vidacha] CHECK CONSTRAINT [FK_Books_Vidacha_Books]
GO
ALTER TABLE [dbo].[Books_Vidacha]  WITH CHECK ADD  CONSTRAINT [FK_Books_Vidacha_Vidacha] FOREIGN KEY([IdVidacha])
REFERENCES [dbo].[Vidacha] ([Id])
GO
ALTER TABLE [dbo].[Books_Vidacha] CHECK CONSTRAINT [FK_Books_Vidacha_Vidacha]
GO
ALTER TABLE [dbo].[Izdatelctva_Books]  WITH CHECK ADD  CONSTRAINT [FK_Izdatelctva_Books_Books] FOREIGN KEY([IdBook])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Izdatelctva_Books] CHECK CONSTRAINT [FK_Izdatelctva_Books_Books]
GO
ALTER TABLE [dbo].[Izdatelctva_Books]  WITH CHECK ADD  CONSTRAINT [FK_Izdatelctva_Books_Izdatelstva] FOREIGN KEY([IdIzdatelstva])
REFERENCES [dbo].[Izdatelstva] ([Id])
GO
ALTER TABLE [dbo].[Izdatelctva_Books] CHECK CONSTRAINT [FK_Izdatelctva_Books_Izdatelstva]
GO
ALTER TABLE [dbo].[Readers_Vidacha]  WITH CHECK ADD  CONSTRAINT [FK_Readers_Vidacha_Readers] FOREIGN KEY([IdReaders])
REFERENCES [dbo].[Readers] ([Id])
GO
ALTER TABLE [dbo].[Readers_Vidacha] CHECK CONSTRAINT [FK_Readers_Vidacha_Readers]
GO
ALTER TABLE [dbo].[Readers_Vidacha]  WITH CHECK ADD  CONSTRAINT [FK_Readers_Vidacha_Vidacha] FOREIGN KEY([IdVidacha])
REFERENCES [dbo].[Vidacha] ([Id])
GO
ALTER TABLE [dbo].[Readers_Vidacha] CHECK CONSTRAINT [FK_Readers_Vidacha_Vidacha]
GO
