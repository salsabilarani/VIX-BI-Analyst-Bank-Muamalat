create table table_master_fix as(
select (str_to_date(order_date, '%m/%d/%Y')) as order_date,
category_name, 
product_name,
product_price,
order_qty,
sum(order_qty * product_price) as total_sales,
cust_email,
cust_city
from table_master
group by 1,2,3,4,5,7,8
order by 1 asc
);

