CREATE TABLE [dim].[Deficiencia] (
    [IDDeficiencia] INT           IDENTITY (1, 1) NOT NULL,
    [Deficiencia]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_Deficiencia] PRIMARY KEY CLUSTERED ([IDDeficiencia] ASC)
);

