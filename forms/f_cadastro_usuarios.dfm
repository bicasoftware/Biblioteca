inherited frm_cadastro_usuarios: Tfrm_cadastro_usuarios
  Caption = 'Biblioteca - Cadastro de Usu'#225'rios'
  ClientHeight = 530
  ClientWidth = 733
  ExplicitWidth = 739
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 733
    ExplicitWidth = 736
  end
  inherited lbl_titulo: TLabel
    Width = 318
    Caption = 'Biblioteca - Cadastro de Usu'#225'rios'
    ExplicitWidth = 318
  end
  inherited Panel1: TPanel
    Top = 314
    Width = 733
    Height = 216
    ExplicitTop = 314
    ExplicitWidth = 733
    ExplicitHeight = 216
    inherited btn_salvar: TrkGlassButton
      Left = 14
      ExplicitLeft = 14
    end
    inherited btn_alterar: TrkGlassButton
      Left = 100
      ExplicitLeft = 100
    end
    inherited btn_apagar: TrkGlassButton
      Left = 191
      ExplicitLeft = 191
    end
    inherited btn_sair: TrkGlassButton
      Left = 627
      ExplicitLeft = 627
    end
    inherited btn_busca: TrkGlassButton
      Left = 279
      OnClick = btn_buscaClick
      ExplicitLeft = 279
    end
    inherited rkGlassButton1: TrkGlassButton
      Left = 368
      ExplicitLeft = 368
    end
    inherited DBGrid1: TDBGrid
      Top = 39
      Width = 727
      Height = 172
    end
  end
  inherited Panel2: TPanel
    Width = 733
    Height = 273
    ExplicitWidth = 733
    ExplicitHeight = 273
    object Label1: TLabel
      Left = 111
      Top = 9
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = edtnome
    end
    object Label2: TLabel
      Left = 351
      Top = 9
      Width = 55
      Height = 13
      Caption = 'SobreNome'
      FocusControl = edtsobrenome
    end
    object Label3: TLabel
      Left = 595
      Top = 9
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object Label5: TLabel
      Left = 16
      Top = 137
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = edtcidade
    end
    object Label6: TLabel
      Left = 16
      Top = 97
      Width = 19
      Height = 13
      Caption = 'Rua'
      FocusControl = edtrua
    end
    object Label7: TLabel
      Left = 224
      Top = 97
      Width = 37
      Height = 13
      Caption = 'Numero'
      FocusControl = edtnumero
    end
    object Label8: TLabel
      Left = 307
      Top = 97
      Width = 65
      Height = 13
      Caption = 'Complemento'
      FocusControl = edtcomplemento
    end
    object Código: TLabel
      Left = 16
      Top = 9
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label9: TLabel
      Left = 503
      Top = 97
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = edtbairro
    end
    object Label10: TLabel
      Left = 16
      Top = 54
      Width = 14
      Height = 13
      Caption = 'RG'
      FocusControl = edtrg
    end
    object Label4: TLabel
      Left = 111
      Top = 54
      Width = 81
      Height = 13
      Caption = 'Data Nascimento'
    end
    object Label11: TLabel
      Left = 224
      Top = 54
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label12: TLabel
      Left = 351
      Top = 54
      Width = 33
      Height = 13
      Caption = 'Celular'
    end
    object Label13: TLabel
      Left = 471
      Top = 54
      Width = 28
      Height = 13
      Caption = 'E-mail'
    end
    object Label14: TLabel
      Left = 16
      Top = 177
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
    end
    object Label15: TLabel
      Left = 307
      Top = 136
      Width = 74
      Height = 13
      Caption = 'Tipo de Usu'#225'rio'
    end
    object edtcomplemento: TDBEdit
      Left = 307
      Top = 111
      Width = 192
      Height = 21
      DataField = 'Complemento'
      DataSource = dts_master
      TabOrder = 11
    end
    object edtnome: TDBEdit
      Left = 111
      Top = 26
      Width = 236
      Height = 21
      DataField = 'Nome'
      DataSource = dts_master
      TabOrder = 1
    end
    object edtsobrenome: TDBEdit
      Left = 351
      Top = 26
      Width = 238
      Height = 21
      DataField = 'SobreNome'
      DataSource = dts_master
      TabOrder = 2
    end
    object edtcidade: TDBEdit
      Left = 16
      Top = 151
      Width = 285
      Height = 21
      DataField = 'Cidade'
      DataSource = dts_master
      TabOrder = 13
    end
    object edtrua: TDBEdit
      Left = 16
      Top = 111
      Width = 200
      Height = 21
      DataField = 'Rua'
      DataSource = dts_master
      TabOrder = 9
    end
    object edtnumero: TDBEdit
      Left = 224
      Top = 111
      Width = 77
      Height = 21
      DataField = 'Numero_Casa'
      DataSource = dts_master
      TabOrder = 10
    end
    object DBEdit7: TDBEdit
      Left = 16
      Top = 26
      Width = 89
      Height = 21
      DataField = 'ID'
      DataSource = dts_master
      Enabled = False
      TabOrder = 0
    end
    object edtbairro: TDBEdit
      Left = 503
      Top = 111
      Width = 211
      Height = 21
      DataField = 'Bairro'
      DataSource = dts_master
      TabOrder = 12
    end
    object edtrg: TDBEdit
      Left = 16
      Top = 71
      Width = 89
      Height = 21
      DataField = 'RG'
      DataSource = dts_master
      TabOrder = 4
    end
    object JvDBDateEdit1: TJvDBDateEdit
      Left = 111
      Top = 71
      Width = 105
      Height = 21
      DataField = 'Data_Nascto'
      DataSource = dts_master
      ShowNullDate = False
      TabOrder = 5
    end
    object edttelefone: TJvDBMaskEdit
      Left = 225
      Top = 71
      Width = 122
      Height = 21
      DataField = 'Telefone'
      DataSource = dts_master
      MaxLength = 13
      TabOrder = 6
      EditMask = '(99)9999-9999'
    end
    object edtcelular: TJvDBMaskEdit
      Left = 351
      Top = 71
      Width = 117
      Height = 21
      DataField = 'Celular'
      DataSource = dts_master
      MaxLength = 13
      TabOrder = 7
      EditMask = '(99)9999-9999'
    end
    object edtemail: TDBEdit
      Left = 471
      Top = 71
      Width = 243
      Height = 21
      DataField = 'Email'
      DataSource = dts_master
      TabOrder = 8
    end
    object mm_observacoes: TDBMemo
      Left = 16
      Top = 192
      Width = 698
      Height = 75
      DataField = 'Observacoes'
      DataSource = dts_master
      TabOrder = 16
    end
    object cbx_sexo: TDBComboBox
      Left = 595
      Top = 26
      Width = 119
      Height = 21
      DataField = 'Sexo'
      DataSource = dts_master
      Items.Strings = (
        'Masculino'
        'Feminino')
      TabOrder = 3
    end
    object DBCheckBox1: TDBCheckBox
      Left = 642
      Top = 153
      Width = 72
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Ativo'
      DataField = 'Status'
      DataSource = dts_master
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      ValueChecked = '-1'
      ValueUnchecked = '0'
    end
    object cbx_usuarios: TDBLookupComboBox
      Left = 307
      Top = 151
      Width = 192
      Height = 21
      DataField = 'Tipo_Usuario'
      DataSource = dts_master
      TabOrder = 14
      OnEnter = cbx_usuariosEnter
    end
  end
  inherited tab_principal: TZQuery
    UpdateObject = Zup_usuarios
    Left = 152
    Top = 368
  end
  inherited dts_master: TDataSource
    Left = 200
    Top = 368
  end
  inherited pop_opcoes: TPopupMenu
    Left = 440
    Top = 400
    object NovoTipoUsurio1: TMenuItem
      Caption = 'Novo - Tipo Usu'#225'rio'
      OnClick = NovoTipoUsurio1Click
    end
  end
  object Zup_usuarios: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 96
    Top = 368
  end
end
