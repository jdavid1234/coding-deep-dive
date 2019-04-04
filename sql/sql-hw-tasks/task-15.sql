select 
states.state_name, 
usa_1910.gender, 
usa_1910.name,
sum(usa_1910.number) number_of_babies



from `data-science-course-226116.sql_lessons.states`   states 

inner join `bigquery-public-data.usa_names.usa_1910_current`   usa_1910

on  states.state_abbreviation =  usa_1910.state 

group by states.state_name, usa_1910.gender, usa_1910.name
                

having     sum(usa_1910.number)       > 370000

order by number_of_babies  desc
