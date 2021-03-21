CREATE PROCEDURE dim.spLoadDeficiencia
AS

BEGIN

	INSERT INTO dim.Deficiencia
	(
		Deficiencia
	)
	SELECT DISTINCT [DEFICIENTE]
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.Deficiencia AS D
	ON F.DEFICIENTE = D.Deficiencia
	WHERE F.DEFICIENTE <> ''
	AND D.IDDeficiencia IS NULL

END