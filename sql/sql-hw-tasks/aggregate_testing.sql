select  account, 
        count(campaign) campaigns_per_account,
        count(*), 
        count(distinct campaign) distinct_campaigns_per_account,
       
        avg(cost) avg_cost, 
        min(cost) min_cost,
        max(cost) max_cost,
        sum(cost) total_cost,
        max(cost) - min(cost)  cost_range,
        count(cost) cost_per_account,
        count(*), 
        count(distinct cost) distinct_cost_per_account, 
        
        
        avg(impressions) avg_impressions, 
        min(impressions) min_impressions,
        max(impressions) max_impressions,
        sum(impressions) total_impressions,
        
        sum(cost) / sum(impressions)     cost_per_campagin,
    --    sum(impressions) / sum(campaign) impression_per_campaign, 
        sum(cost) / sum(impressions)     cost_per_impression 
       

from    `data-science-course-226116.sql_lessons.group_by_sandbox` 


group by account 




/*
--account	campaign	cost	impressions





AVG – calculates the average of a set of values.
COUNT – counts rows in a specified table or view.
MIN – gets the minimum value in a set of values.
MAX – gets the maximum value in a set of values.
SUM – calculates the sum of values.

*/