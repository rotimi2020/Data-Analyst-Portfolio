# Data cleaning and visualization : Using SQL and Power BI

## Project Overview
The "State of Delaware Checkbook" project is an extensive analysis of the state’s credit card transactions. The goal is to derive meaningful insights from the data to enhance financial transparency and accountability.

## Objectives 
The primary objective is to improve financial transparency and provide stakeholders with a comprehensive view of the state’s expenditures.

## Problem Definition
The problem is to analyze a large dataset of credit card transactions to identify spending patterns and provide insights for better financial management.

## Problem Statement
The State of Delaware Checkbook dataset contains financial transaction data for various departments and divisions. This dataset includes key details such as the fiscal year, fiscal period, department and division names, merchant details, transaction dates, category descriptions, and transaction amounts. The primary goal is to analyze this dataset to gain insights into financial transactions, identify spending patterns, and generate meaningful visualizations for better decision-making.


## Dataset
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
  
