with 

source as (

    select * from {{ source('raw_linear', 'SPOT_DATA') }}

),

renamed as (

    select
        unit_id,
        plan_id,
        spot_date,
        units_count,
        unit_price,
        pitched_imps

    from source

)

select * from renamed