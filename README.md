# sql-sales-analytics-system
# SQL Sales Analytics System

This project analyzes sales data for a simulated online store selling music merchandise (CDs, vinyl, songbooks and band T-shirts).

The goal of the project is to demonstrate SQL data analysis skills by answering common business questions related to revenue, customer behavior and sales performance.

---

# Dataset

The dataset consists of four relational tables:

- **customers** – customer information
- **orders** – order metadata (date, customer, status)
- **order_items** – products included in each order
- **products** – product catalog and prices

The data was synthetically generated for analysis purposes.

Some values were generated using **Google Sheets (RANDBETWEEN)** to simulate realistic order distributions.

---

# Database Schema

Tables used in the project:
**customers**
customer_id
first_name
last_name
city
email

**orders**
order_id
customer_id
order_date
order_status

**order_items**
order_id
product_id

**products**
product_id
product_name
price


---

# Business Questions Answered

The SQL scripts analyze several key business metrics:

1. **Total revenue**
2. **Revenue per month**
3. **Revenue per day in December** (holiday sales analysis)
4. **Average order value**
5. **Average revenue per customer**
6. **Repeat purchase rate**
7. **Top 10 customers by revenue**

---

# Example Analysis

Example insight query:

- Identify customers generating the highest revenue
- Measure repeat purchase behaviour
- Analyze seasonal sales trends

---

# Tools Used

- SQL (MySQL syntax)
- Google Sheets (data generation)
- GitHub (project hosting)

---

# Project Purpose

This project was created as part of a **data analyst portfolio** to demonstrate practical SQL skills including:

- joins
- aggregations
- window functions
- CTEs
- business metric calculations
