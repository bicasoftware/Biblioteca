inherited frm_sub_cadastro: Tfrm_sub_cadastro
  Caption = 'frm_sub_cadastro'
  ClientHeight = 356
  ClientWidth = 634
  OnCreate = FormCreate
  ExplicitWidth = 640
  ExplicitHeight = 382
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 634
    ExplicitWidth = 634
  end
  inherited Panel1: TPanel
    Top = 97
    Width = 634
    Height = 259
    ExplicitTop = 97
    ExplicitWidth = 634
    ExplicitHeight = 259
    inherited btn_salvar: TrkGlassButton
      Left = 11
      ExplicitLeft = 11
    end
    inherited btn_alterar: TrkGlassButton
      Left = 99
      ExplicitLeft = 99
    end
    inherited btn_apagar: TrkGlassButton
      Left = 190
      ExplicitLeft = 190
    end
    inherited btn_sair: TrkGlassButton
      Left = 530
      ExplicitLeft = 530
    end
    inherited btn_busca: TrkGlassButton
      Left = 278
      OnClick = btn_buscaClick
      ExplicitLeft = 278
    end
    inherited rkGlassButton1: TrkGlassButton
      Left = 367
      ExplicitLeft = 367
    end
    inherited DBGrid1: TDBGrid
      Width = 628
      Height = 212
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Caption = 'C'#243'digo'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 472
          Visible = True
        end>
    end
  end
  inherited Panel2: TPanel
    Width = 634
    Height = 56
    ExplicitWidth = 634
    ExplicitHeight = 56
    object Label1: TLabel
      Left = 13
      Top = 10
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 124
      Top = 10
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object DBEdit1: TDBEdit
      Left = 13
      Top = 26
      Width = 105
      Height = 21
      DataField = 'ID'
      DataSource = dts_master
      Enabled = False
      TabOrder = 0
    end
    object edt_descricao: TDBEdit
      Left = 124
      Top = 26
      Width = 493
      Height = 21
      DataField = 'Descricao'
      DataSource = dts_master
      TabOrder = 1
      OnKeyUp = edt_descricaoKeyUp
    end
  end
  inherited pop_opcoes: TPopupMenu
    Left = 560
    Top = 200
  end
end
