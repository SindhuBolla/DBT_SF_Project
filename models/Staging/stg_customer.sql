{{ config(materialized='table') }}


WITH stg_customers AS
(
    SELECT max(C_CUSTOMER_SK)+1 C_CUSTOMER_SK,
        C_CUSTOMER_ID ,
        C_FIRST_NAME,
        C_LAST_NAME ,
        C_EMAIL_ADDRESS,
        C_BIRTH_DAY,
        C_BIRTH_MONTH,
        C_BIRTH_YEAR
    FROM {{ source('tpcds', 'customer') }}
    GROUP BY  C_CUSTOMER_ID ,
        C_FIRST_NAME,
        C_LAST_NAME ,
        C_EMAIL_ADDRESS,
        C_BIRTH_DAY,
        C_BIRTH_MONTH,
        C_BIRTH_YEAR
)

SELECT *
FROM stg_customers