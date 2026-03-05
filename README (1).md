# Bank Customer Churn Risk Analysis & Dashboard

## Overview

This project analyzes bank customer behavior to identify churn patterns
and predict customers who are likely to leave the bank.\
The project demonstrates an **end‑to‑end data analytics workflow** using
**SQL, Python (Machine Learning), and Power BI**.

The final output is a **Customer Churn Risk Dashboard** that helps
business teams identify high‑risk customers and take proactive retention
actions.

------------------------------------------------------------------------

## Tech Stack

-   **SQL (MySQL Workbench)** -- Data cleaning and exploratory analysis
-   **Python (Jupyter Notebook)** -- Data preprocessing and churn
    prediction model
-   **Scikit‑learn** -- Logistic Regression model
-   **Power BI** -- Interactive business dashboard
-   **Pandas / NumPy** -- Data handling and transformation

------------------------------------------------------------------------

## Project Workflow

### 1. Data Preparation (SQL)

-   Imported banking dataset into MySQL
-   Cleaned and structured the data
-   Created analysis views
-   Performed exploratory queries to understand churn drivers

Key KPIs identified: - Churn Rate ≈ **16%** - Highest churn age group:
**41--50** - Higher churn among **low income customers** - **Low
activity users** more likely to churn

------------------------------------------------------------------------

### 2. Machine Learning Model (Python)

Steps performed in Jupyter Notebook:

1.  Loaded cleaned dataset
2.  Feature engineering and encoding
3.  Train-test split
4.  Feature scaling
5.  Logistic Regression model training
6.  Model evaluation

Model performance:

  Metric     Value
  ---------- --------------
  Accuracy   \~0.83--0.89
  ROC-AUC    **0.90+**

The model generates a **churn probability score** for every customer.

------------------------------------------------------------------------

### 3. Risk Segmentation

Customers were segmented into:

-   **Low Risk**
-   **Medium Risk**
-   **High Risk**

based on predicted churn probability.

This helps prioritize retention strategies.

------------------------------------------------------------------------

### 4. Power BI Dashboard

The dashboard visualizes key churn insights:

**KPIs** - Total Customers - Churned Customers - Average Churn Risk

**Churn Drivers** - Churn by Income Category - Churn Rate by Card Type -
Churn by Gender - Churn by Inactivity

**ML Insight** - Customer Risk Segmentation

------------------------------------------------------------------------

## Key Business Insights

-   Customers inactive for multiple months show the **highest churn
    probability**
-   **Entry-level card holders** show higher churn concentration
-   **Lower income segments** display relatively higher churn risk
-   \~13% of customers fall into the **high-risk segment**

These insights can help banks design targeted **retention campaigns**.

------------------------------------------------------------------------

## Files in This Repository

    SQL/
        churn_analysis.sql

    Python/
        bank_churn_model.ipynb

    Data/
        bank_churn_scored.csv

    PowerBI/
        churn_dashboard.pbix

------------------------------------------------------------------------

## Author

**Simran Tyagi**\
Data Analytics \| SQL \| Python \| Power BI
