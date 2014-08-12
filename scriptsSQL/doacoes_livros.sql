DROP PROCEDURE Doacao_livros
CREATE PROCEDURE Doacao_livros(pDoador INT,pFuncionario INT)
BEGIN
	INSERT INTO Doacoes
		SET
			ID_Doador       = pDoador,
			ID_Funcionario  = pFuncionario,
		    Data_Doacao	    = NOW();			
	
	SELECT ID FROM doacoes ORDER BY ID DESC LIMIT 1 INTO @ID;
	
	INSERT INTO doacoes_items(ID_Doacao,ID_Livro,Quantidade)
	SELECT @ID,ID_Livro,Quantidade FROM temp_doacoes_livros;
END;