select d.name DatabaseName,f.name LogicalName,
f.physical_name asPhysicalName,
f.type_desc TypeofFile
from sys.master_files f
join sys.databases d on d.database_id = f.database_id
go


--cmd
--copy test1.mdf test2.mdf
--copy test1.ldf test2.ldf

create database Test1
	on (filename = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Test1.mdf'),
	   (filename = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Test1_log.ldf')
	   for attach;
Go
create Database Test2
	on (filename ='C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Test2.mdf'),
	   (filename ='C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Test2_log.ldf')
	   for attach;
Go
