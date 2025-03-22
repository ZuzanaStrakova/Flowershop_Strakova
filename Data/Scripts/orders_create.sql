use dbFlowerShop
go


if exists(select * from sys.tables where name = 'Orders')
drop table Orders
go


CREATE TABLE Orders
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    AccountId INT NOT NULL,
    DeliveryAdress NVARCHAR(200) NULL,
	Email NVARCHAR(200) NULL,
	Phone NVARCHAR(200) NOT NULL,
	DeliveryMethod NVARCHAR(200) NOT NULL,
	PaymentMethod NVARCHAR(200) NOT NULL,
	Status NVARCHAR(50) NOT NULL,
	OrderDate DATE NOT NULL,
    FOREIGN KEY (AccountId) REFERENCES Account(Id)
);