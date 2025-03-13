use dbFlowerShop
go


if exists(select * from sys.tables where name = 'Categories')
drop table Categories
go


CREATE TABLE Categories
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(200) NOT NULL,
    ParentCategoryId INT NULL,
    FOREIGN KEY (ParentCategoryId) REFERENCES Categories(Id)
);