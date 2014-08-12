unit record_helpers;

interface

uses Classes,System.DateUtils,System.SysUtils;

type
   TRecordHelper = class
   private
      { private declarations }
   protected
      { protected declarations }
   public
      { public declarations }

   published
      { published declarations }
   end;

type
   TStringHelper = record helper for string
      procedure Concat(str : String);
      function ToInt : Integer;
      function ToDate : TDateTime;
      function ToDouble : Double;
      function Quoted : String;

   end;

   TIntHelper = record helper for Integer
      function ToString : String;
   end;

implementation

{ TStringHelper }

procedure TStringHelper.Concat(str: String);
begin
   self := Self + str;
end;

function TStringHelper.Quoted: String;
begin
   Result := '"' + Self + '"';
end;

function TStringHelper.ToDate: TDateTime;
begin
   Result := StrToDate(Self);
end;

function TStringHelper.ToDouble: Double;
begin
   Result := StrToFloat(self);
end;

function TStringHelper.ToInt: Integer;
begin
   Result := StrToInt(self);
end;

{ TIntHelper }

function TIntHelper.ToString: String;
begin
   Result := IntToStr(Self);
end;

end.
