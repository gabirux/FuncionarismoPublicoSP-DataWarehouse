CREATE PROCEDURE [dim].[spLoadSubgrupo]

AS

BEGIN

	INSERT INTO dim.Subgrupo
	(
		Subgrupo
	)
	SELECT DISTINCT F.[SUBGRUPO]
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.Subgrupo AS S
	ON F.[SUBGRUPO] = S.Subgrupo
	WHERE F.[SUBGRUPO] <> ''
	AND S.IDSubgrupo IS NULL

END