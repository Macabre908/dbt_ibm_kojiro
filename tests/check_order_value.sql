{{ config(store_failures=true) }}

SELECT *
FROM {{ ref('stg_orders') }}
WHERE TOTAL_PRICE < 880