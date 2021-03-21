CREATE PROCEDURE [dim].[spLoadReferenciaCargoComissionado]

AS

BEGIN 

	INSERT INTO dim.ReferenciaCargoComissionado
	(
		ReferenciaCargoComissionado
	)
	SELECT DISTINCT TRIM([REF_CARGO_COM])
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.ReferenciaCargoComissionado AS C 
	ON TRIM(F.REF_CARGO_COM) = C.ReferenciaCargoComissionado
	WHERE REF_CARGO_COM <> ''
	AND C.IDReferenciaCargoComissionado IS NULL

END