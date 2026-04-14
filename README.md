# 🍕 Broster Pizza Sales Analysis – SQL Project

[cite_start]This repository features a comprehensive end-to-end SQL analysis of the **Broster Pizza** dataset[cite: 1, 6]. [cite_start]The project focuses on extracting actionable business insights from relational data to understand customer behavior, product performance, and revenue trends[cite: 10].

---

## 📊 Project Overview
[cite_start]The objective of this project is to analyze pizza sales data to discover patterns in customer choices, evaluate product success, and improve business efficiency[cite: 10]. [cite_start]By leveraging complex SQL queries—including window functions, CTEs, and multi-table joins—this analysis provides a deep dive into the operational health of Broster Pizza[cite: 11].

---

## 🗂️ Dataset Structure
[cite_start]The project utilizes four primary relational tables[cite: 11]:

* [cite_start]**`orders`**: Contains `order_id`, `date`, and `time`[cite: 13, 14, 15, 17].
* [cite_start]**`order_details`**: Tracks individual items within an order, including `pizza_id` and `quantity`[cite: 22, 24, 25, 28, 33].
* [cite_start]**`pizzas`**: Stores details for each pizza variant such as `size`, `price`, and `pizza_type_id`[cite: 27, 35, 38, 40, 41].
* **`pizza_types`**: Includes descriptive data like `name`, `category`, and `ingredients`[cite: 18, 19, 20, 21].

---

## 🚀 Key Business Questions & SQL Insights

### 1. Basic Insights
* **Total Orders**: A total of **16,382** orders were placed[cite: 43, 47, 52].
* [cite_start]**Total Revenue**: The business generated **$40,999.35** in total sales[cite: 99, 104, 106].
* [cite_start]**Highest Priced Pizza**: **The Greek Pizza** stands as the premium offering at **$35.95**[cite: 54, 67].
* **Size Distribution**: The **Large (L)** size is the most popular with 950 orders, followed by Medium (M)[cite: 69, 81].

### 2. Intermediate Analysis
* [cite_start]**Top 5 Best Sellers**: **The Pepperoni Pizza** leads in quantity (153), followed by Barbecue Chicken[cite: 83, 98].
* [cite_start]**Hourly Patterns**: Peak ordering hours occur at **12:00 PM** and **1:00 PM**[cite: 125, 133].
* **Category Performance**: The **Classic** category is the volume leader with 730 pizzas sold[cite: 111, 123].
* [cite_start]**Daily Average**: The average number of pizzas ordered per day is **129**[cite: 136, 140, 150].

### 3. Advanced Revenue Analytics
* [cite_start]**Revenue Contribution**: The **Classic** category contributes **26.24%** to total revenue[cite: 177, 199].
* **Cumulative Growth**: Analysis of revenue over time shows steady growth, reaching **$38,646.05** by mid-January[cite: 201, 214].
* [cite_start]**Top 3 Pizzas per Category**: The analysis identifies the top 3 revenue generators for every category, such as **The Barbecue Chicken Pizza** ($2,225.75) for the Chicken category[cite: 216, 217, 236].

---

## 🛠️ Technical Skills Demonstrated
* [cite_start]**Joins & Aggregations**: Combining multiple tables to calculate totals and quantities[cite: 88, 90, 116, 118].
* **Window Functions**: Utilizing `RANK()` and `SUM() OVER()` for cumulative revenue and category ranking[cite: 206, 221].
* [cite_start]**Subqueries**: Nesting queries to perform complex multi-step calculations[cite: 141, 188, 224].
* [cite_start]**Data Formatting**: Using `ROUND()` for financial precision and `HOUR()` for temporal analysis[cite: 106, 130, 140, 190].

---

## 📂 Repository Contents
* `basic.sql`: Fundamental queries for total orders, revenue, and size analysis.
* `intermediate.sql`: Queries focusing on category distributions, hourly trends, and daily averages.
* `advance.sql`: Advanced logic for percentage contributions, cumulative revenue, and ranked sales.
* `BROSTER Pizza Dataset.pdf`: Project documentation and visualization of the data model.

---

## 👤 Author
[cite_start]**Ashish Kumar** [cite: 10]
[cite_start]Data Analyst focused on discovering patterns in business efficiency and customer success[cite: 10].

---
*Visit the [Pizza Sales SQL Project](https://github.com/ASHISH-KUMAR001/pizza-sales----sql) on GitHub.*
