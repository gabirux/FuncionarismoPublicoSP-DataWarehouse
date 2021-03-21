CREATE PROCEDURE dim.spLoadEscolaridadeCargoBasico
AS

BEGIN

	INSERT INTO dim.EscolaridadeCargoBasico
	(
		EscolaridadeCargoBasico
	)
	SELECT DISTINCT ESCOL_CARGO_BASICO
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.EscolaridadeCargoBasico AS D
	ON F.ESCOL_CARGO_BASICO = D.EscolaridadeCargoBasico
	WHERE F.ESCOL_CARGO_BASICO <> ''
	AND D.IDEscolaridade IS NULL

END