------Creating database using Create statement-------
create database inventory;

------This statement is for selecting the database-------
use inventory;

------Creating table for Products-------
create table Products(
product_name varchar(50),
description varchar(100),
price int,
quantity int);

-------Inserting values into rows and columns by insert statement--------
insert into Products(product_name,description,price,quantity) 
values
('sunscreen','skin care product',600,4),
('blood pressure machine','health care product',2000,2),
('weight machine','maintain yourself to fit',1500,6),
('washing machine','household appliances',7000,3),
('laptops','for essential use of electronic device',30000,5),
('watches','time delivering device',5000,10),
('automobile','keeps the travelling more comfortable',60000,1),
('sun glasses','used to protect from sun rays',500,15);

--------Adding new column to the Products table---------
alter table Products
add supplier_id int;

select * from Products;

------Creating table of suppliers-------
create table suppliers(
supplier_name varchar(50),
contact_details varchar(500));

------Adding new column to the table suppliers-------
alter table suppliers
add supplier_id int;

------Inserting values by INSERT INTO statement-------
insert into suppliers(supplier_name,contact_details,supplier_id)
values ('Akshay Kumar',7768894351,101),
('Akash Morey',7368924581,102),
('Anshul Gajbhiye',7890423561,103),
('Anand Malhotra',8567253901,104),
('Rishi Singh',9846892651,105),
('Rajat Dhote',8743629081,106),
('Suresh Bhatt',7794663585,107),
('Rahul Mishra',8253940571,108);

-------Creating table INVENTORY_TRANSACTIONZ by create statement--------
create table inventory_transactionz(
transaction_id int primary key,
transaction_type varchar(50),
product_id int,
quantity int );

--------Inserting the values by INSERT INTO statement---------
insert into inventory_transactionz(transaction_id,transaction_type,product_id,quantity)
values (1,'purchase',111,20),
(2,'sale',112,10),
(3,'purchase',113,15),
(4,'purchase',114,30),
(5,'sale',115,25),
(6,'purchase',116,9),
(7,'sale',117,18),
(8,'purchase',118,23),
(9,'sale',119,35),
(10,'purchase',120,40);

--------By using SELECT statement we can check the whole table contents-------
select * from Products;
select * from suppliers;
select * from inventory_transactionz;


-------Now implementing the SQL queries for inserting, updating and deleting values throughout the tables----------

--1. Insering

--Inserting a new value or product in the Product table
insert into Products(product_name,description,price,quantity) 
values ('Radio','Having all the songs from 19th century to the 20th century',12000,5);

select * from Products;

--Inserting a new value in the suppliers table
insert into suppliers(supplier_name,contact_details,supplier_id)
values ('Ramesh Banerjee',7846903421,111);

select * from suppliers;

--Inserting a new value in the inventory_transactionz table
insert into inventory_transactionz(transaction_id,transaction_type,product_id,quantity)
values (11,'sale',121,15);

select * from inventory_transactionz;


--2. Updating

--Updating the existing values to the new one in Products table
update Products
set price = 3300
where product_name = 'blood pressure machine';

select * from Products;

--Updating the existing values to the new one in suppliers table
update suppliers
set supplier_name = 'Kartik Ahuja'
where supplier_id = 103;

select * from suppliers;

--Updating the existing values to the new one in inventory_transactionz table
update inventory_transactionz
set product_id = 125
where transaction_id = 6;

select * from inventory_transactionz;


--3. Deleting

--Deleting an existing value from the Products table
delete from Products
where product_name = 'automobile';

select * from Products;

--Deleting an existing value from the suppliers table
delete from suppliers
where contact_details = 7368924581;

select * from suppliers;

--Deleting an existing value from the inventory_transactionz table
delete from inventory_transactionz
where transaction_id = 8;

select * from inventory_transactionz;


-------SQL queries to retrieve and display product information, supplier details and inventory levels----------

----Show the product information with the supplier 