USE BackupSample
GO

DROP TABLE [PointInTime]
GO

/****** Object:  Table [dbo].[PointInTime]    Script Date: 9/21/2015 6:50:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PointInTime](
	[ROWID] [int] IDENTITY(1,1) NOT NULL,
	[DATE] [datetime] NULL
) ON [PRIMARY]

GO


SELECT * FROM [PointInTime]

BACKUP DATABASE BackupSample to disk = 'c:\sqlbackup\backupsample_prepit.bak' WITH COMPRESSION

USE [backupsample]
GO

INSERT INTO [dbo].[PointInTime]
           ([DATE])
     VALUES
           (getdate())
waitfor delay '00:01:00'
GO 10

BACKUP LOG BackupSample to disk = 'c:\sqlbackup\backupsample_pit.bak' WITH COMPRESSION

SELECT * FROM [PointInTime]

USE MASTER 
GO

RESTORE DATABASE BackupSample FROM DISK = 'c:\sqlbackup\backupsample_prepit.bak' with norecovery, replace
RESTORE LOG BackupSample FROM DISK = 'C:\sqlbackup\backupsample_pit.bak' WITH STOPAT = '2015-09-21 19:13:20.657';

USE BackupSample
GO

SELECT * FROM [PointInTime]
