with 

source as (

    select * from {{ source('raw_linear', 'DEMO') }}

),

renamed as (

    select
        demo_id,
        demo_description

    from source

)

select * from renamed