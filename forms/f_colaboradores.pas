unit f_colaboradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro_base, Vcl.Menus, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  rkGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls;

type
  Tfrm_colaboradores = class(Tfrm_form_cadastro_base)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    chk_Status: TDBCheckBox;
    edt_codigo: TDBEdit;
    edt_nome: TDBEdit;
    cbx_cargo: TDBLookupComboBox;
    edt_telefone: TJvDBMaskEdit;
    cbx_Sexo: TDBComboBox;
    lbl_1: TLabel;
    mnu_NovoCargo1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure mnu_NovoCargo1Click(Sender: TObject);
    procedure cbx_cargoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_colaboradores: Tfrm_colaboradores;

implementation

{$R *.dfm}

uses f_funcoes, class_helpers, record_helpers;

procedure Tfrm_colaboradores.cbx_cargoEnter(Sender: TObject);
begin
   cbx_cargo.PreencheSubCadastro('10','Cargo');
end;

procedure Tfrm_colaboradores.FormShow(Sender: TObject);
begin
  inherited;
   tab_principal.SQL.Add('SELECT * FROM Colaboradores');
   tab_principal.Open;

   cbx_cargo.PreencheSubCadastro('10','Cargo');
end;

procedure Tfrm_colaboradores.mnu_NovoCargo1Click(Sender: TObject);
begin
   SubCadastro('Cargos','10');
end;

end.
