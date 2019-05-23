with step_1 as 

(


select     date, 
           store_number, 
           city, 
           bottles_sold,	
           sale_dollars,

          sum(sale_dollars) over (
                                    partition by city 
                                  

                                )  sum_sales, 


          sum(sale_dollars) over (
                                    partition by city 
                                    order by sale_dollars
                                   rows between 1 preceding and 1 following
                                )  sum_sales_rows, 




          sum(sale_dollars) over (
                                    partition by city 
                                    order by sale_dollars
                                   range unbounded preceding
                                 )  sum_sales_range      
                      



from     `bigquery-public-data.iowa_liquor_sales.sales` 


where    bottles_sold > 20
and      sale_dollars > 450	

)


select     date, 
           store_number, 
           city, 
           bottles_sold,	
           sale_dollars,
           round (sum_sales,2)   sum_sales_rounded, 
           round (sum_sales_rows,2)   sum_sales_rows_rounded,
           round (sum_sales_range,2) sum_sales_range_rounded

from      step_1 