select    state, 
          gender, 
          name, 
          sha512(name) sha_name


from `bigquery-public-data.usa_names.usa_1910_2013` 

order by name