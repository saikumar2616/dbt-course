-- created_at: 2026-03-17T06:57:16.053251793+00:00
-- finished_at: 2026-03-17T06:57:16.142248768+00:00
-- elapsed: 88ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c31541-3205-80f3-0003-12a60001951a
-- desc: execute adapter call
show terse schemas in database AIRBNB
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:57:16.144584611+00:00
-- finished_at: 2026-03-17T06:57:16.232064149+00:00
-- elapsed: 87ms
-- outcome: success
-- dialect: snowflake
-- node_id: operation.airbnb.airbnb-on_run_start-0
-- query_id: 01c31541-3205-80f3-0003-12a60001951e
-- desc: execute adapter call
CREATE TABLE IF NOT EXISTS DEV.audit_log ( model_name STRING, run_timestamp TIMESTAMP )
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:57:16.512945608+00:00
-- finished_at: 2026-03-17T06:57:16.608711354+00:00
-- elapsed: 95ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158
-- query_id: 01c31541-3205-80f3-0003-12a600019522
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_AUDIT" LIMIT 10000;
-- created_at: 2026-03-17T06:57:16.535662154+00:00
-- finished_at: 2026-03-17T06:57:16.618968045+00:00
-- elapsed: 83ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e
-- query_id: 01c31541-3205-80f3-0003-12a60001952a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_AUDIT" LIMIT 10000;
-- created_at: 2026-03-17T06:57:16.533987377+00:00
-- finished_at: 2026-03-17T06:57:16.624141119+00:00
-- elapsed: 90ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc
-- query_id: 01c31541-3205-80f3-0003-12a600019526
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_AUDIT" LIMIT 10000;
-- created_at: 2026-03-17T06:57:16.599592157+00:00
-- finished_at: 2026-03-17T06:57:16.700019198+00:00
-- elapsed: 100ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7
-- query_id: 01c31541-3205-80f3-0003-12a60001952e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_AUDIT" LIMIT 10000;
-- created_at: 2026-03-17T06:57:16.629219140+00:00
-- finished_at: 2026-03-17T06:57:16.752671805+00:00
-- elapsed: 123ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc
-- query_id: 01c31541-3205-80f3-0003-12a60001953a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_AUDIT"."DBT_EXPECTATIONS_EXPECT_COLUMN_4B8D5D07B615FD820B65A5B67C85BF52" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:57:16.612725209+00:00
-- finished_at: 2026-03-17T06:57:16.776898844+00:00
-- elapsed: 164ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158
-- query_id: 01c31541-3205-80f3-0003-12a600019532
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_AUDIT"."DBT_EXPECTATIONS_EXPECT_COLUMN_1A0AC0CCE6D17E538E5FA02BEBD23D4F" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:57:16.625260279+00:00
-- finished_at: 2026-03-17T06:57:16.812793105+00:00
-- elapsed: 187ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e
-- query_id: 01c31541-3205-80f3-0003-12a600019536
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_AUDIT"."DBT_EXPECTATIONS_EXPECT_COLUMN_195C26AD485E7DF4F2484C541AB30C07" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:57:16.702760734+00:00
-- finished_at: 2026-03-17T06:57:16.868327634+00:00
-- elapsed: 165ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7
-- query_id: 01c31541-3205-80f3-0003-12a60001953e
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_AUDIT"."DBT_EXPECTATIONS_EXPECT_TABLE__7A4A6E23A5BE67B48DC8BEC7D8738D1F" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:57:16.818648475+00:00
-- finished_at: 2026-03-17T06:57:17.738157582+00:00
-- elapsed: 919ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e
-- query_id: 01c31541-3205-80f3-0003-12a60001954a
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_audit.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07
    
    
    
    as (
    
  
with relation_columns as (

        
        select
            cast('LISTING_ID' as TEXT) as relation_column,
            cast('NUMBER' as TEXT) as relation_column_type
        union all
        
        select
            cast('LISTING_NAME' as TEXT) as relation_column,
            cast('VARCHAR' as TEXT) as relation_column_type
        union all
        
        select
            cast('ROOM_TYPE' as TEXT) as relation_column,
            cast('VARCHAR' as TEXT) as relation_column_type
        union all
        
        select
            cast('MINIMUM_NIGHTS' as TEXT) as relation_column,
            cast('NUMBER' as TEXT) as relation_column_type
        union all
        
        select
            cast('PRICE' as TEXT) as relation_column,
            cast('NUMBER' as TEXT) as relation_column_type
        union all
        
        select
            cast('HOST_ID' as TEXT) as relation_column,
            cast('NUMBER' as TEXT) as relation_column_type
        union all
        
        select
            cast('HOST_NAME' as TEXT) as relation_column,
            cast('VARCHAR' as TEXT) as relation_column_type
        union all
        
        select
            cast('HOST_IS_SUPERHOST' as TEXT) as relation_column,
            cast('VARCHAR' as TEXT) as relation_column_type
        union all
        
        select
            cast('CREATED_AT' as TEXT) as relation_column,
            cast('TIMESTAMP_NTZ' as TEXT) as relation_column_type
        union all
        
        select
            cast('UPDATED_AT' as TEXT) as relation_column,
            cast('TIMESTAMP_NTZ' as TEXT) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'PRICE'
            and
            relation_column_type not in ('NUMBER')

    )
    select *
    from test_data
  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:57:16.871069210+00:00
-- finished_at: 2026-03-17T06:57:17.738670709+00:00
-- elapsed: 867ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7
-- query_id: 01c31541-3205-80f3-0003-12a60001954e
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
-- created_at: 2026-03-17T06:57:16.779847353+00:00
-- finished_at: 2026-03-17T06:57:17.811846839+00:00
-- elapsed: 1.0s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158
-- query_id: 01c31541-3205-80f3-0003-12a600019546
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_audit.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f
    
    
    
    as (
    
  





    with grouped_expression as (
    select
        
        
    
  
( 1=1 and percentile_cont(0.99) within group (order by price) >= 1 and percentile_cont(0.99) within group (order by price) <= 1000
)
 as expression


    from AIRBNB.DEV.dim_listings_with_hosts
    

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

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:57:17.746319484+00:00
-- finished_at: 2026-03-17T06:57:17.842427563+00:00
-- elapsed: 96ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e
-- query_id: 01c31541-3205-80f3-0003-12a600019552
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:57:17.745650656+00:00
-- finished_at: 2026-03-17T06:57:17.857599626+00:00
-- elapsed: 111ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7
-- query_id: 01c31541-3205-80f3-0003-12a600019556
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
-- created_at: 2026-03-17T06:57:16.756149130+00:00
-- finished_at: 2026-03-17T06:57:17.892249285+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc
-- query_id: 01c31541-3205-80f3-0003-12a600019542
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_audit.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52
    
    
    
    as (
    
  





    with grouped_expression as (
    select
        
        
    
  
( 1=1 and max(price) >= 1 and max(price) <= 5000
)
 as expression


    from AIRBNB.DEV.dim_listings_with_hosts
    

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

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:57:17.814781572+00:00
-- finished_at: 2026-03-17T06:57:17.926514669+00:00
-- elapsed: 111ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158
-- query_id: 01c31541-3205-80f3-0003-12a60001955a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:57:17.895907137+00:00
-- finished_at: 2026-03-17T06:57:18.044972135+00:00
-- elapsed: 149ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc
-- query_id: 01c31541-3205-80f3-0003-12a60001955e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_audit.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc", "profile_name": "airbnb", "target_name": "dev"} */;
