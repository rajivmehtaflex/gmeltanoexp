{{
  config(
    materialized='table'
  )
}}


with base as (select *
from {{ source('tap_shopify', 'collects') }}) 

select *,'BACANCY420' as company from base