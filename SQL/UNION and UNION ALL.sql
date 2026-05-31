--------------------------------------------- UNION and UNION ALL --------------------------------------------------------------------------------------------
-- Q) Show all brands from US and Japan without duplicates. (Use - UNION)
SELECT brand, country_of_origin
FROM EV_Market_Analytics_Dataset
WHERE country_of_origin = 'US'

UNION

SELECT brand, country_of_origin
FROM EV_Market_Analytics_Dataset
WHERE country_of_origin = 'Japan';

-- Q) Show all brands from US and Germany including duplicates. (Use - UNION ALL)
SELECT brand, country_of_origin
FROM EV_Market_Analytics_Dataset
WHERE country_of_origin = 'US'

UNION ALL

SELECT brand, country_of_origin
FROM EV_Market_Analytics_Dataset
WHERE country_of_origin = 'Germany';