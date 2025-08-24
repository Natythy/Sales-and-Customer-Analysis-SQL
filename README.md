# <p align="center"> Project Description: Sales and Customer Analysis 🛍️📈</p>
This repository contains SQL scripts for a Sales and Customer Analysis project. The project focuses on leveraging a relational database to gain insights into purchasing patterns, and product performance. The database schema, data insertion, and analytical queries are all defined within the provided SQL files.

## 🚀 **Key Features**
* **Database Schema Creation** (`create_database.sql`): This script sets up a normalized database schema consisting of four tables:
  * `customers`: Stores demographic information, such as age, gender, location, and income.
  * `customer_purchase_history`: Records transaction details like product category, brand, and order value.
  * `customer_reviews`: Stores customer feedback and ratings.
```mysql
DROP DATABASE IF EXISTS sales_analysis;
CREATE DATABASE sales_analysis;

USE sales_analysis;

-- Table 1: customers
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age INT,
    gender VARCHAR(50),
    location VARCHAR(255),
    education VARCHAR(255),
    income DECIMAL(10 , 2 ),
    channel_preference VARCHAR(255),
    lifecycle_stage VARCHAR(255),
    PRIMARY KEY (customer_id)
);

-- Table 2: customer_purchase_history
CREATE TABLE customer_purchase_history (
    purchase_id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    product_category VARCHAR(255),
    brand VARCHAR(255),
    order_value DECIMAL(10 , 2 ),
    PRIMARY KEY (purchase_id),
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id)
);

-- Table 3: customer_reviews
CREATE TABLE customer_reviews (
    review_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    purchase_id INT NOT NULL,
    rating INT,
    review_text TEXT,
    review_date DATE,
    FOREIGN KEY (customer_id)
        REFERENCES customers (customer_id),
    FOREIGN KEY (purchase_id)
        REFERENCES customer_purchase_history (purchase_id)
);
```
* **Data Population** (`database.sql`): This file populates the defined tables with sample data. It includes a diverse set of records for customers, purchase history, and product reviews.
```mysql
-- Insert customer records
INSERT INTO customers (first_name, last_name, email, age, gender, location, education, income, channel_preference, lifecycle_stage)
VALUES ('John', 'Doe', 'john.doe@example.com', 35, 'Male', 'New York', 'Bachelor', 55000, 'Email', 'Active');

INSERT INTO customers (first_name, last_name, email, age, gender, location, education, income, channel_preference, lifecycle_stage)
VALUES ('Jane', 'Smith', 'jane.smith@example.com', 28, 'Female', 'Los Angeles', 'Master', 75000, 'Social Media', 'Active');

INSERT INTO customers (first_name, last_name, email, age, gender, location, education, income, channel_preference, lifecycle_stage)
VALUES ('Tom', 'Brown', 'tom.brown@example.com', 42, 'Male', 'Chicago', 'PhD', 90000, 'Email', 'At Risk');

INSERT INTO customers (first_name, last_name, email, age, gender, location, education, income, channel_preference, lifecycle_stage)
VALUES ('Sara', 'Johnson', 'sara.johnson@example.com', 25, 'Female', 'Miami', 'Bachelor', 48000, 'Mobile', 'New');

INSERT INTO customers (first_name, last_name, email, age, gender, location, education, income, channel_preference, lifecycle_stage)
VALUES ('Mike', 'Williams', 'mike.williams@example.com', 37, 'Male', 'San Francisco', 'Master', 110000, 'Mobile', 'Active');

INSERT INTO customers (first_name, last_name, email, age, gender, location, education, income, channel_preference, lifecycle_stage)
VALUES ('Emily', 'Chen', 'emily.chen@example.com', 31, 'Female', 'Boston', 'Master', 80000, 'Email', 'Active');

INSERT INTO customers (first_name, last_name, email, age, gender, location, education, income, channel_preference, lifecycle_stage)
VALUES ('Chris', 'Evans', 'chris.evans@example.com', 45, 'Male', 'Seattle', 'PhD', 120000, 'Social Media', 'At Risk');

INSERT INTO customers (first_name, last_name, email, age, gender, location, education, income, channel_preference, lifecycle_stage)
VALUES ('Olivia', 'Davis', 'olivia.davis@example.com', 22, 'Female', 'Austin', 'High School', 35000, 'Mobile', 'New');

INSERT INTO customers (first_name, last_name, email, age, gender, location, education, income, channel_preference, lifecycle_stage)
VALUES ('Daniel', 'Wilson', 'daniel.wilson@example.com', 50, 'Male', 'Denver', 'Bachelor', 95000, 'Email', 'Active');

INSERT INTO customers (first_name, last_name, email, age, gender, location, education, income, channel_preference, lifecycle_stage)
VALUES ('Sophia', 'Lee', 'sophia.lee@example.com', 29, 'Female', 'San Diego', 'Master', 70000, 'Social Media', 'Active');

-- Insert customer purchase history records
INSERT INTO customer_purchase_history (customer_id, order_date, product_category, brand, order_value)
VALUES (1, '2023-03-29', 'Electronics', 'Apple', 1200.00);

INSERT INTO customer_purchase_history (customer_id, order_date, product_category, brand, order_value)
VALUES (2, '2023-03-30', 'Fashion', 'Nike', 200.00);

INSERT INTO customer_purchase_history (customer_id, order_date, product_category, brand, order_value)
VALUES (3, '2023-03-27', 'Home Appliances', 'Samsung', 600.00);

INSERT INTO customer_purchase_history (customer_id, order_date, product_category, brand, order_value)
VALUES (4, '2023-03-25', 'Fashion', 'Adidas', 150.00);

INSERT INTO customer_purchase_history (customer_id, order_date, product_category, brand, order_value)
VALUES (5, '2023-04-01', 'Electronics', 'Sony', 850.00);

INSERT INTO customer_purchase_history (customer_id, order_date, product_category, brand, order_value)
VALUES (6, '2023-03-20', 'Books', 'Penguin', 30.00);

INSERT INTO customer_purchase_history (customer_id, order_date, product_category, brand, order_value)
VALUES (7, '2023-03-22', 'Fashion', 'Zara', 90.00);

INSERT INTO customer_purchase_history (customer_id, order_date, product_category, brand, order_value)
VALUES (8, '2023-03-24', 'Home Appliances', 'GE', 450.00);

INSERT INTO customer_purchase_history (customer_id, order_date, product_category, brand, order_value)
VALUES (9, '2023-03-26', 'Electronics', 'Microsoft', 950.00);

INSERT INTO customer_purchase_history (customer_id, order_date, product_category, brand, order_value)
VALUES (1, '2023-04-02', 'Fashion', 'Zara', 85.00);

-- Insert customer review records
INSERT INTO customer_reviews (customer_id, purchase_id, rating, review_text, review_date)
VALUES (1, 1, 5, 'Great product and fast delivery!', '2023-03-31');

INSERT INTO customer_reviews (customer_id, purchase_id, rating, review_text, review_date)
VALUES (2, 2, 4, 'Nice shoes, but delivery was slow.', '2023-04-04');

INSERT INTO customer_reviews (customer_id, purchase_id, rating, review_text, review_date)
VALUES (3, 3, 3, 'Product works well, but packaging was damaged.', '2023-03-29');

INSERT INTO customer_reviews (customer_id, purchase_id, rating, review_text, review_date)
VALUES (4, 4, 4, 'Good quality clothing and comfortable fit.', '2023-03-28');

INSERT INTO customer_reviews (customer_id, purchase_id, rating, review_text, review_date)
VALUES (5, 5, 5, 'Excellent quality TV, highly recommended!', '2023-04-03');

INSERT INTO customer_reviews (customer_id, purchase_id, rating, review_text, review_date)
VALUES (6, 6, 5, 'Great read, fast shipping.', '2023-03-21');

INSERT INTO customer_reviews (customer_id, purchase_id, rating, review_text, review_date)
VALUES (7, 7, 3, 'The clothes were okay, but the size was a bit off.', '2023-03-24');

INSERT INTO customer_reviews (customer_id, purchase_id, rating, review_text, review_date)
VALUES (8, 8, 4, 'Good refrigerator, works as expected.', '2023-03-28');

INSERT INTO customer_reviews (customer_id, purchase_id, rating, review_text, review_date)
VALUES (9, 9, 5, 'Love this laptop, perfect for work.', '2023-03-29');

INSERT INTO customer_reviews (customer_id, purchase_id, rating, review_text, review_date)
VALUES (1, 10, 4, 'Stylish jacket, glad I bought it.', '2023-04-05');
```
* **Business Insights** (`insights.sql`): This script contains a series of analytical queries designed to extract valuable business insights. These queries can be used to inform marketing strategies, improve customer retention, and optimize product offerings. The insights generated include:
  * **Identifying Most Valuable Customers:** Ranks customers by their total purchase value.
  * **Analyzing Product Popularity:** Determines the most popular product categories for different age groups.
  * **Customer Engagement Metrics:** Identifies customers with the highest number of purchases.
  * **Product Performance Evaluation:** Calculates the average customer rating for each product category.
```mysql
USE sales_analysis;
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

```

## 🛠️ Technology Stack
* **Database:** MySQL (or any other compatible SQL database)
* **Language:** SQL (specifically, using MySQL syntax and features like ROW_NUMBER())

## 📂 File Structure
* `create_database.sql`: SQL script to set up the database and tables.
* `database.sql`: SQL script to insert sample data into the tables.
* `insights.sql`: SQL script containing analytical queries for generating business insights
