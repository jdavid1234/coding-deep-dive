select     primary_type,	
           count(arrest) number_of_arrests 

from      `bigquery-public-data.chicago_crime.crime` 

group by   primary_type

having     number_of_arrests > 400000
