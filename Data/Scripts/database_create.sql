use master
go

if exists(select * from sys.databases where name = 'dbFlowerShop')
drop database dbFlowerShop
go

create database dbFlowerShop
go
