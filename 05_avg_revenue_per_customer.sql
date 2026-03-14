-- Calculates the average revenue per customer
-- Only for orders marked as delivered

select 
	round(sum(p.price)/count(distinct(o.customer_id)), 2) 	as avg_revenue_per_customer
from orders o
inner join order_items oi
on o.order_id = oi.order_id
inner join products p
on oi.product_id = p.product_id
where o.order_status = 'delivered'