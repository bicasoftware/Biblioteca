inherited frm_materiais: Tfrm_materiais
  Caption = 'Eventos - Cadastro de Materiais'
  ClientHeight = 428
  ClientWidth = 680
  ExplicitWidth = 686
  ExplicitHeight = 456
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 680
    ExplicitWidth = 680
  end
  inherited lbl_titulo: TLabel
    Width = 304
    Caption = 'Eventos - Cadastro de Materiais'
    ExplicitWidth = 304
  end
  inherited Panel1: TPanel
    Top = 216
    Width = 680
    Height = 212
    ExplicitTop = 216
    ExplicitWidth = 680
    ExplicitHeight = 212
    inherited btn_sair: TrkGlassButton
      Left = 586
      ExplicitLeft = 586
    end
    inherited DBGrid1: TDBGrid
      Width = 674
      Height = 165
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 379
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data_Cadastro'
          Title.Caption = 'Data de Cadastro'
          Width = 122
          Visible = True
        end>
    end
  end
  inherited Panel2: TPanel
    Width = 680
    Height = 175
    ExplicitWidth = 680
    ExplicitHeight = 175
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 144
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 447
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object Label4: TLabel
      Left = 16
      Top = 61
      Width = 17
      Height = 13
      Caption = 'Cor'
    end
    object lbl_observacao: TLabel
      Left = 16
      Top = 103
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
    end
    object Label5: TLabel
      Left = 279
      Top = 61
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object edt_codigo: TDBEdit
      Left = 16
      Top = 32
      Width = 121
      Height = 21
      DataField = 'id'
      DataSource = dts_master
      Enabled = False
      TabOrder = 0
    end
    object edt_descricao: TDBEdit
      Left = 144
      Top = 32
      Width = 296
      Height = 21
      DataField = 'Descricao'
      DataSource = dts_master
      TabOrder = 1
    end
    object mm_obs: TDBMemo
      Left = 16
      Top = 119
      Width = 657
      Height = 46
      DataField = 'Obs'
      DataSource = dts_master
      TabOrder = 2
    end
    object cbx_categoria: TDBLookupComboBox
      Left = 447
      Top = 32
      Width = 226
      Height = 21
      DataField = 'Categoria'
      DataSource = dts_master
      TabOrder = 3
      OnEnter = cbx_categoriaEnter
    end
    object cbx_cor: TDBLookupComboBox
      Left = 16
      Top = 77
      Width = 257
      Height = 21
      DataField = 'Cor'
      DataSource = dts_master
      TabOrder = 4
      OnEnter = cbx_corEnter
    end
    object cbx_fornecedor: TDBLookupComboBox
      Left = 279
      Top = 77
      Width = 266
      Height = 21
      DataField = 'Fornecedor'
      DataSource = dts_master
      TabOrder = 5
    end
    object chk_status: TDBCheckBox
      Left = 576
      Top = 80
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Ativo'
      DataField = 'Status'
      DataSource = dts_master
      TabOrder = 6
      ValueChecked = '-1'
      ValueUnchecked = '0'
    end
  end
  inherited tab_principal: TZQuery
    Left = 40
    Top = 296
  end
  inherited dts_master: TDataSource
    Left = 96
    Top = 296
  end
  inherited pop_opcoes: TPopupMenu
    Left = 144
    Top = 296
    object mnu_NovaCor1: TMenuItem
      Caption = 'Nova Cor'
      OnClick = mnu_NovaCor1Click
    end
    object mnu_Categoria1: TMenuItem
      Caption = 'Categoria'
      OnClick = mnu_Categoria1Click
    end
  end
end
