unit f_eventos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro_base, Vcl.Menus, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  rkGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ComCtrls,
  JvExMask, JvToolEdit, JvDBControls, Vcl.Mask, Vcl.DBCtrls, JvExDBGrids,
  JvDBGrid, Vcl.Buttons, JvSpin, Datasnap.DBClient,Clipbrd;

type
  Tfrm_eventos = class(Tfrm_form_cadastro_base)
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_id: TDBEdit;
    edt_Descricao: TDBEdit;
    edt_dt_inicio: TJvDBDateEdit;
    edt_dt_termino: TJvDBDateEdit;
    chk_status: TDBCheckBox;
    grp1: TGroupBox;
    grp2: TGroupBox;
    dbg_materiais: TJvDBGrid;
    btn_add_material: TSpeedButton;
    btn_rem_material: TSpeedButton;
    edt_cod_material: TEdit;
    edt_desc_material: TEdit;
    btn_busca_material: TrkGlassButton;
    Label5: TLabel;
    Label6: TLabel;
    edt_qtd: TEdit;
    Label7: TLabel;
    btn_add_colaborador: TSpeedButton;
    btn_rem_colaborador: TSpeedButton;
    edt_cod_colaborador: TEdit;
    edt_desc_colaborador: TEdit;
    btn_1: TrkGlassButton;
    lbl_1: TLabel;
    lbl_11: TLabel;
    edt_hora_inicio: TJvTimeEdit;
    edt_hora_termino: TJvTimeEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbg_colaboradores: TJvDBGrid;
    tab_materiais: TZQuery;
    dts_materiais: TDataSource;
    tab_colaboradores: TZQuery;
    dts_colaboradores: TDataSource;
    cds_materiais: TClientDataSet;
    cds_colaboradores: TClientDataSet;
    ID_Material: TIntegerField;
    cds_materiaisDescricao: TStringField;
    cds_materiaisQuantidade: TFloatField;
    cds_colaboradoresNome: TStringField;
    cds_colaboradoresTelefone: TStringField;
    cds_colaboradoresHora_Inicio: TDateTimeField;
    cds_colaboradoresHora_Termino: TDateTimeField;
    cds_colaboradoresID_Colaborador: TIntegerField;
    procedure edt_qtdKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure tab_principalNewRecord(DataSet: TDataSet);
    procedure btn_busca_materialClick(Sender: TObject);
    procedure tab_principalAfterPost(DataSet: TDataSet);
    procedure btn_add_materialClick(Sender: TObject);
    procedure btn_rem_materialClick(Sender: TObject);
    procedure edt_cod_materialChange(Sender: TObject);
    procedure tab_principalBeforeDelete(DataSet: TDataSet);
    procedure btn_1Click(Sender: TObject);
    procedure edt_cod_colaboradorChange(Sender: TObject);
    procedure btn_add_colaboradorClick(Sender: TObject);
    procedure btn_rem_colaboradorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TMateriais = record
     ID : string;
     Descricao : String;
  end;

var
  frm_eventos: Tfrm_eventos;

implementation

{$R *.dfm}

uses f_funcoes, record_helpers, class_helpers, f_menu;

procedure Tfrm_eventos.btn_1Click(Sender: TObject);
begin
   if tab_principal.State in[dsInsert,dsEdit] then begin
      edt_cod_colaborador.Text := BuscaDados('id;Nome','Código;Nome','colaboradores','Colaborador');
   end;
end;

procedure Tfrm_eventos.btn_add_colaboradorClick(Sender: TObject);
begin
   case tab_principal.State of
      //caso seja alteração, faz edição no Zquery
      dsEdit: begin
         if (Trim(edt_cod_colaborador.Text) <> '') and (Trim(edt_hora_inicio.Text) <> ':') and (Trim(edt_hora_termino.Text) <> ':') then begin
            RodaQuery('INSERT INTO evento_colaboradores(ID_Evento,ID_Colaborador, Hora_Inicio, Hora_Termino) VALUES('
               + tab_principal.FieldByName('ID').AsString + ','
               + edt_cod_colaborador.Text + ','
               + QuotedStr(edt_hora_inicio.Text) + ','
               + QuotedStr(edt_hora_termino.Text) + ')');
            tab_colaboradores.Refresh;
         end;
      end;
      //caso seja novo registro, faz edições num clientdataset
      dsInsert: begin
         if (Trim(edt_cod_colaborador.Text) <> '') and (Trim(edt_hora_inicio.Text) <> ':') and (Trim(edt_hora_termino.Text) <> ':') then begin
            with cds_colaboradores do begin
               Append;
               FieldByName('ID_Colaborador').AsString := edt_cod_colaborador.Text;
               FieldByName('Nome').AsString := edt_cod_colaborador.Text;
               FieldByName('Hora_Inicio').AsDateTime    := StrToTime(edt_hora_inicio.Text);
               FieldByName('Hora_Termino').AsDateTime   := StrToTime(edt_hora_termino.Text);
               Post;
            end;
         end;
      end;
   end;
