select    us.*, 
          zip.zipcode,
          zip.area_land_miles,
          zip.area_water_miles,
          zip.latitude,
          zip.longitude,
          zip.state_code,
          zip.city,
          zip.county,
          zip.zipcode_geom    

from       `bigquery-public-data.utility_us.us_states_area`    us
           -- --------------------------------------------------------------------

   inner join   `bigquery-public-data.utility_us.zipcode_area`  zip
   
      on us.state_name = zip.state_name










