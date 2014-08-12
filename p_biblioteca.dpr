program p_biblioteca;

uses
  Vcl.Forms,
  f_menu in 'forms\f_menu.pas' {frm_menu},
  f_funcoes in 'classes\f_funcoes.pas',
  Vcl.Themes,
  Vcl.Styles,
  f_form_base in 'bases\f_form_base.pas' {frm_form_base},
  f_form_normal in 'bases\f_form_normal.pas' {frm_form_normal},
  f_cadastro_livros in 'forms\f_cadastro_livros.pas' {frm_cadastro_livros},
  r_relatorio_base in 'bases\r_relatorio_base.pas' {fqr_relatorio_base},
  f_form_busca_base in 'bases\f_form_busca_base.pas' {frm_form_busca_base},
  f_cadastro_fornecedor in 'forms\f_cadastro_fornecedor.pas' {frm_form_cadastro_base1},
  f_cadastro_base in 'bases\f_cadastro_base.pas' {frm_form_cadastro_base},
  f_sub_cadastro in 'forms\f_sub_cadastro.pas' {frm_sub_cadastro},
  f_locacao_livros in 'forms\f_locacao_livros.pas' {frm_locacao_livros},
  f_devolucoes in 'forms\f_devolucoes.pas' {frm_devolucoes},
  f_cadastro_usuarios in 'forms\f_cadastro_usuarios.pas' {frm_cadastro_usuarios},
  f_cadastro_usuarios_sistema in 'forms\f_cadastro_usuarios_sistema.pas' {frm_cadastro_usuarios_sistema},
  f_login in 'forms\f_login.pas' {frm_login},
  f_doacoes in 'forms\f_doacoes.pas' {frm_doacoes},
  p_doacoes in 'pesquisas\p_doacoes.pas' {frl_doacoes},
  p_locacoes in 'pesquisas\p_locacoes.pas' {frl_locacoes},
  f_manutencao_dados in 'forms\f_manutencao_dados.pas' {frm_manutencao_dados},
  f_backup in 'forms\f_backup.pas' {frm_backup},
  p_usuarios in 'pesquisas\p_usuarios.pas' {frl_usuarios},
  p_relacao_usuarios_livros_mensal in 'pesquisas\p_relacao_usuarios_livros_mensal.pas' {frl_relacao_mensal_usuarios_livros},
  p_livros in 'pesquisas\p_livros.pas' {frl_livros},
  p_doadores in 'pesquisas\p_doadores.pas' {frl_doadores},
  f_colaboradores in 'forms\f_colaboradores.pas' {frm_colaboradores},
  class_helpers in 'classes\class_helpers.pas',
  record_helpers in 'classes\record_helpers.pas',
  f_materiais in 'forms\f_materiais.pas' {frm_materiais},
  f_eventos in 'forms\f_eventos.pas' {frm_eventos},
  DSiWin32 in '..\DSiWin32.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Emerald Light Slate');
  Application.CreateForm(Tfrm_menu, frm_menu);
  Application.Run;
end.
