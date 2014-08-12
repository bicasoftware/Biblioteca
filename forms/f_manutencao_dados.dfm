inherited frm_manutencao_dados: Tfrm_manutencao_dados
  Caption = 'Biblioteca - Manuten'#231#227'o do banco de Dados'
  ClientHeight = 260
  ClientWidth = 859
  OnShow = FormShow
  ExplicitWidth = 865
  ExplicitHeight = 291
  PixelsPerInch = 120
  TextHeight = 17
  inherited Image1: TImage
    Width = 859
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 859
  end
  inherited lbl_titulo: TLabel
    Width = 509
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Biblioteca - Manuten'#231#227'o do banco de Dados'
    ExplicitWidth = 509
  end
  object Panel1: TPanel
    Left = 0
    Top = 54
    Width = 859
    Height = 125
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
    object grade_conexao: TStringGrid
      Left = 10
      Top = 21
      Width = 839
      Height = 85
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ColCount = 2
      DefaultColWidth = 200
      FixedCols = 0
      RowCount = 2
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object rkGlassButton1: TrkGlassButton
    Left = 10
    Top = 188
    Width = 839
    Height = 36
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    AltFocus = False
    AltRender = False
    Caption = 'Iniciar Verifica'#231#227'o de Dados'
    Color = clWhite
    ColorDown = clBlack
    ColorFrame = clGray
    DropDownAlignment = paLeft
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Glossy = True
    GlossyLevel = 37
    GlyphPos = gpLeft
    LightHeight = 27
    ShadowStyle = ssNone
    TabOrder = 1
    TextAlign = taCenter
    OnClick = rkGlassButton1Click
  end
  object sBar: TStatusBar
    Left = 0
    Top = 237
    Width = 859
    Height = 23
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Panels = <
      item
        Text = 'Status'
        Width = 50
      end
      item
        Width = 120
      end
      item
        Width = 120
      end
      item
        Width = 50
      end>
  end
  object pBar: TProgressBar
    Left = 386
    Top = 235
    Width = 463
    Height = 23
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 3
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Params = <>
    Left = 600
    Top = 64
  end
end
