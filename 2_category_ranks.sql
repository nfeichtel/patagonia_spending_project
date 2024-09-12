--Ranking each category by total spending and calculating the percentage of total spend that each category makes up 
SELECT
    category,
    SUM(amount_usd::numeric) AS total_spending,
    ROUND(SUM(amount_usd::numeric) / 
        (SELECT SUM(amount_usd::numeric)
        FROM patagonia_spending) * 100 , 2) AS percent_of_spending,
    RANK() OVER(ORDER BY SUM(amount_usd::numeric) DESC) category_rank
FROM patagonia_spending
GROUP BY category