end;

procedure Tfrm_eventos.btn_add_materialClick(Sender: TObject);
begin
   case tab_principal.State of
      //caso seja alteração, faz edição no Zquery
      dsEdit: begin
         if (Trim(edt_cod_material.Text) <> '') and (StrToFloat(edt_qtd.Text) > 0) then begin
            RodaQuery('INSERT INTO evento_materiais(ID_Evento, ID_Material, Quantidade)VALUES(' 
               + tab_principal.FieldByName('ID').AsString + ','
               + edt_cod_material.Text + ','            
               + edt_qtd.Text + ')' );
               tab_materiais.Refresh;         
         end;
      end;
      //caso seja novo registro, faz edições num clientdataset
      dsInsert: begin
         if (Trim(edt_cod_material.Text) <> '') and (StrToFloat(edt_qtd.Text) > 0) then begin
            with cds_materiais do begin
               Append;
               FieldByName('ID_Material').AsString := edt_cod_material.Text;
               FieldByName('Descricao').AsString   := edt_desc_material.Text;
               FieldByName('Quantidade').AsFloat   := edt_qtd.GetDouble;
               Post;
            end;
         end;
      end;
   end;
end;

procedure Tfrm_eventos.btn_busca_materialClick(Sender: TObject);
begin
   if tab_principal.State in[dsInsert,dsEdit] then begin
      edt_cod_material.Text := BuscaDados('id;Descricao','Código;Descrição','materiais','Material');
   end;
end;

