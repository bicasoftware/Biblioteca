unit f_materiais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro_base, Vcl.Menus, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  rkGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfrm_materiais = class(Tfrm_form_cadastro_base)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_codigo: TDBEdit;
    edt_descricao: TDBEdit;
    lbl_observacao: TLabel;
    mm_obs: TDBMemo;
    cbx_categoria: TDBLookupComboBox;
    cbx_cor: TDBLookupComboBox;
    Label5: TLabel;
    cbx_fornecedor: TDBLookupComboBox;
    chk_status: TDBCheckBox;
    mnu_NovaCor1: TMenuItem;
    mnu_Categoria1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure mnu_NovaCor1Click(Sender: TObject);
    procedure mnu_Categoria1Click(Sender: TObject);
    procedure cbx_categoriaEnter(Sender: TObject);
    procedure cbx_corEnter(Sender: TObject);
  private
    procedure Novacor;
    procedure NovaCategoria;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_materiais: Tfrm_materiais;

implementation

{$R *.dfm}

uses class_helpers, f_funcoes;

procedure Tfrm_materiais.cbx_categoriaEnter(Sender: TObject);
begin
  inherited;
   NovaCategoria;
end;

procedure Tfrm_materiais.cbx_corEnter(Sender: TObject);
begin
   Novacor;
end;

procedure Tfrm_materiais.FormShow(Sender: TObject);
begin
   inherited;
   
   tab_principal.SQL.Add('SELECT * FROM materiais');
   tab_principal.Open;

   Novacor;
   NovaCategoria;
end;

procedure Tfrm_materiais.mnu_Categoria1Click(Sender: TObject);
begin
   SubCadastro('Categoria', '13');
end;

procedure Tfrm_materiais.mnu_NovaCor1Click(Sender: TObject);
begin
   SubCadastro('Cor', '14');
end;

procedure Tfrm_materiais.NovaCategoria;
begin
   cbx_categoria.PreencheSubCadastro('13','categoria');
end;

procedure Tfrm_materiais.Novacor;
begin
   cbx_cor.PreencheSubCadastro('14','Cor');
end;

end.
