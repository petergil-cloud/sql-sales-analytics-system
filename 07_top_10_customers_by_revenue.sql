-- Points out to 10 customers that generate the highest revenue
-- Customers are ordered by the revenue, descending

select 
	sum(p.price) 							as total_revenue
	,o.customer_id
from orders o
inner join order_items oi
on o.order_id = oi.order_id
inner join products p
on oi.product_id = p.product_id
where o.order_status != 'cancelled'
group by 2
order by 1 desc
limit 10