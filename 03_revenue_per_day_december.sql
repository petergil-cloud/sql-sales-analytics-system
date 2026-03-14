/* Calculate total revenue per day in December, to check
Christmas Holidays' impact on sales */


with 
date_split as 
	(
	select 
		order_date
		,order_id 
		,order_status
	from orders
	where month(order_date) = 12 
	)
select
	ds.order_date	
	,sum(p.price)						as revenue_per_day_december
from
date_split ds
inner join order_items oi
on ds.order_id = oi.order_id 
inner join products p 
on p.product_id = oi.product_id
where ds.order_status = 'delivered'
group by 1
order by 1