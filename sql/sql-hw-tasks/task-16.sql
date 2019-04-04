select irs.ein,
ein.name tax_exempt_organization,
irs.travel money_spent_on_travel_expenses,
irs.travelofpublicoffcl  travel_expenses_on_public_officials


from `bigquery-public-data.irs_990.irs_990_2017`             irs 


inner join  `bigquery-public-data.irs_990.irs_990_ein`  ein 

on irs.ein = ein.ein

order by travel_expenses_on_public_officials  desc

limit 5 
