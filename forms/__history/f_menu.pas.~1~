unit f_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  ZAbstractConnection, ZConnection, Vcl.Buttons, rkGlassButton, Vcl.Menus,
  Vcl.ExtCtrls, Data.DB, ZAbstractRODataset, ZDataset, JvMenus, Vcl.ImgList;

type
  Tfrm_menu = class(TForm)
    zconn: TZConnection;
    sbar_menu: TStatusBar;
    JvMainMenu1: TJvMainMenu;
    Cadastros1: TMenuItem;
    Livros1: TMenuItem;
    SubCadastros1: TMenuItem;
    Autores1: TMenuItem;
    livrosCategoria1: TMenuItem;
    LivrosEditoras1: TMenuItem;
    LivrosGneros1: TMenuItem;
    N1: TMenuItem;
    Usurios1: TMenuItem;
    Doadores1: TMenuItem;
    Movimentao1: TMenuItem;
    SadadeLivros1: TMenuItem;
    DevoluesdeLivros1: TMenuItem;
    DoaesdeLivros1: TMenuItem;
    RelaesRelatrios1: TMenuItem;
    RelaodeDoales1: TMenuItem;
    RelaodeLocaes1: TMenuItem;
    Mnu_manutencao: TMenuItem;
    NovoUsurio1: TMenuItem;
    ManutenodeDados1: TMenuItem;
    EfetuarBackup1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    N3: TMenuItem;
    RelaodeUsurios1: TMenuItem;
    mnu_livros_mensal: TMenuItem;
    RelaoLivros1: TMenuItem;
    RelaodeDoadores1: TMenuItem;
    Biblioteca1: TMenuItem;
    mniEventos1: TMenuItem;
    mnu_Eventos1: TMenuItem;
    mnu_MAteriais1: TMenuItem;
    mnu_Colaboradores1: TMenuItem;
    mnu_Eventos2: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure SaidadeLivros1Click(Sender: TObject);
    procedure DevoluodeLivros1Click(Sender: TObject);
    procedure btn_usuario_sistemaClick(Sender: TObject);
    procedure btn_doacoesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure Livros1Click(Sender: TObject);
    procedure livrosCategoria1Click(Sender: TObject);
    procedure LivrosEditoras1Click(Sender: TObject);
    procedure Autores1Click(Sender: TObject);
    procedure LivrosGneros1Click(Sender: TObject);
    procedure iposdeUsurio1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Doadores1Click(Sender: TObject);
    procedure SadadeLivros1Click(Sender: TObject);
    procedure DevoluesdeLivros1Click(Sender: TObject);
    procedure DoaesdeLivros1Click(Sender: TObject);
    procedure RelaodeDoales1Click(Sender: TObject);
    procedure RelaodeLocaes1Click(Sender: TObject);
    procedure NovoUsurio1Click(Sender: TObject);
    procedure ManutenodeDados1Click(Sender: TObject);
    procedure EfetuarBackup1Click(Sender: TObject);
    procedure RelaodeUsurios1Click(Sender: TObject);
    procedure mnu_livros_mensalClick(Sender: TObject);
    procedure RelaoLivros1Click(Sender: TObject);
    procedure RelaodeDoadores1Click(Sender: TObject);
    procedure mnu_Eventos2Click(Sender: TObject);
    procedure mnu_Colaboradores1Click(Sender: TObject);
    procedure mnu_MAteriais1Click(Sender: TObject);
  private
    procedure ChamarLogin;
  protected
    { Private declarations }
  public
     //Strings publicas
     pub_usuario : String;
     pub_nome_usuario : String;
     pub_nivel_usuario : String;
     pub_string_busca : String;
  end;

var
  frm_menu: Tfrm_menu;

implementation

Uses f_funcoes,f_cadastro_livros, r_relatorio_base, f_locacao_livros,
  f_devolucoes, f_cadastro_usuarios, f_cadastro_usuarios_sistema, f_login,
  f_doacoes, p_doacoes, p_locacoes, f_cadastro_base, f_cadastro_fornecedor,
  f_manutencao_dados, f_backup, p_usuarios, p_relacao_usuarios_livros_mensal,
  p_doadores, p_livros, f_colaboradores, f_materiais, f_eventos;

