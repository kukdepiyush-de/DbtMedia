with 

source as (

    select * from {{ source('raw_linear', 'PLAN') }}

),

renamed as (

    select
        plan_id,
        channel_id,
        advertiser_id,
        agency_id,
        demo_id,
        plan_name

    from source

)

select * from renamed