1	--Total Revenue
SELECT SUM(unit_price*quantity) AS Total_Reveue
FROM [dbo].[pizza_sales$]

2	--Total Pizzas Sold
SELECT SUM(quantity) AS Total_Pizzas_Sold
FROM [dbo].[pizza_sales$]

3	--Total number of Orders
SELECT COUNT(*) AS Total_number_of_orders
FROM [dbo].[pizza_sales$]

4	--How many order Veggie pizza category was sold
SELECT COUNT(*) AS total_veggie_orders
FROM [dbo].[pizza_sales$]
WHERE pizza_category = 'Veggie';

5	--How many  The Hawaiian Pizza and  The Greek Pizza  was sold
SELECT pizza_name, SUM(quantity) AS total_sold
FROM [dbo].[pizza_sales$]
WHERE pizza_name IN ('The Hawaiian Pizza', 'The Greek Pizza')
GROUP BY pizza_name

6	--List of pizza ordered in January 2015
SELECT *
FROM [dbo].[pizza_sales$]
WHERE order_date >= '2015-01-01' AND order_date < '2015-02-01';

7	--List of pizza ordered between 1st of November till 31st December 2015
SELECT *
FROM [dbo].[pizza_sales$]
WHERE order_date >= '2015-11-01' AND order_date <= '2015-12-31';

8	--What is the quantity of The Spinach Supreme Pizza sold in March 2015
SELECT SUM(quantity) AS total_spinach_supreme_sold
FROM [dbo].[pizza_sales$]
WHERE pizza_name = 'The Spinach Supreme Pizza' AND order_date >= '2015-03-01' AND order_date <= '2015-03-31';

9--List of Medium pizza sold
SELECT *
FROM [dbo].[pizza_sales$]
WHERE pizza_size = 'M';

10	--List of pizza that sold for more than 12.5
SELECT * 
FROM [dbo].[pizza_sales$]
WHERE total_price > 12.5


