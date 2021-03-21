CREATE PROCEDURE [dim].[spLoadEscolaridadeCargoComissionado]
AS

BEGIN

	INSERT INTO dim.EscolaridadeCargoComissionado
	(
		EscolaridadeCargoComissionado
	)
	SELECT DISTINCT TRIM(ESCOL_CARGO_COMISSAO)
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.EscolaridadeCargoComissionado AS D
	ON TRIM(F.ESCOL_CARGO_COMISSAO) = D.EscolaridadeCargoComissionado
	WHERE F.ESCOL_CARGO_COMISSAO <> ''
	AND D.IDEscolaridadeComissionado IS NULL

END