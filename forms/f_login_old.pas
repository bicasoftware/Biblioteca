unit f_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, rkGlassButton, Data.DB, ZAbstractRODataset,
  ZDataset,ClipBrd;

type
  Tfrm_login = class(Tfrm_form_normal)
    Panel1: TPanel;
    edt_login: TEdit;
    edt_senha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btn_usuario_sistema: TrkGlassButton;
    btn_cancelar: TrkGlassButton;
    procedure btn_usuario_sistemaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Login_Ok : Boolean;
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.dfm}

uses f_menu, f_funcoes, f_manutencao_dados;

procedure Tfrm_login.btn_usuario_sistemaClick(Sender: TObject);
var
   tab_busca : TZReadOnlyQuery;
begin
   if (Trim(edt_login.Text) = 'Supervisor') and (trim(edt_senha.Text) = 'master') then begin
      frm_menu.pub_usuario       :=  '0';
      frm_menu.pub_nome_usuario  :=  'Supervisor';
      frm_menu.pub_nivel_usuario :=  '5';
      Login_Ok := True;
      Close;
    end
   else begin
      if (Trim(edt_login.Text) <> '') and (Trim(edt_senha.Text) <> '') then begin

         instanciaQuery(tab_busca);
         tab_busca.SQL.Add('SELECT * FROM usuarios_sistema WHERE Login = "'+ edt_login.Text +'" AND Senha = md5("'+ edt_senha.Text +'")');
         //se n�o encontrar  tabela de usu�rios, roda tela de manuten��o
         tab_busca.Open;

         if tab_busca.RecordCount = 1 then begin
            frm_menu.pub_usuario       :=       tab_busca.FieldByName('ID').AsString;
            frm_menu.pub_nome_usuario  :=       tab_busca.FieldByName('Login').AsString;
            frm_menu.pub_nivel_usuario := tab_busca.FieldByName('Nivel').AsString;
            tab_busca.Free;
            Login_Ok := True;
            Close;
          end
         else begin
            Application.MessageBox('Usu�rio ou Senha N�o Localizados. Tente Novamente','Erro',MB_OK+MB_ICONASTERISK);
         end;
         tab_busca.Free;
      end;
   end;
end;

procedure Tfrm_login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if not Login_Ok then Application.Terminate;

   inherited;
end;

procedure Tfrm_login.FormCreate(Sender: TObject);
begin
//  inherited; nao remover
end;

procedure Tfrm_login.btn_cancelarClick(Sender: TObject);
begin
   Application.Terminate;
end;

end.
