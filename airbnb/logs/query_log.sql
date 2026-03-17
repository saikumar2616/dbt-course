-- created_at: 2026-03-17T08:18:15.233784899+00:00
-- finished_at: 2026-03-17T08:18:15.634613810+00:00
-- elapsed: 400ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c31592-3205-80f3-0003-12a6000195aa
-- desc: execute adapter call
show terse schemas in database AIRBNB
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T08:18:15.646771539+00:00
-- finished_at: 2026-03-17T08:18:15.818444222+00:00
-- elapsed: 171ms
-- outcome: success
-- dialect: snowflake
-- node_id: operation.airbnb.airbnb-on_run_start-0
-- query_id: 01c31592-3205-81c9-0003-12a60001a006
-- desc: execute adapter call
CREATE TABLE IF NOT EXISTS DEV.audit_log ( model_name STRING, run_timestamp TIMESTAMP )
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T08:18:18.376420046+00:00
-- finished_at: 2026-03-17T08:18:18.459025539+00:00
-- elapsed: 82ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c31592-3205-80f3-0003-12a6000195b2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_AUDIT" LIMIT 10000;
-- created_at: 2026-03-17T08:18:18.362708649+00:00
-- finished_at: 2026-03-17T08:18:18.460429511+00:00
-- elapsed: 97ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c31592-3205-80f3-0003-12a6000195ae
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_AUDIT" LIMIT 10000;
-- created_at: 2026-03-17T08:18:18.693057175+00:00
-- finished_at: 2026-03-17T08:18:18.761047261+00:00
-- elapsed: 67ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7
-- query_id: 01c31592-3205-81c9-0003-12a60001a012
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_AUDIT"."DBT_EXPECTATIONS_EXPECT_TABLE__7A4A6E23A5BE67B48DC8BEC7D8738D1F" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T08:18:18.763937918+00:00
-- finished_at: 2026-03-17T08:18:19.442919069+00:00
-- elapsed: 678ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7
-- query_id: 01c31592-3205-81c9-0003-12a60001a016
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_audit.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f
    
    
    
    as (
    
  
    with a as (
        
    select
        
        count(*) as expression
    from
        AIRBNB.DEV.dim_listings_with_hosts
    

    ),
    b as (
        
    select
        
        count(*) * 1 as expression
    from
        AIRBNB.raw.raw_listings
    

    ),
    final as (

        select
            
            a.expression,
            b.expression as compare_expression,
            abs(coalesce(a.expression, 0) - coalesce(b.expression, 0)) as expression_difference,
            abs(coalesce(a.expression, 0) - coalesce(b.expression, 0))/
                nullif(a.expression * 1.0, 0) as expression_difference_percent
        from
        
            a cross join b
        
    )
    -- DEBUG:
    -- select * from final
    select
        *
    from final
    where
        
        expression_difference > 0.0
        

  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T08:18:18.533202680+00:00
-- finished_at: 2026-03-17T08:18:19.529676948+00:00
-- elapsed: 996ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c31592-3205-81c9-0003-12a60001a00a
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_audit.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb
    
    
    
    as (
    
  




    with grouped_expression as (
    select
        
        
    
  


    
regexp_instr(price, '^\\$[0-9][0-9\\.]+$', 1, 1, 0, '')


 > 0
 as expression


    from AIRBNB.raw.raw_listings
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors





  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T08:18:19.445925957+00:00
-- finished_at: 2026-03-17T08:18:19.559276834+00:00
-- elapsed: 113ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7
-- query_id: 01c31592-3205-80f3-0003-12a6000195b6
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T08:18:18.533066879+00:00
-- finished_at: 2026-03-17T08:18:19.582335118+00:00
-- elapsed: 1.0s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c31592-3205-81c9-0003-12a60001a00e
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_audit.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5
    
    
    
    as (
    
  


    with grouped_expression as (
    select
        
        
    
  
count(distinct room_type) = 4
 as expression


    from AIRBNB.raw.raw_listings
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T08:18:19.532556546+00:00
-- finished_at: 2026-03-17T08:18:19.842234127+00:00
-- elapsed: 309ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c31592-3205-80f3-0003-12a6000195ba
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T08:18:19.585238503+00:00
-- finished_at: 2026-03-17T08:18:19.844369685+00:00
-- elapsed: 259ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c31592-3205-80f3-0003-12a6000195be
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf", "profile_name": "airbnb", "target_name": "dev"} */;
