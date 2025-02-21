use dbFlowerShop
go

if exists(select * from sys.tables where name = 'Products')
drop table Products
go


create table Products
(
	Id int not null identity(1, 1),
	Name nvarchar(200) not null,
	CategoryId int not null,
	Description nvarchar(2000) null,
	Price money not null,
	Amount int not null,
	ImageUrl nvarchar(500),
	FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
)