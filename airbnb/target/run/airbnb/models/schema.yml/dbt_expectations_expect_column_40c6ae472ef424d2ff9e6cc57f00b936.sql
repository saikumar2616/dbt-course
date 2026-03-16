
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_expect_column_40c6ae472ef424d2ff9e6cc57f00b936
    
      
    ) dbt_internal_test