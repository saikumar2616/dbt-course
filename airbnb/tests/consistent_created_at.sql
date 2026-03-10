select * from {{ ref('fct_reviews') }} f join {{ ref('dim_listings_cleansed') }} l
on f.listing_id = l.listing_id
where f.review_date > l.created_at 
--  This sql should return 0 rows as review_date should always be greater than created_at.
-- If it returns more than 0 rows, then there is an issue with the created_at field in dim_listings_cleansed model.