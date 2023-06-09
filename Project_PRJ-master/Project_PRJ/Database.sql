--CREATE DATABASE Movies
--go

--USE Movies;

-- DROP TABLE Genre;
CREATE TABLE TheLoai(
GenreName nvarchar(200) NOT NULL PRIMARY KEY,
GenreType varchar(100) NOT NULL
);

-- DROP TABLE Director;
CREATE TABLE GiamDoc(
DirectorID varchar(100) NOT NULL PRIMARY KEY,
DirectorName varchar(90) NOT NULL,
DirectoryNationality varchar(90) NOT NULL
);

-- DROP TABLE Movie;
CREATE TABLE Movie (
MovieID varchar(10) NOT NULL PRIMARY KEY,
[MovieTitle] [nvarchar](200) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[price] [int] NULL,
	[img] [varchar](max) NULL,
	[Time] [int] NULL,

GenreName nvarchar(200) FOREIGN KEY References TheLoai(GenreName),
DirectorID varchar (100) FOREIGN KEY References GiamDoc(DirectorID)
);


/****** Object:  Table [dbo].[Nhanvien]    Script Date: 03/14/2022 08:15:56 ******/
CREATE TABLE [Nhanvien](
	[nvid] [int] NOT NULL,
	[sellID] [int] NULL,
	[cateID] [int] NULL,
 CONSTRAINT [PK_Nhanvien] PRIMARY KEY CLUSTERED 
([nvid] ASC
)) ON [PRIMARY]


/****** Object:  Table [dbo].[Movie_NhanVien]    Script Date: 03/14/2022 08:13:59 ******/

CREATE TABLE [Movie_NhanVien](
	[movieid] [varchar](10) NOT NULL,
	[nvid] [int] NOT NULL,
 CONSTRAINT [PK_Movie_NhanVien] PRIMARY KEY CLUSTERED 
(
	[movieid] ASC,
	[nvid] ASC
) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [Movie_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_Movie_NhanVien_Movie] FOREIGN KEY([movieid])
REFERENCES [Movie] ([MovieID])




ALTER TABLE [Movie_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_Movie_NhanVien_Nhanvien] FOREIGN KEY([nvid])
REFERENCES [Nhanvien] ([nvid])


--Equivalent to Describe Table


 
  	  
--exec sp_columns Movie;

select* from TheLoai
INSERT INTO TheLoai VALUES 
				--('HD', 'Hành động'),
				('Science Fiction', 'Science Fiction'),
				('horror', 'horror'),
				('comedy', 'comedy'),
				('cartoon', 'cartoon'),
				('criminal', 'criminal'),
				('action','action');


INSERT INTO GiamDoc VALUES 
					('D01', 'Zack Snyder', 'American'),
					('D02', 'Tim Miller', 'American'),
					('D03', 'James Wan', 'Australian'),
					('D04', 'Rajkumar Hirani', 'Indian'),
					('D05', 'Ridley Scott', 'British'),
					('D06', 'Todd Phillips', 'American'),
					('D07', 'Sam Mendes', 'British'),
					('D08', 'Christopher Nolan', 'British');
				
		
INSERT INTO Movie VALUES 
    				('m01', 'Batman', '2016-03-25','9','https://media.maybe.vn/attachments/image-276-1645849093-jpeg.28431/' ,'140','action', 'D01' ),
    				('m02', 'Deadpool', '2016-02-12','10', 'https://m.media-amazon.com/images/M/MV5BMTYzMzUwMjAyNV5BMl5BanBnXkFtZTgwMDk2Nzc5NzE@._V1_.jpg','120', 'action', 'D02'),
    				('m03', 'Furious 9', '2015-04-03','9', 'https://ecdn.game4v.com/g4v-content/uploads/2021/04/Fast-9.jpg','111',	'criminal', 'D03'),
    				('m04', 'Into darknes', '2014-12-19','8','https://cdn.vox-cdn.com/thumbor/gFi9yvIKcTgQKuIuy8tupjZGYqI=/0x0:640x427/1400x1400/filters:focal(0x0:640x427):format(jpeg)/cdn.vox-cdn.com/assets/1839025/startrek.jpg','135',	'horror', 'D04'),
    				('m05', 'Gladiator', '2000-05-05','9','https://upload.wikimedia.org/wikipedia/vi/f/f8/GladiatorDVD.png','140',	'criminal', 'D05'),
    				('m06', 'Tom and Jejy', '2009-06-05','11','https://gamek.mediacdn.vn/133514250583805952/2021/1/15/1-16106966278281009206635.jpg','199',	 'cartoon', 'D06'),
    	
    				('m08', 'Star Wars', '2015-11-06','16','https://www.google.com/url?sa=i&url=https%3A%2F%2Finsidethemagic.net%2F2022%2F01%2Fstar-wars-the-freemaker-adventures-removed-disney-plus-th1%2Fcomments%2F&psig=AOvVaw2hy06Kd5w01DHs4G4qPV2s&ust=1647220016161000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCPjVl4bzwfYCFQAAAAAdAAAAABAK','89', 'horror', 'D08'),
    				('m09', 'Venom', '2005-06-15', '90','https://static.ssphim.net/static/5fe2d564b3fa6403ffa11d1c/61892e1fa9371f3a919b76c6_Venom-2-1.jpg','101','action', 'D01'),
    				('m10', 'iron Man3', '2008-07-18', '12','https://static.ssphim.net/static/5fe2d564b3fa6403ffa11d1c/5fe2d564b3fa648b2ca1229e_iron-man-3-1.jpg' ,'109', 'action', 'D02'),
    				('m12', 'The Flash', '2017-08-18', '10','https://m.media-amazon.com/images/M/MV5BMDIzNzYwNTctZWY4Mi00YjQ2LWI5YWYtMzdmNDgwMGI4Yzk1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg','123', 'Science Fiction', 'D03');
    				
    				




-- Account --;
Create table accountt (
	UserName nvarchar(50) primary key,
	Password nvarchar(50) not null,
	permission int 
)



   INSERT INTO Accountt
  Values	('1','Admin','Admin1','0','1'),
			('2','Thuong','12062001','1','0'),
			('3','Thai','thai','1','0'),
			('4','Quang','quang','0','1'),
			('5','Cuong','Cuong','1','0'),
			('6','Tuan','Tuan','0','1'),
			('7','flo','flo','1','0'),
			('8','yue','yue','0','1'),
			('9','yena','yena','1','0'),
			('10','max','max','0','1');
			
 INSERT INTO Nhanvien
  Values	('1','1','1'),
			('2','0','1'),
			('3','1','0'),
			('4','0','1'),
			('5','0','0'),
			('6','1','1');
 
 
 INSERT INTO Movie VALUES 
    				('M32', 'Batmdan', '2016-03-25','9','https://media.maybe.vn/attachments/image-276-1645849093-jpeg.28431/' ,'140',N'Hành Động', 'D01' )
INSERT INTO Movie VALUES 
    				(?, ?, ?,?,? ,?,?, ? )

 delete from Movie where MovieID ='M21'
 Select * From Movie
 
 insert into Movie (MovieID,[MovieTitle], [ReleaseDate] ,[price],[img],[Time],[GenreName],DirectorID)
 values ( ?,?,?,?,?,?,?,?)
 


