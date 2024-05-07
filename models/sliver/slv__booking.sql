{{ config(materialized='table') }}

SELECT * from {{ref('customer_booking')}}
GROUP BY ALL