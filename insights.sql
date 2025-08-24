use sales_analysis;
-- Insight #1: Most valuable customers based on their total order value.
SELECT
	customers.customer_id,
    customers.first_name,
    customers.last_name,
    SUM(customer_purchase_history.order_value) AS total_order_value
FROM
    customers
        JOIN
    customer_purchase_history ON customers.customer_id = customer_purchase_history.customer_id
GROUP BY customers.customer_id
ORDER BY total_order_value DESC;
    
-- Insight #2: Most popular product categories among different age groups.
WITH aggregated_purchases AS (
	SELECT
		customers.age,
		customer_purchase_history.product_category,
        SUM(customer_purchase_history.order_value) AS total_purchases
	FROM
		customers
	JOIN 
		customer_purchase_history
        ON  customers.customer_id = customer_purchase_history.customer_id
	GROUP BY
		customers.age, customer_purchase_history.product_category
),
ranked_purchases AS (
	SELECT
		age,
		product_category,
		total_purchases,
        ROW_NUMBER() OVER (
			PARTITION BY age
            ORDER BY total_purchases DESC
            ) AS row_num
	FROM
		aggregated_purchases
)
SELECT 
	age,
    product_category,
    total_purchases
FROM
	ranked_purchases
WHERE
	row_num = 1
ORDER BY
	age DESC;
    
-- Insight #3: Customers with the highest number of purchases.
SELECT 
    customers.customer_id,
    customers.first_name,
    customers.last_name,
    COUNT(customer_purchase_history.purchase_id) AS total_order_count
FROM
    customers
        JOIN
    customer_purchase_history ON customers.customer_id = customer_purchase_history.customer_id
GROUP BY customers.customer_id
ORDER BY total_order_count DESC;

-- Insight #4: Average rating of each product category.
SELECT 
    customer_purchase_history.product_category,
    ROUND(AVG(customer_reviews.rating), 2) AS review_average
FROM
    customer_reviews
        JOIN
    customer_purchase_history ON customer_reviews.purchase_id = customer_purchase_history.purchase_id
GROUP BY customer_purchase_history.product_category;
