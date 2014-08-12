inherited frm_login: Tfrm_login
  Caption = 'Biblioteca - Login'
  ClientHeight = 178
  ClientWidth = 333
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 339
  ExplicitHeight = 207
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 333
    ExplicitWidth = 333
  end
  inherited lbl_titulo: TLabel
    Width = 60
    Caption = 'Login:'
    ExplicitWidth = 60
  end
  object Panel1: TPanel
    Left = 8
    Top = 47
    Width = 313
    Height = 98
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Login'
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object edt_login: TEdit
      Left = 16
      Top = 24
      Width = 281
      Height = 21
      TabOrder = 0
    end
    object edt_senha: TEdit
      Left = 16
      Top = 64
      Width = 281
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  object btn_usuario_sistema: TrkGlassButton
    Left = 236
    Top = 151
    Width = 85
    Height = 23
    ParentCustomHint = False
    Caption = 'Confirmar'
    Color = clWhite
    ColorDown = clCream
    ColorFrame = clGray
    Glossy = True
    GlossyLevel = 50
    DropDownAlignment = paLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    TabOrder = 1
    OnClick = btn_usuario_sistemaClick
    SingleBorder = True
  end
  object btn_cancelar: TrkGlassButton
    Left = 8
    Top = 151
    Width = 85
    Height = 23
    ParentCustomHint = False
    Caption = 'Cancelar'
    Color = clWhite
    ColorDown = clCream
    ColorFrame = clGray
    Glossy = True
    GlossyLevel = 50
    DropDownAlignment = paLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    TabOrder = 2
    OnClick = btn_cancelarClick
    SingleBorder = True
  end
end
