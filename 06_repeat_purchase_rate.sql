-- Calculates the share of repeat orders in all the orders
-- The outcome is rounded to two decimal places

with 
all_orders as  
	(
	select 
		order_id
		,customer_id
		,row_number() over (
			partition by customer_id
			order by order_date
			)							as order_number
	from orders
	where order_status != 'cancelled'
	),
non_first_orders as 
	(
	select 
		o.order_id
		,o.customer_id
		,row_number() over (
			partition by customer_id
			order by order_date
			)									as order_number_3
	from orders o
	inner join all_orders ao
	on o.order_id = ao.order_id
	where order_status != 'cancelled'
	and order_number > 1
	)
select 
	round(count(order_number_3)/count(ao.order_id), 2)	as repeat_purchase_rate
from non_first_orders nfi
right join all_orders ao
on nfi.order_id = ao.order_id



