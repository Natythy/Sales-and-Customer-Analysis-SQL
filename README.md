# <p align="center"> Project Description: Sales and Customer Analysis 🛍️📈</p>
This repository contains SQL scripts for a Sales and Customer Analysis project. The project focuses on leveraging a relational database to gain insights into purchasing patterns, and product performance. The database schema, data insertion, and analytical queries are all defined within the provided SQL files.

## 🚀 **Key Features**
* **Database Schema Creation** (`create_database.sql`): This script sets up a normalized database schema consisting of four tables:
  * `customers`: Stores demographic information, such as age, gender, location, and income.
  * `customer_purchase_history`: Records transaction details like product category, brand, and order value.
  * `customer_reviews`: Stores customer feedback and ratings.
* **Data Population** (`database.sql`): This file populates the defined tables with sample data. It includes a diverse set of records for customers, purchase history, and product reviews.
* **Business Insights** (`insights.sql`): This script contains a series of analytical queries designed to extract valuable business insights. These queries can be used to inform marketing strategies, improve customer retention, and optimize product offerings. The insights generated include:
  * **Identifying Most Valuable Customers:** Ranks customers by their total purchase value.
  * **Analyzing Product Popularity:** Determines the most popular product categories for different age groups.
  * **Customer Engagement Metrics:** Identifies customers with the highest number of purchases.
  * **Product Performance Evaluation:** Calculates the average customer rating for each product category.

## 🛠️ Technology Stack
* **Database:** MySQL (or any other compatible SQL database)
* **Language:** SQL (specifically, using MySQL syntax and features like ROW_NUMBER())

## 📂 File Structure
* `create_database.sql`: SQL script to set up the database and tables.
* `database.sql`: SQL script to insert sample data into the tables.
* `insights.sql`: SQL script containing analytical queries for generating business insights
