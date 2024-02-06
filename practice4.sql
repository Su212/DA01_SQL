--ex1
select 
  SUM(CASE WHEN device_type = 'laptop' THEN 1 
  ELSE 0 END) AS laptop_views, 
  SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 
  ELSE 0 END) AS mobile_views 
FROM viewership;
--ex2
select x,y,z, 
case 
when x+y>z and y+z>x and z+x>y then 'Yes' 
else 'No' end as triangle from triangle;
--ex3
select
  ROUND (100.0 * COUNT (case_id) FILTER (WHERE call_category IS NULL OR call_category = 'n/a')
    / COUNT (case_id), 1) AS uncategorised_call_pct
FROM callers;
--ex4
select name
from Customer
where referee_id <> 2 or isnull(referee_id) = 1
--ex5
select   
    survived,      
    COUNT(CASE WHEN pclass = 1 THEN pclass END) AS first_class,   
    COUNT(CASE WHEN pclass = 2 THEN pclass END) AS second_class,   
    COUNT(CASE WHEN pclass = 3 THEN pclass END) AS third_class  
from titanic  
group by survived 
