unit class_helpers;

interface

uses
   Classes,Data.DB,ZAbstractRODataset, ZAbstractDataset, ZDataset,
   Vcl.DBCtrls,Datasnap.DBClient,
   Vcl.StdCtrls,System.SysUtils, StrUtils;

type
   TClassHelper = class
   private
      { private declarations }
   protected
      { protected declarations }
   public

   published
      { published declarations }
   end;

   //TZQuery
   TZeosHelper = class helper for TZQuery
      procedure TrocaQuery(qry : String);
      procedure RodaQuery(qry : String);
   end;
   //TZreadonly
   TZReadOnly = class helper for TZReadOnlyQuery
      procedure TrocaQuery(qry : String);
      procedure RodaQuery(qry : String);
   end;
   //tDBLookup
   TDbLookupComboxHelper = class helper for TDBLookupComboBox
      procedure PreencheSubCadastro(FTipo_Cadastro,FDataField : String);
   end;
   //TClientDataSet
   TClientDataSetHelper = class helper for TClientDataSet
      procedure ClonaDataSet(Componente : TZQuery);
   end;
   //TEdit
   TEditHelper = class helper for TEdit
     function GetInteger : integer;
     function GetDouble  : Double;
     function GetTrimmedText : String;
     function QuotedStr : string;
  private
    procedure AplicaMascara(Mask: String);
    procedure RemoveMascara(Mask: String);
   end;



implementation

{ TZeosHelper }

uses f_menu;

procedure TZeosHelper.RodaQuery(qry: String);
begin
   Self.Close;
   Self.SQL.Clear;
   Self.SQL.Add(qry);
   Self.ExecSQL;
end;

procedure TZeosHelper.TrocaQuery(qry : String);
begin
   self.Close;
   self.SQL.Clear;
   Self.SQL.Add(qry);
   Self.Open;
end;

{ TDbLookupComboxHelper }

procedure TDbLookupComboxHelper.PreencheSubCadastro(FTipo_Cadastro, FDataField : String);
var
   Tab_combo : TZReadOnlyQuery;
   dts_combo : TDataSource;
begin
   //tabela
   Tab_combo := TZReadOnlyQuery.Create(Self.Parent);
   Tab_combo.Connection := frm_menu.zconn;
   Tab_combo.SQL.Add('SELECT * FROM subcadastro WHERE Tipo_Cadastro = ' + FTipo_Cadastro);
   Tab_combo.Open;

   //datasource
   dts_combo          := TDataSource.Create(Self.Parent);
   dts_combo.AutoEdit := false;
   dts_combo.DataSet  := Tab_combo;

   with Self do begin
      ListSource := dts_combo;
      ListField  := 'Descricao';
      DataField  := FDataField;
      KeyField   := 'ID';
   end;
end;

{ TZReadOnly }

procedure TZReadOnly.RodaQuery(qry: String);
begin
   Self.Close;
   Self.SQL.Clear;
   Self.SQL.Add(qry);
   Self.ExecSQL;
end;

procedure TZReadOnly.TrocaQuery(qry: String);
begin
   self.Close;
   self.SQL.Clear;
   Self.SQL.Add(qry);
   Self.Open;
end;

{ TClientDataSetHelper }

procedure TClientDataSetHelper.ClonaDataSet(Componente: TZQuery);
var
   I: Integer;
begin
   for I := 0 to Componente.FieldCount - 1 do begin
      self.FieldDefs.Add(Componente.Fields[i].FieldName, Componente.Fields[i].DataType,Componente.Fields[i].Size);
   end;

   self.CreateDataSet;
end;

{ TEditHelper }

procedure TEditHelper.AplicaMascara(Mask : String);
var
  I,br,Total: Integer;
  Valor : String;
begin
   Valor := ReplaceStr(ReplaceStr(Self.Text, '.',''), ' ' + Mask,'');
   Total := Length(Valor);
   br := 1;

   for I := Total downto 1 do begin
      if br <> Total then begin
         if (br = 3) or (br = 6) then begin
            Insert('.',Valor,i);
         end;
         br := br + 1;
      end;
   end;
   if Length(Valor) <= 3 then begin
      Valor := '0.' + FormatFloat('000',StrToInt(Valor));
   end;

   Self.Text := Valor + ' ' + Mask;
end;

function TEditHelper.GetDouble: Double;
begin
   Result := StrToFloat(Self.Text);
end;

function TEditHelper.GetInteger: integer;
begin
   Result := StrToInt(Self.Text);
end;

function TEditHelper.GetTrimmedText: String;
begin
   Result := Trim(Self.Text);
end;

function TEditHelper.QuotedStr: string;
begin
   Result := '"' + Self.Text + '"';
end;

procedure TEditHelper.RemoveMascara(Mask : String);
var
   I,Quebra : integer;
   aux : String;
begin
   //remover zeros
   aux := ReplaceStr(ReplaceStr(Self.Text , '.',''), ' ' + Mask,'');
   for I := 1 to Length(aux) do begin
      if aux[i] = '0' then begin
         Quebra := i;
         Continue;
       end
      else
         break;
   end;
   Delete(aux,1,Quebra);
   Self.Text := aux;
end;

end.
