inherited frl_usuarios: Tfrl_usuarios
  Caption = 'Biblioteca - Rela'#231#227'o de Usu'#225'rios'
  ClientHeight = 424
  ClientWidth = 768
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 774
  ExplicitHeight = 450
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 768
    ExplicitLeft = -1
    ExplicitTop = 0
    ExplicitWidth = 1030
  end
  inherited lbl_titulo: TLabel
    Width = 308
    Caption = 'Biblioteca - Rela'#231#227'o de Usu'#225'rios'
    ExplicitWidth = 308
  end
  object Panel2: TPanel
    Left = 0
    Top = 172
    Width = 768
    Height = 215
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 775
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 766
      Height = 213
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
          FieldName = 'ID'
          Title.Caption = 'C'#243'd.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCompleto'
          Title.Caption = 'Nome Completo'
          Width = 217
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Endereco'
          Title.Caption = 'Endere'#231'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sexo'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Nascto'
          Title.Caption = 'Data Nascto'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telefone'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMail'
          Title.Caption = 'E-Mail'
          Width = 180
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 768
    Height = 131
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 775
    object Bevel1: TBevel
      Left = 7
      Top = 5
      Width = 762
      Height = 90
    end
    object Label1: TLabel
      Left = 16
      Top = 9
      Width = 62
      Height = 13
      Caption = 'C'#243'd. Usu'#225'rio'
    end
    object Label2: TLabel
      Left = 153
      Top = 9
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 461
      Top = 9
      Width = 58
      Height = 13
      Caption = 'Sobre Nome'
    end
    object Label4: TLabel
      Left = 167
      Top = 52
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object Label5: TLabel
      Left = 16
      Top = 52
      Width = 31
      Height = 13
      Caption = 'Status'
    end
    object Label6: TLabel
      Left = 321
      Top = 52
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label8: TLabel
      Left = 555
      Top = 52
      Width = 19
      Height = 13
      Caption = 'Rua'
    end
    object edt_codigo: TEdit
      Left = 17
      Top = 28
      Width = 88
      Height = 21
      TabOrder = 0
      OnChange = edt_codigoChange
      OnKeyPress = edt_codigoKeyPress
    end
    object edt_nome: TEdit
      Left = 153
      Top = 28
      Width = 300
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object edt_sobrenome: TEdit
      Left = 461
      Top = 28
      Width = 300
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object rkGlassButton3: TrkGlassButton
      Left = 18
      Top = 99
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
      TabOrder = 8
      TextAlign = taLeft
      OnClick = rkGlassButton3Click
    end
    object rkGlassButton4: TrkGlassButton
      Left = 619
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
      TabOrder = 9
      TextAlign = taLeft
      OnClick = rkGlassButton4Click
    end
    object cbx_sexo: TComboBox
      Left = 167
      Top = 69
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 5
      Items.Strings = (
        ''
        'Masculino'
        'Feminino')
    end
    object cbx_status: TComboBox
      Left = 16
      Top = 69
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 4
      Items.Strings = (
        ''
        'Ativo'
        'Inativo')
    end
    object edt_bairro: TEdit
      Left = 321
      Top = 69
      Width = 224
      Height = 21
      TabOrder = 6
    end
    object rkGlassButton5: TrkGlassButton
      Left = 109
      Top = 28
      Width = 40
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
    object edt_rua: TEdit
      Left = 555
      Top = 69
      Width = 206
      Height = 21
      TabOrder = 7
    end
  end
  object rkGlassButton1: TrkGlassButton
    Left = 8
    Top = 394
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
    Left = 619
    Top = 393
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
    TabOrder = 2
    TextAlign = taLeft
    OnClick = rkGlassButton2Click
  end
  object qRep_Doacoes: TQuickRep
    Left = 1
    Top = 456
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
      Top = 129
      Width = 1047
      Height = 45
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        119.062500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object lbl_total: TQRLabel
        Left = 999
        Top = 4
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          2643.187500000000000000
          10.583333333333330000
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
        Top = 25
        Width = 1045
        Height = 17
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          66.145833333333330000
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
      object QRShape3: TQRShape
        Left = 0
        Top = 2
        Width = 1046
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          5.291666666666667000
          2767.541666666667000000)
        XLColumn = 0
        Pen.Style = psDot
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 68
      AlignToBottom = False
      BeforePrint = TitleBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        179.916666666666700000
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
        Caption = 'Rela'#231#227'o de Usu'#225'rios'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 8
        Top = 48
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
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
        Left = 59
        Top = 48
        Width = 38
        Height = 17
        Size.Values = (
          44.979166666666670000
          156.104166666666700000
          127.000000000000000000
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
      object QRLabel4: TQRLabel
        Left = 270
        Top = 48
        Width = 61
        Height = 17
        Size.Values = (
          44.979166666666670000
          714.375000000000000000
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
      object QRLabel5: TQRLabel
        Left = 521
        Top = 48
        Width = 76
        Height = 17
        Size.Values = (
          44.979166666666670000
          1378.479166666667000000
          127.000000000000000000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Cidade'
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
      object QRLabel6: TQRLabel
        Left = 652
        Top = 48
        Width = 76
        Height = 17
        Size.Values = (
          44.979166666666670000
          1725.083333333333000000
          127.000000000000000000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Sexo'
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
      object QRLabel7: TQRLabel
        Left = 742
        Top = 48
        Width = 76
        Height = 17
        Size.Values = (
          44.979166666666670000
          1963.208333333333000000
          127.000000000000000000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Data Nascto'
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
      object QRLabel9: TQRLabel
        Left = 838
        Top = 48
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          2217.208333333333000000
          127.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Telefone'
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
      object QRLabel10: TQRLabel
        Left = 915
        Top = 48
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          2420.937500000000000000
          127.000000000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'E-mail'
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
      object QRShape2: TQRShape
        Left = 0
        Top = 67
        Width = 1046
        Height = 1
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          177.270833333333300000
          2767.541666666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 106
      Width = 1047
      Height = 23
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 59
        Top = 3
        Width = 204
        Height = 15
        Size.Values = (
          39.687500000000000000
          156.104166666666700000
          7.937500000000000000
          539.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'NomeCompleto'
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
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          7.937500000000000000
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
        OnPrint = QRDBText1Print
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 270
        Top = 3
        Width = 245
        Height = 15
        Size.Values = (
          39.687500000000000000
          714.375000000000000000
          7.937500000000000000
          648.229166666666700000)
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
      object QRDBText5: TQRDBText
        Left = 521
        Top = 3
        Width = 124
        Height = 15
        Size.Values = (
          39.687500000000000000
          1378.479166666667000000
          7.937500000000000000
          328.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Cidade'
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
        Left = 652
        Top = 3
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          1725.083333333333000000
          7.937500000000000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Sexo'
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
        Left = 742
        Top = 3
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          1963.208333333333000000
          7.937500000000000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Data_Nascto'
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
        Left = 838
        Top = 3
        Width = 74
        Height = 15
        Size.Values = (
          39.687500000000000000
          2217.208333333333000000
          7.937500000000000000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'Telefone'
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
        Left = 916
        Top = 3
        Width = 129
        Height = 15
        Size.Values = (
          39.687500000000000000
          2423.583333333333000000
          7.937500000000000000
          341.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = tab_master
        DataField = 'EMail'
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
    Left = 24
    Top = 240
  end
  object dts_master: TDataSource
    AutoEdit = False
    DataSet = tab_master
    Left = 88
    Top = 240
  end
end
