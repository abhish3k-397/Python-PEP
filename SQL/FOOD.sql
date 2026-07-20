show databases;
create database FoodDeli;
use FoodDeli;
create table Customers(
	Customer_ID int primary key,
    Customer_Name varchar(50) not null,
    City varchar(50) not null
);

create table Restaurants(
	Restaurant_ID int primary key,
    Restaurant_Name varchar(100) not null,
    City varchar(50) not null
);


create table Delivery_Partners(
	Partner_ID int primary key,
    Partner_Name varchar(50) not null,
    Vehicle varchar(50)
);

create table Delivery_Orders(
	Order_ID int primary key,
    Customer_ID int not null,
    Restaurant_ID int not null,
    Partner_ID int not null,
    Order_Amount decimal(10,2) not null,
    Order_Date date not null,
    foreign key(Customer_ID) references Customers(Customer_ID),
    foreign key(Restaurant_ID) references Restaurants(Restaurant_ID),
    foreign key(Partner_ID) references Delivery_Partners(Partner_ID)
);

create database normalizationLab;
use normalizationLab;
show tables;
drop database normalizationLab;


create table OrderData(
	OrderID int,
    CustomerName varchar(50),
    Phone varchar(15),
    Address varchar(100),
    ProductName varchar(50),
    Category varchar(30),
    SupplierName varchar(50),
    SupplierPhone varchar(15),
    Quantity int,
    Price decimal(10,2)
);

drop table OrderData;

INSERT INTO OrderData VALUES
(101,'Rahul','9876500011','Delhi','Laptop','Electronics','ABC Suppliers','9991111111',1,65000),
(102,'Rahul','9876500011','Delhi','Mouse','Electronics','ABC Suppliers','9991111111',2,700),
(103,'Rahul','9876500011','Delhi','Keyboard','Electronics','ABC Suppliers','9991111111',1,1200),
(104,'Aman','9876500022','Noida','Laptop','Electronics','ABC Suppliers','9991111111',1,65000),
(105,'Aman','9876500022','Noida','Pendrive','Accessories','XYZ Traders','9992222222',3,500),
(106,'Priya','9876500033','Mumbai','Monitor','Electronics','Tech World','9993333333',1,12000),
(107,'Priya','9876500033','Mumbai','Printer','Electronics','Tech World','9993333333',1,8500),
(108,'Rohan','9876500044','Pune','Headphones','Accessories','Sound Hub','9994444444',2,1800),
(109,'Rohan','9876500044','Pune','Speaker','Accessories','Sound Hub','9994444444',1,3500),
(110,'Neha','9876500055','Chandigarh','Tablet','Electronics','Digital Store','9995555555',1,28000),
(111,'Neha','9876500055','Chandigarh','Charger','Accessories','Digital Store','9995555555',2,900),
(112,'Karan','9876500066','Jaipur','Smartphone','Electronics','Mobile Point','9996666666',1,22000),
(113,'Karan','9876500066','Jaipur','Earbuds','Accessories','Mobile Point','9996666666',1,2500),
(114,'Sneha','9876500077','Lucknow','Webcam','Electronics','Vision Tech','9997777777',2,1800),
(115,'Vikas','9876500088','Bhopal','Router','Networking','Net Solutions','9998888888',1,3000);

select * from OrderData;
show tables;


create table Customers(
	CustomerID int primary key,
    CustomerName varchar(50),
    Phone varchar(15),
    Address varchar(100)
);




create table Suppliers(
	SupplierID int primary key,
    SupplierName varchar(50),
    SupplierPhone varchar(15)    
);
create table Products(
	ProductID int primary key,
    ProductName varchar(50),
    Category varchar(30),
    Price decimal(10,2),
    SupplierID int,
    foreign key(SupplierID) references Suppliers(SupplierID)
);

create table Orders(
	OrderID int primary key,
    CustomerID int,
    foreign key(CustomerID) references Customers(CustomerID)
);

