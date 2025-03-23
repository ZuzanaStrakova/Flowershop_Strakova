use dbFlowerShop
go


if exists(select * from sys.tables where name = 'OrderItems')
drop table OrderItems
go


CREATE TABLE OrderItems 
(
    Id INT IDENTITY(1,1) NOT NULL,
    OrderId INT NOT NULL,
    ProductId INT NOT NULL,
    ProductPrice MONEY NOT NULL,
    Quantity INT NOT NULL,
	FOREIGN KEY (ProductId) REFERENCES Products(Id),
	FOREIGN KEY (OrderId) REFERENCES Orders(Id)
);
