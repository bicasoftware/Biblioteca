unit f_backup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, f_form_normal, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls,ShellApi, Vcl.Buttons, Vcl.ComCtrls,
  rkGlassButton,FileCtrl,StrUtils, registry,ClipBrd;

type
  Tfrm_backup = class(Tfrm_form_normal)
    OpenDialog1: TOpenDialog;
    gbx_Gerar: TGroupBox;
    gbx_restaurar: TGroupBox;
    btn_select_dir: TBitBtn;
    btn_gerar_backup: TBitBtn;
    edt_diretorio_gerar: TEdit;
    lbl_2: TLabel;
    lbl_1: TLabel;
    edt_diretorio_restaurar: TEdit;
    BitBtn1: TBitBtn;
    btn_restaurar: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edt_dir_mysql: TEdit;
    procedure btn_selecionar_pastaClick(Sender: TObject);
    procedure btn_gerar_backupClick(Sender: TObject);
    procedure btn_selecionar_arquivoClick(Sender: TObject);
    procedure btn_iniciar_restauracaoClick(Sender: TObject);
    procedure btn_select_dirClick(Sender: TObject);
    procedure btn_make_backupClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_restaurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Diretorio_Mysql : String;
    function FormataDataHora: String;
    function getMysqlDirViaRegistry: String;
    function teste: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_backup: Tfrm_backup;

implementation

{$R *.dfm}

uses f_menu, DSiWin32;

procedure Tfrm_backup.BitBtn1Click(Sender: TObject);
begin
   if not OpenDialog1.Execute then exit;
   edt_diretorio_restaurar.Text := OpenDialog1.FileName;
end;

procedure Tfrm_backup.btn_restaurarClick(Sender: TObject);
var
   Dir : String;
   DirRestaurar : String;
begin
   try
      if RightStr(edt_diretorio_restaurar.Text,1) = '\' then begin
         DirRestaurar := LeftStr(edt_diretorio_restaurar.Text,Length(edt_diretorio_restaurar.Text));
       end
      else begin
         DirRestaurar := edt_diretorio_restaurar.Text;
      end;

      Dir := PAnsiChar('cmd /c ' + Diretorio_Mysql + 'mysql.exe -u root db_biblioteca < ' + DirRestaurar);
      Dir := '/c ' + Diretorio_Mysql + '\mysql -u root db_biblioteca < ' + edt_diretorio_restaurar.Text;
      ShellExecute(application.handle, 'open', 'cmd', PWideChar(Dir) , nil, SW_MAXIMIZE);
   finally
      Application.MessageBox('Backup Gerado com sucesso.', 'Status', MB_OK +MB_ICONINFORMATION + MB_DEFBUTTON2);
   end;

//   ShellExecute(application.handle, 'open', 'cmd', PWideChar(Dir) , nil, SW_MAXIMIZE)
end;

procedure Tfrm_backup.btn_gerar_backupClick(Sender: TObject);
var
   Dir : PAnsiChar;
   DirGerar : String;