create table OrderDetails(
	OrderID int,
    ProductID int,
    Quantity int,
    primary key(OrderID,ProductID),
    foreign key(OrderID) references Orders(OrderID),
    foreign key(ProductID) references Products(ProductID)
);

INSERT INTO Customers (CustomerID, CustomerName, Phone, Address)
SELECT DISTINCT
ROW_NUMBER() OVER (ORDER BY CustomerName) AS CustomerID,
CustomerName,
Phone,
Address
FROM OrderData;

INSERT INTO Products(ProductID,ProductName, Category, Price, SupplierID)
SELECT DISTINCT
ROW_NUMBER() OVER (ORDER BY ProductName) AS ProductID,
o.ProductName,
o.Category,
o.Price,
s.SupplierID
FROM OrderData o
JOIN Supplier s
ON o.SupplierName = s.SupplierName;


INSERT INTO Orders(OrderID, CustomerID)
SELECT
o.OrderID,
c.CustomerID
FROM OrderData o
JOIN Customers c
ON o.CustomerName = c.CustomerName
AND o.Phone = c.Phone;

show tables;
















create database normalization_lab;
use normalization_lab;

CREATE TABLE OrderData (
    orderid INT,
    customername VARCHAR(50),
    phone VARCHAR(15),
    address VARCHAR(100),
    productname VARCHAR(50),
    category VARCHAR(50),
    suppliername VARCHAR(50),
    supplierphone VARCHAR(15),
    quantity INT,
    price DECIMAL(10,2)
);
show tables;
INSERT INTO OrderData VALUES
(101,'Rahul','9876500011','Delhi','Laptop','Electronics','ABC Suppliers','9991111111',1,65000),
(102,'Rahul','9876500011','Delhi','Mouse','Electronics','ABC Suppliers','9991111111',2,700),
(103,'Rahul','9876500011','Delhi','Keyboard','Electronics','ABC Suppliers','9991111111',1,1200),
(104,'Aman','9876500022','Noida','Laptop','Electronics','ABC Suppliers','9991111111',1,65000),
(105,'Aman','9876500022','Noida','Pendrive','Accessories','XYZ Traders','9992222222',3,500),
(106,'Priya','9876500033','Mumbai','Monitor','Electronics','Tech World','9993333333',1,12000),
(107,'Priya','9876500033','Mumbai','Printer','Electronics','Tech World','9993333333',1,8500),
(108,'Rohan','9876500044','Pune','Headphones','Accessories','Sound Hub','9994444444',2,1800),
(109,'Rohan','9876500044','Pune','Speaker','Accessories','Sound Hub','9994444444',1,3500),
(110,'Neha','9876500055','Chandigarh','Tablet','Electronics','Digital Store','9995555555',1,28000),
(111,'Neha','9876500055','Chandigarh','Charger','Accessories','Digital Store','9995555555',2,900),
(112,'Karan','9876500066','Jaipur','Smartphone','Electronics','Mobile Point','9996666666',1,22000),
(113,'Karan','9876500066','Jaipur','Earbuds','Accessories','Mobile Point','9996666666',1,2500),
(114,'Sneha','9876500077','Lucknow','Webcam','Electronics','Vision Tech','9997777777',2,1800),
(115,'Vikas','9876500088','Bhopal','Router','Networking','Net Solutions','9998888888',1,3000);

select * from OrderData;

show tables;

create table customers(
customerid int primary key,
customername varchar(50),
phone varchar(15),
address varchar(100)
);

create table supplier (
supplierid int primary key,
suppliername varchar(50),
supplierphone varchar(15)
);

create table products(
productid int primary key,
productname varchar(50),
category varchar(50),
price decimal(10,2),
supplierid int,
foreign key (supplierid) references supplier(supplierid)
);

create table orders(
orderid int primary key,
customerid int,
foreign key(customerid) references customers(customerid)
);

create table orderdetails(
orderid int ,
productid int,
quantity int,
primary key (orderid,productid),
foreign key(orderid) references orders(orderid),
foreign key (productid) references products(productid)
);

