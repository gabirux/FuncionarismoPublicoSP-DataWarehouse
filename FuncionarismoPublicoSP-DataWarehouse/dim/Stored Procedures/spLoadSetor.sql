CREATE PROCEDURE [dim].[spLoadSetor]

AS

BEGIN

	INSERT INTO dim.Setor
	(
		Setor
	)
	SELECT DISTINCT F.[SETOR]
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.Setor AS S
	ON F.SETOR = S.Setor
	WHERE F.[SETOR] <> ''
	AND S.IDSetor IS NULL

END