unit r_relatorio_base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, rkGlassButton,
  Vcl.ExtCtrls, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, QRCtrls, Vcl.AppEvnts,f_form_base, f_menu,
  QuickRpt;

type
  Tfqr_relatorio_base = class(Tfrm_form_base)
    QuickRep1: TQuickRep;
    btn_visualizar: TrkGlassButton;
    btn_imprimir: TrkGlassButton;
    btn_close: TrkGlassButton;
    tab_master: TZQuery;
    dts_master: TDataSource;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    lbl_titulo_relatorio: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    v: TQRShape;
    lbl_total: TQRLabel;
    QRShape1: TQRShape;
    QRDBText3: TQRDBText;
    tab_empresa: TZQuery;
    dts_empresa: TDataSource;
    Panel1: TPanel;
    ApplicationEvents1: TApplicationEvents;
    procedure FormShow(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure QuickRep1AfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fqr_relatorio_base: Tfqr_relatorio_base;

implementation

{$R *.dfm}

procedure Tfqr_relatorio_base.FormShow(Sender: TObject);
begin
   inherited;

   tab_empresa.SQL.Add('SELECT Concat(Endereco, " - Fone: ", telefone) AS Campo FROM empresa');
   tab_empresa.Open;
end;

procedure Tfqr_relatorio_base.QuickRep1AfterPreview(Sender: TObject);
begin
   inherited;
   QuickRep1.SetFocus;
end;

procedure Tfqr_relatorio_base.btn_closeClick(Sender: TObject);
begin
   Close;
end;

end.
