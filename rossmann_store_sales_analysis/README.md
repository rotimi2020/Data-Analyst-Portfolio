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
## 📌 Problem Definition
Rossmann, a major drugstore chain, aims to optimize its inventory and staffing by accurately forecasting daily sales at individual stores. The challenge involves managing large datasets, addressing missing data and outliers, and capturing complex sales patterns influenced by promotions, holidays, and store-specific factors. Effective forecasting will help Rossmann improve operational efficiency and customer satisfaction.

---

## 🎯 Problem Statement

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

## 🧾 Python Overview
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
# Model Performance Comparison on the Rossmann Dataset

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

## 📊 Power BI Dashboard – Rossmann Store Sales Forecasting

This Power BI report provides comprehensive sales and customer analytics for Rossmann stores. It consists of 5 pages focusing on sales trends, promotional impact, customer behavior, and forecasting, enabling business decisions on staffing, inventory, and marketing.

---

### 🧭 Report Structure

| Page # | Title                     | Description                                                       |
|--------|---------------------------|-------------------------------------------------------------------|
| 1️⃣     | Sales Overview            | General trends of sales by time and store type                    |
| 2️⃣     | Sales Analysis            | Promo-based performance & weekday sales trends                    |
| 3️⃣     | Store Performance         | Store-level & seasonal performance comparison                     |
| 4️⃣     | Customer Behavior         | Traffic analysis by school holidays and store average             |
| 5️⃣     | Forecasting Analysis      | Historical sales + average metrics for forecasting preparation    |

---

### 🗂 Page Details & Visuals

#### 1️⃣ Sales Overview

- 📈 Line Chart: Total Sales by Year, Month, and Day  
- 📊 Stacked Bar Chart: Sales by Store Type  
- 🔘 Scatter Plot: Customers vs. Sales  

🎯 Purpose: Understand overall sales trends and relationship between footfall and revenue.

---
### 📂 Page-by-Page Report Breakdown

#### 1️⃣ Sales Overview Page

📌 Visualizations:
- 📈 Line Chart: Total Sales by Year, Month, and Day
- 📈 Stacked Bar Chart: Total Sales by Store Type
- 🔘 Scatter Chart: Customers vs. Sales Relationship

🌟 Purpose:
- Understand overall sales growth over time.
- Identify which store types generate the most revenue.
- Detect correlation between customer volume and sales output.

---
#### 2️⃣ Sales Analysis

- 📈 Line Chart: Total Sales by Year and Month  
- 📊 Stacked Bar Chart: Total Sales by Day of the Week  
- 📊 Line & Clustered Column Chart: Sales by Date and Promo  
- 📅 Date Slicer  

🎯 Purpose: Evaluate time patterns and promotion-driven sales changes.

---

#### 3️⃣ Store Performance Analysis

- 📊 Clustered Bar Chart: Total Sales by Store  
- 🧮 Matrix: Store in Rows, Season in Columns, Sales in Values  

🎯 Purpose: Spot top/low performing stores across seasons.

---

#### 4️⃣ Customer Behavior

- 📊 Clustered Column Chart: Customers by School Holiday  
- 📊 Clustered Bar Chart: Customer Count by Day of Week  
- 📈 Line Chart: Average Customers by Store  

🎯 Purpose: Track customer visit patterns and effects of school breaks.

---

#### 5️⃣ Forecasting Analysis

- 📈 Line Chart: Total Sales by Year and Month  
- 🧮 Matrix: Date in Rows, Values – Total Sales, Avg. Sales, Avg. Sales/Customer  
- 📅 Date Slicer  

🎯 Purpose: Build foundation for time-based forecasting and KPI monitoring.

---

### 💡 Key Insights

- ✅ Promotions increase daily sales by 18–25%.  
- ✅ Store Type A leads in revenue share across all time frames.  
- ✅ Sales peak on Fridays and Saturdays; Sundays show lowest activity.  
- ✅ Slight customer dip (~8%) during school holidays.  
- ✅ Q4 is consistently the strongest sales quarter.  
- ✅ Some stores underperform consistently; require reassessment or support.

---

### ✅ Business Recommendations

- 📌 Focus promotions on weekends and Q4 to maximize ROI.  
- 📌 Investigate underperforming stores for corrective actions.  
- 📌 Plan staffing for high-traffic periods (Fridays, Q4).  
- 📌 Optimize inventory ahead of holidays and seasonal peaks.  
- 📌 Segment stores by performance for localized marketing and stock plans.

---

### 🧮 Visual Types Summary

| Visual Type         | Use Case                                     |
|---------------------|----------------------------------------------|
| Line Chart          | Time-based trend tracking                    |
| Stacked Bar Chart   | Comparing components within groups           |
| Clustered Column    | Direct category comparison                   |
| Scatter Plot        | Correlation (Sales vs. Customers)            |
| Matrix Table        | Multidimensional comparison (Store × Season) |
| Slicers             | Dynamic filtering by date & time             |

---

### 📸 Suggested Screenshot Sections

Include visuals in your README:

## 📷 Dashboard Previews

| Sales Overview | Sales Analysis |
|----------------|----------------|
| ![Sales Overview](images/sales_overview.png) | ![Sales Analysis](images/sales_analysis.png) |

| Store Performance | Customer Behavior | Forecasting |
|-------------------|-------------------|-------------|
| ![Store Performance](images/store_performance.png) | ![Customer Behavior](images/customer_behavior.png) | ![Forecasting](images/forecasting.png) |

---

📌 Tip: Place all screenshots in a /images folder in your GitHub repository.

---

# DAX Overview for Rossmann Store Sales Analysis

**Data Analysis Expressions (DAX)** are formulas used in Power BI to create dynamic measures and calculated columns, enabling sophisticated data analysis and reporting.

In this project, DAX was essential for calculating key metrics such as total sales, customer counts, and promotional impacts, which are visualized in our Power BI dashboard.

## Key DAX Measures
Here are some of the core measures used:

- **Total Sales:** Calculates the sum of all sales amount.
- **Total Customers:** Counts the total number of customers.
- **Average Daily Sales:** Computes the average sales per day.
- **Sales with Promotion:** Sum of sales made during promotional days.

*Note:* For a complete list of all DAX measures and calculated columns, [click here to see the full formulas](https://github.com/rotimi2020/Data-Analyst-Portfolio/blob/main/rossmann_store_sales_analysis/dax/dax_formulas.txt).

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
