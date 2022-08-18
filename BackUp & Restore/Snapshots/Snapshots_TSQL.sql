--Snapshot T-SQL
create database LearningTipsNow_Snapshot on (name = LearningTipsNow, filename = 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL2017\MSSQL\DATA\LearningTipsNow_Snapshot.ss') as snapshot of LearningTipsNow

--select * from sys.master_files