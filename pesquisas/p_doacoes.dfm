inherited frl_doacoes: Tfrl_doacoes
  Caption = 'Biblioteca - Rela'#231#227'o de Doa'#231#245'es'
  ClientHeight = 447
  ClientWidth = 774
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 780
  ExplicitHeight = 473
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 774
    ExplicitWidth = 784
  end
  inherited lbl_titulo: TLabel
    Width = 305
    Caption = 'Biblioteca - Rela'#231#227'o de Doa'#231#245'es'
    ExplicitWidth = 305
  end
  object Panel2: TPanel
    Left = 0
    Top = 129
    Width = 774
    Height = 114
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 777
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 772
      Height = 112
      Align = alClient
      DataSource = dts_master
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
          FieldName = 'Codigo_Doacao'
          Title.Caption = 'Codigo da Doa'#231#227'o'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Doador'
          Width = 265
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Doacao'
          Title.Caption = 'Data da Doa'#231#227'o'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Funcionario'
          Title.Caption = 'Respons'#225'vel'
          Width = 138
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 774
    Height = 88
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 777
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 87
      Height = 13
      Caption = 'C'#243'digo da Doa'#231#227'o'
    end
    object Label2: TLabel
      Left = 144
      Top = 6
      Width = 35
      Height = 13
      Caption = 'Doador'
    end
    object Label3: TLabel
      Left = 357
      Top = 6
      Width = 61
      Height = 13
      Caption = 'Respons'#225'vel'
    end
    object Label4: TLabel
      Left = 516
      Top = 6
      Width = 55
      Height = 13
      Caption = 'Doados de:'
    end
    object Label5: TLabel
      Left = 643
      Top = 6
      Width = 21
      Height = 13
      Caption = 'At'#233':'
    end
    object edt_codigo_doacao: TEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt_doador: TEdit
      Left = 144
      Top = 24
      Width = 207
      Height = 21
      TabOrder = 1
    end
    object edt_responsavel: TEdit
      Left = 357
      Top = 24
      Width = 154
      Height = 21
      TabOrder = 2
    end
    object edt_data_inicial: TJvDateEdit
      Left = 516
      Top = 24
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 3
    end
    object edt_data_final: TJvDateEdit
      Left = 643
      Top = 24
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 4
    end
    object rkGlassButton3: TrkGlassButton
      Left = 18
      Top = 54
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
      TabOrder = 5
      TextAlign = taLeft
      OnClick = rkGlassButton3Click
    end
    object rkGlassButton4: TrkGlassButton
      Left = 619
      Top = 54
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
      TabOrder = 6
      TextAlign = taLeft
      OnClick = rkGlassButton4Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 243
    Width = 774
    Height = 166
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 777
    object JvDBGrid2: TJvDBGrid
      Left = 1
      Top = 1
      Width = 772
      Height = 164
      Align = alClient
      DataSource = dts_slave
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      AlternateRowColor = clInfoBk
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
          FieldName = 'referencia'
          Title.Caption = 'Refer'#234'ncia'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Titulo'
          Title.Caption = 'Livro'
          Width = 403
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Visible = True
        end>
    end
  end
  object rkGlassButton1: TrkGlassButton
    Left = 8
    Top = 415
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
    Left = 621
    Top = 415
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
    Top = 472
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
      Height = 40
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object lbl_total: TQRLabel
        Left = 673
        Top = 3
        Width = 44
        Height = 15
        Size.Values = (
          39.687500000000000000
          1780.645833333333000000
          7.937500000000000000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'lbl_total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = lbl_totalPrint
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 18
        Width = 718
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          47.625000000000000000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 0
        Top = 20
        Width = 718
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          52.916666666666670000
          1899.708333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Biblioteca Municipal de Itapui'
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
      Height = 68
      AlignToBottom = False
      BeforePrint = TitleBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        179.916666666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = True
      BandType = rbTitle
      object lbl_titulo_relatorio: TQRLabel
        Left = 0
        Top = 28
        Width = 718
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          74.083333333333330000
          1899.708333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Rela'#231#227'o de Doa'#231#245'es'
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
        Left = 418
        Top = 49
        Width = 69
        Height = 17
        Size.Values = (
          44.979166666666670000
          1105.958333333333000000
          129.645833333333300000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data_Doa'#231#227'o'
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
        Left = 542
        Top = 49
        Width = 171
        Height = 17
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          129.645833333333300000
          452.437500000000000000)
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
      Top = 106
      Width = 718
      Height = 40
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 54
        Top = 2
        Width = 354
        Height = 15
        Size.Values = (
          39.687500000000000000
          142.875000000000000000
          5.291666666666667000
          936.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Doador'
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
        Top = 2
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          5.291666666666667000
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
        Left = 417
        Top = 2
        Width = 118
        Height = 15
        Size.Values = (
          39.687500000000000000
          1103.312500000000000000
          5.291666666666667000
          312.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Data_Doacao'
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
        Left = 541
        Top = 2
        Width = 172
        Height = 15
        Size.Values = (
          39.687500000000000000
          1431.395833333333000000
          5.291666666666667000
          455.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Funcionario'
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
      object QRShape2: TQRShape
        Left = 0
        Top = 18
        Width = 718
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          47.625000000000000000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 212
        Top = 21
        Width = 32
        Height = 15
        Size.Values = (
          39.687500000000000000
          560.916666666666700000
          55.562500000000000000
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
        Top = 21
        Width = 60
        Height = 15
        Size.Values = (
          39.687500000000000000
          248.708333333333300000
          55.562500000000000000
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
      object QRLabel8: TQRLabel
        Left = 636
        Top = 21
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          1682.750000000000000000
          55.562500000000000000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
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
      object QRLabel9: TQRLabel
        Left = 7
        Top = 21
        Width = 40
        Height = 15
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          55.562500000000000000
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
      object QRShape3: TQRShape
        Left = 0
        Top = 37
        Width = 718
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          97.895833333333330000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRLabel1: TQRLabel
      Left = 317
      Top = 40
      Width = 272
      Height = 23
      Size.Values = (
        60.854166666666670000
        838.729166666666700000
        105.833333333333300000
        719.666666666666700000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
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
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 146
      Width = 718
      Height = 16
      AfterPrint = QRSubDetail1AfterPrint
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
        Top = -1
        Width = 81
        Height = 15
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          -2.645833333333333000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_slave
        DataField = 'ID_Livro'
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
        Top = -1
        Width = 112
        Height = 15
        Size.Values = (
          39.687500000000000000
          248.708333333333300000
          -2.645833333333333000
          296.333333333333300000)
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
        Left = 212
        Top = -1
        Width = 333
        Height = 15
        Size.Values = (
          39.687500000000000000
          560.916666666666700000
          -2.645833333333333000
          881.062500000000000000)
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
        Left = 636
        Top = 0
        Width = 76
        Height = 15
        Size.Values = (
          39.687500000000000000
          1682.750000000000000000
          0.000000000000000000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_slave
        DataField = 'Quantidade'
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
    Left = 48
    Top = 160
  end
  object tab_slave: TZReadOnlyQuery
    Connection = frm_menu.zconn
    Params = <>
    MasterFields = 'ID'
    MasterSource = dts_master
    LinkedFields = 'ID_Doacao'
    Left = 712
    Top = 280
  end
  object dts_slave: TDataSource
    AutoEdit = False
    DataSet = tab_slave
    Left = 712
    Top = 344
  end
  object dts_master: TDataSource
    AutoEdit = False
    DataSet = tab_master
    Left = 112
    Top = 168
  end
end
