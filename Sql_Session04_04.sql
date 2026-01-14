-- Create database Homework_session04_04
create database Homework_session04_04;
-- Create table products
create table products(
	id serial primary key,
	name varchar(50),
	category varchar(50),
	price numeric(10,2),
	stock int,
	manufacturer varchar(50)
);
-- insert data
select * from products;
insert into products(name, category, price, stock, manufacturer) values
('Laptop Dell XPS 13', 'Laptop', 25000000, 12, 'Dell'),
('Chuột Logitech M90', 'Phụ kiện', 150000, 50, 'Logitech'),
('Bàn phím cơ Razer', 'Phụ kiện', 2200000, 0, 'Razer'),
('Macbook Air M2', 'Laptop', 32000000, 7, 'Apple'),
('iPhone 14 Pro Max', 'Điện thoại', 35000000, 15, 'Apple'),
('Laptop Dell XPS 13', 'Laptop', 25000000, 12, 'Dell'),
('Tai nghe AirPods 3', 'Phụ kiện', 4500000, Null, 'Apple');
-- insert data into products
insert into products(name, category, price, stock, manufacturer) values
('Chuột không dây Logitech M170', 'Phụ kiện', 300000, 20, 'Logitech');
-- update data
update products set price = price * 1.1 where manufacturer = 'Apple';
-- delete data
delete from products where stock = 0;
-- show products with price from 1000000 to 30000000
select * from products where price between 1000000 and 30000000;
-- show products with stock is null
select * from products where stock is null;
-- show distinct manufacturer
select distinct manufacturer from products;
-- show list products
select * from products order by price desc, name asc;
-- search data
select * from products where name ilike '%laptop%';
-- show limit first 2 products
select * from products order by price desc, name asc limit 2 offset 0;