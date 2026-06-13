-- Query 6: Churn Rate by Payment Method
SELECT 
    paymentmethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
    ) AS churn_rate_percentage
FROM customer_churn
GROUP BY paymentmethod
ORDER BY churn_rate_percentage ASC;
-- Result: Bank transfer auto-pay = 13.98% (lowest risk)