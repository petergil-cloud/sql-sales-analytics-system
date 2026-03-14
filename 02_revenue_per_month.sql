-- Calculate total revenue per month for delivered orders

select 
	year(order_date)					as order_year
	,month(order_date)					as order_month
	,sum(p.price)						as revenue_per_month
from orders o
inner join order_items oi
on o.order_id = oi.order_id
inner join products p
on oi.product_id = p.product_id
where o.order_status = 'delivered'
group by 1,2
order by 1,2