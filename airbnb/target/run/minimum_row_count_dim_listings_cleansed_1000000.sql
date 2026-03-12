
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.minimum_row_count_dim_listings_cleansed_1000000
    
      
    ) dbt_internal_test