CREATE PROCEDURE [dim].[spLoadSexo]

AS

BEGIN

	INSERT INTO dim.Sexo
	(
		Sexo
	)
	SELECT DISTINCT F.[SEXO]
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.Sexo AS S
	ON F.SEXO = S.Sexo
	WHERE F.[SEXO] <> ''
	AND S.IDSexo IS NULL

END