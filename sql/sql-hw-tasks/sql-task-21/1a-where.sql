select     primary_type, 
           description, 
           arrest

from       `bigquery-public-data.chicago_crime.crime` 

where      lower(primary_type) ='narcotics' 
and                     arrest = true

or         lower(primary_type) ='kidnapping' 
and                     arrest = false 