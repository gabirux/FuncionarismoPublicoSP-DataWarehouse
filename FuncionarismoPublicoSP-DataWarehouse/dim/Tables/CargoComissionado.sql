CREATE TABLE [dim].[CargoComissionado] (
    [IDCargoComissionado] INT           IDENTITY (1, 1) NOT NULL,
    [CargoComissionado]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_CargoComissao] PRIMARY KEY CLUSTERED ([IDCargoComissionado] ASC)
);

