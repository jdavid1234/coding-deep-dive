with step_1 as 

(

select account, day, cost,


 avg(cost) over (
             partition by  account
             order by      account_day_seq_no
             range between 3 preceding and current row
         ) moving_avg_4_day
     
     
from `data-science-course-226116.sql_lessons.google_ads_etl_step_2` 
         
),

step_2 as 

(

select account,	day,	cost,	moving_avg_4_day,
dense_rank() over(
             partition by account
             order by moving_avg_4_day desc
         ) account_moving_avg_4_days_dense_rank


from step_1 

)

select   *

from step_2 

where  account_moving_avg_4_days_dense_rank = 1 

order by 1