SELECT 
    city,
    category,
    ROUND(SUM(amount_usd)::numeric, 2) AS total_spending
FROM patagonia_spending
GROUP BY city, category
ORDER BY total_spending DESC

