
  create or replace   view AIRBNB.DEV.src_reviews
  
  
  
  
  as (
    WITH raw_reviews AS (
    SELECT
        *
    FROM
        AIRBNB.RAW.RAW_REVIEWS
)
SELECT
    COMMENTS as REVIEW_text,
    DATE as REVIEW_DATE,
    LISTING_ID,
    REVIEWER_NAME,
    SENTIMENT as review_sentiment
FROM
    raw_reviews
  );

