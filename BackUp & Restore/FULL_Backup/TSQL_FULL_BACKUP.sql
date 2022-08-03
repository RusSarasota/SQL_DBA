BACKUP DATABASE [LearningTips] 
TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\LearningTips'
WITH NOFORMAT,
     		INIT,
     		NAME = N'LearningTips-Full Database Backup',
     		SKIP,
     		NOREWIND,
     		NOUNLOAD,
     		COMPRESSION,
     		STATS = 10,
     		CHECKSUM;
GO
DECLARE @backupSetId AS INT;
SELECT @backupSetId = position
FROM msdb..backupset
WHERE database_name = N'LearningTips'
      		AND backup_set_id =
      		(
          		SELECT MAX(backup_set_id)
          		FROM msdb..backupset
          		WHERE database_name = N'LearningTips'
      		);
IF @backupSetId IS NULL
BEGIN
RAISERROR(N'Verify failed. Backup information for database ''LearningTips'' not found.', 16, 1);
END;
RESTORE VERIFYONLY
FROM DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\LearningTips'
WITH FILE = @backupSetId,
     		NOUNLOAD,
     		NOREWIND;
GO