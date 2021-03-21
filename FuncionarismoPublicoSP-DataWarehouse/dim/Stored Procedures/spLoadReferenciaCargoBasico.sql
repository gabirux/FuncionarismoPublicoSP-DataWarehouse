CREATE PROCEDURE [dim].[spLoadReferenciaCargoBasico]

AS

BEGIN

	INSERT INTO dim.ReferenciaCargoBasico
	(
		ReferenciaCargoBasico
	)
	SELECT DISTINCT [REF_CARGO_BAS]
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.ReferenciaCargoBasico AS C 
	ON F.REF_CARGO_BAS = C.ReferenciaCargoBasico
	WHERE REF_CARGO_BAS <> ''
	AND C.IDReferenciaCargoBasico IS NULL

END