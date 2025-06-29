--********************* View the Dataset ********************

select
  *
from
  store;

select
  *
from
  train;

select
  *
from
  test;

--********************* create a copy *********************

select
  * into train_cleaned
from
  train;

select
  * into test_cleaned
from
  test;

select
  * into store_cleaned
from
  store;

--************************ TOTAL ROWS ***********************

--Nos Of Rows For Table Store
select
  count(*) As Total_Row_store
FROM
  store;

---Nos Of Rows For Table Train
select
  count(*) AS Total_Row_train
FROM
  train;

---Nos Of Rows For Table Test
select
  count(*) AS Total_Row_test
FROM
  test;

--********************* CHECK FOR NULL ENTRIES : TABLE - STORE *************************
select
  SUM(
    CASE
      WHEN [Store] IS NULL THEN 1
      ELSE 0
    END
  ) AS Store_NULL,
  SUM(
    CASE
      WHEN [StoreType] IS NULL THEN 1
      ELSE 0
    END
  ) AS StoreType_NULL,
  SUM(
    CASE
      WHEN [Assortment] IS NULL THEN 1
      ELSE 0
    END
  ) AS Assortment_NULL,
  SUM(
    CASE
      WHEN [CompetitionDistance] IS NULL THEN 1
      ELSE 0
    END
  ) AS CompetitionDistance_Percent_NULL,
  SUM(
    CASE
      WHEN [CompetitionOpenSinceMonth] IS NULL THEN 1
      ELSE 0
    END
  ) AS CompetitionOpenSinceMonth_NULL,
  SUM(
    CASE
      WHEN [CompetitionOpenSinceYear] IS NULL THEN 1
      ELSE 0
    END
  ) AS CompetitionOpenSinceYear_NULL,
  SUM(
    CASE
      WHEN [Promo2] IS NULL THEN 1
      ELSE 0
    END
  ) AS Promo2_NULL,
  SUM(
    CASE
      WHEN [Promo2SinceWeek] IS NULL THEN 1
      ELSE 0
    END
  ) AS Promo2SinceWeek_NULL,
  SUM(
    CASE
      WHEN [Promo2SinceYear] IS NULL THEN 1
      ELSE 0
    END
  ) AS Promo2SinceYear_NULL,
  SUM(
    CASE
      WHEN [PromoInterval] IS NULL THEN 1
      ELSE 0
    END
  ) AS PromoInterval_NULL
from
  store;

select
  ROUND(
    SUM(
      CASE
        WHEN [Store] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS Store_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [StoreType] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS StoreType_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Assortment] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS Assortment_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [CompetitionDistance] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS CompetitionDistance_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [CompetitionOpenSinceMonth] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS CompetitionOpenSinceMonth_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [CompetitionOpenSinceYear] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS CompetitionOpenSinceYear_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Promo2] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    3
  ) AS Promo2_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Promo2SinceWeek] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    3
  ) AS Promo2SinceWeek_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Promo2SinceYear] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    3
  ) AS Promo2SinceYear_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [PromoInterval] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    1
  ) AS PromoInterval_Percent_NULL
from
  store;

--********************* CHECK FOR NULL ENTRIES : TABLE - TRAIN *************************
select
  SUM(
    CASE
      WHEN [Store] IS NULL THEN 1
      ELSE 0
    END
  ) AS Store_NULL,
  SUM(
    CASE
      WHEN [DayOfWeek] IS NULL THEN 1
      ELSE 0
    END
  ) AS DayOfWeek_NULL,
  SUM(
    CASE
      WHEN [Date] IS NULL THEN 1
      ELSE 0
    END
  ) AS Date_NULL,
  SUM(
    CASE
      WHEN Sales IS NULL THEN 1
      ELSE 0
    END
  ) AS Sales_NULL,
  SUM(
    CASE
      WHEN [Customers] IS NULL THEN 1
      ELSE 0
    END
  ) AS Customers_NULL,
  SUM(
    CASE
      WHEN [Open] IS NULL THEN 1
      ELSE 0
    END
  ) AS Open_NULL,
  SUM(
    CASE
      WHEN [Promo] IS NULL THEN 1
      ELSE 0
    END
  ) AS Promo_NULL,
  SUM(
    CASE
      WHEN [StateHoliday] IS NULL THEN 1
      ELSE 0
    END
  ) AS StateHoliday_NULL,
  SUM(
    CASE
      WHEN [SchoolHoliday] IS NULL THEN 1
      ELSE 0
    END
  ) AS SchoolHolidayt_NULL
from
  train;

