CREATE TABLE [dim].[ReferenciaCargoComissionado] (
    [IDReferenciaCargoComissionado] INT           IDENTITY (1, 1) NOT NULL,
    [ReferenciaCargoComissionado]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_RefCargoComissionado] PRIMARY KEY CLUSTERED ([IDReferenciaCargoComissionado] ASC)
);

