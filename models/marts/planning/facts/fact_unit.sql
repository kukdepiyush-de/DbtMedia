-- models/marts/planning/facts/fact_unit.sql

with units as (
    select * from {{ ref('stg_raw_linear__SPOT_DATA') }}
)

select
    -- Primary Key
    cast(unit_id as int) as unit_id,

    -- Foreign Keys (Linking to Dimensions)
    cast(plan_id as int) as plan_id,
    cast(spot_date as date) as spot_date,

    -- Metrics (Additive facts)
    cast(units_count as int) as units_count,
    cast(unit_price as float) as unit_price,
    cast(pitched_imps as int) as pitched_imps
from units