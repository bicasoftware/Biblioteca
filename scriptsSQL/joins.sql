-- CREATE TEMPORARY TABLE LIKE evento_materiais

SELECT	
	evento_materiais.ID_Evento,
	materiais.Descricao,
	subcadastro.Descricao AS Cor,
	evento_materiais.Quantidade
FROM evento_materiais
	JOIN materiais ON evento_materiais.ID_Material = materiais.id
	JOIN subcadastro ON materiais.Cor = subcadastro.id
WHERE evento_materiais.ID_Evento = 1


SELECT
	evento_colaboradores.ID_Colaborador,
	colaboradores.Nome,
	evento_colaboradores.Hora_Inicio,
	evento_colaboradores.Hora_Termino
FROM evento_colaboradores
	JOIN colaboradores ON evento_colaboradores.ID_Colaborador = colaboradores.ID
WHERE evento_colaboradores.ID_Evento = 