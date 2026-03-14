-- Calculate total revenue for delivered orders

select 
	sum(p.price) as total_revenue
from orders o
inner join order_items oi
on o.order_id = oi.order_id
inner join products p
on oi.product_id = p.product_id
where o.order_status = 'delivered'