
WITH  __dbt__cte__src_reviews as (
WITH raw_reviews AS (
    SELECT
        *
    FROM
       AIRBNB.raw.raw_reviews
)
SELECT
    COMMENTS as REVIEW_text,
    DATE as REVIEW_DATE,
    LISTING_ID,
    REVIEWER_NAME,
    SENTIMENT as review_sentiment
FROM
    raw_reviews
), src_reviews AS (
  SELECT * FROM __dbt__cte__src_reviews
)
SELECT 
md5(cast(coalesce(cast(listing_id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_date as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(reviewer_name as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_text as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT))
    AS review_id,
    * FROM src_reviews
WHERE review_text is not null

--Naive dbtimplementation of incremental logic.
-- This is fullrefresh if table doesnot exist and is_incremental flag is set only if the table already exists.
--This will work but it is not the most efficient way to do it. We will learn how to do it better in the next line.

  AND review_date > (SELECT MAX(review_date) FROM AIRBNB.DEV.fct_reviews)



--inproduction, you would want to use a more robust incremental logic that can handle updates and deletes as well bcoz of many unseen cases. 
-- We will learn how to do that in the next line.



  
    AND review_date > (select max(review_date) from AIRBNB.DEV.fct_reviews)
    
  
