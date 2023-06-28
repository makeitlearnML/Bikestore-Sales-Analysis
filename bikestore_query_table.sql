-- We have creted a database and tables. Now we will create a table of usefull colms.
-- take cust_names, Order_id, order_date, quantity.. JOin sales.customers with sales.orders

use bikestore_db;

select * 
from production.products; 

select *
from production.categories;


select * from sales.customers;

select * from sales.orders;

select * from sales.order_items;

select * from sales.stores;

-- Extracting relevant data: 

select concat(cus.first_name,' ', cus.last_name) as customers, cus.city, cus.state, 
ord.order_id, ord.order_date,

items.quantity as total_units, items.list_price * items.quantity as revenue,

prods.product_name, pcat.category_name, 

store.store_name, concat(staff.first_name, ' ', staff.last_name) as staff_name 

from sales.customers as cus
left join sales.orders as ord
on ord.customer_id = cus.customer_id

left join sales.order_items as items
on ord.order_id = items.order_id

left join production.products as prods
on items.product_id = prods.product_id

left join production.categories as pcat
on prods.category_id = pcat.category_id

left join sales.stores as store
on ord.store_id = store.store_id

left join sales.staffs as staff
on ord.staff_id = staff.staff_id
;


select * from production.stocks;


