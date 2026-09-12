
{{ config(materialized='table') }}


SELECT
    c_customer_sk AS customer_sk,
    C_CUSTOMER_ID AS customer_id,
    C_FIRST_NAME AS first_name,
    C_LAST_NAME AS last_name,
    C_EMAIL_ADDRESS AS email_address,
    C_BIRTH_DAY AS birth_day,
    C_BIRTH_MONTH AS birth_month,
    C_BIRTH_YEAR AS birth_year
FROM {{ ref('stg_customer') }}