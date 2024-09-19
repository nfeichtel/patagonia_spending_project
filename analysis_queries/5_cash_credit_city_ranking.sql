-- Ranking where we spent the most cash and credit

SELECT
    city,
    transaction_type,
    ROUND(SUM(amount_usd::numeric), 2) AS total_spending,
    RANK() OVER(PARTITION BY transaction_type ORDER BY SUM(amount_usd) DESC) AS spending_rank
FROM patagonia_spending
GROUP BY 
    city, 
    transaction_type;

SELECT
    transaction_type,
    ROUND(SUM(amount_usd)::numeric, 2) AS total_usd,
    
FROM patagonia_spending
GROUP BY transaction_type;