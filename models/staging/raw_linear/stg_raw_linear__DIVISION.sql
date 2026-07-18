with 

source as (

    select * from {{ source('raw_linear', 'DIVISION') }}

),

renamed as (

    select
        division_id,
        division_name

    from source

)

select * from renamed