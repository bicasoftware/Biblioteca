inherited frl_doadores: Tfrl_doadores
  Caption = 'Biblioteca - Rela'#231#227'o de Doadores'
  ClientHeight = 357
  ClientWidth = 775
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 781
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 775
    ExplicitWidth = 784
  end
  inherited lbl_titulo: TLabel
    Width = 315
    Caption = 'Biblioteca - Rela'#231#227'o de Doadores'
    ExplicitWidth = 315
  end
  object Panel2: TPanel
    Left = 0
    Top = 205
    Width = 775
    Height = 114
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 771
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 773
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
          FieldName = 'ID'
          Title.Caption = 'C'#243'digo'
          Width = 105
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
          FieldName = 'Endereco'
          Title.Caption = 'Endere'#231'o'
          Width = 306
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          Width = 70
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 775
    Height = 164
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 771
    object Label1: TLabel
      Left = 16
      Top = 46
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 126
      Top = 46
      Width = 35
      Height = 13
      Caption = 'Doador'
    end
    object Label3: TLabel
      Left = 18
      Top = 85
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object TLabel
      Left = 329
      Top = 85
      Width = 19
      Height = 13
      Caption = 'Rua'
    end
    object Label5: TLabel
      Left = 675
      Top = 85
      Width = 12
      Height = 13
      Caption = 'N'#176
    end
    object edt_codigo: TEdit
      Left = 17
      Top = 62
      Width = 79
      Height = 21
      TabOrder = 2
      OnChange = edt_codigoChange
      OnKeyPress = edt_codigoKeyPress
    end
    object edt_doador: TEdit
      Left = 126
      Top = 62
      Width = 534
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object rkGlassButton3: TrkGlassButton
      Left = 16
      Top = 129
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
      TabOrder = 9
      TextAlign = taLeft
      OnClick = rkGlassButton3Click
    end
    object rkGlassButton4: TrkGlassButton
      Left = 619
      Top = 129
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
      TabOrder = 10
      TextAlign = taLeft
      OnClick = rkGlassButton4Click
    end
    object Panel3: TPanel
      Left = 675
      Top = 62
      Width = 89
      Height = 21
      BevelInner = bvLowered
      TabOrder = 5
      object chk_status: TCheckBox
        Left = 21
        Top = 2
        Width = 96
        Height = 17
        Caption = 'Ativo'
        TabOrder = 0
      end
    end
    object rkGlassButton5: TrkGlassButton
      Left = 99
      Top = 62
      Width = 25
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
      TabOrder = 3
      TextAlign = taLeft
      OnClick = rkGlassButton5Click
    end
    object edt_rua: TEdit
      Left = 329
      Top = 101
      Width = 331
      Height = 21
      TabOrder = 7
    end
    object edt_bairro: TEdit
      Left = 17
      Top = 101
      Width = 301
      Height = 21
      TabOrder = 6
    end
    object edt_numero: TEdit
      Left = 675
      Top = 101
      Width = 89
      Height = 21
      TabOrder = 8
    end
    object rdg_ordem: TRadioGroup
      Left = 17
      Top = 6
      Width = 448
      Height = 36
      Caption = 'Ordem de Emiss'#227'o'
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Ende'#231'o'
        'Ativo')
      TabOrder = 0
    end
    object rdg_status: TRadioGroup
      Left = 483
      Top = 6
      Width = 281
      Height = 36
      Caption = 'Status'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Geral'
        'Ativos'
        'Inativos')
      TabOrder = 1
    end
  end
  object rkGlassButton1: TrkGlassButton
    Left = 8
    Top = 324
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
    Left = 621
    Top = 324
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
  object qRep_Doadores: TQuickRep
    Left = 8
    Top = 373
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
    PagesInPreview = 1
    PreviewLeft = 0
    PreviewTop = 0
    object SummaryBand1: TQRBand
      Left = 38
      Top = 127
      Width = 718
      Height = 43
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        113.770833333333300000
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
        Left = 0
        Top = 21
        Width = 718
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          55.562500000000000000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 0
        Top = 23
        Width = 718
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          60.854166666666670000
          1899.708333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Biblioteca Municipal de Itapu'#237
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
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
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        179.916666666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object lbl_titulo_relatorio: TQRLabel
        Left = 0
        Top = 26
        Width = 719
        Height = 17
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          68.791666666666670000
          1902.354166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Rela'#231#227'o de Doadores'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 6
        Top = 48
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          127.000000000000000000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 80
        Top = 47
        Width = 38
        Height = 17
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          124.354166666666700000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 641
        Top = 48
        Width = 40
        Height = 17
        Size.Values = (
          44.979166666666670000
          1695.979166666667000000
          127.000000000000000000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Status'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 367
        Top = 48
        Width = 61
        Height = 17
        Size.Values = (
          44.979166666666670000
          971.020833333333300000
          127.000000000000000000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Endere'#231'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 65
        Width = 1100
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          171.979166666666700000
          2910.416666666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 0
        Top = 1
        Width = 719
        Height = 23
        Size.Values = (
          60.854166666666670000
          0.000000000000000000
          2.645833333333333000
          1902.354166666667000000)
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
      Top = 106
      Width = 718
      Height = 21
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 79
        Top = 3
        Width = 281
        Height = 16
        Size.Values = (
          42.333333333333330000
          209.020833333333300000
          7.937500000000000000
          743.479166666666700000)
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
        Top = 3
        Width = 67
        Height = 16
        Size.Values = (
          42.333333333333330000
          18.520833333333330000
          7.937500000000000000
          177.270833333333300000)
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
      object QRDBText5: TQRDBText
        Left = 640
        Top = 3
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          7.937500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Status'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 366
        Top = 3
        Width = 267
        Height = 16
        Size.Values = (
          42.333333333333330000
          968.375000000000000000
          7.937500000000000000
          706.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Endereco'
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
    Top = 200
  end
  object dts_master: TDataSource
    AutoEdit = False
    DataSet = tab_master
    Left = 112
    Top = 200
  end
  object tab_busca: TZReadOnlyQuery
    Connection = frm_menu.zconn
    Params = <>
    Left = 176
    Top = 200
  end
end
