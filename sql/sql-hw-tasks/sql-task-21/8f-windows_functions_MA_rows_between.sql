with step_1 as


(
    
select      date, 
            price,
            avg(price) over (order by date 
                             rows between 7 preceding and current row


            ) seven_day_moving_average


from       `data-science-course-226116.sql_lessons.EURUSD_prices` 


)



select      date, 
            price,
            seven_day_moving_average,

            round(seven_day_moving_average, 4) rounded_seven_day_moving_average


from       step_1