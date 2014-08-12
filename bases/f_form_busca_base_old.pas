unit f_form_busca_base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_base, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, rkGlassButton, Data.DB,
  ZAbstractRODataset, ZDataset,StrUtils,  Vcl.Buttons;

type
  Tfrm_form_busca_base = class(Tfrm_form_base)
    lbl_titulo: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cbx_campo: TComboBox;
    edt_valor: TEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    tab_busca: TZReadOnlyQuery;
    dts_busca: TDataSource;
    rkGlassButton1: TrkGlassButton;
    rkGlassButton2: TrkGlassButton;
    procedure FormShow(Sender: TObject);
    procedure edt_valorChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cbx_campoSelect(Sender: TObject);
    procedure rkGlassButton1Click(Sender: TObject);
    procedure rkGlassButton2Click(Sender: TObject);
  private
    List_SQL,ListaCampos : TStringList;
    procedure SelecionaValor;
    { Private declarations }
  public
    FCampos,FTitulos,FNome_Tabela,FTitulo_Tela_Busca,FSQL_Extra : String;
  end;

var
  frm_form_busca_base: Tfrm_form_busca_base;

implementation

{$R *.dfm}

uses f_menu, f_funcoes;

procedure Tfrm_form_busca_base.cbx_campoSelect(Sender: TObject);
begin
   tab_busca.Close;
   tab_busca.Open;
end;

procedure Tfrm_form_busca_base.DBGrid1DblClick(Sender: TObject);
begin
   SelecionaValor;
end;

procedure Tfrm_form_busca_base.edt_valorChange(Sender: TObject);
begin
   tab_busca.Close;
   tab_busca.SQL.Clear;
   tab_busca.SQL.Add(List_SQL.Text);
   tab_busca.SQL.Add('WHERE ');

   if isFieldKey(cbx_campo.Text) then begin
      tab_busca.SQL.Add(ListaCampos[cbx_campo.ItemIndex] + ' = ' + edt_valor.Text);
    end
   else tab_busca.SQL.Add(ListaCampos[cbx_campo.ItemIndex] + ' Like  "%' + edt_valor.Text+ '%"');

   tab_busca.Open;
end;

procedure Tfrm_form_busca_base.FormClose(Sender: TObject;var Action: TCloseAction);
begin
   List_SQL.Free;
   ListaCampos.Free;

   inherited;
end;

procedure Tfrm_form_busca_base.FormCreate(Sender: TObject);
begin
  FormStyle := fsNormal;
end;

procedure Tfrm_form_busca_base.FormShow(Sender: TObject);
begin
   List_SQL    := TStringList.Create;
   ListaCampos := TStringList.Create;

   //preenche combobox com os campos
   ExtractStrings([';'],[' '],PChar(FTitulos),cbx_campo.Items);
   ExtractStrings([';'],[' '],PChar(FCampos),ListaCampos);

   //seta primeiro item
   cbx_campo.ItemIndex := 0;

   //seta titulo tela
   self.Caption := 'Busca Rápida - ' + FTitulo_Tela_Busca;
   lbl_titulo.Caption := self.Caption;

   //cria sql para busca de dados
   tab_busca.SQL.Add('SELECT ID,' + StringReplace(FCampos,';',',',[rfReplaceAll]));
   tab_busca.SQL.Add('FROM ' + FNome_Tabela);

   //caso existe uma query adicional, adiciona aqui
   if Trim(FSQL_Extra) <> '' then begin
      tab_busca.SQL.Add(Trim(FSQL_Extra));
   end;

   List_SQL.Text := tab_busca.SQL.Text;
   tab_busca.Open;

   inherited;
end;

procedure Tfrm_form_busca_base.rkGlassButton1Click(Sender: TObject);
begin
   edt_valorChange(Sender);
end;

procedure Tfrm_form_busca_base.rkGlassButton2Click(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure Tfrm_form_busca_base.SelecionaValor;
begin
   if tab_busca.RecordCount > 0 then frm_menu.pub_string_busca := tab_busca.Fields[0].AsString;
   Close;
end;



end.
