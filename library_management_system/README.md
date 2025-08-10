# Library Data Analytics with SQL, Python & Power BI

## Project Highlights
- **30+ SQL queries** across beginner, intermediate, and advanced levels  
- **5 Power BI dashboards** with DAX measures for actionable insights  
- End-to-end pipeline: **SQL extraction → Python cleaning → Power BI visualization**  
- Real-world library operations simulated (books, members, issues, fines, suppliers)  
- Demonstrates **joins, CTEs, window functions, recursive queries**  
- Professional documentation: ERD, data dictionary, and modular scripts  

---

This project showcases the use of **SQL** to manage and analyze data within a Library Management System (LMS). It focuses on extracting meaningful insights from various tables such as books, members, book issues, fines, and suppliers.

Key SQL operations include:

- Complex joins and subqueries  
- Aggregations and metrics for decision-making  
- Answering business questions with structured queries

The SQL scripts are modular, well-organized, and aligned with real-world library operations—providing a solid foundation for further analysis using Python and Power BI. This project highlights how relational databases can power efficient and insightful library data management.

---

## Project Directory Structure

| Folder / File                                                  | Description                                              |
| -------------------------------------------------------------- | -------------------------------------------------------- |
| **`data/`**                                                    | Contains the final merged and cleaned dataset used for Power BI |
| ├── `README.md`                                                | Overview of datasets used in the project                 |
| └── `Lms_Analysis.csv`                                         | Main cleaned dataset with all tables merged              |
| **`dax/`**                                                     | DAX measures and calculated columns used in Power BI     |
| ├── `README.md`                                                | Overview of DAX KPIs and logic                           |
| └── `dax_formulas.txt`                                         | Full list of DAX formulas used in the dashboard          |
| **`er_diagram/`**                                              | Entity Relationship Diagram for LMS data model           |
| ├── `README.md`                                                | Explanation of ER diagram design                         |
| └── `entity_relationship_diagram.pdf`                          | PDF of ER diagram showing data relationships             |
| **`notebooks/`**                                               | Jupyter notebooks for data cleaning, exploration, and analysis |
| ├── `README.md`                                                | Purpose and summary of each notebook                     |
| ├── `book_details.ipynb`                                       | Book metadata analysis                                   |
| ├── `book_issue.ipynb`                                         | Borrowing and return behavior                            |
| ├── `fine_details.ipynb`                                       | Fine distribution and delay patterns                     |
| ├── `lms_final_analysis.ipynb`                                 | Combined notebook with final insights                    |
| ├── `lms_members.ipynb`                                        | Member segmentation and trends                           |
| └── `suppliers_details.ipynb`                                  | Supplier contribution and trends                         |
| **`powerbi/`**                                                 | Power BI dashboards and reports                          |
| ├── `README.md`                                                | Overview of Power BI report contents                     |
| └── `library_management_system.pbix`                           | Interactive LMS Power BI dashboard                       |
| **`report_screenshots/`**                                      | PNG images of Power BI report visuals                    |
| ├── `README.md`                                                | Description of the included dashboard screenshots        |
| ├── `fine_and_return_analysis_reports.PNG`                     | Fines and return behavior dashboard                      |
| ├── `library_management_dashboard_reports.PNG`                 | General LMS overview dashboard                           |
| ├── `member_insights_reports.PNG`                              | Member activity and segmentation visuals                 |
| ├── `supplier_overview_reports.PNG`                            | Supplier stats dashboard                                 |
| └── `top_performing_book_reports.PNG`                          | Top books and high-value category insights               |
| **`reports/`**                                                 | Final PDF exports of notebooks and dashboard summaries   |
| ├── `README.md`                                                | Overview of reports and export files                     |
| └── `lms_analysis_reports.pdf`                                 | Compiled analysis from Jupyter in PDF format             |
| **`sql/`**                                                     | SQL scripts used for data extraction and transformation  |
| ├── `README.md`                                                | Guide to SQL file usage and query structure              |
| └── `library_management_system.sql`                            | Full SQL query set (basic to advanced)                   |
| **`requirements.txt`**                                         | Python packages required to run Jupyter notebooks        |


---

