--without partitioning--
select    tree_id, 
          spc_common,  
          tree_dbh,
          
          avg(tree_dbh) over() average_dbh


from      `bigquery-public-data.new_york_trees.tree_census_2015` 




--with partitioning--

select    tree_id, 
          spc_common,  
          tree_dbh,
          
          avg(tree_dbh) over(partition by spc_common) average_dbh


from      `bigquery-public-data.new_york_trees.tree_census_2015` 


where     spc_common is not null

and       tree_dbh < 3