{{ config({"severity":"Warn","tags":[]}) }}
{{ test_minimum_row_count(min_row_count=1000000, model=get_where_subquery(ref('dim_listings_cleansed'))) }}