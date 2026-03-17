-- created_at: 2026-03-17T06:48:20.300329790+00:00
-- finished_at: 2026-03-17T06:48:20.352286787+00:00
-- elapsed: 51ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c31538-3205-80f3-0003-12a6000194ca
-- desc: execute adapter call
show terse schemas in database AIRBNB
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:48:20.354370520+00:00
-- finished_at: 2026-03-17T06:48:20.411065042+00:00
-- elapsed: 56ms
-- outcome: success
-- dialect: snowflake
-- node_id: operation.airbnb.airbnb-on_run_start-0
-- query_id: 01c31538-3205-80f3-0003-12a6000194ce
-- desc: execute adapter call
CREATE TABLE IF NOT EXISTS DEV.audit_log ( model_name STRING, run_timestamp TIMESTAMP )
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:48:20.706547254+00:00
-- finished_at: 2026-03-17T06:48:20.780912742+00:00
-- elapsed: 74ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158
-- query_id: 01c31538-3205-80f3-0003-12a6000194d2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_AUDIT" LIMIT 10000;
-- created_at: 2026-03-17T06:48:20.729712807+00:00
-- finished_at: 2026-03-17T06:48:20.795834951+00:00
-- elapsed: 66ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e
-- query_id: 01c31538-3205-80f3-0003-12a6000194d6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_AUDIT" LIMIT 10000;
-- created_at: 2026-03-17T06:48:20.777506720+00:00
-- finished_at: 2026-03-17T06:48:20.850538350+00:00
-- elapsed: 73ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc
-- query_id: 01c31538-3205-80f3-0003-12a6000194da
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_AUDIT" LIMIT 10000;
-- created_at: 2026-03-17T06:48:20.785019110+00:00
-- finished_at: 2026-03-17T06:48:20.853868969+00:00
-- elapsed: 68ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7
-- query_id: 01c31538-3205-80f3-0003-12a6000194e2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_AUDIT" LIMIT 10000;
-- created_at: 2026-03-17T06:48:20.784511744+00:00
-- finished_at: 2026-03-17T06:48:20.854915430+00:00
-- elapsed: 70ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158
-- query_id: 01c31538-3205-80f3-0003-12a6000194de
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_AUDIT"."DBT_EXPECTATIONS_EXPECT_COLUMN_1A0AC0CCE6D17E538E5FA02BEBD23D4F" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:48:20.798657405+00:00
-- finished_at: 2026-03-17T06:48:20.868914067+00:00
-- elapsed: 70ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e
-- query_id: 01c31538-3205-80f3-0003-12a6000194e6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_AUDIT"."DBT_EXPECTATIONS_EXPECT_COLUMN_195C26AD485E7DF4F2484C541AB30C07" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:48:20.857128978+00:00
-- finished_at: 2026-03-17T06:48:20.923690475+00:00
-- elapsed: 66ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc
-- query_id: 01c31538-3205-80f3-0003-12a6000194ea
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_AUDIT"."DBT_EXPECTATIONS_EXPECT_COLUMN_4B8D5D07B615FD820B65A5B67C85BF52" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:48:20.858086417+00:00
-- finished_at: 2026-03-17T06:48:20.939414476+00:00
-- elapsed: 81ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7
-- query_id: 01c31538-3205-80f3-0003-12a6000194ee
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_AUDIT"."DBT_EXPECTATIONS_EXPECT_TABLE__7A4A6E23A5BE67B48DC8BEC7D8738D1F" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T06:48:20.871581261+00:00
-- finished_at: 2026-03-17T06:48:21.540981100+00:00
-- elapsed: 669ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e
-- query_id: 01c31538-3205-80f3-0003-12a6000194f6
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
-- created_at: 2026-03-17T06:48:20.941876348+00:00
-- finished_at: 2026-03-17T06:48:21.547393349+00:00
-- elapsed: 605ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7
-- query_id: 01c31538-3205-80f3-0003-12a6000194fe
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
-- created_at: 2026-03-17T06:48:20.859155+00:00
-- finished_at: 2026-03-17T06:48:21.622362489+00:00
-- elapsed: 763ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158
-- query_id: 01c31538-3205-80f3-0003-12a6000194f2
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
-- created_at: 2026-03-17T06:48:21.550038051+00:00
-- finished_at: 2026-03-17T06:48:21.629318632+00:00
-- elapsed: 79ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__7a4a6e23a5be67b48dc8bec7d8738d1f.a19f4572a7
-- query_id: 01c31538-3205-80f3-0003-12a600019502
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
-- created_at: 2026-03-17T06:48:21.544717098+00:00
-- finished_at: 2026-03-17T06:48:21.665960287+00:00
-- elapsed: 121ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_195c26ad485e7df4f2484c541ab30c07.f8a7797f7e
-- query_id: 01c31538-3205-80f3-0003-12a600019506
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
-- created_at: 2026-03-17T06:48:21.626392986+00:00
-- finished_at: 2026-03-17T06:48:21.711361010+00:00
-- elapsed: 84ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_1a0ac0cce6d17e538e5fa02bebd23d4f.56669c0158
-- query_id: 01c31538-3205-80f3-0003-12a60001950a
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
-- created_at: 2026-03-17T06:48:20.927063145+00:00
-- finished_at: 2026-03-17T06:48:21.726477291+00:00
-- elapsed: 799ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc
-- query_id: 01c31538-3205-80f3-0003-12a6000194fa
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
-- created_at: 2026-03-17T06:48:21.729497193+00:00
-- finished_at: 2026-03-17T06:48:21.857772246+00:00
-- elapsed: 128ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_4b8d5d07b615fd820b65a5b67c85bf52.636ac951cc
-- query_id: 01c31538-3205-80f3-0003-12a60001950e
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
