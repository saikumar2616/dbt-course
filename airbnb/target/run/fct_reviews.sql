-- back compat for old kwarg name
  
  begin;
    

        insert into AIRBNB.DEV.fct_reviews ("REVIEW_ID", "REVIEW_TEXT", "REVIEW_DATE", "LISTING_ID", "REVIEWER_NAME", "REVIEW_SENTIMENT")
        (
            select "REVIEW_ID", "REVIEW_TEXT", "REVIEW_DATE", "LISTING_ID", "REVIEWER_NAME", "REVIEW_SENTIMENT"
            from AIRBNB.DEV.fct_reviews__dbt_tmp
        );
    commit;