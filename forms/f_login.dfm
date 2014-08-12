inherited frm_login: Tfrm_login
  Caption = 'Biblioteca - Login'
  ClientHeight = 216
  ClientWidth = 312
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 318
  ExplicitHeight = 242
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 312
    ExplicitWidth = 333
  end
  inherited lbl_titulo: TLabel
    Width = 60
    Caption = 'Login:'
    ExplicitWidth = 60
  end
  object Panel1: TPanel
    Left = 3
    Top = 44
    Width = 305
    Height = 98
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 8
      Width = 25
      Height = 13
      Caption = 'Login'
    end
    object Label2: TLabel
      Left = 14
      Top = 48
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object edt_login: TEdit
      Left = 14
      Top = 24
      Width = 281
      Height = 21
      TabOrder = 0
      OnKeyDown = edt_loginKeyDown
    end
    object edt_senha: TEdit
      Left = 14
      Top = 67
      Width = 281
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      OnKeyDown = edt_senhaKeyDown
    end
  end
  object btn_cancelar: TrkGlassButton
    Left = 3
    Top = 146
    Width = 305
    Height = 27
    AltFocus = False
    AltRender = False
    Caption = 'Cancelar'
    Color = clWhite
    ColorDown = clBlack
    ColorFrame = clGray
    ColorShadow = clGreen
    DropDownAlignment = paLeft
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glossy = True
    GlossyLevel = 37
    GlyphPos = gpLeft
    LightHeight = 27
    ShadowStyle = ssNone
    TabOrder = 1
    TextAlign = taCenter
    OnClick = btn_cancelarClick
    SingleBorder = True
  end
  object btn_confirmar: TrkGlassButton
    Left = 3
    Top = 179
    Width = 305
    Height = 27
    AltFocus = False
    AltRender = False
    Caption = 'Confirmar'
    Color = clWhite
    ColorDown = clBlack
    ColorFrame = clGray
    ColorShadow = clGreen
    DropDownAlignment = paLeft
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glossy = True
    GlossyLevel = 37
    GlyphPos = gpLeft
    LightHeight = 27
    ShadowStyle = ssNone
    TabOrder = 2
    TextAlign = taCenter
    OnClick = btn_confirmarClick
    SingleBorder = True
  end
end
