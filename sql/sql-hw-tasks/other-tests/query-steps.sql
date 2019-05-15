select   campaign,
         sum(cost)               sum_cost_per_campaign,
         avg(cost)               avg_cost_per_campaign,
         sum(impressions)        sum_impressions_per_campaign,
         -- ------------------------------------------------------
         count(*)                number_of_records,
         count(account)          number_of_accounts, -- just use count(*) if you want number of records
         count(distinct account) number_of_distinct_accounts
         
-- step 1:
FROM     `data-science-course-226116.sql_lessons.group_by_sandbox` 
-- step 2:
where    cost > 5.5
-- step 3:
group by campaign 
-- step 4:
having   sum(cost) > 1000
   and   avg(cost) > 8
-- step 6:
order by sum_impressions_per_campaign