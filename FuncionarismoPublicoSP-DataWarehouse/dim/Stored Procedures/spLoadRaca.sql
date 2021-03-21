CREATE PROCEDURE dim.spLoadRaca
AS

BEGIN

	INSERT INTO dim.Raca
	(
		Raca
	)
	SELECT DISTINCT F.RACA
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.Raca AS R
	ON F.RACA = R.Raca
	WHERE F.RACA <> ''
	AND R.IDRaca IS NULL

END