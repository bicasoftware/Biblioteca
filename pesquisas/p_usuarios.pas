unit p_usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  rkGlassButton, Data.DB, ZAbstractRODataset, ZDataset, Vcl.Mask, JvExMask,
  JvToolEdit,ClipBRD, QRCtrls, QuickRpt;

type
  Tfrl_usuarios = class(Tfrm_form_normal)
    Panel1: TPanel;
    Panel2: TPanel;
    JvDBGrid1: TJvDBGrid;
    rkGlassButton1: TrkGlassButton;
    rkGlassButton2: TrkGlassButton;
    tab_master: TZReadOnlyQuery;
    dts_master: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_codigo: TEdit;
    edt_nome: TEdit;
    edt_sobrenome: TEdit;
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
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    Label4: TLabel;
    cbx_sexo: TComboBox;
    cbx_status: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    edt_bairro: TEdit;
    rkGlassButton5: TrkGlassButton;
    Label8: TLabel;
    edt_rua: TEdit;
    Bevel1: TBevel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    procedure FormShow(Sender: TObject);
    procedure rkGlassButton2Click(Sender: TObject);
    procedure rkGlassButton4Click(Sender: TObject);
    procedure rkGlassButton3Click(Sender: TObject);
    procedure rkGlassButton1Click(Sender: TObject);
    procedure lbl_totalPrint(sender: TObject; var Value: string);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure JvDBGrid1Enter(Sender: TObject);
    procedure edt_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codigoChange(Sender: TObject);
    procedure rkGlassButton5Click(Sender: TObject);
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure QRDBText1Print(sender: TObject; var Value: string);
  private
    FTotalUsuarios : Integer;
    procedure Pesquisa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frl_usuarios: Tfrl_usuarios;

const
   Query_Master : String = ''
      +'SELECT '
      +'	  ID, '
      +'	  Concat(Coalesce(Nome,""), " " , Coalesce(SobreNome,"")) AS NomeCompleto, '
      +'	  Concat("Rua: ", Coalesce(Rua,"")," Nº ",Coalesce(Numero_Casa,""), " - " ,Coalesce(Complemento,"")," Bairro: ",Coalesce(Bairro,"")) AS Endereco, '
      +'	  Cidade, '
      +'	  Sexo, '
      +'	  Data_Nascto, '
      +'   IF(Status = 0, "Inativo", "Ativo") AS Status, '
      +'	  Telefone, '
      +'	  EMail '
      +'FROM usuarios ';

implementation

{$R *.dfm}

uses f_menu, f_funcoes;

procedure Tfrl_usuarios.DetailBand1BeforePrint(Sender: TQRCustomBand;var PrintBand: Boolean);
begin
//   FTotalUsuarios := FTotalUsuarios + 1;
end;

procedure Tfrl_usuarios.edt_codigoChange(Sender: TObject);
var
   tab_busca : TZReadOnlyQuery;
begin
   if (trim(edt_codigo.Text) <> '') then begin
      instanciaQuery(tab_busca);
      tab_busca.SQL.Add('SELECT Nome,SobreNome FROM usuarios WHERE ID = ' + trim(edt_codigo.Text));
      tab_busca.Open;

      if tab_busca.RecordCount > 0 then begin
         edt_nome.Text := tab_busca.Fields[0].AsString;
         edt_sobrenome.Text    := tab_busca.Fields[1].AsString;
       end
      else begin
         edt_nome.Text := '';
         edt_sobrenome.Text    := '';
      end;
    end
   else begin
      edt_nome.Text := '';
      edt_sobrenome.Text    := '';
   end;
end;

procedure Tfrl_usuarios.edt_codigoKeyPress(Sender: TObject; var Key: Char);
begin
   ApenasNumeros(edt_codigo,Key);
end;

procedure Tfrl_usuarios.FormShow(Sender: TObject);
begin
   inherited;

   TrocaQuery(tab_master,Query_Master);
end;

procedure Tfrl_usuarios.JvDBGrid1Enter(Sender: TObject);
begin
  inherited;
  tab_master.EnableControls;
end;

procedure Tfrl_usuarios.rkGlassButton1Click(Sender: TObject);
begin
   tab_master.DisableControls;

   FTotalUsuarios := 0;
   qRep_Doacoes.Prepare;
   qRep_Doacoes.Preview;
   tab_master.EnableControls;
end;

procedure Tfrl_usuarios.rkGlassButton2Click(Sender: TObject);
begin
   Close;
end;

procedure Tfrl_usuarios.rkGlassButton3Click(Sender: TObject);
var
   query_where : TStringList;
begin
   query_where := TStringList.Create;

   with query_where do begin
      //pesquisa codigo da doacao
      if Trim(edt_codigo.Text) <> '' then begin
         Add('AND');
         Add('ID = ' + edt_codigo.Text);
      end;

      case cbx_sexo.ItemIndex of
         1: begin
            Add('AND');
            Add('Sexo = "Masculino"');
         end;
         2: begin
            Add('AND');
            Add('Sexo = "Feminino"');
         end;
      end;

      case cbx_status.ItemIndex of
         1: begin
            Add('AND');
            Add('Status = -1');
         end;

         2: begin
            Add('AND');
            Add('Status = 0');
         end;
      end;

      //pesquisa edt_bairro
      if Trim(edt_bairro.Text) <> '' then begin
         Add('AND');
         Add('Bairro Like"%' + edt_bairro.Text +'%"');
      end;

      //pesquisa codigo da doacao
      if Trim(edt_rua.Text) <> '' then begin
         Add('AND');
         Add('Rua Like "%' + edt_rua.Text + '%"');
      end;
   end;

   tab_master.Close;
   tab_master.SQL.Clear;
   tab_master.SQL.Add(Query_Master);

   if query_where.Count > 0 then begin
      query_where.Delete(0);
      tab_master.SQL.Add('WHERE');
      tab_master.SQL.Add(query_where.Text);
   end;
   tab_master.Open;

   query_where.Free;
end;

procedure Tfrl_usuarios.rkGlassButton4Click(Sender: TObject);
begin
   TrocaQuery(tab_master,Query_Master);
end;

procedure Tfrl_usuarios.rkGlassButton5Click(Sender: TObject);
begin
   edt_codigo.Text := BuscaDados('Nome;SobreNome','Nome;Sobre Nome','usuarios','Usuários');
end;

procedure Tfrl_usuarios.TitleBand1BeforePrint(Sender: TQRCustomBand;var PrintBand: Boolean);
begin
   //FTotalUsuarios := 0;
end;

procedure Tfrl_usuarios.lbl_totalPrint(sender: TObject; var Value: string);
begin
   lbl_total.Caption := 'Total de Usuários: ' + IntToStr(FTotalUsuarios);
end;

procedure Tfrl_usuarios.Pesquisa;
begin

end;

procedure Tfrl_usuarios.QRDBText1Print(sender: TObject; var Value: string);
begin
   FTotalUsuarios := FTotalUsuarios + 1;
end;

procedure Tfrl_usuarios.QRLabel1Print(sender: TObject; var Value: string);
begin
   FTotalUsuarios := 0;
end;

end.
