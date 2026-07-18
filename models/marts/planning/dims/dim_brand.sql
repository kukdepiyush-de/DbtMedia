-- models/marts/planning/dims/dim_brand.sql

with brands as (
    select * from {{ ref('stg_raw_linear__BRAND') }}
)

select
    -- Casting to ensure consistent join keys
    cast(brand_id as int) as brand_id,
    
    -- Standardizing strings to prevent duplicate 'Brand_1' vs 'brand_1' issues
    initcap(trim(brand_name)) as brand_name
from brands