```sql



select trim('    SQL Tutorial    ')TrimmedString


all this does is delete the sapces before the SQL and after the tutorial --  leading and trailing spaces
keeps the spaces between words as they are 



select cast('    456    ' as int64) test -- This works, even thouggh the sapces are considered strings, the numbers are ingnored ---- similar to the way we use TRIM on strings 


```


