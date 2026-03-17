
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_expect_column_151c77edd138daf34d456266f3ce0a66
    
      
    ) dbt_internal_test