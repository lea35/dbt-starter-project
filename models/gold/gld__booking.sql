{{ config(materialized='table') }}

SELECT
num_passengers as nb_passengers,
sales_channel,
trip_type,
purchase_lead,
length_of_stay,
flight_hour as flight_departure_hour,
flight_day,
SUBSTRING(route, 0, 4) as departure_city,
SUBSTRING(route, 4, 6) as arrival_city,
flight_duration,
booking_origin as booking_origin_country,
wants_extra_baggage,
wants_preferred_seat,
wants_in_flight_meals,
booking_complete
from {{ref('slv__booking')}}