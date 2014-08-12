inherited frm_colaboradores: Tfrm_colaboradores
  Caption = 'Eventos - Cadastro de Colaboradores'
  ClientHeight = 383
  ClientWidth = 572
  ExplicitWidth = 578
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 572
    ExplicitWidth = 572
  end
  inherited lbl_titulo: TLabel
    Left = 16
    Top = 8
    Width = 354
    Caption = 'Eventos - Cadastro de Colaboradores'
    ExplicitLeft = 16
    ExplicitTop = 8
    ExplicitWidth = 354
  end
  inherited Panel1: TPanel
    Top = 171
    Width = 572
    Height = 212
    ExplicitTop = 171
    ExplicitWidth = 572
    ExplicitHeight = 212
    inherited btn_salvar: TrkGlassButton
      Top = 9
      ExplicitTop = 9
    end
    inherited btn_alterar: TrkGlassButton
      Top = 9
      ExplicitTop = 9
    end
    inherited btn_apagar: TrkGlassButton
      Top = 9
      ExplicitTop = 9
    end
    inherited btn_sair: TrkGlassButton
      Left = 474
      Top = 9
      TabOrder = 5
      ExplicitLeft = 474
      ExplicitTop = 9
    end
    inherited btn_busca: TrkGlassButton
      Top = 9
      TabOrder = 3
      ExplicitTop = 9
    end
    inherited rkGlassButton1: TrkGlassButton
      Top = 9
      TabOrder = 4
      ExplicitTop = 9
    end
    inherited DBGrid1: TDBGrid
      Top = 49
      Width = 566
      Height = 158
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 281
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Telefone'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sexo'
          Title.Caption = 'Sexo'
          Width = 107
          Visible = True
        end>
    end
  end
  inherited Panel2: TPanel
    Width = 572
    Height = 130
    ExplicitWidth = 572
    ExplicitHeight = 130
    object Label1: TLabel
      Left = 16
      Top = 18
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 144
      Top = 18
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 16
      Top = 59
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label4: TLabel
      Left = 144
      Top = 59
      Width = 29
      Height = 13
      Caption = 'Cargo'
    end
    object lbl_1: TLabel
      Left = 416
      Top = 59
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object chk_Status: TDBCheckBox
      Left = 16
      Top = 103
      Width = 65
      Height = 17
      Caption = 'Ativo'
      DataField = 'Status'
      DataSource = dts_master
      TabOrder = 5
      ValueChecked = '-1'
      ValueUnchecked = '0'
    end
    object edt_codigo: TDBEdit
      Left = 16
      Top = 34
      Width = 121
      Height = 21
      DataField = 'ID'
      DataSource = dts_master
      Enabled = False
      TabOrder = 0
    end
    object edt_nome: TDBEdit
      Left = 143
      Top = 34
      Width = 418
      Height = 21
      DataField = 'Nome'
      DataSource = dts_master
      TabOrder = 1
    end
    object cbx_cargo: TDBLookupComboBox
      Left = 144
      Top = 75
      Width = 266
      Height = 21
      DataField = 'Cargo'
      DataSource = dts_master
      TabOrder = 3
      OnEnter = cbx_cargoEnter
    end
    object edt_telefone: TJvDBMaskEdit
      Left = 16
      Top = 75
      Width = 121
      Height = 21
      DataField = 'Telefone'
      DataSource = dts_master
      MaxLength = 13
      TabOrder = 2
      EditMask = '(99)9999-9999;1;_'
    end
    object cbx_Sexo: TDBComboBox
      Left = 416
      Top = 75
      Width = 145
      Height = 21
      DataField = 'sexo'
      DataSource = dts_master
      Items.Strings = (
        'Feminino'
        'Masculino')
      TabOrder = 4
    end
  end
  inherited tab_principal: TZQuery
    Left = 32
    Top = 320
  end
  inherited dts_master: TDataSource
    Left = 96
    Top = 320
  end
  inherited pop_opcoes: TPopupMenu
    Left = 152
    Top = 320
    object mnu_NovoCargo1: TMenuItem
      Caption = 'Novo Cargo'
      OnClick = mnu_NovoCargo1Click
    end
  end
end
