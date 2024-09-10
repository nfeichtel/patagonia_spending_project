-- Load data into tables
--\copy patagonia_spending FROM '/Users/nickfeichtel/Desktop/Portfolio_Projects/patagonia_spending_project/expenses_patagonia.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
COPY patagonia_spending
FROM '/Users/nickfeichtel/Desktop/Portfolio_Projects/patagonia_spending_project/expenses_patagonia.csv'
DELIMITER ',' CSV HEADER;

