CREATE TABLE [dim].[Sexo] (
    [IDSexo] INT           IDENTITY (1, 1) NOT NULL,
    [Sexo]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_Sexo] PRIMARY KEY CLUSTERED ([IDSexo] ASC)
);

