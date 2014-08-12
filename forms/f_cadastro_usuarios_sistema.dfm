inherited frm_cadastro_usuarios_sistema: Tfrm_cadastro_usuarios_sistema
  Caption = 'Biblioteca - Cadastro de Usu'#225'rios do Sistema'
  ClientHeight = 363
  ClientWidth = 553
  ExplicitWidth = 559
  ExplicitHeight = 392
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 553
    ExplicitWidth = 652
  end
  inherited lbl_titulo: TLabel
    Width = 430
    Caption = 'Biblioteca - Cadastro de Usu'#225'rios do Sistema'
    ExplicitWidth = 430
  end
  inherited Panel1: TPanel
    Top = 194
    Width = 553
    Height = 169
    ExplicitTop = 102
    ExplicitWidth = 652
    ExplicitHeight = 169
    inherited btn_salvar: TrkGlassButton
      Left = 10
      ExplicitLeft = 10
    end
    inherited btn_alterar: TrkGlassButton
      Left = 99
      ExplicitLeft = 99
    end
    inherited btn_apagar: TrkGlassButton
      Left = 188
      ExplicitLeft = 188
    end
    inherited btn_sair: TrkGlassButton
      Left = 455
      ExplicitLeft = 455
    end
    inherited btn_busca: TrkGlassButton
      Left = 277
      ExplicitLeft = 277
    end
    inherited rkGlassButton1: TrkGlassButton
      Left = 366
      ExplicitLeft = 366
    end
    inherited DBGrid1: TDBGrid
      Top = 40
      Width = 547
      Height = 124
      Columns = <
        item
          Expanded = False
          FieldName = 'Login'
          Width = 326
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nivel'
          Title.Caption = 'N'#237'vel'
          Visible = True
        end>
    end
  end
  inherited Panel2: TPanel
    Width = 553
    Height = 153
    ExplicitWidth = 652
    ExplicitHeight = 61
    object Bevel1: TBevel
      Left = 11
      Top = 11
      Width = 532
      Height = 131
    end
    object Label1: TLabel
      Left = 22
      Top = 22
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 23
      Top = 68
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object Label3: TLabel
      Left = 214
      Top = 68
      Width = 84
      Height = 13
      Caption = 'Confirmar Senha:'
    end
    object Label4: TLabel
      Left = 406
      Top = 68
      Width = 23
      Height = 13
      Caption = 'N'#237'vel'
    end
    object Label5: TLabel
      Left = 287
      Top = 22
      Width = 29
      Height = 13
      Caption = 'Login:'
    end
    object edt_nome: TDBEdit
      Left = 22
      Top = 38
      Width = 245
      Height = 21
      DataField = 'Nome'
      DataSource = dts_master
      TabOrder = 0
    end
    object edt_senha: TDBEdit
      Left = 22
      Top = 84
      Width = 185
      Height = 21
      DataField = 'Senha'
      DataSource = dts_master
      PasswordChar = '*'
      TabOrder = 1
    end
    object cbx_confirmar: TDBComboBox
      Left = 406
      Top = 84
      Width = 124
      Height = 21
      DataField = 'Nivel'
      DataSource = dts_master
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
      TabOrder = 3
    end
    object edt_confirmar_senha: TEdit
      Left = 214
      Top = 84
      Width = 185
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
      Text = 'edt_confirmar_senha'
    end
    object edt_login: TDBEdit
      Left = 285
      Top = 38
      Width = 245
      Height = 21
      DataField = 'Login'
      DataSource = dts_master
      TabOrder = 4
    end
  end
  inherited tab_principal: TZQuery
    Left = 480
    Top = 296
  end
  inherited dts_master: TDataSource
    Left = 544
    Top = 296
  end
  inherited pop_opcoes: TPopupMenu
    Left = 416
    Top = 296
  end
end
