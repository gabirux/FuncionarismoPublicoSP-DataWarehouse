CREATE PROCEDURE [dim].[spLoadSegmento]

AS

BEGIN

	INSERT INTO dim.Segmento
	(
		Segmento
	)
	SELECT DISTINCT F.[SEGMENTO]
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.Segmento AS S
	ON F.[SEGMENTO] = S.Segmento
	WHERE F.[SEGMENTO] <> ''
	AND S.IDSegmento IS NULL

END