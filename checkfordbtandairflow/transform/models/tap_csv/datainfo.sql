{{
  config(
    materialized='table'
  )
}}


with base as (select *
from {{ source('tap_csv', 'gajinfo') }}) 

select 'MM420' as gajraj from base