select d.name DatabaseName, 
f.name LogicalName, f.physical_name as PhysicalName,
f.type_desc TypeofFile
from sys.master_files f
join sys.databases d on d.database_id=f.database_id
go