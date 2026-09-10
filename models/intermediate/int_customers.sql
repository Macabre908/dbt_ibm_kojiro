WITH INT_CUSTOMERS AS (
    SELECT 
        C.NAME,
        C.CUSTOMER_ID,
        C.PHONE_NUMBER,
        C.ADDRESS,
        C.ACCOUNT_BALANCE,
        C.COMMENT,
        C.MARKET_SEGMENT,
        N.NAME AS NATION,
        R.NAME AS REGION

    FROM {{ ref('stg_customers') }} AS C

    JOIN {{ ref('stg_nations') }} AS N
        ON C.NATION_ID = N.NATION_ID

    JOIN {{ ref('stg_regions') }} AS R
        ON N.REGION_ID = R.REGION_ID
)

SELECT * FROM INT_CUSTOMERS
