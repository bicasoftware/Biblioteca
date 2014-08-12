unit f_cadastro_livros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_cadastro_base, Vcl.Menus, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  rkGlassButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, ZSqlUpdate, Vcl.ComCtrls, JvExComCtrls, JvUpDown;

type
  Tfrm_cadastro_livros = class(Tfrm_form_cadastro_base)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edt_titulo: TDBEdit;
    cbx_editora: TDBLookupComboBox;
    cbx_autor: TDBLookupComboBox;
    Label6: TLabel;
    cbx_genero: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    cbx_categoria: TDBLookupComboBox;
    Label8: TLabel;
    Bevel1: TBevel;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    NovaCategoria1: TMenuItem;
    NovoGnero1: TMenuItem;
    NovoAutor1: TMenuItem;
    NovaEditora1: TMenuItem;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    Panel3: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    ZupLivros: TZUpdateSQL;
    upd_qtd: TJvUpDown;
    upd_armario: TJvUpDown;
    upd_nivel: TJvUpDown;
    upd_tombo: TJvUpDown;
    lbl_1: TLabel;
    edt_Ano_Lancamento: TDBEdit;
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure btn_buscaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NovaCategoria1Click(Sender: TObject);
    procedure NovaEditora1Click(Sender: TObject);
    procedure NovoGnero1Click(Sender: TObject);
    procedure NovoAutor1Click(Sender: TObject);
    procedure NovoFornecedor1Click(Sender: TObject);
    procedure cbx_categoriaEnter(Sender: TObject);
    procedure cbx_editoraEnter(Sender: TObject);
    procedure cbx_generoEnter(Sender: TObject);
    procedure cbx_autorEnter(Sender: TObject);
    procedure cbx_categoriaClick(Sender: TObject);
  private
    procedure TravaUpdowns;
    procedure DestravaUpdowns;
    { Private declarations }
  public
    procedure AposSalvar ; override;
    procedure Salvar     ; override;
    procedure Novo       ; override;
    procedure aoCancelar ; override;

  end;

var
  frm_cadastro_livros: Tfrm_cadastro_livros;

implementation

{$R *.dfm}

uses f_funcoes, f_menu;

procedure Tfrm_cadastro_livros.AposSalvar;
begin
   DestravaUpdowns;
end;

procedure Tfrm_cadastro_livros.aoCancelar;
begin
   inherited;
   TravaUpdowns;
end;

procedure Tfrm_cadastro_livros.btn_buscaClick(Sender: TObject);
var
   Valor : String;
begin
   inherited;
   Valor := BuscaDados('Referencia;Titulo;Autor;Editora','Refêrencia;Título;Autor;Editora','Livros','Livros');

   tab_principal.Locate('ID',Valor,[]);
end;

procedure Tfrm_cadastro_livros.cbx_autorEnter(Sender: TObject);
begin
   PreecheComboboxSubCadastro(cbx_autor    , '4' ,'Autor'    ,'ID' ,'Descricao');
end;

procedure Tfrm_cadastro_livros.cbx_categoriaClick(Sender: TObject);
begin
   PreecheComboboxSubCadastro(cbx_categoria, '1' ,'Categoria','ID' ,'Descricao');
end;

procedure Tfrm_cadastro_livros.cbx_categoriaEnter(Sender: TObject);
begin
   PreecheComboboxSubCadastro(cbx_categoria, '1' ,'Categoria','ID' ,'Descricao');
end;

procedure Tfrm_cadastro_livros.cbx_editoraEnter(Sender: TObject);
begin
   inherited;
   PreecheComboboxSubCadastro(cbx_editora  , '2' ,'Editora'  ,'ID' ,'Descricao');
end;

procedure Tfrm_cadastro_livros.cbx_generoEnter(Sender: TObject);
begin
   PreecheComboboxSubCadastro(cbx_genero   , '3' ,'Genero'   ,'ID' ,'Descricao');
end;

procedure Tfrm_cadastro_livros.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
   ApenasNumeros(DBEdit4,Key);
end;

