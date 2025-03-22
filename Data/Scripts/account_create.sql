use dbFlowerShop
go

if exists(select * from sys.tables where name = 'Account')
drop table Account
go

create table Account (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Username varchar(64) not null,
    Password varchar(128) not null,
    Role varchar(64) not null,
	Adress nvarchar(200) null,
	Email nvarchar(200) null,
	Phone nvarchar(16) null
)