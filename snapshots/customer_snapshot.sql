{% snapshot customer_snapshot %}

{{
    config(
        target_database='SAMPLE_PROJECT',
        target_schema='DBT_STAGING',
        unique_key='C_CUSTOMER_SK',
        strategy='check',
        check_cols=['C_EMAIL_ADDRESS']
    )
}}

SELECT
    C_CUSTOMER_SK,
    C_CUSTOMER_ID,
    C_FIRST_NAME,
    C_LAST_NAME,
    C_EMAIL_ADDRESS,
    C_BIRTH_DAY,
    C_BIRTH_MONTH,
    C_BIRTH_YEAR

FROM {{ ref('stg_customer') }}

{% endsnapshot %}