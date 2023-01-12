{{ config(materialized='table') }}

select *
from 
{{ metrics.calculate(metric('confirmed_cases_time'), 
    grain='year', 
    dimensions=['country_name']) 
}}