procedure Tfrm_eventos.btn_rem_colaboradorClick(Sender: TObject);
begin
   case tab_principal.State of
      //caso seja alteração, faz edição no Zquery
      dsEdit: begin
         if tab_colaboradores.RecordCount > 0 then begin
            if Application.MessageBox('Deseja remover o registro?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = mrYes then begin
               RodaQuery('DELETE FROM evento_colaboradores WHERE ID = ' + tab_colaboradores.FieldByName('ID').AsString);
               tab_colaboradores.Refresh;
            end;
         end;
      end;
      //caso seja novo registro, faz edições num clientdataset
      dsInsert: begin
         if cds_colaboradores.RecordCount > 0 then begin
            if Application.MessageBox('Deseja remover o registro?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = mrYes then begin
               cds_colaboradores.Delete;
            end;
         end;
      end;
   end;
end;

procedure Tfrm_eventos.btn_rem_materialClick(Sender: TObject);
begin
   case tab_principal.State of
      //caso seja alteração, faz edição no Zquery
      dsEdit: begin
         if tab_materiais.RecordCount > 0 then begin
            if Application.MessageBox('Deseja remover o registro?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = mrYes then begin
               RodaQuery('DELETE FROM evento_materiais WHERE ID = ' + tab_materiais.FieldByName('ID').AsString);
               tab_materiais.Refresh;
            end;
         end;
      end;
      //caso seja novo registro, faz edições num clientdataset
      dsInsert: begin
         if cds_materiais.RecordCount > 0 then begin
            if Application.MessageBox('Deseja remover o registro?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = mrYes then begin
               cds_materiais.Delete;
            end;
         end;
      end;
   end;
end;

procedure Tfrm_eventos.edt_cod_colaboradorChange(Sender: TObject);
var
   tab_busca : TZQuery;
begin
   if (tab_principal.State in[dsInsert,dsEdit]) and (edt_cod_colaborador.GetTrimmedText <> '') then begin
      tab_busca := TZQuery.Create(nil);
      tab_busca.Connection := frm_menu.zconn;
      tab_busca.SQL.Add('SELECT Nome FROM colaboradores WHERE Status = -1 AND ID = ' + edt_cod_colaborador.Text);
      tab_busca.Open;

      if tab_busca.RecordCount > 0 then begin
         edt_desc_colaborador.Text := tab_busca.FieldByName('Nome').AsString;
       end
      else edt_desc_colaborador.Clear;
      tab_busca.Free;
   end;
end;

procedure Tfrm_eventos.edt_cod_materialChange(Sender: TObject);
var
   tab_busca : TZQuery;
begin
   if (tab_principal.State in[dsInsert,dsEdit]) and (edt_cod_material.GetTrimmedText <> '') then begin
      tab_busca := TZQuery.Create(nil);
      tab_busca.Connection := frm_menu.zconn;
      tab_busca.SQL.Add('SELECT Descricao FROM materiais WHERE Status = -1 AND ID = ' + edt_cod_material.Text);
      tab_busca.Open;

      if tab_busca.RecordCount > 0 then begin
         edt_desc_material.Text := tab_busca.FieldByName('Descricao').AsString;
       end
      else edt_desc_material.Clear;
      tab_busca.Free;
   end;
end;

procedure Tfrm_eventos.edt_qtdKeyPress(Sender: TObject; var Key: Char);
begin
   if not(Key in ['0'..'9']) then Key := #0;
end;

procedure Tfrm_eventos.FormShow(Sender: TObject);
begin
   inherited;
   tab_principal.SQL.Add('SELECT * FROM eventos');
   tab_principal.Open;
   
   with tab_materiais do begin
      SQL.Add('SELECT	');
      SQL.Add('	evento_materiais.ID,');      
      SQL.Add('	evento_materiais.ID_Evento,');
      SQL.Add('	evento_materiais.Quantidade,');      
      SQL.Add('	materiais.Descricao,');
      SQL.Add('	subcadastro.Descricao AS Cor');
      SQL.Add('FROM evento_materiais');
      SQL.Add('	JOIN materiais ON evento_materiais.ID_Material = materiais.id');
      SQL.Add('	JOIN subcadastro ON materiais.Cor = subcadastro.id');
      Open;
   end;

   with tab_colaboradores do begin
      SQL.Add('SELECT');
      SQL.Add('	evento_colaboradores.ID,');
      SQL.Add('	evento_colaboradores.ID_Colaborador,');
      SQL.Add('	evento_colaboradores.ID_Evento,');
      SQL.Add('	colaboradores.Nome,');
      SQL.Add('	evento_colaboradores.Hora_Inicio,');
      SQL.Add('	evento_colaboradores.Hora_Termino');
      SQL.Add('FROM evento_colaboradores');
      SQL.Add('	JOIN colaboradores ON evento_colaboradores.ID_Colaborador = colaboradores.ID');
      Open;
   end;

end;

procedure Tfrm_eventos.tab_principalAfterPost(DataSet: TDataSet);
var
   I: Integer;   
   Query : TStringList;
begin
   inherited;
   Query := TStringList.Create;
   if cds_materiais.Active = True then begin
      if (cds_materiais.RecordCount > 0)  then begin      
      
         Query.Add('INSERT INTO evento_materiais');
         Query.Add('	(');
         Query.Add('		ID_Evento,');
         Query.Add('		ID_Material,');
         Query.Add('		Quantidade');
         Query.Add('	)');
         Query.Add('VALUES');

         cds_materiais.First;
         while not cds_materiais.Eof do begin
            Query.Add('(');
            Query.Add(tab_principal.FieldByName('ID').AsString          + ',');
            Query.Add(cds_materiais.FieldByName('ID_Material').AsString + ',');
            Query.Add(cds_materiais.FieldByName('Quantidade').AsString);
            Query.Add(')');
            Query.Add(',');

            cds_materiais.Next;   
         end;
         Query.Delete(Query.Count - 1);
         RodaQuery(Query);
      end;
      cds_materiais.EmptyDataSet;
      dts_materiais.DataSet := tab_materiais;
      tab_materiais.Refresh;
   end;

   if cds_colaboradores.Active = True then begin
      if (cds_colaboradores.RecordCount > 0)  then begin
         Query.Clear;
         Query.Add('INSERT INTO evento_colaboradores');
         Query.Add('(');
         Query.Add('   ID_Evento,');
         Query.Add('   ID_Colaborador,');
         Query.Add('   Hora_Inicio,');
         Query.Add('   Hora_Termino');
         Query.Add(')');
         Query.Add('VALUES');

         cds_colaboradores.First;
         while not cds_colaboradores.Eof do begin
            Query.Add('(');
            Query.Add(tab_principal.FieldByName('ID').AsString          + ',');
            Query.Add(cds_colaboradores.FieldByName('ID_Colaborador').AsString + ',');
            Query.Add(QuotedStr(cds_colaboradores.FieldByName('Hora_Inicio').AsString) + ',');
            Query.Add(QuotedStr(cds_colaboradores.FieldByName('Hora_Termino').AsString));
            Query.Add(')');
            Query.Add(',');

            cds_colaboradores.Next;
         end;
         Query.Delete(Query.Count - 1);
         RodaQuery(Query);
      end;
      cds_colaboradores.EmptyDataSet;
      dts_colaboradores.DataSet := tab_materiais;
      tab_colaboradores.Refresh;
   end;


   Query.Free;
end;

procedure Tfrm_eventos.tab_principalBeforeDelete(DataSet: TDataSet);
begin
   RodaQuery('DELETE FROM evento_materiais     WHERE ID_Evento = ' + tab_principal.FieldByName('ID').AsString);
   RodaQuery('DELETE FROM evento_colaboradores WHERE ID_Evento = ' + tab_principal.FieldByName('ID').AsString);
end;

procedure Tfrm_eventos.tab_principalNewRecord(DataSet: TDataSet);
begin
   dts_materiais.DataSet := cds_materiais;
   dts_colaboradores.DataSet := cds_colaboradores;

   cds_materiais.CreateDataSet;
   cds_materiais.EmptyDataSet;

   cds_colaboradores.CreateDataSet;
   cds_colaboradores.EmptyDataSet;
end;

end.
