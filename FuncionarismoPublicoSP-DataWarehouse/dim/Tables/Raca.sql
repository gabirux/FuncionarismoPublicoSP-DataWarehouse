CREATE TABLE [dim].[Raca] (
    [IDRaca] INT           IDENTITY (1, 1) NOT NULL,
    [Raca]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_Raca] PRIMARY KEY CLUSTERED ([IDRaca] ASC)
);

