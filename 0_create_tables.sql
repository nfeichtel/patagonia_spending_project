--Create Tables

CREATE TABLE patagonia_spending
    (transaction_date DATE,
    day_of_week VARCHAR(255),
    city VARCHAR(255),
    transaction_type VARCHAR(255),
    category VARCHAR(255),
    amount_USD FLOAT
    );

CREATE TABLE patagonia_days
    (city VARCHAR(255),
    days INT
    );

INSERT INTO patagonia_days(city, days)
VALUES
    ('bariloche', 6),
    ('bolson', 5),
    ('chalten', 5),
    ('calafate', 3),
    ('puerto natales', 2),
    ('ushuaia', 7),
    ('punta arenas', 2);
