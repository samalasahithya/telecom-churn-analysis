-- Query 5: Average Charges - Churned vs Retained
SELECT 
    churn,
    ROUND(AVG(monthlycharges), 2) AS avg_monthly_charges,
    ROUND(AVG(tenure), 2) AS avg_tenure_months,
    COUNT(*) AS customer_count
FROM customer_churn
GROUP BY churn;
-- Result: Churned paid $74.44/month, stayed only 21 months