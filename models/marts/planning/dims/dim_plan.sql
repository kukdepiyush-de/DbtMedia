-- models/marts/planning/dims/dim_plan.sql

with plans as (
    select * from {{ ref('stg_raw_linear__PLAN') }}
)

select
    -- Primary Key
    cast(plan_id as int) as plan_id,
    
    -- Foreign Keys
    cast(channel_id as int) as channel_id,
    cast(advertiser_id as int) as advertiser_id,
    cast(agency_id as int) as agency_id,
    cast(demo_id as int) as demo_id,
    
    -- Attributes
    initcap(trim(plan_name)) as plan_name
from plans