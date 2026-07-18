with 

source as (

    select * from {{ source('raw_linear', 'DATE') }}

),

renamed as (

    select
        spot_date,
        month,
        quarter

    from source

)

select * from renamed