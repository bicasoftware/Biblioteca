inherited frl_relacao_mensal_usuarios_livros: Tfrl_relacao_mensal_usuarios_livros
  Caption = 'Biblioteca - Rela'#231#227'o Mensal - Usu'#225'rios/Livros'
  ClientHeight = 537
  ClientWidth = 745
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 751
  ExplicitHeight = 563
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 745
    ExplicitLeft = -1
    ExplicitTop = 0
    ExplicitWidth = 1030
  end
  inherited lbl_titulo: TLabel
    Width = 435
    Caption = 'Biblioteca - Rela'#231#227'o Mensal - Usu'#225'rios/Livros'
    ExplicitWidth = 435
  end
  object Panel2: TPanel
    Left = 0
    Top = 172
    Width = 745
    Height = 83
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 752
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 743
      Height = 81
      Align = alClient
      DataSource = dts_mes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = JvDBGrid1Enter
      AlternateRowColor = clMenu
      AlternateRowFontColor = clBlack
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      AutoSizeRows = False
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'Mes'
          Title.Caption = 'M'#234's'
          Width = 670
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 745
    Height = 131
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 752
    object rkGlassButton3: TrkGlassButton
      Left = 18
      Top = 98
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
      Left = 593
      Top = 99
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
    object gbx_meses: TGroupBox
      Left = 12
      Top = 44
      Width = 733
      Height = 49
      Caption = 'Selecione o Per'#237'odo:'
      TabOrder = 2
      object cbx_janeiro: TCheckBox
        Left = 10
        Top = 14
        Width = 97
        Height = 15
        Caption = 'Janeiro'
        TabOrder = 0
      end
      object cbx_fevereiro: TCheckBox
        Left = 131
        Top = 14
        Width = 97
        Height = 15
        Caption = 'Fevereiro'
        TabOrder = 1
      end
      object cbx_marco: TCheckBox
        Left = 255
        Top = 14
        Width = 97
        Height = 15
        Caption = 'Mar'#231'o'
        TabOrder = 2
      end
      object cbx_abril: TCheckBox
        Left = 378
        Top = 14
        Width = 97
        Height = 15
        Caption = 'Abril'
        TabOrder = 3
      end
      object cbx_maio: TCheckBox
        Left = 502
        Top = 14
        Width = 97
        Height = 15
        Caption = 'Maio'
        TabOrder = 4
      end
      object cbx_junho: TCheckBox
        Left = 623
        Top = 14
        Width = 97
        Height = 15
        Caption = 'Junho'
        TabOrder = 5
      end
      object cbx_julho: TCheckBox
        Left = 10
        Top = 30
        Width = 97
        Height = 15
        Caption = 'Julho'
        TabOrder = 6
      end
      object cbx_agosto: TCheckBox
        Left = 131
        Top = 31
        Width = 97
        Height = 15
        Caption = 'Agosto'
        TabOrder = 7
      end
      object cbx_setembro: TCheckBox
        Left = 255
        Top = 31
        Width = 97
        Height = 15
        Caption = 'Setembro'
        TabOrder = 8
      end
      object cbx_outubro: TCheckBox
        Left = 378
        Top = 31
        Width = 97
        Height = 15
        Caption = 'Outubro'
        TabOrder = 9
      end
      object cbx_novembro: TCheckBox
        Left = 502
        Top = 31
        Width = 97
        Height = 15
        Caption = 'Novembro'
        TabOrder = 10
      end
      object cbx_dezembro: TCheckBox
        Left = 623
        Top = 31
        Width = 97
        Height = 15
        Caption = 'Dezembro'
        TabOrder = 11
      end
    end
    object rdg_status: TRadioGroup
      Left = 12
      Top = 3
      Width = 365
      Height = 38
      Caption = 'Status: '
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'Geral'
        'Em Aberto'
        'Vencidos'
        'Finalizados')
      TabOrder = 0
    end
    object rdg_ordem: TRadioGroup
      Left = 420
      Top = 3
      Width = 325
      Height = 38
      Caption = 'Ordenar por:'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Nenhum'
        'Usu'#225'rio'
        'Data')
      TabOrder = 1
    end
  end
  object rkGlassButton1: TrkGlassButton
    Left = 6
    Top = 504
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
    TabOrder = 5
    TextAlign = taLeft
    OnClick = rkGlassButton1Click
  end
  object rkGlassButton2: TrkGlassButton
    Left = 581
    Top = 503
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
    Left = 22
    Top = 625
    Width = 1123
    Height = 794
    DataSet = cds_mes
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
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
      Top = 190
      Width = 1047
      Height = 43
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        113.770833333333300000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object lbl_total: TQRLabel
        Left = 999
        Top = 3
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          2643.187500000000000000
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
        Left = 0
        Top = 22
        Width = 1046
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          58.208333333333330000
          2767.541666666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 3
        Top = 73
        Width = 1045
        Height = 17
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          193.145833333333300000
          2764.895833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Biblioteca Municipal de Itapui'
        Color = clWhite
        OnPrint = lbl_totalPrint
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 49
      AlignToBottom = False
      BeforePrint = TitleBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        129.645833333333300000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = True
      BandType = rbTitle
      object lbl_titulo_relatorio: TQRLabel
        Left = 0
        Top = 28
        Width = 1046
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          74.083333333333330000
          2767.541666666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Rela'#231#227'o Mensal - Usu'#225'rios/Livros'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = -1
        Top = 1
        Width = 1046
        Height = 23
        Size.Values = (
          60.854166666666670000
          -2.645833333333333000
          2.645833333333333000
          2767.541666666667000000)
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
        OnPrint = QRLabel1Print
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 87
      Width = 1047
      Height = 29
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        76.729166666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape5: TQRShape
        Left = 1
        Top = 3
        Width = 1044
        Height = 23
        Size.Values = (
          60.854166666666670000
          2.645833333333333000
          7.937500000000000000
          2762.250000000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 181
        Top = 7
        Width = 146
        Height = 15
        Size.Values = (
          39.687500000000000000
          478.895833333333300000
          18.520833333333330000
          386.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = cds_mes
        DataField = 'Mes'
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
      object QRLabel2: TQRLabel
        Left = 12
        Top = 7
        Width = 164
        Height = 15
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          18.520833333333330000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Rela'#231#227'o Referente ao M'#234's de:'
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
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 116
      Width = 1047
      Height = 55
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        145.520833333333300000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = qRep_Doacoes
      DataSet = tab_master
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape2: TQRShape
        Left = 1
        Top = 2
        Width = 1044
        Height = 36
        Size.Values = (
          95.250000000000000000
          2.645833333333333000
          5.291666666666667000
          2762.250000000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText2: TQRDBText
        Left = 60
        Top = 20
        Width = 83
        Height = 15
        Size.Values = (
          39.687500000000000000
          158.750000000000000000
          52.916666666666670000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'ID_Usuario'
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
      object QRDBText3: TQRDBText
        Left = 151
        Top = 20
        Width = 394
        Height = 15
        Size.Values = (
          39.687500000000000000
          399.520833333333300000
          52.916666666666670000
          1042.458333333333000000)
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
      object QRDBText4: TQRDBText
        Left = 546
        Top = 20
        Width = 89
        Height = 15
        Size.Values = (
          39.687500000000000000
          1444.625000000000000000
          52.916666666666670000
          235.479166666666700000)
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
      object QRLabel3: TQRLabel
        Left = 60
        Top = 5
        Width = 85
        Height = 15
        Size.Values = (
          39.687500000000000000
          158.750000000000000000
          13.229166666666670000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo Usu'#225'rio'
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
        Left = 151
        Top = 5
        Width = 33
        Height = 15
        Size.Values = (
          39.687500000000000000
          399.520833333333300000
          13.229166666666670000
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
      object QRLabel5: TQRLabel
        Left = 546
        Top = 5
        Width = 89
        Height = 15
        Size.Values = (
          39.687500000000000000
          1444.625000000000000000
          13.229166666666670000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data de Loca'#231#227'o'
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
      object QRLabel18: TQRLabel
        Left = 962
        Top = 40
        Width = 82
        Height = 15
        Size.Values = (
          39.687500000000000000
          2545.291666666667000000
          105.833333333333300000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#186' Renova'#231#245'es'
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
      object QRLabel17: TQRLabel
        Left = 849
        Top = 40
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          2246.312500000000000000
          105.833333333333300000
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
      object QRLabel16: TQRLabel
        Left = 726
        Top = 40
        Width = 109
        Height = 15
        Size.Values = (
          39.687500000000000000
          1920.875000000000000000
          105.833333333333300000
          288.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data Dev. Estipulada'
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
      object QRLabel15: TQRLabel
        Left = 194
        Top = 40
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          513.291666666666700000
          105.833333333333300000
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
      object QRLabel14: TQRLabel
        Left = 122
        Top = 40
        Width = 48
        Height = 15
        Size.Values = (
          39.687500000000000000
          322.791666666666700000
          105.833333333333300000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Ref'#234'ncia'
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
      object QRLabel13: TQRLabel
        Left = 59
        Top = 40
        Width = 57
        Height = 15
        Size.Values = (
          39.687500000000000000
          156.104166666666700000
          105.833333333333300000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'd. Livro'
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
    object QRSubDetail2: TQRSubDetail
      Left = 38
      Top = 171
      Width = 1047
      Height = 19
      AlignToBottom = False
      BeforePrint = QRSubDetail2BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRSubDetail1
      Size.Values = (
        50.270833333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QRSubDetail1
      DataSet = tab_slave
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText10: TQRDBText
        Left = 962
        Top = 2
        Width = 78
        Height = 15
        Size.Values = (
          39.687500000000000000
          2545.291666666667000000
          5.291666666666667000
          206.375000000000000000)
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
      object QRDBText9: TQRDBText
        Left = 849
        Top = 2
        Width = 109
        Height = 15
        Size.Values = (
          39.687500000000000000
          2246.312500000000000000
          5.291666666666667000
          288.395833333333300000)
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
      object QRDBText8: TQRDBText
        Left = 726
        Top = 2
        Width = 109
        Height = 15
        Size.Values = (
          39.687500000000000000
          1920.875000000000000000
          5.291666666666667000
          288.395833333333300000)
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
      object QRDBText7: TQRDBText
        Left = 193
        Top = 2
        Width = 408
        Height = 15
        Size.Values = (
          39.687500000000000000
          510.645833333333300000
          5.291666666666667000
          1079.500000000000000000)
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
      object QRDBText6: TQRDBText
        Left = 121
        Top = 2
        Width = 68
        Height = 15
        Size.Values = (
          39.687500000000000000
          320.145833333333300000
          5.291666666666667000
          179.916666666666700000)
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
      object QRDBText5: TQRDBText
        Left = 59
        Top = 2
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          156.104166666666700000
          5.291666666666667000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_slave
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
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 255
    Width = 745
    Height = 106
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 752
    object JvDBGrid2: TJvDBGrid
      Left = 1
      Top = 1
      Width = 743
      Height = 104
      Align = alClient
      DataSource = dts_master
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = JvDBGrid1Enter
      AlternateRowColor = clMenu
      AlternateRowFontColor = clBlack
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      AutoSizeRows = False
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_Usuario'
          Title.Caption = 'Cod. Usu'#225'rio'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 418
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Locacao'
          Title.Caption = 'Data de Locac'#227'o'
          Width = 99
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 361
    Width = 745
    Height = 136
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 752
    object JvDBGrid3: TJvDBGrid
      Left = 1
      Top = 1
      Width = 743
      Height = 134
      Align = alClient
      DataSource = dts_slave
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = JvDBGrid1Enter
      AlternateRowColor = clMenu
      AlternateRowFontColor = clBlack
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      AutoSizeRows = False
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'referencia'
          Title.Caption = 'Refer'#234'ncia'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Titulo'
          Title.Caption = 'T'#237'tulo'
          Width = 262
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Devolucao'
          Title.Caption = 'Data Dev. Estipulada'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Devolvido_Em'
          Title.Caption = 'Devolvido Em'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Renovacoes'
          Title.Caption = 'N'#186' Renova'#231#245'es'
          Width = 101
          Visible = True
        end>
    end
  end
  object tab_master: TZReadOnlyQuery
    Connection = frm_menu.zconn
    Params = <>
    MasterFields = 'idMes'
    MasterSource = dts_mes
    LinkedFields = 'Mes'
    Left = 104
    Top = 296
  end
  object dts_master: TDataSource
    AutoEdit = False
    DataSet = tab_master
    Left = 168
    Top = 296
  end
  object cds_mes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 616
    Top = 176
    object cds_mesidMes: TIntegerField
      FieldName = 'idMes'
    end
    object cds_mesMes: TStringField
      FieldName = 'Mes'
    end
  end
  object dts_mes: TDataSource
    AutoEdit = False
    DataSet = cds_mes
    Left = 680
    Top = 176
  end
  object tab_slave: TZReadOnlyQuery
    Connection = frm_menu.zconn
    Params = <>
    MasterFields = 'ID'
    MasterSource = dts_master
    LinkedFields = 'ID_Locacao'
    Left = 368
    Top = 384
  end
  object dts_slave: TDataSource
    AutoEdit = False
    DataSet = tab_slave
    Left = 440
    Top = 384
  end
end
