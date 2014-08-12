unit f_doacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_doacoes = class(Tfrm_form_normal)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_doacoes: Tfrm_doacoes;

implementation

{$R *.dfm}

uses f_form_busca_base, f_funcoes, f_menu;

end.
