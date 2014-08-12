unit p_doacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  rkGlassButton, Data.DB, ZAbstractRODataset, ZDataset, Vcl.Mask, JvExMask,
  JvToolEdit,ClipBRD, QRCtrls, QuickRpt;

type
  Tfrl_doacoes = class(Tfrm_form_normal)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    rkGlassButton1: TrkGlassButton;
    rkGlassButton2: TrkGlassButton;
    tab_master: TZReadOnlyQuery;
    tab_slave: TZReadOnlyQuery;
    dts_slave: TDataSource;
    dts_master: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_codigo_doacao: TEdit;
    edt_doador: TEdit;
    edt_responsavel: TEdit;
    edt_data_inicial: TJvDateEdit;
    edt_data_final: TJvDateEdit;
    Label5: TLabel;
    rkGlassButton3: TrkGlassButton;
    rkGlassButton4: TrkGlassButton;
    qRep_Doacoes: TQuickRep;
    SummaryBand1: TQRBand;
    lbl_total: TQRLabel;
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    lbl_titulo_relatorio: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure rkGlassButton2Click(Sender: TObject);
    procedure rkGlassButton4Click(Sender: TObject);
    procedure rkGlassButton3Click(Sender: TObject);
    procedure rkGlassButton1Click(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure lbl_totalPrint(sender: TObject; var Value: string);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel1Print(sender: TObject; var Value: string);
  private
    FTotalDoacoes : Integer;
    procedure Pesquisa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frl_doacoes: Tfrl_doacoes;

const
   Query_Master : String = ''
      +'SELECT '
      +' doacoes.ID,  '
      +'	Concat(Coalesce(doadores.Nome,"") , " " ,Coalesce(doadores.SobreNome),"") AS Doador, '
      +'	doacoes.Data_Doacao, '
      +'	usuarios_sistema.Nome AS Funcionario '
      +'FROM doacoes '
      +'	JOIN doadores ON doacoes.ID_Doador = doadores.ID '
      +'	JOIN usuarios_sistema ON doacoes.ID_Funcionario = usuarios_sistema.ID ';

   Query_Slave : string = ''
      +'SELECT  '
      +'	livros.referencia, '
      +'	livros.Titulo, '
      +'	doacoes_items.ID_Doacao, '
      +'	doacoes_items.ID_Livro, '
      +'	doacoes_items.Quantidade '
      +'FROM doacoes_items '
      +'	JOIN livros ON doacoes_items.ID_Livro = livros.ID ' ;

implementation

{$R *.dfm}

uses f_menu, f_funcoes;

procedure Tfrl_doacoes.FormShow(Sender: TObject);
begin
   inherited;

   TrocaQuery(tab_master,Query_Master);
   TrocaQuery(tab_slave,Query_Slave);
end;

procedure Tfrl_doacoes.rkGlassButton1Click(Sender: TObject);
begin
   FTotalDoacoes := 0;
   qRep_Doacoes.Prepare;
   qRep_Doacoes.Preview;
end;

procedure Tfrl_doacoes.rkGlassButton2Click(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure Tfrl_doacoes.rkGlassButton3Click(Sender: TObject);
var
   query_where : TStringList;
begin
   query_where := TStringList.Create;
   with query_where do begin
      //pesquisa codigo da doacao
      if Trim(edt_codigo_doacao.Text) <> '' then begin
         Add('AND');
         Add('doacoes.ID = ' + edt_codigo_doacao.Text);
      end;

      //nome do doador
      if Trim(edt_doador.Text) <> '' then begin
         Add('AND');
         Add(' doadores.Nome = ' + QuotedStr(edt_doador.Text));
      end;
      //responsavel
      if Trim(edt_responsavel.Text) <> '' then begin
         Add('AND');
         Add('usuarios_sistema.Nome = ' + QuotedStr(edt_doador.Text));
      end;

      //data de doacao
      if (Trim(edt_data_inicial.Text) <> '/  /') and (Trim(edt_data_final.Text) <> '/  /') then begin
         Add('AND');
         Add('doacoes.Data_Doacao between ' + QuotedStr(FormataData(edt_data_inicial.Date)) + ' AND ' + QuotedStr(FormataData(edt_data_final.Date)));
      end;
   end;

   if query_where.Count > 0 then begin
      query_where.Delete(0); // tira primeira linha
      tab_slave.Close;

      with tab_master do begin
         Close;
         SQL.Clear;
         SQL.Add(Query_Master);
         SQL.Add('WHERE');
         SQL.Add(query_where.Text);
         Open;
      end;

      tab_slave.Open;
   end;

   query_where.Free;
end;

procedure Tfrl_doacoes.rkGlassButton4Click(Sender: TObject);
begin
  inherited;
   TrocaQuery(tab_master,Query_Master);
   TrocaQuery(tab_slave,Query_Slave);
end;

procedure Tfrl_doacoes.TitleBand1BeforePrint(Sender: TQRCustomBand;var PrintBand: Boolean);
begin
   FTotalDoacoes := 0;
end;

procedure Tfrl_doacoes.lbl_totalPrint(sender: TObject; var Value: string);
begin
   lbl_total.Caption := 'Total de Doações: ' + IntToStr(FTotalDoacoes);
end;

procedure Tfrl_doacoes.Pesquisa;
begin

end;

procedure Tfrl_doacoes.QRLabel1Print(sender: TObject; var Value: string);
begin
  inherited;
   FTotalDoacoes := 0;
end;

procedure Tfrl_doacoes.QRSubDetail1AfterPrint(Sender: TQRCustomBand;BandPrinted: Boolean);
begin
   Inc(FTotalDoacoes,1);
end;

end.
