
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f
    
      
    ) dbt_internal_test