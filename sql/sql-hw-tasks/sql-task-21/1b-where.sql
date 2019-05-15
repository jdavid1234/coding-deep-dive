
select     primary_type,	
           description,	
           location_description

from       `bigquery-public-data.chicago_crime.crime` 

where       lower(primary_type) ='robbery'  
and         lower(location_description) = 'street' 
or          lower(primary_type) ='sex_offense' and lower(location_description) = 'sidewalk' 
