CREATE PROCEDURE `FinalizaLocacao`(pLocacao CHAR(20))
BEGIN
   SELECT Count(*) AS Cont FROM locacao_livros_items WHERE ID_Locacao = pLocacao AND Devolvido_Em IS NOT NULL INTO @Items_Locacao;
   SELECT Count(*) AS Cont FROM locacao_livros_items WHERE ID_Locacao = pLocacao INTO @Total_Items_Locacao;
   
   IF @Items_Locacao = @Total_Items_Locacao THEN
      UPDATE locacao_livros 
      	SET
      	   Status = -1,
      	   Data_Finalizacao = NOW()
      WHERE ID = PLocacao;
   END IF;
   
END;

