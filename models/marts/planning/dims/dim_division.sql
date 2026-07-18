-- models/marts/planning/dims/dim_division.sql

with stg_division as (
    select * from {{ ref('stg_raw_linear__DIVISION') }}
)

select
    -- Casting to ensure consistent join keys
    cast(division_id as int) as division_id,
    
    -- Using initcap() or trim() is a "Senior" touch to ensure data quality
    initcap(trim(division_name)) as division_name
from stg_division