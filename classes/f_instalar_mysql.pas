unit f_instalar_mysql;

interface

uses System,windows,classes,SysUtils,StrUtils;

Type TInstalador = Class
   private
      procedure LoadResourceFile(aFile:string; ms:TMemoryStream);

      { private declarations }
   public
      Function Descompactar : Boolean;

      constructor Create;
      Destructor Destroy;
   end;

implementation

{$R recursos.res}

{ TInstalador }

constructor TInstalador.Create;
begin

end;

function TInstalador.Descompactar: Boolean;
begin

end;

destructor TInstalador.Destroy;
begin

end;

procedure TInstalador.LoadResourceFile(aFile:string; ms:TMemoryStream);
var
   HResInfo: HRSRC;
   HGlobal: THandle;
   Buffer, GoodType : pchar;
   I: integer;
   Ext:string;
begin
  ext := uppercase(extractfileext(aFile));
  ext := copy(ext,2,length(ext));
  if ext='HTM' then ext:='HTML';
  Goodtype := pchar(ext);
  aFile:=changefileext(afile,'');
  HResInfo := FindResource(HInstance, pchar(aFile), GoodType);
  HGlobal := LoadResource(HInstance, HResInfo);
  if HGlobal = 0 then raise
     EResNotFound.Create('Can''t load resource: '+aFile);

  Buffer := LockResource(HGlobal);
  ms.clear;
  ms.WriteBuffer(Buffer[0], SizeOfResource(HInstance, HResInfo));
  ms.Seek(0,0);
  UnlockResource(HGlobal);
  FreeResource(HGlobal);
end;

end.