INSERT INTO customers VALUES
(1,'Rahul','9876500011','Delhi'),
(2,'Aman','9876500022','Noida'),
(3,'Priya','9876500033','Mumbai'),
(4,'Rohan','9876500044','Pune'),
(5,'Neha','9876500055','Chandigarh'),
(6,'Karan','9876500066','Jaipur'),
(7,'Sneha','9876500077','Lucknow'),
(8,'Vikas','9876500088','Bhopal');

select * from customers;

INSERT INTO supplier VALUES
(1,'ABC Suppliers','9991111111'),
(2,'XYZ Traders','9992222222'),
(3,'Tech World','9993333333'),
(4,'Sound Hub','9994444444'),
(5,'Digital Store','9995555555'),
(6,'Mobile Point','9996666666'),
(7,'Vision Tech','9997777777'),
(8,'Net Solutions','9998888888');

select * from supplier;

INSERT INTO products VALUES
(1,'Laptop','Electronics',65000,1),
(2,'Mouse','Electronics',700,1),
(3,'Keyboard','Electronics',1200,1),
(4,'Pendrive','Accessories',500,2),
(5,'Monitor','Electronics',12000,3),
(6,'Printer','Electronics',8500,3),
(7,'Headphones','Accessories',1800,4),
(8,'Speaker','Accessories',3500,4),
(9,'Tablet','Electronics',28000,5),
(10,'Charger','Accessories',900,5),
(11,'Smartphone','Electronics',22000,6),
(12,'Earbuds','Accessories',2500,6),
(13,'Webcam','Electronics',1800,7),
(14,'Router','Networking',3000,8);

select * from products;

INSERT INTO orders VALUES
(101,1),
(102,1),
(103,1),
(104,2),
(105,2),
(106,3),
(107,3),
(108,4),
(109,4),
(110,5),
(111,5),
(112,6),
(113,6),
(114,7),
(115,8);

select * from orders;

INSERT INTO orderdetails VALUES
(101,1,1),
(102,2,2),
(103,3,1),
(104,1,1),
(105,4,3),
(106,5,1),
(107,6,1),
(108,7,2),
(109,8,1),
(110,9,1),
(111,10,2),
(112,11,1),
(113,12,1),
(114,13,2),
(115,14,1);

select * from orderdetails;

UPDATE customers
SET phone = '9876500099'
WHERE customerid = 1;

INSERT INTO customers
VALUES (9, 'Sarthak', '9876500099', 'Jalandhar');

select * from customers;

DELETE FROM orderdetails
WHERE orderid = 112;

select * from orderdetails;

select * from orders;

delete from orders where orderid = 112;

SELECT c.customername, o.orderid
FROM customers c
INNER JOIN orders o
ON c.customerid = o.customerid;

SELECT p.productname , o.orderid
FROM products p
INNER JOIN orders o
ON p.productid = o.customerid;


drop table Suppliers;

SELECT p.productname , od.orderid from products p inner join orderdetails od on p.productid = od.productid inner join orders o on od.orderid = o.orderid; 


SELECT c.customername, p.productname from customers c inner join orders o on c.customerid = o.customerid inner join orderdetails od on o.orderid = od.orderid inner join products p on od.productid = p.productid ;

select c.customername, p.productname, p.price from customers c inner join orders o on c.customerid = o.customerid inner join orderdetails od on o.orderid = od.orderid inner join products p on od.productid = p.productid;
select c.customername, p.productname, p.price, od.quantity, (od.quantity * p.price) as total from customers c inner join orders o on c.customerid = o.customerid inner join orderdetails od on o.orderid = od.orderid inner join products p on p.productid  = od.productid;
select c.customername, p.productname, p.price, od.quantity, (od.quantity * p.price) as total from customers c inner join orders o on c.customerid = o.customerid inner join orderdetails od on o.orderid = od.orderid inner join products p on p.productid  = od.productid;
select c.customername, p.productname, p.price, od.quantity, (od.quantity * p.price) as total from customers c inner join orders o on c.customerid = o.customerid inner join orderdetails od on o.orderid = od.orderid inner join products p on p.productid  = od.productid;





















