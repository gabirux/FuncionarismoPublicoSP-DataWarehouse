CREATE TABLE [stg].[FuncionariosAtivos] (
    [REGISTRO]             INT           NULL,
    [VINCULO]              INT           NULL,
    [NOME]                 VARCHAR (150) NULL,
    [CARGO_BASICO]         VARCHAR (150) NULL,
    [REF_CARGO_BAS]        VARCHAR (150) NULL,
    [SEGMENTO]             VARCHAR (150) NULL,
    [GRUPO]                VARCHAR (150) NULL,
    [SUBGRUPO]             VARCHAR (150) NULL,
    [ESCOL_CARGO_BASICO]   VARCHAR (150) NULL,
    [CARGO_COMISSAO]       VARCHAR (150) NULL,
    [REF_CARGO_COM]        VARCHAR (150) NULL,
    [ESCOL_CARGO_COMISSAO] VARCHAR (150) NULL,
    [DATA_INICIO_EXERC]    DATE          NULL,
    [REL_JUR_ADM]          VARCHAR (150) NULL,
    [SECRET_PREFREG]       VARCHAR (150) NULL,
    [SETOR]                VARCHAR (150) NULL,
    [SEXO]                 VARCHAR (2)   NULL,
    [ANO_NASCIMENTO]       INT           NULL,
    [RACA]                 VARCHAR (150) NULL,
    [DEFICIENTE]           VARCHAR (150) NULL
);

