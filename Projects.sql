CREATE TABLE [dbo].[Projects] (
    [Id]                INT           IDENTITY (1, 1) NOT NULL,
	[Number]                INT           NOT NULL,
    [Project]           VARCHAR (50)  NOT NULL,
    [Purpose]           VARCHAR (150) NOT NULL,
    [Manager]           VARCHAR (50)  NOT NULL,
    [Original_Due_Date] DATE          NULL,
    [Current_Due_Date]  DATE          NULL,
    [Actual_Date]       DATE          NULL,
    [Status]            VARCHAR (20)  NOT NULL,
    [Type]              VARCHAR (20)  NOT NULL,
    [Done]      VARCHAR (10)  NULL,
    [Current_Status]    VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

