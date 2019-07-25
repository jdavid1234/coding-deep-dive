select     counties.county_name, 
           
           counties.fips_class_code,


           counties.state_abbreviation, 


from `data-science-course-226116.sql_lessons.join_test_counties`                counties

left outer join `data-science-course-226116.sql_lessons.join_test_states`         states


on counties.state_abbreviation = states.state_abbreviation



where states.state_abbreviation is null

and lower(counties.county_name)   like '%ada%'


 