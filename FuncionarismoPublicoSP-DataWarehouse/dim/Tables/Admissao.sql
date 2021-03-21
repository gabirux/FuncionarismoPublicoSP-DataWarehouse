CREATE TABLE [dim].[Admissao] (
    [IDAdmissao] INT           IDENTITY (1, 1) NOT NULL,
    [Admissao]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_Admissao] PRIMARY KEY CLUSTERED ([IDAdmissao] ASC)
);

