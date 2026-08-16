# Superstore Sales Dashboard

An interactive sales analytics dashboard built using **PostgreSQL, SQL, Microsoft Power BI, and DAX** to analyze sales performance, profitability, products, categories, sub-categories, and regional performance from 2011 to 2014.

---

## 📊 Project Overview

This project transforms Superstore sales data into meaningful business insights using SQL for data analysis and Power BI for interactive visualization.

The project focuses on understanding:

- Overall sales and profit performance
- Product-level sales and profitability
- Category and sub-category performance
- Year-wise sales trends
- Regional sales performance
- Overall profit margin

---

## 🛠️ Tools & Technologies

- **PostgreSQL** – Database management and SQL analysis
- **SQL** – Data aggregation, filtering, grouping, and business analysis
- **Microsoft Power BI** – Interactive dashboard development
- **DAX** – Calculated measures and KPI calculations
- **CSV** – Source dataset

---

## 📈 Dashboard Features

### Sales Overview

The Sales Overview dashboard provides a high-level view of overall business performance.

### Key Performance Indicators

- Total Sales
- Total Orders
- Total Profit
- Profit Margin

### Visualizations

- Sales & Profit by Category
- Profit by Sub-Category
- Sales Trend by Year
- Sales by Region

### Product Analysis

The Product Analysis dashboard focuses on identifying high-performing products and sub-categories.

It includes:

- Top 10 Products by Sales
- Top 10 Products by Profit
- Sales by Sub-Category
- Profit by Sub-Category
- Sales & Profit by Category

---

## 🔍 Key Insights

Based on the analysis:

- Total sales were approximately **$12.64M**.
- Total profit was approximately **$1.47M**.
- Overall profit margin was approximately **11.62%**.
- Sales showed a consistent upward trend from 2011 to 2014.
- Technology generated the highest sales among the major categories.
- Phones were among the strongest-performing sub-categories by sales.
- Copiers generated the highest profit among the analyzed sub-categories.
- Regional analysis showed significant differences in sales contribution.
- Product-level analysis identified specific products with strong sales and profit performance.

---

## 🧮 SQL Analysis

PostgreSQL and SQL were used to perform business-oriented analysis including:

- Total sales and profit calculation
- Year-wise sales and profit analysis
- Monthly sales and profit analysis
- Product-level sales analysis
- Product-level profit analysis
- Profit margin calculation
- Category analysis
- Sub-category analysis
- Top-performing product identification

### Example SQL Business Calculation

```sql
SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        (SUM(profit) / NULLIF(SUM(sales), 0)) * 100,
        2
    ) AS profit_margin_percentage
FROM sales_data;

```

## 📊 Power BI Dashboard

The dashboard was developed in Microsoft Power BI using:

- KPI Cards
- Bar Charts
- Line Charts
- Donut Charts
- DAX Measures
- Interactive visual filtering

### Sales Overview Dashboard

### Product Analysis Dashboard

---

## 💡 Business Value

This dashboard can help business stakeholders:

- Monitor overall sales performance
- Track profitability
- Identify high-performing products
- Compare category and sub-category performance
- Analyze regional sales contribution
- Track yearly sales growth
- Identify opportunities for improving profitability

---


## 🚀 How to Use
- Clone or download this repository.
- Open Superstore_Sales_Dashboard.pbix using Microsoft Power BI Desktop.
- If required, update the data source path to Superstore_Sales_SQL_Ready.csv.
- Refresh the dataset.
- Explore the interactive dashboard and visualizations.

---


## 🎯 Skills Demonstrated
- SQL
- PostgreSQL
- Data Cleaning & Preparation
- Data Analysis
- Exploratory Data Analysis
- Power BI
- DAX
- Data Visualization
- KPI Development
- Business Intelligence
- Business Problem Solving

---


## 👨‍💻 Author

Shantanu Kadam

Electronics & Telecommunication Engineering

Interested in Data Analytics, Business Intelligence, and Data Visualization.

