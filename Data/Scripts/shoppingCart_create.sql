use dbFlowerShop
go


if exists(select * from sys.tables where name = 'ShoppingCarts')
drop table ShoppingCarts
go


CREATE TABLE ShoppingCarts
(
    Id INT PRIMARY KEY IDENTITY(1,1),
    AccountId INT NOT NULL,
    ProductId INT NOT NULL,
	Quantity INT NOT NULL,
    FOREIGN KEY (AccountId) REFERENCES Account(Id),
	FOREIGN KEY (ProductId) REFERENCES Products(Id)
);