begin
   try
      if RightStr(edt_diretorio_gerar.Text,1) = '\' then begin
         DirGerar := LeftStr(edt_diretorio_gerar.Text,Length(edt_diretorio_gerar.Text));
       end
      else begin
         DirGerar := edt_diretorio_gerar.Text;
      end;

      Dir := PAnsiChar('cmd /c ' + Diretorio_Mysql + 'mysqldump.exe -u root db_biblioteca > ' + DirGerar + '\' + FormataDataHora + '.sql');
      ShellExecute(application.handle, 'open', 'cmd', PWideChar(Dir) , nil, SW_MAXIMIZE);
   finally
      Application.MessageBox('Backup Gerado com sucesso.', 'Status', MB_OK +MB_ICONINFORMATION + MB_DEFBUTTON2);
   end;
end;

procedure Tfrm_backup.btn_iniciar_restauracaoClick(Sender: TObject);
var
   Dir : String;
   DirRestaurar : String;
begin
   try
      if RightStr(edt_diretorio_restaurar.Text,1) = '\' then begin
         DirRestaurar := LeftStr(edt_diretorio_restaurar.Text,Length(edt_diretorio_restaurar.Text));
       end
      else begin
         DirRestaurar := edt_diretorio_restaurar.Text;
      end;

      Dir := PAnsiChar('cmd /c ' + Diretorio_Mysql + 'mysql.exe -u root db_biblioteca < ' + DirRestaurar);
      Dir := '/c ' + Diretorio_Mysql + '\mysql -u root db_biblioteca < ' + edt_diretorio_restaurar.Text;
      ShellExecute(application.handle, 'open', 'cmd', PWideChar(Dir) , nil, SW_MAXIMIZE);
   finally
      Application.MessageBox('Backup Gerado com sucesso.', 'Status', MB_OK +MB_ICONINFORMATION + MB_DEFBUTTON2);
   end;


//   ShellExecute(application.handle, 'open', 'cmd', PWideChar(Dir) , nil, SW_MAXIMIZE)
end;

procedure Tfrm_backup.btn_make_backupClick(Sender: TObject);
var
   Dir : PAnsiChar;
   DirGerar : String;
   ArquivoSaida:String;
begin
   try
      if RightStr(edt_diretorio_gerar.Text,1) = '\' then begin
         DirGerar := LeftStr(edt_diretorio_gerar.Text,Length(edt_diretorio_gerar.Text));
       end
      else begin
         DirGerar := edt_diretorio_gerar.Text;
      end;

      //Dir := PAnsiChar('cmd /c ' + Diretorio_Mysql + 'mysqldump.exe -u root db_biblioteca > ' + DirGerar + '\' + FormataDataHora + '.sql');
      Dir := PAnsiChar('cmd /c ' + Diretorio_Mysql + 'mysqldump.exe -u root db_biblioteca > ' + DirGerar + '\' + FormataDataHora + '.sql');
      if Win32MajorVersion >= 6 then begin
         ShellExecute(application.handle, 'open', 'cmd', PWideChar(Dir) , nil, SW_MAXIMIZE);
       end
      else begin
         ArquivoSaida := 'cmd /c "' + Diretorio_Mysql + 'mysqldump.exe" -u root db_biblioteca > "' + DirGerar + '\' + FormataDataHora + '.sql"';
         Showmessage(ArquivoSaida);
         Clipboard.AsText := ArquivoSaida;
         //WinExec(PAnsiChar(ArquivoSaida), SW_SHOW);
         ShellExecute(application.handle, 'execute', 'cmd', PWideChar(ArquivoSaida) , nil, SW_MAXIMIZE);
      end;

   finally
      Application.MessageBox('Backup Gerado com sucesso.', 'Status', MB_OK +MB_ICONINFORMATION + MB_DEFBUTTON2);
   end;
end;

procedure Tfrm_backup.btn_selecionar_arquivoClick(Sender: TObject);
begin
   if not OpenDialog1.Execute then exit;
   edt_diretorio_restaurar.Text := OpenDialog1.FileName;
end;

procedure Tfrm_backup.btn_selecionar_pastaClick(Sender: TObject);
var
   Directory: string;
begin
   if SelectDirectory('Selecionar Pasta', '', Directory) then begin
      edt_diretorio_gerar.Text := Directory;
   end
end;

procedure Tfrm_backup.btn_select_dirClick(Sender: TObject);
var
   Directory: string;
begin
   if SelectDirectory('Selecionar Pasta', '', Directory) then begin
      edt_diretorio_gerar.Text := Directory;
   end;
end;

function Tfrm_backup.FormataDataHora : String;
begin
   Result := '';
   Result := FormatDateTime('dd-MM-yyyy_hh-mm',now());
end;


procedure Tfrm_backup.FormShow(Sender: TObject);
var
   List : TStringList;
begin
   list := TStringList.Create;
   ExtractStrings([' '],[' '],Pchar(getMysqlDirViaRegistry),List);
   Diretorio_Mysql := StringReplace(List[0],'mysqld','',[rfReplaceAll,rfIgnoreCase]);
   Diretorio_Mysql := StringReplace(Diretorio_Mysql,'"','',[rfReplaceAll,rfIgnoreCase]);
   edt_dir_mysql.Text := Diretorio_Mysql;
   if(DirectoryExists(Diretorio_Mysql)) then begin
      btn_gerar_backup.Enabled := true;
      btn_restaurar.Enabled := true;
    end
   else begin
      Application.MessageBox('Caminho para o banco de dados não encontrado. Procure o Desenvolvedor.','Erro', MB_OK + MB_ICONSTOP);
   end;
   List.Free;
end;

function Tfrm_backup.getMysqlDirViaRegistry : String;
begin
   Result := DSiReadRegistry('SYSTEM\ControlSet001\services\mysql\','ImagePath', '',HKEY_LOCAL_MACHINE,KEY_QUERY_VALUE OR KEY_WOW64_64KEY);
end;

function Tfrm_backup.teste : String;
begin

end;

end.
