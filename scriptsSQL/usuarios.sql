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

-- usuarios
CREATE TABLE usuarios
(
	ID           INT UNSIGNED NOT NULL auto_increment,
	Nome         CHAR (20) NOT NULL,
	SobreNome    CHAR (20) NOT NULL,
	Sexo         ENUM ('MASCULINO','FEMININO') NOT NULL,
	Tipo_Usuario INT,
	Cidade       INT,
	Bairro       VARCHAR (30),
	Rua          VARCHAR (30),
	Numero_Casa  SMALLINT,
	Complemento  VARCHAR (20),
	RG           VARCHAR (20),
	Data_Nascto  DATE,
	Status       TINYINT DEFAULT -1,
	PRIMARY KEY (ID)
) ENGINE = MyIsam CHARSET latin1

porra
