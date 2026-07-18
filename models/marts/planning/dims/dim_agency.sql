-- models/marts/planning/dims/dim_agency.sql

with agencies as (
    select * from {{ ref('stg_raw_linear__AGENCY') }}
)

select
    -- Casting to ensure consistent join keys
    cast(agency_id as int) as agency_id,
    
    -- Cleaning string data
    initcap(trim(agency_name)) as agency_name
from agencies