select
  ROUND(
    SUM(
      CASE
        WHEN [Store] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS Store_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [DayOfWeek] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS DayOfWeek_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Date] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS Date_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN Sales IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS Sales_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Customers] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS Customers_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Open] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS Open_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Promo] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    3
  ) AS Promo_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [StateHoliday] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    3
  ) AS StateHoliday_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [SchoolHoliday] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    3
  ) AS SchoolHoliday_Percent_NULL
from
  train;

--********************* CHECK FOR NULL ENTRIES : TABLE - TEST *************************
select
  SUM(
    CASE
      WHEN [Id] IS NULL THEN 1
      ELSE 0
    END
  ) AS Id_NULL,
  SUM(
    CASE
      WHEN [Store] IS NULL THEN 1
      ELSE 0
    END
  ) AS Store_NULL,
  SUM(
    CASE
      WHEN [DayOfWeek] IS NULL THEN 1
      ELSE 0
    END
  ) AS DayOfWeekt_NULL,
  SUM(
    CASE
      WHEN [Date] IS NULL THEN 1
      ELSE 0
    END
  ) AS Date_NULL,
  SUM(
    CASE
      WHEN [Open] IS NULL THEN 1
      ELSE 0
    END
  ) AS Open_NULL,
  SUM(
    CASE
      WHEN [Promo] IS NULL THEN 1
      ELSE 0
    END
  ) AS Promo_NULL,
  SUM(
    CASE
      WHEN [StateHoliday] IS NULL THEN 1
      ELSE 0
    END
  ) AS StateHoliday_NULL,
  SUM(
    CASE
      WHEN [SchoolHoliday] IS NULL THEN 1
      ELSE 0
    END
  ) AS SchoolHoliday_NULL
from
  test;

select
  ROUND(
    SUM(
      CASE
        WHEN [Id] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS Id_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Store] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS Store_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [DayOfWeek] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS DayOfWeek_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Date] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS Date_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Open] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    5
  ) AS Open_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [Promo] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    3
  ) AS Promo_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [StateHoliday] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    3
  ) AS StateHoliday_Percent_NULL,
  ROUND(
    SUM(
      CASE
        WHEN [SchoolHoliday] IS NULL THEN 1
        ELSE 0
      END
    ) * 100.0 / COUNT(*),
    3
  ) AS SchoolHoliday_Percent_NULL
from
  test;

--********************* Fill Missing Values *************************
UPDATE
  store_cleaned
SET
  [CompetitionDistance] = (
    SELECT
      AVG([CompetitionDistance])
    FROM
      store
  )
WHERE
  [CompetitionDistance] IS NULL;

UPDATE
  store_cleaned
SET
  [CompetitionOpenSinceMonth] = 0
WHERE
  [CompetitionOpenSinceMonth] IS NULL;

UPDATE
  store_cleaned
SET
  [CompetitionOpenSinceYear] = 0
WHERE
  [CompetitionOpenSinceYear] IS NULL;

UPDATE
  store_cleaned
SET
  [Promo2SinceWeek] = 0
WHERE
  [Promo2SinceWeek] IS NULL;

UPDATE
  store_cleaned
SET
  [Promo2SinceYear] = 0
WHERE
  [Promo2SinceYear] IS NULL;

UPDATE
  test_cleaned
SET
  [Open] = 1
WHERE
  [Open] IS NULL;

UPDATE
  train_cleaned
SET
  [StateHoliday] = 1
WHERE
  [StateHoliday] = 'a';

UPDATE
  train_cleaned
SET
  [StateHoliday] = 1
WHERE
  [StateHoliday] = 'b';

UPDATE
  train_cleaned
SET
  [StateHoliday] = 1
WHERE
  [StateHoliday] = 'c';

UPDATE
  test_cleaned
SET
  [StateHoliday] = '1'
WHERE
  [StateHoliday] = 'a';

UPDATE
  store_cleaned
SET
  [PromoInterval] = 'period 0'
WHERE
  [PromoInterval] is null;

--********************* CHANGE TYPE *************************
alter table
  [train_cleaned]
alter column
  [Store] int;

alter table
  [train_cleaned]
alter column
  [DayOfWeek] int;

alter table
  [train_cleaned]
alter column
  [Sales] int;

alter table
  [train_cleaned]
alter column
  [Customers] int;

alter table
  [train_cleaned]
alter column
  [Open] int;

alter table
  [train_cleaned]
alter column
  [Promo] int;

alter table
  [train_cleaned]
alter column
  [StateHoliday] int;

alter table
  [train_cleaned]
alter column
  [SchoolHoliday] int;

alter table
  [test_cleaned]
alter column
  [Id] int;

alter table
  [test_cleaned]
