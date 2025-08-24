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