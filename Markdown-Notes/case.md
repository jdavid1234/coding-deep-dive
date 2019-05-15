####Here's how to write a Case 

select *,

case  when county_name like '%A%' 
      then 'Y'

else 'N'
end two_kinds


from `data-science-course-226116.sql_lessons.counties` 








```sql

select 

case when state_fips_code	is '051'

then cast(state_fips_code as int64) 

else state_fips_code

end state_numbers


from `data-science-course-226116.sql_lessons.counties`

```
This will not work : since we are telling it to display part of the comlumn as an intiger and part as a string 







```sql
select

case when fips_class_code like 'C7' 

then lower(fips_class_code) 

else fips_class_code

end lower_code 

--replace(fips_class_code, 'C7', 'c7') 

from `data-science-course-226116.sql_lessons.counties`
```
