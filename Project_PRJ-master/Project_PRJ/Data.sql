
/****** Object:  Database [CGVDTB]    Script Date: 03/14/2022 23:00:47 ******/
--CREATE DATABASE [CGVDTB] --
USE [CGVDTB]
GO
/****** Object:  Table [dbo].[GiamDoc]    Script Date: 03/14/2022 23:00:47 ******/

CREATE TABLE [GiamDoc](
	[DirectorID] [varchar](100) NOT NULL,
	[DirectorName] [varchar](90) NOT NULL,
	[DirectoryNationality] [varchar](90) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DirectorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT [dbo].[GiamDoc] ([DirectorID], [DirectorName], [DirectoryNationality]) VALUES (N'D01', N'Zack Snyder', N'American')
INSERT [dbo].[GiamDoc] ([DirectorID], [DirectorName], [DirectoryNationality]) VALUES (N'D02', N'Tim Miller', N'American')
INSERT [dbo].[GiamDoc] ([DirectorID], [DirectorName], [DirectoryNationality]) VALUES (N'D03', N'James Wan', N'Australian')
INSERT [dbo].[GiamDoc] ([DirectorID], [DirectorName], [DirectoryNationality]) VALUES (N'D04', N'Rajkumar Hirani', N'Indian')
INSERT [dbo].[GiamDoc] ([DirectorID], [DirectorName], [DirectoryNationality]) VALUES (N'D05', N'Ridley Scott', N'British')
INSERT [dbo].[GiamDoc] ([DirectorID], [DirectorName], [DirectoryNationality]) VALUES (N'D06', N'Todd Phillips', N'American')
INSERT [dbo].[GiamDoc] ([DirectorID], [DirectorName], [DirectoryNationality]) VALUES (N'D07', N'Sam Mendes', N'British')
INSERT [dbo].[GiamDoc] ([DirectorID], [DirectorName], [DirectoryNationality]) VALUES (N'D08', N'Christopher Nolan', N'British')
/****** Object:  Table [dbo].[Accountt]    Script Date: 03/14/2022 23:00:47 ******/

CREATE TABLE [Accountt](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[user] [nvarchar](255) NOT NULL,
	[pass] [nvarchar](255) NOT NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
( [user] ASC)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[Accountt] ON
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Admin', N'Admin', 0, 1)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Cuong', N'Cuong', 1, 0)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'flo', N'flo', 1, 0)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'max', N'max', 0, 1)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'MDA', N'Admin1', 0, 0)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'mrc', N'123', 0, 0)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Quang', N'quang', 0, 1)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Thai', N'thai', 1, 0)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Thuong', N'12062001', 1, 1)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'thuong121', N'123456', 0, 0)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Tuan', N'Tuan', 0, 1)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'yena', N'yena', 1, 0)
INSERT [dbo].[Accountt] ([UID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'yue', N'yue', 0, 0)
SET IDENTITY_INSERT [dbo].[Accountt] OFF
/****** Object:  Table [dbo].[TheLoai]    Script Date: 03/14/2022 23:00:47 ******/

CREATE TABLE [dbo].[TheLoai](
	[GenreName] [nvarchar](200) NOT NULL,
	[GenreType] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GenreName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TheLoai] ([GenreName], [GenreType]) VALUES (N'action', N'action')
INSERT [dbo].[TheLoai] ([GenreName], [GenreType]) VALUES (N'cartoon', N'cartoon')
INSERT [dbo].[TheLoai] ([GenreName], [GenreType]) VALUES (N'comedy', N'comedy')
INSERT [dbo].[TheLoai] ([GenreName], [GenreType]) VALUES (N'criminal', N'criminal')
INSERT [dbo].[TheLoai] ([GenreName], [GenreType]) VALUES (N'horror', N'horror')
INSERT [dbo].[TheLoai] ([GenreName], [GenreType]) VALUES (N'Science Fiction', N'Science Fiction')
/****** Object:  Table [dbo].[Movie]    Script Date: 03/14/2022 23:00:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movie](
	[MovieID] [varchar](10) NOT NULL,
	[MovieTitle] [nvarchar](200) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[price] [int] NULL,
	[img] [varchar](max) NULL,
	[Time] [int] NULL,
	[GenreName] [nvarchar](200) NULL,
	[DirectorID] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm01', N'Batman', CAST(0x2F3B0B00 AS Date), 9, N'https://media.maybe.vn/attachments/image-276-1645849093-jpeg.28431/', 140, N'action', N'D01')
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm02', N'Deadpool', CAST(0x053B0B00 AS Date), 10, N'https://m.media-amazon.com/images/M/MV5BMTYzMzUwMjAyNV5BMl5BanBnXkFtZTgwMDk2Nzc5NzE@._V1_.jpg', 120, N'action', N'D02')
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm03', N'Furious 9', CAST(0xCA390B00 AS Date), 9, N'https://ecdn.game4v.com/g4v-content/uploads/2021/04/Fast-9.jpg', 111, N'criminal', N'D03')
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm04', N'Into darknes', CAST(0x61390B00 AS Date), 8, N'https://cdn.vox-cdn.com/thumbor/gFi9yvIKcTgQKuIuy8tupjZGYqI=/0x0:640x427/1400x1400/filters:focal(0x0:640x427):format(jpeg)/cdn.vox-cdn.com/assets/1839025/startrek.jpg', 135, N'horror', N'D04')
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm05', N'Gladiator', CAST(0x84240B00 AS Date), 9, N'https://upload.wikimedia.org/wikipedia/vi/f/f8/GladiatorDVD.png', 140, N'criminal', N'D05')
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm06', N'Tom and Jejy', CAST(0x7A310B00 AS Date), 11, N'https://gamek.mediacdn.vn/133514250583805952/2021/1/15/1-16106966278281009206635.jpg', 199, N'cartoon', N'D06')
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm08', N'Star Wars', CAST(0xA33A0B00 AS Date), 16, N'https://www.google.com/url?sa=i&url=https%3A%2F%2Finsidethemagic.net%2F2022%2F01%2Fstar-wars-the-freemaker-adventures-removed-disney-plus-th1%2Fcomments%2F&psig=AOvVaw2hy06Kd5w01DHs4G4qPV2s&ust=1647220016161000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCPjVl4bzwfYCFQAAAAAdAAAAABAK', 89, N'horror', N'D08')
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm09', N'Venom', CAST(0xCF2B0B00 AS Date), 90, N'https://static.ssphim.net/static/5fe2d564b3fa6403ffa11d1c/61892e1fa9371f3a919b76c6_Venom-2-1.jpg', 101, N'action', N'D01')
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm10', N'iron Man3', CAST(0x38300B00 AS Date), 12, N'https://static.ssphim.net/static/5fe2d564b3fa6403ffa11d1c/5fe2d564b3fa648b2ca1229e_iron-man-3-1.jpg', 109, N'action', N'D02')
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm12', N'The Flash', CAST(0x2E3D0B00 AS Date), 10, N'https://m.media-amazon.com/images/M/MV5BMDIzNzYwNTctZWY4Mi00YjQ2LWI5YWYtMzdmNDgwMGI4Yzk1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg', 123, N'Science Fiction', N'D03')
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm23', N'Ga Dien Bao thu', CAST(0xBE440B00 AS Date), 9, N'https://www.vietphucinema.com/temp/-uploaded-phim-thang32022_gadiendoc_cr_500x700.jpg', 144, N'action', N'D01')
INSERT [dbo].[Movie] ([MovieID], [MovieTitle], [ReleaseDate], [price], [img], [Time], [GenreName], [DirectorID]) VALUES (N'm24', N'test lan 2', CAST(0xBE440B00 AS Date), 99, N'https://www.vietphucinema.com/temp/-uploaded-phim-thang32022_gadiendoc_cr_500x700.jpg', 123, N'criminal', N'D01')
/****** Object:  ForeignKey [FK__Movie__DirectorI__02084FDA]    Script Date: 03/14/2022 23:00:47 ******/
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD FOREIGN KEY([DirectorID])
REFERENCES [dbo].[GiamDoc] ([DirectorID])
GO
/****** Object:  ForeignKey [FK__Movie__GenreName__01142BA1]    Script Date: 03/14/2022 23:00:47 ******/
ALTER TABLE [dbo].[Movie]  WITH CHECK ADD FOREIGN KEY([GenreName])
REFERENCES [dbo].[TheLoai] ([GenreName])
GO
