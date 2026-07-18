-- models/marts/planning/dims/dim_advertiser.sql

with advertisers as (
    select * from {{ ref('stg_raw_linear__ADVERTISER') }}
)

select
    -- Primary Key
    cast(advertiser_id as int) as advertiser_id,
    
    -- Foreign Key (to dim_brand)
    cast(brand_id as int) as brand_id,
    
    -- Attributes
    initcap(trim(advertiser_name)) as advertiser_name
from advertisers