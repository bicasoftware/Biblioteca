unit p_locacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  rkGlassButton, Data.DB, ZAbstractRODataset, ZDataset, Vcl.Mask, JvExMask,
  JvToolEdit,ClipBRD, QuickRpt, QRCtrls;

type
  Tfrl_locacoes = class(Tfrm_form_normal)
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
    rkGlassButton3: TrkGlassButton;
    rkGlassButton4: TrkGlassButton;
    rdg_status: TRadioGroup;
    Panel4: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_titulo: TEdit;
    edt_data_inicial: TJvDateEdit;
    edt_data_final: TJvDateEdit;
    rdg_ordem: TRadioGroup;
    Panel5: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    edt_codigo_usuario: TEdit;
    edt_nome_usuario: TEdit;
    rkGlassButton5: TrkGlassButton;
    edt_sobrenome: TEdit;
    Label7: TLabel;
    Label3: TLabel;
    edt_cod_livro: TEdit;
    Label8: TLabel;
    edt_referencia: TEdit;
    qRep_Doacoes: TQuickRep;
    SummaryBand1: TQRBand;
    lbl_total: TQRLabel;
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    lbl_titulo_relatorio: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRShape2: TQRShape;
    procedure FormShow(Sender: TObject);
    procedure rkGlassButton2Click(Sender: TObject);
    procedure rkGlassButton4Click(Sender: TObject);
    procedure rkGlassButton3Click(Sender: TObject);
    procedure edt_codigo_usuarioChange(Sender: TObject);
    procedure rkGlassButton5Click(Sender: TObject);
    procedure edt_codigo_usuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cod_livroKeyPress(Sender: TObject; var Key: Char);
    procedure rkGlassButton1Click(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure lbl_totalPrint(sender: TObject; var Value: string);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    TotalLocacoes : Integer;
    procedure Pesquisa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frl_locacoes: Tfrl_locacoes;

const
   Query_Master : String = ''
      +'SELECT '
      +'	  locacao_livros.ID, '
      +'	  locacao_livros.ID_Usuario, '
      +'	  Concat(Coalesce(usuarios.Nome,""),  " " ,Coalesce(usuarios.SobreNome,"")) AS Nome, '
      +'   usuarios_sistema.Nome AS nome_funcionario, '
      +'	  locacao_livros.Data_Locacao, '
      +'	  IF(locacao_livros.Status = 0, "Em Aberto","Finalizado")AS Status '
      +'FROM locacao_livros  '
      +'   JOIN usuarios ON locacao_livros.ID_Usuario = usuarios.ID '
      +'   LEFT JOIN usuarios_sistema ON locacao_livros.ID_funcionario = usuarios_sistema.ID ';

   Query_Slave : string = ''
      +'SELECT '
      +'   locacao_livros_items.ID_Locacao, '
      +'   livros.referencia, '
      +'   livros.Titulo, '
      +'   locacao_livros_items.Data_Devolucao, '
      +'   locacao_livros_items.Devolvido_Em, '
      +'   locacao_livros_items.Numero_Renovacoes '
      +'FROM locacao_livros_items  '
      +'	JOIN livros ON locacao_livros_items.ID_Livro = livros.ID';

implementation

{$R *.dfm}

uses f_menu, f_funcoes;

procedure Tfrl_locacoes.DetailBand1BeforePrint(Sender: TQRCustomBand;var PrintBand: Boolean);
begin
   TotalLocacoes := TotalLocacoes  + 1;
end;

procedure Tfrl_locacoes.edt_codigo_usuarioChange(Sender: TObject);
var
   tab_busca : TZReadOnlyQuery;
begin
   if (trim(edt_codigo_usuario.Text) <> '') then begin
      instanciaQuery(tab_busca);
      tab_busca.SQL.Add('SELECT Nome,SobreNome FROM usuarios WHERE ID = ' + trim(edt_codigo_usuario.Text));
      tab_busca.Open;

      if tab_busca.RecordCount > 0 then begin
         edt_nome_usuario.Text := tab_busca.Fields[0].AsString;
         edt_sobrenome.Text    := tab_busca.Fields[1].AsString;
       end
      else begin
         edt_nome_usuario.Text := '';
         edt_sobrenome.Text    := '';
      end;
    end
   else begin
      edt_nome_usuario.Text := '';
      edt_sobrenome.Text    := '';
   end;
end;

procedure Tfrl_locacoes.edt_codigo_usuarioKeyPress(Sender: TObject;var Key: Char);
begin
   ApenasNumeros(edt_codigo_usuario,Key);
end;

procedure Tfrl_locacoes.edt_cod_livroKeyPress(Sender: TObject; var Key: Char);
begin
   ApenasNumeros(edt_codigo_usuario,Key);
end;

procedure Tfrl_locacoes.FormShow(Sender: TObject);
begin
   inherited;

   TrocaQuery(tab_master,Query_Master);
   TrocaQuery(tab_slave,Query_Slave);
end;

procedure Tfrl_locacoes.lbl_totalPrint(sender: TObject; var Value: string);
begin
   lbl_total.Caption := 'Total de Locações: ' + IntToStr(TotalLocacoes);
end;

procedure Tfrl_locacoes.rkGlassButton1Click(Sender: TObject);
begin
   TotalLocacoes := 0;

   qRep_Doacoes.Prepare;
   qRep_Doacoes.Preview;
end;

procedure Tfrl_locacoes.rkGlassButton2Click(Sender: TObject);
begin
  inherited;
   Close;
end;

procedure Tfrl_locacoes.rkGlassButton3Click(Sender: TObject);
var
   where_master,where_slave : TStringList;
   var_ordem: string;
begin
   where_master := TStringList.Create;
   where_slave := TStringList.Create;

   //where master
   if trim(edt_codigo_usuario.Text)  <> '' then begin
      where_master.Add('AND');
      where_master.Add('locacao_livros.ID_Usuario = ' + Trim(edt_codigo_usuario.Text));
   end;

   if (Trim(edt_data_inicial.Text)  <> '/  /') and (Trim(edt_data_final.Text)  <> '/  /') then begin
      where_master.Add('AND');
      where_master.Add('Data_Locacao BETWEEN' + BetweenDateSQL(edt_data_inicial.Date,edt_data_final.Date));
   end;

   //where slave
   if trim(edt_cod_livro.Text)  <> '' then begin
      where_slave.Add('AND');
      where_slave.Add('locacao_livros_items.id_livro = ' + Trim(edt_cod_livro.Text));
   end;

   if trim(edt_referencia.Text)  <> '' then begin
      where_slave.Add('AND');
      where_slave.Add('livros.referencia = ' + QuotedStr(Trim(edt_referencia.Text)));

   end;
   if trim(edt_titulo.Text)  <> '' then begin
      where_slave.Add('AND');
      where_slave.Add('livros.Titulo Like' + LikeSQL(edt_titulo.Text));
   end;

   //vencidos atrasados abertos
   case rdg_status.ItemIndex of
      1 : begin
         where_slave.Add('AND');
         where_slave.Add('Data_Devolucao >= NOW() AND Devolvido_Em IS NULL');
      end;
      2: begin
         where_slave.Add('AND');
         where_slave.Add('Devolvido_Em IS NOT  NULL');
      end;
      3: begin
         where_slave.Add('AND');
         where_slave.Add('Data_Devolucao < NOW() AND Devolvido_Em IS NULL');
      end;
   end;

   //ordem
   case rdg_ordem.ItemIndex of
      0 : begin
         var_ordem := 'ORDER BY Nome';
      end;
      2 : begin
         var_ordem := 'ORDER BY nome_funcionario';
      end;
      3 : begin
         var_ordem := 'ORDER BY Data_Locacao';
      end;
   end;
   //prepara query master
   with tab_master do begin
      Close;
      SQL.Clear;
      SQL.Add(Query_Master);

      if where_master.Count > 0 then begin
         where_master.Delete(0);
         SQL.Add(' where ' + where_master.Text);
      end;
      if var_ordem <> '' then sql.Add(var_ordem);
      Open;
   end;
   //prepara query master
   with tab_slave do begin
      Close;
      SQL.Clear;
      SQL.Add(Query_Slave);

      if where_slave.Count > 0 then begin
         where_slave.Delete(0);
         SQL.Add(' where ' + where_slave.Text);
      end;
      Open;
   end;

   where_master.Free;
   where_slave.Free;
end;

procedure Tfrl_locacoes.rkGlassButton4Click(Sender: TObject);
begin
  inherited;
   TrocaQuery(tab_master,Query_Master);
   TrocaQuery(tab_slave,Query_Slave);
end;

procedure Tfrl_locacoes.rkGlassButton5Click(Sender: TObject);
begin
   edt_codigo_usuario.Text := BuscaDados('Nome;SobreNome','Nome;Sobre Nome','usuarios','Usuários');
end;

procedure Tfrl_locacoes.TitleBand1BeforePrint(Sender: TQRCustomBand;var PrintBand: Boolean);
begin
   TotalLocacoes := 0;
end;

procedure Tfrl_locacoes.Pesquisa;
begin

end;

end.
