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

  
- **Check for Null Values**

  - Perform distinct counts of records for several key columns (e.g., FISCAL_YEAR, FISCAL_PERIOD, DEPT_NAME) to identify any null entries.

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

- **Various Analyses**
   - Perform analyses to extract insights, such as:
    - Total number of transactions.
    - Total expenditure.
    - Yearly and monthly expenditure reporting.
    - Seasonal expenditure trends.
    - Departmental and divisional spend analysis.
    - Top merchants and category expenditures.
