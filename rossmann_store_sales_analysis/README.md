# Rossmann Store Sales Forecasting Project

## Project Overview
This project involves analyzing the Rossmann Store Sales dataset to understand sales patterns, 
perform data cleaning and transformation, and build predictive models for sales forecasting. 
The goal is to generate actionable insights and accurate sales predictions for strategic decision-making.

---

## Objectives
- Clean and preprocess the raw data using SQL and Python.
- Analyze sales trends daily, monthly, and yearly.
- Identify key factors impacting sales.
- Develop machine learning models to forecast future sales.
- Visualize insights and communicate findings effectively.

---

## Problem Definition
Rossmann, a major drugstore chain, aims to optimize its inventory and 
staffing by accurately forecasting daily sales at individual stores. 
Challenges include handling large datasets, missing data, outliers, 
and complex patterns due to promotions, holidays, and store-specific factors.

---

# Rossmann Store Sales Dataset Overview
## Dataset
This dataset contains daily sales data for Rossmann stores across various locations. 
with details about the store, date, sales, customer counts, promotional activities, and other relevant factors influencing sales. 
you can download the dataset which features the following key data fields:

- **Id**: Unique identifier for each store-date pair (only in test set).
- **Store**: Store identification number.
- **Sales**: The target variable representing total sales for each day.
- **Customers**: The number of customers visiting the store on that day.
- **Open**: Indicator whether the store was open (1) or closed (0).
- **Promo**: Whether the store was participating in a promotion on that day.
- **StateHoliday**: Indicator of public holidays affecting sales.
- **SchoolHoliday**: Whether schools were on holiday, influencing customer traffic.
- **StoreType**: Classification of store type.
- **Assortment**: Level of product assortment available.
- **CompetitionDistance**: Distance to the nearest competing store.
- **Promo2**: Ongoing promotional campaigns.
- **Date**: The specific date of observation.


## Files Included
- `train.csv`: Historical sales data (~1 million rows, approximately 36.2 MB)
- `test.csv`: Recent or upcoming sales data (~41k rows)
- `store.csv`: Store information (~1,115 rows)
- `sample_submission.csv`: Format template for submissions


## File Sizes
| File                 | Approximate Size  | Description                                           |
|---------------------|-------------------|-------------------------------------------------------|
| `train.csv`        | 36.2 MB           | Contains daily store sales and transaction details  |
| `test.csv`         | 2 MB              | Data for prediction (future sales)                   |
| `store.csv`        | < 1 MB            | Static store-specific attributes                     |
| `sample_submission.csv` | < 1 KB         | Example submission format                            |



## Important Notes
- Due to size constraints (GitHub maximum upload size is 25MB), the `train.csv` file cannot be directly uploaded here since it exceeds this limit.
- The dataset has been imported into SQL Server Management Studio (SSMS) for data cleaning and exploratory analysis.
- You can download the datasets directly from Kaggle using their platform or API.



## Usage
- Use this dataset for predictive modeling, data analysis, or feature engineering.
- Refer to `store.csv` for static store info to enhance your models.
- Utilize this data to identify sales patterns, forecast future sales, or optimize promotional strategies<br>
  **[Download the dataset here](https://www.kaggle.com/competitions/rossmann-store-sales/data)**
---

## Data Processing & Cleaning
Utilized SQL and Python to clean and transform data:
- Removed duplicates (172,132 entries)
- Handled missing values and null entries
- Converted data types (e.g., date to datetime, categorical to integers)
- Engineered new features and transformed existing ones:
  - StoreType and Assortment encoding
  - Normalized and discretized PromoInterval
- Outlier detection and removal (30,778 outliers)

---
## 🧪 Feature Engineering

- **Date Features**: Year, Month, Day, IsWeekend, Season
- **Lag Features**: `Sales_Lag_7`, `Sales_Lag_30`
- **Moving Averages**: `Sales_MA_7`
- **Categorical Encoding**: `StoreType`, `Assortment`
- **Holiday & Promotion Effects**: Capture the impact of holidays and promotions on sales, considering how these events influence customer behavior and sales patterns.

---

## Exploratory Data Analysis (SQL & Visualization)
- **Daily sales trends:** Visualized sales over time
- **Annual and monthly trends:** Identified seasonal patterns
- **Weekly sales:** Analyzed weekly fluctuations
- **Customer behavior:** Summarized by year
- **Key findings:** 
  - Sales peak during holidays and special promotions
  - Store types and proximities significantly impact sales
  - Promotions and holidays are major sales drivers

---

## 🧾 SQL Overview

This project uses SQL to clean, transform, and extract insights from the Rossmann Store Sales dataset.  
The SQL queries were used for data preprocessing, calculating key metrics, and preparing data for Power BI and forecasting models.

Key objectives:
- Cleaning and transforming raw data
- Creating features for analysis (e.g., holidays, promo effects)
- Generating KPIs (e.g., daily sales, average per store)
- Preparing time-series ready data

---

## 🔍 Sections of SQL Scripts

Below are selected SQL snippets from the project on data cleaning.
- Replacement of null values
- Change type

### 1. Replacement of null values
```sql
UPDATE store_cleaned
SET [CompetitionDistance] = (SELECT AVG([CompetitionDistance]) FROM store)
WHERE [CompetitionDistance] IS NULL;

```

### 2. Change type
```sql
alter table [train_cleaned]
alter column [Store] int;

```
---
Below are selected SQL snippets from the project on data analysis queries.
- Aggregating total sales for each date to analyze daily sales performance
- aggregating sales by year
### 1. 📊 Daily Sales Trend
```sql
select Date, sum(Sales) AS Total_sales  
from Rossmann_sale  
group by Date  
order by Date ;

```

### 2. 📊 Yearly Sales Trend
```sql
select year(Date) As Year, sum(Sales) AS Total_sales
from Rossmann_sale
group by year(Date);

```
---
## Summary of SQL Sections
This section covers essential SQL scripts used in the project for data cleaning and analysis. It includes techniques like null value replacement, type conversion, and aggregation of sales data—key steps for preparing and deriving insights from the Rossmann dataset.

You can download the complete SQL script file from the link below:<br>
 **[Download the SQL script here](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/sql/rossmann_sales.sql)**

---
## Insights & Key Findings
- Sales exhibit strong seasonal patterns tied to holidays and promotions.
- Store-specific factors influence sales volume.
- Outliers and missing data, if unaddressed, skew insights and models.
- Promotion periods correlate with spikes in sales.

---

## Predictive Modeling
- Developed machine learning models such as XGBoost and Prophet.
- Used feature engineering to enhance model accuracy.
- Hyperparameter tuning and cross-validation ensured robustness.
- Achieved promising forecasting accuracy (e.g., RMSE, MAE metrics).

---

## Recommendations
- Implement targeted marketing during peak seasons identified.
- Use the sales forecast in inventory planning and staffing.
- Continue monitoring external factors like holidays and competitions.
- Regularly update models with new data for ongoing accuracy.

---

## Conclusions
This project successfully demonstrated the value of integrated SQL and Python workflows for large-scale retail sales analysis. 
The models and insights support business strategies to enhance sales performance, optimize stock levels, and improve customer satisfaction.

---

## Export & Documentation
- All code, queries, and analysis documented in Jupyter notebooks.
- Data stored securely with links to external datasets for large files.
- Visualization dashboards created in Power BI for executive reporting.

---

**Tools & Technologies:**
- SQL (Data Cleaning & Queries)
- Python (Pandas, Scikit-Learn, XGBoost, Prophet)
- Power BI (Data Visualization)
- Jupyter Notebook / Google Colab

---
