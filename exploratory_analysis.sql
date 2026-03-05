USE banking_churn;

SELECT *
FROM bank_churn_clean
LIMIT 5;
USE banking_churn;

SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE 
            WHEN Attrition_Flag = 'Attrited Customer' 
            THEN 1 
            ELSE 0 
        END) AS churned_customers,
    ROUND(
        SUM(CASE 
                WHEN Attrition_Flag = 'Attrited Customer' 
                THEN 1 
                ELSE 0 
            END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent
FROM bank_churn_clean;
SELECT 
    CASE 
        WHEN Customer_Age < 30 THEN 'Under 30'
        WHEN Customer_Age BETWEEN 30 AND 40 THEN '30-40'
        WHEN Customer_Age BETWEEN 41 AND 50 THEN '41-50'
        ELSE '50+'
    END AS age_group,

    COUNT(*) AS total_customers,

    SUM(CASE 
            WHEN Attrition_Flag = 'Attrited Customer' 
            THEN 1 
            ELSE 0 
        END) AS churned_customers,

    ROUND(
        SUM(CASE 
                WHEN Attrition_Flag = 'Attrited Customer' 
                THEN 1 
                ELSE 0 
            END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent

FROM bank_churn_clean
GROUP BY age_group
ORDER BY churn_rate_percent DESC;

SELECT 
    CASE 
        WHEN Income_Category LIKE 'Less than%' THEN 'Low Income'
        WHEN Income_Category LIKE '$40K%' OR Income_Category LIKE '$60K%' THEN 'Mid Income'
        ELSE 'High Income'
    END AS income_band,

    COUNT(*) AS total_customers,

    SUM(CASE 
            WHEN Attrition_Flag = 'Attrited Customer' 
            THEN 1 
            ELSE 0 
        END) AS churned_customers,

    ROUND(
        SUM(CASE 
                WHEN Attrition_Flag = 'Attrited Customer' 
                THEN 1 
                ELSE 0 
            END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent

FROM bank_churn_clean
GROUP BY income_band
ORDER BY churn_rate_percent DESC;

SELECT 
    Card_Category,
    COUNT(*) AS total_customers,
    
    SUM(CASE 
            WHEN Attrition_Flag = 'Attrited Customer' 
            THEN 1 
            ELSE 0 
        END) AS churned_customers,

    ROUND(
        SUM(CASE 
                WHEN Attrition_Flag = 'Attrited Customer' 
                THEN 1 
                ELSE 0 
            END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent

FROM bank_churn_clean
GROUP BY Card_Category
ORDER BY churn_rate_percent DESC;

SELECT 
    CASE 
        WHEN Total_Trans_Ct < 40 THEN 'Low Activity'
        WHEN Total_Trans_Ct BETWEEN 40 AND 80 THEN 'Medium Activity'
        ELSE 'High Activity'
    END AS activity_level,

    COUNT(*) AS total_customers,

    SUM(CASE 
            WHEN Attrition_Flag = 'Attrited Customer' 
            THEN 1 
            ELSE 0 
        END) AS churned_customers,

    ROUND(
        SUM(CASE 
                WHEN Attrition_Flag = 'Attrited Customer' 
                THEN 1 
                ELSE 0 
            END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate_percent

FROM bank_churn_clean
GROUP BY activity_level
ORDER BY churn_rate_percent DESC;

SELECT 
    SUM(CASE 
            WHEN Attrition_Flag = 'Attrited Customer' 
            THEN Credit_Limit 
            ELSE 0 
        END) AS total_credit_limit_lost
FROM bank_churn_clean;