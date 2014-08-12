inherited frl_livros: Tfrl_livros
  Caption = 'Biblioteca - Rela'#231#227'o de Livros'
  ClientHeight = 533
  ClientWidth = 775
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 781
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 775
    ExplicitTop = -8
    ExplicitWidth = 772
  end
  inherited lbl_titulo: TLabel
    Width = 283
    Caption = 'Biblioteca - Rela'#231#227'o de Livros'
    ExplicitWidth = 283
  end
  object Panel2: TPanel
    Left = 0
    Top = 349
    Width = 775
    Height = 144
    Align = alTop
    TabOrder = 1
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 773
      Height = 142
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
          FieldName = 'ID'
          Title.Caption = 'C'#243'digo'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'referencia'
          Title.Caption = 'Refer'#234'ncia'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Titulo'
          Title.Caption = 'T'#237'tulo'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desc_autor'
          Title.Caption = 'Autor'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desc_Editora'
          Title.Caption = 'Editora'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desc_Genero'
          Title.Caption = 'G'#234'nero'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desc_Categoria'
          Title.Caption = 'Categoria'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd_Estoque'
          Title.Caption = 'Quantidade'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Localizacao'
          Title.Caption = 'Localiza'#231#227'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Locavel'
          Title.Caption = 'Loc'#225'vel'
          Width = 70
          Visible = True
        end>
    end
  end
  object rkGlassButton1: TrkGlassButton
    Left = 8
    Top = 499
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
    TabOrder = 2
    TextAlign = taLeft
    OnClick = rkGlassButton1Click
  end
  object rkGlassButton2: TrkGlassButton
    Left = 623
    Top = 499
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
    TabOrder = 3
    TextAlign = taLeft
    OnClick = rkGlassButton2Click
  end
  object qRep_Livros: TQuickRep
    Left = 8
    Top = 552
    Width = 1123
    Height = 794
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
      Top = 128
      Width = 1047
      Height = 39
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        103.187500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object lbl_total: TQRLabel
        Left = 998
        Top = 1
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          2640.541666666667000000
          2.645833333333333000
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
        Top = 19
        Width = 1100
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          50.270833333333330000
          2910.416666666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 2
        Top = 20
        Width = 1047
        Height = 17
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          52.916666666666670000
          2770.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Biblioteca Municipal de Itapu'#237
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
      Width = 1047
      Height = 74
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        195.791666666666700000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object lbl_titulo_relatorio: TQRLabel
        Left = 2
        Top = 37
        Width = 1049
        Height = 17
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          97.895833333333330000
          2775.479166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Rela'#231#227'o de Livros'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 4
        Top = 56
        Width = 40
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          148.166666666666700000
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
      object QRLabel7: TQRLabel
        Left = 60
        Top = 56
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          158.750000000000000000
          148.166666666666700000
          158.750000000000000000)
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
      object QRLabel6: TQRLabel
        Left = 126
        Top = 56
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          333.375000000000000000
          148.166666666666700000
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
      object QRLabel8: TQRLabel
        Left = 991
        Top = 56
        Width = 55
        Height = 15
        Size.Values = (
          39.687500000000000000
          2622.020833333333000000
          148.166666666666700000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Quantidade'
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
      object QRShape2: TQRShape
        Left = 0
        Top = 71
        Width = 1100
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          187.854166666666700000
          2910.416666666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 283
        Top = 56
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          748.770833333333300000
          148.166666666666700000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Autor'
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
        Left = 700
        Top = 56
        Width = 54
        Height = 15
        Size.Values = (
          39.687500000000000000
          1852.083333333333000000
          148.166666666666700000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Categoria'
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
        Left = 433
        Top = 56
        Width = 39
        Height = 15
        Size.Values = (
          39.687500000000000000
          1145.645833333333000000
          148.166666666666700000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Editora'
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
        Left = 560
        Top = 56
        Width = 42
        Height = 15
        Size.Values = (
          39.687500000000000000
          1481.666666666667000000
          148.166666666666700000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'G'#234'nero'
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
        Left = 806
        Top = 56
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          2132.541666666667000000
          148.166666666666700000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Localiza'#231#227'o'
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
        Left = 931
        Top = 56
        Width = 36
        Height = 15
        Size.Values = (
          39.687500000000000000
          2463.270833333333000000
          148.166666666666700000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Status'
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
      object QRLabel1: TQRLabel
        Left = 2
        Top = 8
        Width = 1045
        Height = 23
        Size.Values = (
          60.854166666666670000
          5.291666666666667000
          21.166666666666670000
          2764.895833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Biblioteca Municipal de Itapu'#237
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
      Top = 112
      Width = 1047
      Height = 16
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText7: TQRDBText
        Left = 59
        Top = 0
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          156.104166666666700000
          0.000000000000000000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
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
      object QRDBText6: TQRDBText
        Left = 4
        Top = 0
        Width = 50
        Height = 15
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          0.000000000000000000
          132.291666666666700000)
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
      object QRDBText9: TQRDBText
        Left = 991
        Top = 0
        Width = 50
        Height = 15
        Size.Values = (
          39.687500000000000000
          2622.020833333333000000
          0.000000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Qtd_Estoque'
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
        Left = 125
        Top = 0
        Width = 153
        Height = 15
        Size.Values = (
          39.687500000000000000
          330.729166666666700000
          0.000000000000000000
          404.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
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
      object QRDBText1: TQRDBText
        Left = 284
        Top = 0
        Width = 142
        Height = 15
        Size.Values = (
          39.687500000000000000
          751.416666666666700000
          0.000000000000000000
          375.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Desc_autor'
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
      object QRDBText2: TQRDBText
        Left = 700
        Top = 0
        Width = 81
        Height = 15
        Size.Values = (
          39.687500000000000000
          1852.083333333333000000
          0.000000000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Desc_Categoria'
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
        Left = 434
        Top = 0
        Width = 124
        Height = 15
        Size.Values = (
          39.687500000000000000
          1148.291666666667000000
          0.000000000000000000
          328.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Desc_Editora'
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
        Left = 561
        Top = 0
        Width = 122
        Height = 15
        Size.Values = (
          39.687500000000000000
          1484.312500000000000000
          0.000000000000000000
          322.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Desc_Genero'
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
        Left = 806
        Top = 0
        Width = 105
        Height = 15
        Size.Values = (
          39.687500000000000000
          2132.541666666667000000
          0.000000000000000000
          277.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Localizacao'
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
        Left = 931
        Top = 0
        Width = 33
        Height = 15
        Size.Values = (
          39.687500000000000000
          2463.270833333333000000
          0.000000000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Status'
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
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 775
    Height = 308
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 103
      Width = 74
      Height = 13
      Caption = 'C'#243'digo do Livro'
    end
    object Label4: TLabel
      Left = 12
      Top = 229
      Width = 80
      Height = 13
      Caption = 'Cadastrados de:'
    end
    object Label5: TLabel
      Left = 149
      Top = 229
      Width = 21
      Height = 13
      Caption = 'At'#233':'
    end
    object Label6: TLabel
      Left = 290
      Top = 103
      Width = 26
      Height = 13
      Caption = 'T'#237'tulo'
    end
    object Label7: TLabel
      Left = 291
      Top = 144
      Width = 27
      Height = 13
      Caption = 'Autor'
    end
    object Label8: TLabel
      Left = 10
      Top = 144
      Width = 34
      Height = 13
      Caption = 'Editora'
    end
    object Label9: TLabel
      Left = 645
      Top = 188
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label10: TLabel
      Left = 10
      Top = 188
      Width = 35
      Height = 13
      Caption = 'G'#234'nero'
    end
    object Label11: TLabel
      Left = 290
      Top = 188
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object Label12: TLabel
      Left = 291
      Top = 229
      Width = 37
      Height = 13
      Caption = 'Arm'#225'rio'
    end
    object Label13: TLabel
      Left = 467
      Top = 229
      Width = 23
      Height = 13
      Caption = 'N'#237'vel'
    end
    object Label14: TLabel
      Left = 645
      Top = 229
      Width = 32
      Height = 13
      Caption = 'Tombo'
    end
    object Label2: TLabel
      Left = 139
      Top = 103
      Width = 52
      Height = 13
      Caption = 'Refer'#234'ncia'
    end
    object edt_codigo: TEdit
      Left = 7
      Top = 119
      Width = 126
      Height = 21
      TabOrder = 3
      OnKeyPress = edt_codigoKeyPress
    end
    object edt_data_inicial: TJvDateEdit
      Left = 10
      Top = 244
      Width = 136
      Height = 21
      ShowNullDate = False
      TabOrder = 11
    end
    object edt_data_final: TJvDateEdit
      Left = 149
      Top = 244
      Width = 136
      Height = 21
      ShowNullDate = False
      TabOrder = 12
    end
    object rkGlassButton3: TrkGlassButton
      Left = 7
      Top = 273
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
      TabOrder = 16
      TextAlign = taLeft
      OnClick = rkGlassButton3Click
    end
    object rkGlassButton4: TrkGlassButton
      Left = 622
      Top = 273
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
      TabOrder = 17
      TextAlign = taLeft
      OnClick = rkGlassButton4Click
    end
    object cbx_editora: TDBLookupComboBox
      Left = 9
      Top = 161
      Width = 276
      Height = 21
      TabOrder = 6
    end
    object cbx_autor: TDBLookupComboBox
      Left = 291
      Top = 161
      Width = 475
      Height = 21
      TabOrder = 7
    end
    object cbx_genero: TDBLookupComboBox
      Left = 10
      Top = 202
      Width = 275
      Height = 21
      TabOrder = 8
    end
    object cbx_categoria: TDBLookupComboBox
      Left = 290
      Top = 202
      Width = 348
      Height = 21
      TabOrder = 9
    end
    object edt_referencia: TEdit
      Left = 139
      Top = 119
      Width = 146
      Height = 21
      TabOrder = 4
    end
    object edt_titulo: TEdit
      Left = 290
      Top = 119
      Width = 476
      Height = 21
      TabOrder = 5
    end
    object edt_armario: TEdit
      Left = 290
      Top = 244
      Width = 171
      Height = 21
      TabOrder = 13
    end
    object edt_nivel: TEdit
      Left = 467
      Top = 244
      Width = 172
      Height = 21
      TabOrder = 14
    end
    object edt_tombo: TEdit
      Left = 645
      Top = 244
      Width = 121
      Height = 21
      TabOrder = 15
    end
    object edt_quantidade: TEdit
      Left = 644
      Top = 202
      Width = 122
      Height = 21
      TabOrder = 10
      OnKeyPress = edt_quantidadeKeyPress
    end
    object rdg_ordem: TRadioGroup
      Left = 7
      Top = 6
      Width = 761
      Height = 39
      Caption = 'Ordenar por:'
      Columns = 5
      ItemIndex = 0
      Items.Strings = (
        'T'#237'tulo'
        'Autor'
        'Categoria'
        'G'#234'nero'
        'Editora')
      TabOrder = 0
    end
    object rdg_locavel: TRadioGroup
      Left = 7
      Top = 48
      Width = 375
      Height = 39
      Caption = 'Loc'#225'vel'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Geral'
        'Loc'#225'veis'
        'N'#227'o Loc'#225'veis')
      TabOrder = 1
    end
    object rdg_ativo: TRadioGroup
      Left = 393
      Top = 48
      Width = 375
      Height = 39
      Caption = 'Ativo'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Geral'
        'Ativos'
        'Inativos')
      TabOrder = 2
    end
  end
  object tab_master: TZReadOnlyQuery
    Connection = frm_menu.zconn
    Params = <>
    Left = 512
    Top = 344
  end
  object dts_master: TDataSource
    AutoEdit = False
    DataSet = tab_master
    Left = 592
    Top = 344
  end
end