procedure Tfrm_cadastro_livros.FormShow(Sender: TObject);
begin
   inherited;

   //adiciona propriedades ao combobox
   PreecheComboboxSubCadastro(cbx_categoria, '1' ,'Categoria','ID' ,'Descricao');
   PreecheComboboxSubCadastro(cbx_editora  , '2' ,'Editora'  ,'ID' ,'Descricao');
   PreecheComboboxSubCadastro(cbx_genero   , '3' ,'Genero'   ,'ID' ,'Descricao');
   PreecheComboboxSubCadastro(cbx_autor    , '4' ,'Autor'    ,'ID' ,'Descricao');

   with tab_principal do begin
      SQl.Add(' SELECT');
      SQL.Add('	Autor.Descricao AS Desc_autor,');
      SQL.Add('	Editora.Descricao AS Desc_Editora,');
      SQL.Add('	Genero.Descricao AS Desc_Genero,');
      SQL.Add('	Categoria.Descricao AS Desc_Categoria,');
      SQL.Add('	livros.*');
      SQL.Add(' FROM livros');
      SQL.Add('	LEFT JOIN subcadastro Autor     ON livros.Autor   = autor.ID');
      SQL.Add('	LEFT JOIN subcadastro Editora   ON livros.Editora = Editora.ID');
      SQL.Add('	LEFT JOIN subcadastro Genero    ON livros.Genero    = Genero.ID');
      SQL.Add('	LEFT JOIN subcadastro Categoria ON livros.Categoria = Categoria.id');
      Open;
   end;

   TrataZUpdate(tab_principal,ZupLivros,'livros');
   TravaUpdowns;
end;

procedure Tfrm_cadastro_livros.NovaCategoria1Click(Sender: TObject);
begin
   SubCadastro('Categoria','1');

end;

procedure Tfrm_cadastro_livros.NovaEditora1Click(Sender: TObject);
begin
   SubCadastro('Editoras','2');
end;


procedure Tfrm_cadastro_livros.Novo;
begin
   inherited;
   DestravaUpdowns;
end;

procedure Tfrm_cadastro_livros.NovoAutor1Click(Sender: TObject);
begin
   SubCadastro('Autores','4');
end;

procedure Tfrm_cadastro_livros.NovoFornecedor1Click(Sender: TObject);
begin
   //aguardando cadastro de fornecedores
end;

procedure Tfrm_cadastro_livros.NovoGnero1Click(Sender: TObject);
begin
  SubCadastro('Gêneros','3');
end;

procedure Tfrm_cadastro_livros.Salvar;
var
   tab_busca : TZReadOnlyQuery;
begin
   if frm_cadastro_livros.edt_titulo.Text = '' then begin
      Application.MessageBox('Obrigatório selecionar um Titulo.','Aviso',MB_OK);
      frm_cadastro_livros.edt_titulo.SetFocus;
      Abort;
   end;

   tab_busca := TZReadOnlyQuery.Create(nil);
   tab_busca.Connection := frm_menu.zconn;

   try
      tab_busca.SQL.Add('SELECT COUNT(*) FROM livros ');
      tab_busca.SQL.Add('WHERE titulo = "'+ edt_titulo.Text + '" AND Autor = ' + IntToStr(cbx_autor.KeyValue));
      tab_busca.SQL.Add('AND Editora = '+ IntToStr(cbx_editora.KeyValue));
      tab_busca.Open;
      if tab_busca.Fields[0].AsInteger > 0 then begin
         Application.MessageBox('Livro Já cadastrado.','Aviso',MB_OK+MB_ICONEXCLAMATION);
         Abort;
      end;
   finally
      tab_busca.Close;
      tab_busca.Free;
   end;

end;

procedure Tfrm_cadastro_livros.TravaUpdowns;
begin
   upd_qtd.Enabled     := False;
   upd_armario.Enabled := False;
   upd_nivel.Enabled   := False;
   upd_tombo.Enabled   := False;
end;

procedure Tfrm_cadastro_livros.DestravaUpdowns;
begin
   upd_qtd.Enabled     := True;
   upd_armario.Enabled := True;
   upd_nivel.Enabled   := True;
   upd_tombo.Enabled   := True;
end;


end.
