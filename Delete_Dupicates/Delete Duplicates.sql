--select * from testone t1
--inner join TestOneAddress t2 on t1.address1=t2.address1

--insert into testone values ('Ruslan', 25, '25 Peace Street')
--select * from testone
--select * from TestOneAddress
--insert into TestOneAddress values ( '26 Peace Street')

--DELETE DUPLICATES
--with cte as (
--select FirstName,Age,Address1,
--row_number() over(
--partition by FirstName,Age,Address1
--order by FirstName,Age,Address1) row_num
--from testone
--)
--delete from cte 
--where row_num >1