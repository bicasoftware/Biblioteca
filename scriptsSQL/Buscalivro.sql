DROP PROCEDURE BuscaLivro;

CREATE PROCEDURE BuscaLivro(Valor VARCHAR(50))
BEGIN
	SELECT
		Livros.ID,
		Livros.referencia,
		Livros.Titulo,
		Autor.Descricao AS Desc_autor,
		Editora.Descricao AS Desc_Editora,
		Genero.Descricao AS Desc_Genero,
		Categoria.Descricao AS Desc_Categoria
	FROM livros
		LEFT JOIN subcadastro Autor     ON livros.Autor   = autor.ID
		LEFT JOIN subcadastro Editora   ON livros.Editora = Editora.ID
		LEFT JOIN subcadastro Genero    ON livros.Genero    = Genero.ID
		LEFT JOIN subcadastro Categoria ON livros.Categoria = Categoria.id
	WHERE 
	   Titulo LIKE Concat("%",Valor,"%")
	OR
	   Autor.Descricao LIKE Concat("%",Valor,"%")
	OR
	   Editora.Descricao LIKE Concat("%",Valor,"%")
	OR
	   Genero.Descricao LIKE Concat("%",Valor,"%")
	OR 
	   Categoria.Descricao LIKE Concat("%",Valor,"%");
END

CALL BuscaLivro("machado")
