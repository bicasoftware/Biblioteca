unit p_doadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  rkGlassButton, Data.DB, ZAbstractRODataset, ZDataset, Vcl.Mask, JvExMask,
  JvToolEdit,ClipBRD, QRCtrls, QuickRpt;

type
  Tfrl_doadores = class(Tfrm_form_normal)
    Panel1: TPanel;
    Panel2: TPanel;
    JvDBGrid1: TJvDBGrid;
    rkGlassButton1: TrkGlassButton;
    rkGlassButton2: TrkGlassButton;
    tab_master: TZReadOnlyQuery;
    dts_master: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    edt_codigo: TEdit;
    edt_doador: TEdit;
    rkGlassButton3: TrkGlassButton;
    rkGlassButton4: TrkGlassButton;
    qRep_Doadores: TQuickRep;
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
    Panel3: TPanel;
    chk_status: TCheckBox;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    rkGlassButton5: TrkGlassButton;
    edt_rua: TEdit;
    Label3: TLabel;
    edt_bairro: TEdit;
    edt_numero: TEdit;
    Label5: TLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape4: TQRShape;
    tab_busca: TZReadOnlyQuery;
    rdg_ordem: TRadioGroup;
    rdg_status: TRadioGroup;
    QRLabel1: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure rkGlassButton2Click(Sender: TObject);
    procedure rkGlassButton4Click(Sender: TObject);
    procedure rkGlassButton3Click(Sender: TObject);
    procedure rkGlassButton1Click(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure rkGlassButton5Click(Sender: TObject);
    procedure lbl_totalPrint(sender: TObject; var Value: string);
    procedure edt_codigoChange(Sender: TObject);
    procedure edt_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure QRLabel1Print(sender: TObject; var Value: string);
  private
    FTotalDoadores : Integer;
    Valor : String;
  public
    { Public declarations }
  end;

var
  frl_doadores: Tfrl_doadores;

const
   Query_Master : String = ''
      +'SELECT '
      +' ID, '
      +'  Concat(Nome, " " ,SobreNome) AS Doador, '
      +'  If(status = "-1","Ativo","Inativo") AS Status, '
      +'  Concat(Coalesce(Bairro,""),", ", Coalesce(Rua,"")," ", Coalesce(Numero_Casa,"")) AS Endereco  '
      +' FROM doadores' ;

implementation

{$R *.dfm}

uses f_menu, f_funcoes;

procedure Tfrl_doadores.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Inc(FTotalDoadores,1);
end;

procedure Tfrl_doadores.edt_codigoChange(Sender: TObject);
begin
   if trim(edt_codigo.Text) <> '' then begin
      tab_busca.Close;
      tab_busca.SQL.Clear;
      tab_busca.SQL.Add('SELECT Concat(COALESCE(Nome,"")," ",COALESCE(SobreNome,"")) AS Doador FROM doadores WHERE ID = ' + edt_codigo.Text);
      tab_busca.Open;

      if tab_busca.RecordCount > 0 then begin
         edt_doador.Text := tab_busca.Fields[0].AsString;
       end
      else begin
         edt_doador.Text := '';
      end;
    end
   else begin
      edt_doador.Text := '';
   end;
end;

procedure Tfrl_doadores.edt_codigoKeyPress(Sender: TObject; var Key: Char);
begin
   ApenasNumeros(edt_codigo,key);
end;

procedure Tfrl_doadores.FormShow(Sender: TObject);
begin
   inherited;
   TrocaQuery(tab_master,Query_Master);
end;

procedure Tfrl_doadores.lbl_totalPrint(sender: TObject; var Value: string);
begin
   lbl_total.Caption := 'Total de Doadores: ' + IntToStr(FTotalDoadores);
end;

procedure Tfrl_doadores.QRLabel1Print(sender: TObject; var Value: string);
begin
   FTotalDoadores := 0;
end;

procedure Tfrl_doadores.rkGlassButton1Click(Sender: TObject);
begin
   FTotalDoadores := 0;
   qRep_Doadores.Prepare;
   qRep_Doadores.Preview;
end;

procedure Tfrl_doadores.rkGlassButton2Click(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure Tfrl_doadores.rkGlassButton3Click(Sender: TObject);
var
   query_where : TStringList;
  var_ordem: string;
begin
   var_ordem := '';
   query_where := TStringList.Create;

   with query_where do begin
      //pesquisa pelo codigo
      if Trim(edt_codigo.Text) <> '' then begin
         Add('AND');
         Add('ID = ' + edt_codigo.Text);
      end;
      // Bairro
      if Trim(edt_bairro.Text) <> '' then begin
         Add('AND');
         Add('Bairro like "%' + edt_bairro.Text + '%"');
      end;
      // Rua
      if Trim(edt_rua.Text) <> ''then begin
         Add('AND');
         Add('Rua like "%' + edt_rua.Text + '%"');
      end;
      // N da casa
      if Trim(edt_numero.Text) <> '' then begin
         Add('AND');
         Add('Numero_Casa = ' + edt_numero.Text);
      end;

      case rdg_status.ItemIndex of
         1: begin
            Add('AND');
            Add('status = -1');
         end;

         2 : begin
            Add('AND');
            Add('status = 0');
         end;
      end;
   end;

   case rdg_ordem.ItemIndex of
      0: var_ordem := 'ORDER BY ID';
      1: var_ordem := 'ORDER BY Nome';
      2: var_ordem := 'ORDER BY Endereco';
      3: var_ordem := 'ORDER BY Status';
   end;

   with tab_master do begin
      Close;
      SQL.Clear;
      SQL.Add(Query_Master);
      if query_where.Count > 0 then begin
         query_where.Delete(0);
         SQL.Add('WHERE');
         SQL.Add(query_where.Text);
      end;
      SQL.Add(var_ordem);
      Open;
   end;

   query_where.Free;
end;

procedure Tfrl_doadores.rkGlassButton4Click(Sender: TObject);
begin
  inherited;
   TrocaQuery(tab_master,Query_Master);
   edt_codigo.Clear;
   edt_doador.Clear;
   edt_rua.Clear;
   edt_numero.Clear;
   edt_bairro.Clear;
   chk_status.Checked := False;
end;

procedure Tfrl_doadores.rkGlassButton5Click(Sender: TObject);
begin
   edt_codigo.Text := BuscaDados('Nome;SobreNome','Nome;Sobrenome','Doadores','Doadores');
end;

end.
