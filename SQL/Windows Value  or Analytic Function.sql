--------------------------------------------- Windows Value / Analytic Function --------------------------------------------------------------------------------------------
-- Q) Show previous EV price compared to current price. (Use - LAG())
SELECT brand,model,Price_USD,
LAG(Price_USD) OVER(ORDER BY Price_USD) AS previous_price
FROM EV_Market_Analytics_Dataset;

-- Q) Show next EV price. (Use - LEAD())
SELECT brand,model,Price_USD,
LEAD(Price_USD) OVER(ORDER BY Price_USD) AS next_price
FROM EV_Market_Analytics_Dataset;

-- Q) Show highest priced EV car in every row. (Use - FIRST_VALUE() Function)
SELECT brand,model,Price_USD,
FIRST_VALUE(model) OVER(ORDER BY Price_USD DESC) AS highest_priced_model
FROM EV_Market_Analytics_Dataset;

-- Q) Show lowest priced EV model using LAST_VALUE(). (Use - LAST_VALUE())
SELECT brand,model,Price_USD,
LAST_VALUE(model) OVER(ORDER BY Price_USD ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS highest_price_model
FROM EV_Market_Analytics_Dataset;