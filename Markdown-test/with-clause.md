with step_1 as 

(

select  


concat(first_name, ' ', last_name) full_name 

from `data-science-course-226116.sql_lessons.employees` 


)


select substr(full_name, 1, strpos(full_name, ' ')),

substr(full_name, strpos(full_name, ' ')) 

from step_1


---


