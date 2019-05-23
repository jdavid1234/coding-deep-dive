-- dense rank - if reuven and shimon tie for first place, then levi is 2nd 

select      station_id,
        	num_bikes_available,
            num_bikes_disabled,	
            num_docks_available,
            num_docks_disabled,

            dense_rank () over (order by num_bikes_available) available_bikes, 
            dense_rank () over (order by num_bikes_disabled) disabled_bikes,
            dense_rank () over (order by num_docks_available) available_docs,
            dense_rank () over (order by num_docks_disabled) disabled_docks

from        `bigquery-public-data.san_francisco_bikeshare.bikeshare_station_status` 


where 	    num_bikes_available > 0
and         num_bikes_disabled  > 0
and         num_docks_available > 0
and         num_docks_disabled  > 0

	

order by    station_id


-------
--rank - if reuven and shimon tie for first place, then levi is 3rd not second  (like olympic medals)
select      station_id,
        	num_bikes_available,
            num_bikes_disabled,	
            num_docks_available,
            num_docks_disabled,

            rank () over (order by num_bikes_available) available_bikes, 
            rank () over (order by num_bikes_disabled) disabled_bikes,
            rank () over (order by num_docks_available) available_docs,
            rank () over (order by num_docks_disabled) disabled_docks

from        `bigquery-public-data.san_francisco_bikeshare.bikeshare_station_status` 


where 	    num_bikes_available > 0
and         num_bikes_disabled  > 0
and         num_docks_available > 0
and         num_docks_disabled  > 0

	

order by    station_id