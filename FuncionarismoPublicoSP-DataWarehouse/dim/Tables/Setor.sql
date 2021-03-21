CREATE TABLE [dim].[Setor] (
    [IDSetor] INT           IDENTITY (1, 1) NOT NULL,
    [Setor]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_Setor] PRIMARY KEY CLUSTERED ([IDSetor] ASC)
);

