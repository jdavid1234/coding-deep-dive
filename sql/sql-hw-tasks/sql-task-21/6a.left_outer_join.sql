with step_1 as 

(

select    badges.*,	
          tags.tag_name,	
          tags.count,	
          tags.excerpt_post_id,	
          tags.wiki_post_id


from       `bigquery-public-data.stackoverflow.badges`  badges
           -- --------------------------------------------------------

    left outer join   `bigquery-public-data.stackoverflow.tags`   tags

    on badges.id = tags.id 

)

select     *

from       step_1

where      tag_based = true

and tag_name is not null

order by name


--it seems these 2 data sets have no connection to each other. Joining them just produces a whole lot of null columns