use normalizationLab;
show databases;
show tables;



show databases;
create database OnlineShopping;
use OnlineShopping;
show tables;



INSERT INTO Customers VALUES
(101,'Amit Sharma','9876543210','Delhi'),
(102,'Priya Singh','9876543211','Mumbai'),
(103,'Rahul Verma','9876543212','Delhi'),
(104,'Sneha Gupta','9876543213','Pune'),
(105,'Arjun Mehta','9876543214','Bangalore'),
(106,'Neha Kapoor','9876543215','Delhi'),
(107,'Rohan Das','9876543216','Kolkata'),
(108,'Simran Kaur','9876543217','Chandigarh'),
(109,'Anjali Roy','9876543218','Mumbai'),
(110,'Vikas Yadav','9876543219','Lucknow'),
(111,'Karan Malhotra','9876543220','Delhi'),
(112,'Pooja Jain','9876543221','Jaipur'),
(113,'Harsh Kumar','9876543222','Delhi'),
(114,'Nikita Sharma','9876543223','Mumbai');

INSERT INTO Suppliers VALUES
(1,'TechWorld','9991111111'),
(2,'HomeEssentials','9991111112'),
(3,'FashionHub','9991111113'),
(4,'FreshFoods','9991111114'),
(5,'OfficeMart','9991111115'),
(6,'Global Suppliers','9991111116'),
(7,'Future Electronics','9991111117'),
(8,'Dream Traders','9991111118');

INSERT INTO Products VALUES
(201,'Laptop','Electronics',55000,1),
(202,'Mouse','Electronics',800,1),
(203,'Keyboard','Electronics',1500,1),
(204,'Office Chair','Furniture',6500,2),
(205,'Dining Table','Furniture',12000,2),
(206,'T-Shirt','Clothing',700,3),
(207,'Jeans','Clothing',1500,3),
(208,'Rice Bag','Groceries',1800,4),
(209,'Cooking Oil','Groceries',1800,4),
(210,'Notebook','Stationery',120,5),
(211,'Printer','Electronics',12000,5),
(212,'Monitor','Electronics',15000,7),
(213,'Headphones','Electronics',2500,7),
(214,'Bookshelf','Furniture',6500,2),
(215,'Pen Drive','Electronics',800,1);

INSERT INTO Orders VALUES
(1001,101),
(1002,102),
(1003,101),
(1004,103),
(1005,104),
(1006,105),
(1007,106),
(1008,107),
(1009,108),
(1010,109),
(1011,105),
(1012,110);

INSERT INTO OrderDetails VALUES

(1001,201,1),
(1001,202,2),

(1002,203,1),
(1002,206,3),

(1003,204,1),
(1003,203,5),

(1004,205,1),
(1004,207,2),

(1005,208,4),
(1005,209,3),

(1006,201,1),
(1006,213,2),

(1007,202,4),
(1007,211,1),

(1008,203,2),

(1009,212,1),
(1009,206,2),

(1010,207,3),
(1010,208,2),

(1011,201,1),
(1011,205,1),

(1012,202,3),
(1012,209,4);

select p.ProductName , s.SupplierName from Products p left outer join Suppliers s on p.SupplierID = s.SupplierID;

select o.OrderID, o.CustomerID, c.CustomerName ,p.ProductID, p.ProductName, p.Price, od.Quantity, (p.Price * od.Quantity) as Total from Orders o left outer join Customers c on o.CustomerID = c.CustomerID left outer join OrderDetails od on o.OrderID = od.OrderID left outer join Products p on od.ProductID = p.ProductID;

select c.CustomerName, o.OrderID from Customers c left outer join Orders o on c.CustomerID = o.CustomerID;

select p.ProductName, p.Price, s.SupplierName from Products p left join Suppliers s on p.SupplierID = s.SupplierID;

