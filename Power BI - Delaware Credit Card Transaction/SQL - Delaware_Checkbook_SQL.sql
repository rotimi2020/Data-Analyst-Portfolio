-- View Data
SELECT
  *
FROM
  [dbo].[Delaware_Checkbook];

----------------------------------------------------
-- View Total Rows
SELECT
  COUNT(*) AS [TOTAL ROW]
FROM
  [dbo].[Delaware_Checkbook];

-----------------------------------------------------
----Table Description
EXEC sp_help '[dbo].[Delaware_Checkbook]' 
  
  ------------------------------------------------------
  --Checking For Null Values
SELECT
  DISTINCT [FISCAL_YEAR],
  COUNT(*) AS [COUNT ROWS]
FROM
  [dbo].[Delaware_Checkbook]
GROUP BY
  [FISCAL_YEAR]
ORDER BY
  [FISCAL_YEAR],
  [COUNT ROWS] ASC;
  
----------------
SELECT
  DISTINCT [FISCAL_PERIOD],
  COUNT(*) AS [COUNT ROWS]
FROM
  [dbo].[Delaware_Checkbook]
GROUP BY
  [FISCAL_PERIOD]
ORDER BY
  [FISCAL_PERIOD],
  [COUNT ROWS] ASC;
----------------

SELECT
  DISTINCT [DEPT_NAME],
  COUNT(*) AS [COUNT ROWS]
FROM
  [dbo].[Delaware_Checkbook]
GROUP BY
  [DEPT_NAME]
ORDER BY
  [DEPT_NAME],
  [COUNT ROWS] ASC;
----------------

SELECT
  DISTINCT [DIV_NAME],
  COUNT(*) AS [COUNT ROWS]
FROM
  [dbo].[Delaware_Checkbook]
GROUP BY
  [DIV_NAME]
ORDER BY
  [DIV_NAME],
  [COUNT ROWS] ASC;
  
----------------
SELECT
  DISTINCT [MERCHANT],
  COUNT(*) AS [COUNT ROWS]
FROM
  [dbo].[Delaware_Checkbook]
GROUP BY
  [MERCHANT]
ORDER BY
  [MERCHANT],
  [COUNT ROWS] ASC
  
  ----------------
SELECT
  DISTINCT [CAT_DESCR],
  COUNT(*) AS [COUNT ROWS]
FROM
  [dbo].[Delaware_Checkbook]
GROUP BY
  [CAT_DESCR]
ORDER BY
  [CAT_DESCR],
  [COUNT ROWS] ASC
  
  ----------------
SELECT
  DISTINCT [TRANS_DT],
  COUNT(*) AS [COUNT ROWS]
FROM
  [dbo].[Delaware_Checkbook]
GROUP BY
  [TRANS_DT]
ORDER BY
  [TRANS_DT],
  [COUNT ROWS] ASC
  
  ----------------
SELECT
  DISTINCT [MERCHANDISE_AMT],
  COUNT(*) AS [COUNT ROWS]
FROM
  [dbo].[Delaware_Checkbook]
GROUP BY
  [MERCHANDISE_AMT]
ORDER BY
  [MERCHANDISE_AMT],
  [COUNT ROWS] ASC 
  
  -------------------------------------------------
  -----Remove negative sign
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
  
  --Update Table
UPDATE
  [dbo].[Delaware_Checkbook]
SET
  [MERCHANDISE_AMT] = round(replace([MERCHANDISE_AMT], '-', ''), 2)
FROM
  [dbo].[Delaware_Checkbook];

-----------------------------------------------------------------
-- Create a new column : [FISCAL_PERIOD_MONTH]
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

--ALTER TABLE
ALTER TABLE
  [dbo].[Delaware_Checkbook]
ADD
  [FISCAL_PERIOD_MONTH] nvarchar(50);

--UPDATE TABLE
UPDATE
  [dbo].[Delaware_Checkbook]
SET
  [FISCAL_PERIOD_MONTH] = CASE
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
  END;

-------------------------------------------------------------
-- Create a new column : [FISCAL_PERIOD_SEASON] 
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

--ALTER TABLE
ALTER TABLE
  [dbo].[Delaware_Checkbook]
ADD
  [FISCAL_PERIOD_SEASON] nvarchar(50);

--UPDATE TABLE
UPDATE
  [dbo].[Delaware_Checkbook]
SET
  [FISCAL_PERIOD_SEASON] = CASE
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
  END;

  ----------------------------------------------------------
--Check For Duplicate
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
  
  -------------------------------------------------------------------
  ---Remove Duplicate Rows
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

----------------------Check for Presence Of Anomalies-------------------------
WITH
  Stats AS (
    SELECT
      PERCENTILE_CONT(0.25) WITHIN GROUP (
        ORDER BY
          MERCHANDISE_AMT
      ) OVER () AS Q1,
      PERCENTILE_CONT(0.75) WITHIN GROUP (
        ORDER BY
          MERCHANDISE_AMT
      ) OVER () AS Q3
    FROM
      Delaware_Checkbook
  ),
  Anomalies AS (
    SELECT
      *,
      (Q1 - 1.5 * (Q3 - Q1)) AS LowerBound,
      (Q3 + 1.5 * (Q3 - Q1)) AS UpperBound
    FROM
      Delaware_Checkbook,
      Stats
  ) -- Select anomalies for review  
