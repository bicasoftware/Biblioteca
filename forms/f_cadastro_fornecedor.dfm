inherited frm_cadastro_doadores: Tfrm_cadastro_doadores
  Caption = 'Biblioteca - Cadastro de Doadores'
  ClientHeight = 480
  ClientWidth = 779
  Position = poScreenCenter
  ExplicitWidth = 785
  ExplicitHeight = 509
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 779
    ExplicitWidth = 794
  end
  inherited lbl_titulo: TLabel
    Width = 325
    Caption = 'Biblioteca - Cadastro de Doadores'
    ExplicitWidth = 325
  end
  inherited Panel1: TPanel
    Top = 215
    Width = 779
    ExplicitTop = 215
    ExplicitWidth = 779
    inherited btn_sair: TrkGlassButton
      Left = 681
      ExplicitLeft = 681
    end
    inherited btn_busca: TrkGlassButton
      OnClick = btn_buscaClick
    end
    inherited DBGrid1: TDBGrid
      Width = 773
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'ID'
          Title.Caption = 'C'#243'digo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SobreNome'
          Title.Caption = 'Sobrenome'
          Width = 151
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telefone'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Celular'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Rua'
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero_Casa'
          Title.Caption = 'N'#176
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro'
          Width = 225
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Complemento'
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Width = 202
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sexo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Nascto'
          Title.Caption = 'Data de Nascimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RG'
          Visible = True
        end>
    end
    object DBListBox1: TDBListBox
      Left = 96
      Top = -128
      Width = 121
      Height = 97
      ItemHeight = 13
      TabOrder = 7
    end
    object JvDBDateEdit2: TJvDBDateEdit
      Left = 432
      Top = -176
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 8
    end
    object JvDBDateEdit3: TJvDBDateEdit
      Left = 424
      Top = -176
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 9
    end
  end
  inherited Panel2: TPanel
    Width = 779
    Height = 174
    ExplicitWidth = 779
    ExplicitHeight = 174
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 113
      Top = 8
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 473
      Top = 8
      Width = 54
      Height = 13
      Caption = 'Sobrenome'
    end
    object Label4: TLabel
      Left = 16
      Top = 51
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object Label5: TLabel
      Left = 16
      Top = 132
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label6: TLabel
      Left = 356
      Top = 92
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label7: TLabel
      Left = 15
      Top = 92
      Width = 19
      Height = 13
      Caption = 'Rua'
    end
    object Label8: TLabel
      Left = 276
      Top = 92
      Width = 12
      Height = 13
      Caption = 'N'#186
    end
    object TLabel
      Left = 64
      Top = 360
      Width = 3
      Height = 13
    end
    object Label10: TLabel
      Left = 178
      Top = 51
      Width = 14
      Height = 13
      Caption = 'RG'
    end
    object Label11: TLabel
      Left = 356
      Top = 51
      Width = 96
      Height = 13
      Caption = 'Data de Nascimento'
    end
    object Label13: TLabel
      Left = 471
      Top = 51
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label9: TLabel
      Left = 614
      Top = 92
      Width = 65
      Height = 13
      Caption = 'Complemento'
    end
    object Label14: TLabel
      Left = 615
      Top = 51
      Width = 33
      Height = 13
      Caption = 'Celular'
    end
    object DBEdit1: TDBEdit
      Left = 14
      Top = 24
      Width = 91
      Height = 21
      DataField = 'ID'
      DataSource = dts_master
      Enabled = False
      TabOrder = 0
    end
    object edt_Nome: TDBEdit
      Left = 111
      Top = 24
      Width = 354
      Height = 21
      DataField = 'Nome'
      DataSource = dts_master
      TabOrder = 1
    end
    object edt_Sobrenome: TDBEdit
      Left = 471
      Top = 24
      Width = 295
      Height = 21
      DataField = 'SobreNome'
      DataSource = dts_master
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 175
      Top = 67
      Width = 175
      Height = 21
      DataField = 'RG'
      DataSource = dts_master
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 356
      Top = 108
      Width = 252
      Height = 21
      DataField = 'Bairro'
      DataSource = dts_master
      MaxLength = 30
      TabOrder = 10
    end
    object DBEdit8: TDBEdit
      Left = 615
      Top = 108
      Width = 154
      Height = 21
      DataField = 'Complemento'
      DataSource = dts_master
      MaxLength = 20
      TabOrder = 11
    end
    object DBEdit9: TDBEdit
      Left = 14
      Top = 108
      Width = 255
      Height = 21
      DataField = 'Rua'
      DataSource = dts_master
      MaxLength = 30
      TabOrder = 8
    end
    object cbx_sexo: TDBComboBox
      Left = 14
      Top = 67
      Width = 155
      Height = 21
      Style = csDropDownList
      DataField = 'Sexo'
      DataSource = dts_master
      Items.Strings = (
        'masculino'
        'feminino')
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 275
      Top = 108
      Width = 75
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Numero_Casa'
      DataSource = dts_master
      TabOrder = 9
      OnKeyPress = DBEdit2KeyPress
    end
    object edt_telefone: TDBEdit
      Left = 471
      Top = 67
      Width = 135
      Height = 21
      DataField = 'Telefone'
      DataSource = dts_master
      MaxLength = 14
      TabOrder = 6
    end
    object DBEdit10: TDBEdit
      Left = 614
      Top = 67
      Width = 154
      Height = 21
      DataField = 'Celular'
      DataSource = dts_master
      MaxLength = 14
      TabOrder = 7
    end
    object JvDBDateEdit4: TJvDBDateEdit
      Left = 356
      Top = 67
      Width = 109
      Height = 21
      DataField = 'Data_Nascto'
      DataSource = dts_master
      ShowNullDate = False
      TabOrder = 5
    end
    object edt_cidade: TDBEdit
      Left = 14
      Top = 146
      Width = 254
      Height = 21
      DataField = 'Cidade'
      DataSource = dts_master
      TabOrder = 12
    end
    object Panel3: TPanel
      Left = 614
      Top = 143
      Width = 154
      Height = 26
      BevelInner = bvLowered
      TabOrder = 13
      object chb_status: TDBCheckBox
        Left = 58
        Top = 7
        Width = 54
        Height = 13
        Alignment = taLeftJustify
        Caption = 'Ativo'
        DataField = 'status'
        DataSource = dts_master
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueChecked = '-1'
        ValueUnchecked = '0'
      end
    end
  end
  inherited tab_principal: TZQuery
    Left = 616
    Top = 208
  end
  inherited dts_master: TDataSource
    Left = 552
  end
  inherited pop_opcoes: TPopupMenu
    Left = 696
    Top = 376
  end
end
