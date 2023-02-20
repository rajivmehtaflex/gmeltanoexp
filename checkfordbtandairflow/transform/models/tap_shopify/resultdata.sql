{{
  config(
    materialized='table'
  )
}}


with base as (select *
from {{ source('tap_shopify', 'collects') }}) 

select *,'PRESCIENT' as company from base