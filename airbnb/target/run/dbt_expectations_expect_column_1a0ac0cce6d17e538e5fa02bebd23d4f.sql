
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f
    
      
    ) dbt_internal_test