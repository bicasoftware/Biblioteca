unit f_locacao_livros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, rkGlassButton, Vcl.Menus, Vcl.Grids, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.Buttons, ZStoredProcedure,DateUtils;

type
  Tfrm_locacao_livros = class(Tfrm_form_normal)
    Panel2: TPanel;
    grade_usuarios: TStringGrid;
    pn_Livros: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    edt_pesquisar: TEdit;
    btn_pesquisar: TrkGlassButton;
    Panel6: TPanel;
    btn_add: TSpeedButton;
    btn_rem: TSpeedButton;
    Panel7: TPanel;
    Panel4: TPanel;
    dbg_busca: TJvDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    Panel8: TPanel;
    btn_finalizar: TrkGlassButton;
    btn_confirmar: TrkGlassButton;
    btn_selecionar: TrkGlassButton;
    dts_busca: TDataSource;
    tab_busca: TZReadOnlyQuery;
    btn_cancel: TrkGlassButton;
    tab_temp: TZQuery;
    dts_temp: TDataSource;
    btn_sair: TrkGlassButton;
    DBGrid1: TDBGrid;
    rkGlassButton1: TrkGlassButton;
    pop_opcoes: TPopupMenu;
    procedure btn_selecionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure btn_finalizarClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_remClick(Sender: TObject);
    procedure dbg_buscaDblClick(Sender: TObject);
    procedure edt_pesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_buscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FUsuario : String;
    procedure ZeraStringGrid(grade: TStringGrid);
    procedure Finaliza;
  public
    { Public declarations }
  end;

var
  frm_locacao_livros: Tfrm_locacao_livros;

implementation

{$R *.dfm}

uses f_funcoes, f_menu, f_devolucoes;

procedure Tfrm_locacao_livros.btn_finalizarClick(Sender: TObject);
var
   tab_queries : TZQuery;
