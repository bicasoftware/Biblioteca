inherited frm_devolucoes: Tfrm_devolucoes
  Caption = 'Biblioteca - Devolu'#231#227'o de Livros'
  ClientHeight = 443
  ClientWidth = 1025
  OnShow = FormShow
  ExplicitWidth = 1031
  ExplicitHeight = 474
  PixelsPerInch = 120
  TextHeight = 17
  inherited Image1: TImage
    Width = 1025
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 1025
  end
  inherited lbl_titulo: TLabel
    Width = 371
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Biblioteca - Devolu'#231#227'o de Livros'
    ExplicitWidth = 371
  end
  object Panel2: TPanel
    Left = 0
    Top = 54
    Width = 1025
    Height = 109
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    TabOrder = 0
    object grade_items: TStringGrid
      Left = 1
      Top = 42
      Width = 1023
      Height = 66
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      ColCount = 3
      DefaultColWidth = 120
      DefaultRowHeight = 21
      Enabled = False
      FixedCols = 0
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ColWidths = (
        110
        249
        388)
    end
    object btn_confirmar: TrkGlassButton
      Left = 812
      Top = 4
      Width = 203
      Height = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ParentCustomHint = False
      AltFocus = False
      AltRender = False
      Caption = 'Confirmar'
      Color = clWhite
      ColorDown = clCream
      ColorFrame = clGray
      ColorShadow = clGreen
      DropDownAlignment = paLeft
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      Glossy = True
      GlossyLevel = 64
      GlyphPos = gpLeft
      LightHeight = 27
      ShadowStyle = ssNone
      ShowHint = True
      TabOrder = 1
      TextAlign = taCenter
      OnClick = btn_confirmarClick
      SingleBorder = True
    end
    object btn_selecionar: TrkGlassButton
      Left = 10
      Top = 4
      Width = 203
      Height = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ParentCustomHint = False
      AltFocus = False
      AltRender = False
      Caption = 'Selecionar Usu'#225'rio'
      Color = clWhite
      ColorDown = clCream
      ColorFrame = clGray
      ColorShadow = clGreen
      DropDownAlignment = paLeft
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      Glossy = True
      GlossyLevel = 64
      GlyphPos = gpLeft
      LightHeight = 27
      ShadowStyle = ssNone
      ShowHint = True
      TabOrder = 0
      TextAlign = taCenter
      OnClick = btn_selecionarClick
      SingleBorder = True
    end
  end
  object pn_items: TPanel
    Left = 0
    Top = 163
    Width = 1025
    Height = 227
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object JvDBGrid1: TJvDBGrid
      Left = 2
      Top = 2
      Width = 1021
      Height = 223
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      DataSource = dts_itens_locacao
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      PopupMenu = pop_opcoes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 21
      TitleRowHeight = 21
      Columns = <
        item
          Expanded = False
          FieldName = 'referencia'
          Title.Caption = 'Refer'#234'ncia'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Titulo'
          Title.Caption = 'T'#237'tulo'
          Width = 251
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Locacao'
          Title.Caption = 'Data de Loca'#231#227'o'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Devolucao'
          Title.Caption = 'Data Dev Estipulada'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Devolvido_Em'
          Title.Caption = 'Devolvido Em'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Renovacoes'
          Title.Caption = 'N'#186' de Renova'#231#245'es'
          Width = 94
          Visible = True
        end>
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 390
    Width = 1025
    Height = 53
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 1
    ExplicitTop = 396
    object btn_finalizar: TrkGlassButton
      Left = 10
      Top = 8
      Width = 160
      Height = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ParentCustomHint = False
      AltFocus = False
      AltRender = False
      Caption = 'Finalizar'
      Color = clWhite
      ColorDown = clCream
      ColorFrame = clGray
      ColorShadow = clGreen
      DropDownAlignment = paRight
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      Glossy = True
      GlossyLevel = 64
      GlyphPos = gpLeft
      LightHeight = 27
      ShadowStyle = ssNone
      ShowHint = True
      TabOrder = 0
      TextAlign = taCenter
      OnClick = btn_finalizarClick
      SingleBorder = True
    end
    object btn_cancel: TrkGlassButton
      Left = 752
      Top = 8
      Width = 128
      Height = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ParentCustomHint = False
      AltFocus = False
      AltRender = False
      Caption = 'Cancelar'
      Color = clWhite
      ColorDown = clCream
      ColorFrame = clGray
      ColorShadow = clGreen
      DropDownAlignment = paLeft
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      Glossy = True
      GlossyLevel = 64
      GlyphPos = gpLeft
      LightHeight = 27
      ShadowStyle = ssNone
      ShowHint = True
      TabOrder = 1
      TextAlign = taCenter
      OnClick = btn_cancelClick
      SingleBorder = True
    end
    object btn_sair: TrkGlassButton
      Left = 887
      Top = 8
      Width = 128
      Height = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ParentCustomHint = False
      AltFocus = False
      AltRender = False
      Caption = 'Sair'
      Color = clWhite
      ColorDown = clCream
      ColorFrame = clGray
      ColorShadow = clGreen
      DropDownAlignment = paLeft
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      Font.Quality = fqClearTypeNatural
      Glossy = True
      GlossyLevel = 64
      GlyphPos = gpLeft
      LightHeight = 27
      ShadowStyle = ssNone
      ShowHint = True
      TabOrder = 2
      TextAlign = taCenter
      OnClick = btn_sairClick
      SingleBorder = True
    end
  end
  object tab_items_locacao: TZQuery
    Connection = frm_menu.zconn
    Params = <>
    Left = 296
    Top = 176
  end
  object pop_opcoes: TPopupMenu
    Left = 480
    Top = 176
    object Renovar1: TMenuItem
      Caption = 'Renovar'
      OnClick = Renovar1Click
    end
    object pop_mnu_devolver: TMenuItem
      Caption = 'Devolver'
      OnClick = pop_mnu_devolverClick
    end
  end
  object dts_itens_locacao: TDataSource
    AutoEdit = False
    DataSet = tab_items_locacao
    Left = 384
    Top = 176
  end
  object pop_finalizar: TPopupMenu
    Left = 160
    Top = 296
    object DevolverTodos1: TMenuItem
      Caption = 'Devolver Todos'
    end
    object RenovarTodos1: TMenuItem
      Caption = 'Renovar Todos'
    end
  end
end
