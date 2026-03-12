__dbt__cte__src_hosts as (
WITH raw_hosts AS (
    SELECT
        *
    FROM
       AIRBNB.raw.raw_hosts
)
SELECT
    id AS host_id,
    name AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_HOSTS
)