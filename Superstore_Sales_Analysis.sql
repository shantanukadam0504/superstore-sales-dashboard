CREATE TABLE sales_data (
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_name VARCHAR(150),
    segment VARCHAR(50),
    state VARCHAR(100),
    country VARCHAR(100),
    market VARCHAR(50),
    region VARCHAR(100),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(100),
    product_name VARCHAR(255),
    sales DECIMAL(12,2),
    quantity INTEGER,
    discount DECIMAL(5,2),
    profit DECIMAL(12,2),
    shipping_cost DECIMAL(12,2),
    order_priority VARCHAR(50),
    year INTEGER
);

SELECT COUNT(*)
FROM sales_data;

SELECT *
FROM sales_data
LIMIT 10;

SELECT
    MIN(sales) AS minimum_sales,
	MAX(sales) AS maximum_sales,
	MIN(profit) AS minimum_profit,
	Max(profit) AS maximum_profit
FROM sales_data;

SELECT SUM(sales) AS total_sales
FROM sales_data;

SELECT SUM(profit) AS total_profit
FROM sales_data;

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM sales_data;

SELECT SUM(quantity) AS total_quantity
FROM sales_data;

SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
        2
    ) AS profit_margin_percentage
FROM sales_data;


SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
        2
    ) AS profit_margin_percentage
FROM sales_data;


SELECT
    category,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;


SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;


SELECT
     category,
     SUM(sales) AS total_sales,
	 SUM(profit) AS total_profit,
	 ROUND(
         (SUM(profit)/NULLIF(SUM(sales),0))*100,
		 2
	 ) AS profit_margin_percentage
FROM sales_data
GROUP BY category
ORDER BY profit_margin_percentage DESC;

SELECT
	category,
	sub_category,
	SUM(sales) AS total_sales,
	SUM(profit) AS total_profit,
	ROUND(
		(SUM(profit)/NULLIF(SUM(sales),0))*100,
		2
	) AS profit_margin_percentage
FROM sales_data
GROUP BY category, sub_category
ORDER BY total_profit DESC;


SELECT
	category,
	ROUND(AVG(discount),2) AS avergae_discount,
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit
FROM sales_data
GROUP BY category
ORDER BY avergae_discount DESC;


SELECT
	sub_category,
	ROUND(AVG(discount),2) AS average_discount,
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit,
	ROUND(
		(SUM(profit)/NULLIF(SUM(sales),0))*100,
		2
	)AS profit_margin_percentage
FROM sales_data
WHERE category = 'Furniture'
GROUP BY sub_category
ORDER BY average_discount ASC;

SELECT
	sub_category,
	ROUND(AVG(discount),2)AS average_discount,
	ROUND(AVG(shipping_cost),2)AS average_shipping_cost,
	ROUND(SUM(profit),2)AS total_profit,
	ROUND(
		(SUM(profit)/NULLIF(SUM(sales),0))*100,
		2
	)AS profit_margin_percentage
FROM sales_data
WHERE category = 'Furniture'
GROUP BY sub_category
ORDER BY profit_margin_percentage ASC;


SELECT
    product_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
        2
    ) AS profit_margin_percentage
FROM sales_data
WHERE sub_category = 'Tables'
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;

SELECT
	product_name,
	ROUND(SUM(sales),2) AS total_sales,
	ROUND(SUM(profit),2) AS total_profit,
	ROUND(
		(SUM(profit)/NULLIF(SUM(sales),0))*100,
		2
	)AS profi_margin_percentage
FROM sales_data
WHERE sub_category = 'Tables'
GROUP BY product_name
HAVING SUM(profit)<0
ORDER BY SUM(profit) ASC
LIMIT 10;



