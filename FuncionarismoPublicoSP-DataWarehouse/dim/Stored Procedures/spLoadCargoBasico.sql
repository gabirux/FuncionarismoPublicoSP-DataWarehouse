CREATE PROCEDURE [dim].[spLoadCargoBasico]

AS

BEGIN

	INSERT INTO dim.CargoBasico
	(
		Cargo
	)
	SELECT DISTINCT CARGO_BASICO
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.CargoBasico AS C 
	ON F.CARGO_BASICO = C.Cargo
	WHERE CARGO_BASICO <> ''
	AND C.IDCargo IS NULL

END