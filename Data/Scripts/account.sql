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
    Token varchar(128) default null
)

insert into Account values
('strakovazuzana', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'admin', null),
('kvetule', '481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5', 'user', null)
go