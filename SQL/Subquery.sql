--------------------------------------------- SUBQUERY --------------------------------------------------------------------------------------------
-- Q) Find cars whose price is greater than the average price of all EV cars. (Use - Single Row Subquery)
SELECT brand, model, Price_USD
FROM EV_Market_Analytics_Dataset
WHERE Price_USD >
      (
        SELECT AVG(Price_USD)
        FROM EV_Market_Analytics_Dataset
      );

-- Q) Find cars from countries that manufacture luxury EV cars. (Use - Multiple Rows Subquery)
SELECT brand, model, country_of_origin
FROM EV_Market_Analytics_Dataset
WHERE country_of_origin IN
      (
        SELECT country_of_origin
        FROM EV_Market_Analytics_Dataset
        WHERE Price_Category  = 'Luxury'
      );

-- Q) Find cars whose price is greater than the average price of their own country. (Use - Correlated Subquery)
SELECT brand,model,country_of_origin,Price_USD
FROM EV_Market_Analytics_Dataset e1
WHERE Price_USD >
      (
        SELECT AVG(Price_USD)
        FROM EV_Market_Analytics_Dataset e2
        WHERE e1.country_of_origin = e2.country_of_origin
      );

-- Q) Find cars whose price is greater than average price of luxury cars. (Use - Nested Subquery)
SELECT brand, model, Price_USD
FROM EV_Market_Analytics_Dataset
WHERE Price_USD >
      (
        SELECT AVG(Price_USD)
        FROM EV_Market_Analytics_Dataset
        WHERE Price_Category =
              (
                SELECT Price_Category 
                FROM EV_Market_Analytics_Dataset
                WHERE Price_Category = 'Luxury'
                LIMIT 1
              )
      );

-- Q) Find brands that have at least one SUV car. (Use - EXISTS Subquery)
SELECT DISTINCT brand
FROM EV_Market_Analytics_Dataset e1
WHERE EXISTS
      (
        SELECT *
        FROM EV_Market_Analytics_Dataset e2
        WHERE e1.brand = e2.brand
        AND e2.body_type = 'SUV'
      );

-- Q) Find brands that do not manufacture Sedan cars. (Use - NOT EXISTS Subquery)
SELECT DISTINCT brand
FROM EV_Market_Analytics_Dataset  e1
WHERE NOT EXISTS
      (
        SELECT *
        FROM EV_Market_Analytics_Dataset  e2
        WHERE e1.brand = e2.brand
        AND e2.body_type = 'Sedan'
      );