inherited fqr_relatorio_base: Tfqr_relatorio_base
  Caption = 'fqr_relatorio_base'
  ClientHeight = 209
  ClientWidth = 604
  Scaled = False
  OnShow = FormShow
  ExplicitWidth = 620
  ExplicitHeight = 247
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 408
    Width = 794
    Height = 1123
    AfterPreview = QuickRep1AfterPreview
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
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object SummaryBand1: TQRBand
      Left = 38
      Top = 133
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
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lbl_total'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 22
        Width = 718
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          58.208333333333330000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText3: TQRDBText
        Left = 344
        Top = 27
        Width = 34
        Height = 15
        Size.Values = (
          39.687500000000000000
          910.166666666666700000
          71.437500000000000000
          89.958333333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = tab_empresa
        DataField = 'Campo'
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
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 69
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        182.562500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object lbl_titulo_relatorio: TQRLabel
        Left = 325
        Top = 28
        Width = 102
        Height = 17
        Size.Values = (
          44.979166666666670000
          859.895833333333300000
          74.083333333333330000
          269.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'lbl_titulo_relatorio'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 8
        Top = 49
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          129.645833333333300000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 54
        Top = 49
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          142.875000000000000000
          129.645833333333300000
          92.604166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object v: TQRShape
        Left = 0
        Top = 67
        Width = 718
        Height = 2
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          177.270833333333300000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 107
      Width = 718
      Height = 26
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 54
        Top = 3
        Width = 155
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          7.937500000000000000
          410.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'QRDBText2'
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
        Left = 8
        Top = 3
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          7.937500000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataField = 'QRDBText1'
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
    object QRLabel1: TQRLabel
      Left = 124
      Top = 40
      Width = 559
      Height = 23
      Size.Values = (
        60.854166666666670000
        328.083333333333300000
        105.833333333333300000
        1479.020833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Biblioteca R'#225'pida - Sistema Para Organiza'#231#227'o de Bibliotecas'
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
  end
  object btn_visualizar: TrkGlassButton
    Left = 178
    Top = 151
    Width = 97
    Height = 27
    Caption = 'Visualizar'
    Color = clWhite
    ColorDown = clBlack
    ColorFrame = clGray
    GlossyLevel = 37
    DropDownAlignment = paLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    TabOrder = 1
  end
  object btn_imprimir: TrkGlassButton
    Left = 281
    Top = 151
    Width = 97
    Height = 27
    Caption = 'Imprimir'
    Color = clWhite
    ColorDown = clBlack
    ColorFrame = clGray
    GlossyLevel = 37
    DropDownAlignment = paLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    TabOrder = 2
  end
  object btn_close: TrkGlassButton
    Left = 384
    Top = 151
    Width = 97
    Height = 27
    Caption = 'Sair'
    Color = clWhite
    ColorDown = clBlack
    ColorFrame = clGray
    GlossyLevel = 37
    DropDownAlignment = paLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    TabOrder = 3
    OnClick = btn_closeClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 145
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 4
    ExplicitWidth = 740
  end
  object tab_master: TZQuery
    Connection = frm_menu.zconn
    Params = <>
    Left = 136
    Top = 40
  end
  object dts_master: TDataSource
    AutoEdit = False
    DataSet = tab_master
    Left = 216
    Top = 40
  end
  object tab_empresa: TZQuery
    Params = <>
    Left = 80
    Top = 264
  end
  object dts_empresa: TDataSource
    AutoEdit = False
    DataSet = tab_empresa
    Left = 160
    Top = 264
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 240
    Top = 96
  end
end