select p.ProductName, p.Category, s.SupplierName from Products p left join Suppliers s on p.SupplierID = s.SupplierID where p.Category = 'Electronics';

select c.CustomerName, o.OrderID from Customers c inner join Orders o on c.CustomerID = o.CustomerID order by c.CustomerName;

select s.SupplierName, p.ProductName from Suppliers s left join Products p on s.SupplierID = p.SupplierID order by s.SupplierName;

select od.OrderID, p.ProductName, od.Quantity, p.Price from OrderDetails od left join Products p on od.ProductID = p.ProductID;

-- display products costing more than 1000 with their supplier names
select p.ProductName, p.Price, s.SupplierName from Products p left join Suppliers s on p.SupplierID = s.SupplierID;

-- customer names starting with A along with orders placed
-- supplier name contains Tech

select c.CustomerID, c.CustomerName, o.OrderID, p.ProductName, p.Price, od.Quantity, (p.Price * od.Quantity) as total from Customers c left join Orders o on c.CustomerID = o.CustomerID left join OrderDetails od on o.OrderID = od.OrderID left join Products p on od.ProductID = p.ProductID;

-- product cost 500 to 3000

select p.ProductID, p.ProductName, s.SupplierName from Products p left join Suppliers s on p.SupplierID = s.SupplierID where s.SupplierName like "%Tech%";

-- show all quantity > 5

select p.ProductName, p.Price from Products p where p.Price between 500 and 3000;

select od.OrderID, p.ProductName ,od.Quantity from OrderDetails od left join Products p on od.ProductID = p.ProductID where od.Quantity >= 5;
select s.SupplierName, p.ProductName, p.Category from Suppliers s left join Products p on s.SupplierID = p.SupplierID where p.Category = "Electronics" or p.Category = "Furcniture";

select c.CustomerName, c.Address, o.OrderID, p.ProductName from Customers c left join Orders o on c.CustomerID = o.CustomerID left join OrderDetails od on o.OrderID = od.OrderID left join Products p on od.ProductID = p.ProductID where not c.Address = "Mumbai";
select o.OrderID, p.ProductName, c.CustomerName, od.Quantity, p.Price, s.SupplierName from Orders o left join Customers c on o.CustomerID = c.CustomerID left join OrderDetails od on o.OrderID = od.OrderID left join Products p on od.ProductID = p.ProductID left join Suppliers s on p.SupplierID = s.SupplierID order by p.Price desc limit 5;

select p.ProductName, p.Price from Products p where p.Price >= (select avg(Price) from Products);


-- Any all exists not exists 
-- From clause subquey in update 


-- qns 
/*
1. Products priced above average.

2. Most expensive product.

3. Customers who placed orders.

4. Products never ordered.

5. Products supplied by suppliers from Delhi.

6. Suppliers supplying products above average price.

7. Latest order.

8. Customers who ordered expensive products.

9. Products ordered by customers from Delhi.

10. Suppliers whose products were never ordered.

11. Second Highest Priced product
12. Products costing more than

*/

select ProductName, Price from Products where Price = (select max(Price) from Products);

select c.CustomerID, c.CustomerName, o.OrderID from Customers c left outer join Orders o on c.CustomerID = o.CustomerID where o.OrderID is not null;

select ProductName from Products where ProductID not in (select ProductID from OrderDetails);

select SupplierName from Suppliers where SupplierID in (select SupplierID from Products where Price >= (select avg(Price) from Products));





-- SCALAR FUNCTIONS
/*

STRING FUNCTIONS :
----------------------------
SUBSTRING

TRIM

REPLACE

UPPER

LOWER

LENGTH

CONCAT
*/

