-- Create Table EV Brand:
CREATE TABLE ev_brands_table
(
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(50),
    country_of_origin VARCHAR(50)
);

INSERT INTO ev_brands_table(brand_id,brand_name,country_of_origin) VALUES
(1, 'Tesla', 'US'),
(2, 'BYD', 'China'),
(3, 'BMW', 'Germany'),
(4, 'Hyundai', 'South Korea'),
(5, 'Nissan', 'Japan');

SELECT * FROM ev_brands_table;

-- Create Table EV Cars:
CREATE TABLE ev_cars_table
(
    car_id INT PRIMARY KEY,
    model_name VARCHAR(50),
    brand_id INT,
    body_type VARCHAR(50),
    Price_USD INT,
    annual_sales_units INT
);

INSERT INTO ev_cars_table(car_id,model_name,brand_id,body_type,Price_USD,annual_sales_units) VALUES
(101, 'Model S', 1, 'Sedan', 90000, 400000),
(102, 'Model X', 1, 'SUV', 120000, 300000),
(103, 'Seal', 2, 'Sedan', 50000, 350000),
(104, 'i4', 3, 'Sedan', 70000, 150000),
(105, 'Ioniq 5', 4, 'SUV', 65000, 220000),
(106, 'Leaf', 5, 'Hatchback', 35000, 180000),
(107, 'Unknown EV', NULL, 'SUV', 45000, 50000);

SELECT * FROM ev_cars_table;

-- Create Table EV Charging Stations:
CREATE TABLE charging_stations_table
(
    station_id INT PRIMARY KEY,
    station_name VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO charging_stations_table(station_id,station_name,country) VALUES
(1, 'Tesla Supercharger', 'US'),
(2, 'BYD Fast Charge', 'China'),
(3, 'IONITY', 'Germany'),
(4, 'ChargeZone', 'India');

SELECT * FROM charging_stations_table;

-- Create Table Employee Table:
CREATE TABLE employees_table
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT
);

INSERT INTO employees_table( emp_id,emp_name, manager_id) VALUES
(1, 'Elon', NULL),
(2, 'Robert', 1),
(3, 'Sophia', 1),
(4, 'Daniel', 2),
(5, 'Emma', 2);

SELECT * FROM employees_table;