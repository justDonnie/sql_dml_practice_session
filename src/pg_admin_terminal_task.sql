select *from people where nationality = 'United States' or nationality = 'Canada';
select first_name,address from people where address ilike '%119';
select first_name,address,phone_number from people where phone_number ilike '%55%' or phone_number ilike '%22%'or phone_number ilike '%80%';
update people set occupation = 'Developer' where is_married = false;
update people set  first_name='Anne-corinne',last_name= 'Accomb', age=22, gender='Female',address= '199 Veith Circle',phone_number= 731267,email ='avreaccomb1a@techcrunch.com',occupation= 'Assistant Manager',nationality = 'Indonesian',education= 'Califfornia University of Management and Sciences', is_married = true,has_children=true,height = 167,weight= 52 where person_id = 2;
select first_name, weight+5 from people where has_children is true;
delete from people where occupation = 'Teacher';
select*from people where occupation = 'Teacher';
update people set occupation = 'Teacher' where person_id = 23;
select*from people where occupation = 'Teacher';
delete from people where occupation = 'Teacher';
select *from people where age between 18 and 25;
delete from people where age <20;
select *from people where age between 18 and 25;
select*from people where address is null;
update people set address = null where person_id = 39;
update people set address = '____' where person_id = 39;
select *from people where person_id = 39;
select first_name,last_name,height from people order by height desc limit 3;
select *from people where is_married= true order by weight limit 1;
select avg(age)from people where is_married = true;
--select sum(weight)from people order by occupation;
--select*from people where occupation='Developer';
select sum(weight) from people where occupation = 'Developer';
select *from people where email not ilike '%gmail.com';
select*from people where occupation='Developer';
update people set age = 40 where person_id =34;
update people set age = 40 where person_id =9;
update people set age = 40 where person_id =12;
update people set age = 40 where person_id =11;
select * from people where age = 40 and occupation = 'Developer';
select nationality from people;
select nationality,count(*)from people group by nationality order by count(*) desc;