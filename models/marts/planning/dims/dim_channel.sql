-- models/marts/planning/dims/dim_channel.sql

with channels as (
    select * from {{ ref('stg_raw_linear__CHANNEL') }}
),
divisions as (
    select * from {{ ref('dim_division') }}
)

select
    -- Primary Key
    cast(c.channel_id as int) as channel_id,
    
    -- Foreign Key to Division
    cast(c.division_id as int) as division_id,
    
    -- Attributes
    initcap(trim(c.channel_name)) as channel_name,
    
    -- Denormalized attribute for better BI user experience
    d.division_name
from channels c
left join divisions d on c.division_id = d.division_id