{$R *.dfm}

procedure Tfrm_menu.Autores1Click(Sender: TObject);
begin
   SubCadastro('Autores','4');
end;

procedure Tfrm_menu.btn_doacoesClick(Sender: TObject);
begin
   Application.CreateForm(Tfrm_doacoes,frm_doacoes);
end;

procedure Tfrm_menu.btn_usuario_sistemaClick(Sender: TObject);
begin
   Application.CreateForm(Tfrm_cadastro_usuarios_sistema,frm_cadastro_usuarios_sistema);
end;

procedure Tfrm_menu.ChamarLogin;
begin
   frm_login := Tfrm_login.Create(nil);
   frm_login.ShowModal;
   frm_login.Free;
end;

procedure Tfrm_menu.DevoluesdeLivros1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_devolucoes,frm_devolucoes);
end;

procedure Tfrm_menu.DevoluodeLivros1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_devolucoes,frm_devolucoes);
end;

procedure Tfrm_menu.Doadores1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_cadastro_doadores,frm_cadastro_doadores);
end;

procedure Tfrm_menu.DoaesdeLivros1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_doacoes,frm_doacoes);
end;

procedure Tfrm_menu.EfetuarBackup1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_backup,frm_backup);
end;

procedure Tfrm_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Application.MessageBox('Deseja Realmente Sair ?','Aviso',MB_YESNO+MB_ICONASTERISK+MB_DEFBUTTON2) = ID_NO then begin
      Abort;
   end;
end;

procedure Tfrm_menu.FormShow(Sender: TObject);
begin
   ConectarBanco;
   ChamarLogin;
   //CarregaWallPaper;
   sbar_menu.Panels[1].Text := pub_nome_usuario;
end;

procedure Tfrm_menu.iposdeUsurio1Click(Sender: TObject);
begin
   SubCadastro('Tipos de Usuário','5');
end;

procedure Tfrm_menu.Livros1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_cadastro_livros,frm_cadastro_livros);
end;

procedure Tfrm_menu.livrosCategoria1Click(Sender: TObject);
begin
   SubCadastro('Categoria','1');
end;

procedure Tfrm_menu.LivrosEditoras1Click(Sender: TObject);
begin
   SubCadastro('Editoras','2');
end;

procedure Tfrm_menu.LivrosGneros1Click(Sender: TObject);
begin
   SubCadastro('Gêneros','3');
end;

procedure Tfrm_menu.ManutenodeDados1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_manutencao_dados,frm_manutencao_dados);
end;

procedure Tfrm_menu.mnu_Colaboradores1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_colaboradores,frm_colaboradores);
end;

procedure Tfrm_menu.mnu_Eventos2Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_eventos,frm_eventos);
end;

procedure Tfrm_menu.mnu_livros_mensalClick(Sender: TObject);
begin
   Application.CreateForm(Tfrl_relacao_mensal_usuarios_livros,frl_relacao_mensal_usuarios_livros);
end;

procedure Tfrm_menu.mnu_MAteriais1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_materiais,frm_materiais);
end;

procedure Tfrm_menu.NovoUsurio1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_cadastro_usuarios_sistema,frm_cadastro_usuarios_sistema);
end;

procedure Tfrm_menu.RelaodeDoadores1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrl_doadores,frl_doadores);
end;

procedure Tfrm_menu.RelaodeDoales1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrl_doacoes,frl_doacoes);
end;

procedure Tfrm_menu.RelaodeLocaes1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrl_locacoes,frl_locacoes);
end;

procedure Tfrm_menu.RelaodeUsurios1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrl_usuarios,frl_usuarios);
end;

procedure Tfrm_menu.RelaoLivros1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrl_livros,frl_livros);
end;

procedure Tfrm_menu.SadadeLivros1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_locacao_livros,frm_locacao_livros);
end;

procedure Tfrm_menu.SaidadeLivros1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_locacao_livros,frm_locacao_livros);
end;

procedure Tfrm_menu.Sair1Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure Tfrm_menu.Usurios1Click(Sender: TObject);
begin
   Application.CreateForm(Tfrm_cadastro_usuarios,frm_cadastro_usuarios);
end;

end.
