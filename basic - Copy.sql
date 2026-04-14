select *from orders;
select * from pizza_types;
select* from order_details;
select * from pizzas;

#Retrieve the total number of orders placed.
SELECT 
    COUNT(order_id) AS Total_orders
FROM
    orders;
	
-- Calculate the total revenue generated from pizza sales   (ctrl +b)
SELECT 
    ROUND(SUM(od.quantity * p.price), 2) AS Total_sales
FROM order_details od
        JOIN pizzas p
    ON p.pizza_id = od.pizza_id;
   
   
   -- Identify the highest-priced pizza
SELECT 
    pt.name, p.price
FROM
    pizzas p
        JOIN
    pizza_types pt ON pt.pizza_type_id = p.pizza_type_id
WHERE
    p.price = (SELECT 
            MAX(price) AS MAX_PRICED
        FROM
            pizzas);
    
    select pizza_types.name,pizzas.price from pizza_types 
    join pizzas 
    on pizza_types.pizza_type_id = pizzas.pizza_type_id
    order by pizzas.price desc limit 1;


-- Identify the most common pizza size ordered.
select quantity,count(order_details_id) from order_details
group by quantity;

select p.size,count(od.order_details_id)as order_count from pizzas p
join order_details od
on p.pizza_id = od.pizza_id
group by p.size order by order_count desc;

-- List the top 5 most ordered pizza types along with their quantities

select pizza_types.name,
sum(order_details.quantity) as quantity
from pizza_types
join pizzas 
on pizza_types.pizza_type_id= pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.name
order by quantity desc limit 5;