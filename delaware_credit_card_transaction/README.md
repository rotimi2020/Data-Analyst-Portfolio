# ✅ Data cleaning and Visualization : Using SQL and Power BI

---

## 🌸 Project Overview
The *"State of Delaware Checkbook"* project is an extensive analysis of the state’s credit card transactions. The goal is to derive meaningful insights from the data to enhance financial transparency and accountability.

---

# 📁 Project Directory Structure

This project repository is organized into modular folders for better navigation and understanding. Each folder contains specific resources (SQL scripts, DAX measures, Power BI files, etc.) related to the **Delaware Checkbook Credit Card Transaction Analysis** project.

The dataset originally used was sourced from the [State of Delaware Open Data Portal](https://data.delaware.gov/Government-and-Finance/Credit-Card-Spend-by-Merchant/8pzf-ge27), under the title **“Credit Card Spend by Merchant”**.  
> ⚠️ **Note:** This link is currently broken or the dataset has been removed from public access. A local copy has been preserved in the repository under the `data/` folder for reproducibility purposes.

| Folder / File                                                  | Description                                                                 |
| -------------------------------------------------------------- | --------------------------------------------------------------------------- |
| **`dax/`**                                                     | Contains DAX formulas and documentation used in Power BI for analysis       |
| ├── `README.md`                                                | Overview of key DAX KPIs and calculations                                   |
| └── `powerbi_dax_formulas.txt`                                 | Complete list of DAX expressions used for visuals and metrics               |
| **`er_diagram/`**                                              | Entity Relationship Diagram used in Power BI and data modeling              |
| ├── `README.md`                                                | Explanation of ER diagram components and structure                          |
| └── `entity_relationship_diagram.pdf`                          | PDF version of the ER diagram                                               |
| **`powerbi/`**                                                 | Power BI report files for visual analytics and reporting                    |
| ├── `README.md`                                                | Description of the report layout, pages, and visual insights                |
| └── `delaware_checkbook.pbix`                                  | Main Power BI report file                                                   |
| **`report_screenshots/`**                                      | Exported images from Power BI dashboards and reports                        |
| ├── `README.md`                                                | Overview of visual reports included                                         |
| ├── `expenditure_analysis_reports.PNG`                         | Breakdown of expenditure by category and merchant                           |
| ├── `time_based_expenditure_reports.PNG`                       | Time-based trends and forecasting insights                                  |
| **`reports/`**                                                 | Packaged Power BI dashboards with performance insights                      |
| ├── `README.md`                                                | High-level summary of insights and key findings                             |
| └── `delaware_checkbook_reports.pbix`                          | Supplementary report on trends and analysis                                 |
| **`sql/`**                                                     | SQL scripts for cleaning, transforming, and preparing the dataset           |
| ├── `README.md`                                                | Explanation of SQL logic and database preparation steps                     |
| └── `delaware_checkbook.sql`                                   | SQL queries used for data preprocessing and exploration                     |

--- 

## 📑 Table of Contents

- [📝 Project Overview](#-project-overview)
- [🎯 Objectives](#-objectives)
- [📌 Problem Definition](#-problem-definition)
- [💾 Dataset Description](#-dataset-description)
  - [📂 Files Included](#files-included)
  - [⚠️ Data Source Disclaimer](#data-source-disclaimer)
- [🧹 Data Processing & Cleaning](#-data-processing--cleaning)
- [🛠 SQL Overview](#-sql-overview)
  - [📄 SQL Structure](#sql-structure)
- [🔗 Entity Relationship Diagram (ERD)](#-entity-relationship-diagram-erd)
- [📊 Power BI Dashboard](#-power-bi-dashboard)
  - [📋 Dashboard Structure](#dashboard-structure)
  - [📈 Pages & Visuals](#pages--visuals)
  - [📌 KPIs and Measures](#kpis-and-measures)
- [🔢 DAX Measures Overview](#-dax-measures-overview)
- [🔍 Key Findings & Recommendations](#-key-findings--recommendations)
- [🧰 Tools & Technologies Used](#-tools--technologies-used)
- [🗂 Export & Documentation](#-export--documentation)
- [👤 Author](#-author)

--- 

## 🌟 Objectives 
The *primary objective* is to improve financial transparency and provide stakeholders with a comprehensive view of the state’s expenditures.

---

## 📌 Problem Definition
The problem is to analyze a large dataset of credit card transactions to identify spending patterns and provide insights for better financial management.

---

## 🎯 Problem Statement
The *State of Delaware Checkbook dataset* contains financial transaction data for various departments and divisions. This dataset includes key details such as the fiscal year, fiscal period, department and division names, merchant details, transaction dates, category descriptions, and transaction amounts.<br> <br>
The *primary goal* is to analyze this dataset to gain insights into financial transactions, identify spending patterns, and generate meaningful visualizations for better decision-making.

---

## 🔗 Dataset
This dataset contains credit card transaction details for various departments within the State of Delaware. It includes a total of 1,539,693 records, with details about the fiscal year, department, vendor, transaction date, and amounts involved.
<br> <br>
The Delaware checkbook dataset, which includes credit card transactions, is quite large—approximately 180 MB. This file size makes it challenging to upload directly to GitHub.<br>

🔗 [Credit Card Spend by Merchant – Delaware](https://data.delaware.gov/Government-and-Finance/Credit-Card-Spend-by-Merchant/8pzf-ge27)

⚠️ **Note**: As of [July 2025], the link appears to be broken or the dataset has been moved/removed from the portal. This project remains valid as a demonstration of SQL and Power BI data analysis skills using the originally available data.


- **📑Summary Statistics**
  - Total Number of Rows: *1,539,693*
  - Total Number of Duplicate Rows: *102,500*
  - Total Number of Rows After Removing Duplicates: *1,437,193*
  - Total Number of Anomaly Rows: *173,518*
  - Total Number of Rows After Removing Anomalies: *1,263,675* <br>

---

### 🟡 Data Definition
The dataset contains the following columns:

- **FISCAL_YEAR :** The fiscal year in which the transaction occurred.
- **FISCAL_PERIOD :** The fiscal period (month) in which the transaction occurred. For example, 1 = July, 2 = August, 3 = September, 
                      7 =  January, 12 = June. 
- **DEPT_NAME :** The name of the department responsible for the transaction.
- **DIV_NAME :** The name of the division within the department responsible for the transaction.
- **MERCHANT :** The name of the merchant or vendor involved in the transaction.
- **CAT_DESCR :** The category description of the transaction.
- **TRANS_DT :** The date on which the transaction occurred.
- **MERCHANDISE_AMT :** The monetary amount of the transaction.

---  

## 🧾 Overview
The provided SQL script includes a series of operations aimed at analyzing financial transaction data from the Delaware_Checkbook table. The queries cover data extraction, duplicate detection, data cleaning, the creation of new columns for categorization, and various analyses to assess expenditure trends.<br>
  Here's a concise summary of the SQL queries provided for analyzing the Delaware_Checkbook database.
  Get the full Code [here](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/delaware_credit_card_transaction/sql/delaware_checkbook.sql)

---

### 🔍 Sections of the SQL Script
- 📊 **View Data and Counts**<br>

  - Retrieve all records from Delaware_Checkbook.
   ```sql
   SELECT
   *
   FROM
   [dbo].[Delaware_Checkbook];
   

   ```

  - 📊 Count the total number of rows.
   ```sql
   SELECT
   COUNT(*) AS [TOTAL ROW]
   FROM
   [dbo].[Delaware_Checkbook];
  ```

- 📊 **Table Description**<br>

  - Execute sp_help to display the table structure and metadata.
  ```sql
  EXEC sp_help '[dbo].[Delaware_Checkbook]'
  ```

- 📊 **Change Column Type**

  - Change column's data type from SMALLINT to INT.
  ```sql
  ALTER TABLE
  [dbo].[Delaware_Checkbook]
  ALTER COLUMN
  [FISCAL_YEAR] int;


  ALTER TABLE
  [dbo].[Delaware_Checkbook]
  ALTER COLUMN
  [FISCAL_PERIOD] int;
  
  ```


-  📊 **Check for Null Values**

  - Perform distinct counts of records for several key columns (e.g., FISCAL_YEAR, FISCAL_PERIOD, DEPT_NAME) to identify any null entries.No Null values are found


- 📊 **Remediate Data Issues**

  - Update MERCHANDISE_AMT to eliminate negative signs and round the values.
  ```sql
  SELECT
  DISTINCT [MERCHANDISE_AMT],
  COUNT(*) AS [COUNT ROWS],
  round(replace([MERCHANDISE_AMT], '-', ''), 2)
  FROM
  [dbo].[Delaware_Checkbook]
  GROUP BY
  [MERCHANDISE_AMT]
  ORDER BY
  [MERCHANDISE_AMT],
  [COUNT ROWS] ASC 
  ```


- 📊 **Create New Columns**

  - Add a new column for FISCAL_PERIOD_MONTH representing the month corresponding to the fiscal period.
  - Populate this column based on the fiscal period values.
  ```sql
  SELECT
  DISTINCT [FISCAL_PERIOD],
  CASE
    WHEN [FISCAL_PERIOD] = 7 THEN 'January'
    WHEN [FISCAL_PERIOD] = 8 THEN 'February'
    WHEN [FISCAL_PERIOD] = 9 THEN 'March'
    WHEN [FISCAL_PERIOD] = 10 THEN 'April'
    WHEN [FISCAL_PERIOD] = 11 THEN 'May'
    WHEN [FISCAL_PERIOD] = 12 THEN 'June'
    WHEN [FISCAL_PERIOD] = 1 THEN 'July'
    WHEN [FISCAL_PERIOD] = 2 THEN 'August'
    WHEN [FISCAL_PERIOD] = 3 THEN 'September'
    WHEN [FISCAL_PERIOD] = 4 THEN 'October'
    WHEN [FISCAL_PERIOD] = 5 THEN 'November'
  ELSE 'December'
  END AS [FISCAL_PERIOD]
  FROM
  [dbo].[Delaware_Checkbook];
  ```



- 📊 **Create a Season Column**

  - Add another column for FISCAL_PERIOD_SEASON and populate it with the corresponding season based on month values.
  ```sql
  SELECT
  DISTINCT [FISCAL_PERIOD_MONTH],
  CASE
    WHEN [FISCAL_PERIOD_MONTH] = 'January' THEN 'Winter'
    WHEN [FISCAL_PERIOD_MONTH] = 'February' THEN 'Winter'
    WHEN [FISCAL_PERIOD_MONTH] = 'March' THEN 'Spring'
    WHEN [FISCAL_PERIOD_MONTH] = 'April' THEN 'Spring'
    WHEN [FISCAL_PERIOD_MONTH] = 'May' THEN 'Spring'
    WHEN [FISCAL_PERIOD_MONTH] = 'June' THEN 'Summer'
    WHEN [FISCAL_PERIOD_MONTH] = 'July' THEN 'Summer'
    WHEN [FISCAL_PERIOD_MONTH] = 'August' THEN 'Summer'
    WHEN [FISCAL_PERIOD_MONTH] = 'September' THEN 'Fall'
    WHEN [FISCAL_PERIOD_MONTH] = 'October' THEN 'Fall'
    WHEN [FISCAL_PERIOD_MONTH] = 'November' THEN 'Fall'
    WHEN [FISCAL_PERIOD_MONTH] = 'December' THEN 'Winter'
  ELSE [FISCAL_PERIOD_MONTH]
  END AS season
  FROM
  [dbo].[Delaware_Checkbook];
  ```



- 📊 **Check for Duplicates**<br>

  - Use a Common Table Expression (CTE) to identify duplicate records based on multiple columns.
  - Select duplicates for review.
  ```sql
  WITH
  DupRows AS (
    SELECT
      *,
      ROW_NUMBER() OVER (
        PARTITION BY [FISCAL_YEAR],
        [FISCAL_PERIOD],
        [DEPT_NAME],
        [DIV_NAME],
        [MERCHANT],
        [CAT_DESCR],
        [TRANS_DT],
        [MERCHANDISE_AMT]
        ORDER BY
          [FISCAL_YEAR],
          [FISCAL_PERIOD],
          [DEPT_NAME],
          [DIV_NAME],
          [MERCHANT],
          [CAT_DESCR],
          [TRANS_DT],
          [MERCHANDISE_AMT]
      ) AS row_num
    FROM
      [dbo].[Delaware_Checkbook]
  )
  SELECT
  *
  FROM
  DupRows
  WHERE
  row_num > 1 
  ```


- 📊 **Remove Duplicate Rows**

  - Another CTE to find duplicates, followed by deleting them from the table.
  ```sql
  WITH
  DupRows AS (
  SELECT
  *,
  ROW_NUMBER() OVER (
        PARTITION BY [FISCAL_YEAR],
        [FISCAL_PERIOD],
        [DEPT_NAME],
        [DIV_NAME],
        [MERCHANT],
        [CAT_DESCR],
        [TRANS_DT],
        [MERCHANDISE_AMT]
        ORDER BY
          [FISCAL_YEAR],
          [FISCAL_PERIOD],
          [DEPT_NAME],
          [DIV_NAME],
          [MERCHANT],
          [CAT_DESCR],
          [TRANS_DT],
          [MERCHANDISE_AMT]
      ) AS row_num
    FROM
      [dbo].[Delaware_Checkbook]
  )
  DELETE FROM
  DupRows
  WHERE
  row_num > 1
  ```
---

## 📌 Analysis
-  📊 **Total number of transactions:** Count of all purchase transactions within the specified timeframe
  ```sql
  SELECT
    COUNT(*) AS [Nos_Of_Transaction]
  FROM
    [dbo].[Delaware_Checkbook_Analysis] 
  ```

-  📊 **Total expenditure:** The aggregate amount spent across all transactions.
  ```sql
  SELECT
  round(SUM([MERCHANDISE_AMT]), 2) AS [Total_Expenditure]
  FROM
  [dbo].[Delaware_Checkbook_Analysis] 
 
  ```
-  📊 **Yearly and monthly expenditure reporting:** Breakdown of spending by month and year for trend identification.
  ```sql
  SELECT
  [FISCAL_PERIOD_MONTH],
  round(SUM([MERCHANDISE_AMT]), 2) AS [Monthly_Expenditure]
  FROM
  [dbo].[Delaware_Checkbook_Analysis]
  GROUP BY
  [FISCAL_PERIOD_MONTH]
  ORDER BY
  [Monthly_Expenditure] desc 


  SELECT
  [FISCAL_YEAR],
  round(SUM([MERCHANDISE_AMT]), 2) AS [Yearly_Expenditure]
  FROM
  [dbo].[Delaware_Checkbook_Analysis]
  GROUP BY
  [FISCAL_YEAR]
  ORDER BY
  [FISCAL_YEAR]
  ``` 
  
-  📊 **Seasonal expenditure trends:** Analysis of spending variations across different seasons.
  ```sql
  SELECT
  [FISCAL_PERIOD_SEASON],
  round(SUM([MERCHANDISE_AMT]), 2) AS [Season_Expenditure]
  FROM
  [dbo].[Delaware_Checkbook_Analysis]
  GROUP BY
  [FISCAL_PERIOD_SEASON]
  ORDER BY
  [Season_Expenditure] desc 
  ```

-  📊 **Departmental and divisional spend analysis:** Assessment of spending by individual departments or divisions to identify   areas of high expenditure.
  ```sql
  SELECT
  [DEPT_NAME],
  [DIV_NAME],
  round(SUM([MERCHANDISE_AMT]), 2) AS [Dept_Div_Expenditure]
  FROM
  [dbo].[Delaware_Checkbook_Analysis]
  GROUP BY
  [DEPT_NAME],
  [DIV_NAME]
  ORDER BY
  [Dept_Div_Expenditure] desc;
  ```

-  📊 **Top merchants and category expenditures:** Identification of the largest suppliers and highest spending categories for    strategic insights.
  ```sql
  SELECT
  MERCHANT,
  round(SUM([MERCHANDISE_AMT]), 2) AS [Top_Merchant_Expenditure]
  FROM
  [dbo].[Delaware_Checkbook_Analysis]
  GROUP BY
  MERCHANT
  ORDER BY
  [Top_Merchant_Expenditure] desc


  SELECT
  [CAT_DESCR],
  round(SUM([MERCHANDISE_AMT]), 2) AS [CAT_DESCR_Expenditure]
  FROM
  [dbo].[Delaware_Checkbook_Analysis]
  GROUP BY
  [CAT_DESCR]
  ORDER BY
  [CAT_DESCR_Expenditure] desc 
  ```

---

#  📊 Power BI

---

## 📑 Expenditure DAX Measures  

This document outlines the key DAX measures used to calculate various expenditure metrics from the Delaware Checkbook data.  
Get the Power BI Dax [Code here](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/delaware_credit_card_transaction/dax/powerbi_%20dax_formulas.txt)

  **📅1. Total Transactions**  
  ```DAX  
  Total_Transactions = COUNTROWS(Delaware_Checkbook)
  ```
  **🧭2. Average Expenditure**
  ```DAX
  Average_Expenditure = AVERAGE(Delaware_Checkbook[MERCHANDISE_AMT])
  ```

  **🧮3. Total Expenditure**
  ```DAX
  Total_Expenditure = SUM(Delaware_Checkbook[MERCHANDISE_AMT])
  ```
  **🛒4. Monthly Expenditure**
  ```DAX
  Monthly_Expenditure =   
  CALCULATE(  
    SUM(Delaware_Checkbook[MERCHANDISE_AMT]),  
    ALLEXCEPT(Delaware_Checkbook, Delaware_Checkbook[FISCAL_PERIOD_MONTH])  
           )
  ```
  
  **🌸5. Yearly Expenditure**
  ```DAX
  Yearly_Expenditure =   
  CALCULATE(  
    SUM(Delaware_Checkbook[MERCHANDISE_AMT]),  
    ALLEXCEPT(Delaware_Checkbook, Delaware_Checkbook[FISCAL_YEAR])  
           )  
  ```

  **🧪6. Seasonal Expenditure**
  ```DAX
  Seasonal_Expenditure =   
  CALCULATE(  
    SUM(Delaware_Checkbook[MERCHANDISE_AMT]),  
    ALLEXCEPT(Delaware_Checkbook, Delaware_Checkbook[FISCAL_PERIOD_SEASON])  
           )   
  ```

  **🔮7. Department Expenditure**
  ```DAX
  Dept_Expenditure =   
  CALCULATE(  
    SUM(Delaware_Checkbook[MERCHANDISE_AMT]),  
    ALLEXCEPT(Delaware_Checkbook, Delaware_Checkbook[DEPT_NAME])  
           )  
  ```  

  **👥8. Top Merchant Expenditure**
  ```DAX
  Top_Merchant_Expenditure =   
  CALCULATE(  
    SUM(Delaware_Checkbook[MERCHANDISE_AMT]),  
    ALLEXCEPT(Delaware_Checkbook, Delaware_Checkbook[MERCHANT])  
  ) 
  ```

  **🏬9. Category Expenditure**
  ```DAX
  Category_Expenditure =   
  CALCULATE(  
    SUM(Delaware_Checkbook[MERCHANDISE_AMT]),  
    ALLEXCEPT(Delaware_Checkbook, Delaware_Checkbook[CAT_DESCR])  
           ) 
  ```

  **📦10. Expenditure Trend**
  ```DAX
  Expenditure_Trend =   
  CALCULATE(  
    SUM(Delaware_Checkbook[MERCHANDISE_AMT]),  
    DATESYTD(Delaware_Checkbook[TRANS_DT])  
           )
  ```
---

## 📌 Power BI Visualization Report 
Below are preview images of the Power BI reports developed for this project. They illustrate key visualizations, insights, and the overall layout of the report. 
Feel free to explore the visuals to understand the data story.

| Expenditure Analysis Report | Time Based Expenditure Report |
|----------------|----------------|
| ![Expenditure Analysis Report](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/delaware_credit_card_transaction/report_screenshots/expenditure_analysis_reports.PNG) | ![Time Based Expenditure Report](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/delaware_credit_card_transaction/report_screenshots/time_based_expenditure_reports.PNG) |

---

### 📑 Download the Full Power BI Report as PDF

You can **download the complete Power BI report** in PDF format:  
**[Download PDF Report](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/delaware_credit_card_transaction/reports/delaware_checkbook_reports.pdf)**

---


### ✅ Key Findings

- **🛒1. Total Expenditure:**
  - The **total recorded spending** is **$152.38 million**.
  - The a**verage transaction amount** is **$120.60**.
  - The dataset includes **over 1 million transactions**.


- **🌸2. Top Merchants Spending:**
  - **Grainger** - $2.9M
  - **Verizon** - $2.1M
  - **Canon Financial** - $1.9M
  - **Amazon** - $1.1M
  - **Comcast** - $1.0M


- **📅3. Top Categories Spending:**
  - **Book Stores** - $12.7M
  - **Airline Expenses** - $8.59M 
  - **Lodging (Hotels)** - $7.86M
  - **Stationery & Office Supplies** - $6.52M
  - **Telecom Services** - $3.94M


- **🧪4. Departmental Expenditure:**
  - The *highest spending department* recorded **$19M**.
  - Several departments have expenses over **$10M**, including *legal, executive, and state services*.


- **📑5. Seasonal and Monthly Trends:**
  - The *highest expenditures* were recorded in **Fall Season ($42M)** and **Spring Season ($40M)**.
  - **September, October, August, and March** each had over **$14M** in spending.
  - The *lowest spending* occurred in **June and January**.
 
---

### ✅ Insights
- **Heavy spending on books, airlines, and lodging** suggests significant travel and education-related costs.
- **Telecom and office supply expenses** indicate a major investment in communication and administrative needs.
- **Consistent high spending across seasons** suggests ongoing operations rather than seasonal projects.
- **Top merchants like Grainger and Verizon** imply recurring contracts for supplies and communication.

---

### 🌟 Potential Solutions

 - **🟢Budget Optimization:**

   - Review high-spending categories like **travel**, **books**, and **telecom** to identify *cost-saving opportunities*.

   - Implement bulk purchasing strategies for office supplies and telecom services.


 - **🟢Expense Justification:**

   - Large transactions should be audited for necessity and efficiency.

   - Departmental spending reports should highlight essential vs. discretionary costs.


 - **🟢Seasonal Adjustments:**

   - Lower spending during **winter** suggests potential budget reallocation strategies to balance yearly expenses.


---

### ✅ Conclusion

 - 📌 The **Delaware state budget** is significantly allocated to telecom, office supplies, books, and travel.

 - 📌 Spending is fairly consistent throughout the year, with peaks in fall and spring.

 - 📌 Key merchants and categories indicate ongoing operational costs rather than one-time expenditures.

---

### ✅ Recommendations

 - **📌1. Audit Top Categories Spending:**
   - Focus on **travel, lodging, and telecom** expenses for potential reductions.

 - **📌2. Improve Procurement Strategies:**
   - Negotiate better deals with frequent vendors like Grainger and Verizon.

 - **📌3. Seasonal Budget Planning:**
   - Balance **fall and spring spending** by distributing expenses more evenly across the year.

 - **📌4. Transparency & Reporting:**
   - Publish **detailed reports** on high-value transactions to improve accountability.

---

## Export & Documentation
- All code, queries, and analysis documented in Jupyter notebooks.
- Data stored securely with links to external datasets for large files.
- Visualization dashboards created in Power BI for executive reporting.

---

## ⚙️ Installation

To set up the project environment on your local machine, follow these steps:

### ✅ Step 1: Clone the Repository

```bash
git clone https://github.com/rotimi2020/Data-Analyst-Portfolio.git
cd Data-Analyst-Portfolio/delaware_credit_card_transaction
```

### ✅ Step 2: Install Dependencies
Make sure Python 3.8 or later is installed. Then run:

```bash
pip install -r requirements.txt
```

---

## 🙋‍♂️ Author

**Rotimi Sheriff Omosewo**  
📧 Email: [omoseworotimi@gmail.com](mailto:omoseworotimi@gmail.com)  
📞 Contact: +234 903 441 1444  
🔗 LinkedIn: [linkedin.com/in/rotimi-sheriff-omosewo/](https://www.linkedin.com/in/rotimi-sheriff-omosewo-939a806b)  
📁 Project GitHub: [github.com/rotimi2020/](https://github.com/rotimi2020/Data-Analyst-Portfolio)

> This project is part of my Data Analytics Portfolio. It demonstrates business intelligence, forecasting, and machine learning skills using real-world data and modern tools.

---



