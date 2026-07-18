-- models/marts/planning/dims/dim_date.sql

with date_spine as (
    {{ dbt_utils.date_spine(
        datepart="day",
        start_date="cast('2025-01-01' as date)",
        end_date="cast('2027-12-31' as date)"
    ) }}
)

select
    date_day as date_actual,
    extract(year from date_day) as year,
    extract(month from date_day) as month,
    extract(quarter from date_day) as quarter
from date_spine