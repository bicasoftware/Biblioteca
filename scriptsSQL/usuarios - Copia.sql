CREATE TABLE livros
(
	ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Referencia     CHAR(10) NOT NULL,
	Titulo         VARCHAR(50) NOT NULL,
	Autor          VARCHAR(50) NOT NULL,
	Editora        VARCHAR(50),
	Genero         INT,
	Categoria      INT,
	Fornecedor     INT,
	Qtd_Estoque    SMALLINT,
	Data_Cadastro  TIMESTAMP,
	Status         BOOLEAN DEFAULT -1,
	Observacoes    TEXT,
	Armario        SMALLINT,
	Prateleira     TINYINT,
	Tombo          TINYINT
)
ENGINE MyIsam CHARSET utf8
-- tabela subcadastros
CREATE TABLE SubCadastro
(
	ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Descricao VARCHAR(50) NOT NULL, 
	Tipo_Cadastro SMALLINT NOT NULL -- 1 = Genero, 2 = Categoria, 3 = Tipo_Usuario
)
ENGINE MyIsam CHARSET utf8
-- tabela de livros
CREATE TABLE livros
(
	ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Referencia     CHAR(10) NOT NULL,
	Titulo         VARCHAR(50) NOT NULL,
	Autor          VARCHAR(50) NOT NULL,
	Editora        VARCHAR(50),
	Qtd_Paginas    SMALLINT,
	Medidas        VARCHAR(10),
	Genero         INT,
	Categoria      INT,
	Qtd_Estoque    SMALLINT,
	Limite_Locacao TINYINT NOT NULL DEFAULT 0,
	Data_Cadastro  DATETIME,
	Status         BOOLEAN DEFAULT -1,
	Sinopse        TEXT,
	Localizacao    INT
)
ENGINE MyIsam CHARSET utf8