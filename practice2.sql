--bai1
select distinct city from station
where ID%2=0;
--bai2
select count(city)-count(Distinct city) from station;
--bai4
SELECT 
round(cast(sum(item_count*order_occurrences)/sum(order_occurrences)
as decimal),1)as mean
FROM items_per_order;
--bai5
SELECT candidate_id FROM candidates
where skill in ('Python','Tableau', 'PostgreSQL')
group by candidate_id
having count(skill)=3
order by candidate_id;
--bai6
select user_id, 
date(max(post_date))-date(min(post_date)) as days_between
from posts
where post_date between '2021-01-01' and '2022-01-01'
group by user_id
having count(post_id)>=2;
--bai7
SELECT card_name,
max(issued_amount)-min(issued_amount)as difference
FROM monthly_cards_issued
group by card_name
order by difference desc;
--bai8
SELECT manufacturer, 
count(drug)as drug_count,
abs(sum(cogs-total_sales)) as total_lost
FROM pharmacy_sales
where total_sales<cogs
group by manufacturer
order by total_lost DESC;
--bai9
select * from Cinema
where id%2=1 and description !='boring' order by rating desc;
--bai10
select teacher_id,
count(distinct subject_id) as cnt from teacher
group by teacher_id;
--bai11
select user_id,
count(distinct follower_id) as followers_count
from followers
group by user_id order by user_id;
--bai12
select class
from Courses
group by class
having count(student)>=5;
