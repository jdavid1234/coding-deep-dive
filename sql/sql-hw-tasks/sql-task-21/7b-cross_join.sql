select    census.tree_id,
          census.status, 
          census.health, 
          species.growth_rate,
          species.fall_color,
          species.tree_size

from      `bigquery-public-data.new_york_trees.tree_census_2015`   census

  cross join `bigquery-public-data.new_york_trees.tree_species`  species