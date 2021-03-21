CREATE PROCEDURE [dim].[spLoadCargoComissionado]
AS

BEGIN

	INSERT INTO dim.CargoComissionado
	(
		CargoComissionado
	)
	SELECT DISTINCT [CARGO_COMISSAO]
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.CargoComissionado AS C
	ON CARGO_COMISSAO = C.CargoComissionado
	WHERE CARGO_COMISSAO <> ''
	AND C.IDCargoComissionado IS NULL

END