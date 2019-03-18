select *,

case  when county_name like '%A%' 
      then 'Y'

else 'N'
end two_kinds


from `data-science-course-226116.sql_lessons.counties` 