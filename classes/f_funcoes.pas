unit f_funcoes;

interface

uses
   Messages,SysUtils,Classes,Forms,windows,Data.DB,
   ZAbstractRODataset, ZAbstractDataset, ZDataset,ZSqlUpdate,
   StdCtrls,StrUtils,DBCtrls,DateUtils,WinSvc,ShellApi,JvDBLookup;

type
   TFuncoes = class

   private
      { private declarations }
   public
      { public declarations }
   end;

procedure ConectarBanco;

procedure RodaQuery(StrSQL : String);overload;
procedure RodaQuery(StrSQL : TStringList);overload;
procedure TrocaQuery(Componente  : TZQuery ; StrSQL : String);overload;
procedure TrocaQuery(Componente  : TZReadOnlyQuery ; StrSQL : String);overload;

function GeraUpdate(nome_tabela : String) : TStringList;
Function GeraInsert(nome_tabela : String) : TStringList;
Function GeraDelete(nome_tabela : String) : TStringList;
procedure TrataZUpdate(ZQuery_Master : TZQuery ;Componente : TZUpdateSQL; Nome_Tabela : String);

// utilizar no evendo Keypress do componente
procedure ApenasTexto(Edit: TComponent;var Key: Char);
procedure ApenasNumeros(Edit: TComponent;var Key: Char);

function BuscaDados(Campos : string; Titulos : string; Nome_Tabela : String; Titulo_Tela_Busca : String ;SQL_Extra : String = '' ) : String;

function isFieldKey(nome_campo : String) : Boolean;

procedure SubCadastro(Titulo,Tipo_Cadastro : String);

function CampoPreenchido(Componente : TDBEdit) : Boolean;

Procedure PreecheComboboxSubCadastro(Componente : TDBLookupComboBox ; FTipo_Cadastro,FDataField,FKeyField,FListField : String);overload;
Procedure PreecheComboboxSubCadastro(Componente : TJvDBLookupCombo ; FTipo_Cadastro,FDataField,FKeyField,FListField : String);overload;

procedure instanciaQuery(var Componente : TZQuery);overload;
procedure instanciaQuery(var Componente : TZReadOnlyQuery);overload;

function isInteger(Quantidade : String) : Boolean;

function FormataData(Valor : TDateTime) : String;

function LikeSQL(texto : string) : String;

function BetweenDateSQL(Date1,Date2 : TDate) : String;

procedure EnviarStringBlocoNotas(valor : String);

function ServiceRunning(sMachine, sService: PChar): Boolean;

function ServiceGetStatus(sMachine, sService: PChar): DWORD;

procedure IniciaServico;

//procedure CarregaWallPaper;

implementation

uses f_menu, f_form_busca_base, f_sub_cadastro, f_manutencao_dados;

procedure ConectarBanco;
var
   Dir_config,Dir_DLL : String;
   Lista: TStringList;
   tab_teste : TZReadOnlyQuery;
begin
   Dir_config := ExtractFilePath(Application.ExeName)+'configs.ini';
   Dir_DLL    := ExtractFilePath(Application.ExeName)+'libmysql.dll';

//   IF not ServiceRunning(nil,'mysql_biblioteca') then begin
//      IniciaServico;
//   end;

   Lista := TStringList.Create;

   try
      try
         if (FileExists(Dir_config) AND (FileExists(Dir_DLL)))then begin
            lista.LoadFromFile(Dir_config);

            with frm_menu.zconn do begin
               Disconnect;
               ClientCodepage := 'utf8';
               LibraryLocation := Dir_DLL;
               Port :=  Strtoint(lista[1]);
               HostName := lista[0];
               Database := 'db_biblioteca';
               Password := 'master';
               Connect;
            end;
          end
         else begin
            Application.MessageBox('Erro ao Conectar ao banco de Dados, Contate o Administrador...' ,'Erro ao Conectar' ,MB_OK+MB_ICONERROR);
            frm_menu.sbar_menu.panels[3].Text := 'Acesso a Dados negado!';
         end;
      Except
         on E:Exception do begin
            Application.MessageBox('Erro ao Conectar ao banco de Dados, Contate o Administrador...' , 'Erro',MB_OK+MB_ICONERROR);
            frm_menu.sbar_menu.panels[3].Text := 'Acesso a Dados negado!';
            Lista.Free;
            Exit;
         end;
      end;
   finally
      frm_menu.sbar_menu.panels[3].Text := 'Acesso a Dados Ok!';
      Lista.Free;
   end;
