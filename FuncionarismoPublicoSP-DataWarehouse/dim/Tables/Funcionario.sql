CREATE TABLE [dim].[Funcionario] (
    [IDFuncionario]   INT           IDENTITY (1, 1) NOT NULL,
    [Registro]        VARCHAR (150) NULL,
    [NomeFuncionario] VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_Funcionario] PRIMARY KEY CLUSTERED ([IDFuncionario] ASC)
);

