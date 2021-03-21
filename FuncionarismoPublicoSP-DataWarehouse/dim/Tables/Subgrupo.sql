CREATE TABLE [dim].[Subgrupo] (
    [IDSubGrupo] INT           IDENTITY (1, 1) NOT NULL,
    [SubGrupo]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_Subgrupo] PRIMARY KEY CLUSTERED ([IDSubGrupo] ASC)
);

