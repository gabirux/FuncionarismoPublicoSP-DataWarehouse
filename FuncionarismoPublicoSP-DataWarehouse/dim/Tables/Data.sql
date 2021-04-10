CREATE TABLE [dim].[Data] (
    [IDData] INT           NOT NULL,
    [Data]   DATE          NULL,
    [Mes]    VARCHAR (150) NULL,
    [AnoMes] VARCHAR (150) NULL,
    [Ano]    INT           NULL,
    CONSTRAINT [PK_Dim_Data] PRIMARY KEY CLUSTERED ([IDData] ASC)
);



