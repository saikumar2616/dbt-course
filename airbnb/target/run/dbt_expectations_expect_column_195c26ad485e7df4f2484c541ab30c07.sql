
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07
    
      
    ) dbt_internal_test