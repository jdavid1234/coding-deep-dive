```sql

select*,

concat(first_name, ' ', last_name) full_name

from `data-science-course-226116.sql_lessons.employees` 


```
Concat joined 2 strngs togehter 
coolums(strings)  + additonal strngs + spaces    (all of whihc are strings)









select*,

concat(first_name, ' ', last_name,' ', 'cool') full_name

from `data-science-course-226116.sql_lessons.employees` 



-------


with step_1 as 

(

select  

substr(first_name, 1, 1) letter_one_first,
substr(first_name, 2) rest_of_name



from `data-science-course-226116.sql_lessons.employees` 


)


select


concat(upper(letter_one_first), rest_of_name) Full_caps_name


from step_1