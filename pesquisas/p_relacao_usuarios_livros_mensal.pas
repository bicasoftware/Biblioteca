unit p_relacao_usuarios_livros_mensal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  rkGlassButton, Data.DB, ZAbstractRODataset, ZDataset, Vcl.Mask, JvExMask,
  JvToolEdit,ClipBRD, QRCtrls, QuickRpt, Datasnap.DBClient,DateUtils;

type
  Tfrl_relacao_mensal_usuarios_livros = class(Tfrm_form_normal)
    Panel1: TPanel;
    Panel2: TPanel;
    JvDBGrid1: TJvDBGrid;
    rkGlassButton1: TrkGlassButton;
    rkGlassButton2: TrkGlassButton;
    tab_master: TZReadOnlyQuery;
    dts_master: TDataSource;
    rkGlassButton3: TrkGlassButton;
    rkGlassButton4: TrkGlassButton;
    qRep_Doacoes: TQuickRep;
    SummaryBand1: TQRBand;
    lbl_total: TQRLabel;
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    lbl_titulo_relatorio: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    gbx_meses: TGroupBox;
    cbx_janeiro: TCheckBox;
    cbx_fevereiro: TCheckBox;
    cbx_marco: TCheckBox;
    cbx_abril: TCheckBox;
    cbx_maio: TCheckBox;
    cbx_junho: TCheckBox;
    cbx_julho: TCheckBox;
    cbx_agosto: TCheckBox;
    cbx_setembro: TCheckBox;
    cbx_outubro: TCheckBox;
    cbx_novembro: TCheckBox;
    cbx_dezembro: TCheckBox;
    rdg_status: TRadioGroup;
    rdg_ordem: TRadioGroup;
    cds_mes: TClientDataSet;
    dts_mes: TDataSource;
    cds_mesidMes: TIntegerField;
    cds_mesMes: TStringField;
    Panel3: TPanel;
    JvDBGrid2: TJvDBGrid;
    Panel4: TPanel;
    JvDBGrid3: TJvDBGrid;
    tab_slave: TZReadOnlyQuery;
    dts_slave: TDataSource;
    QRLabel2: TQRLabel;
    QRShape5: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel13: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    procedure FormShow(Sender: TObject);
    procedure rkGlassButton2Click(Sender: TObject);
    procedure rkGlassButton4Click(Sender: TObject);
    procedure rkGlassButton1Click(Sender: TObject);
    procedure lbl_totalPrint(sender: TObject; var Value: string);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure JvDBGrid1Enter(Sender: TObject);
    procedure rkGlassButton3Click(Sender: TObject);
    procedure QRDBText5Print(sender: TObject; var Value: string);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel1Print(sender: TObject; var Value: string);
  private
    FTotal_Usuarios : Integer;
    FTotal_Livros: Integer;
    procedure PegaMeses;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frl_relacao_mensal_usuarios_livros: Tfrl_relacao_mensal_usuarios_livros;

const
   Query_Master : String = ''
      +'SELECT '
      +'locacao_livros.ID, '
      +'	ID_Usuario, '
      +'	usuarios.Nome, '
      +'	ID_Funcionario, '
      +'	Data_Locacao, '
      +'	Month(locacao_livros.Data_Locacao) AS Mes, '
      +'	locacao_livros.Status '
      +'FROM locacao_livros '
      +'	JOIN usuarios ON locacao_livros.ID_Usuario = usuarios.id ';

   Query_salve : String = ''
      +'SELECT '
      +'	livros.ID, '
      +'	livros.referencia, '
      +'	livros.Titulo, '
      +'	locacao_livros_items.ID_Locacao, '
      +'	locacao_livros_items.ID_Livro, '
      +'	locacao_livros_items.Data_Devolucao, '
      +'	locacao_livros_items.Devolvido_Em, '
      +'	locacao_livros_items.Numero_Renovacoes '
      +'FROM locacao_livros_items '
      +'   JOIN livros ON locacao_livros_items.ID_Livro = livros.ID ';


implementation

{$R *.dfm}

uses f_menu, f_funcoes;

procedure Tfrl_relacao_mensal_usuarios_livros.DetailBand1BeforePrint(Sender: TQRCustomBand;var PrintBand: Boolean);
begin
   FTotal_Usuarios := FTotal_Usuarios + 1;
end;

procedure Tfrl_relacao_mensal_usuarios_livros.FormShow(Sender: TObject);
begin
   inherited;

   cds_mes.CreateDataSet;
   case MonthOf(Now()) of
      1  : cbx_janeiro.Checked := True;
      2  : cbx_fevereiro.Checked := True;
      3  : cbx_marco.Checked := True;
      4  : cbx_abril.Checked := True;
      5  : cbx_maio.Checked := True;
      6  : cbx_junho.Checked := True;
      7  : cbx_julho.Checked := True;
      8  : cbx_agosto.Checked := True;
      9  : cbx_setembro.Checked := True;
      10  : cbx_outubro.Checked := True;
      11 : cbx_novembro.Checked := True;
      12 : cbx_dezembro.Checked := True;
   end;
   PegaMeses;

   TrocaQuery(tab_master,Query_Master);
   TrocaQuery(tab_slave,Query_salve);
