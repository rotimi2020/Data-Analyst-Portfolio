# Rossmann Store Sales Forecasting Project
This project leverages SQL, Python (XGBoost, Prophet, PyCaret), and Power BI to forecast daily sales across Rossmann stores.  
It combines data cleaning, feature engineering, machine learning, and dashboard visualization to support inventory planning, staffing, and promotion strategies.

---

# 📁 Project Directory Structure

This project repository is organized into modular folders for better navigation and understanding. Each folder contains specific resources (SQL scripts, notebooks, DAX measures, Power BI files, etc.) related to the Rossmann Store Sales Forecasting project.

| Folder / File                                                  | Description                                        |
| -------------------------------------------------------------- | -------------------------------------------------- |
| **`dax/`**                                                     | Contains DAX formulas and supporting documentation |
| ├── `README.md`                                                | Overview of DAX KPIs used in Power BI              |
| └── `dax_formulas.txt`                                         | List of all DAX calculations                       |
| **`er_diagram/`**                                              | Entity Relationship Diagram                        |
| ├── `README.md`                                                | Explanation of ER diagram design                   |
| └── `entity_relationship_diagram.pdf`                          | PDF of ER diagram for data model                   |
| **`notebooks/`**                                               | Jupyter notebooks for modeling and forecasting     |
| ├── `README.md`                                                | Overview of the notebooks                          |
| ├── `machine_learning_using_pycaret.ipynb`                     | ML modeling using PyCaret                          |
| ├── `machine_learning_using_xgboost.ipynb`                     | XGBoost forecasting model                          |
| ├── `prophet_forecasting_with_adding_extra_regressors.ipynb`   | Prophet model with extra regressors                |
| ├── `prophet_forecasting_with_holiday_effects.ipynb`           | Prophet with holiday effect modeling               |
| ├── `prophet_forecasting_without_holidays_or_regressors.ipynb` | Basic Prophet model                                |
| └── `rossmann_sales.ipynb`                                     | Main notebook for full analysis workflow           |
| **`powerbi/`**                                                 | Power BI file for dashboard and visual analytics   |
| ├── `README.md`                                                | Description of Power BI report contents            |
| └── `rossmann_sales.pbix`                                      | Power BI report file                               |
| **`report_screenshots/`**                                      | Visual screenshots from Power BI dashboard         |
| ├── `README.md`                                                | Overview of report images                          |
| ├── `customer_behavior_reports.PNG`                            | Customer behavior dashboard                        |
| ├── `forecasting_reports.PNG`                                  | Forecasting report dashboard                       |
| ├── `sales_analysis_reports.PNG`                               | Sales analysis dashboard                           |
| ├── `sales_overview_reports.PNG`                               | High-level sales overview                          |
| └── `store_performance_analysis_reports.PNG`                   | Store performance report                           |
| **`sql/`**                                                     | SQL scripts for data preparation                   |
| ├── `README.md`                                                | SQL usage and structure explanation                |
| └── `rossmann_sales.sql`                                       | SQL script used for preprocessing and analysis     |
| **`requirements.txt`**                                         | Python libraries and package dependencies          |

---

## 📑 Table of Contents

