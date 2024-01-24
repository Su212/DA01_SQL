--bai1
select name 
from students
where marks>75
order by right(name,3),id
--bai2
select user_id,
concat(upper(left(name,1)),lower(right(name,length(name)-1))) as name
from users order by user_id;
--bai3
SELECT manufacturer,
concat('$',round(sum(total_sales)/1000000,0),' ', 'million')
FROM pharmacy_sales
group by manufacturer
order by sum(total_sales) desc;
--bai4
SELECT 
extract(month from submit_date)as mth,
product_id,
round(avg(Stars),2)as avg_stars
FROM reviews
group by mth, product_id
ORDER BY mth, product_id;
--bai5
SELECT 
sender_id,
count(message_id) as message_count
FROM messages
where extract (month from sent_Date)=8 
and extract (year from sent_Date)=2022
GROUP BY sender_id
ORDER BY message_count DESC
limit 2;
--bai6
select tweet_id
from tweets
where length(content)>15
--bai7
SELECT activity_date AS day,
COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE DATEDIFF('2019-07-27', activity_date) < 30 AND DATEDIFF('2019-07-27', activity_date)>=0
GROUP BY 1
--bai8
select count(employee_id) as number_employee from employees
where extract(month from joining_date) between 1 and 7
and extract(year from joining_date)=2022
--bai9
select position('a' in first_name)as position from worker
where first_name='Amitah'
--bai10
select substring(title, length(winery)+2,4)
from winemag_p2 where country='Macedonia'

