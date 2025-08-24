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