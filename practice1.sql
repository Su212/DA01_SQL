--bai1
select name from city
where population > 120000
and countrycode ='USA';
--bai2
select * from city
where countrycode = 'JPN';
--bai3
select city, state from station;
--bai4
SELECT DISTINCT CITY 
FROM STATION 
WHERE LEFT(CITY,1) IN ('A','E','I','O','U');
--bai5
SELECT DISTINCT CITY 
FROM STATION 
WHERE right(CITY,1) IN ('a','e','i','o','u');
--bai6 
SELECT DISTINCT CITY 
FROM STATION 
WHERE right(CITY,1) IN ('a','e', 'i','o','u');
--bai7
select name from employee
order by name;
--bai8
select name from employee
where salary >2000
and months <10
order by employee_id;
--bai9
select product_id from Products
where low_fats = 'Y' and recyclable = 'Y';
--bai10
select name from Customer
where referee_id !=2 or referee_id is null;
--bai11
select name, population, area from World
where area >=3000000 or population >=25000000;
--bai12
select distinct author_id as id from Views
where author_id=viewer_id
order by author_id;
--bai13
SELECT part, assembly_step FROM parts_assembly
where finish_date is null;
--bai14
select * from lyft_drivers
where yearly_salary <=30000 or yearly_salary>=70000;
--bai15
select * from uber_advertising
where year='2019' and money_spent >=100000;
