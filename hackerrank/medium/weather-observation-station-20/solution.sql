-- /*
-- Enter your query here.
-- */

-- a,b are the respective minimum and maximum values of Northern Latitude (LAT_N) 

-- c,d are the respective minimum and maximum values of Western Longitude (LONG_W) 

SELECT ROUND(
    SQRT(
        POWER(MAX(LAT_N) - MIN(LAT_N), 2) +
        POWER(MAX(LONG_W) - MIN(LONG_W), 2)
    ),4
)
FROM STATION;
