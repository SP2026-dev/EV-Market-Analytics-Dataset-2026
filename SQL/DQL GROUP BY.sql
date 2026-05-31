--------------------------------------------- DQL GROUP BY --------------------------------------------------------------------------------------------
-- Q) Display all columns from the dataset. (Use - SELECT , FROM)
SELECT * FROM EV_Market_Analytics_Dataset;

-- Q) Show all EV cars from the US. (Use - WHERE)
SELECT brand, model, country_of_origin
FROM EV_Market_Analytics_Dataset
WHERE country_of_origin = 'US';

-- Q) Sort cars by customer rating in ascending order. (Use - ORDER BY ASC)
SELECT brand, model, customer_rating
FROM EV_Market_Analytics_Dataset
ORDER BY customer_rating ASC;

-- Q) Sort cars by customer rating in ascending order. (Use - ORDER BY DESC)
SELECT brand, model, customer_rating
FROM EV_Market_Analytics_Dataset
ORDER BY customer_rating DESC;

-- Q) Find total annual sales by brand. (Use - GROUP BY)
SELECT brand,SUM(annual_sales_units) AS total_sales
FROM  EV_Market_Analytics_Dataset
GROUP BY brand;

-- Q) Show brands having total sales greater than 500000. (Use - HAVING Clause)
SELECT brand,SUM(annual_sales_units) AS total_sales
FROM EV_Market_Analytics_Dataset
GROUP BY brand
HAVING SUM(annual_sales_units) > 500000;

-- Q) Show unique body types available. (Use - DISTINCT)
SELECT DISTINCT body_type FROM EV_Market_Analytics_Dataset;

-- Q) Show first 5 rows from the dataset. (Use - LIMIT)
SELECT * FROM EV_Market_Analytics_Dataset
LIMIT 5;

-- Q) Skip first 10 rows and display next 5 rows. (Use - OFFSET)
SELECT * FROM EV_Market_Analytics_Dataset
LIMIT 5 OFFSET 10;

-- Q) Find EV cars priced between 50000 and 100000. (Use - BETWEEN)
SELECT brand, model, Price_USD
FROM EV_Market_Analytics_Dataset
WHERE Price_USD BETWEEN 50000 AND 100000;

-- Q) Find models starting with 'M'. (Use - LIKE M%)
SELECT model FROM EV_Market_Analytics_Dataset
WHERE model LIKE 'M%';

-- Q) Find models having 'el' (Use - LIKE %el%)
SELECT model FROM EV_Market_Analytics_Dataset
WHERE model LIKE '%el%';

-- Q) Find brands ending with 'a'. (Use - LIKE %a)
SELECT brand FROM  EV_Market_Analytics_Dataset
WHERE brand LIKE '%a';

-- Q) Show EV cars from Japan, Germany, and US. (Use - IN)
SELECT brand, model, country_of_origin FROM EV_Market_Analytics_Dataset
WHERE country_of_origin IN ('Japan', 'Germany', 'US');

-- Q) Count total number of EV cars. (Use - Aggregate Function COUNT())
SELECT COUNT(*) AS total_cars FROM  EV_Market_Analytics_Dataset;

-- Q) Find total annual sales units. (Use - Aggregate Function SUM())
SELECT SUM(annual_sales_units) AS total_sales FROM EV_Market_Analytics_Dataset;

-- Q) Find average EV price. (Use - Aggregate Function AVG())
SELECT ROUND(AVG(Price_USD),2) AS avg_price FROM EV_Market_Analytics_Dataset;

-- Q) Find highest top speed. (Use - Aggregate Function MAX())
SELECT MAX(top_speed_mph) AS highest_speed FROM  EV_Market_Analytics_Dataset;

-- Q) Find minimum charging speed.  (Use - Aggregate Function MIN())
SELECT MIN(charging_speed_kw) AS min_charging_speed FROM EV_Market_Analytics_Dataset;