/*
I realized i accidentally duplicated the data when importing it.
I tried to find a work around solution where i could drop duplicate data.
But i realized that a certain number of transactions did occur twice, therefore
dropping all duplicates would not result in having the original dataset.
I decide to drop the whole table and reload the data into the database.

-- Seeing how many rows there should be (185)
SELECT COUNT(*)/2
FROM patagonia_spending;
 
-- Seeing how many duplicate transactions there are (182)
SELECT 
    transaction_date,
    day_of_week,city,
    transaction_type,
    category,
    amount_USD,
    COUNT(*) AS cnt
FROM patagonia_spending
GROUP BY 
    transaction_date,
    day_of_week,city,
    transaction_type,
    category,
    amount_USD
HAVING COUNT(*) > 2

-- Looking at which transactions have greater than a 2 count
--These transactions were purposefull duplicates in the original dataset, b/c they actually happened twice
SELECT 
    transaction_date,
    day_of_week,city,
    transaction_type,
    category,
    amount_USD,
    COUNT(*) AS cnt
FROM patagonia_spending
GROUP BY 
    transaction_date,
    day_of_week,city,
    transaction_type,
    category,
    amount_USD
HAVING COUNT(*) > 2

-- Dropping initial table due to load
DROP TABLE patagonia_spending
  */ 