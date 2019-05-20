select     station.station_id,	
           station.short_name,
           regions.name


from       `bigquery-public-data.san_francisco_bikeshare.bikeshare_station_info`  station
           -- -----------------------------------------------------------------------
  cross join `bigquery-public-data.san_francisco_bikeshare.bikeshare_regions`   regions 
  

