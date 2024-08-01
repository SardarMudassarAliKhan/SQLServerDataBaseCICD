CREATE TABLE [dbo].[Student] (
    [StudentID]      INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]      NVARCHAR (50)  NOT NULL,
    [LastName]       NVARCHAR (50)  NOT NULL,
    [DateOfBirth]    DATE           NULL,
    [Gender]         CHAR (1)       NULL,
    [Email]          NVARCHAR (100) NULL,
    [PhoneNumber]    NVARCHAR (15)  NULL,
    [EnrollmentDate] DATE           NOT NULL,
    [Address]        NVARCHAR (250) NULL,
    [City]           NVARCHAR (100) NULL,
    [State]          NVARCHAR (100) NULL,
    [PostalCode]     NVARCHAR (10)  NULL,
    [Country]        NVARCHAR (100) NULL,
    [IsActive]       BIT            DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([StudentID] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IDX_Student_LastName]
    ON [dbo].[Student]([LastName] ASC);

