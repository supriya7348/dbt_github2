select
    id as customer_id,
    first_name,
    last_name

from {{ source('jaffle_shop', 'customers') }}

-- {{ config(materialized='table') }}

-- with source as (

--     select * from {{ source('jaffle_shop', 'customers') }}

-- ),

-- stg_customers as (

--     select
--         id as customer_id,
--         first_name,
--         last_name

--     from source

-- )

-- select * from stg_customers




-- with source_customers as (

--     select * from {{ source('jaffle_shop', 'customers') }} 
--     -- CAUTION: It's best practice to create staging layer for raw sources
  
-- ),

-- -- select
-- --     id as customer_id,
-- --     first_name,
-- --     last_name

-- -- from source_customers

-- -- {{ config(materialized='table') }}

-- source as (

--     select * from source_customers

-- ),

-- stg_customers as (

--     select
--         id as customer_id,
--         first_name,
--         last_name

--     from source

-- )

-- select * from stg_customers


