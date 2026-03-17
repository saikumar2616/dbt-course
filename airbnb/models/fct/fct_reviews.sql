{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}
WITH src_reviews AS (
  SELECT * FROM {{ ref('src_reviews') }}
)
SELECT 
{{ dbt_utils.generate_surrogate_key(['listing_id', 'review_date', 'reviewer_name', 'review_text']) }}
    AS review_id,
    * FROM src_reviews
WHERE review_text is not null

--Naive dbtimplementation of incremental logic.
-- This is fullrefresh if table doesnot exist and is_incremental flag is set only if the table already exists.
--This will work but it is not the most efficient way to do it. We will learn how to do it better in the next line.
{% if is_incremental() %}
  AND review_date > (SELECT MAX(review_date) FROM {{ this }})
{% endif %}


--inproduction, you would want to use a more robust incremental logic that can handle updates and deletes as well bcoz of many unseen cases. 
-- We will learn how to do that in the next line.


{% if is_incremental() %}
  {% if var("start_date", False) and var("end_date", False) %}
    {{ log('Loading ' ~ this ~ ' incrementally (start_date: ' ~ var("start_date") ~ ', end_date: ' ~ var("end_date") ~ ')', info=True) }}
    AND review_date >= '{{ var("start_date") }}'
    AND review_date < '{{ var("end_date") }}'
  {% else %}
    AND review_date > (select max(review_date) from {{ this }})
    {{ log('Loading ' ~ this ~ ' incrementally (all missing dates)', info=True)}}
  {% endif %}
{% endif %}
