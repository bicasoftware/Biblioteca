unit f_cadastro_base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Buttons, Vcl.ImgList, rkGlassButton, StrUtils,
  Vcl.ComCtrls, Vcl.Menus, JvExDBGrids, JvDBGrid, f_form_base;

type
  Tfrm_form_cadastro_base = class(Tfrm_form_base)
    tab_principal: TZQuery;
    dts_master: TDataSource;
    Image1: TImage;
    lbl_titulo: TLabel;
    Panel1: TPanel;
    btn_salvar: TrkGlassButton;
    btn_alterar: TrkGlassButton;
    btn_apagar: TrkGlassButton;
    btn_sair: TrkGlassButton;
    Panel2: TPanel;
    btn_busca: TrkGlassButton;
    rkGlassButton1: TrkGlassButton;
    pop_opcoes: TPopupMenu;
    DBGrid1: TDBGrid;
    ClonarRegistro1: TMenuItem;
    procedure SpeedButton6Click(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure dts_masterDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure ClonarRegistro1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Clonando : Boolean;

    procedure ClonarRegistro(Dataset: TZQuery);
    { Private declarations }
  public
    procedure Localiza;

    procedure Novo            ; virtual;
    procedure Salvar          ; virtual;
    procedure Alterar         ; virtual;
    procedure AposSalvar      ; virtual;
    procedure aoMudarRegistro ; virtual;
    procedure aoCancelar      ; virtual;

  end;

var
  frm_form_cadastro_base: Tfrm_form_cadastro_base;
Const
   Caption_Salvar   : Array[0..1] of String = ('Novo','Salvar');
   Caption_Alterar  : Array[0..1] of String = ('Alterar','Salvar');
   Caption_Cancelar : Array[0..1] of String = ('Cancelar','Apagar');

implementation

uses f_menu, f_funcoes;

{$R *.dfm}

procedure Tfrm_form_cadastro_base.Alterar;
begin
  inherited;

end;

procedure Tfrm_form_cadastro_base.aoCancelar;
begin
  inherited;

end;

procedure Tfrm_form_cadastro_base.aoMudarRegistro;
begin
  inherited;

end;

procedure Tfrm_form_cadastro_base.AposSalvar;
begin
  inherited;

end;

procedure Tfrm_form_cadastro_base.btn_alterarClick(Sender: TObject);
begin
    if tab_principal.RecordCount > 0 then begin
       case AnsiIndexText(btn_alterar.Caption,Caption_Alterar) of
         //Alterar
         0 : begin
            btn_salvar.Enabled := False;
            btn_alterar.Caption := 'Salvar';
            btn_apagar.Caption := 'Cancelar';
            btn_sair.Enabled := False;
            dbgrid1.Enabled := False;

            tab_principal.Edit;
         end;
         //salvar
         1: begin
            //metodo abstrato, deve ser implementado apenas na classe filho
            Salvar;
            btn_salvar.Enabled := True;
            btn_alterar.Caption := 'Alterar';
            btn_apagar.Caption := 'Apagar';
            btn_sair.Enabled := True;
            dbgrid1.Enabled := True;

            tab_principal.Post;
            AposSalvar;
            tab_principal.Refresh;
         end;
       end;
    end;
end;

procedure Tfrm_form_cadastro_base.btn_apagarClick(Sender: TObject);
begin
   case AnsiIndexText(btn_apagar.Caption,Caption_Cancelar) of
      //Cancelar
      0: begin
         tab_principal.Cancel;
         tab_principal.CancelUpdates;

         btn_salvar.Enabled := True;
         btn_salvar.Caption := 'Novo';
         btn_alterar.Enabled := True;
         btn_alterar.Caption := 'Alterar';
         btn_sair.Enabled := True;
         dbgrid1.Enabled := True;
         aoCancelar;
         Clonando := False;
      end;
      //apagar
      1: begin
         if tab_principal.RecordCount > 0 then begin
            if Application.MessageBox('Deseja Apagar o Registro ?','Aviso',MB_YESNO) = mrYes then begin
               tab_principal.Delete;
            end;
         end;
      end;
   end;
end;

procedure Tfrm_form_cadastro_base.btn_sairClick(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_form_cadastro_base.btn_salvarClick(Sender: TObject);
begin
    case AnsiIndexText(btn_salvar.Caption,Caption_Salvar) of
      //novo
      0 : begin
         btn_salvar.Caption := 'Salvar';
         btn_alterar.Enabled := False;
         btn_apagar.Caption := 'Cancelar';
         btn_sair.Enabled := False;
         dbgrid1.Enabled := False;

         if Clonando = False then begin
            Novo;
            tab_principal.Append;
          end
         else ClonarRegistro(tab_principal);
      end;
      //salvar
      1: begin
         Salvar;
         btn_salvar.Caption := 'Novo';
         btn_alterar.Enabled := True;
         btn_apagar.Caption := 'Apagar';
         btn_sair.Enabled := True;
         dbgrid1.Enabled := True;

         tab_principal.Post;
         AposSalvar;
         tab_principal.Refresh;
         tab_principal.Last;

         Clonando := False;
      end;
    end;
end;

procedure Tfrm_form_cadastro_base.dts_masterDataChange(Sender: TObject;Field: TField);
begin
   inherited;
   if not (tab_principal.State in [dsInsert,dsEdit]) then begin
      aoMudarRegistro;
   end;
end;

procedure Tfrm_form_cadastro_base.FormClose(Sender: TObject;var Action: TCloseAction);
var
  I: Integer;
begin
   for I := 0 to self.ComponentCount -1 do begin
      //fecha zquery
      if (Components[i] is TZQuery)  then begin
         (Components[i] as TZQuery).Close;
      end;
      //fecha zreadonlyquery
      if Components[i] is TZReadOnlyQuery then begin
         (Components[i] as TZReadOnlyQuery).Close;
      end;
   end;

   inherited;
end;

procedure Tfrm_form_cadastro_base.FormShow(Sender: TObject);
begin
  inherited;
   Clonando := False;
end;

procedure Tfrm_form_cadastro_base.Localiza;
begin
   tab_principal.Locate('ID',frm_menu.pub_string_busca,[]);
end;

procedure Tfrm_form_cadastro_base.Novo;
begin
  inherited;

end;

procedure Tfrm_form_cadastro_base.Salvar;
begin
  inherited;

end;

procedure Tfrm_form_cadastro_base.SpeedButton6Click(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_form_cadastro_base.ClonarRegistro(Dataset: TZQuery);
var
  Campos : Variant;
  i      : Integer;
begin
  // Create a variant Array
   Campos := VarArrayCreate([0,DataSet.Fieldcount-1],VarVariant);

  // read values into the array
  for i := 0 to (DataSet.Fieldcount-1) do begin
     Campos[i] := DataSet.fields[i].Value;
  end;

  DataSet.Append ;

  // Put array values into new the record
  for i := 0 to (DataSet.Fieldcount-1) do begin
     DataSet.fields[i].Value := Campos[i];
  end;

  Dataset.FieldByName('ID').Value := Null;
  Clonando := True;
end;

procedure Tfrm_form_cadastro_base.ClonarRegistro1Click(Sender: TObject);
begin
  inherited;
   Clonando := True;
   btn_salvarClick(Sender);
end;

end.
