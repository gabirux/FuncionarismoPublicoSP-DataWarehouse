CREATE TABLE [dim].[EscolaridadeCargoBasico] (
    [IDEscolaridade]          INT           IDENTITY (1, 1) NOT NULL,
    [EscolaridadeCargoBasico] VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_EscolaridadeCargoBasico] PRIMARY KEY CLUSTERED ([IDEscolaridade] ASC)
);

