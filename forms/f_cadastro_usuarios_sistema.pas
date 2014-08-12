unit f_cadastro_usuarios_sistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro_base, Vcl.Menus, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  rkGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfrm_cadastro_usuarios_sistema = class(Tfrm_form_cadastro_base)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_nome: TDBEdit;
    edt_senha: TDBEdit;
    cbx_confirmar: TDBComboBox;
    edt_confirmar_senha: TEdit;
    edt_login: TDBEdit;
    Label5: TLabel;
    Bevel1: TBevel;
    procedure FormShow(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
  private
    procedure Novo;override;
    procedure Salvar;override;
    procedure aoMudarRegistro;override;
    procedure AposSalvar;override;

    function Usuario_Encontrado: Boolean;
  public
    { Public declarations }
  end;

var
  frm_cadastro_usuarios_sistema: Tfrm_cadastro_usuarios_sistema;

implementation

{$R *.dfm}

uses f_menu, f_funcoes;

procedure Tfrm_cadastro_usuarios_sistema.aoMudarRegistro;
begin
   inherited;
   edt_confirmar_senha.Text := edt_senha.Text;
end;

procedure Tfrm_cadastro_usuarios_sistema.AposSalvar;
begin
   inherited;
   RodaQuery('UPDATE usuarios_sistema SET Senha = md5('+ QuotedStr(tab_principal.FieldByName('Senha').AsString) + ') WHERE Login = ' + QuotedStr(tab_principal.FieldByName('login').AsString) );
end;

procedure Tfrm_cadastro_usuarios_sistema.btn_alterarClick(Sender: TObject);
begin
//  inherited;

end;

procedure Tfrm_cadastro_usuarios_sistema.FormShow(Sender: TObject);
begin
  inherited;

  tab_principal.SQL.Add('SELECT * FROM usuarios_sistema');
  tab_principal.Open;

  btn_alterar.Enabled := False;
end;

procedure Tfrm_cadastro_usuarios_sistema.Novo;
begin
   inherited;
   edt_confirmar_senha.Text := '';
end;

procedure Tfrm_cadastro_usuarios_sistema.Salvar;
begin
  inherited;
   if Trim(edt_nome.Text) = '' then begin
      Application.MessageBox('Obrigatório Selecionar um Nome.','Aviso',MB_OK+MB_ICONQUESTION);
      edt_nome.SetFocus;
      Abort;
   end;

   //supervisor é do suporte ! hehe
   if tab_principal.FieldByName('Login').AsString = 'Supervisor'  then begin
      Application.MessageBox('Utilização do Login Usuário "Supervisor" não é permitido! ','Aviso',MB_OK+MB_ICONQUESTION);
      edt_login.SetFocus;
      Abort;
   end;

   //usuario repetido
   if Usuario_Encontrado = True then begin
      Application.MessageBox('Login já cadastrado, digite outro Login ','Aviso',MB_OK+MB_ICONQUESTION);
      edt_login.SetFocus;
      Abort;
   end;

   //login requisitado
   if tab_principal.FieldByName('Login').AsString = '' then begin
      Application.MessageBox('Obrigatório Incluir o Login.','Erro',MB_OK+MB_ICONQUESTION);
      edt_login.SetFocus;
      Abort;
   end;

   //login requisitado
   if (edt_confirmar_senha.Text <> tab_principal.FieldByName('Senha').AsString) then begin
      Application.MessageBox('As senhas digitadas não coincidem! Digite as senhas novamente','Erro',MB_OK+MB_ICONQUESTION);
      tab_principal.FieldByName('Senha').AsString := '';
      edt_confirmar_senha.Text := '';
      Abort;
   end;

end;

function Tfrm_cadastro_usuarios_sistema.Usuario_Encontrado : Boolean;
var
   tab_busca : TZReadOnlyQuery;
begin
   Result := False;
   tab_busca := TZReadOnlyQuery.Create(nil);

   tab_busca.Connection := frm_menu.zconn;
   tab_busca.SQL.Add('SELECT Count(*) as Count FROM usuarios_sistema WHERE Login = "' + tab_principal.FieldByName('login').AsString + '"');
   tab_busca.Open;

   if tab_busca.Fields[0].AsInteger > 0 then Result := true;
   tab_busca.Close;
   tab_busca.Free;
end;

end.
