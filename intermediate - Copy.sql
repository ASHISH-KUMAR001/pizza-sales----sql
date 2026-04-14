-- Intermediate :
-- join the necessary tables to find the total quantity of each pizza category ordered.
-- Determine the distribution of orders by hour of the day.
-- Join relevant tables to find the category-wise distribution of pizzas.
-- Group the orders by date and calculate the average number of pizzas ordered per day.
-- Determine the top 3 most ordered pizza types based on revenue.

select * from orders;
select * from pizza_types;
select * from order_details;
select * from pizzas;



-- join the necessary tables to find the total quantity of each pizza category ordered.

select pizza_types.category,
sum(order_details.quantity) as quantity
from pizza_types
join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details 
on order_details.pizza_id =pizzas.pizza_id
group by pizza_types.category order by quantity desc limit 5;

select pt.category,
sum(od.quantity) as quantity
from pizza_types pt
join pizzas p
on pt.pizza_type_id = p.pizza_type_id
join order_details od
on od.pizza_id = p.pizza_id
group by pt.category order by quantity desc limit 5;

	

-- Determine the distribution of orders by hour of the day.

select hour(order_time) as HOURS,sum(order_id) as order_Count from orders
group by hour(order_time);

-- Join relevant tables to find the category-wise distribution of pizzas.

select category,count(name) from pizza_types
group by category;

-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(quantity), 0) as Avg_pizza_ordered_per_day
FROM
    (SELECT 
        o.order_date, SUM(od.quantity) AS quantity
    FROM
        orders o
    JOIN order_details od ON o.order_id = od.order_id
    GROUP BY o.order_date) AS order_quantity;


-- Determine the top 3 most ordered pizza types based on revenue.
select pt.name,
sum(od.quantity * p.price)  as Revenue
from pizza_types pt
join pizzas p 
on pt.pizza_type_id = p.pizza_type_id
join order_details od
on p.pizza_id = od.pizza_id
group by pt.name
order by Revenue desc limit 3;
