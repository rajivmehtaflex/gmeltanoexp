{{
  config(
    materialized='table'
  )
}}


with base as (select *
from {{ source('tap_csv', 'gajinfo') }}) 

select *,'MM420' as Company,'FACEBOOK' as channel from base