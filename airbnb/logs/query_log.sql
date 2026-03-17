-- created_at: 2026-03-17T10:45:19.885688561+00:00
-- finished_at: 2026-03-17T10:45:20.292845347+00:00
-- elapsed: 407ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c31625-3205-80f3-0003-12a60001cf8a
-- desc: list_relations_in_parallel
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV" LIMIT 10000;
-- created_at: 2026-03-17T10:45:20.532470443+00:00
-- finished_at: 2026-03-17T10:45:20.576927570+00:00
-- elapsed: 44ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c31625-3205-80f3-0003-12a60001cf8e
-- desc: Get table schema
describe table "AIRBNB"."DEV"."FCT_REVIEWS";
-- created_at: 2026-03-17T10:45:22.598172614+00:00
-- finished_at: 2026-03-17T10:45:23.393002223+00:00
-- elapsed: 794ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c31625-3205-80f3-0003-12a60001cf96
-- desc: execute adapter call
show terse schemas in database AIRBNB
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:23.400620957+00:00
-- finished_at: 2026-03-17T10:45:23.459045996+00:00
-- elapsed: 58ms
-- outcome: success
-- dialect: snowflake
-- node_id: operation.airbnb.airbnb-on_run_start-0
-- query_id: 01c31625-3205-80f3-0003-12a60001cf9a
-- desc: execute adapter call
CREATE TABLE IF NOT EXISTS DEV.audit_log ( model_name STRING, run_timestamp TIMESTAMP )
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:24.749727445+00:00
-- finished_at: 2026-03-17T10:45:24.996976429+00:00
-- elapsed: 247ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c31625-3205-80f3-0003-12a60001cf9e
-- desc: execute adapter call
create or replace  temporary view AIRBNB.DEV.fct_reviews__dbt_tmp
  
  
  
  
  as (
    with __dbt__cte__src_reviews as (
WITH raw_reviews AS (
    SELECT
        *
    FROM
       AIRBNB.raw.raw_reviews
)
SELECT
    COMMENTS as REVIEW_text,
    DATE as REVIEW_DATE,
    LISTING_ID,
    REVIEWER_NAME,
    SENTIMENT as review_sentiment
FROM
    raw_reviews
)
--EPHEMERAL-SELECT-WRAPPER-START
select * from (

WITH src_reviews AS (
  SELECT * FROM __dbt__cte__src_reviews
)
SELECT 
md5(cast(coalesce(cast(listing_id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_date as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(reviewer_name as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_text as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT))
    AS review_id,
    * FROM src_reviews
WHERE review_text is not null

--Naive dbtimplementation of incremental logic.
-- This is fullrefresh if table doesnot exist and is_incremental flag is set only if the table already exists.
--This will work but it is not the most efficient way to do it. We will learn how to do it better in the next line.

  AND review_date > (SELECT MAX(review_date) FROM AIRBNB.DEV.fct_reviews)



--inproduction, you would want to use a more robust incremental logic that can handle updates and deletes as well bcoz of many unseen cases. 
-- We will learn how to do that in the next line.



  
    
    AND review_date >= '2024-02-15 00:00:00'
    AND review_date < '2024-03-15 23:59:59'
  

--EPHEMERAL-SELECT-WRAPPER-END
)
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:24.998366655+00:00
-- finished_at: 2026-03-17T10:45:25.058490441+00:00
-- elapsed: 60ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c31625-3205-80f3-0003-12a60001cfa2
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:25.060294830+00:00
-- finished_at: 2026-03-17T10:45:25.115802552+00:00
-- elapsed: 55ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c31625-3205-80f3-0003-12a60001cfa6
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:25.117677052+00:00
-- finished_at: 2026-03-17T10:45:25.220227996+00:00
-- elapsed: 102ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c31625-3205-80f3-0003-12a60001cfaa
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:25.221787187+00:00
-- finished_at: 2026-03-17T10:45:25.276209870+00:00
-- elapsed: 54ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c31625-3205-80f3-0003-12a60001cfae
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."FCT_REVIEWS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:25.280491427+00:00
-- finished_at: 2026-03-17T10:45:25.357555384+00:00
-- elapsed: 77ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c31625-3205-80f3-0003-12a60001cfb2
-- desc: execute adapter call
-- back compat for old kwarg name
  
  begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:25.357770156+00:00
-- finished_at: 2026-03-17T10:45:26.188640568+00:00
-- elapsed: 830ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c31625-3205-80f3-0003-12a60001cfb6
-- desc: execute adapter call

    

        insert into AIRBNB.DEV.fct_reviews ("REVIEW_ID", "REVIEW_TEXT", "REVIEW_DATE", "LISTING_ID", "REVIEWER_NAME", "REVIEW_SENTIMENT")
        (
            select "REVIEW_ID", "REVIEW_TEXT", "REVIEW_DATE", "LISTING_ID", "REVIEWER_NAME", "REVIEW_SENTIMENT"
            from AIRBNB.DEV.fct_reviews__dbt_tmp
        )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:26.189355803+00:00
-- finished_at: 2026-03-17T10:45:26.311439368+00:00
-- elapsed: 122ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c31625-3205-80f3-0003-12a60001cfba
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:26.320702797+00:00
-- finished_at: 2026-03-17T10:45:26.438770948+00:00
-- elapsed: 118ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c31625-3205-80f3-0003-12a60001cfbe
-- desc: execute adapter call
drop view if exists AIRBNB.DEV.fct_reviews__dbt_tmp cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:26.440160448+00:00
-- finished_at: 2026-03-17T10:45:26.943753543+00:00
-- elapsed: 503ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c31625-3205-80f3-0003-12a60001cfc2
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.fct_reviews', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-03-17T10:45:26.945061565+00:00
-- finished_at: 2026-03-17T10:45:27.010738503+00:00
-- elapsed: 65ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c31625-3205-80f3-0003-12a60001cfc6
-- desc: execute adapter call
show grants on AIRBNB.DEV.fct_reviews
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
