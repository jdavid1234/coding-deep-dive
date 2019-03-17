
/*
Show me the states where state name contains an 'o' or an 'i' in it
I want to see in the results the following columns:
    - state name renamed as name
    - fips_code (as integer)
    - state abbreviation concatenated (concat) with state name (with ' - ' in between)
    - order by fips_code
*/


select   state_name name,
         cast(states_fips_code as int64) fips_code,
         concat(state_abbreviation, ' - ', state_name) state_concat
         -- ----------------------------------------------------
from     `data-science-course-226116.sql_lessons.states` 
         -- ----------------------------------------------------
where    lower(state_name) like '%o%'
   or    lower(state_name) like '%i%'
         -- ----------------------------------------------------
order by fips_code


/*



what did I learn ?

1)commas need to be placed after every item in the select field, except the last one.

name,
         cast(states_fips_code as int64) fips_code,
         concat(state_abbreviation, ' - ', state_name) state_concat



2) when  are (brackets) required?  
whenever we are changing the data type (e.g. cast from strong to int64) or when joining columns (concat)


*/
