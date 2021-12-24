create database ordermanagement
go
create table Customer(
     customerID int primary key ,
	 cusname nvarchar(100) not null,
	 cusaddress nvarchar(100),
	 tel char(15)
	 
)
go
create table Oder(
     customerID int,
     orderID int,
	 orderdate date ,
	 primary key (customerID, orderID),
	 foreign key (customerID) references Customer
	
)
go

create table product(
     productID int primary key identity not null,
	 productname nvarchar(200) not null,
	 pro_description nvarchar(200) null,
	 unit nvarchar(50) null,
	 price money,
	 qty int
	 
)
go
create table orderDetails(
     orderID int,
     productID int,
	 price money,
	 qty int,
	 primary key (orderID,productID),
	 foreign key (customerID) references Customer,
	 foreign key (productID) references product
)
go

select*from Customer 

select*from Oder

select*from product

select* from orderDetails
