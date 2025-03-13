use dbFlowerShop
go

if exists(select * from sys.tables where name = 'Comments')
drop table Comments
go


create table Comments
(
	Id int primary key identity(1, 1),
	ProductId int not null,
	Rating int not null,
	CreatedAt dateTime not null,
	Text nvarchar(2000) not null
	FOREIGN KEY (ProductId) REFERENCES Products(Id)
)