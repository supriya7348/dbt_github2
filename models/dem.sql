-- models/jaffle_shop/customers.sql

{{ config(
  materialized='table',
  sql=generate_source(database_name='RAW', schema_name='JAFFLE_SHOP', execute=True)
) }}
