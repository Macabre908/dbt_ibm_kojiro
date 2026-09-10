SELECT
    N_NATIONKEY NATION_ID,
    N_NAME NAME,
    N_REGIONKEY REGION_ID,
    N_COMMENT COMMENT
FROM
    {{ source('src', 'nations') }}