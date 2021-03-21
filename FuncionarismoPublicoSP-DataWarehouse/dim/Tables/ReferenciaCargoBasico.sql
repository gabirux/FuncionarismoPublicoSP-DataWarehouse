CREATE TABLE [dim].[ReferenciaCargoBasico] (
    [IDReferenciaCargoBasico] INT           IDENTITY (1, 1) NOT NULL,
    [ReferenciaCargoBasico]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_RefCargo] PRIMARY KEY CLUSTERED ([IDReferenciaCargoBasico] ASC)
);

