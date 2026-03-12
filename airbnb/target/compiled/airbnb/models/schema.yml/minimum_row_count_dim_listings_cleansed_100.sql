


SELECT
    COUNT(*) as cnt
FROM
    AIRBNB.DEV.dim_listings_cleansed
HAVING
    COUNT(*) < 100
