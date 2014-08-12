unit f_cadastro_fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro_base, Vcl.Menus, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  rkGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls;

type
  Tfrm_cadastro_doadores = class(Tfrm_form_cadastro_base)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    edt_Nome: TDBEdit;
    edt_Sobrenome: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    cbx_sexo: TDBComboBox;
    DBListBox1: TDBListBox;
    DBEdit2: TDBEdit;
    edt_telefone: TDBEdit;
    DBEdit10: TDBEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    JvDBDateEdit3: TJvDBDateEdit;
    JvDBDateEdit4: TJvDBDateEdit;
    edt_cidade: TDBEdit;
    Panel3: TPanel;
    chb_status: TDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure btn_buscaClick(Sender: TObject);
  private
     procedure Salvar;override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadastro_doadores: Tfrm_cadastro_doadores;

implementation

{$R *.dfm}

uses f_funcoes;

procedure Tfrm_cadastro_doadores.btn_buscaClick(Sender: TObject);
begin
   tab_principal.Locate('ID',BuscaDados('Nome;SobreNome','Nome;Sobrenome','Doadores','Doadores'),[]);
end;

procedure Tfrm_cadastro_doadores.DBEdit2KeyPress(Sender: TObject;var Key: Char);
begin
   ApenasNumeros(DBEdit2,key);
end;

procedure Tfrm_cadastro_doadores.FormShow(Sender: TObject);
begin
   tab_principal.SQL.Add('SELECT * FROM doadores');
   tab_principal.Open;
end;

procedure Tfrm_cadastro_doadores.Salvar;
begin
   if Trim(edt_Nome.Text) = '' then begin
      Application.MessageBox('Campo Nome Obrigatório','Aviso',MB_OK+MB_ICONASTERISK);
      edt_Nome.SetFocus;
      Abort;
   end;

   if Trim(edt_Sobrenome.Text) = '' then begin
      Application.MessageBox('Campo Sobre Nome Obrigatório','Aviso',MB_OK+MB_ICONASTERISK);
      edt_Sobrenome.SetFocus;
      Abort;
   end;

   if Trim(edt_Sobrenome.Text) = '' then begin
      Application.MessageBox('Campo Sobre Nome Obrigatório','Aviso',MB_OK+MB_ICONASTERISK);
      edt_Sobrenome.SetFocus;
      Abort;
   end;

   if Trim(edt_telefone.Text) = '' then begin
      Application.MessageBox('Campo Telefone Obrigatório','Aviso',MB_OK+MB_ICONASTERISK);
      edt_telefone.SetFocus;
      Abort;
   end;

   if Trim(edt_cidade.Text) = '' then begin
      Application.MessageBox('Campo Cidade Obrigatório','Aviso',MB_OK+MB_ICONASTERISK);
      edt_cidade.SetFocus;
      Abort;
   end;
end;

end.
