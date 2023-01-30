{{ config(materialized='table') }}

select *
from 
{{ metrics.calculate(metric('Total_New_Confirmed_Cases'), 
    grain='year', 
    dimensions=['country_name']) 
}}