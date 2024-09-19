--total credit vs cash usage
SELECT
    transaction_type,
    SUM(amount_usd::numeric)
FROM patagonia_spending
GROUP BY transaction_type;

