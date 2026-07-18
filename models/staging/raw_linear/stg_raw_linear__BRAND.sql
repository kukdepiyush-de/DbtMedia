with 

source as (

    select * from {{ source('raw_linear', 'BRAND') }}

),

renamed as (

    select
        brand_id,
        brand_name

    from source

)

select * from renamed