select     primary_type, 
           description, 
           count(*) number_of_incidents

from      `bigquery-public-data.chicago_crime.crime`

group by   primary_type, description

having     count(*) > 10000

order by   1

