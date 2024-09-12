-- Ranking where we spent the most cash and credit

SELECT
    city,
    transaction_type,
    SUM(amount_usd),
    RANK() OVER(PARTITION BY transaction_type ORDER BY SUM(amount_usd) DESC)
FROM patagonia_spending
GROUP BY 
    city, 
    transaction_type