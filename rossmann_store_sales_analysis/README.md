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

## Problem Definition
Rossmann, a major drugstore chain, aims to optimize its inventory and 
staffing by accurately forecasting daily sales at individual stores. 
Challenges include handling large datasets, missing data, outliers, 
and complex patterns due to promotions, holidays, and store-specific factors.

---

## Dataset
**Source:** [Kaggle - Rossmann Store Sales](https://www.kaggle.com/competitions/rossmann-store-sales/data)

---

## Files Included
- `train.csv`: Historical sales data (~1 million rows, approximately 36.2 MB)
- `test.csv`: Recent or upcoming sales data (~41k rows)
- `store.csv`: Store information (~1,115 rows)
- `sample_submission.csv`: Format template for submissions

---

## File Sizes
| File                 | Approximate Size  | Description                                           |
|---------------------|-------------------|-------------------------------------------------------|
| `train.csv`        | 36.2 MB           | Contains daily store sales and transaction details  |
| `test.csv`         | 2 MB              | Data for prediction (future sales)                   |
| `store.csv`        | < 1 MB            | Static store-specific attributes                     |
| `sample_submission.csv` | < 1 KB         | Example submission format                            |

---

## Important Notes
- Due to size constraints (GitHub maximum upload size is 25MB), the `train.csv` file cannot be directly uploaded here since it exceeds this limit.
- The dataset has been imported into SQL Server Management Studio (SSMS) for data cleaning and exploratory analysis.
- You can download the datasets directly from Kaggle using their platform or API.

---

## Usage
- Use this dataset for predictive modeling, data analysis, or feature engineering.
- Refer to `store.csv` for static store info to enhance your models.

---

### Files
- `train.csv`: Historical sales data (~1 million rows)
- `test.csv`: Data for prediction (~41k rows)
- `store.csv`: Store-specific info (~1,115 stores)
- `sample_submission.csv`: Sample submission format

### Key Data Fields
- **Id:** Unique ID for each store-date pair (test set)
- **Store:** Store identifier
- **Sales:** Target variable — daily sales
- **Customers:** Number of customers each day
- **Open:** Store open indicator (0 or 1)
- **StateHoliday:** Holidays affecting store operations
- **SchoolHoliday:** Impact of school holidays
- **StoreType:** Type classification
- **Assortment:** Product assortment level
- **CompetitionDistance:** Distance to nearest competitor
- **Promo, Promo2:** Promotion indicators
- **Date:** Observation date


## 🧪 Feature Engineering

- **Date Features**: Year, Month, Day, IsWeekend, Season
- **Lag Features**: `Sales_Lag_7`, `Sales_Lag_30`
- **Moving Averages**: `Sales_MA_7`
- **Categorical Encoding**: `StoreType`, `Assortment`
- **Holiday & Promo Effects`

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
