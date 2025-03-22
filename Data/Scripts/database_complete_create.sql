:cd 'C:\Users\modry\Desktop\Flowershop_Strakova\Data\Scripts'
use master
go

if exists(select * from sys.databases where name = 'dbFlowerShop')
drop database dbFlowerShop
go

create database dbFlowerShop
go



:r categories_create.sql 
go
--:r categories_insert.sql
--:r products_create.sql
--:r products_insert.sql
--:r account_create.sql
--:r account_insert.sql
--:r comments_create.sql
--:r shoppingCart_create.sql
--:r orderItems_create.sql
--:r orders_create.sql