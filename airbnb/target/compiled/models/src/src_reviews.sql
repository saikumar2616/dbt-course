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