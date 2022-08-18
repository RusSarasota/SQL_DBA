
--Logical & Physical File Names plus state, recovery model, size, growth 
select mf.name, physical_name, mf.state_desc, recovery_model_desc,mf.size,mf.growth
from sys.master_files mf
join sys.databases sd on sd.database_id=mf.database_id
where mf.name like '%LearningTips%'

--select * from sys.master_files
--select * from sys.databases

