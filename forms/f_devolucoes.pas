unit f_devolucoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, rkGlassButton, Vcl.Grids, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.Menus,ClipBrd;

type
  Tfrm_devolucoes = class(Tfrm_form_normal)
    Panel2: TPanel;
    grade_items: TStringGrid;
    btn_confirmar: TrkGlassButton;
    btn_selecionar: TrkGlassButton;
    tab_items_locacao: TZQuery;
    pn_items: TPanel;
    Panel8: TPanel;
    btn_finalizar: TrkGlassButton;
    btn_cancel: TrkGlassButton;
    JvDBGrid1: TJvDBGrid;
    pop_opcoes: TPopupMenu;
    Renovar1: TMenuItem;
    pop_mnu_devolver: TMenuItem;
    dts_itens_locacao: TDataSource;
    btn_sair: TrkGlassButton;
    pop_finalizar: TPopupMenu;
    DevolverTodos1: TMenuItem;
    RenovarTodos1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btn_selecionarClick(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
    procedure Renovar1Click(Sender: TObject);
    procedure pop_mnu_devolverClick(Sender: TObject);
    procedure btn_finalizarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
  private
    procedure SelecionaUsuario(Codigo_Usuario: String);
    procedure ZeraStringGrid(grade: TStringGrid);
    procedure Finaliza;
    { Private declarations }
  public
    FUsuario : String;
  end;

var
  frm_devolucoes: Tfrm_devolucoes;

implementation

{$R *.dfm}

uses f_form_busca_base, f_funcoes, f_menu;

procedure Tfrm_devolucoes.btn_cancelClick(Sender: TObject);
begin
   Finaliza;
end;

procedure Tfrm_devolucoes.btn_confirmarClick(Sender: TObject);
begin
   if FUsuario <> '' then begin
      with tab_items_locacao do begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT ');
         SQL.Add('	livros.referencia,');
         SQL.Add('	livros.Titulo,');
         SQL.Add('	locacao_livros.ID AS Chave,');
         SQL.Add('	locacao_livros.Data_Locacao,');
         SQL.Add('	locacao_livros_items.ID,');
         SQL.Add('	locacao_livros_items.Data_Devolucao,');
         SQL.Add('	locacao_livros_items.Devolvido_Em,');
         SQL.Add('	locacao_livros_items.Numero_Renovacoes');
         SQL.Add('FROM locacao_livros');
         SQL.Add('	JOIN usuarios ON locacao_livros.ID_Usuario = usuarios.ID');
         SQL.Add('	JOIN locacao_livros_items ON locacao_livros.ID = locacao_livros_items.ID_Locacao');
         SQL.Add('	JOIN livros ON locacao_livros_items.ID_Livro = livros.ID');
         SQL.Add('WHERE ');
         SQL.Add('	locacao_livros.ID_Usuario = ' + FUsuario );
         SQL.Add('AND ');
         SQL.Add('	locacao_livros.Status = 0');
         SQL.Add('AND ');
         SQL.Add('	locacao_livros.Data_Finalizacao IS NULL');
         Open;
      end;

      if tab_items_locacao.RecordCount = 0 then begin
         Application.MessageBox('O Usuário, não tem nenhum livro em aberto.','Aviso',MB_OK+MB_ICONQUESTION);
       end
      else begin
         btn_finalizar.Enabled := true;
         btn_cancel.Enabled := true;
         btn_sair.Enabled := false;
         pn_items.Enabled := True;
      end;
   end;
end;

procedure Tfrm_devolucoes.btn_finalizarClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja Finalizar ?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = ID_YES then begin
      RodaQuery('CALL FinalizaLocacao("'+ tab_items_locacao.FieldByName('Chave').AsString +'")');
      Finaliza;
      Application.MessageBox('Operação Finalizada com Sucesso! ','Finalizado',MB_OK+MB_ICONASTERISK);
   end;
end;

procedure Tfrm_devolucoes.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_devolucoes.btn_selecionarClick(Sender: TObject);
var
   tab_busca : TZreadonlyquery;
begin
   FUsuario := BuscaDados('Nome;SobreNome;RG,Bairro','Nome;Sobre Nome; Rg; Bairro','usuarios','Usuários');
   if FUsuario <> '' then begin
      tab_busca := TZReadOnlyQuery.Create(nil);
      with tab_busca do begin
         Connection := frm_menu.zconn;
         SQL.Add('SELECT ');
         SQL.Add('	ID,');
         SQL.Add('	Concat(Coalesce(Nome,"") ," ",Coalesce(SobreNome,"")) AS Nome_SobreNome,');
         SQL.Add('	Concat("Rua: ",Coalesce(Rua,"")," nº ",Coalesce(Numero_Casa,"")," Bairro: ",Coalesce(Bairro,"")," - ",Coalesce(Complemento,"")) AS endereco_completo');
         SQL.Add('FROM usuarios');
         SQL.Add('	WHERE ID = ' + FUsuario);
         Open;
      end;

      grade_items.Cells[0,1] := tab_busca.FieldByName('ID').AsString;
      grade_items.Cells[1,1] := tab_busca.FieldByName('Nome_SobreNome').AsString;
      grade_items.Cells[2,1] := tab_busca.FieldByName('endereco_completo').AsString;
      tab_busca.Free;
   end;
   frm_menu.pub_string_busca := '';
end;

procedure Tfrm_devolucoes.FormShow(Sender: TObject);
begin
  inherited;
  grade_items.Cells[0,0] := 'Código';
  grade_items.Cells[1,0] := 'Nome';
  grade_items.Cells[2,0] := 'Endereço';

  if frm_menu.pub_string_busca <> ''  then begin
     FUsuario := frm_menu.pub_string_busca;
     SelecionaUsuario(FUsuario);
  end;

  btn_finalizar.Enabled := False;
  btn_cancel.Enabled := False;
  pn_items.Enabled := False;
end;

procedure Tfrm_devolucoes.pop_mnu_devolverClick(Sender: TObject);
begin
   if Application.MessageBox('Confirmar Devolução.','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = ID_YES then begin
      RodaQuery('CALL DevolucaoItem(' + tab_items_locacao.FieldByName('ID').AsString + ')');
      tab_items_locacao.Refresh;
   end;
end;

procedure Tfrm_devolucoes.Renovar1Click(Sender: TObject);
var
   Lista : TStringList;
begin
   if Application.MessageBox('Confirmar Renovação.','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = ID_YES then begin
      if tab_items_locacao.FieldByName('Devolvido_Em').IsNull then begin
         Lista := TStringList.Create;
         With Lista do begin
            Add('UPDATE locacao_livros_items ');
            Add('	SET ');
            Add('		Data_Devolucao = DATE_ADD(Data_Devolucao, INTERVAL 7 DAY),');
            Add('		Numero_Renovacoes = Numero_Renovacoes + 1,');
            Add('		ID_Funcionario    = ' + frm_menu.pub_usuario);
            Add('WHERE ID = '+ tab_items_locacao.FieldByName('ID').AsString);
         end;

         RodaQuery(Lista);
         Lista.Free;
         tab_items_locacao.Refresh;
       end
      else begin
         Application.MessageBox('Livro Já Devolvido, Não é Permitido Renovar.','Aviso',mb_Ok+MB_ICONEXCLAMATION);
      end;
   end;
end;

procedure Tfrm_devolucoes.SelecionaUsuario(Codigo_Usuario : String);
var
   tab_busca : TZreadonlyquery;
begin
   if Codigo_Usuario <> '' then begin
      tab_busca := TZreadonlyquery.Create(nil);
      with tab_busca do begin
         Connection := frm_menu.zconn;
         SQL.Add('SELECT ');
         SQL.Add('	ID,');
         SQL.Add('	Concat(Coalesce(Nome,"") ," ",Coalesce(SobreNome,"")) AS Nome_SobreNome,');
         SQL.Add('	Concat("Rua: ",Coalesce(Rua,"")," nº ",Coalesce(Numero_Casa,"")," Bairro: ",Coalesce(Bairro,"")," - ",Coalesce(Complemento,"")) AS endereco_completo');
         SQL.Add('FROM usuarios');
         SQL.Add('	WHERE ID = ' + FUsuario);
         Open;
      end;

      grade_items.Cells[0,1] := tab_busca.FieldByName('ID').AsString;
      grade_items.Cells[1,1] := tab_busca.FieldByName('Nome_SobreNome').AsString;
      grade_items.Cells[2,1] := tab_busca.FieldByName('endereco_completo').AsString;

      tab_busca.Free;
   end;
   btn_confirmarClick(btn_confirmar);
end;

procedure Tfrm_devolucoes.Finaliza;
begin
   frm_menu.pub_string_busca := '';
   FUsuario := '';
   pn_items.Enabled := False;
   btn_sair.Enabled := true;
   btn_selecionar.Enabled := True;
   btn_confirmar.Enabled := True;
   btn_finalizar.Enabled := False;
   btn_cancel.Enabled := false;
   tab_items_locacao.Close;
   ZeraStringGrid(grade_items);
end;

procedure Tfrm_devolucoes.ZeraStringGrid(grade : TStringGrid);
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



end.
