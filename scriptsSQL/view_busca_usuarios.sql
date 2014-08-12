CREATE VIEW buscalivros AS 
SELECT 
		livros.ID AS ID,
		livros.referencia AS referencia,
		livros.Titulo AS Titulo,
		autor.Descricao AS Desc_autor,
		editora.Descricao AS Desc_Editora,
		genero.Descricao AS Desc_Genero,
		categoria.Descricao AS Desc_Categoria
FROM livros 
	LEFT JOIN subcadastro autor   ON livros.Autor = autor.ID
	LEFT JOIN subcadastro editora ON livros.Editora = editora.ID
	LEFT JOIN subcadastro genero  ON livros.Genero = genero.ID
	LEFT JOIN subcadastro categoria ON livros.Categoria = categoria.ID
WHERE locavel = -1