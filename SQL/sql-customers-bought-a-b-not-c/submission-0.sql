-- Write your query below

select c.customer_id, c.customer_name
from customers c
where c.customer_id IN (select customer_id from orders where product_name = 'A')
and c.customer_id in (select customer_id from orders where product_name = 'B')
and c.customer_id Not in (select customer_id from orders where product_name = 'C')
group by c.customer_id, c.customer_name
order by customer_name;

