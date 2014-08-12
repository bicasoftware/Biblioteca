unit f_form_base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_form_base = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_form_base: Tfrm_form_base;

implementation

{$R *.dfm}

procedure Tfrm_form_base.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   self := nil;
end;

procedure Tfrm_form_base.FormCreate(Sender: TObject);
begin
   FormStyle := fsMDIChild;
end;

procedure Tfrm_form_base.FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
   if key = VK_ESCAPE then Close;
end;

end.
