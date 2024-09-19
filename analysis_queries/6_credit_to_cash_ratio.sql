-- Finding the ratio of credit to cash used in each city to 
-- determine which cities to bring more cash to

WITH credit_amount AS (
    SELECT
        city,
        ROUND(SUM(amount_usd)::numeric, 2) AS credit
    FROM patagonia_spending
    WHERE transaction_type = 'credit'
    GROUP BY city
),

cash_amount AS (
    SELECT
        city,
        ROUND(SUM(amount_usd)::numeric, 2) AS cash
    FROM patagonia_spending
    WHERE transaction_type = 'cash'
    GROUP BY city
)

SELECT 
    credit_amount.city,
    credit,
    cash,
    ROUND(credit/cash, 2) credit_to_cash_ratio
FROM credit_amount
LEFT JOIN cash_amount
    ON credit_amount.city = cash_amount.city
ORDER BY credit_to_cash_ratio