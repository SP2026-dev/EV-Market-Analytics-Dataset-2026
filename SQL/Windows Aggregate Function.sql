--------------------------------------------- Windows Aggregate Function --------------------------------------------------------------------------------------------
-- Q) Show total sales along with each car record. (Use - Window Function Aggregate SUM())
SELECT brand,model,annual_sales_units,
SUM(annual_sales_units) OVER() AS total_market_sales
FROM EV_Market_Analytics_Dataset;

-- Q) Show average EV price along with each car. (Use - Window Function Aggregate AVG())
SELECT brand,model,Price_USD,
ROUND(AVG(Price_USD) OVER(),2) AS overall_avg_price
FROM EV_Market_Analytics_Dataset;

-- Q) Count total number of EV cars. (Use - Window Function Aggregate COUNT())
SELECT brand,model,
COUNT(*) OVER() AS total_ev_cars
FROM EV_Market_Analytics_Dataset;

-- Q) Find minimum EV price in dataset. (Use - Window Function Aggregate MIN())
SELECT brand,model,Price_USD,
MIN(Price_USD) OVER() AS minimum_price
FROM  EV_Market_Analytics_Dataset;

-- Q) Find highest top speed in dataset. (Use - Window Function Aggregate MAX())
SELECT brand,model,top_speed_mph,
MAX(top_speed_mph) OVER() AS highest_speed
FROM EV_Market_Analytics_Dataset;