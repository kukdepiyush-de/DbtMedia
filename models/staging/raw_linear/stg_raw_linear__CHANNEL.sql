with 

source as (

    select * from {{ source('raw_linear', 'CHANNEL') }}

),

renamed as (

    select
        channel_id,
        division_id,
        channel_name

    from source

)

select * from renamed