alter column
  [Store] int;

alter table
  [test_cleaned]
alter column
  [Open] int;

alter table
  [test_cleaned]
alter column
  [Promo] int;

alter table
  [test_cleaned]
alter column
  [SchoolHoliday] int;

alter table
  [store_cleaned]
alter column
  [Store] int;

alter table
  [store_cleaned]
alter column
  [CompetitionOpenSinceMonth] int;

alter table
  [store_cleaned]
alter column
  [CompetitionOpenSinceMonth] int;

alter table
  [store_cleaned]
alter column
  [Promo2] int;

alter table
  [store_cleaned]
alter column
  [Promo2SinceWeek] int;

alter table
  [store_cleaned]
alter column
  [Promo2SinceYear] int;

alter table
  [test_cleaned]
alter column
  [StateHoliday] int;

--********************* Create a new column for StoreType and change type  *************************
SELECT
  DISTINCT [StoreType],
  CASE
    WHEN [StoreType] = 'a' THEN 1
    WHEN [StoreType] = 'b' THEN 2
    WHEN [StoreType] = 'c' THEN 3
    WHEN [StoreType] = 'd' THEN 4
    ELSE [StoreType]
  END AS [StoreType]
FROM
  [dbo].[store];

alter table
  [store_cleaned]
add
  [StoreType_Int] int;

UPDATE
  [store_cleaned]
SET
  [StoreType_Int] = CASE
    WHEN [StoreType] = 'a' THEN 1
    WHEN [StoreType] = 'b' THEN 2
    WHEN [StoreType] = 'c' THEN 3
    WHEN [StoreType] = 'd' THEN 4
    ELSE [StoreType]
  END;

--********************* Create a new column for [Assortment] and change type  *************************
SELECT
  DISTINCT [Assortment],
  CASE
    WHEN [Assortment] = 'a' THEN 1
    WHEN [Assortment] = 'b' THEN 2
    WHEN [Assortment] = 'c' THEN 3
    ELSE [Assortment]
  END AS [Assortment]
FROM
  [dbo].[store];

alter table
  [store_cleaned]
add
  [Assortment_Int] int;

UPDATE
  [store_cleaned]
SET
  [Assortment_Int] = CASE
    WHEN [Assortment] = 'a' THEN 1
    WHEN [Assortment] = 'b' THEN 2
    WHEN [Assortment] = 'c' THEN 3
    ELSE Assortment
  END;

--********************* Replace Value *************************
UPDATE
  [store_cleaned]
SET
  [PromoInterval] = CASE
    WHEN [PromoInterval] = 'Jan,Apr,Jul,Oct' THEN 'Period 1'
    WHEN [PromoInterval] = 'Feb,May,Aug,Nov' THEN 'Period 2'
    WHEN [PromoInterval] = 'Mar,Jun,Sept,Dec' THEN 'Period 3'
    ELSE [PromoInterval]
  END;

--********************* Create a new column for [PromoInterval] and change type  *************************
SELECT
  DISTINCT [PromoInterval],
  CASE
    WHEN [PromoInterval] = 'period 0' THEN 0
    WHEN [PromoInterval] = 'Period 1' THEN 1
    WHEN [PromoInterval] = 'Period 2' THEN 2
    WHEN [PromoInterval] = 'Period 3' THEN 3
    ELSE [PromoInterval]
  END AS [PromoInterval]
FROM
  [dbo].[store_cleaned];

alter table
  [store_cleaned]
add
  [PromoInterval_int] int;

UPDATE
  [store_cleaned]
SET
  [PromoInterval_int] = CASE
    WHEN [PromoInterval] = 'period 0' THEN 0
    WHEN [PromoInterval] = 'Period 1' THEN 1
    WHEN [PromoInterval] = 'Period 2' THEN 2
    WHEN [PromoInterval] = 'Period 3' THEN 3
    ELSE [PromoInterval]
  END;

--********************* Change Datetime *************************
alter table
  [dbo].[train_cleaned]
alter column
  Date date;

alter table
  [dbo].[test_cleaned]
alter column
  Date date;

--********************* REMOVE DUPLICATE*************************

/* Check for duplicate */
with
  duplicate_value as (
    select
      *,
      ROW_NUMBER() OVER (
        PARTITION BY [DayOfWeek],
        [Date],
        [Sales],
        [Customers],
        [Open],
        [Promo],
        [StateHoliday],
        [SchoolHoliday]
        order by
          [Store]
      ) AS rowid
    from
      train
  )
select
  *
from
  duplicate_value
where
  rowid > 1

