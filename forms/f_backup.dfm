inherited frm_backup: Tfrm_backup
  Caption = 'Backup e Restaura'#231#227'o de dados'
  ClientHeight = 398
  ClientWidth = 643
  OnShow = FormShow
  ExplicitWidth = 649
  ExplicitHeight = 429
  PixelsPerInch = 120
  TextHeight = 17
  inherited Image1: TImage
    Width = 643
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 643
  end
  inherited lbl_titulo: TLabel
    Width = 369
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Backup e Restaura'#231#227'o de dados'
    ExplicitWidth = 369
  end
  object gbx_Gerar: TGroupBox
    Left = 8
    Top = 143
    Width = 627
    Height = 114
    Align = alCustom
    Caption = 'Gerar Novo Backup'
    TabOrder = 0
    object lbl_2: TLabel
      Left = 8
      Top = 26
      Width = 57
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Diret'#243'rio:'
    end
    object btn_select_dir: TBitBtn
      Left = 8
      Top = 76
      Width = 155
      Height = 25
      Caption = 'Selecionar Pasta'
      TabOrder = 0
      OnClick = btn_select_dirClick
    end
    object btn_gerar_backup: TBitBtn
      Left = 464
      Top = 80
      Width = 155
      Height = 25
      Caption = 'Gerar Backup'
      Enabled = False
      TabOrder = 1
      OnClick = btn_make_backupClick
    end
    object edt_diretorio_gerar: TEdit
      Left = 8
      Top = 46
      Width = 611
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Enabled = False
      TabOrder = 2
      Text = 'C:\'
    end
  end
  object gbx_restaurar: TGroupBox
    Left = 8
    Top = 272
    Width = 627
    Height = 114
    Align = alCustom
    Caption = 'Restaurar Backup Anterior'
    TabOrder = 1
    object lbl_1: TLabel
      Left = 19
      Top = 16
      Width = 57
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Diret'#243'rio:'
    end
    object edt_diretorio_restaurar: TEdit
      Left = 8
      Top = 46
      Width = 611
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Enabled = False
      TabOrder = 0
      Text = 'C:\'
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 76
      Width = 155
      Height = 26
      Caption = 'Selecionar Arquivo'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object btn_restaurar: TBitBtn
      Left = 464
      Top = 76
      Width = 155
      Height = 26
      Caption = 'Iniciar Restaura'#231#227'o'
      Enabled = False
      TabOrder = 2
      OnClick = btn_restaurarClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 54
    Width = 643
    Height = 75
    Align = alTop
    Caption = 'Diret'#243'rio Mysql'
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 26
      Width = 57
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Diret'#243'rio:'
    end
    object edt_dir_mysql: TEdit
      Left = 8
      Top = 46
      Width = 611
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Enabled = False
      TabOrder = 0
      Text = 'C:\'
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivos de Backup|*.sql'
    Left = 376
    Top = 232
  end
end
