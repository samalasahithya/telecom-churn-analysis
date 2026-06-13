-- Query 3: Churn Rate by Internet Service
SELECT 
    internetservice,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
    ) AS churn_rate_percentage
FROM customer_churn
GROUP BY internetservice
ORDER BY churn_rate_percentage DESC;
-- Result: Fiber optic = 41.89% (highest churn)