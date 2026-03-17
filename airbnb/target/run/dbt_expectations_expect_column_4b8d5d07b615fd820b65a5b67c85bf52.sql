
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52
    
      
    ) dbt_internal_test