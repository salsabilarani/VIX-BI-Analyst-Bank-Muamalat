create database master_table;
use master_table;
create table table_master as (
select cust.CustomerEmail as cust_email,
cust.CustomerCity as cust_city,
orders.Date as order_date,
orders.Quantity as order_qty,
prod.ProdName as product_name,
prod.Price as product_price,
cat.CategoryName as category_name
from customers cust
inner join orders
on cust.CustomerID = orders.CustomerID
inner join products prod
on orders.ProdNumber = prod.ProdNumber
inner join productcategory cat
on prod.Category = cat.CategoryID
);