CREATE TABLE [dim].[EscolaridadeCargoComissionado] (
    [IDEscolaridadeComissionado]    INT           IDENTITY (1, 1) NOT NULL,
    [EscolaridadeCargoComissionado] VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_EscolaridadeCargoComissionado] PRIMARY KEY CLUSTERED ([IDEscolaridadeComissionado] ASC)
);

