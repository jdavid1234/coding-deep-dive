/*
sql-Task-5
*/

with step_1 as
(
select   

distinct 
          fips_class_code,
          -- ----------------------------
          substr(fips_class_code, 1, 1) as char_1,
          substr(fips_class_code, 2, 1) as char_2
          -- ----------------------------
from     `data-science-course-226116.sql_lessons.counties`
)

select  fips_class_code, char_1, char_2,
          case cast(char_2 as int64)
              when 1 then 'One'
              when 2 then 'Two'
              when 3 then 'Three'
              when 4 then 'Four'
              when 5 then 'Five'
              when 6 then 'Six'
              when 7 then 'Seven'
          end char2_desc
          -- ----------------------------

       
from step_1          
order by  char_2


/*

with step_1 as
(
select   

from   original data 

)

select 

from step_1

*/