## 📚 Table of Contents
- [📌 Project Overview](#project-overview)
- [📁 Project Directory Structure](#project-directory-structure)
- [🎯 Objectives](#objectives)
- [❓ Business Questions](#business-questions)
- [🧩 Problem Statement](#problem-statement)
- [📂 Dataset](#dataset)
  - [📂 Data Dictionary](#data-dictionary)
- [🧹 Data Processing & Cleaning](#data-processing--cleaning)
- [🛠️ Tools & Technologies](#tools--technologies)
- [🧠 Skills Used](#skills-used)
- [🔍 SQL Overview](#sql-overview)
  - [🔍 Summary of SQL Sections](#summary-of-sql-sections)
- [🐍 Python Overview](#python-overview)
  - [🐍 Python Data Cleaning and Preparation](#python-data-cleaning-and-preparation)
  - [🐍 Notebooks and Resources](#notebooks-and-resources)
- [📊 Power BI Dashboard](#power-bi-dashboard)
  - [📊 Page Details & Visuals](#page-details--visuals)
  - [📊 Insights & Key Findings](#insights--key-findings)
  - [📊 Business Recommendations](#business-recommendations)
  - [📊 Visual Types Summary](#visual-types-summary)
  - [📊 LMS Power BI Report Previews](#lms-power-bi-report-previews)
  - [📊 Download the Full Power BI Report](#download-the-full-power-bi-report)
- [🧮 DAX Overview](#dax-overview)
  - [🧮 Key DAX](#key-dax)
  - [🧮 Key Calculated Columns](#key-calculated-columns)
- [📘 Visuals & Dashboard Summary](#visuals--dashboard-summary)
- [📘 Installation](#installation)
- [🙋‍♂️ Author](#author)

---

## Project Overview
This project explores the design and analysis of a **Library Management System (LMS)** using SQL. It's based on a real-world scenario where a local library manager provided access to their database and shared business questions ranging from basic lookups to complex insights.

---

## Objectives
- **Extract Meaningful Insights**  
  Write SQL queries to retrieve valuable data from the LMS database
- **Answer Real Business Questions**  
  Tackle specific problems raised by the library owner
- **Apply Advanced SQL Skills**  
  Use joins, CTEs, subqueries, and window functions
- **Deliver Actionable Reports**  
  Summarize key findings to support data-driven decisions

---

## Business Questions
1. **How do borrowing trends change over time?**  
   Understand daily/seasonal borrowing patterns
2. **Which book categories hold the most value?**  
   Identify high-value books based on usage and cost
3. **Who are the most active members?**  
   Explore member behavior by type and region
4. **What's the relationship between fines and borrowing habits?**  
   Analyze fine categories and delay patterns
5. **Which books are borrowed most frequently?**  
   Measure popularity and link to supplier performance

---

## Problem Statement
Run SQL queries to explore and analyze data from an LMS database, focusing on book borrowing trends, member engagement, fine history, and supplier performance.

---

## Dataset
The dataset originates from **SQL**, where initial analysis was performed. It was then exported to **CSV** for additional analysis, cleaning, and merging.

Core tables include:
- 📘 **Book Details**: Book ID, title, author, category, price
- 👤 **Members**: Member ID, name, contact info, registration date
- 💰 **Fine Details**: Member fines based on late returns
- 🚚 **Suppliers**: Supplier ID, name, contact details
- 📦 **Book Issue**: Borrowings with issue/return dates

[**Download the dataset (.csv) here**](https://github.com/rotimi2020/Data-Analyst-Portfolio/tree/main/library_management_system/data) 

> ⚠️ **Dataset Origin**: This proprietary dataset was shared by an industry data analyst who discovered it in their professional archive.  
> It was provided **exclusively for skill development purposes** to:
> - Practice real-world data processing techniques  
> - Develop analytical solutions for library operations  
> - Build portfolio projects demonstrating full analytics workflows  
>  
> The dataset simulates authentic library management scenarios but is **not publicly available for download** outside this repository.

---
## Data Dictionary 

The following tables and columns describe the **merged and cleaned dataset** used for analysis, visualization, and reporting in the LMS project.

---

## 1. **Book Details (`books`)**
| Column Name       | Data Type    | Description |
|-------------------|--------------|-------------|
| `BookID`          | INT          | Unique identifier for each book. |
| `Title`           | VARCHAR      | Title of the book. |
| `Author`          | VARCHAR      | Author's full name. |
| `Category`        | VARCHAR      | Genre or category of the book (e.g., Fiction, Science). |
| `Price`           | DECIMAL(10,2)| Price of the book in local currency. |
| `SupplierID`      | INT          | Foreign key referencing the supplier who provided the book. |
| `BookCode`        | VARCHAR      | Unique code or ISBN assigned to the book. |

---

## 2. **Members (`members`)**
| Column Name       | Data Type    | Description |
|-------------------|--------------|-------------|
| `MemberID`        | INT          | Unique identifier for each library member. |
| `MemberName`      | VARCHAR      | Full name of the member. |
| `ContactNumber`   | VARCHAR      | Member's phone number. |
| `Email`           | VARCHAR      | Member's email address. |
| `RegistrationDate`| DATE         | Date when the member registered. |
| `MembershipType`  | VARCHAR      | Type of membership (e.g., Regular, Premium). |

---

## 3. **Book Issues (`book_issues`)**
| Column Name       | Data Type    | Description |
|-------------------|--------------|-------------|
| `IssueID`         | INT          | Unique identifier for each book issue transaction. |
| `MemberID`        | INT          | Foreign key referencing the borrowing member. |
| `BookID`          | INT          | Foreign key referencing the borrowed book. |
| `IssueDate`       | DATE         | Date when the book was issued. |
| `ReturnDate`      | DATE         | Expected return date of the book. |
| `ActualReturnDate`| DATE         | Actual date when the book was returned. |
| `DaysDelayed`     | INT          | Number of days delayed beyond the expected return date (0 if returned on time). |

---

## 4. **Fine Details (`fines`)**
| Column Name       | Data Type    | Description |
|-------------------|--------------|-------------|
| `FineID`          | INT          | Unique identifier for each fine transaction. |
| `MemberID`        | INT          | Foreign key referencing the fined member. |
| `BookID`          | INT          | Foreign key referencing the book that incurred the fine. |
| `DaysDelayed`     | INT          | Number of days the book was returned late. |
| `FineAmount`      | DECIMAL(10,2)| Amount charged as a fine. |
| `FineCategory`    | VARCHAR      | Categorization of the fine (e.g., Low, Medium, High). |

---

## 5. **Suppliers (`suppliers`)**
| Column Name       | Data Type    | Description |
|-------------------|--------------|-------------|
| `SupplierID`      | INT          | Unique identifier for each supplier. |
| `SupplierName`    | VARCHAR      | Name of the supplier. |
| `ContactNumber`   | VARCHAR      | Supplier's phone number. |
| `Email`           | VARCHAR      | Supplier's email address. |
| `Address`         | VARCHAR      | Physical address of the supplier. |
| `City`            | VARCHAR      | City where the supplier is located. |
| `Country`         | VARCHAR      | Country of the supplier. |

---

## 6. **Calculated Fields (DAX / Derived Columns)**
These columns are **calculated in Power BI** or during Python preprocessing:

| Column Name        | Data Type    | Description |
|--------------------|--------------|-------------|
| `DelayedStatus`    | VARCHAR      | Indicates whether a book was returned **On Time** or **Late**. |
| `MonthIssued`      | VARCHAR      | Month name extracted from `IssueDate`. |
| `YearIssued`       | INT          | Year extracted from `IssueDate`. |
| `TotalPriceOfBook` | DECIMAL(10,2)| Total price for a given book category or supplier, used for KPI calculations. |

---

**Note:**  
- All **foreign keys** (`MemberID`, `BookID`, `SupplierID`) establish relationships between tables in the LMS data model.  
- Dates follow the `YYYY-MM-DD` format.  
- Prices and fine amounts are stored in **decimal format** to maintain currency precision.



---

## Data Processing & Cleaning
- ✅ **Handled Missing Values** - Replaced missing entries
- ✅ **Standardized Data Types** - Converted to proper datetime format
- ✅ **Feature Engineering**:
  - Merged all source tables into Lms_Analysis.csv
  - Created new calculated columns and measures to support analysis

---

### Tools & Technologies
- **SQL** - Joining tables and generating metrics
- **Python** - Pandas for data transformation
- **Power BI** - Dashboards with DAX measures
- **Jupyter Notebook** - Documentation and transformation

---

## Skills Used
- SQL (JOINs, GROUP BY, CTEs, Window Functions)
- Data Cleaning & Exploration
- Logical Query Building
- Database Relationships & Keys
- Business Insight Communication
- Git & GitHub Version Control

---

## SQL Overview
This SQL script is a structured collection of queries for analyzing library data, organized into **Basic**, **Intermediate**, and **Advanced** sections.

### SQL Queries
#### **Basic Queries (1-10)**

**--------------------------------*Basic Queries (1-10)*-------------------------------------**

- **QUESTIONS 1 :** Write a query to fetch all book titles and their corresponding author names. 
```sql
SELECT
  [BOOK_TITLE],
  ([AUTHOR])
FROM
  [dbo].[LMS_BOOK_DETAILS];
```

- **QUESTIONS 2 :** Write a query to find all books published after the year 2015. 
```sql
SELECT
  *
FROM
  [dbo].[LMS_BOOK_DETAILS]
WHERE
  YEAR([PUBLISH_DATE]) > 2015;
```

- **QUESTIONS 3 :** Write a query to list all members sorted by their registration date in descending order. 
```sql
SELECT
  *
FROM
  [dbo].[LMS_MEMBERS]
ORDER BY
  [DATE_REGISTER] DESC;
```

- **QUESTIONS 4 :** Write a query to calculate the total number of books in the library. 
```sql
SELECT
  COUNT(*) AS TOTAL_NUMBER_OF_BOOK
FROM
  [dbo].[LMS_BOOK_DETAILS];
```

- **QUESTIONS 5 :** Write a query to display all book titles and their categories.
```sql
SELECT
  [BOOK_TITLE],
  [CATEGORY]
FROM
  [dbo].[LMS_BOOK_DETAILS]
ORDER BY
  [CATEGORY];

```

- **QUESTION 6 :** Write a query to find the details of a book with the title "Data Science for Beginners." 
```sql
SELECT
  *
FROM
  [dbo].[LMS_BOOK_DETAILS]
WHERE
  [BOOK_TITLE] = 'Data Science for Beginners';
```

- **QUESTION 7 :** Write a query to fetch all members who registered in the last 6 months. 
```sql
SELECT
  *
FROM
  [dbo].[LMS_MEMBERS]
WHERE
  [DATE_REGISTER] >= DATEADD(MONTH, -6, GETDATE());

--------
 

- **QUESTION 8 :** Write a query to count the number of distinct authors in the library. 
```sql  
SELECT
  COUNT(DISTINCT [AUTHOR]) AS DISTINCT_AUTHOR_COUNT
FROM
  [dbo].[LMS_BOOK_DETAILS];

```

- **QUESTION 9 :** Write a query to list all books priced above 1000 INR. 
```sql
SELECT
  *
FROM
  [dbo].[LMS_BOOK_DETAILS]
WHERE
  [PRICE] > 1000;
```

- **QUESTION 10 :** Write a query to display member names and the total fine amount they owe. 
```sql
WITH Fine_CTE AS (
    SELECT
        A.MEMBER_ID,
        C.MEMBER_NAME,
        B.FINE_AMOUNT
    FROM
        [dbo].[LMS_BOOK_ISSUE] A
        LEFT JOIN [dbo].[LMS_FINE_DETAILS] B ON A.FINE_RANGE = B.FINE_RANGE
        LEFT JOIN [dbo].[LMS_MEMBERS] C ON A.MEMBER_ID = C.MEMBER_ID
)
SELECT
    MEMBER_NAME,
    SUM(FINE_AMOUNT) AS TOTAL_FINE_MONEY
FROM Fine_CTE
GROUP BY MEMBER_NAME;

```



### **Intermediate Queries (11–20)**  
[Click to Expand...]
<details>
<summary>View Queries</summary>

**--------------------------------*Intermediate Queries (11-20)*-------------------------------------**
- **QUESTION 11 :** Write a query to display book titles along with their supplier names. 
```sql
SELECT
  A.BOOK_TITLE,
  B.SUPPLIER_NAME
FROM
  [dbo].[LMS_BOOK_DETAILS] A
  LEFT JOIN [dbo].[LMS_SUPPLIERS_DETAILS] B ON A.SUPPLIER_ID = B.SUPPLIER_ID
ORDER BY
  B.SUPPLIER_NAME;

```

- **QUESTION 12 :** Write a query to calculate the total number of books issued per member. 
```sql
SELECT
  A.MEMBER_ID AS [Member id],
  B.MEMBER_NAME AS [Member Name],
  COUNT(*) AS [Total books]
FROM
  [dbo].[LMS_BOOK_ISSUE] A
  LEFT JOIN [dbo].[LMS_MEMBERS] B ON A.[MEMBER_ID] = B.[MEMBER_ID]
GROUP BY
  A.MEMBER_ID,
  B.MEMBER_NAME;
```

- **QUESTION 13 :** Write a query to find books where the price is between 500 and 1000. 
```sql
SELECT
  *
FROM
  [dbo].[LMS_BOOK_DETAILS]
WHERE
  [PRICE] BETWEEN 500 AND 1000;
```

- **QUESTION 14 :** Write a query to group books by category and calculate the total number of books in each category. 
```sql
SELECT
  CATEGORY AS [Category],
  COUNT(*) AS [Total Books]
FROM
  [dbo].[LMS_BOOK_DETAILS]
GROUP BY
  CATEGORY;

```

- **QUESTION 15 :** Write a query to find suppliers who have supplied more than 20 books. 
```sql
SELECT
  B.SUPPLIER_NAME AS [Supplier Name],
  count(B.SUPPLIER_NAME) AS [Number Of Books]
FROM
  [dbo].[LMS_BOOK_DETAILS] A
  left join [LMS_SUPPLIERS_DETAILS] B on A.SUPPLIER_ID = B.SUPPLIER_ID
group by
  B.SUPPLIER_NAME
having
  count(B.SUPPLIER_NAME) > 20
```

- **QUESTION 16 :** Write a query to fetch the details of the book with the highest price. 
```sql  
SELECT
  TOP 1 *
FROM
  [dbo].[LMS_BOOK_DETAILS]
order by
  PRICE desc;
```

- **QUESTION 17 :** Write a query to list all members who have issued at least one book. 
```sql
SELECT
  B.MEMBER_NAME AS [Member Name],
  count(B.MEMBER_NAME) AS [Number Of Books Issued]
FROM
  [dbo].[LMS_BOOK_ISSUE] A
  left join [LMS_MEMBERS] B on A.[MEMBER_ID] = B.[MEMBER_ID]
group by
  B.MEMBER_NAME
having
  count(B.MEMBER_NAME) >= 1 
```  

- **QUESTION 18 :** Write a query to fetch book titles that have been issued more than 5 times. 
```sql  
SELECT
  A.BOOK_TITLE AS [Book Titles],
  count(A.BOOK_TITLE) AS [Number Of Books Issued]
FROM
  [dbo].[LMS_BOOK_DETAILS] A
  left join [LMS_BOOK_ISSUE] B on A.[BOOK_CODE] = B.[BOOK_CODE]
group by
  A.BOOK_TITLE
having
  count(A.BOOK_TITLE) > 5;
```

- **QUESTION 19 :** Write a query to find the name and contact details of members who issued books in the last 30 days. 
```sql
SELECT
  MAX([DATE_ISSUE]) AS MAX_DATE
FROM
  [dbo].[LMS_BOOK_ISSUE] --- Max Day IS 2020-04-16
 
--------
 
SELECT
  DATEADD(DAY, -30, '2020-04-16') AS [Previous Day] -- PREVIOUS 30 DAYS IS 2020-03-17
  
--------

select
  A.MEMBER_NAME,
  A.MEMBERSHIP_STATUS,
  A.CITY,
  B.BOOK_CODE,
  B.DATE_ISSUE
from
  [dbo].[LMS_MEMBERS] A
  left join [dbo].[LMS_BOOK_ISSUE] B on A.MEMBER_ID = B.MEMBER_ID
WHERE
  B.DATE_ISSUE BETWEEN '2020-03-17' AND '2020-04-16' --30 DAYS INTERVAL
```

- **QUESTION 20 :** Write a query to find books that have never been issued. 
```sql  
SELECT
  BD.BOOK_TITLE
FROM
  [dbo].[LMS_BOOK_DETAILS] BD
LEFT JOIN [dbo].[LMS_BOOK_ISSUE] BI ON BD.BOOK_CODE = BI.BOOK_CODE
WHERE
  BI.BOOK_CODE IS NULL;

```
</details>


### **Advanced Queries (21–30)**  
[Click to Expand...]
<details>
<summary>View Queries</summary>

**--------------------------------*Advanced Queries (21-30)*-------------------------------------**
- **QUESTION 21 :** Write a query to list all overdue books along with the member names who borrowed them. 
```sql
SELECT
  B.BOOK_ISSUE_NO,
  A.MEMBER_NAME,
  C.BOOK_TITLE,
  C.CATEGORY,
  B.DATE_ISSUE,
  B.DATE_RETURN,
  B.DATE_RETURNED
FROM
  [dbo].[LMS_MEMBERS] A
  LEFT join [dbo].[LMS_BOOK_ISSUE] B ON A.MEMBER_ID = B.MEMBER_ID
  LEFT JOIN [dbo].[LMS_BOOK_DETAILS] C ON C.BOOK_CODE = B.BOOK_CODE
WHERE
  B.DATE_RETURNED > B.DATE_RETURN;
```

- **QUESTION 22 :** Write a query to rank books based on their price in descending order using window functions. 
```sql
SELECT
  BOOK_CODE,
  BOOK_TITLE,
  CATEGORY,
  RANK() OVER (
    ORDER BY
      PRICE DESC
  ) AS Rank
FROM
  [DBO].LMS_BOOK_DETAILS;
```

- **QUESTION 23 :** Write a query using a CTE to find the total number of books issued per category. 
```sql
WITH
  BOOK_ISSUE AS (
    SELECT
      B.CATEGORY
    FROM
      [dbo].[LMS_BOOK_ISSUE] A
      left join [dbo].[LMS_BOOK_DETAILS] B ON A.BOOK_CODE = B.BOOK_CODE
  )
SELECT
  CATEGORY AS Category,
  COUNT(CATEGORY) AS [Books Issued Per Category]
FROM
  BOOK_ISSUE
GROUP BY
  CATEGORY;
```

- **QUESTION 24 :** Write a query to display book titles and a new column "Price Range" (Low, Medium, High) based on their price. 
```sql
SELECT
  MAX(PRICE) AS [Maximum Price]
FROM
  [dbo].[LMS_BOOK_DETAILS] ---Max Price is 1800.00
  
--------

SELECT
  MIN(PRICE) AS [Miniimum Price]
FROM
  [dbo].[LMS_BOOK_DETAILS] ---Min Price is 375.00
  
--------
  
SELECT
  [BOOK_TITLE],
  PRICE,
  CASE
    WHEN PRICE BETWEEN 0 AND 499 THEN 'Low'
    WHEN PRICE BETWEEN 500 AND 999 THEN 'Medium' --WHEN PRICE >= 1000 THEN 'High'
    ELSE 'High'
  END AS [PRICE RANGE]
FROM
  [dbo].[LMS_BOOK_DETAILS];
```

- **QUESTION 25 :** Write a recursive query to find all books under a specific category and its subcategories. 
```sql
WITH
  Category_Hierarchy (CATEGORY, PARENT_CATEGORY) AS (
    SELECT
      CATEGORY,
      PARENT_CATEGORY
    FROM
      [dbo].[LMS_BOOK_DETAILS]
    WHERE
      CATEGORY = 'Data Science'
    UNION ALL
    SELECT
      b.CATEGORY,
      b.PARENT_CATEGORY
    FROM
      [dbo].[LMS_BOOK_DETAILS] b
      INNER JOIN Category_Hierarchy ch ON b.PARENT_CATEGORY = ch.CATEGORY
  )
SELECT
  DISTINCT b.BOOK_CODE,
  b.BOOK_TITLE,
  b.CATEGORY,
  b.PRICE
FROM
  [dbo].[LMS_BOOK_DETAILS] b
  INNER JOIN Category_Hierarchy ch ON b.CATEGORY = ch.CATEGORY;


```
- **QUESTION 26 :** Write a query to calculate the total fine amount collected for overdue books. 
```sql
WITH
  OVERDUE_BOOK AS (
    SELECT
      A.BOOK_CODE,
      B.FINE_AMOUNT
    FROM
      [dbo].[LMS_BOOK_ISSUE] A
      LEFT JOIN [dbo].[LMS_FINE_DETAILS] B ON A.FINE_RANGE = B.FINE_RANGE
    WHERE
      A.FINE_RANGE IS NOT NULL
  )
SELECT
  SUM(FINE_AMOUNT) AS [Total Fine Amount]
FROM
  OVERDUE_BOOK;
```

- **QUESTION 27 :** Write a query to find the top 3 members who have issued the most books. 
```sql
SELECT
  TOP 3 B.MEMBER_NAME,
  count(B.MEMBER_ID) AS [Member Who issue Books]
FROM
  [dbo].[LMS_BOOK_ISSUE] A
  left join [dbo].[LMS_MEMBERS] B ON A.MEMBER_ID = B.MEMBER_ID
GROUP BY
  B.MEMBER_NAME
order by
  [Member Who issue Books] desc;
```

- **QUESTION 28 :** Write a query to find suppliers who have supplied books in multiple categories. 
```sql
SELECT
  B.SUPPLIER_NAME,
  COUNT(DISTINCT A.CATEGORY) AS [Distinct Categories]
FROM
  [dbo].[LMS_BOOK_DETAILS] A
  LEFT JOIN [dbo].[LMS_SUPPLIERS_DETAILS] B ON A.SUPPLIER_ID = B.SUPPLIER_ID
GROUP BY
  B.SUPPLIER_NAME
HAVING
  COUNT(DISTINCT A.CATEGORY) > 1;

 ``` 

- **QUESTION 29 :** Write a query to find members who issued the same book multiple times. 
```sql  
SELECT
  MEMBER_ID,
  BOOK_CODE,
  COUNT(BOOK_ISSUE_NO) AS [Issued Same Book]
FROM
  [dbo].[LMS_BOOK_ISSUE]
group by
  BOOK_CODE,
  MEMBER_ID
having
  COUNT(BOOK_ISSUE_NO) > 1 
```  

- **QUESTION 30 :** Write a query to calculate the average price of books per category. 
```sql
SELECT
  CATEGORY,
  AVG(PRICE) AS [Average Price]
FROM
  [dbo].[LMS_BOOK_DETAILS]
GROUP BY
  CATEGORY;

```
</details>

---

## Summary of SQL Sections

Here’s a quick look at the SQL scripts used in the **Library Management System (LMS)** project.

They’re grouped into:

- **Basic**
- **Intermediate**
- **Advanced**

The queries cover things like filtering, joins, totals, CTEs, and even ranking.  
Each one helps answer real questions about books, members, fines, and suppliers in the library.

Simple, clear, and straight to the point.

You can download the complete SQL script file from the link below:<br>
 **[Download the SQL script here](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/sql/library_management_system.sql)**

---

## Python Overview 

This project leverages **Python** and **Jupyter Notebook** for in-depth analysis, feature engineering, and data visualization tasks related to the Library Management System (LMS). Python scripts were used to:

- Explore and understand the structure and behavior of library data  
- Handle missing values by imputing or replacing null entries  
- Convert object-type date columns to proper `datetime` format for accurate time-based analysis  
- Perform initial statistical validation and sanity checks on return delays, fines, and member activity  
- Visualize key patterns in borrowing trends, late returns, member activity, and supplier performance

Python enabled a smooth and efficient transformation pipeline that prepared the cleaned dataset (`Lms_Analysis.csv`) for visualization in Power BI. It supported logical consistency checks and helped validate the relationships between books, members, and fines before dashboard development.

---


### Python Data Cleaning and Preparation

The script `lms_analysis.ipynb` is a Python notebook developed to analyze and explore the **Library Management System (LMS)** dataset.  
The data was sourced and merged from multiple CSV files after initial extraction from SQL Server.

Key steps in the notebook include:

- **Data Exploration:**  
  Reviewing the structure of the data, checking value distributions, and getting a feel for trends across books, members, and fines.

- **Data Preparation:**  
  Merging different tables (books, members, issues, fines, suppliers), formatting date fields, and ensuring the dataset is analysis-ready.
  
- **KPI Calculation:**  
  Deriving key metrics like average fine, total books issued, late returns, and member activity to support decision-making.

- **Visualization:**  
  Using charts to show book circulation, fine trends, member engagement, and supplier contributions.

This notebook acts as a solid base for generating insights and building visual dashboards in tools like Power BI.


---
## Python Code Overview: lms_analysis.ipynb

> 📌 This section shows all core data loading, cleaning, merging, and KPI preparation code used in `lms_analysis.ipynb`.  
> Please note: It does **not include all code cells**, and **business insights and recommendations are excluded**.  <br>
> For the complete notebook with full analysis and visualizations, view the original file:  
> 👉 [lms_analysis.ipynb](path-to-notebook)

```python
# Import Libraries
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from pandas import read_csv, set_option
from pandas.plotting import scatter_matrix
from datetime import datetime
import warnings
warnings.filterwarnings("ignore")

set_option('display.max_rows', 500)
set_option('display.max_columns', 500)

# Load Data
Book_Details = pd.read_csv("Book_Details.csv")
Book_Issue = pd.read_csv("Book_Issue.csv")
Fine_Details = pd.read_csv("Fine_Details.csv")
Lms_Members = pd.read_csv("Lms_Members.csv")
Suppliers_Details = pd.read_csv("Suppliers_Details.csv")
```

---

## 🔍 Exploratory Data Analysis (EDA)

```python
# Merge all tables
lms = Book_Issue.merge(Book_Details, on="BOOK_CODE", how="left")\
                .merge(Lms_Members, on="MEMBER_ID", how="left")\
                .merge(Suppliers_Details, on="SUPPLIER_ID", how="left")\
                .merge(Fine_Details, on="FINE_RANGE", how="left")

# Fill missing values
lms['MAX_DAYS_DELAYED'] = lms['MAX_DAYS_DELAYED'].fillna(0)
lms['FINE_AMOUNT'] = lms['FINE_AMOUNT'].fillna(0)

# Convert to datetime
date_cols = ['PUBLISH_DATE', 'DATE_ARRIVAL', 'DATE_ISSUE', 'DATE_RETURN', 
             'DATE_RETURNED', 'DATE_REGISTER', 'DATE_EXPIRE']
lms[date_cols] = lms[date_cols].apply(pd.to_datetime)

# Export cleaned data
lms.to_csv("Lms_Analysis.csv", index=False)
```

---

## 📈 Data Aggregation & Summary

```python
# Total Price by Book Title
lms.groupby('BOOK_TITLE')['PRICE'].sum().sort_values(ascending=False)

# Total Fine by Category
lms.groupby('CATEGORY')['FINE_AMOUNT'].sum().sort_values(ascending=False)

# Fine Amount by City
lms.groupby('CITY')['FINE_AMOUNT'].sum().sort_values(ascending=False)

# Top 10 Most Issued Books
lms['BOOK_TITLE'].value_counts().head(10)
```

---

## 📊 Visualizations

```python
# Book Category Histogram
plt.figure(figsize=(8, 6))
sns.histplot(Book_Details['CATEGORY'], kde=True)
plt.title('📚 Distribution of Book Categories')
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()

# Publisher Bar Plot
plt.figure(figsize=(6, 4))
Book_Details['PUBLICATION'].value_counts().plot(kind='bar')
plt.title('🏢 Books by Publisher')
plt.tight_layout()
plt.show()

# Supplier Pie Chart
plt.figure(figsize=(5, 5))
Book_Details['SUPPLIER_ID'].value_counts().plot(kind='pie', autopct='%1.1f%%')
plt.title('🚚 Supplier Contribution')
plt.ylabel('')
plt.tight_layout()
plt.show()

# Correlation Heatmap
plt.figure(figsize=(10,6))
sns.heatmap(lms.corr(numeric_only=True), annot=True, cmap='coolwarm')
plt.title("Correlation Heatmap")
plt.tight_layout()
plt.show()
```

### Notebooks and Resources  

Below are the key Jupyter notebooks developed as part of this project. You can download them directly using the links provided:

- [**book_details.ipynb**](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/notebooks/book_details.ipynb) – Book metadata and pricing insights  

- [**book_issue.ipynb**](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/notebooks/book_issue.ipynb) – Borrowing trends and demand patterns 
  

- [**fine_details.ipynb**](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/notebooks/fine_details.ipynb) – Fine distributions and delay behavior 


- [**lms_members.ipynb**](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/notebooks/lms_members.ipynb) – Member segmentation and activity levels
  

- [**suppliers_details.ipynb**](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/notebooks/suppliers_details.ipynb)  – Supplier performance and cost breakdown


---  

##  Power BI Dashboard 

This Power BI report delivers a complete analysis of a Library Management System (LMS), covering book circulation, 
member activity, fines, and supplier performance. It includes 5 dashboard pages that highlight borrowing trends, member engagement, 
late return patterns, and book acquisition insights—supporting smarter decisions around library operations, inventory, and user services.
[**Download the Power BI (.pbix) template**](https://github.com/rotimi2020/Data-Analyst-Portfolio/tree/main/library_management_system/powerbi) 

---

<h2 id="report_structure"> Report Structure </h2>

This Power BI report explores a **Library Management System (LMS)** using five interactive dashboards. Each page uncovers meaningful insights into book circulation, member behavior, fines, and supplier contributions—turning raw data into actionable visual stories.


| Page # | Dashboard Title     | Description                                                                 |
|--------|---------------------|-----------------------------------------------------------------------------|
| 1️⃣     | 📚 Library Dashboard | Overview of book movement, top titles, and book value by category          |
| 2️⃣     | 👥 Member Insights    | Member distribution, activity level, fine impact, and borrowing behavior   |
| 3️⃣     | ⭐ Top Books Overview | Highlights of high-value books and most valuable book categories           |
| 4️⃣     | 🔁 Fines & Returns    | Fine category breakdown, late vs. on-time returns                          |
| 5️⃣     | 🏢 Supplier Stats     | Supplier contributions, most borrowed books, and monthly trends           |

---

This dashboard helps visualize how the LMS operates on a daily and strategic level—empowering data-driven decisions about book acquisition, member engagement, and library performance optimization.

---

## Page Details & Visuals 


#### 1️⃣ Library Management Dashboard

Focuses on overall book circulation and value trends:

- 📈 **Line Chart:** Daily Book Issue Trend – shows how book borrowing changes over time.  
- 📊 **Bar Chart:** Total Book Value by Title – highlights which book titles hold the most value.  
- 📊 **Column Chart:** Total Book Value by Category – compares value across categories like Python, Data Science, etc.

🌟 **Purpose:**  
- *Track* borrowing activity over time.  
- *Identify* high-value books in the collection.  
- *Compare* value by book category.

---

#### 2️⃣ Member Insights Dashboard

Explores member demographics and activity:

- 🗺️ **Bar Chart:** Member Distribution by City – shows where members are located.  
- 🍩 **Donut Chart:** Total Books Issued by Membership Type – compares temporary, permanent, and trial users.  
- 💸 **Bar Chart:** Total Fine Collected by Member – ranks members by fine amounts.  
- 📊 **Pie Chart:** Book Issues by Fine Range – shows how fines relate to borrowing habits.

🌟 **Purpose:**  
- *Understand* where members come from.  
- *Analyze* member behavior based on membership status.  
- *Monitor* fine-related borrowing patterns.

---

#### 3️⃣ Top Performing Books

Highlights top contributors to the library’s value:

- 📚 **Bar Chart:** Total Book Value by Title – lists the highest-value titles.  
- 📘 **Column Chart:** Total Book Value by Category – evaluates top genres or subjects.

🌟 **Purpose:**  
- *Recognize* high-impact books.  
- *Evaluate* which topics or categories add the most value.

---

#### 4️⃣ Fine & Return Analysis

Reviews late returns and penalties:

- 📊 **Column Chart:** Book Issues by Fine Category – visualizes books across different fine levels.  
- 🔁 **Bar Chart:** Book Issues by Return Status – compares on-time vs. delayed returns.

🌟 **Purpose:**  
- *Track* late return trends.  
- *Link* fines to return patterns.

---

#### 5️⃣ Supplier Overview

Analyzes book suppliers’ contributions:

- 🍩 **Donut Chart:** Total Book Value by Supplier – shows value contributed by each supplier.  
- 📊 **Bar Chart:** Book Issues by Supplier – reveals borrowing frequency per supplier.  
- 📈 **Column Chart:** Monthly Book Arrivals and Issues – tracks monthly trends in book supply and usage.

🌟 **Purpose:**  
- *Measure* supplier impact.  
- *Track* supply trends over time.

---


## Insights & Key Findings 

- 📌 **Book borrowing shows clear monthly and seasonal patterns**, with peak activity during academic seasons and holidays.
- 📌 **Technical and academic books (e.g., Python, Data Science)** are among the most borrowed and highest-value categories.
- 📌 **Permanent members** borrow the most books and incur the highest fines, indicating deeper engagement with the library.
- 📌 **Members from certain cities consistently borrow more books**, showing strong regional engagement patterns.
- 📌 **Top 5 books and suppliers contribute a disproportionate value and circulation**, while several books remain underutilized.
- 📌 **Fines are primarily incurred by a small group of users**, suggesting the need for targeted communication or policy reviews.
- 📌 **Books returned late are often linked to higher fine ranges**, which could guide better return policies or reminders.


---

## Business Recommendations

- 📌 **Encourage borrowing in low-activity months** (e.g., September) by replicating strategies used during peak periods like March or exam seasons.
- 📌 **Introduce themed reading programs or events on weekends** to boost engagement when borrowing typically drops.
- 📌 **Analyze underperforming books and suppliers**, and consider replacing or promoting them through curated reading lists or discounts.
- 📌 **Adopt successful practices from top-performing suppliers** (e.g., book variety, delivery timeliness) across other vendors.
- 📌 **Target high-fine members with friendly reminders or grace periods**, to improve return behavior and member satisfaction.
- 📌 **Optimize inventory planning around academic seasons and holidays**, ensuring popular books are in stock ahead of demand.
- 📌 **Launch digital borrowing options or renewals** during peak physical traffic periods to reduce congestion and increase satisfaction.
- 📌 **Segment members by behavior (e.g., late returns, high borrowing)** to tailor communication, promotions, or access privileges.
- 📌 **Use insights from book category trends** to expand high-demand topics and phase out rarely borrowed materials.
- 📌 **Implement feedback mechanisms** to regularly gather input from members on book preferences, services, and improvements.

---

### Visual Types Summary

| Visual Type         | Use Case                                                                 |
|---------------------|--------------------------------------------------------------------------|
| Line Chart          | Track book borrowing or return trends over time                          |
| Stacked Bar Chart   | Compare book issues or values across categories or membership types      |
| Clustered Column    | Visualize top books, fines, or supplier contributions side-by-side       |
| Pie/Donut Chart     | Show proportional breakdowns (e.g., by fine category or member type)     |
| Matrix Table        | Cross-tab insights (e.g., Book Category × Supplier or Month × Status)    |
| Slicers             | Let users filter by year, month, member type, or supplier dynamically    |


---

## LMS Power BI Report Previews

Below are sample preview images from the Power BI reports developed for the LMS project. These visuals highlight key insights, patterns in book borrowing, member behavior, fines, and supplier statistics.  
Each report page is designed to help users easily navigate and understand the library data story.

| Library Overview | Member Insights |
|------------------|------------------|
| ![Library Overview](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/report_screenshots/library_management_dashboard_reports.PNG) | ![Member Insights](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/report_screenshots/Member_insights_reports.PNG) |

| Top Books & Suppliers | Fines & Returns | Supplier Stats |
|------------------------|------------------|----------------|
| ![Top Books](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/report_screenshots/top_performing_book_reports.PNG) | ![Fines and Returns](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/report_screenshots/fine_and_return_analysis_reports.PNG) | ![Supplier Stats](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/report_screenshots/supplier_overview_reports.PNG) |

---

### Download the Full Power BI Report

You can **download the complete Power BI report** in PDF format:  
**[Download PDF Report](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/reports/lms_analysis_reports.pdf)**

---

# DAX Overview 

This project uses Power BI and DAX to analyze a Library Management System. We created custom measures and columns to track book issues, late returns, fines, member activities, and supplier insights. 

---

## Key DAX 

```sql
# Total Books Issued
Total Book Issued = COUNT(Book_Issue[Book_Code])  
```
```sql
# Total Members
Total Members = DISTINCTCOUNT(Lms_Members[Member_ID]) 
```
```sql
# Total Fine Amount
Total Fine Amount = SUM(Fine_Details[Fine_Amount])  
```
```sql
# Total Late Returns
Total Late Returns = CALCULATE(COUNT(Book_Issue[Issue_ID]), Book_Issue[Days_Delayed] > 0)    
```
```sql
# Total Price Of Book
Total Price Of Book = SUM(Book_Details[Price])  
```
```sql
# Average Days Delayed
Average Days Delayed = AVERAGE(Book_Issue[Days_Delayed])
```
---

## Key Calculated Columns

```sql
# Delayed Status 
Delayed Status = IF(Book_Issue[Days_Delayed] > 0, "Late", "On Time")  
```

```sql
# Fine Category 
Fine Category = SWITCH(TRUE(), Fine_Details[Fine_Amount] = 0, "No Fine", Fine_Details[Fine_Amount] <= 100, "Low", Fine_Details[Fine_Amount] <= 200, "Medium", "High") 
```

```sql
# Month Name 
Month Name = FORMAT(Book_Issue[Issue_Date], "MMMM") 
```
```sql
# Year Issued 
Year Issued = YEAR(Book_Issue[Issue_Date])
```
---


## Visuals & Dashboard Summary


- Line and bar charts show trends in book issues, returns, fines, and supplier activities.  
- KPI cards summarize total books issued, total members, fine amounts, and late returns.  
- Slicers provide interactivity by filtering data across book titles, members, suppliers, and date ranges.

📂 **Download Full DAX Code File**:  
[View on GitHub](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/library_management_system/dax/dax_formulas.txt)

---


<h2 id="installation"> ⚙️ Installation </h2>

To set up the project environment on your local machine, follow these steps:

### ✅ Step 1: Clone the Repository

```bash
git clone https://github.com/rotimi2020/Data-Analyst-Portfolio.git
cd Data-Analyst-Portfolio/LMS_PowerBI_Analysis
```

### ✅ Step 2: Install Dependencies
Make sure Python 3.8 or later is installed. Then run:

```bash
pip install -r requirements.txt
```

---

<h2 id="author"> 🙋‍♂️ Author </h2>

**Rotimi Sheriff Omosewo**  
📧 Email: [omoseworotimi@gmail.com](mailto:omoseworotimi@gmail.com)  
📞 Contact: +234 903 441 1444  
🔗 LinkedIn: [linkedin.com/in/rotimi-sheriff-omosewo-939a806b](https://www.linkedin.com/in/rotimi-sheriff-omosewo-939a806b)  
📁 Project GitHub: [github.com/rotimi2020/Data-Analyst-Portfolio](https://github.com/rotimi2020/Data-Analyst-Portfolio)

> 📌 **Note:** This Library Management System (LMS) project is part of my Data Analytics Portfolio. It demonstrates core skills in business intelligence and data modeling using a sample library dataset. Tools used include Power BI, SQL, and Python.

---
