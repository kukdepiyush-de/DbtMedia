with 

source as (

    select * from {{ source('raw_linear', 'AGENCY') }}

),

renamed as (

    select
        agency_id,
        agency_name

    from source

)

select * from renamed