SELECT
  *
FROM
  Anomalies
WHERE
  MERCHANDISE_AMT < LowerBound
  OR MERCHANDISE_AMT > UpperBound;

----------------------Removal Of Anomalies-------------------------
WITH
  Stats AS (
    SELECT
      PERCENTILE_CONT(0.25) WITHIN GROUP (
        ORDER BY
          MERCHANDISE_AMT
      ) OVER () AS Q1,
      PERCENTILE_CONT(0.75) WITHIN GROUP (
        ORDER BY
          MERCHANDISE_AMT
      ) OVER () AS Q3
    FROM
      Delaware_Checkbook
  ),
  Anomalies AS (
    SELECT
      *,
      (Q1 - 1.5 * (Q3 - Q1)) AS LowerBound,
      (Q3 + 1.5 * (Q3 - Q1)) AS UpperBound
    FROM
      Delaware_Checkbook,
      Stats
  )
DELETE FROM
  Delaware_Checkbook
WHERE
  MERCHANDISE_AMT < (
    SELECT
      MIN(LowerBound)
    FROM
      Anomalies
  )
  OR MERCHANDISE_AMT > (
    SELECT
      MAX(UpperBound)
    FROM
      Anomalies
  );


-------------------------Create New Table For Later Use (Analysis and Visualization)-------------------------------------
SELECT
  * INTO [dbo].[Delaware_Checkbook_Analysis]
FROM
  [dbo].[Delaware_Checkbook];

----------------------------Analysis 1--------------------------------
--Total Number Of Financial Transaction 
SELECT
  COUNT(*) AS [Nos_Of_Transaction]
FROM
  [dbo].[Delaware_Checkbook_Analysis] 
  
  ----------------------------Analysis 2 : Total Expenditure--------------------------------
  --Total Expenditure 
SELECT
  round(SUM([MERCHANDISE_AMT]), 2) AS [Total_Expenditure]
FROM
  [dbo].[Delaware_Checkbook_Analysis] 
  
  ----------------------------Analysis 3 : Total expenditure By FISCAL_YEAR--------------------------------
  --Yearly Expenditure 
SELECT
  [FISCAL_YEAR],
  round(SUM([MERCHANDISE_AMT]), 2) AS [Yearly_Expenditure]
FROM
  [dbo].[Delaware_Checkbook_Analysis]
GROUP BY
  [FISCAL_YEAR]
ORDER BY
  [FISCAL_YEAR] 
  
  ----------------------------Analysis 4 : Monthly Expenditure Trend--------------------------------
  --Monthly Expenditure
SELECT
  [FISCAL_PERIOD_MONTH],
  round(SUM([MERCHANDISE_AMT]), 2) AS [Monthly_Expenditure]
FROM
  [dbo].[Delaware_Checkbook_Analysis]
GROUP BY
  [FISCAL_PERIOD_MONTH]
ORDER BY
  [Monthly_Expenditure] desc 
  
  ----------------------------Analysis 5 : Season Expenditure Trend--------------------------------
  --Season Expenditure
SELECT
  [FISCAL_PERIOD_SEASON],
  round(SUM([MERCHANDISE_AMT]), 2) AS [Season_Expenditure]
FROM
  [dbo].[Delaware_Checkbook_Analysis]
GROUP BY
  [FISCAL_PERIOD_SEASON]
ORDER BY
  [Season_Expenditure] desc 
  
  ----------------------------Analysis 6 : Monthly / Yearly expenditure Trend--------------------------------
  --Y-Monthly Expenditure
SELECT
  [FISCAL_YEAR],
  [FISCAL_PERIOD_MONTH],
  round(SUM([MERCHANDISE_AMT]), 2) AS [Y - Monthly_Expenditure]
FROM
  [dbo].[Delaware_Checkbook_Analysis]
GROUP BY
  [FISCAL_YEAR],
  [FISCAL_PERIOD_MONTH]
ORDER BY
  [Y - Monthly_Expenditure] desc 
  
  ----------------------------Analysis 7 : Dept_Div Expenditure--------------------------------
  --Department and Division Expenditure
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

----------------------------Analysis 8 : Top Merchant Expenditure--------------------------------
--  Merchant Expenditure
SELECT
  MERCHANT,
  round(SUM([MERCHANDISE_AMT]), 2) AS [Top_Merchant_Expenditure]
FROM
  [dbo].[Delaware_Checkbook_Analysis]
GROUP BY
  MERCHANT
ORDER BY
  [Top_Merchant_Expenditure] desc 
  
  ----------------------------Analysis 9 : CAT_DESCR Expenditure--------------------------------
  --  CAT_DESCR Expenditure
SELECT
  [CAT_DESCR],
  round(SUM([MERCHANDISE_AMT]), 2) AS [CAT_DESCR_Expenditure]
FROM
  [dbo].[Delaware_Checkbook_Analysis]
GROUP BY
  [CAT_DESCR]
ORDER BY
  [CAT_DESCR_Expenditure] desc
