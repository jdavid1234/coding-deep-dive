--without order by 


select      company, 
            payment_type, 
            fare, 
            tips, 
            trip_miles, 
            trip_seconds,
            sum(fare) over(partition by company) total_fare




from      `bigquery-public-data.chicago_taxi_trips.taxi_trips`

where     lower(payment_type) = 'credit card'
and       fare > 4000




Limit 500


---------------------------------------------------------------------------------------------------

--with order by 

select      company, 
            payment_type, 
            fare, 
            tips, 
            trip_miles, 
            trip_seconds,
            sum(fare) over(partition by company order by tips) total_fare




from      `bigquery-public-data.chicago_taxi_trips.taxi_trips`

where     lower(payment_type) = 'credit card'
and       fare > 4000


order by company desc

Limit 500