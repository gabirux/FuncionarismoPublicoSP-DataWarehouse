CREATE TABLE [dim].[SecretariaPrefeitura] (
    [IDSecretariaPrefeitura] INT           IDENTITY (1, 1) NOT NULL,
    [SecretariaPrefeitura]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_SecretariaSubprefeitura] PRIMARY KEY CLUSTERED ([IDSecretariaPrefeitura] ASC)
);

