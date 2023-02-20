{{
  config(
    materialized='table'
  )
}}


with base as (select *
from {{ source('tap_csv', 'gajinfo') }}) 

select *,'TOVALA' as Company,'Google' as channel from base