/* Questions:
Q01. Display all customer name in Uppercase
Q02. Display all customers in lower
Q03. Find the length of every customer name
Q04. Display Customer name along with city in one column
Q05. Show First 4 chars of every name
Q06. Replace letter a with * in names
Q07. Remove spaces from text: '     Datavase Systems     '
Q08. Display CustomerName in uppercase and city in lower case
Q09. Display first 3 letters of every product
Q10. Find products having name loger than 8 chars
Q11. Display name(CITY)
Q12. replace spaces in productname with _
Q13. Display total number of characters in city names
Q14. Display Customer Initials using Subtring 
Q15. Create output Rahul purchased laptop
Q16. Display only first 5 letters of product names
Q17. Display product name in upper
Q18. Supplier name with total char count
Q19. Display customer names after removeing unecessarry spaces
Q20. Customer_name - CITY


*/
show tables;
show databases;
use OnlineShopping;
select upper(CustomerName) from  Customers;
select lower(CustomerName) from Customers;
select CustomerName, length(CustomerName) from Customers;
select concat(CustomerName," From ",Address) as Customer from Customers;
select substring(CustomerName,1,4) from Customers;
select replace(replace(CustomerName,"a","*"),"A","*") from Customers;
select trim("      Database Systems        ");
select concat(upper(CustomerName)," from ",lower(Address)) from Customers;
select substring(ProductName,1,3) from Products;
select ProductName,length(ProductName) from Products where length(ProductName) >= 8;
select concat(CustomerName,"(",Address,")") from Customers;
select replace(ProductName," ","_") from Products;
select Address,length(Address) from Customers;
select concat(substring(CustomerName,1,1),substring(CustomerName,locate(" ",Customername)+1,1)) from Customers;
select concat(c.CustomerName," purchased ",p.ProductName) from Customers c left join Orders o on c.CustomerID = o.CustomerID left join OrderDetails od on o.OrderID = od.OrderID left join Products p on od.ProductID = p.ProductID;
select substring(ProductName,1,5) from Products;
select upper(ProductName) from Products;
select SupplierName, length(SupplierName) from Suppliers;
select trim(CustomerName) from Customers;
select concat(upper(replace(CustomerName," ","_"))," - ",Address) from Customers;




-- Level 2 - Mixed Concepts

-- 1. Find the total amount spent by each customer.

-- 2. Display customers who have placed more than two orders.

-- 3. Find the average price of products supplied by each supplier.

-- 4. Display the top five most expensive products.

-- 5. Find products that have never been ordered.

-- 6. Display supplier names along with the number of products they supply.

-- 7. Find customers who purchased products from more than one supplier.

-- 8. Display the product ordered in the highest quantity.

-- 9. Display the first three characters of product names whose price is above the average product price.

-- 10. Display customer names in uppercase along with their total purchase amount.


select c.CustomerID, c.CustomerName, sum(od.Quantity * p.Price)  from Customers c join Orders o on c.CustomerID = o.CustomerID join OrderDetails od on o.OrderID = od.OrderID join Products p on od.ProductID = p.ProductID group by c.CustomerID, c.CustomerName;
select c.CustomerID, c.CustomerName, count(o.OrderID) from Customers c join Orders o on c.CustomerID = o.CustomerID group by c.CustomerID, c.CustomerName having count(o.OrderID)>=2 ;
select o.OrderID, c.CustomerName from Orders o left join Customers c on o.CustomerID = c.CustomerID;
select s.SupplierID, s.SupplierName , avg(p.Price) from Suppliers s left join Products p on s.SupplierID = p.SupplierID group by s.SupplierID , s.SupplierName;
select ProductID,ProductName, Price from Products order by Price desc limit 5;
select p.ProductID, p.ProductName from Products p left join OrderDetails od on p.ProductID = od.ProductID where od.ProductID is null;
select s.SupplierName, Count(p.ProductID) from Suppliers s left join Products p on s.SupplierID = p.SupplierID group by s.SupplierID, s.SupplierName;
select c.CustomerID, c.CustomerName, count(distinct(p.SupplierID)) from Customers c join Orders o on c.CustomerID = o.CustomerID join OrderDetails od on o.OrderID = od.OrderID join Products p on od.ProductID = p.ProductID group by c.CustomerID, c.CustomerName having count(distinct(p.SupplierID))>1;
select p.ProductID, p.ProductName, od.Quantity from Products p join OrderDetails od on p.ProductID = od.ProductID order by od.Quantity desc limit 1;
select substring(p.ProductName,1,3) from Products p where p.price > (select avg(Price) from Products);
select upper(c.CustomerName), sum(od.Quantity * p.Price) from Customers c join Orders o on c.CustomerID = o.CustomerID join OrderDetails od on o.OrderID = od.OrderID join Products p on od.ProductID = p.ProductID group by c.CustomerID , c.CustomerName ;


