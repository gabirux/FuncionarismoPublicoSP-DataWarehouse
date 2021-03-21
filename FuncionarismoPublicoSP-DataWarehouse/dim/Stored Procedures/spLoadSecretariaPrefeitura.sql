CREATE PROCEDURE [dim].[spLoadSecretariaPrefeitura]

AS

BEGIN

	INSERT INTO dim.SecretariaPrefeitura
	(
		SecretariaPrefeitura
	)
	SELECT DISTINCT [SECRET_PREFREG]
	FROM [stg].[FuncionariosAtivos] AS F 
	LEFT JOIN dim.SecretariaPrefeitura AS S
	ON F.SECRET_PREFREG = S.SecretariaPrefeitura
	WHERE SECRET_PREFREG <> ''
	AND S.IDSecretariaPrefeitura IS NULL

END