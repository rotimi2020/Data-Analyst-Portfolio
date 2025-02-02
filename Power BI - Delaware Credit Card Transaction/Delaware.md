# Data cleaning and visualization : Using SQL and Power BI

## Project Overview
The *"State of Delaware Checkbook"* project is an extensive analysis of the state’s credit card transactions. The goal is to derive meaningful insights from the data to enhance financial transparency and accountability.

## Objectives 
The *primary objective* is to improve financial transparency and provide stakeholders with a comprehensive view of the state’s expenditures.

## Problem Definition
The problem is to analyze a large dataset of credit card transactions to identify spending patterns and provide insights for better financial management.

## Problem Statement
The *State of Delaware Checkbook dataset* contains financial transaction data for various departments and divisions. This dataset includes key details such as the fiscal year, fiscal period, department and division names, merchant details, transaction dates, category descriptions, and transaction amounts.<br> The *primary goal* is to analyze this dataset to gain insights into financial transactions, identify spending patterns, and generate meaningful visualizations for better decision-making.


## Dataset
This dataset contains credit card transaction details for various departments within the State of Delaware. It includes a total of 1,539,693 records, with details about the fiscal year, department, vendor, transaction date, and amounts involved.<br>

- **Summary Statistics**
  - Total Number of Rows: *1,539,693*
  - Total Number of Duplicate Rows: *102,500*
  - Total Number of Rows After Removing Duplicates: *1,437,193*
  - Total Number of Anomaly Rows: *173,518*
  - Total Number of Rows After Removing Anomalies: *1,263,675* <br>

### Data Definition
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

## Overview
The provided SQL script includes a series of operations aimed at analyzing financial transaction data from the Delaware_Checkbook table. The queries cover data extraction, duplicate detection, data cleaning, the creation of new columns for categorization, and various analyses to assess expenditure trends.<br>
  Here's a concise summary of the SQL queries provided for analyzing the Delaware_Checkbook database

### Sections of the SQL Script
- **View Data and Counts**<br>

  - Retrieve all records from Delaware_Checkbook.
   ```sql
   SELECT
   *
   FROM
   [dbo].[Delaware_Checkbook];
   

   ```

  - Count the total number of rows.
   ```sql
   SELECT
   COUNT(*) AS [TOTAL ROW]
   FROM
   [dbo].[Delaware_Checkbook];
  ```

- **Table Description**<br>

  - Execute sp_help to display the table structure and metadata.
  ```sql
  EXEC sp_help '[dbo].[Delaware_Checkbook]'
  ```

  
- **Check for Null Values**

  - Perform distinct counts of records for several key columns (e.g., FISCAL_YEAR, FISCAL_PERIOD, DEPT_NAME) to identify any null entries.No Null values are found

- **Remediate Data Issues**

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

- **Create New Columns**

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

- **Create a Season Column**

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


- **Check for Duplicates**<br>

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

- **Remove Duplicate Rows**

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
## Analysis
- **Total number of transactions:** Count of all purchase transactions within the specified timeframe
  ```sql
  SELECT
    COUNT(*) AS [Nos_Of_Transaction]
  FROM
    [dbo].[Delaware_Checkbook_Analysis] 
  ```

- **Total expenditure:** The aggregate amount spent across all transactions.
  ```sql
  SELECT
  round(SUM([MERCHANDISE_AMT]), 2) AS [Total_Expenditure]
  FROM
  [dbo].[Delaware_Checkbook_Analysis] 
 
  ```
- **Yearly and monthly expenditure reporting:** Breakdown of spending by month and year for trend identification.
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
  
- **Seasonal expenditure trends:** Analysis of spending variations across different seasons.
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

- **Departmental and divisional spend analysis:** Assessment of spending by individual departments or divisions to identify   areas of high expenditure.
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

- **Top merchants and category expenditures:** Identification of the largest suppliers and highest spending categories for    strategic insights.
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