-- Level 3 - Advanced Business Problems

-- 1. Find customers whose total purchase amount is greater than the average customer purchase.
-- 2. Display suppliers whose products have never appeared in any order.
-- 3. Find the customer who placed the maximum number of orders.
-- 4. Display the second highest priced product.
-- 5. Find products whose prices are greater than the average price of products in their supplier group.
-- 6. Display cities having more than three customers.
-- 7. Find customers who purchased the most expensive product.
-- 8. Display products ordered by at least five different customers.
-- 9. Find suppliers contributing the highest revenue.
-- 10. Display products whose names contain exactly six characters.

select c.CustomerID,c.CustomerName, sum(od.Quantity * p.Price) from Customers c join Orders o on c.CustomerId = o.CustomerID join OrderDetails od on o.OrderID = od.OrderID join Products p on od.ProductID = p.ProductID having sum(od.Quantity * p.Price) > (select avg(od.Quantity * p.Price) from OrderDetails od join Products p on od.ProductID = p.ProductID)  group by c.CustomerID, c.CustomerName;


CREATE DATABASE IF NOT EXISTS sql_training;
USE sql_training;

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_id        INT PRIMARY KEY AUTO_INCREMENT,
    first_name    VARCHAR(50),
    last_name     VARCHAR(50),
    email         VARCHAR(100),
    department    VARCHAR(50),
    salary        DECIMAL(10,2),
    bonus_pct     DECIMAL(5,2),
    hire_date     DATE,
    birth_date    DATE,
    last_login    DATETIME
);

INSERT INTO employees
(first_name, last_name, email, department, salary, bonus_pct, hire_date, birth_date, last_login)
VALUES
('Amit',    'Sharma',   'amit.sharma@company.com',    'Sales',       55000.756, 8.5,  '2019-03-15', '1990-06-12', '2026-07-01 09:15:00'),
('Priya',   'Verma',    'priya.verma@company.com',    'Marketing',   62000.333, 10.25,'2020-07-22', '1988-11-25', '2026-07-05 14:42:00'),
('Rahul',   'Nair',     'rahul.nair@company.com',     'IT',          78500.999, 12.0, '2018-01-10', '1992-02-18', '2026-07-10 08:05:00'),
('Sneha',   'Iyer',     'sneha.iyer@company.com',     'Finance',     49500.125, 6.75, '2021-11-05', '1995-09-30', '2026-06-28 17:30:00'),
('Karan',   'Malhotra', 'karan.malhotra@company.com', 'IT',          91000.5,   15.0, '2016-05-19', '1985-04-02', '2026-07-11 11:20:00'),
('Neha',    'Gupta',    'neha.gupta@company.com',     'Sales',       53000.0,   9.4,  '2022-02-28', '1998-01-15', NULL),
('Vikram',  'Singh',    'vikram.singh@company.com',   'HR',          47000.45,  5.5,  '2023-08-14', '1993-07-08', '2026-07-12 19:10:00'),
('Ananya',  'Das',      'ananya.das@company.com',     'Marketing',   58000.876, 7.2,  '2017-09-01', '1991-12-20', '2026-07-09 10:00:00'),
('Rohan',   'Kapoor',   'rohan.kapoor@company.com',   'Finance',     67000.654, 11.1, '2019-12-12', '1989-03-27', '2026-07-02 13:55:00'),
('Ishita',  'Joshi',    'ishita.joshi@company.com',   'HR',          51000.2,   8.0,  '2020-04-04', '1996-10-10', '2026-07-07 16:25:00');


