{{ config(materialized='table') }}


SELECT
    customer_sk,
    customer_id,
    first_name,
    last_name,
    email_address,
    birth_day,
    birth_month,
    birth_year
FROM {{ ref('int_customer') }}