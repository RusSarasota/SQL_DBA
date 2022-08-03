--create table TestOne (Id int identity(1,1), FirstName nvarchar(250), Age int,Address1 nvarchar(250) not null);
--insert into TestOne values ('Ruslan', 25, '25 Peace Street')
--select * from TestOne

--create table TestOneAddress (Id int identity(1,1), Address1 nvarchar(250) Primary Key, Address2 nvarchar(250));
--select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS

--alter table testone add foreign key (Address1) references TestOneAddress (Address1)
