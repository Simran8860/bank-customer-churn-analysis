CREATE OR REPLACE VIEW churn_model_view AS
SELECT
    CLIENTNUM,
    Customer_Age,
    Gender,
    Dependent_count,
    Education_Level,
    Marital_Status,
    Income_Category,
    Card_Category,
    Months_on_book,
    Total_Relationship_Count,
    Months_Inactive_12_mon,
    Contacts_Count_12_mon,
    Credit_Limit,
    Total_Revolving_Bal,
    Total_Trans_Amt,
    Total_Trans_Ct,
    Avg_Utilization_Ratio,

    CASE 
        WHEN Attrition_Flag = 'Attrited Customer' THEN 1
        ELSE 0
    END AS churn_flag

FROM bank_churn_clean;

SELECT * FROM churn_model_view LIMIT 5;