begin

   if Application.MessageBox('Deseja Finalizar a Operação?','Confirmação',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDYES then begin
      if tab_temp.RecordCount > 0  then begin
         tab_queries := TZQuery.Create(nil);
         try
            with tab_queries do begin
               Connection := frm_menu.zconn;
               SQL.Add('Call locacao_livros(' + FUsuario + ',' + frm_menu.pub_usuario + ')');
               ExecSQL;
            end;
         Except
            tab_queries.Free;
            Application.MessageBox('Erro ao Incluir Dados, Verique as opções de rede e banco de dados.','Erro',MB_OK+MB_ICONERROR);
            Finaliza;
            Exit;
         end;

         tab_queries.Free;
         Finaliza;
         Application.MessageBox('Locação Concluída!','Finalizado',MB_ok+MB_ICONASTERISK);
       end
      else begin
         Finaliza;
      end;
   end;
end;

procedure Tfrm_locacao_livros.btn_pesquisarClick(Sender: TObject);
begin
   if Trim(edt_pesquisar.Text) <> '' then begin
      with tab_busca do begin
         Close;
         SQl.Clear;
         SQL.Add('SELECT * FROM buscalivros ');
         SQL.Add('WHERE');
         SQL.Add('   Titulo LIKE Concat("%' + edt_pesquisar.Text + '%")');
         SQL.Add('OR');
         SQL.Add('   Desc_autor LIKE Concat("%' + edt_pesquisar.Text + '%")');
         SQL.Add('OR');
         SQL.Add('   Desc_Editora LIKE Concat("%' + edt_pesquisar.Text + '%")');
         SQL.Add('OR');
         SQL.Add('   Desc_Genero LIKE Concat("%' + edt_pesquisar.Text + '%")');
         SQL.Add('OR ');
         SQL.Add('   Desc_Categoria LIKE Concat("%' + edt_pesquisar.Text + '%")');
         Open;
      end;
   end;
end;

procedure Tfrm_locacao_livros.btn_remClick(Sender: TObject);
begin
   if tab_temp.RecordCount > 0 then begin
      if Application.MessageBox('Deseja Remover ?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDYES then begin
         RodaQuery('DELETE FROM temp_loc_livros WHERE ID_Livro = ' + tab_temp.FieldByName('ID_Livro').AsString);
         tab_temp.Refresh;
      end;
   end;
end;

procedure Tfrm_locacao_livros.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_locacao_livros.btn_selecionarClick(Sender: TObject);
var
   tab_busca : TZReadOnlyQuery;
begin
   FUsuario := BuscaDados('Nome;SobreNome;RG,Bairro','Nome;Sobre Nome; Rg; Bairro','usuarios','Usuários');

   if FUsuario <> '' then begin
      tab_busca := TZReadOnlyQuery.Create(nil);

      //pesquisa se há locações em aberto
      with tab_busca do begin
         Connection := frm_menu.zconn;
         SQl.Add('SELECT Count(*) as Contador FROM locacao_livros');
         SQl.Add('	WHERE');
         SQl.Add('		ID_Usuario = ' + FUsuario);
         SQl.Add('	AND');
         SQl.Add('		Status = 0');
         SQl.Add('	AND');
         SQl.Add('		Data_Finalizacao IS NULL');
         Open;
      end;

      if tab_busca.Fields[0].AsInteger > 0 then begin
         if Application.MessageBox('O Usuário já possui uma locação em Aberto. Deseja Visualizar ?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = ID_YES then begin
            frm_menu.pub_string_busca := FUsuario;
            Application.CreateForm(Tfrm_devolucoes, frm_devolucoes);
          end
         else begin
            frm_menu.pub_string_busca := '';
            FUsuario  := '';
         end;
       end
      else begin
         with tab_busca do begin
            Close;
            SQl.Clear;
            SQL.Add('SELECT ');
            SQL.Add('	ID,');
            SQL.Add('	Concat(Coalesce(Nome,"") ," ",Coalesce(SobreNome,"")) AS Nome_SobreNome,');
            SQL.Add('	Concat("Rua: ",Coalesce(Rua,"")," nº ",Coalesce(Numero_Casa,"")," Bairro: ",Coalesce(Bairro,"")," - ",Coalesce(Complemento,"")) AS endereco_completo');
            SQL.Add('FROM usuarios');
            SQL.Add('	WHERE ID = ' + FUsuario);
            Open;
         end;

        grade_usuarios.Cells[0,1] := tab_busca.FieldByName('ID').AsString;
        grade_usuarios.Cells[1,1] := tab_busca.FieldByName('Nome_SobreNome').AsString;
        grade_usuarios.Cells[2,1] := tab_busca.FieldByName('endereco_completo').AsString;
      end;

     tab_busca.Free;
   end;

   frm_menu.pub_string_busca := '';
end;

procedure Tfrm_locacao_livros.edt_pesquisarKeyDown(Sender: TObject;var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
     btn_pesquisarClick(Sender);
  end;
end;

procedure Tfrm_locacao_livros.FormShow(Sender: TObject);
begin
  inherited;
  grade_usuarios.Cells[0,0] := 'Código';
  grade_usuarios.Cells[1,0] := 'Nome';
  grade_usuarios.Cells[2,0] := 'Endereço';

  pn_Livros.Enabled := False;
end;

procedure Tfrm_locacao_livros.dbg_buscaDblClick(Sender: TObject);
begin
   btn_addClick(Sender);
end;

procedure Tfrm_locacao_livros.dbg_buscaKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
     dbg_buscaDblClick(Sender);
  end;
end;

procedure Tfrm_locacao_livros.btn_addClick(Sender: TObject);
begin
   if (tab_busca.RecordCount > 0) and (FUsuario <> '') then begin
      if tab_temp.Locate('ID_Livro',tab_busca.FieldByName('ID').AsString,[]) then begin
         Application.MessageBox('Livro Já Selecionado. Selecione outro livro.','Aviso',Mb_ok+MB_ICONASTERISK);
       end
      else begin
         tab_temp.Append;
         tab_temp.FieldByName('Nome_Livro').AsString := tab_busca.FieldByName('Titulo').AsString;
         tab_temp.FieldByName('ID_Livro').AsString := tab_busca.FieldByName('ID').AsString;
         tab_temp.FieldByName('Data_Devolucao').AsDateTime := IncDay(Now,7);
         tab_temp.Post;
      end;
  end;
end;

procedure Tfrm_locacao_livros.btn_cancelClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja Cancelar ?','Confirmação',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDYES then begin
      Finaliza;
   end;
end;

procedure Tfrm_locacao_livros.btn_confirmarClick(Sender: TObject);
begin
   if FUsuario <> '' then begin
      pn_Livros.Enabled := True;
      btn_sair.Enabled := False;
      btn_selecionar.Enabled := False;
      btn_confirmar.Enabled := False;
      edt_pesquisar.SetFocus;

      Rodaquery('drop TEMPORARY TABLE IF EXISTS temp_loc_livros');

      RodaQuery(''
      +'CREATE TEMPORARY TABLE temp_loc_livros'
      +'( '
      +'   ID_Livro INT NOT NULL, '
      +'   Data_Devolucao DATE NOT NULL, '
      +'   Nome_Livro VARCHAR(50) '
      +') '
      +'ENGINE = memory CHARSET utf8 ');

      TrocaQuery(tab_temp,'SELECT * FROM temp_loc_livros');
   end;
end;

procedure Tfrm_locacao_livros.ZeraStringGrid(grade : TStringGrid);
var
   I: Integer;
begin
   for I := 0 to grade.ColCount - 1 do begin
      grade.Cells[I,1] := '';
   end;

   grade.Cells[0,0] := 'Código';
   grade.Cells[1,0] := 'Nome';
   grade.Cells[2,0] := 'Endereço';

end;

procedure Tfrm_locacao_livros.Finaliza;
begin
   FUsuario := '';
   edt_pesquisar.Text := '';
   frm_menu.pub_string_busca := '';
   pn_Livros.Enabled := False;
   btn_sair.Enabled := true;
   btn_selecionar.Enabled := True;
   btn_confirmar.Enabled := True;
   tab_temp.Close;
   tab_busca.Close;
   ZeraStringGrid(grade_usuarios);
end;

end.
