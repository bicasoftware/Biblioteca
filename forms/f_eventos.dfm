inherited frm_eventos: Tfrm_eventos
  Caption = 'Eventos - Cadastro Eventos'
  ClientHeight = 708
  ExplicitHeight = 736
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    ExplicitLeft = 0
    ExplicitTop = -4
    ExplicitWidth = 1018
  end
  inherited lbl_titulo: TLabel
    Top = 10
    Width = 263
    Caption = 'Eventos - Cadastro Eventos'
    ExplicitTop = 10
    ExplicitWidth = 263
  end
  inherited Panel1: TPanel
    Top = 443
    ExplicitTop = 443
    inherited btn_alterar: TrkGlassButton
      Left = 94
      ExplicitLeft = 94
    end
    inherited btn_apagar: TrkGlassButton
      Left = 183
      ExplicitLeft = 183
    end
    inherited btn_sair: TrkGlassButton
      Left = 913
      ExplicitLeft = 913
    end
    inherited btn_busca: TrkGlassButton
      Left = 272
      ExplicitLeft = 272
    end
    inherited rkGlassButton1: TrkGlassButton
      Left = 361
      ExplicitLeft = 361
    end
  end
  inherited Panel2: TPanel
    Height = 402
    ExplicitHeight = 402
    object pnl1: TPanel
      Left = 2
      Top = 2
      Width = 1014
      Height = 71
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 15
        Top = 15
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 142
        Top = 15
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label3: TLabel
        Left = 559
        Top = 15
        Width = 51
        Height = 13
        Caption = 'Data Inicio'
      end
      object Label4: TLabel
        Left = 695
        Top = 15
        Width = 64
        Height = 13
        Caption = 'Data T'#233'rmino'
      end
      object edt_id: TDBEdit
        Left = 15
        Top = 34
        Width = 121
        Height = 21
        DataField = 'id'
        DataSource = dts_master
        TabOrder = 0
      end
      object edt_Descricao: TDBEdit
        Left = 142
        Top = 34
        Width = 410
        Height = 21
        DataField = 'Descricao'
        DataSource = dts_master
        TabOrder = 1
      end
      object edt_dt_inicio: TJvDBDateEdit
        Left = 559
        Top = 34
        Width = 121
        Height = 21
        DataField = 'Dt_Inicio'
        DataSource = dts_master
        ShowNullDate = False
        TabOrder = 2
      end
      object edt_dt_termino: TJvDBDateEdit
        Left = 695
        Top = 34
        Width = 121
        Height = 21
        DataField = 'Dt_Termino'
        DataSource = dts_master
        ShowNullDate = False
        TabOrder = 3
      end
      object chk_status: TDBCheckBox
        Left = 827
        Top = 36
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Conclu'#237'do'
        DataField = 'Status'
        DataSource = dts_master
        TabOrder = 4
        ValueChecked = '-1'
        ValueUnchecked = '0'
      end
    end
    object grp1: TGroupBox
      Left = 2
      Top = 235
      Width = 1014
      Height = 164
      Align = alTop
      Caption = 'Colaboradores'
      TabOrder = 2
      object btn_add_colaborador: TSpeedButton
        Left = 799
        Top = 34
        Width = 98
        Height = 21
        Caption = 'Adicionar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_add_colaboradorClick
      end
      object btn_rem_colaborador: TSpeedButton
        Left = 900
        Top = 34
        Width = 98
        Height = 21
        Caption = 'Remover'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_rem_colaboradorClick
      end
      object lbl_1: TLabel
        Left = 15
        Top = 18
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object lbl_11: TLabel
        Left = 175
        Top = 18
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label8: TLabel
        Left = 543
        Top = 18
        Width = 63
        Height = 13
        Caption = 'Hor'#225'rio Inicio'
      end
      object Label9: TLabel
        Left = 670
        Top = 18
        Width = 76
        Height = 13
        Caption = 'Hor'#225'rio T'#233'rmino'
      end
      object edt_cod_colaborador: TEdit
        Left = 15
        Top = 34
        Width = 121
        Height = 21
        TabOrder = 0
        OnChange = edt_cod_colaboradorChange
      end
      object edt_desc_colaborador: TEdit
        Left = 175
        Top = 34
        Width = 361
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object btn_1: TrkGlassButton
        Left = 139
        Top = 34
        Width = 33
        Height = 21
        AltFocus = False
        AltRender = False
        Caption = '... '
        Color = clWhite
        ColorDown = clBlack
        ColorFrame = clGray
        DropDownAlignment = paLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GlossyLevel = 37
        GlyphPos = gpLeft
        LightHeight = 27
        ShadowStyle = ssNone
        TabOrder = 1
        TextAlign = taCenter
        OnClick = btn_1Click
      end
      object edt_hora_inicio: TJvTimeEdit
        Left = 543
        Top = 34
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object edt_hora_termino: TJvTimeEdit
        Left = 670
        Top = 34
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object dbg_colaboradores: TJvDBGrid
        Left = 2
        Top = 62
        Width = 1010
        Height = 100
        Align = alBottom
        DataSource = dts_colaboradores
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        AlternateRowColor = clMoneyGreen
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
            Width = 257
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Telefone'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Hora_Inicio'
            Title.Caption = 'Hora Inicio'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Hora_Termino'
            Title.Caption = 'Hora Termino'
            Width = 111
            Visible = True
          end>
      end
    end
    object grp2: TGroupBox
      Left = 2
      Top = 73
      Width = 1014
      Height = 162
      Align = alTop
      Caption = 'Materiais'
      TabOrder = 1
      object btn_add_material: TSpeedButton
        Left = 799
        Top = 32
        Width = 98
        Height = 21
        Caption = 'Adicionar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_add_materialClick
      end
      object btn_rem_material: TSpeedButton
        Left = 900
        Top = 32
        Width = 98
        Height = 21
        Caption = 'Remover'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_rem_materialClick
      end
      object Label5: TLabel
        Left = 16
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label6: TLabel
        Left = 176
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label7: TLabel
        Left = 632
        Top = 16
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object dbg_materiais: TJvDBGrid
        Left = 2
        Top = 60
        Width = 1010
        Height = 100
        Align = alBottom
        DataSource = dts_materiais
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        AlternateRowColor = clMoneyGreen
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 376
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cor'
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Width = 75
            Visible = True
          end>
      end
      object edt_cod_material: TEdit
        Left = 14
        Top = 31
        Width = 121
        Height = 21
        TabOrder = 0
        OnChange = edt_cod_materialChange
      end
      object edt_desc_material: TEdit
        Left = 179
        Top = 32
        Width = 449
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object btn_busca_material: TrkGlassButton
        Left = 140
        Top = 32
        Width = 33
        Height = 21
        AltFocus = False
        AltRender = False
        Caption = '... '
        Color = clWhite
        ColorDown = clBlack
        ColorFrame = clGray
        DropDownAlignment = paLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GlossyLevel = 37
        GlyphPos = gpLeft
        LightHeight = 27
        ShadowStyle = ssNone
        TabOrder = 1
        TextAlign = taCenter
        OnClick = btn_busca_materialClick
      end
      object edt_qtd: TEdit
        Left = 632
        Top = 32
        Width = 161
        Height = 21
        TabOrder = 3
        Text = '1'
        OnKeyPress = edt_qtdKeyPress
      end
    end
  end
  inherited tab_principal: TZQuery
    AfterPost = tab_principalAfterPost
    BeforeDelete = tab_principalBeforeDelete
    OnNewRecord = tab_principalNewRecord
    Left = 32
    Top = 528
  end
  inherited dts_master: TDataSource
    Left = 96
    Top = 528
  end
  inherited pop_opcoes: TPopupMenu
    Left = 152
    Top = 528
  end
  object tab_materiais: TZQuery
    Connection = frm_menu.zconn
    Params = <>
    MasterFields = 'ID'
    MasterSource = dts_master
    LinkedFields = 'ID_Evento'
    Left = 48
    Top = 200
  end
  object dts_materiais: TDataSource
    AutoEdit = False
    DataSet = tab_materiais
    Left = 131
    Top = 200
  end
  object tab_colaboradores: TZQuery
    Connection = frm_menu.zconn
    Params = <>
    MasterFields = 'ID'
    MasterSource = dts_master
    LinkedFields = 'ID_Evento'
    Left = 32
    Top = 384
  end
  object dts_colaboradores: TDataSource
    AutoEdit = False
    DataSet = tab_colaboradores
    Left = 128
    Top = 384
  end
  object cds_materiais: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 200
    object ID_Material: TIntegerField
      FieldName = 'ID_Material'
    end
    object cds_materiaisDescricao: TStringField
      FieldName = 'Descricao'
      Size = 200
    end
    object cds_materiaisQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
  end
  object cds_colaboradores: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 384
    object cds_colaboradoresNome: TStringField
      FieldName = 'Nome'
      Size = 52
    end
    object cds_colaboradoresTelefone: TStringField
      FieldName = 'Telefone'
      Size = 22
    end
    object cds_colaboradoresHora_Inicio: TDateTimeField
      FieldName = 'Hora_Inicio'
    end
    object cds_colaboradoresHora_Termino: TDateTimeField
      FieldName = 'Hora_Termino'
    end
    object cds_colaboradoresID_Colaborador: TIntegerField
      FieldName = 'ID_Colaborador'
    end
  end
end
