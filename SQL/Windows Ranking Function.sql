--------------------------------------------- Windows Ranking Function --------------------------------------------------------------------------------------------
-- Q) Assign unique row numbers based on EV price. (Use - ROW_NUMBER())
SELECT brand,model,Price_USD,
ROW_NUMBER() OVER(ORDER BY Price_USD DESC) AS row_num
FROM EV_Market_Analytics_Dataset;

-- Q) Rank EV cars based on top speed. (Use - RANK())
SELECT brand,model,top_speed_mph,
RANK() OVER(ORDER BY top_speed_mph DESC) AS speed_rank
FROM EV_Market_Analytics_Dataset;

-- Q) Dense rank EV cars based on customer rating. (Use - DENSE_RANK())
SELECT brand,model,customer_rating,
DENSE_RANK() OVER(ORDER BY customer_rating DESC) AS dense_rating_rank
FROM EV_Market_Analytics_Dataset;

-- Q) Find percent rank of EV prices. (Use - PERCENT_RANK())
SELECT brand,model,Price_USD,
PERCENT_RANK() OVER(ORDER BY Price_USD) AS percent_price_rank
FROM EV_Market_Analytics_Dataset;

-- Q) Divide EV cars into 4 price groups. (Use - NTILE())
SELECT brand,model,Price_USD,
NTILE(4) OVER(ORDER BY Price_USD DESC) AS price_quartile
FROM EV_Market_Analytics_Dataset;