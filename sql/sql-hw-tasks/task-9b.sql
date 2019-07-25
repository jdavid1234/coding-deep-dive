select     concat(account, ' ', campaign) account_campaign,	
            
            
           sum(cost) / sum(impression) cost_per_impression,
            
            
           max(cost) max_cost



from       `data-science-course-226116.sql_lessons.group_by_sandbox` 


group by   account, campaign

having      max_cost > 80 
    or      cost_per_impression > 5


order by     cost_per_impression desc