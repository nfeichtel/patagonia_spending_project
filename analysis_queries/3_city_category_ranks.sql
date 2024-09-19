--Ranking the most expensive city/category combinations
SELECT 
    city,
    category,
    ROUND(SUM(amount_usd)::numeric, 2) AS total_spending,
    RANK() OVER(ORDER BY ROUND(SUM(amount_usd)::numeric, 2) DESC) AS city_cat_rank
FROM patagonia_spending
GROUP BY 
    city, 
    category