end;


procedure RodaQuery(StrSQL : String);overload;
begin
   with TZQuery.Create(nil) do try
      Connection := frm_menu.zconn;
      SQL.Add(StrSQL);
      ExecSQL;
   finally
      Free;
   end;
end;

procedure RodaQuery(StrSQL : TStringList);overload;
begin
   with TZQuery.Create(nil) do try
      Connection := frm_menu.zconn;
      SQL.Add(StrSQL.Text);
      ExecSQL;
   finally
      Free;
   end;
end;

procedure TrocaQuery(Componente  : TZQuery ; StrSQL : String);overload;
begin
   with Componente do begin
      Close;
      SQL.Clear;
      SQL.Add(StrSQL);
      Open;
   end;
end;

procedure TrocaQuery(Componente  : TZReadOnlyQuery ; StrSQL : String);overload;
begin
   with Componente do begin
      Close;
      SQL.Clear;
      SQL.Add(StrSQL);
      Open;
   end;
end;

function GeraUpdate(nome_tabela : String) : TStringList;
begin
   Result := TStringList.Create;

   with TZReadOnlyQuery.Create(nil) do try
      Connection := frm_menu.zconn;
       SQL.Add('desc '+ nome_tabela);
       //adiciona primeira linha da instrução SQL
       Result.Add('Update ' + nome_tabela + ' SET ');
       Open;
       //gera lista com nome dos campos e com os parametros referentes
       while not EOF do begin
          Result.Add(FieldByName('Field').AsString + '= :' + FieldByName('Field').AsString);
          Result.Add(',');
          Next;
       end;
       Result.Delete(Result.Count-1);
       //pega campo primario, e gera filtro WHERE
       First;
       Result.Add('WHERE ');
       Result.Add(FieldByName('Field').AsString + '= :OLD_' + FieldByName('Field').AsString);
   finally
      Free;
   end;
end;

Function GeraInsert(nome_tabela : String) : TStringList;
begin
   Result := TStringList.Create;

   with TZReadOnlyQuery.Create(nil) do try
      Connection := frm_menu.zconn;
       SQL.Add('desc '+ nome_tabela);
       //adiciona primeira linha da instrução SQL
       Result.Add('INSERT INTO ' + nome_tabela + ' SET ');
       Open;

       //gera lista com nome dos campos e com os parametros referentes
       while not EOF do begin
          Result.Add(FieldByName('Field').AsString + '= :' + FieldByName('Field').AsString);
          Result.Add(',');
          Next;
       end;
       Result.Delete(Result.Count-1);
   finally
      Free;
   end;
end;

Function GeraDelete(nome_tabela : String) : TStringList;
begin
   Result := TStringList.Create;

   with TZReadOnlyQuery.Create(nil) do try
      Connection := frm_menu.zconn;
       SQL.Add('desc '+ nome_tabela);
       //adiciona primeira linha da instrução SQL
       Result.Add('DELETE FROM ' + nome_tabela + ' WHERE ');
       Open;
       //gera filtro WHERE
       Result.Add(FieldByName('Field').AsString + '= :OLD_' + FieldByName('Field').AsString);
   finally
      Free;
   end;
end;

procedure TrataZUpdate(ZQuery_Master : TZQuery ;Componente : TZUpdateSQL; Nome_Tabela : String);
begin
   with Componente do begin
      DeleteSQL := GeraDelete(Nome_Tabela);
      ModifySQL := GeraUpdate(Nome_Tabela);
      InsertSQL := GeraInsert(Nome_Tabela);
      RefreshSQL := ZQuery_Master.SQL;
   end;
end;

