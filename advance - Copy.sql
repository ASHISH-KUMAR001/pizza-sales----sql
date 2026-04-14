-- Advanced:
-- Calculate the percentage contribution of each pizza type to total revenue.
-- Analyze the cumulative revenue generated over time.
-- Determine the top 3 most ordered pizza types based on revenue for each pizza category



-- Calculate the percentage contribution of each pizza type to total revenue.

select pt.category,
round(
sum(od.quantity * p.price)* 100 / 
(SELECT SUM(od2.quantity * p2.price)
FROM order_details od2
        JOIN pizzas p2
    ON p2.pizza_id = od2.pizza_id),2) as REVENUE_percentage
   
 from pizza_types pt
 join pizzas p
 on pt.pizza_type_id = p.pizza_type_id
 join order_details od
 on od.pizza_id= p.pizza_id
 group by pt.category 
 order by REVENUE_percentage desc;
 
 
 
 -- Analyze the cumulative revenue generated over time.
 
select o.order_date,
round(
sum(
sum(od.quantity * p.price)) over (order by o.order_date),2)as cumulative_revenue 
 from order_details od
 join pizzas p
 on od.pizza_id = p.pizza_id
 join orders o
 on o.order_id = od.order_id
 group by o.order_date
 order by order_date asc;
 
 
 select order_date,
 round(sum(revenue) over(order by order_date),2) as cum_revenue
from 
 (select o.order_date,
sum(od.quantity * p.price) as revenue 
 from order_details od
 join pizzas p
 on od.pizza_id = p.pizza_id
 join orders o
 on o.order_id = od.order_id
 group by o.order_date 
 order by order_date asc) as sales;
 
-- Determine the top 3 most ordered pizza types based on revenue for each pizza category
select name,revenue from 
(
select category,name,revenue,
rank() over(partition by category order by revenue desc)as ranks
from
 
(select pt.category,pt.name,
sum(od.quantity * p.price) as revenue
from pizza_types pt
join pizzas p
on pt.pizza_type_id = p.pizza_type_id
join order_details od
on od.pizza_id = p.pizza_id 
group by pt.category,pt.name) as a) as b
where ranks <= 3;




