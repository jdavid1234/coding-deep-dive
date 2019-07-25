select          states.state_abbreviation state_abbreviation, 

                states.state_name state_name, 



                count(counties.county_name) number_of_counties 



from                `data-science-course-226116.sql_lessons.join_test_states`         states   



left outer join    `data-science-course-226116.sql_lessons.join_test_counties`                counties 


on                 states.state_abbreviation = counties.state_abbreviation

group by           states.state_abbreviation,  states.state_name


having             number_of_counties not between 2 and 140

order by           number_of_counties desc, 1