procedure ApenasTexto(Edit: TComponent;var Key: Char);
begin
   if not ((Key in ['a'..'z']) or (Key in ['A'..'Z']) or (Key in[#8,#83,#34,#44])) then begin
      Key := #0;
   end;
end;

procedure ApenasNumeros(Edit: TComponent;var Key: Char);
begin
    if not ((Key in ['0'..'9']) or (Key in[#08,#83,#44])) then begin
       Key := #0;
    end;
end;

function BuscaDados(Campos : string; Titulos : string; Nome_Tabela : String; Titulo_Tela_Busca : String ;SQL_Extra : String = '' ) : String;
begin
   frm_menu.pub_string_busca := '';
   frm_form_busca_base := Tfrm_form_busca_base.Create(Application);

   with frm_form_busca_base do begin
      FCampos      := Campos;
      FTitulos     := Titulos;
      FNome_Tabela := Nome_Tabela;
      FSQL_Extra   := SQL_Extra;
      FTitulo_Tela_Busca := Titulo_Tela_Busca;
   end;

   frm_form_busca_base.ShowModal;
   Result := frm_menu.pub_string_busca;
end;

function isFieldKey(nome_campo : String) : Boolean;
begin
   Result := False;

   if (LeftStr(nome_campo,3) = 'ID_') or (LeftStr(nome_campo,6) = 'Codigo') then begin
      Result := True;
   end;
end;

procedure SubCadastro(Titulo,Tipo_Cadastro : String);
begin
    frm_sub_cadastro := Tfrm_sub_cadastro.Create(Application);
    with frm_sub_cadastro do begin
       FTitulo := 'Cadastro de ' + Titulo;
       FTipo_Cadastro := Tipo_Cadastro;
       lbl_titulo.Caption := FTitulo;
       frm_sub_cadastro.Caption := FTitulo;
       with tab_principal do begin
          Close;
          SQl.Clear;
          SQL.Add('SELECT ID, Descricao,Tipo_Cadastro FROM subcadastro WHERE Tipo_Cadastro = ' + Tipo_Cadastro);
          Open;
       end;
    end;

    frm_sub_cadastro.Show;
end;

function CampoPreenchido(Componente : TDBEdit) : Boolean;
begin
   if Componente.Text = '' then begin
      Application.MessageBox('Obrigatório Preenchimento.','Aviso',MB_OK);
      Componente.SetFocus;
      Abort;
   end;
end;

Procedure PreecheComboboxSubCadastro(Componente : TDBLookupComboBox ; FTipo_Cadastro,FDataField,FKeyField,FListField : String);
var
   Tab_combo : TZReadOnlyQuery;
   dts_combo : TDataSource;
begin
   //tabela
   Tab_combo := TZReadOnlyQuery.Create(nil);
   Tab_combo.Connection := frm_menu.zconn;
   Tab_combo.SQL.Add('SELECT * FROM subcadastro WHERE Tipo_Cadastro = ' + FTipo_Cadastro + ' ORDER BY Descricao ASC');
   Tab_combo.Open;

   //datasource
   dts_combo          := TDataSource.Create(nil);
   dts_combo.AutoEdit := false;
   dts_combo.DataSet  := Tab_combo;

   with Componente do begin
      ListSource := dts_combo;
      ListField  := FListField;
      DataField  := FDataField;
      KeyField   := FKeyField;
   end;
end;

Procedure PreecheComboboxSubCadastro(Componente : TJvDBLookupCombo ; FTipo_Cadastro,FDataField,FKeyField,FListField : String);
var
   Tab_combo : TZReadOnlyQuery;
   dts_combo : TDataSource;
begin
   //tabela
   Tab_combo := TZReadOnlyQuery.Create(nil);
   Tab_combo.Connection := frm_menu.zconn;
   Tab_combo.SQL.Add('SELECT * FROM subcadastro WHERE Tipo_Cadastro = ' + FTipo_Cadastro + ' ORDER BY Descricao ASC');
   Tab_combo.Open;

   //datasource
   dts_combo          := TDataSource.Create(nil);
   dts_combo.AutoEdit := false;
   dts_combo.DataSet  := Tab_combo;

   with Componente do begin
      LookupSource   := dts_combo;
      LookupField    := FKeyField;
      LookupDisplay  := FListField;
      //KeyField   := FKeyField;
   end;


end;

procedure instanciaQuery(var Componente : TZQuery);
begin
   Componente := TZQuery.Create(nil);
   Componente.Connection := frm_menu.zconn;
end;

procedure instanciaQuery(var Componente : TZReadOnlyQuery);
begin
   Componente := TZReadOnlyQuery.Create(nil);
   Componente.Connection := frm_menu.zconn;
end;

function isInteger(Quantidade : String) : Boolean;
var
   Valor : Integer;
begin
   Result := True;
   try
      Valor := StrToInt(Quantidade);
   except
      on E:EConvertError do begin
         Result := False;
      end;
   end;  
end;

function FormataData(Valor : TDateTime) : String;
begin
   try
      try
         FormatDateTime('yyyy-MM-dd',Valor);
      except
         on E:EConvertError do begin
            Application.MessageBox('Data válida.','Erro',mb_ok+MB_ICONERROR);
            Result := '';
         end;
      end;
   finally
      result := FormatDateTime('yyyy-MM-dd',Valor);
   end;
end;

function LikeSQL(texto : string) : String;
begin
   Result := '"%'+ texto +'%"';
end;

function BetweenDateSQL(Date1,Date2 : TDate) : String;
begin
   Result := '';
   Result := QuotedStr(FormataData(Date1)) + ' AND ' + QuotedStr(FormataData(Date2));
end;

procedure EnviarStringBlocoNotas(valor : String);
var
   wnd: HWND;
   i: Integer;
   s: string;
begin
   wnd := FindWindow('notepad', nil);
   if wnd <> 0 then begin
      wnd := FindWindowEx(wnd, 0, 'Edit', nil);
      for i := 1 to Length(valor) do begin
         SendMessage(wnd, WM_CHAR, Word(valor[i]), 0);
      end;

      PostMessage(wnd, WM_KEYDOWN, VK_RETURN, 0);
      PostMessage(wnd, WM_KEYDOWN, VK_SPACE, 0);
   end;
end;

function ServiceGetStatus(sMachine, sService: PChar): DWORD;
  {******************************************}
  {*** Parameters: ***}
  {*** sService: specifies the name of the service to open
  {*** sMachine: specifies the name of the target computer
  {*** ***}
  {*** Return Values: ***}
  {*** -1 = Error opening service ***}
  {*** 1 = SERVICE_STOPPED ***}
  {*** 2 = SERVICE_START_PENDING ***}
  {*** 3 = SERVICE_STOP_PENDING ***}
  {*** 4 = SERVICE_RUNNING ***}
  {*** 5 = SERVICE_CONTINUE_PENDING ***}
  {*** 6 = SERVICE_PAUSE_PENDING ***}
  {*** 7 = SERVICE_PAUSED ***}
  {******************************************}
var
  SCManHandle, SvcHandle: SC_Handle;
  SS: TServiceStatus;
  dwStat: DWORD;
begin
  dwStat := 0;
  // Open service manager handle.
  SCManHandle := OpenSCManager(sMachine, nil, SC_MANAGER_CONNECT);
  if (SCManHandle > 0) then begin
     SvcHandle := OpenService(SCManHandle, sService, SERVICE_QUERY_STATUS);
     // if Service installed
     if (SvcHandle > 0) then begin
        // SS structure holds the service status (TServiceStatus);
        if (QueryServiceStatus(SvcHandle, SS)) then dwStat := ss.dwCurrentState;
        CloseServiceHandle(SvcHandle);
     end;

     CloseServiceHandle(SCManHandle);
  end;
  Result := dwStat;
end;

function ServiceRunning(sMachine, sService: PChar): Boolean;
begin
  Result := SERVICE_RUNNING = ServiceGetStatus(sMachine, sService);
end;

procedure IniciaServico;
const
   INICIAR_SERVICO : String = 'NET START mysql_biblioteca';
var
   Comando : String;
   Diretorio_Mysql: string;
   Diretorio_MyIni: string;
begin
   Diretorio_MyIni := ExtractFilePath(Application.ExeName)+'mysql\my.ini';
   Diretorio_Mysql := ExtractFilePath(Application.ExeName)+'mysql\bin';
   Comando := '/c ' + Diretorio_Mysql + '\mysqld --install mysql_biblioteca --defaults-file="' + Diretorio_MyIni + '"';

   ShellExecute(application.handle, 'open', 'cmd', PWideChar(Comando) , nil, SW_MAXIMIZE);
   Sleep(10000);
   ShellExecute(application.handle, 'open', 'cmd', PWideChar(INICIAR_SERVICO) , nil, SW_MAXIMIZE);
end;

end.
