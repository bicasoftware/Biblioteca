DROP PROCEDURE IF EXISTS ChecaEstruturaDados;

CREATE PROCEDURE ChecaEstruturaDados(pTabela VARCHAR(100), pCampo VARCHAR(100),pTipo VARCHAR(30))
BEGIN
   DECLARE Query TEXT DEFAULT '';

   SELECT Concat('CREATE TABLE IF NOT EXISTS ', pTabela ,'(ID INT unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT )') INTO Query;
   SET @exec = Query;
   PREPARE Query FROM @exec;
   EXECUTE Query;   	
	
   -- se o campo nao existe, Cria, senão, atualiza
   IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = pTabela AND column_name = pCampo) 
   THEN
	  SELECT Concat('ALTER TABLE ' , pTabela , ' Modify ' , pCampo , ' ' ,pTipo) INTO Query;
	  SET @exec = Query;
	  PREPARE Query FROM @exec;
	  EXECUTE Query;  
   ELSE
	  SELECT Concat('ALTER TABLE ' , pTabela ,' ADD COLUMN ', pCampo , ' ', pTipo) INTO Query;
	  SET @exec = Query;
	  PREPARE Query FROM @exec;
	  EXECUTE Query;
   END IF;
END;

CALL ChecaEstruturaDados("noz","campo4","INT")