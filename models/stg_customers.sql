-- select
--     id as customer_id,
--     first_name,
--     last_name

-- from {{ source('jaffle_shop', 'customers') }}

-- {{ config(materialized='table') }}

with source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

stg_customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from stg_customers