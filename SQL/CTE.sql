--------------------------------------------- CTE -------------------------------------------------------------------------------------------------
-- Q) Create a CTE to show expensive EV cars. (Use - Simple CTE)
WITH expensive_cars AS
(
    SELECT brand,model,Price_USD
    FROM EV_Market_Analytics_Dataset
    WHERE Price_USD > 80000
)
SELECT * FROM expensive_cars;

-- Q) Find total sales by brand using CTE. (Use - CTE + Aggregate Function SUM())
WITH brand_sales AS
(
    SELECT brand,SUM(annual_sales_units) AS total_sales
    FROM EV_Market_Analytics_Dataset
    GROUP BY brand
)
SELECT * FROM brand_sales;

-- Q) Find brands whose average battery capacity is above 90. (Use - CTE + Aggregate Function AVG())
WITH avg_battery AS
(
    SELECT brand,ROUND(AVG(Battery_Capacity),2) AS avg_capacity
    FROM EV_Market_Analytics_Dataset
    GROUP BY brand
)

SELECT * FROM avg_battery
WHERE avg_capacity > 90;

-- Q) Find average price and average range together. (Use - Multiple CTE)
WITH avg_price AS
(
    SELECT ROUND(AVG(Price_USD),2) AS overall_avg_price FROM EV_Market_Analytics_Dataset
),

avg_range AS
(
    SELECT ROUND(AVG(range_miles),2) AS overall_avg_range
    FROM EV_Market_Analytics_Dataset
)

SELECT * FROM avg_price, avg_range;

-- Q) Find brands with above average sales. (Use - Nested CTE)
WITH brand_sales AS
(
    SELECT brand,SUM(annual_sales_units) AS total_sales
    FROM EV_Market_Analytics_Dataset
    GROUP BY brand
),

avg_sales AS
(
    SELECT AVG(total_sales) AS avg_brand_sales
    FROM brand_sales
)

SELECT *
FROM brand_sales
WHERE total_sales >
(
    SELECT avg_brand_sales
    FROM avg_sales
);