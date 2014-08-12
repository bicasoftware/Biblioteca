inherited frl_locacoes: Tfrl_locacoes
  Caption = 'Biblioteca - Rela'#231#227'o de Loca'#231#245'es'
  ClientHeight = 531
  ClientWidth = 780
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 786
  ExplicitHeight = 557
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 780
    ExplicitWidth = 784
  end
  inherited lbl_titulo: TLabel
    Width = 312
    Caption = 'Biblioteca - Rela'#231#227'o de Loca'#231#245'es'
    ExplicitWidth = 312
  end
  object Panel2: TPanel
    Left = 0
    Top = 239
    Width = 780
    Height = 114
    Align = alTop
    TabOrder = 1
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 778
      Height = 112
      Align = alClient
      DataSource = dts_master
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      AlternateRowColor = clMenu
      AlternateRowFontColor = clBlack
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Caption = 'Usu'#225'rio'
          Width = 331
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Locacao'
          Title.Caption = 'Data de Loca'#231#227'o'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome_funcionario'
          Title.Caption = 'Respons'#225'vel'
          Width = 247
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 780
    Height = 198
    Align = alTop
    TabOrder = 0
    object Panel4: TPanel
      Left = 8
      Top = 45
      Width = 768
      Height = 108
      TabOrder = 2
      object Label2: TLabel
        Left = 183
        Top = 59
        Width = 26
        Height = 13
        Caption = 'T'#237'tulo'
      end
      object Label4: TLabel
        Left = 508
        Top = 59
        Width = 58
        Height = 13
        Caption = 'Locados de:'
      end
      object Label5: TLabel
        Left = 635
        Top = 59
        Width = 21
        Height = 13
        Caption = 'At'#233':'
      end
      object Label3: TLabel
        Left = 7
        Top = 59
        Width = 56
        Height = 13
        Caption = 'C'#243'digo livro'
      end
      object Label8: TLabel
        Left = 95
        Top = 59
        Width = 52
        Height = 13
        Caption = 'Referencia'
      end
      object edt_titulo: TEdit
        Left = 183
        Top = 76
        Width = 306
        Height = 21
        TabOrder = 3
      end
      object edt_data_inicial: TJvDateEdit
        Left = 508
        Top = 76
        Width = 121
        Height = 21
        ShowNullDate = False
        TabOrder = 4
      end
      object edt_data_final: TJvDateEdit
        Left = 635
        Top = 76
        Width = 121
        Height = 21
        ShowNullDate = False
        TabOrder = 5
      end
      object Panel5: TPanel
        Left = 8
        Top = 6
        Width = 749
        Height = 49
        BevelInner = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 6
          Width = 87
          Height = 13
          Caption = 'C'#243'digo do Usu'#225'rio'
        end
        object Label6: TLabel
          Left = 143
          Top = 6
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label7: TLabel
          Left = 449
          Top = 6
          Width = 58
          Height = 13
          Caption = 'Sobre Nome'
        end
        object edt_codigo_usuario: TEdit
          Left = 6
          Top = 23
          Width = 98
          Height = 21
          TabOrder = 0
          OnChange = edt_codigo_usuarioChange
          OnKeyPress = edt_codigo_usuarioKeyPress
        end
        object edt_nome_usuario: TEdit
          Left = 143
          Top = 23
          Width = 300
          Height = 21
          Enabled = False
          TabOrder = 2
        end
        object rkGlassButton5: TrkGlassButton
          Left = 109
          Top = 23
          Width = 31
          Height = 21
          AltFocus = False
          AltRender = False
          Caption = '...'
          Color = clWhite
          ColorDown = clBlack
          ColorFrame = clGray
          DropDownAlignment = paLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          GlossyLevel = 37
          GlyphPos = gpLeft
          LightHeight = 27
          TabOrder = 1
          TextAlign = taLeft
          OnClick = rkGlassButton5Click
        end
        object edt_sobrenome: TEdit
          Left = 449
          Top = 23
          Width = 290
          Height = 21
          Enabled = False
          TabOrder = 3
        end
      end
      object edt_cod_livro: TEdit
        Left = 7
        Top = 76
        Width = 82
        Height = 21
        TabOrder = 1
        OnKeyPress = edt_cod_livroKeyPress
      end
      object edt_referencia: TEdit
        Left = 95
        Top = 76
        Width = 82
        Height = 21
        TabOrder = 2
      end
    end
    object rkGlassButton3: TrkGlassButton
      Left = 18
      Top = 163
      Width = 145
      Height = 27
      AltFocus = False
      AltRender = False
      Caption = 'Pesquisar'
      Color = clWhite
      ColorDown = clBlack
      ColorFrame = clGray
      DropDownAlignment = paLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GlossyLevel = 37
      GlyphPos = gpLeft
      LightHeight = 27
      TabOrder = 3
      TextAlign = taLeft
      OnClick = rkGlassButton3Click
    end
    object rkGlassButton4: TrkGlassButton
      Left = 619
      Top = 163
      Width = 145
      Height = 27
      AltFocus = False
      AltRender = False
      Caption = 'Reiniciar'
      Color = clWhite
      ColorDown = clBlack
      ColorFrame = clGray
      DropDownAlignment = paLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GlossyLevel = 37
      GlyphPos = gpLeft
      LightHeight = 27
      TabOrder = 4
      TextAlign = taLeft
      OnClick = rkGlassButton4Click
    end
    object rdg_status: TRadioGroup
      Left = 8
      Top = 5
      Width = 418
      Height = 37
      Caption = 'Exibir apenas loca'#231#245'es :'
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Em Aberto'
        'Finalizadas'
        'Vencidas')
      TabOrder = 0
    end
    object rdg_ordem: TRadioGroup
      Left = 432
      Top = 5
      Width = 344
      Height = 37
      Caption = 'Ordenar por:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Usu'#225'rio'
        'Respons'#225'vel'
        'Data')
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 353
    Width = 780
    Height = 139
    Align = alTop
    TabOrder = 2
    object JvDBGrid2: TJvDBGrid
      Left = 1
      Top = 1
      Width = 778
      Height = 137
      Align = alClient
      DataSource = dts_slave
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      AlternateRowColor = clInfoBk
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_Locacao'
          Title.Caption = 'C'#243'd Loca'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'referencia'
          Title.Caption = 'Ref.'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Titulo'
          Title.Caption = 'T'#237'tulo'
          Width = 277
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Devolucao'
          Title.Caption = 'Data Devolu'#231#227'o Estipulada'
          Width = 144
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Devolvido_Em'
          Title.Caption = 'Devolvido Em'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Renovacoes'
          Title.Caption = 'N'#186' Renova'#231#245'es'
          Width = 84
          Visible = True
        end>
    end
  end
  object rkGlassButton1: TrkGlassButton
    Left = 8
    Top = 497
    Width = 145
    Height = 27
    AltFocus = False
    AltRender = False
    Caption = 'Imprimir'
    Color = clWhite
    ColorDown = clBlack
    ColorFrame = clGray
    DropDownAlignment = paLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GlossyLevel = 37
    GlyphPos = gpLeft
    LightHeight = 27
    TabOrder = 3
    TextAlign = taLeft
    OnClick = rkGlassButton1Click
  end
  object rkGlassButton2: TrkGlassButton
    Left = 631
    Top = 497
    Width = 145
    Height = 27
    AltFocus = False
    AltRender = False
    Caption = 'Sair'
    Color = clWhite
    ColorDown = clBlack
    ColorFrame = clGray
    DropDownAlignment = paLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GlossyLevel = 37
    GlyphPos = gpLeft
    LightHeight = 27
    TabOrder = 4
    TextAlign = taLeft
    OnClick = rkGlassButton2Click
  end
  object qRep_Doacoes: TQuickRep
    Left = 8
    Top = 578
    Width = 794
    Height = 1123
    DataSet = tab_master
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ShowProgress = False
    SnapToGrid = False
    Units = MM
    Zoom = 100
    PrevFormStyle = fsStayOnTop
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object SummaryBand1: TQRBand
      Left = 38
      Top = 162
      Width = 718
      Height = 45
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        119.062500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object lbl_total: TQRLabel
        Left = 671
        Top = 3
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          1775.354166666667000000
          7.937500000000000000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'lbl_total'
        Color = clWhite
        OnPrint = lbl_totalPrint
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 1
        Top = 22
        Width = 1045
        Height = 1
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          58.208333333333330000
          2764.895833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 1
        Top = 26
        Width = 717
        Height = 17
        Size.Values = (
          44.979166666666670000
          2.645833333333333000
          68.791666666666670000
          1897.062500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Biblioteca Municipal de itapui'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      AlignToBottom = False
      BeforePrint = TitleBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        177.270833333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = True
      BandType = rbTitle
      object lbl_titulo_relatorio: TQRLabel
        Left = 0
        Top = 28
        Width = 717
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          74.083333333333330000
          1897.062500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Rela'#231#227'o de Loca'#231#245'es'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 8
        Top = 49
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          129.645833333333300000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 54
        Top = 49
        Width = 33
        Height = 17
        Size.Values = (
          44.979166666666670000
          142.875000000000000000
          129.645833333333300000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 382
        Top = 49
        Width = 78
        Height = 17
        Size.Values = (
          44.979166666666670000
          1010.708333333333000000
          129.645833333333300000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Loaca'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 506
        Top = 49
        Width = 83
        Height = 17
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          129.645833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Respos'#225'vel'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 105
      Width = 718
      Height = 41
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        108.479166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape2: TQRShape
        Left = 0
        Top = 5
        Width = 718
        Height = 18
        Size.Values = (
          47.625000000000000000
          0.000000000000000000
          13.229166666666670000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText2: TQRDBText
        Left = 54
        Top = 7
        Width = 326
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          18.520833333333330000
          862.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 7
        Top = 7
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          18.520833333333330000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 382
        Top = 7
        Width = 118
        Height = 15
        Size.Values = (
          39.687500000000000000
          1010.708333333333000000
          18.520833333333330000
          312.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Data_Locacao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 506
        Top = 7
        Width = 203
        Height = 15
        Size.Values = (
          39.687500000000000000
          1338.791666666667000000
          18.520833333333330000
          537.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'nome_funcionario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 196
        Top = 24
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          518.583333333333300000
          63.500000000000000000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'T'#237'tulo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 94
        Top = 24
        Width = 59
        Height = 15
        Size.Values = (
          39.687500000000000000
          248.708333333333300000
          63.500000000000000000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Refer'#234'ncia'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 640
        Top = 24
        Width = 68
        Height = 15
        Size.Values = (
          39.687500000000000000
          1693.333333333333000000
          63.500000000000000000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Renova'#231#245'es'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 7
        Top = 24
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          63.500000000000000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cod. Loca'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 436
        Top = 24
        Width = 77
        Height = 15
        Size.Values = (
          39.687500000000000000
          1153.583333333333000000
          63.500000000000000000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Dta Devolu'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 535
        Top = 24
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          1415.520833333333000000
          63.500000000000000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Devolvido Em'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 3
        Width = 718
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          7.937500000000000000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRLabel1: TQRLabel
      Left = 39
      Top = 40
      Width = 717
      Height = 23
      Size.Values = (
        60.854166666666670000
        103.187500000000000000
        105.833333333333300000
        1897.062500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Caption = 'Biblioteca Municipal de Itapui'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 14
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 146
      Width = 718
      Height = 16
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = DetailBand1
      Size.Values = (
        42.333333333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = qRep_Doacoes
      DataSet = tab_slave
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText6: TQRDBText
        Left = 7
        Top = 1
        Width = 81
        Height = 15
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          2.645833333333333000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_slave
        DataField = 'ID_Locacao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 94
        Top = 1
        Width = 99
        Height = 15
        Size.Values = (
          39.687500000000000000
          248.708333333333300000
          2.645833333333333000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_slave
        DataField = 'referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 196
        Top = 1
        Width = 237
        Height = 15
        Size.Values = (
          39.687500000000000000
          518.583333333333300000
          2.645833333333333000
          627.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_slave
        DataField = 'Titulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 640
        Top = 1
        Width = 76
        Height = 15
        Size.Values = (
          39.687500000000000000
          1693.333333333333000000
          2.645833333333333000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_slave
        DataField = 'Numero_Renovacoes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 436
        Top = 1
        Width = 93
        Height = 15
        Size.Values = (
          39.687500000000000000
          1153.583333333333000000
          2.645833333333333000
          246.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_slave
        DataField = 'Data_Devolucao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 535
        Top = 1
        Width = 76
        Height = 15
        Size.Values = (
          39.687500000000000000
          1415.520833333333000000
          2.645833333333333000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_slave
        DataField = 'Devolvido_Em'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
  end
  object tab_master: TZReadOnlyQuery
    Connection = frm_menu.zconn
    Params = <>
    Left = 112
    Top = 280
  end
  object tab_slave: TZReadOnlyQuery
    Connection = frm_menu.zconn
    Params = <>
    MasterFields = 'ID'
    MasterSource = dts_master
    LinkedFields = 'ID_Locacao'
    Left = 720
    Top = 304
  end
  object dts_slave: TDataSource
    AutoEdit = False
    DataSet = tab_slave
    Left = 720
    Top = 368
  end
  object dts_master: TDataSource
    AutoEdit = False
    DataSet = tab_master
    Left = 48
    Top = 280
  end
end