end;

procedure Tfrl_relacao_mensal_usuarios_livros.JvDBGrid1Enter(Sender: TObject);
begin
  inherited;
  tab_master.EnableControls;
end;

procedure Tfrl_relacao_mensal_usuarios_livros.rkGlassButton1Click(Sender: TObject);
begin
   FTotal_Usuarios := 0;
   FTotal_Livros := 0;

   qRep_Doacoes.Prepare;
   qRep_Doacoes.Preview;
end;

procedure Tfrl_relacao_mensal_usuarios_livros.rkGlassButton2Click(Sender: TObject);
begin
   Close;
end;

procedure Tfrl_relacao_mensal_usuarios_livros.rkGlassButton3Click(Sender: TObject);
begin
   tab_slave.Close;

   tab_master.Close;
   tab_master.SQL.Clear;
   tab_master.SQL.Add(Query_Master);

   case rdg_status.ItemIndex of
      1: begin
         tab_master.SQL.Add('WHERE');
         tab_master.SQL.Add('locacao_livros.Status = 0');
         tab_master.SQL.Add('AND');
         tab_master.SQL.Add('Data_Finalizacao IS NULL');
      end;
      2 : begin
         tab_master.SQL.Add('WHERE');
         tab_master.SQL.Add('locacao_livros.Status = 0');
         tab_master.SQL.Add('AND');
         tab_master.SQL.Add('Data_Finalizacao <= now()');
      end;
      3 : begin
         tab_master.SQL.Add('WHERE');
         tab_master.SQL.Add('locacao_livros.Status = -1');
         tab_master.SQL.Add('AND');
         tab_master.SQL.Add('Data_Finalizacao IS NOT NULL');
      end;
   end;

   tab_master.Open;
   tab_slave.Open;

   PegaMeses;
end;

procedure Tfrl_relacao_mensal_usuarios_livros.rkGlassButton4Click(Sender: TObject);
begin
   TrocaQuery(tab_master,Query_Master);
end;

procedure Tfrl_relacao_mensal_usuarios_livros.TitleBand1BeforePrint(Sender: TQRCustomBand;var PrintBand: Boolean);
begin
   FTotal_Usuarios := 0;
end;

procedure Tfrl_relacao_mensal_usuarios_livros.lbl_totalPrint(sender: TObject; var Value: string);
begin
   lbl_total.Caption := 'Total de locaçôes: ' + IntToStr(FTotal_Usuarios) + ' - Total de livros: ' + IntToStr(FTotal_Livros);
end;

procedure Tfrl_relacao_mensal_usuarios_livros.PegaMeses;
begin
   cds_mes.EmptyDataSet;

   if cbx_janeiro.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '1';
      cds_mesMes.AsString := cbx_janeiro.Caption;
      cds_mes.post;
   end;
   if cbx_fevereiro.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '2';
      cds_mesMes.AsString := cbx_fevereiro.Caption;
      cds_mes.post;
   end;
   if cbx_marco.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '3';
      cds_mesMes.AsString := cbx_marco.Caption;
      cds_mes.post;
   end;
   if cbx_abril.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '4';
      cds_mesMes.AsString := cbx_abril.Caption;
      cds_mes.post;
   end;
   if cbx_maio.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '5';
      cds_mesMes.AsString := cbx_maio.Caption;
      cds_mes.post;
   end;
   if cbx_junho.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '6';
      cds_mesMes.AsString := cbx_junho.Caption;
      cds_mes.post;
   end;
   if cbx_julho.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '7';
      cds_mesMes.AsString := cbx_julho.Caption;
      cds_mes.post;
   end;
   if cbx_agosto.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '8';
      cds_mesMes.AsString := cbx_agosto.Caption;
      cds_mes.post;
   end;
   if cbx_setembro.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '9';
      cds_mesMes.AsString := cbx_setembro.Caption;
      cds_mes.post;
   end;
   if cbx_outubro.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '10';
      cds_mesMes.AsString := cbx_outubro.Caption;
      cds_mes.post;
   end;
   if cbx_novembro.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '11';
      cds_mesMes.AsString := cbx_novembro.Caption;
      cds_mes.post;
   end;
   if cbx_dezembro.Checked then begin
      cds_mes.Append;
      cds_mesidMes.AsString := '12';
      cds_mesMes.AsString := cbx_dezembro.Caption;
      cds_mes.post;
   end;

end;


procedure Tfrl_relacao_mensal_usuarios_livros.QRDBText5Print(sender: TObject;var Value: string);
begin
  FTotal_Livros := FTotal_Livros + 1;
end;

procedure Tfrl_relacao_mensal_usuarios_livros.QRLabel1Print(sender: TObject;var Value: string);
begin
   FTotal_Livros := 0;
   FTotal_Usuarios := 0;
end;

procedure Tfrl_relacao_mensal_usuarios_livros.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  FTotal_Usuarios := FTotal_Usuarios + 1;
end;

procedure Tfrl_relacao_mensal_usuarios_livros.QRSubDetail2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   inherited;
   FTotal_Livros   := FTotal_Livros + 1;
end;

end.
