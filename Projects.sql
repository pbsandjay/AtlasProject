CREATE TABLE [dbo].[Projects] (
    [Id]                INT           NOT NULL IDENTITY PRIMARY KEY,
    [Project]           VARCHAR (50)  NOT NULL,
    [Purpose]           VARCHAR (150) NOT NULL,
    [Manager]           VARCHAR (50)  NOT NULL,
    [Original_Due_Date] DATE          NULL,
    [Current_Due_Date]  DATE          NULL,
    [Finished_Date]     DATE          NULL,
    [Status]            VARCHAR (20)  NOT NULL,
    [Type]              VARCHAR (50)  NOT NULL,
    [Done]              VARCHAR (10)  NULL,
    [Comments] VARCHAR(200) NULL, 
);

