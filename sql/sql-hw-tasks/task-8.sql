select account, avg(cost) average_cost,
       sum(cost) sum_cost



from `data-science-course-226116.sql_lessons.group_by_sandbox` 


where impressions > 2

group by account

having avg(cost) > 4
----