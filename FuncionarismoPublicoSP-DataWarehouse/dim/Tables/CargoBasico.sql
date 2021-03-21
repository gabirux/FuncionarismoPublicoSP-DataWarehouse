CREATE TABLE [dim].[CargoBasico] (
    [IDCargo] INT           IDENTITY (1, 1) NOT NULL,
    [Cargo]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_Cargo] PRIMARY KEY CLUSTERED ([IDCargo] ASC)
);

