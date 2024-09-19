--the total spend, and average daily spend for each city visited
WITH total_usd AS (
    SELECT 
        city,
        ROUND(SUM(amount_usd)::numeric, 2) AS total_spend
    FROM patagonia_spending
    GROUP BY city
    ORDER BY SUM(amount_usd) DESC
    )

SELECT
    tu.city,
    tu.total_spend,
    ROUND(tu.total_spend/pd.days, 2) AS daily_spend,
    pd.days
FROM total_usd tu 
JOIN patagonia_days pd 
    ON tu.city = pd.city
ORDER BY daily_spend DESC