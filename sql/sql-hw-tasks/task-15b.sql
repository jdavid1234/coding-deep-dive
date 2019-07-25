select       states.state_name state_name, 
             names.gender gender,
             names.name name,
             sum(names.number) number_of_babies 

from        `bigquery-public-data.usa_names.usa_1910_current`    names 


inner join `data-science-course-226116.sql_lessons.states`      states 


on names.state = states.state_abbreviation


group by     state_name, gender, name
     
having       number_of_babies > 370000

order by number_of_babies  desc 



--I get a slightly diff ans to the task_15 md file, but the code above is correct. 
--The above answer matches the task-15 sql file. 