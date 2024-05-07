{{ config(materialized='table') }}

SELECT * from {{ref('bronze_customer_booking')}}
GROUP BY ALL