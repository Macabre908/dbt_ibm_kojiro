SELECT
    R_REGIONKEY REGION_ID,
    R_NAME NAME,
    R_COMMENT COMMENT
FROM
    {{ source('src', 'regions') }}