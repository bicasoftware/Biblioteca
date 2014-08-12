unit p_livros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  rkGlassButton, Data.DB, ZAbstractRODataset, ZDataset, Vcl.Mask, JvExMask,
  JvToolEdit,ClipBRD, QRCtrls, QuickRpt, Vcl.ComCtrls, JvExComCtrls, JvUpDown,
  Vcl.DBCtrls;

type
  Tfrl_livros = class(Tfrm_form_normal)
    Panel2: TPanel;
    JvDBGrid1: TJvDBGrid;
    rkGlassButton1: TrkGlassButton;
    rkGlassButton2: TrkGlassButton;
    tab_master: TZReadOnlyQuery;
    dts_master: TDataSource;
    qRep_Livros: TQuickRep;
    SummaryBand1: TQRBand;
    lbl_total: TQRLabel;
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    lbl_titulo_relatorio: TQRLabel;
    DetailBand1: TQRBand;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edt_codigo: TEdit;
    edt_data_inicial: TJvDateEdit;
    edt_data_final: TJvDateEdit;
    rkGlassButton3: TrkGlassButton;
    rkGlassButton4: TrkGlassButton;
    cbx_editora: TDBLookupComboBox;
    cbx_autor: TDBLookupComboBox;
    cbx_genero: TDBLookupComboBox;
    cbx_categoria: TDBLookupComboBox;
    Label2: TLabel;
    edt_referencia: TEdit;
    edt_titulo: TEdit;
    edt_armario: TEdit;
    edt_nivel: TEdit;
    edt_tombo: TEdit;
    edt_quantidade: TEdit;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    rdg_ordem: TRadioGroup;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel12: TQRLabel;
    rdg_locavel: TRadioGroup;
    rdg_ativo: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure rkGlassButton2Click(Sender: TObject);
    procedure rkGlassButton4Click(Sender: TObject);
    procedure rkGlassButton3Click(Sender: TObject);
    procedure rkGlassButton1Click(Sender: TObject);
    procedure lbl_totalPrint(sender: TObject; var Value: string);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure edt_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_quantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure QRLabel1Print(sender: TObject; var Value: string);
  private
    FTotalLivros : Integer;
  public
    { Public declarations }
  end;

var
  frl_livros: Tfrl_livros;

const
   Query_Master : String = ''
       +'SELECT '
       +'livros.ID,'
       +'livros.referencia, '
       +'livros.Titulo, '
       +'CONCAT("Armario: ", livros.armario," Nivel: ",livros.nivel," Tombo: ",livros.tombo) As Localizacao, '
       +'livros.Qtd_Estoque, '
       +'If(livros.Status = "-1","Ativo","Inativo") AS Status, '
       +'If(livros.locavel = "-1","Locavel","Não Locavel") AS Locavel, '
       +'	Autor.Descricao AS Desc_autor, '
       +'	Editora.Descricao AS Desc_Editora, '
       +'	Genero.Descricao AS Desc_Genero, '
       +'	Categoria.Descricao AS Desc_Categoria, '
       +'livros.Data_Cadastro '
       +'FROM livros '
       +'LEFT JOIN subcadastro Autor     ON livros.Autor   = autor.ID '
       +'LEFT JOIN subcadastro Editora   ON livros.Editora = Editora.ID '
       +'LEFT JOIN subcadastro Genero    ON livros.Genero    = Genero.ID '
       +'LEFT JOIN subcadastro Categoria ON livros.Categoria = Categoria.id ';


implementation

{$R *.dfm}

uses f_menu, f_funcoes;

procedure Tfrl_livros.DetailBand1BeforePrint(Sender: TQRCustomBand;var PrintBand: Boolean);
begin
   Inc(FTotalLivros,1);
end;

procedure Tfrl_livros.edt_codigoKeyPress(Sender: TObject; var Key: Char);
begin
   ApenasNumeros(edt_codigo,key);

end;

procedure Tfrl_livros.edt_quantidadeKeyPress(Sender: TObject; var Key: Char);
begin
   ApenasNumeros(edt_quantidade,key);

end;

procedure Tfrl_livros.FormShow(Sender: TObject);
begin
   inherited;

   //adiciona propriedades ao combobox
   PreecheComboboxSubCadastro(cbx_categoria, '1' ,'Categoria','ID' ,'Descricao');
   PreecheComboboxSubCadastro(cbx_editora  , '2' ,'Editora'  ,'ID' ,'Descricao');
   PreecheComboboxSubCadastro(cbx_genero   , '3' ,'Genero'   ,'ID' ,'Descricao');
   PreecheComboboxSubCadastro(cbx_autor    , '4' ,'Autor'    ,'ID' ,'Descricao');

   TrocaQuery(tab_master,Query_Master);
end;

procedure Tfrl_livros.rkGlassButton1Click(Sender: TObject);
begin
   FTotalLivros := 0;
   tab_master.DisableControls;
   qRep_Livros.Prepare;
   qRep_Livros.Preview;
   tab_master.EnableControls;
end;

