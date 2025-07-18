# 🗂️ SQL Analysis – Delaware Checkbook Credit Card Transactions

This project contains a comprehensive SQL-based exploration, cleaning, and expenditure analysis of the Delaware Checkbook credit card transaction dataset using Microsoft SQL Server.

## 🛠️ Key Objectives

- Inspect and explore raw transaction data
- Handle data quality issues (nulls, duplicates, negative values, anomalies)
- Derive new time-based columns (month & season)
- Create a cleaned and structured table for analysis
- Perform expenditure analysis across various dimensions

---

## 🔍 Data Exploration & Cleaning

- Queried and counted total records
- Investigated null distributions by fiscal year, period, and department
- Identified and removed:
  - Negative transaction amounts
  - Duplicate entries using `ROW_NUMBER()`
  - Outliers using interquartile range (IQR)

## 📅 Time-Based Feature Engineering

- Created `FISCAL_PERIOD_MONTH` for month names
- Created `FISCAL_PERIOD_SEASON` to classify each month into a season (Winter, Spring, etc.)

## 📊 Analytical Queries

Created a new table `[Delaware_Checkbook_Analysis]` and performed aggregated analysis such as:

1. **Total Transactions & Expenditure**
2. **Yearly and Monthly Spending Trends**
3. **Seasonal Spending Patterns**
4. **Top Departments and Divisions by Spend**
5. **Top Vendors (Merchants)**
6. **Expenditure by Category Descriptions (CAT_DESCR)**
7. **Year-Month Expenditure Drilldowns**

---

## ⚠️ Dataset Availability

> **Note**: The original Delaware Checkbook dataset was publicly available from a state government site. However, the source link is no longer active. This SQL project reflects valid applied skills in data preparation, transformation, and analysis.

---

## 🧰 Tools Used

- Microsoft SQL Server Management Studio (SSMS)
- T-SQL (Transact-SQL)

---


