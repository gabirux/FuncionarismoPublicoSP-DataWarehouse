CREATE PROCEDURE [dim].[spLoadFuncionario]

AS

BEGIN

	INSERT INTO dim.Funcionario
	(
		Registro,
		NomeFuncionario
	)
	SELECT DISTINCT F.[REGISTRO], F.[NOME]
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.Funcionario AS FF
	ON F.[REGISTRO]= FF.Registro
	AND F.Registro IS NULL

END