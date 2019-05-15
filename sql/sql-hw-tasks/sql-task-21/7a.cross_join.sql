select     station.station_id,	
           station.short_name,	
           station.lat,
           station.lon,
           station.region_id,
           station.rental_methods,
           regions.name


from       `bigquery-public-data.san_francisco_bikeshare.bikeshare_station_info`  station
           -- -----------------------------------------------------------------------
  cross join `bigquery-public-data.san_francisco_bikeshare.bikeshare_regions`   regions 
  

