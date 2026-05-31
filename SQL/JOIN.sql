--------------------------------------------- JOIN --------------------------------------------------------------------------------------------------
-- Q) Show car models with their brand names. (Use - INNER JOIN)
SELECT c.car_id,c.model_name,b.brand_name,c.Price_USD
FROM ev_cars_table c
INNER JOIN ev_brands_table b
ON c.brand_id = b.brand_id;

-- Q) Show all EV cars even if brand is missing. (Use - LEFT JOIN)
SELECT c.car_id,c.model_name,b.brand_name
FROM ev_cars_table c
LEFT JOIN ev_brands_table b
ON c.brand_id = b.brand_id;

-- Q) Show all brands even if no cars exist. (Use - RIGHT JOIN)
SELECT b.brand_name,c.model_name
FROM ev_cars_table c
RIGHT JOIN ev_brands_table b
ON c.brand_id = b.brand_id;

-- Q) Show all cars and all brands. (Use - FULL JOIN)
SELECT c.model_name,b.brand_name
FROM ev_cars_table c
FULL OUTER JOIN ev_brands_table b
ON c.brand_id = b.brand_id;

-- Q) Show every car with every charging station. (Use - CROSS JOIN)
SELECT c.model_name,s.station_name
FROM ev_cars_table c
CROSS JOIN charging_stations_table s;

-- Q) Show Employee and Their Manager Name (Use - SELF JOIN)
SELECT e.emp_name AS employee_name,m.emp_name AS manager_name
FROM employees_table e
INNER JOIN employees_table m
ON e.manager_id = m.emp_id;