-- NUMERIC FUNCTION QUESTIONS

-- Q11. Round every employee's salary to the nearest whole number.

-- Q12. Display each salary truncated to 1 decimal place (no rounding).

-- Q13. Calculate each employee's monthly salary (salary/12), rounded to 2 decimals.

-- Q14. Calculate the bonus amount (salary * bonus_pct / 100) for each employee,
--      rounded to 2 decimal places, and label the column "bonus_amount".

-- Q15. Find the difference between each employee's salary and the average salary
--      of all employees, and show its absolute value.

-- Q16. Display the ceiling and floor values of each employee's salary side by side.

-- Q17. Using MOD(), list only employees whose emp_id is an odd number.

-- Q18. Find the square root of each employee's salary (just for numeric practice).

-- Q19. Among (salary, bonus_pct * 10000), display the greater value for each
--      employee using GREATEST().


select emp_id, first_name, round(salary,0) from employees;
select emp_id, first_name, truncate(salary,1) from employees;
select emp_id, first_name, round((salary/12),2) from employees;
select emp_id, first_name, round(salary,0) , round((salary * bonus_pct /100),2) as bonusAmount from employees;
select emp_id, first_name, salary, abs(salary - (select avg(salary) from employees)) as difference from employees;
select emp_id, first_name, salary , ceil(salary) as ceili , floor(salary) as floors from employees;
-- select emp_id, first_name, round(salary,0) from employees where mod(emp_id) == 0;





select emp_id, first_name, date_format(hire_date, '%D - %M - %Y' ) from employees;
select emp_id, first_name, datediff(curdate(),hire_date) from employees;
select emp_id, first_name, timestampdiff(Year,birth_date,curdate())from employees;
select emp_id, first_name, dayname(hire_date) from employees;
select emp_id, first_name, monthname(hire_date) from employees where monthname(hire_date) = 'December';
select emp_id, first_name, date_add(hire_date, interval 3 year) as Pension_date from employees;
select emp_id, first_name, last_day(birth_date) from employees;
select emp_id, first_name, hire_date, timestampdiff(Year,hire_date,curdate()) from employees where timestampdiff(Year,hire_date,curdate()) <= 5 order by timestampdiff(Year,hire_date,curdate());










drop database if exists companyDB;
create database companyDB;
use companyDB;

create table Employees(
	Emp_ID int primary key,
    Emp_name varchar(50),
    Department varchar(30),
    Salary decimal(10,2)
);

INSERT INTO Employees VALUES
(101, 'Rahul', 'IT', 5500),
(102, 'Priya', 'HR', 4800),
(103, 'Amit', 'Finance', 6200),
(104, 'Sneha', 'Marketing', 5100),
(105, 'Vikram', 'Sales', 5900),
(106, 'Neha', 'IT', 6700),
(107, 'Arjun', 'HR', 4500),
(108, 'Pooja', 'Finance', 7100),
(109, 'Karan', 'Sales', 5300),
(110, 'Meera', 'Marketing', 6000);

select * from Employees;

DELIMITER //
create procedure showAllEmployees()
begin
	select * from Employees;
end //
DELIMITER ;

call showAllEmployees();

delimiter //
create procedure showItEmp()
begin 
	select * 
    from Employees 
    where Department = 'IT';
end //
delimiter ;

call showItEmp();

delimiter //
create procedure showDepEmp( in dept varchar(50))
begin
	select * from Employees
    where Department = dept;
end //
delimiter ;

call showDepEmp('IT');
call showDepEmp('HR');

delimiter //
create procedure amtCheck(in amt decimal(10,2))
begin
	select * from Employees where Salary > amt;
end //
delimiter ;
drop procedure amtCheck;
call amtCheck(7000);

delimiter //
create procedure showDeptSalary(in dept varchar(30), in amt decimal(10,2))
begin
	select * from Employees where Department = dept and Salary > amt;
end //
delimiter ;
call showDeptSalary('HR',700);





