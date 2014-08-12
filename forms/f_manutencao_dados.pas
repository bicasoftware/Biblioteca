unit f_manutencao_dados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.ComCtrls, rkGlassButton, Vcl.Grids,
  Data.DB, ZAbstractRODataset, ZDataset,ClipBrd;

type
  Tfrm_manutencao_dados = class(Tfrm_form_normal)
    Panel1: TPanel;
    pBar: TProgressBar;
    rkGlassButton1: TrkGlassButton;
    sBar: TStatusBar;
    grade_conexao: TStringGrid;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    procedure FormShow(Sender: TObject);
    procedure rkGlassButton1Click(Sender: TObject);
  private
    procedure SetaAcao(Mensagem: String);
    procedure SetaTabela(Mensagem: String);

    procedure ChecaEstrutura(Nome_Tabela: String);
    procedure CriaTabelas;
    procedure CriaProcedures;
    procedure DropaStoredProcedure(Nome_Proc : String);
    procedure CriaProcedureManutencao;
    procedure CriaViews;
    procedure DropaView(Nome_View: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_manutencao_dados: Tfrm_manutencao_dados;

implementation

{$R *.dfm}

uses f_menu, f_funcoes;

procedure Tfrm_manutencao_dados.FormShow(Sender: TObject);
begin
   inherited;

   grade_conexao.Cells[0,0] := 'Ip do Servidor';
   grade_conexao.Cells[1,0] := 'Porta Utilizada';
   grade_conexao.Cells[0,1] := frm_menu.zconn.HostName;
   grade_conexao.Cells[1,1] := IntToStr(frm_menu.zconn.Port);
end;

procedure Tfrm_manutencao_dados.rkGlassButton1Click(Sender: TObject);
begin
   Application.ProcessMessages;
   CriaProcedureManutencao;
   CriaTabelas;
   CriaProcedures;
   CriaViews;

   Application.MessageBox('Manutenção de Dados Concluída!','Finalizado',MB_OK);
   SetaAcao('Finalizado');
   SetaTabela('');
end;

procedure Tfrm_manutencao_dados.SetaAcao(Mensagem : String);
begin
   sBar.Panels[1].Text := Mensagem;
end;

procedure Tfrm_manutencao_dados.SetaTabela(Mensagem : String);
begin
   sBar.Panels[2].Text := Mensagem;
end;

procedure Tfrm_manutencao_dados.ChecaEstrutura(Nome_Tabela : String);
begin
end;

procedure Tfrm_manutencao_dados.CriaProcedures;
var
   tab_queries : TZReadOnlyQuery;
   NomeProcedure : String;
begin
   Application.ProcessMessages;
   instanciaQuery(tab_queries);

   SetaAcao('Checando Procedimentos:');

   //a cada nova procedure, incrementar contador
   pBar.Max := 4;
   pBar.Min := 1;
   pBar.Position := 1;

   {####  Doacao_livros}
   NomeProcedure := 'Doacao_livros';
   SetaTabela(NomeProcedure);
   DropaStoredProcedure(NomeProcedure);

   With tab_queries do begin
      Close;
      SQl.Clear;
      SQL.Add('CREATE PROCEDURE `Doacao_livros`(pDoador INT,pFuncionario INT)');
      SQL.Add('BEGIN');
      SQL.Add('	INSERT INTO Doacoes');
      SQL.Add('		SET');
      SQL.Add('			ID_Doador       = pDoador,');
      SQL.Add('			ID_Funcionario  = pFuncionario,');
      SQL.Add('		    Data_Doacao	    = NOW();			');
      SQL.Add('	');
      SQL.Add('	SELECT ID FROM doacoes ORDER BY ID DESC LIMIT 1 INTO @ID;');
      SQL.Add('	');
      SQL.Add('	INSERT INTO doacoes_items(ID_Doacao,ID_Livro,Quantidade)');
      SQL.Add('	SELECT @ID,ID_Livro,Quantidade FROM temp_doacoes_livros;');
      SQL.Add('END;');
      ExecSQL;
   end;
   pBar.Position := pBar.Position + 1;

   {####  FinalizaLocacao}
   NomeProcedure := 'FinalizaLocacao';
   SetaTabela(NomeProcedure);
   DropaStoredProcedure(NomeProcedure);

   With tab_queries do begin
      Close;
      SQl.Clear;
      SQL.Add('CREATE PROCEDURE `FinalizaLocacao`(pLocacao CHAR(20))');
      SQL.Add('BEGIN');
      SQL.Add('   SELECT Count(*) AS Cont FROM locacao_livros_items WHERE ID_Locacao = pLocacao AND Devolvido_Em IS NOT NULL INTO @Items_Locacao;');
      SQL.Add('   SELECT Count(*) AS Cont FROM locacao_livros_items WHERE ID_Locacao = pLocacao INTO @Total_Items_Locacao;');
      SQL.Add('   ');
      SQL.Add('   IF @Items_Locacao = @Total_Items_Locacao THEN');
      SQL.Add('      UPDATE locacao_livros ');
      SQL.Add('      	SET');
      SQL.Add('      	   Status = -1,');
      SQL.Add('      	   Data_Finalizacao = NOW()');
      SQL.Add('      WHERE ID = PLocacao;');
      SQL.Add('   END IF;');
//      SQL.Add('   UPDATE livros SET Qtd_Estoque = Qtd_Estoque + 1 WHERE ID IN');
//      SQL.Add('   (');
//      SQL.Add('      SELECT id_livro FROM locacao_livros_items WHERE Devolvido_Em IS NULL AND ID_Locacao = pLocacao');
//      SQL.Add('   );');
      SQL.Add('   ');
      SQL.Add('END;');
      ExecSQL;
   end;
   pBar.Position := pBar.Position + 1;

   {####  locacao_livros}
   NomeProcedure := 'locacao_livros';
   SetaTabela(NomeProcedure);
   DropaStoredProcedure(NomeProcedure);

   With tab_queries do begin
      Close;
      SQl.Clear;
      SQL.Add('CREATE PROCEDURE `locacao_livros`(pUsuario INT,pFuncionario INT)');
      SQL.Add('begin');
      SQL.Add('	INSERT INTO locacao_livros');
      SQL.Add('		SET');
      SQL.Add('			ID_Usuario      = pUsuario,');
      SQL.Add('			ID_Funcionario  = pFuncionario,');
      SQL.Add('			Data_Locacao    = NOW();			');
      SQL.Add('	');
      SQL.Add('	SELECT ID FROM locacao_livros ORDER BY ID DESC LIMIT 1 INTO @ID;');
      SQL.Add('	');
      SQL.Add('	INSERT INTO locacao_livros_items(ID_Locacao,ID_livro,Data_Devolucao,Numero_Renovacoes)');
      SQL.Add('	SELECT @ID,ID_Livro,Data_Devolucao,"1" FROM temp_loc_livros;');
      SQL.Add('	UPDATE livros SET Qtd_Estoque = Qtd_Estoque - 1 WHERE ID IN');
      SQL.Add('	(');
      SQL.Add('	   SELECT id_livro FROM locacao_livros_items WHERE ID_Locacao = @ID');
      SQL.Add('	);');
      SQL.Add('END;');
      ExecSQL;
   end;
   pBar.Position := pBar.Position + 1;

   {####  DevolucaoItem}
   NomeProcedure := 'DevolucaoItem';
   SetaTabela(NomeProcedure);
   DropaStoredProcedure(NomeProcedure);

   With tab_queries do begin
      Close;
      SQl.Clear;
      SQL.Add('   CREATE PROCEDURE DevolucaoItem(pID INT)');
      SQL.Add('   BEGIN');
      SQL.Add('      -- atualiza a devolucao');
      SQL.Add('      UPDATE locacao_livros_items');
      SQL.Add('      SET Devolvido_Em = now() WHERE ID = pID;');
      SQL.Add('');
      SQL.Add('      -- pega a id do livro');
      SQL.Add('      SELECT ID_livro FROM locacao_livros_items WHERE ID = pId INTO @Cod;');
      SQL.Add('');
      SQL.Add('      -- efetua adição do livro ao sistema');
      SQL.Add('      UPDATE livros SET Qtd_Estoque = Qtd_Estoque + 1 WHERE ID = @Cod;');
      SQL.Add('   END');
      ExecSQL;
   end;
   pBar.Position := pBar.Position + 1;
   tab_queries.Free;
end;

procedure Tfrm_manutencao_dados.CriaTabelas;
var
   tab_Comandos : TZReadOnlyQuery;
   Nome_tabela : String;
   Sexo : String;
begin
   Application.ProcessMessages;
   Sexo := QuotedStr('Masculino') + ',' + QuotedStr('feminino');

   SetaAcao('Atualizando Tabela: ');
   pBar.Max := 10;
   pBar.Min := 1;
   pBar.Position := 0;

   {tabela doacoes  #################}
   Nome_tabela := 'doacoes';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("doacoes","ID_Doador","int")');
   RodaQuery('CALL ChecaEstruturaDados("doacoes","ID_Funcionario","int")');
   RodaQuery('CALL ChecaEstruturaDados("doacoes","Data_Doacao","timestamp")');
   pBar.Position := pBar.Position + 1;

   {tabela doacoes_items  #################}
   Nome_tabela := 'doacoes_items';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("doacoes_items","ID_Doacao","int")');
   RodaQuery('CALL ChecaEstruturaDados("doacoes_items","ID_Livro","int")');
   RodaQuery('CALL ChecaEstruturaDados("doacoes_items","Quantidade","tinyint")');
   pBar.Position := pBar.Position + 1;

   {tabela doadores  #################}
   Nome_tabela := 'doadores';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("doadores","Nome","char(20)")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","SobreNome","char(20)")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","Sexo","enum('+ Sexo +')")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","Cidade","varchar(30)")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","Bairro","varchar(30)")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","Rua","varchar(30)")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","Numero_Casa","smallint")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","Complemento","varchar(20)")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","RG","varchar(20)")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","Data_Nascto","date")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","Data_Cadastro","timestamp")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","Telefone","char(14)")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","Celular","char(14)")');
   RodaQuery('CALL ChecaEstruturaDados("doadores","status","TINYINT NOT NULL DEFAULT 0")');
   pBar.Position := pBar.Position + 1;

   {tabela livros  #################}
   Nome_tabela := 'livros';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("livros","referencia","char(20)")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Titulo","varchar(100)")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Autor","int")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Editora","int")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Genero","int")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Categoria","int")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Fornecedor","int")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Qtd_Estoque","SMALLINT")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Data_Cadastro","TIMESTAMP")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Status","TINYINT DEFAULT -1")');
   RodaQuery('CALL ChecaEstruturaDados("livros","locavel","TINYINT DEFAULT -1")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Observacoes","TEXT")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Armario","SMALLINT")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Nivel","SMALLINT")');
   RodaQuery('CALL ChecaEstruturaDados("livros","Tombo","SMALLiNT")');
   pBar.Position := pBar.Position + 1;

   {tabela locacao_livros  #################}
   Nome_tabela := 'locacao_livros';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("locacao_livros","ID_Usuario","INT")');
   RodaQuery('CALL ChecaEstruturaDados("locacao_livros","ID_Funcionario","INT")');
   RodaQuery('CALL ChecaEstruturaDados("locacao_livros","Data_Locacao","TIMESTAMP")');
   RodaQuery('CALL ChecaEstruturaDados("locacao_livros","Status","TINYINT DEFAULT 0")');
   RodaQuery('CALL ChecaEstruturaDados("locacao_livros","Data_Finalizacao","DATE")');
   pBar.Position := pBar.Position + 1;

   {tabela locacao_livros_items  #################}
   Nome_tabela := 'locacao_livros_items';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("locacao_livros_items","ID_Locacao","INT")');
   RodaQuery('CALL ChecaEstruturaDados("locacao_livros_items","ID_Livro","INT")');
   RodaQuery('CALL ChecaEstruturaDados("locacao_livros_items","ID_Funcionario","INT")');
   RodaQuery('CALL ChecaEstruturaDados("locacao_livros_items","Data_Devolucao","DATE")');
   RodaQuery('CALL ChecaEstruturaDados("locacao_livros_items","Devolvido_Em","DATE")');
   RodaQuery('CALL ChecaEstruturaDados("locacao_livros_items","Numero_Renovacoes","TINYINT")');
   pBar.Position := pBar.Position + 1;

   {tabela subcadastro  #################}
   Nome_tabela := 'subcadastro';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("subcadastro","Descricao","varchar(50)")');
   RodaQuery('CALL ChecaEstruturaDados("subcadastro","Tipo_Cadastro","smallint")');
   (*
      1 - Categorias de livros
      2 - Editoras
      3 - Generos de livros
      4 - Autores
      5 - Tipos de Usuários
   *)
   pBar.Position := pBar.Position + 1;

   {tabela usuarios  #################}
   Nome_tabela := 'usuarios';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Nome","char(20)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","SobreNome","char(20)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Sexo","enum('+ Sexo +')")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Tipo_Usuario","int")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Cidade","varchar(50)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Bairro","varchar(30)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Rua","varchar(30)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Numero_Casa","smallint")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Complemento","varchar(20)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","RG","varchar(20)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Data_Nascto","date")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Status","TINYINT DEFAULT 0")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Nivel","tinyint")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Telefone","char(14)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Celular","char(14)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","EMail","varchar(100)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios","Observacoes","text")');
   pBar.Position := pBar.Position + 1;

   {tabela usuarios_sistema  #################}
   Nome_tabela := 'usuarios_sistema';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("usuarios_sistema","Login","varchar(255)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios_sistema","Senha","varchar(255)")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios_sistema","Nivel","TINYINT")');
   RodaQuery('CALL ChecaEstruturaDados("usuarios_sistema","Nome","CHAR(15)")');
   pBar.Position := pBar.Position + 1;

   {tabela eventos #################}
   Nome_tabela := 'eventos';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("eventos","Descricao","VARCHAR(64) NOT NULL")');
   RodaQuery('CALL ChecaEstruturaDados("eventos","Dt_Inicio","DATE")');
   RodaQuery('CALL ChecaEstruturaDados("eventos","Dt_Termino","DATE")');
   RodaQuery('CALL ChecaEstruturaDados("eventos","Status","TINYINT DEFAULT 0")');
   pBar.Position := pBar.Position + 1;

   {tabela materiais #################}
   Nome_tabela := 'materiais';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("materiais","Descricao",     "VARCHAR (64) NOT NULL")');
   RodaQuery('CALL ChecaEstruturaDados("materiais","Data_Cadastro", "TIMESTAMP")');
   RodaQuery('CALL ChecaEstruturaDados("materiais","Fornecedor",    "INT")');
   RodaQuery('CALL ChecaEstruturaDados("materiais","Obs",          "TEXT")');
   RodaQuery('CALL ChecaEstruturaDados("materiais","Categoria",     "INT NOT NULL")');
   RodaQuery('CALL ChecaEstruturaDados("materiais","Cor",           "INT")');
   RodaQuery('CALL ChecaEstruturaDados("materiais","Status",       "TINYINT DEFAULT -1")');
   pBar.Position := pBar.Position + 1;

   {tabela colaboradores #################}
   Nome_tabela := 'colaboradores';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("colaboradores","Nome","VARCHAR (64) NOT NULL")');
   RodaQuery('CALL ChecaEstruturaDados("colaboradores","Telefone","CHAR (20)")');
   RodaQuery('CALL ChecaEstruturaDados("colaboradores","Sexo","enum('+ Sexo +')")');
   RodaQuery('CALL ChecaEstruturaDados("colaboradores","Cargo","INT NOT NULL")');
   RodaQuery('CALL ChecaEstruturaDados("colaboradores","Status","TINYINT DEFAULT -1")');
   pBar.Position := pBar.Position + 1;

   {tabela evento_colaboradores #################}
   Nome_tabela := 'evento_colaboradores';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("evento_colaboradores","ID_Evento","INT NOT NULL")');
   RodaQuery('CALL ChecaEstruturaDados("evento_colaboradores","ID_Colaborador","INT NOT NULL")');
   RodaQuery('CALL ChecaEstruturaDados("evento_colaboradores","Hora_Inicio","TIME")');
   RodaQuery('CALL ChecaEstruturaDados("evento_colaboradores","Hora_Termino","TIME")');
   pBar.Position := pBar.Position + 1;

   {tabela evento_materiais #################}
   Nome_tabela := 'evento_materiais';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("evento_materiais","ID_Evento","INT NOT NULL")');
   RodaQuery('CALL ChecaEstruturaDados("evento_materiais","ID_Material","INT NOT NULL")');
   RodaQuery('CALL ChecaEstruturaDados("evento_materiais","Quantidade","DECIMAL (14,3) DEFAULT 1")');
   pBar.Position := pBar.Position + 1;

   {tabela opcoes #################}
   Nome_tabela := 'opcoes';
   SetaTabela(Nome_tabela);
   RodaQuery('CALL ChecaEstruturaDados("opcoes","Dir_Mysql","VARCHAR(255)")');
   pBar.Position := pBar.Position + 1;

end;

procedure Tfrm_manutencao_dados.DropaStoredProcedure(Nome_Proc : String);
var
   tab_comandos : TZReadOnlyQuery;
begin
   instanciaQuery(tab_comandos);
   tab_comandos.SQL.Add('DROP PROCEDURE IF EXISTS ' + Nome_Proc);
   tab_comandos.ExecSQL;
   tab_comandos.Free;
end;

procedure Tfrm_manutencao_dados.DropaView(Nome_View : String);
var
   tab_comandos : TZReadOnlyQuery;
begin
   instanciaQuery(tab_comandos);
   tab_comandos.SQL.Add('DROP VIEW IF EXISTS ' + Nome_View);
   tab_comandos.ExecSQL;
   tab_comandos.Free;
end;

procedure Tfrm_manutencao_dados.CriaProcedureManutencao;
var
   tab_comandos : TZReadOnlyQuery;
begin
   Application.ProcessMessages;
   instanciaQuery(tab_comandos);

   DropaStoredProcedure('ChecaEstruturaDados');

   With tab_comandos do begin
      SQL.Add('CREATE PROCEDURE `ChecaEstruturaDados`(`pTabela` VARCHAR(100), `pCampo` VARCHAR(100),`pTipo` VARCHAR(30))');
      SQL.Add('BEGIN');
      SQL.Add('   DECLARE Query TEXT DEFAULT "";');
      SQL.Add('');
      SQL.Add('   SELECT Concat("CREATE TABLE IF NOT EXISTS ", pTabela ,"(ID INT unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT ) ENGINE = INNODb charset utf8 ") INTO Query;');
      SQL.Add('   SET @exec = Query;');
      SQL.Add('   PREPARE Query FROM @exec;');
      SQL.Add('   EXECUTE Query;   	');
      SQL.Add('	');
      SQL.Add('   -- se o campo nao existe, Cria, senao, atualiza');
      SQL.Add('   IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = `pTabela` AND column_name = `pCampo` AND TABLE_SCHEMA = SCHEMA() ) ');
      SQL.Add('   THEN');
      SQL.Add('	  SELECT Concat("ALTER TABLE " , `pTabela` , " Modify " , `pCampo` , " " ,`pTipo`) INTO Query;');
      SQL.Add('	  SET @exec = Query;');
      SQL.Add('	  PREPARE Query FROM @exec;');
      SQL.Add('	  EXECUTE Query;  ');
      SQL.Add('   ELSE');
      SQL.Add('	  SELECT Concat("ALTER TABLE " , `pTabela` ," ADD COLUMN ", `pCampo` , " ", `pTipo`) INTO Query;');
      SQL.Add('	  SET @exec = Query;');
      SQL.Add('	  PREPARE Query FROM @exec;');
      SQL.Add('	  EXECUTE Query;');
      SQL.Add('   END IF;');
      SQL.Add('END;');
      ExecSQL;
   end;

   tab_comandos.Free;
end;

procedure Tfrm_manutencao_dados.CriaViews;
var
   tab_comandos : TZReadOnlyQuery;
   NomeView: string;
begin
   Application.ProcessMessages;
   instanciaQuery(tab_comandos);
   //a cada nova procedure, incrementar contador
   pBar.Max := 1;
   pBar.Min := 0;
   pBar.Position := 0;

   {####  buscalivros}
   NomeView := 'buscalivros';
   SetaTabela(NomeView);
   DropaView(NomeView);

   with tab_comandos do begin
      Close;
      SQL.Clear;
      SQL.Add('CREATE VIEW buscalivros AS');
      SQL.Add('	SELECT');
      SQL.Add('	livros.ID AS ID,');
      SQL.Add('	livros.referencia AS referencia,');
      SQL.Add('	livros.Titulo AS Titulo,');
      SQL.Add('	autor.Descricao AS Desc_autor,');
      SQL.Add('	editora.Descricao AS Desc_Editora,');
      SQL.Add('	genero.Descricao AS Desc_Genero,');
      SQL.Add('	categoria.Descricao AS Desc_Categoria ');
      SQL.Add('FROM livros ');
      SQL.Add('	LEFT JOIN subcadastro autor ON livros.Autor = autor.ID');
      SQL.Add('	LEFT JOIN subcadastro editora ON livros.Editora = editora.ID');
      SQL.Add('	LEFT JOIN subcadastro genero ON livros.Genero = genero.ID');
      SQL.Add('	LEFT JOIN subcadastro categoria ON livros.Categoria = categoria.ID');
      SQL.Add('WHERE livros.locavel = -1');
      ExecSQL;
   end;
   pBar.Position := pBar.Position + 1;

   tab_comandos.Free;
end;

end.
