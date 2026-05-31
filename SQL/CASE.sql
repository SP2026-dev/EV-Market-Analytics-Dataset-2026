--------------------------------------------- CASE --------------------------------------------------------------------------------------------
-- Q) Categorize EV cars based on price. (Use - Simple CASE)
SELECT brand,model,Price_USD,
       CASE
           WHEN Price_USD < 40000 THEN 'Budget'
           WHEN Price_USD BETWEEN 40000 AND 80000 THEN 'Mid Range'
           ELSE 'Premium'
       END AS price_category
FROM EV_Market_Analytics_Dataset;

-- Q) Show sales performance category for each brand. (Use - CASE + Aggregate Function SUM())
SELECT brand,SUM(annual_sales_units) AS total_sales,
       CASE
           WHEN SUM(annual_sales_units) > 500000 THEN 'High Sales'
           WHEN SUM(annual_sales_units) BETWEEN 200000 AND 500000 THEN 'Medium Sales'
           ELSE 'Low Sales'
       END AS sales_status
FROM EV_Market_Analytics_Dataset
GROUP BY brand;

-- Q) Sort cars based on custom priority. ((Use - CASE + ORDER BY)
SELECT brand,model,body_type
FROM EV_Market_Analytics_Dataset
ORDER BY
CASE
    WHEN body_type = 'SUV' THEN 1
    WHEN body_type = 'Sedan' THEN 2
    ELSE 3
END;

-- Q) Create performance category using speed and range. (Use - CASE with Multiple Conditions)
SELECT brand,model,top_speed_mph,range_miles,
       CASE
           WHEN top_speed_mph > 180
                AND range_miles > 350
                THEN 'Performance EV'

           WHEN top_speed_mph > 140
                AND range_miles > 250
                THEN 'Balanced EV'

           ELSE 'Regular EV'
       END AS performance_category
FROM EV_Market_Analytics_Dataset;

-- Q) Compare car price with overall average price. (Use - CASE + SUBQUERY)
SELECT brand,model,Price_USD,
       CASE
           WHEN Price_USD >
                (
                    SELECT AVG(Price_USD)
                    FROM EV_Market_Analytics_Dataset
                )
                THEN 'Above Average'

           ELSE 'Below Average'
       END AS price_comparison

FROM EV_Market_Analytics_Dataset;