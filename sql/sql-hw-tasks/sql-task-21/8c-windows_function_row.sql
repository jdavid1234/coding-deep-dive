select      company, 
            payment_type, 
            fare,
            trip_seconds,
            trip_miles, 
            tips,
            row_number() over (partition by company order by tips) tips_order,
            avg(tips) over(partition by company) avg_tips



from      `bigquery-public-data.chicago_taxi_trips.taxi_trips`

where    	trip_seconds > 9000
and       tips > 1000
and       company is not null



Limit 500