CREATE PROCEDURE dim.spLoadAdmissao

AS

BEGIN

	INSERT INTO dim.Admissao
	(
		Admissao
	)
	SELECT DISTINCT [REL_JUR_ADM]
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.Admissao AS A 
	ON REL_JUR_ADM = A.Admissao
	WHERE REL_JUR_ADM <> ''
	AND A.IDAdmissao IS NULL

END