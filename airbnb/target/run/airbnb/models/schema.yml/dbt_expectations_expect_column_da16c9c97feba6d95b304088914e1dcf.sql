
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_expect_column_da16c9c97feba6d95b304088914e1dcf
    
      
    ) dbt_internal_test