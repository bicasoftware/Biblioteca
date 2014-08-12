inherited frm_doacoes: Tfrm_doacoes
  Caption = 'Biblioteca - Doa'#231#245'es de Livros'
  ClientHeight = 581
  ClientWidth = 784
  OnShow = FormShow
  ExplicitWidth = 790
  ExplicitHeight = 607
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 784
    ExplicitWidth = 784
  end
  inherited lbl_titulo: TLabel
    Width = 288
    Caption = 'Biblioteca - Doa'#231#245'es de Livros'
    ExplicitWidth = 288
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 784
    Height = 84
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object grade_usuarios: TStringGrid
      Left = 1
      Top = 33
      Width = 782
      Height = 50
      Align = alBottom
      ColCount = 3
      DefaultColWidth = 120
      DefaultRowHeight = 21
      Enabled = False
      FixedCols = 0
      RowCount = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      Left = 624
      Top = 3
      Width = 155
      Height = 27
      ParentCustomHint = False
      AltFocus = False
      AltRender = False
      Caption = 'Confirmar'
      Color = clWhite
      ColorDown = clCream
      ColorFrame = clGray
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
      Left = 3
      Top = 3
      Width = 155
      Height = 27
      ParentCustomHint = False
      AltFocus = False
      AltRender = False
      Caption = 'Selecionar Doador'
      Color = clWhite
      ColorDown = clCream
      ColorFrame = clGray
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
  object pn_Livros: TPanel
    Left = 0
    Top = 128
    Width = 784
    Height = 453
    Align = alBottom
    TabOrder = 1
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 782
      Height = 52
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 152
        Height = 13
        Caption = 'Digite o Livro, Autor ou Editora:'
      end
      object edt_pesquisar: TEdit
        Left = 9
        Top = 25
        Width = 608
        Height = 21
        TabOrder = 0
        OnKeyDown = edt_pesquisarKeyDown
      end
      object btn_pesquisar: TrkGlassButton
        Left = 623
        Top = 25
        Width = 155
        Height = 21
        ParentCustomHint = False
        AltFocus = False
        AltRender = False
        Caption = 'Pesquisar'
        Color = clWhite
        ColorDown = clCream
        ColorFrame = clGray
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
        OnClick = btn_pesquisarClick
        SingleBorder = True
      end
    end
    object Panel6: TPanel
      Left = 735
      Top = 53
      Width = 48
      Height = 399
      Align = alRight
      TabOrder = 2
      object btn_add: TSpeedButton
        Left = 4
        Top = 3
        Width = 40
        Height = 49
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_addClick
      end
      object btn_rem: TSpeedButton
        Left = 4
        Top = 54
        Width = 40
        Height = 49
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_remClick
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 53
      Width = 733
      Height = 399
      Align = alLeft
      TabOrder = 1
      object Label2: TLabel
        Left = 8
        Top = 112
        Width = 196
        Height = 23
        Caption = 'Livros Selecionados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 731
        Height = 104
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object dbg_busca: TJvDBGrid
          Left = 2
          Top = 2
          Width = 727
          Height = 100
          Align = alClient
          DataSource = dts_busca
          FixedColor = clGradientActiveCaption
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = dbg_buscaDblClick
          OnKeyDown = dbg_buscaKeyDown
          AutoSizeColumns = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          CanDelete = False
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Caption = 'C'#243'digo'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'referencia'
              Title.Caption = 'Refer'#234'ncia'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Titulo'
              Title.Caption = 'T'#237'tulo'
              Width = 252
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Desc_autor'
              Title.Caption = 'Autor'
              Width = 260
              Visible = True
            end>
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 138
        Width = 731
        Height = 219
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 2
          Width = 727
          Height = 215
          Align = alClient
          DataSource = dts_temp
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Nome_Livro'
              Title.Caption = 'Livro'
              Width = 511
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantidade'
              Visible = True
            end>
        end
      end
      object Panel8: TPanel
        Left = 1
        Top = 357
        Width = 731
        Height = 41
        Align = alBottom
        TabOrder = 2
        object btn_finalizar: TrkGlassButton
          Left = 7
          Top = 6
          Width = 98
          Height = 27
          ParentCustomHint = False
          AltFocus = False
          AltRender = False
          Caption = 'Finalizar'
          Color = clWhite
          ColorDown = clCream
          ColorFrame = clGray
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
          OnClick = btn_finalizarClick
          SingleBorder = True
        end
        object btn_cancel: TrkGlassButton
          Left = 521
          Top = 6
          Width = 98
          Height = 27
          ParentCustomHint = False
          AltFocus = False
          AltRender = False
          Caption = 'Cancelar'
          Color = clWhite
          ColorDown = clCream
          ColorFrame = clGray
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
          OnClick = btn_cancelClick
          SingleBorder = True
        end
        object rkGlassButton1: TrkGlassButton
          Left = 419
          Top = 6
          Width = 98
          Height = 27
          ParentCustomHint = False
          AltFocus = False
          AltRender = False
          Arrow = True
          Caption = 'Op'#231#245'es'
          Color = clWhite
          ColorDown = clCream
          ColorFrame = clGray
          DropDownAlignment = paLeft
          DropDownMenu = pop_opcoes
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
      end
    end
  end
  object btn_sair: TrkGlassButton
    Left = 625
    Top = 544
    Width = 98
    Height = 27
    ParentCustomHint = False
    AltFocus = False
    AltRender = False
    Caption = 'Sair'
    Color = clWhite
    ColorDown = clCream
    ColorFrame = clGray
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
  object dts_busca: TDataSource
    DataSet = tab_busca
    Left = 64
    Top = 232
  end
  object tab_busca: TZReadOnlyQuery
    Connection = frm_menu.zconn
    Params = <>
    Left = 64
    Top = 176
  end
  object tab_temp: TZQuery
    Connection = frm_menu.zconn
    Params = <>
    Left = 448
    Top = 224
  end
  object dts_temp: TDataSource
    AutoEdit = False
    DataSet = tab_temp
    Left = 528
    Top = 224
  end
  object pop_opcoes: TPopupMenu
    Left = 312
    Top = 480
  end
end
