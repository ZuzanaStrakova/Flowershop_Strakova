use dbFlowerShop
go

if exists(select * from sys.tables where name = 'Products')
drop table Products
go


create table Products
(
	Id int primary key identity(1, 1),
	Name nvarchar(200) not null,
	CategoryId int not null,
	Description nvarchar(2000) null,
	Price money not null,
	StorageAmount int not null,
	ImageUrl nvarchar(500),
	Rating int,
	RatingCount int,
	IsTopProduct bit
	FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
)