procedure Tfrl_livros.rkGlassButton2Click(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure Tfrl_livros.rkGlassButton3Click(Sender: TObject);
var
   query_where : TStringList;
   Ordem : String;
begin
   query_where := TStringList.Create;
   Ordem := '';

   with query_where do begin
      // Pesquisa codigo do livro
      if Trim(edt_codigo.Text) <> '' then begin
         Add('AND');
         Add('livros.ID = ' + edt_codigo.Text);
      end;
      // Referência do livro
      if Trim(edt_referencia.Text) <> '' then begin
         Add('AND');
         Add('livros.referencia = ' + QuotedStr(edt_referencia.Text));
      end;
      // Título do livro
      if Trim(edt_titulo.Text) <> '' then begin
         Add('AND');
         Add('livros.Titulo like "%' + edt_titulo.Text + '%"');
      end;
      // Quantidade no estoque
      if Trim(edt_quantidade.Text) <> '' then begin
         Add('AND');
         Add('livros.Qtd_Estoque = ' + edt_quantidade.Text);
      end;
      // Editora
      if cbx_editora.KeyValue > 0 then begin
         Add('AND');
         Add('livros.Editora = ' + IntToStr(cbx_editora.KeyValue));
      end;
      // Autor
      if cbx_autor.KeyValue > 0 then begin
         Add('AND');
         Add('livros.Autor = ' + IntToStr(cbx_autor.KeyValue));
      end;
      // Gênero
      if cbx_genero.KeyValue > 0 then begin
         Add('AND');
         Add('livros.Genero = ' + IntToStr(cbx_genero.KeyValue));
      end;
      // Categoria
      if cbx_categoria.KeyValue > 0 then begin
         Add('AND');
         Add('livros.Categoria = ' + IntToStr(cbx_categoria.KeyValue));
      end;
      // Armário
      if Trim(edt_armario.Text) <> '' then begin
         Add('AND');
         Add('livros.Armario = ' + QuotedStr(edt_armario.Text));
      end;
      // Nível
      if Trim(edt_nivel.Text) <> '' then begin
         Add('AND');
         Add('livros.Nivel = ' + QuotedStr(edt_nivel.Text));
      end;
      // Tombo
      if Trim(edt_tombo.Text) <> '' then begin
         Add('AND');
         Add('livros.Tombo = ' + QuotedStr(edt_tombo.Text));
      end;
      // Data de cadastro
      if (Trim(edt_data_inicial.Text) <> '/  /') and (Trim(edt_data_final.Text) <> '/  /') then begin
         Add('AND');
         Add('livros.Data_Cadastro between ' + QuotedStr(FormataData(edt_data_inicial.Date)) + ' AND ' + QuotedStr(FormataData(edt_data_final.Date)));
      end;

      // Status
      case rdg_ativo.ItemIndex of
         1 : begin
            Add('AND');
            Add('livros.Status = -1');
         end;
         2 : begin
            Add('AND');
            Add('livros.Status = 0');
         end;
      end;
      // Locavel
      case rdg_locavel.ItemIndex of
         1 : begin
            Add('AND');
            Add('livros.locavel = -1');
         end;
         2 : begin
            Add('AND');
            Add('livros.locavel = 0');
         end;
      end;
      // Ordene por:
      case rdg_ordem.ItemIndex of
         0 : Ordem := 'ORDER BY Titulo';
         1 : Ordem := 'ORDER BY Desc_autor';
         2 : Ordem := 'ORDER BY Desc_Categoria';
         3 : Ordem := 'ORDER BY Desc_Genero';
         4 : Ordem := 'ORDER BY Desc_Editora';
      end;
   end;

   tab_master.Close;
   tab_master.SQL.Clear;
   tab_master.SQL.Add(Query_Master);

   if query_where.Count > 0 then begin
      query_where.Delete(0);
      tab_master.SQL.Add('WHERE');
      tab_master.sql.Add(query_where.Text);
   end;
   tab_master.SQL.Add(Ordem);
   tab_master.Open;

   query_where.Free;
end;

procedure Tfrl_livros.rkGlassButton4Click(Sender: TObject);
begin
  inherited;
   TrocaQuery(tab_master,Query_Master);

      //Limpa campos
      rdg_ordem.ItemIndex := -0;
      edt_codigo.Clear;
      edt_referencia.Clear;
      edt_titulo.Clear;
      cbx_editora.KeyValue := 0;
      cbx_autor.KeyValue := 0;
      cbx_genero.KeyValue := 0;
      cbx_categoria.KeyValue := 0;
      edt_quantidade.Clear;
      edt_data_inicial.Clear;
      edt_data_final.Clear;
      edt_armario.Clear;
      edt_nivel.Clear;
      edt_tombo.Clear;
      rdg_locavel.ItemIndex := 0;
      rdg_ativo.ItemIndex   := 0;
      rdg_ordem.ItemIndex   := 0;
end;

procedure Tfrl_livros.lbl_totalPrint(sender: TObject; var Value: string);
begin
   lbl_total.Caption := 'Total de Livros: ' + IntToStr(FTotalLivros);
end;

procedure Tfrl_livros.QRLabel1Print(sender: TObject; var Value: string);
begin
   FTotalLivros := 0;
end;

end.
