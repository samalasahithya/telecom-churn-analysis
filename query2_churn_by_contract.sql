-- Query 2: Churn Rate by Contract Type
SELECT 
    contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
    ) AS churn_rate_percentage
FROM customer_churn
GROUP BY contract
ORDER BY churn_rate_percentage DESC;
-- Result: Month-to-month = 42.71% (highest risk)