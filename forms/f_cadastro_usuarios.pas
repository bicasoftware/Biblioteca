unit f_cadastro_usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro_base, Vcl.Menus, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  rkGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.DBCtrls,
  JvMaskEdit, JvDBControls, JvExMask, JvToolEdit, Vcl.Mask, ZSqlUpdate;

type
  Tfrm_cadastro_usuarios = class(Tfrm_form_cadastro_base)
    Label1: TLabel;
    edtnome: TDBEdit;
    Label2: TLabel;
    edtsobrenome: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtrua: TDBEdit;
    Label7: TLabel;
    edtnumero: TDBEdit;
    Label8: TLabel;
    edtcomplemento: TDBEdit;
    Código: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    edtbairro: TDBEdit;
    Label10: TLabel;
    Label4: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Label11: TLabel;
    edttelefone: TJvDBMaskEdit;
    edtcelular: TJvDBMaskEdit;
    Label12: TLabel;
    edtrg: TDBEdit;
    Label13: TLabel;
    edtemail: TDBEdit;
    edtcidade: TDBEdit;
    mm_observacoes: TDBMemo;
    Label14: TLabel;
    cbx_sexo: TDBComboBox;
    Zup_usuarios: TZUpdateSQL;
    Label15: TLabel;
    DBCheckBox1: TDBCheckBox;
    NovoTipoUsurio1: TMenuItem;
    cbx_usuarios: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure btn_buscaClick(Sender: TObject);
    procedure NovoTipoUsurio1Click(Sender: TObject);
    procedure cbx_usuariosEnter(Sender: TObject);
  private
    procedure AtualizaCombobox;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadastro_usuarios: Tfrm_cadastro_usuarios;

implementation

{$R *.dfm}

uses f_funcoes;

procedure Tfrm_cadastro_usuarios.btn_buscaClick(Sender: TObject);
begin
   tab_principal.Locate('ID',BuscaDados('Nome;SobreNome;Rua','Nome;Sobre Nome;Rua','Usuarios','Usuários'),[]);
end;

procedure Tfrm_cadastro_usuarios.cbx_usuariosEnter(Sender: TObject);
begin
   PreecheComboboxSubCadastro(cbx_usuarios, '5' ,'Tipo_Usuario','ID' ,'Descricao');
end;

procedure Tfrm_cadastro_usuarios.FormShow(Sender: TObject);
begin
   inherited;

   PreecheComboboxSubCadastro(cbx_usuarios, '5' ,'Tipo_Usuario','ID' ,'Descricao');

   tab_principal.SQL.Add('SELECT * FROM usuarios');
   tab_principal.Open;

   TrataZUpdate(tab_principal,Zup_usuarios,'usuarios');
end;

procedure Tfrm_cadastro_usuarios.NovoTipoUsurio1Click(Sender: TObject);
begin
   SubCadastro('Tipos de Usuário','5');
end;

procedure Tfrm_cadastro_usuarios.AtualizaCombobox;
begin
   cbx_usuarios.Refresh;
end;

end.
