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
```sql

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


```