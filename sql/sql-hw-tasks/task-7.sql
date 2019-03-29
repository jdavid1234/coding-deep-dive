

with step_1 as
(
select    distinct field_6
from     `data-science-course-226116.sql_lessons.stock_exchanges_raw_input` 

order by 1


),

step_2 as
(
select  field_6,

case when lower(field_6) like '%monday - friday%' then 'Y' 

else 'N'

end step_00_mon_fri_flag
from step_1
),

step_3 as
(
select *,

case when lower(field_6) like '%monday - friday%' then replace(lower(field_6), 'monday - friday:', ' ')
else field_6 
end step_01_remove_mon_fri

from step_2
),


step_4 as
(
select *,

strpos(step_01_remove_mon_fri, ':') step_02_str_pos_of_colon

from step_3
),



step_5 as
(
select *,


case when step_01_remove_mon_fri like '%:%' then substr(step_01_remove_mon_fri, 1, strpos(step_01_remove_mon_fri, ':')-1)

else null

end step_03_str_up_to_first_colon

from step_4
),


step_6 as
(
select *,

safe_cast(step_03_str_up_to_first_colon as int64) step_04_str_up_to_first_colon_as_int64

from step_5
),



step_7 as
(
select *,

case when safe_cast(step_03_str_up_to_first_colon as int64) is null 

then step_03_str_up_to_first_colon  

else null

end step_05_times_prefix

from step_6
),




step_8 as
(
select *,

case when step_01_remove_mon_fri  like '%STK%' then replace(step_01_remove_mon_fri, 'STK:', '') 


else step_01_remove_mon_fri

end step_06_remove_times_prefix

from step_7
),




step_9 as
(
select *,

replace(step_06_remove_times_prefix, ' - ', '-')

step_07_replace_blank_dash_blank

from step_8
),



step_10 as
(
select *,

strpos(step_07_replace_blank_dash_blank, ":00 ") step_08_str_pos_of_colon_zero_zero_blank

from step_9
),


step_11 as
(
select *,

case when step_08_str_pos_of_colon_zero_zero_blank > 0   then

substr(step_07_replace_blank_dash_blank, step_08_str_pos_of_colon_zero_zero_blank + 4)

else null 

end step_09_times_suffix


from step_10
),




step_12 as
(
select *,

replace(step_07_replace_blank_dash_blank, step_09_times_suffix, '') 

step_10_remove_times_suffix

from step_11
),



step_13 as
(
select *,

case when step_10_remove_times_suffix like '%:%' then replace(step_10_remove_times_suffix, ':', '')


else step_07_replace_blank_dash_blank

end step_11_remove_colons


from step_12
),


step_14 as
(
select *,

strpos(step_11_remove_colons, '/') step_12_str_pos_of_slash

from step_13
),


step_15 as
(
select *,

case when step_12_str_pos_of_slash > 0 then 


substr(step_11_remove_colons, 1, step_12_str_pos_of_slash - 1)  

else step_11_remove_colons

end step_13_times_part_1

from step_14
),



step_16 as 
(
select *,

case when step_12_str_pos_of_slash > 0 then 

substr(step_11_remove_colons, step_12_str_pos_of_slash + 1)  

else null

end step_14_times_part_2

from step_15
),


step_17 as 
(
select *,

trim(substr(step_13_times_part_1, 1, strpos(step_13_times_part_1, '-')-1)) step_15_times_part_1_open


from step_16
),



step_18 as 
(
select *,


trim(substr(step_13_times_part_1, strpos(step_13_times_part_1, '-')+1)) step_16_times_part_1_close


from step_17
),




step_19 as 
(
select *,

case when step_14_times_part_2 is not null

then substr(step_14_times_part_2, 1, strpos(step_14_times_part_2, '-')-1)


else step_14_times_part_2


end step_17_times_part_2_open




from step_18
),



step_20 as 
(
select *,

case when step_14_times_part_2 is not null

then substr(step_14_times_part_2, strpos(step_14_times_part_2, '-')+1)


else step_14_times_part_2


end step_18_times_part_2_close


from step_19
),




step_21 as 
(
select *,

concat(step_15_times_part_1_open, ':00') step_19_times_part_1_open_add_00



from step_20
),




step_22 as 
(
select *,


concat(step_16_times_part_1_close, ':00') step_20_times_part_1_close_add_00


from step_21
),



step_23 as 
(
select *,


concat(step_17_times_part_2_open, ':00') step_21_times_part_2_open_add_00


from step_22
),





step_24 as 
(
select *,


concat(step_18_times_part_2_close, ':00') step_22_times_part_2_close_add_00


from step_23
),




step_25 as 
(
select *,

strpos(step_19_times_part_1_open_add_00, ':') step_23_times_part_1_open_str_pos_colon

 


from step_24
),


step_26 as 
(
select *,

strpos(step_20_times_part_1_close_add_00, ':') step_24_times_part_1_close_str_pos_colon



from step_25
),



step_27 as 
(
select *,

strpos(step_21_times_part_2_open_add_00, ':') step_25_times_part_2_open_str_pos_colon

 


from step_26
),




step_28 as 
(
select *,

strpos(step_22_times_part_2_close_add_00, ':') step_26_times_part_2_close_str_pos_colon	


from step_27
),





step_29 as 
(
select *,

          concat(
                      substr(step_19_times_part_1_open_add_00, 1, step_23_times_part_1_open_str_pos_colon -3),
          
                       ':', 
                        substr(step_19_times_part_1_open_add_00, step_23_times_part_1_open_str_pos_colon -2)
          
                )

step_27_times_part_1_open_with_new_colon

from step_28
),

	


step_30 as 
(
select *,

            concat(substr(step_20_times_part_1_close_add_00, 1, step_24_times_part_1_close_str_pos_colon -3), 
                  ':',
                  substr(step_20_times_part_1_close_add_00, step_24_times_part_1_close_str_pos_colon -2 )
                  
                  )
                  step_28_times_part_1_close_with_new_colon

from step_29
),



step_31 as 
(
select *,

             concat(substr(step_21_times_part_2_open_add_00, 1, step_25_times_part_2_open_str_pos_colon -3), 
             ':', 
             substr(step_21_times_part_2_open_add_00, step_25_times_part_2_open_str_pos_colon -2)	

                  )
                  step_29_times_part_2_open_with_new_colon
 
 
from step_30
),




step_32 as 
(
select *,

              concat(substr(step_22_times_part_2_close_add_00, 1, step_26_times_part_2_close_str_pos_colon -3),
              ':', 
              substr(step_22_times_part_2_close_add_00, step_26_times_part_2_close_str_pos_colon -2)


                    )
                    step_30_times_part_2_close_with_new_colon

from step_31
),



step_33 as 
(
select *,

safe_cast(step_27_times_part_1_open_with_new_colon as time) step_31_times_part_1_open_cast_as_time


from step_32
),


step_34 as 

(

select*, 

safe_cast(step_28_times_part_1_close_with_new_colon as time) step_32_times_part_1_close_cast_as_time

from step_33 


),



step_35 as 


(


select*, 

safe_cast(step_29_times_part_2_open_with_new_colon as time) step_33_times_part_2_open_cast_as_time

from step_34


),


step_36 as


(



select*, 


safe_cast(step_30_times_part_2_close_with_new_colon as time) 	step_34_times_part_2_close_cast_as_time

from step_35


)

					

select  *
from step_36












