-- subcadastros 
-- 10 - Cargo
-- 11 - Tipo Material
-- 12 - Marca
-- 13 - Categoria
-- 14 - Cor

-- eventos
-- DROP TABLE eventos
CREATE TABLE eventos
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Descricao  VARCHAR(100) NOT NULL,
	Dt_Inicio  DATE,
	Dt_Termino DATE,
	Status TINYINT DEFAULT 0	
) ENGINE= myIsam

-- colaboradores evento
-- DROP TABLE evento_colaboradores
CREATE TABLE evento_colaboradores
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ID_Evento      INT NOT NULL,
	ID_Colaborador INT NOT NULL,
	Hora_Inicio    TIME,
	Hora_Termino   TIME	
)  ENGINE= myIsam

-- materiais eventos
-- DROP TABLE evento_materiais
CREATE TABLE evento_materiais
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	ID_Evento      INT NOT NULL,
	ID_Material INT NOT NULL,
	Quantidade DECIMAL(14,3) NOT NULL DEFAULT 1
)  ENGINE= myIsam

-- materiais
-- DROP TABLE materiais
CREATE TABLE materiais
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Descricao  VARCHAR(100) NOT NULL,
	Data_Cadastro TIMESTAMP,
  	Fornecedor INT NOT NULL,
    Obs TEXT,
    Categoria int(11) NOT NULL,
    Cor int(11) DEFAULT NULL,		
	Status TINYINT DEFAULT -1
) ENGINE = myIsam

-- Colaboradores
-- DROP TABLE Colaboradores
CREATE TABLE Colaboradores
(
	ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(100) NOT NULL,
	Telefone CHAR(20),	
	sexo ENUM("Masculino",'Feminino'),
	Cargo INT NOT NULL,
	Status TINYINT DEFAULT -1
) ENGINE = myIsam
