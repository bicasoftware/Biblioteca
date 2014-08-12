CREATE TABLE estrutura_tabelas
(
   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   Nome_Tabela VARCHAR(100) NOT NULL,
   Nome_Campo  VARCHAR(100) NOT NULL,
   Tipo_Campo  VARCHAR(100) NOT NULL
)


INSERT INTO estrutura_tabelas(Nome_Tabela, Nome_Campo, Tipo_Campo) VALUES
("doacoes","ID","INT UNSIGNED NOT NULL PRIMARY KEY auto_increment"),


INSERT INTO estrutura_tabelas(Nome_Tabela, Nome_Campo, Tipo_Campo)
SELECT 
	table_name,
	COLUMN_NAME,
	IF(COLUMN_NAME = "ID" , "INT UNSIGNED NOT NULL PRIMARY KEY auto_increment", COLUMN_TYPE) AS COLUMN_TYPE
FROM 
	information_schema.columns 
	WHERE 
		table_schema = SCHEMA()
	AND
		TABLE_NAME NOT IN("estrutura_tabelas","buscalivros")
	

SELECT * FROM estrutura_tabelas