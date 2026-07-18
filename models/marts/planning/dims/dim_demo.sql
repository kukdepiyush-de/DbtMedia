-- models/marts/planning/dims/dim_demo.sql

with demos as (
    select * from {{ ref('stg_raw_linear__DEMO') }}
)

select
    -- Casting to ensure consistent join keys
    cast(demo_id as int) as demo_id,
    
    -- Cleaning string data
    initcap(trim(demo_description)) as demo_name
from demos