/* Remove Duplicate */
with
  duplicate_value as (
    select
      *,
      ROW_NUMBER() OVER (
        PARTITION BY [DayOfWeek],
        [Date],
        [Sales],
        [Customers],
        [Open],
        [Promo],
        [StateHoliday],
        [SchoolHoliday]
        order by
          [Store]
      ) AS rowid
    from
      train_cleaned
  )
delete from
  duplicate_value
where
  rowid > 1 
  
  --********************* Handle Outliers *************************

  ----------------------Check for Presence Of Anomalies-------------------------
WITH
  Stats AS (
    SELECT
      PERCENTILE_CONT(0.25) WITHIN GROUP (
        ORDER BY
          [Sales]
      ) OVER () AS Q1,
      PERCENTILE_CONT(0.75) WITHIN GROUP (
        ORDER BY
          [Sales]
      ) OVER () AS Q3
    FROM
      [train]
  ),
  Anomalies AS (
    SELECT
      *,
      (Q1 - 1.5 * (Q3 - Q1)) AS LowerBound,
      (Q3 + 1.5 * (Q3 - Q1)) AS UpperBound
    FROM
      [train],
      Stats
  ) -- Select anomalies for review  
SELECT
  *
FROM
  Anomalies
WHERE
  [Sales] < LowerBound
  OR [Sales] > UpperBound;

--*************************Removal Of Anomalies***************************
WITH
  Stats AS (
    SELECT
      PERCENTILE_CONT(0.25) WITHIN GROUP (
        ORDER BY
          [Sales]
      ) OVER () AS Q1,
      PERCENTILE_CONT(0.75) WITHIN GROUP (
        ORDER BY
          [Sales]
      ) OVER () AS Q3
    FROM
      [train_cleaned]
  ),
  Anomalies AS (
    SELECT
      *,
      (Q1 - 1.5 * (Q3 - Q1)) AS LowerBound,
      (Q3 + 1.5 * (Q3 - Q1)) AS UpperBound
    FROM
      [train_cleaned],
      Stats
  )
DELETE FROM
  [train_cleaned]
WHERE
  [Sales] < (
    SELECT
      MIN(LowerBound)
    FROM
      Anomalies
  )
  OR [Sales] > (
    SELECT
      MAX(UpperBound)
    FROM
      Anomalies
  );

--************************* Merge Table ***************************
With
  Rossmann_sale as (
    SELECT
      t.*,
      s.CompetitionDistance,
      s.Promo2,
      s.StoreType,
      s.Assortment,
      s.PromoInterval,
      s.StoreType_Int,
      s.Assortment_Int,
      s.CompetitionOpenSinceMonth,
      s.CompetitionOpenSinceYear,
      s.Promo2SinceWeek,
      s.Promo2SinceYear,
      s.PromoInterval_int
    FROM
      train_cleaned t
      LEFT JOIN store_cleaned s ON t.Store = s.Store
  )
select
  * into Rossmann_sale
from
  Rossmann_sale
With
  Rossmann_test as (
    SELECT
      t.*,
      s.CompetitionDistance,
      s.Promo2,
      s.StoreType,
      s.Assortment,
      s.PromoInterval,
      s.StoreType_Int,
      s.Assortment_Int,
      s.CompetitionOpenSinceMonth,
      s.CompetitionOpenSinceYear,
      s.Promo2SinceWeek,
      s.Promo2SinceYear,
      s.PromoInterval_int
    FROM
      test_cleaned t
      LEFT JOIN store_cleaned s ON t.Store = s.Store
  )
select
  * into Rossmann_test
from
  Rossmann_test 
  
  
  --********************************* Analysis ***************************************

  --******** Daily Sales Trend *********
select
  Date,
  sum(Sales) AS Total_sales
from
  Rossmann_sale
group by
  Date
order by
  Date 
  
  --******** Yearly Sales Trend **********
select
  year(Date) As Year,
  sum(Sales) AS Total_sales
from
  Rossmann_sale
group by
  year(Date) 
  
  --******** Monthly Sales Trend *********
select
  DATENAME(M, Date) AS Month,
  sum(Sales) AS Total_sale
from
  Rossmann_sale
group by
  DATENAME(M, Date)
order by
  Total_sale DESC 
  
  --******** Total Sales by Week *********
select
  DATENAME(W, Date) AS Week,
  sum(Sales) AS Total_sale
from
  Rossmann_sale
group by
  DATENAME(W, Date)
order by
  Total_sale DESC 
  
  --********Total Yearly Customer  ********
select
  year(Date) as Year,
  sum(Customers) as [Total Customer]
from
  Rossmann_sale
group by
  year(Date)
order by
  year(Date),
  [Total Customer]