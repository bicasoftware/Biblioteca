unit f_busca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, rkGlassButton,StrUtils,
  Vcl.Imaging.jpeg;

type
  Tfrm_busca = class(TForm)
    dbg_busca: TDBGrid;
    edt_busca: TLabeledEdit;
    btn_sair: TrkGlassButton;
    cbx_campo: TComboBox;
    Label1: TLabel;
    tab_busca: TZReadOnlyQuery;
    dts_busca: TDataSource;
    Image1: TImage;
    lbl_titulo: TLabel;
    procedure btn_sairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_buscaChange(Sender: TObject);
    procedure edt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure cbx_campoKeyPress(Sender: TObject; var Key: Char);
    procedure dbg_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure dbg_buscaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
      Tabela,
      Titulo : String;
      Primary_Key : Integer;
      Lista_Campos,ListaCaptions : TStringList;
  end;

var
  frm_busca: Tfrm_busca;


implementation

{$R *.dfm}

uses UDmMaster, f_menu;

procedure Tfrm_busca.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_busca.cbx_campoKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then edt_busca.SetFocus;
end;

procedure Tfrm_busca.dbg_buscaDblClick(Sender: TObject);
begin
   frm_menu.valores_publicos.Retorno_Busca := tab_busca.FieldByName('ID').AsString;
   Close;
end;

procedure Tfrm_busca.dbg_buscaKeyPress(Sender: TObject; var Key: Char);
begin
   dbg_buscaDblClick(Sender);
end;

procedure Tfrm_busca.edt_buscaChange(Sender: TObject);
var
   I: Integer;
   Campos : String;
   Acampo : Array of String;
begin
   for I := 0 to Lista_Campos.Count-1 do begin
      Campos := Campos + Lista_Campos[I] + ',';
      SetLength(Acampo, length(Acampo)+1);
      Acampo[I] := Lista_Campos[I];
   end;
   Campos := LeftStr(Campos,Length(Campos)-1);

   with tab_busca do begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,' + Campos + ' FROM ' + Tabela + ' WHERE ' + ACampo[cbx_campo.ItemIndex] + ' Like"%'+edt_busca.Text+ '%"');
      Open;
   end;
end;

procedure Tfrm_busca.edt_buscaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then begin
      dbg_busca.SetFocus;
   end;
end;

procedure Tfrm_busca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure Tfrm_busca.FormCreate(Sender: TObject);
begin
   Lista_Campos  := TStringList.Create;
   ListaCaptions := TStringList.Create;
end;

procedure Tfrm_busca.FormDestroy(Sender: TObject);
begin
   frm_busca := nil;
end;

procedure Tfrm_busca.FormShow(Sender: TObject);
var
   I: Integer;
   Campos : String;
begin
   cbx_campo.Items := ListaCaptions;
   cbx_campo.ItemIndex := 0;

   self.Caption := Titulo;
   lbl_titulo.Caption := Titulo;

   for I := 0 to Lista_Campos.Count-1 do begin
      Campos := Campos + Lista_Campos[I] + ',';
   end;
   Campos := LeftStr(Campos,Length(Campos)-1);

   with tab_busca do begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID,' + Campos + ' FROM ' + Tabela  );
      Open;
   end;

   frm_menu.valores_publicos.Retorno_Busca := '';
end;

end.
