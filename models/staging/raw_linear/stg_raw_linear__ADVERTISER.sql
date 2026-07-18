with 

source as (

    select * from {{ source('raw_linear', 'ADVERTISER') }}

),

renamed as (

    select
        advertiser_id,
        brand_id,
        advertiser_name

    from source

)

select * from renamed