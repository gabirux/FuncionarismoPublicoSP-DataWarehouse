CREATE PROCEDURE fat.[spLoadContratacao]

AS

BEGIN 

WITH funcionarios AS ( 
	SELECT 
	ISNULL(FF.Registro,-1) AS IDRegistro,
	FF.IDFuncionario AS IDFuncionario,
	D.IDData AS IDData,
	ISNULL(A.IDAdmissao,-1) AS IDAdmissao,
	ISNULL(CB.IDCargo,-1) AS IDCargoBasico,
	ISNULL(CC.IDCargoComissionado,-1) AS IDCargoComissionado,
	ISNULL(DF.IDDeficiencia,-1) AS IDDeficiencia,
	ISNULL(ECB.IDEscolaridade,-1) AS IDEscolaridadeCargoBasico,
	ISNULL(ECC.IDEscolaridadeComissionado,-1) AS IDEscolaridadeComissionado,
	ISNULL(RCC.IDReferenciaCargoComissionado,-1) AS IDReferenciaCargoComissionado,
	ISNULL(RC.IDRaca,-1) AS IDRaca,
	ISNULL(SP.IDSecretariaPrefeitura,-1) AS IDSecretariaPrefeitura,
	ISNULL(SG.IDSegmento,-1) AS IDSegmento,
	ISNULL(ST.IDSetor,-1) AS IDSetor,
	ISNULL(SX.IDSexo,-1) AS IDSexo,
	ISNULL(SBG.IDSubGrupo,-1) AS IDSubGrupo
	FROM [stg].[FuncionariosAtivos] AS F
	LEFT JOIN dim.Data AS D 
	ON F.DATA_INICIO_EXERC = D.Data 
	LEFT JOIN dim.Admissao AS A 
	ON F.REL_JUR_ADM = A.Admissao 
	LEFT JOIN dim.CargoBasico AS CB
	ON F.[CARGO_BASICO] = CB.Cargo 
	LEFT JOIN dim.CargoComissionado AS CC 
	ON F.[CARGO_COMISSAO] = CC.CargoComissionado 
	LEFT JOIN dim.Deficiencia AS DF
	ON F.[DEFICIENTE] = DF.Deficiencia 
	LEFT JOIN dim.EscolaridadeCargoBasico AS ECB 
	ON F.[ESCOL_CARGO_BASICO] = ECB.EscolaridadeCargoBasico 
	LEFT JOIN dim.EscolaridadeCargoComissionado AS ECC 
	ON F.[ESCOL_CARGO_COMISSAO] = ECC.[EscolaridadeCargoComissionado]
	LEFT JOIN dim.ReferenciaCargoComissionado AS RCC 
	ON F.[REF_CARGO_COM] = RCC.ReferenciaCargoComissionado
	LEFT JOIN dim.Raca AS RC 
	ON F.[RACA] = RC.Raca 
	LEFT JOIN dim.SecretariaPrefeitura AS SP 
	ON F.[SECRET_PREFREG] = SP.[SecretariaPrefeitura]
	LEFT JOIN dim.Segmento AS SG 
	ON F.[Segmento] = SG.[Segmento]
	LEFT JOIN dim.Setor AS ST 
	ON F.[SETOR] = ST.Setor 
	LEFT JOIN dim.Sexo AS SX 
	ON F.Sexo = SX.Sexo 
	LEFT JOIN dim.Subgrupo AS SBG 
	ON F.[SUBGRUPO] = SBG.SubGrupo
	LEFT JOIN dim.Funcionario AS FF 
	ON F.[REGISTRO] = FF.Registro
)

INSERT INTO fat.Contratacao
(
	IDFuncionario,
	IDRegistro,
	IDData,
	IDAdmissao,
	IDCargoBasico,
	IDCargoComissionado,
	IDDeficiencia,
	IDEscolaridadeCargoBasico,
	IDEscolaridadeCargoComissionado,
	IDReferenciaCargoComissionado,
	IDRaca,
	IDSecretariaPrefeitura,
	IDSegmento,
	IDSetor,
	IDSexo,
	IDSubGrupo
)
SELECT 
CTE.IDFuncionario,
CTE.IDRegistro,
CTE.IDData,
CTE.IDAdmissao,
CTE.IDCargoBasico,
CTE.IDCargoComissionado,
CTE.IDDeficiencia,
CTE.IDEscolaridadeCargoBasico,
CTE.IDEscolaridadeComissionado,
CTE.IDReferenciaCargoComissionado,
CTE.IDRaca,
CTE.IDSecretariaPrefeitura,
CTE.IDSegmento,
CTE.IDSetor,
CTE.IDSexo,
CTE.IDSubGrupo
FROM funcionarios AS CTE
LEFT JOIN fat.Contratacao FAT 
ON CTE.IDRegistro = FAT.IDRegistro 
AND CTE.IDData = FAT.IDData
WHERE FAT.IDRegistro IS NULL



END