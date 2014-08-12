unit f_sub_cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro_base, Vcl.Menus, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  rkGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfrm_sub_cadastro = class(Tfrm_form_cadastro_base)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    edt_descricao: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure edt_descricaoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_buscaClick(Sender: TObject);
  private
    procedure Salvar;override;
  public
     FTitulo,FTipo_Cadastro : String;
  end;

var
  frm_sub_cadastro: Tfrm_sub_cadastro;

implementation

{$R *.dfm}

uses f_funcoes, f_menu;



{ Tfrm_sub_cadastro }

procedure Tfrm_sub_cadastro.btn_buscaClick(Sender: TObject);
begin
   tab_principal.Locate('ID',BuscaDados('Id;Descricao','Código;Descrição','SubCadastro',FTitulo,' Tipo_Cadastro = ' + FTipo_Cadastro),[loCaseInsensitive]);
end;

procedure Tfrm_sub_cadastro.edt_descricaoKeyUp(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   if Key = 13 then begin
      btn_salvarClick(Self);
      Close;
   end;
end;

procedure Tfrm_sub_cadastro.FormCreate(Sender: TObject);
begin
//  inherited;

end;

procedure Tfrm_sub_cadastro.Salvar;
var
   tab_busca : TZQuery;
begin
   tab_busca := TZQuery.Create(nil);
   tab_busca.Connection := frm_menu.zconn;
   try
      CampoPreenchido(edt_descricao);

      tab_busca.SQL.Add('SELECT COUNT(*) FROM subcadastro WHERE Tipo_Cadastro = ' + FTipo_Cadastro);
      tab_busca.SQL.Add('AND Descricao = "' + edt_descricao.Text + '"');
      tab_busca.Open;
      if tab_busca.Fields[0].AsInteger > 0 then begin
         Application.MessageBox('Descrição Já Cadastrado.', 'Aviso', MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
         Abort;
      end;

   finally
      tab_principal.FieldByName('Tipo_Cadastro').AsString := FTipo_Cadastro;

      tab_busca.Close;
      tab_busca.Free;
   end;

end;

end.