- [Project Overview](#project-overview)
- [Objectives](#objectives)
- [Problem Definition](#problem-definition)
- [Problem Statement](#problem-statement)
- [Dataset Description](#dataset-description)
  - [Files Included](#files-included)
  - [File Sizes](#file-sizes)
  - [Important Notes](#important-notes)
  - [Usage](#usage)
- [Data Processing & Cleaning](#data-processing--cleaning)
- [Tools & Technologies](#tools--technologies)
- [Feature Engineering](#feature-engineering)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [SQL Overview](#sql-overview)
  - [Sections of SQL Scripts](#sections-of-sql-scripts)
  - [Summary of SQL Sections](#summary-of-sql-sections)
- [Python Overview](#python-overview)
  - [Python Data Analysis and Modeling](#python-data-analysis-and-modeling)
  - [Notebooks and Resources](#notebooks-and-resources)
- [Model Performance Comparison on the Rossmann Dataset](#model_performance_comparison_on_the_rossmann_dataset)
- [Predictive Modeling](#predictive-modeling)
- [Best Model Selection and Analysis](#best-model-selection-and-analysis)
- [Explanation & Analysis](#explanation--analysis)
- [Conclusion](#conclusion)
- [Power bi Dashboard – Rossmann Store Sales Forecasting](#power_bi_dashboard_rossmann_store_sales_forecasting)
  - [Report Structure](#report_structure)
  - [Page Details & Visuals](#page_details_visuals)
  - [Sales Dashboard – Executive Summary – Key Insights at a Glance](#sales_dashboard_executive_summary_key_insights_at_a_glance)
  - [Detailed Dashboard Analysis – Chart-Level Insights](#detailed_dashboard_analysis_chart_level_insights)
  - [Sales Dashboard Analysis – Business Recommendations](#sales_dashboard_analysis_business_recommendations)
  - [Visual Types Summary](#visual_types_summary)
  - [Power BI Report Previews](#powerBI_report_previews)
- [DAX Overview for Rossmann Store Sales Analysis](#dax_overview_for_rossmann_store_sales_analysis)
  - [Key DAX Measures](#key_dAX_measures)
- [Business Recommendations](#business_recommendations)
- [Insights & Key Findings](#insights_key_findings)
- [Conclusions](#conclusions)
- [Recommendations](#recommendations)
- [Export & Documentation](#export_documentation)
- [Installation](#installation)
- [Author](#Author)

---

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
<h2 id="problem_definition"> 📌 Problem Definition </h2>
Rossmann, a major drugstore chain, aims to optimize its inventory and staffing by accurately forecasting daily sales at individual stores. The challenge involves managing large datasets, addressing missing data and outliers, and capturing complex sales patterns influenced by promotions, holidays, and store-specific factors. Effective forecasting will help Rossmann improve operational efficiency and customer satisfaction.

---

<h2 id="problem_statement"> 🎯 Problem Statement </h2>

Rossmann, a leading drugstore chain, faces the challenge of ensuring optimal inventory levels and efficient staffing across its numerous store locations. To achieve this, the company seeks to develop a robust forecasting system capable of predicting daily sales at each individual store with high accuracy. 

This task involves analyzing extensive historical transaction data combined with store-specific information. The key challenges include handling large volumes of data, dealing with missing values and outliers, and capturing complex temporal patterns influenced by various factors such as promotions, holidays, weather conditions, and store-specific characteristics.

The goal is to build an integrated solution that leverages both Business Intelligence and Machine Learning techniques. This includes:

- Using **SQL** for data extraction, cleaning, and transformation to prepare datasets suitable for analysis.
- Applying **Power BI** for interactive data visualization, trend analysis, and KPI tracking to gain actionable insights.
- Developing **Python-based machine learning models** to forecast daily sales at each store with high precision, enabling proactive decision-making.

By combining these approaches, Rossmann aims to improve inventory planning, reduce stockouts, minimize excess inventory, and enhance overall customer satisfaction through data-driven operational strategies.

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

**Tools & Technologies:**
- SQL (Data Cleaning & Queries)
- Python (Pandas, Scikit-Learn, XGBoost, Prophet)
- Power BI (Data Visualization)
- Jupyter Notebook

---

<h2 id="feature_engineering"> 🧪 Feature Engineering </h2>

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

<h2 id="sQL_overview"> 🧾 SQL Overview </h2>

This project uses SQL to clean, transform, and extract insights from the Rossmann Store Sales dataset.  
The SQL queries were used for data preprocessing, calculating key metrics, and preparing data for Power BI and forecasting models.

Key objectives:
- Cleaning and transforming raw data
- Creating features for analysis (e.g., holidays, promo effects)
- Generating KPIs (e.g., daily sales, average per store)
- Preparing time-series ready data

---

<h2 id="sections_of_sQL_scripts"> 🔍 Sections of SQL Scripts </h2>

Below are selected SQL snippets from the project on data cleaning.
- Replacement of null values
- Change type

### 1. Replacement of null values
```sql
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

```

### 2. Change type
```sql
alter table
  [train_cleaned]
alter column
  [Customers] int;
```
---
Below are selected SQL snippets from the project on data analysis queries.
- Aggregating total sales for each date to analyze daily sales performance
- Total Sales by Day of the Week
- Chronological Sales by Month
- aggregating sales by year

### 1. 📊 Daily Sales Trend
```sql
select
  Date,
  sum(Sales) AS Total_sales
from
  Rossmann_sale
group by
  Date
order by
  Date  ;

```
### 2. 📊 Weekly Sales Trend
```sql
select
  DATENAME(W, Date) AS Week,
  sum(Sales) AS Total_sale
from
  Rossmann_sale
group by
  DATENAME(W, Date)
order by
  Total_sale DESC ;
```

### 3. 📊 Monthly Sales Trend
```sql
select
  DATENAME(M, Date) AS Month,
  sum(Sales) AS Total_sale
from
  Rossmann_sale
group by
  DATENAME(M, Date)
order by
  Total_sale DESC ;

```
### 4. 📊 Yearly Sales Trend
```sql
select
  year(Date) As Year,
  sum(Sales) AS Total_sales
from
  Rossmann_sale
group by
  year(Date) ;

```
---
<h2 id="summary_of_sQL_sections"> Summary of SQL Sections </h2>
This section covers essential SQL scripts used in the project for data cleaning and analysis. It includes techniques like null value replacement, type conversion, and aggregation of sales data—key steps for preparing and deriving insights from the Rossmann dataset.

You can download the complete SQL script file from the link below:<br>
 **[Download the SQL script here](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/sql/rossmann_sales.sql)**

---

<h2 id="python_overview"> 🧾 Python Overview </h2>
This project utilizes Python for extensive data analysis, feature engineering, and visualization tasks. The Python scripts and Jupyter notebooks facilitate exploration of the dataset, creation of new predictive features, handling missing data, and performing statistical checks such as multicollinearity analysis with VIF. Additionally, Python is used for visualizing sales trends and relationships within the data, which supports the development of accurate machine learning models for sales forecasting. This integration of Python modules enables a streamlined and efficient approach to preparing data for predictive modeling.

---

### Python Data Analysis and Modeling

The script `rossmann_sale.ipynb` is a comprehensive Python notebook used in the analysis, cleaning, and feature engineering of the Rossmann sales data. 
This notebook was developed after extracting the cleaned dataset from SQL Server Management Studio (SSMS). 

Key processes include:

- **Data Exploration and Analysis:**  
  Exploring the dataset, understanding distributions, and summarizing statistical attributes to gain initial insights.

- **Data Cleaning and Preparation:**  
  Handling missing values, converting date columns to datetime format, and ensuring data consistency.

- **Feature Engineering:**  
  Creating new features based on temporal aspects such as day, month, year, and identifying special events like holidays or promotions.  
  Generating lag features to capture sales trends over time and merging datasets 
(training and testing sets) with store information for comprehensive analysis.

- **Multicollinearity Check:**  
  Using Variance Inflation Factor (VIF) to identify and mitigate multicollinearity among features, ensuring model stability.

- **Visualization:**  
  Plotting sales trends, correlation matrices, and feature importance to support understanding of data relationships and guide model development.

This notebook serves as the foundation for building machine learning models and conducting in-depth analyses to forecast sales accurately, 
facilitating data-driven decision-making for Rossmann stores.

---

### Notebooks and Resources  

Below are the key Jupyter notebooks developed as part of this project. You can download them directly using the links provided:  

- **rossmann_sales.ipynb**: [Download Rossmann Sales Data Analysis](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/notebooks/rossmann_sales.ipynb)  
  This notebook contains the data extraction, cleaning, feature engineering, visualization, and initial modeling steps.  

- **machine_learning_using_pycaret.ipynb**: [Download Machine Learning with PyCaret](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/notebooks/machine_learning_using_pycaret.ipynb)  
  Demonstrates the use of PyCaret for building and tuning ML models to forecast sales.  

- **machine_learning_using_xgboost.ipynb**: [Download XGBoost Modeling](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/notebooks/machine_learning_using_xgboost.ipynb)  
  Implements XGBoost for sales prediction, emphasizing hyperparameter tuning and model evaluation.  

- **prophet_forecasting_with_extra_regressors.ipynb**: [Download Prophet with Extra Regressors](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/notebooks/prophet_forecasting_with_adding_extra_regressors.ipynb)  
  Uses Facebook Prophet model incorporating additional regressors like promotions and holidays for improved forecasts.  

- **prophet_forecasting_with_holiday_effects.ipynb**: [Download Prophet with Holiday Effects](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/notebooks/prophet_forecasting_with_holiday_effects.ipynb)  
  Demonstrates how holiday effects are integrated into Prophet models for better seasonal forecasting.  

- **prophet_forecasting_without_holidays_or_regressors.ipynb**: [Download Prophet without Regressors](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/notebooks/prophet_forecasting_without_holidays_or_regressors.ipynb)  
  Showcases a baseline Prophet model without special regressors to compare forecast performance.  

---  
<h1 id="model_performance_comparison_on_the_rossmann_dataset"> Model Performance Comparison on the Rossmann Dataset </h1>

This table presents a comparison of various machine learning and forecasting models evaluated on the Rossmann dataset. The primary metric used for comparison is RMSE (Root Mean Square Error), which helps identify the most accurate models in terms of forecast error. The table is divided into two categories: **Machine Learning** and **Forecasting**. The models are ranked and evaluated to highlight the best performing algorithms within each category based on their RMSE values.

Below is the detailed comparison:

| Category           | Algorithm                               | Input Features                          | RMSE       | MAE        | MAPE (%) | R²  | Notes                                           |
|--------------------|-----------------------------------------|----------------------------------------|------------|------------|----------|-----|------------------------------------------------|
| Machine Learning   | CatBoost                              | Store, Sales, Lag features             | 624.41     | 451.96     | 0.075    | 0.93| Best machine learning model                     |
| Machine Learning   | XGBoost                               | Store, Lag features, Season, etc.      | 642.07     | 461.66     | 4.69     | 0.93| Close second to CatBoost                        |
| Machine Learning   | LSTM                                   | Promo, Open, Holiday, etc.             | 916.26     | 578.53     | 6.91     | 0.76| Deep learning                                   |
| Forecasting        | Prophet - adding regressors            | Date, Promo, Open                      | 525,387.66 | 393,867.04 | 0.4      | 0.97| Best Prophet model                              |
| Forecasting        | PyCaret - with multiple regressors     | Date, Promo, SchoolHoliday             | 1,073,553.77 | 815,817.18 | 0.14     | 0.83| Best forecast among PyCaret                     |
| Forecasting        | PyCaret - with holidays                  | Date, SchoolHoliday                    | 1,311,587.28 | 933,883.02 | 0.15     | 0.74| Better performance                              |
| Forecasting        | Prophet - with holiday effects           | Date, StateHoliday                     | 1,344,410.84 | 1,105,479.77 | 1.12     | 0.77| Improved by holidays                            |
| Forecasting        | PyCaret - without holidays               | Date                                   | 1,671,506.98 | 1,181,608.54 | 0.17     | 0.59| Baseline PyCaret                                |
| Forecasting        | Prophet - without holidays               | Date                                   | 1,760,578.81 | 1,312,009.26 | 2.31     | 0.61| Baseline model                                  |

*Note:* The models with the lowest RMSE in each category are considered the best performers. The table highlights the impact of different input features and methods on model accuracy.

### Conclusion
This table presents the final comparative results obtained after extensive experimentation. The **best models** in each category are those with the **lowest RMSE**, indicating superior predictive accuracy.

For detailed insights, code implementation, and further analysis, you can access the full project files (.ipynb) via the link below. Feel free to explore the notebooks:

[Download all project files (.ipynb)](https://github.com/rotimi2020/Data-Analyst-Portfolio/tree/main/rossmann_store_sales_analysis/notebooks)

***Note:** All files, including `.ipynb` notebooks, are available for download for review and reproduction.*

---

## Predictive Modeling
- Developed machine learning models such as XGBoost and Prophet.
- Used feature engineering to enhance model accuracy.
- Hyperparameter tuning and cross-validation ensured robustness.
- Achieved promising forecasting accuracy (e.g., RMSE, MAE metrics).

---
# Best Model Selection and Analysis

## Best Overall Model
**CatBoost Regressor** demonstrates the most accurate predictions with:
- **Lowest RMSE:** 624.41
- **High R² score:** 0.9338
- **MAPE:** 7.5%

This combination indicates excellent predictive accuracy and strong variance explanation, making CatBoost the most reliable model for precise sales forecasting.

## Close Contenders
- **XGBoost Regressor:**  
  RMSE of 642.07 and R² of 0.93 , closely following CatBoost, showing competitive performance in capturing data relationships.
- **PyCaret (with multiple regressors):**  
  RMSE of 1,073,553.77, though higher than boosting models, still provides valuable insights but with less precision, despite a good R² score.

## Forecasting Models
- **Prophet with Additional Regressors (promos, holidays, etc.):**  
  Outperforms other models with an impressive RMSE of **525,387.66**, indicating improved modeling of seasonal patterns and events.
- **Prophet with Holiday Effects Only:**  
  Also performs well but doesn't match the accuracy of the regressors-enhanced version.

## Deep Learning
- **LSTM Model:**  
  Achieves an RMSE of **916.26**, indicating potential but still higher than the top boosting models. It suggests that further tuning or utilizing more data could improve its performance.

---

## Explanation & Analysis

### RMSE as a Metric
- **Prioritized** because it penalizes large errors heavily, which is critical in sales forecasting to avoid costly mispredictions.

### Best Tools & Techniques
- **Tree-based ensemble models (CatBoost, XGBoost):**  
  Excel at handling structured, tabular data and capturing complex relationships.
- **Prophet:**  
  Demonstrates excellent seasonality and event modeling, especially when augmented with regressors.
- **LSTM (Deep Learning):**  
  Offers promising results but may require further tuning, more data, or architectural adjustments for better accuracy.

---

## Conclusion
Based on the analysis:
- **CatBoost** is the most reliable and accurate predictor owing to its lowest RMSE and high R² score.
- It is recommended for deployment to ensure precise and stable sales forecasts.

This selection ensures optimal performance for business intelligence, planning, and strategic decision-making.

---

<h2 id="power_bi_dashboard_rossmann_store_sales_forecasting"> 📊 Power bi Dashboard – Rossmann Store Sales Forecasting </h2>

This Power BI report provides comprehensive sales and customer analytics for Rossmann stores. It consists of 5 pages focusing on sales trends, promotional impact, customer behavior, and forecasting, enabling business decisions on staffing, inventory, and marketing.

---

<h2 id="report_structure"> 🧭 Report Structure </h2>

| Page # | Title                     | Description                                                       |
|--------|---------------------------|-------------------------------------------------------------------|
| 1️⃣     | Sales Overview            | General trends of sales by time and store type                    |
| 2️⃣     | Sales Analysis            | Promo-based performance & weekday sales trends                    |
| 3️⃣     | Store Performance         | Store-level & seasonal performance comparison                     |
| 4️⃣     | Customer Behavior         | Traffic analysis by school holidays and store average             |
| 5️⃣     | Forecasting Analysis      | Historical sales + average metrics for forecasting preparation    |

---

<h2 id="page_details_visuals"> 🗂 Page Details & Visuals </h2>

#### 🔹 Slicer Implementation Strategy  
🔹 Slicers were added selectively on interactive pages (e.g., Store Performance & Time Series Forecasting) to allow user-driven filtering.  

🔹 Static summary pages such as the KPI Overview and Sales Snapshot were intentionally designed without slicers to ensure clean, distraction-free insights.  

🔹 This approach balances interactivity with simplicity, and aligns with Power BI best practices for business reporting.

#### 1️⃣ Sales Overview

- 📈 Line Chart: Total Sales by Month 
- 📊 Stacked Bar Chart: Sales by Store Type  
- 📊 Clustered Bar Chart: Sales and Customer Distribution by Season  

🌟 Purpose:
- *Track* overall sales trends and growth over time.
- *Compare* revenue contributions across different store types.
- *Analyze* the relationship between customer traffic and sales performance seasonally.


---

#### 2️⃣ Sales Analysis

- 📈 Line Chart: Total Sales by Year and Month  
- 📊 Stacked Bar Chart: Total Sales by Day of the Week  
- 📊 Clustered Column Chart: Sales by Year and Promo  
- 📅 Date Slicer  

🌟 Purpose:
- *Identify* long-term and monthly sales trends.
- *Evaluate* weekday performance to optimize staffing and inventory.
- *Assess* the effectiveness of promotions on sales volume.
---

#### 3️⃣ Store Performance Analysis

- 🏆 Donut Chart: Top 5 Stores by Total Sales
- 📉 Donut Chart: Bottom 5 Stores by Total Sales
- 📊 Matrix: Sales Performance by Store and Season

🌟 Purpose:
- *Pinpoint* top and bottom-performing stores to reward excellence or address underperformance.
- *Evaluate* how seasonality impacts store-level sales for targeted planning.
- *Optimize* resource allocation based on seasonal trends and store rankings.
---

#### 4️⃣ Customer Behavior

- 📊 Clustered Column Chart: Customers by School Holiday  
- 📊 Clustered Bar Chart: Customer Count by Day of Week 
- 📊 Clustered Column Chart: Customer Distribution by Store Type
- 📈 Line Chart: Average Customers by Date  

🌟 Purpose:
- *Measure* the impact of school holidays on foot traffic patterns.
- *Identify* peak visitation days to optimize staffing and promotions.
- *Compare* customer distribution across store types for targeted marketing.
- *Track* long-term trends in average customer visits to forecast demand.

---

#### 5️⃣ Forecasting Analysis

- 📈 Line Chart: Total Sales by Year and Month  
- 🧮 Matrix: Date in Rows, Values – Total Sales, Avg. Sales, Avg. Sales/Customer  
- 📅 Date Slicer  

🌟 Purpose:
- *Analyze* historical sales trends and seasonal fluctuations to identify patterns.
- *Calculate* key performance metrics (e.g., average sales per customer) for benchmarking.
- *Enable* dynamic filtering to drill down into specific time periods for granular insights.
- *Support* data-driven decision-making for inventory planning and sales forecasting.
---

<h2 id="sales_dashboard_executive_summary_key_insights_at_a_glance"> 📊 Sales Dashboard – Executive Summary – Key Insights at a Glance </h2>

This dashboard presents a high-level view of Rossmann store sales, customer behavior, store performance, and forecasting patterns. Below is a summarized breakdown of key insights for easier understanding:

---

### 📅 Sales Overview

- 🟢 March had the strongest sales month; September was the weakest.
- 🟡 Sales were stable during January, April, and May, suggesting steady demand during those months.
- 🛒 Store Type A is the top performer, driving most of the revenue.
- 🌸 Spring recorded the highest seasonal sales and customer visits — likely due to public holidays.

---

### 📦 Sales Patterns

- 📉 Sundays had the lowest sales across the week; weekdays performed consistently well.
- 🧪 Promo-related sales insights are pending further data review.

---

### 🏆 Store Performance

- 🥇 A few top stores drive the majority of revenue, while bottom stores underperform significantly.
- 🧭 Store performance varies by season, though more analysis is needed.

---

### 👥 Customer Behavior

- 👥 Over half of the customers prefer Store Type A.
- 🏬 Store Type B has very low customer traffic and needs improvement.

---

### 🔮 Forecasting Trends

- 📈 Sales show clear seasonal patterns with consistent peaks in March every year.

---

<h2 id="detailed_dashboard_analysis_chart_level_insights"> 📊 Detailed Dashboard Analysis – Chart-Level Insights </h2>

This section breaks down insights directly from the Power BI charts to show how key sales metrics were derived.

### 📅 Sales Overview Page

#### 📈 Total Sales by Month (Line Chart)
- March recorded the highest sales ($545.3M), while September saw the lowest ($312.1M).
- January, April, and May displayed consistent mid-level sales, indicating stable demand.

#### 🏬 Total Sales by StoreType (Stacked Bar Chart)
- Store Type A dominated with $2.72B in sales — the key revenue driver.

#### 🌸 Sales and Customers by Season (Clustered Bar Chart)
- Spring generated the highest total sales ($159B) and customer visits (0.17B), likely due to Easter and Good Friday.

---

### 📦 Sales Analysis

#### 📆 Day of Week vs. Total Sales (Line or Bar Chart)
- Sunday posted the lowest total sales ($17.5M); weekdays performed consistently better.

#### 🎯 Total Sales by Year and Promo (Clustered Column Chart)
- (Data pending – placeholder for further promo impact evaluation.)

---

### 🏆 Store Performance Analysis

#### 🥇 Top vs. Bottom 5 Stores (Donut Charts)
- Significant performance gap observed: Top 5 stores contribute disproportionately to total sales vs. bottom 5.

#### 🧭 Sales by Store and Season (Matrix)
- (Data pending – placeholder for combined seasonal/store trends.)

---

### 👥 Customer Behavior Analysis

#### 🛍️ Customer Distribution by Store Type (Clustered Bar Chart)
- Store Type A attracted 56% of all customers (313.8M), while Type B only 3.4% (19M).

---

### 🔮 Forecasting Analysis

#### 📈 6-Month Sales Forecast (Forecast Matrix)
- Recurring seasonality observed, including annual March peaks.

---

<h2 id="sales_dashboard_analysis_business_recommendations"> 📊 Sales Dashboard Analysis – Business Recommendations </h2>

## 📅 Sales Overview Page

### 📈 Total Sales by Month (Line Chart)
- Replicate March’s promotional strategies in September to lift sales performance.
- Maintain operational consistency during stable months (Jan–Apr–May) to preserve margin.

### 🏬 Total Sales by StoreType (Stacked Bar Chart)
- Standardize and scale Store Type A's best practices across other formats.
- Audit underperforming store types for layout, staffing, and assortment gaps.

### 🌸 Sales and Customers by Season (Clustered Bar Chart)
- Introduce spring-themed promotions and extended store hours.
- Prioritize inventory preparation and staffing during spring holidays.

---

<h2 id="sales_analysis"> 📦 Sales Analysis </h2>

### 📆 Day of Week vs. Total Sales (Line or Bar Chart)
- Pilot “Sunday Specials” or family events to improve weekend foot traffic.
- Consider optimizing Sunday staffing based on traffic patterns.

### 🎯 Total Sales by Year and Promo (Clustered Column Chart)
- Implement POS-level tagging for promotions to track ROI more effectively.
- Pilot and measure high-impact promotional strategies before wider rollout.

---

## 🏆 Store Performance Analysis

### 🥇 Top vs. Bottom 5 Stores (Donut Charts)
- Deploy performance improvement teams to underperforming stores.
- Create an incentive and recognition program for top performers.

### 🧭 Sales by Store and Season (Matrix)
- Empower local managers to customize seasonal merchandising and promotions.

---

## 👥 Customer Behavior Analysis

### 🛍️ Customer Distribution by Store Type (Clustered Bar Chart)
- Investigate customer preferences and layout effectiveness in Type A.
- Redesign Type B stores and gather customer feedback via exit surveys.

---

## 🔮 Forecasting Analysis

### 📈 6-Month Sales Forecast (Forecast Matrix)
- Use forecast trends for seasonal inventory planning and logistics.
- Consider dynamic pricing or bundled offers during expected low-sales periods.

--- 

<h2 id="insights_key_findings"> ✅ Insights & Key Findings </h2>

- 📌 Sales show strong seasonal patterns, especially around holidays like Easter and peak months such as March.
- 📌 Store Type A is the dominant contributor to both sales and customer traffic; Store Type B performs poorly.
- 📌 Sundays consistently underperform, while weekdays show steady sales performance.
- 📌 Top 5 stores significantly outperform bottom 5, indicating location or operational gaps.
- 📌 Customer behavior favors certain store types and varies by season.
- 📌 Forecasting shows clear recurring annual patterns that can guide strategic planning.
- 📌 Missing values and outliers, if not treated, could affect dashboard accuracy and forecasting models.

---

<h2 id="business_recommendations"> ✅ Business Recommendations </h2>

- 📌 Replicate successful promotional strategies from March in lower-performing months like September.
- 📌 Prioritize promotional campaigns during weekends and Q4 to maximize ROI.
- 📌 Review and restructure underperforming stores through diagnostics and targeted interventions.
- 📌 Standardize Store Type A’s successful practices across other store types.
- 📌 Improve Sunday sales through themed events or operational adjustments.
- 📌 Optimize staffing plans around high-traffic periods, especially Fridays and seasonal peaks.
- 📌 Segment stores based on performance and adapt stock/inventory strategies accordingly.
- 📌 Prepare inventory and marketing ahead of spring and holiday seasons to meet increased demand.
- 📌 Implement POS-level promotion tagging to better track ROI and plan future campaigns.
- 📌 Use forecast insights to guide dynamic pricing, bundling, and logistics ahead of demand cycles.

---

<h3 id="Visual_types_summary"> 🧮 Visual Types Summary </h3>

| Visual Type         | Use Case                                     |
|---------------------|----------------------------------------------|
| Line Chart          | Time-based trend tracking                    |
| Stacked Bar Chart   | Comparing components within groups           |
| Clustered Column    | Direct category comparison                   |
| Scatter Plot        | Correlation (Sales vs. Customers)            |
| Matrix Table        | Multidimensional comparison (Store × Season) |
| Slicers             | Dynamic filtering by date & time             |

---

<h2 id="powerBI_report_previews"> 📷 PowerBI Report Previews </h2>
Below are preview images of the Power BI reports developed for this project. They illustrate key visualizations, insights, and the overall layout of the report. 
Feel free to explore the visuals to understand the data story.

| Sales Overview | Sales Analysis |
|----------------|----------------|
| ![Sales Overview](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/report_screenshots/sales_overview_reports.PNG) | ![Sales Analysis](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/report_screenshots/sales_analysis_reports.PNG) |

| Store Performance | Customer Behavior | Forecasting |
|-------------------|-------------------|-------------|
| ![Store Performance](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/report_screenshots/store_performance_analysis_reports.PNG) | ![Customer Behavior](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/report_screenshots/customer_behavior_reports.PNG) | ![Forecasting](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/report_screenshots/forecasting_reports.PNG) |

---

### Download the Full Power BI Report as PDF

You can **download the complete Power BI report** in PDF format:  
**[Download PDF Report](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/reports/rossmann_sale_reports.pdf)**

---

<h1 id="dAX_overview_for_rossmann_store_sales_analysis"> DAX Overview for Rossmann Store Sales Analysis </h1>

**Data Analysis Expressions (DAX)** are formulas used in Power BI to create dynamic measures and calculated columns, enabling sophisticated data analysis and reporting.

In this project, DAX was essential for calculating key metrics such as total sales, customer counts, and promotional impacts, which are visualized in our Power BI dashboard.

<h2 id="key_dAX_measures"> Key DAX Measures </h2>
Here are some of the core measures used:

- **Total Sales:** Calculates the sum of all sales amount.
```sql
Total Sales = SUM(Sales[Sales])
```
- **Total Customers:** Counts the total number of customers.
```sql
Customers Count = CALCULATE(COUNT(Sales[Customers]),ALLEXCEPT(Sales,Sales[Day of Week]))
```
- **Average Daily Sales:** Computes the average sales per day.
```sql
Average Daily Sales = AVERAGEX(VALUES(Sales[Date]),CALCULATE(SUM(Sales[Sales])))
```
- **Sales with Promotion:** Sum of sales made during promotional days.
```sql
Sales With Promo = CALCULATE(SUM(Sales[Sales]), Sales[Promo] = 1)
```

*Note:* For a complete list of all DAX measures and calculated columns, [click here to see the full formulas](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/dax/dax_formulas.txt).

---

<h2 id="conclusions"> Conclusions </h2>
This project successfully demonstrated the value of integrated SQL and Python workflows for large-scale retail sales analysis. 
The models and insights support business strategies to enhance sales performance, optimize stock levels, and improve customer satisfaction.

---

<h2 id="Recommendations"> Recommendations </h2>
- Implement targeted marketing during peak seasons identified.
- Use the sales forecast in inventory planning and staffing.
- Continue monitoring external factors like holidays and competitions.
- Regularly update models with new data for ongoing accuracy.

---

<h2 id="export_documentation"> Export & Documentation </h2>
- All code, queries, and analysis documented in Jupyter notebooks.
- Data stored securely with links to external datasets for large files.
- Visualization dashboards created in Power BI for executive reporting.

---

<h2 id="installation"> ⚙️ Installation </h2>

To set up the project environment on your local machine, follow these steps:

### ✅ Step 1: Clone the Repository

```bash
git clone https://github.com/rotimi2020/Data-Analyst-Portfolio.git
cd Data-Analyst-Portfolio/rossmann_store_sales_analysis
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

> This project is part of my Data Analytics Portfolio. It demonstrates business intelligence, forecasting, and machine learning skills using real-world data and modern tools.

---







