select     pitcherFirstName, 
           pitcherLastName,
 
           concat(pitcherFirstName, ' ', pitcherLastName) full_name, 

           sha512(concat(pitcherFirstName, ' ', pitcherLastName)) sha512_hash

from      `bigquery-public-data.baseball.games_wide` 