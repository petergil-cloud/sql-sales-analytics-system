/* Calculates average order value for delivered orders. The result
is rounded to two decimal places */

select
	round(sum(p.price)/count(distinct(o.order_id)), 2)		as avg_order_value
from orders o
inner join order_items oi
on o.order_id = oi.order_id
inner join products p
on oi.product_id = p.product_id
where o.order_status = 'delivered'