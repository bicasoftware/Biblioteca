unit f_form_normal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_base, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, f_funcoes, f_menu, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfrm_form_normal = class(Tfrm_form_base)
    lbl_titulo: TLabel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_form_normal: Tfrm_form_normal;

implementation

{$R *.dfm}


procedure Tfrm_form_normal.FormClose(Sender: TObject; var Action: TCloseAction);
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

end.
