CREATE PROCEDURE `locacao_livros`(pUsuario INT,pFuncionario INT)
begin
	INSERT INTO locacao_livros
		SET
			ID_Usuario      = pUsuario,
			ID_Funcionario  = pFuncionario,
			Data_Locacao    = NOW();			
	
	SELECT ID FROM locacao_livros ORDER BY ID DESC LIMIT 1 INTO @ID;
	
	INSERT INTO locacao_livros_items(ID_Locacao,ID_livro,Data_Devolucao,Numero_Renovacoes)
	SELECT @ID,ID_Livro,Data_Devolucao,"1" FROM temp_loc_livros;
END;

