CREATE TABLE EV_Market_Analytics_Dataset(
brand VARCHAR(20),
model VARCHAR(20),
year SMALLINT,
variant VARCHAR(20),
Price_USD NUMERIC(10,2),
Battery_Capacity NUMERIC(10,2),
range_miles INT,
charging_speed_kw NUMERIC(10,2),
Acceleration NUMERIC(10,2),
top_speed_mph INT,
horsepower INT,
torque_nm INT,
drive_type VARCHAR(10),
seating_capacity INT,
body_type VARCHAR(20),
cargo_volume_cubic_ft NUMERIC(10,2),
weight_kg INT,
safety_rating INT,
autopilot_level INT,
country_of_origin VARCHAR(20),
Price_Category VARCHAR(20),
annual_sales_units INT,
customer_rating NUMERIC(10,2),
warranty_years INT,
Performance_Type VARCHAR(20),
Efficiency NUMERIC(10,2),
Sales_Category VARCHAR(10)
);

COPY EV_Market_Analytics_Dataset(
brand, model, year, variant, Price_USD, Battery_Capacity,
range_miles, charging_speed_kw, Acceleration, top_speed_mph,
horsepower, torque_nm, drive_type, seating_capacity,
body_type, cargo_volume_cubic_ft, weight_kg, safety_rating,
autopilot_level, country_of_origin, Price_Category,
annual_sales_units, customer_rating, warranty_years,
Performance_Type, Efficiency, Sales_Category)
FROM 'C:\Users\pandi\OneDrive\Desktop\EV Market Analytics Dataset - Excel.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM EV_Market_Analytics_Dataset;