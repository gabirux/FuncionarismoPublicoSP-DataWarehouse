CREATE TABLE [dim].[Segmento] (
    [IDSegmento] INT           IDENTITY (1, 1) NOT NULL,
    [Segmento]   VARCHAR (150) NULL,
    CONSTRAINT [PK_Dim_Segmento] PRIMARY KEY CLUSTERED ([IDSegmento] ASC)
);

