inherited frm_cadastro_livros: Tfrm_cadastro_livros
  Caption = 'Biblioteca - Cadastro de Livros'
  ClientHeight = 547
  ClientWidth = 794
  ExplicitWidth = 800
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited Image1: TImage
    Width = 794
    ExplicitLeft = 0
    ExplicitTop = -6
    ExplicitWidth = 794
  end
  inherited lbl_titulo: TLabel
    Top = 8
    Width = 293
    Caption = 'Biblioteca - Cadastro de Livros'
    ExplicitTop = 8
    ExplicitWidth = 293
  end
  inherited Panel1: TPanel
    Top = 319
    Width = 794
    Height = 228
    ExplicitTop = 319
    ExplicitWidth = 794
    ExplicitHeight = 228
    inherited btn_salvar: TrkGlassButton
      Left = 19
      ExplicitLeft = 19
    end
    inherited btn_alterar: TrkGlassButton
      Left = 107
      ExplicitLeft = 107
    end
    inherited btn_apagar: TrkGlassButton
      Left = 198
      ExplicitLeft = 198
    end
    inherited btn_sair: TrkGlassButton
      Left = 682
      TabOrder = 5
      ExplicitLeft = 682
    end
    inherited btn_busca: TrkGlassButton
      Left = 286
      TabOrder = 3
      OnClick = btn_buscaClick
      ExplicitLeft = 286
    end
    inherited rkGlassButton1: TrkGlassButton
      Left = 375
      TabOrder = 4
      ExplicitLeft = 375
    end
    inherited DBGrid1: TDBGrid
      Width = 788
      Height = 181
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'referencia'
          Title.Caption = 'Refer'#234'ncia'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Titulo'
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desc_Editora'
          Title.Caption = 'Editora'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desc_autor'
          Title.Caption = 'Autor'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desc_Genero'
          Title.Caption = 'G'#234'nero'
          Width = 159
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desc_Categoria'
          Title.Caption = 'Categoria'
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Observacoes'
          Title.Caption = 'Observa'#231#245'es'
          Width = 1024
          Visible = True
        end>
    end
  end
  inherited Panel2: TPanel
    Width = 794
    Height = 278
    ExplicitWidth = 794
    ExplicitHeight = 278
    object Bevel1: TBevel
      Left = 10
      Top = 6
      Width = 775
      Height = 265
    end
    object Label1: TLabel
      Left = 21
      Top = 20
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 101
      Top = 20
      Width = 52
      Height = 13
      Caption = 'Refer'#234'ncia'
    end
    object Label3: TLabel
      Left = 226
      Top = 20
      Width = 26
      Height = 13
      Caption = 'Titulo'
    end
    object Label4: TLabel
      Left = 309
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Autor'
    end
    object Label5: TLabel
      Left = 21
      Top = 64
      Width = 34
      Height = 13
      Caption = 'Editora'
    end
    object Label6: TLabel
      Left = 21
      Top = 108
      Width = 35
      Height = 13
      Caption = 'G'#234'nero'
    end
    object Label7: TLabel
      Left = 640
      Top = 64
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label8: TLabel
      Left = 222
      Top = 108
      Width = 47
      Height = 13
      Caption = 'Categoria'
    end
    object Label10: TLabel
      Left = 21
      Top = 179
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
    end
    object Label11: TLabel
      Left = 497
      Top = 108
      Width = 37
      Height = 13
      Caption = 'Armario'
    end
    object Label12: TLabel
      Left = 681
      Top = 108
      Width = 32
      Height = 13
      Caption = 'Tombo'
    end
    object Label13: TLabel
      Left = 590
      Top = 108
      Width = 23
      Height = 13
      Caption = 'N'#237'vel'
    end
    object lbl_1: TLabel
      Left = 410
      Top = 109
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object DBEdit1: TDBEdit
      Left = 21
      Top = 36
      Width = 73
      Height = 21
      DataField = 'ID'
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 99
      Top = 36
      Width = 121
      Height = 21
      DataField = 'Referencia'
      DataSource = dts_master
      TabOrder = 1
    end
    object edt_titulo: TDBEdit
      Left = 226
      Top = 36
      Width = 543
      Height = 21
      DataField = 'Titulo'
      DataSource = dts_master
      TabOrder = 2
    end
    object cbx_editora: TDBLookupComboBox
      Left = 21
      Top = 79
      Width = 280
      Height = 21
      DataSource = dts_master
      TabOrder = 3
      OnEnter = cbx_editoraEnter
    end
    object cbx_autor: TDBLookupComboBox
      Left = 309
      Top = 79
      Width = 325
      Height = 21
      DataSource = dts_master
      TabOrder = 4
      OnEnter = cbx_autorEnter
    end
    object cbx_genero: TDBLookupComboBox
      Left = 21
      Top = 123
      Width = 193
      Height = 21
      DataSource = dts_master
      TabOrder = 7
      OnEnter = cbx_generoEnter
    end
    object DBEdit4: TDBEdit
      Left = 640
      Top = 79
      Width = 113
      Height = 21
      DataField = 'Qtd_Estoque'
      DataSource = dts_master
      TabOrder = 5
      OnKeyPress = DBEdit4KeyPress
    end
    object cbx_categoria: TDBLookupComboBox
      Left = 221
      Top = 123
      Width = 184
      Height = 21
      DataSource = dts_master
      TabOrder = 8
      OnClick = cbx_categoriaClick
      OnEnter = cbx_categoriaEnter
    end
    object DBMemo1: TDBMemo
      Left = 21
      Top = 195
      Width = 748
      Height = 71
      DataField = 'Observacoes'
      DataSource = dts_master
      TabOrder = 17
    end
    object DBEdit5: TDBEdit
      Left = 496
      Top = 123
      Width = 73
      Height = 21
      DataField = 'Armario'
      DataSource = dts_master
      TabOrder = 10
    end
    object DBEdit6: TDBEdit
      Left = 680
      Top = 123
      Width = 73
      Height = 21
      DataField = 'Tombo'
      DataSource = dts_master
      TabOrder = 14
    end
    object DBEdit7: TDBEdit
      Left = 589
      Top = 123
      Width = 73
      Height = 21
      DataField = 'Nivel'
      DataSource = dts_master
      TabOrder = 12
    end
    object Panel3: TPanel
      Left = 21
      Top = 149
      Width = 748
      Height = 24
      BevelInner = bvLowered
      TabOrder = 16
      object DBCheckBox1: TDBCheckBox
        Left = 685
        Top = 4
        Width = 48
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
        TabOrder = 1
        ValueChecked = '-1'
        ValueUnchecked = '0'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 9
        Top = 4
        Width = 97
        Height = 17
        Caption = 'Loc'#225'vel'
        DataField = 'locavel'
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
    object upd_qtd: TJvUpDown
      Left = 753
      Top = 79
      Width = 16
      Height = 21
      Associate = DBEdit4
      TabOrder = 6
    end
    object upd_armario: TJvUpDown
      Left = 569
      Top = 123
      Width = 16
      Height = 21
      Associate = DBEdit5
      TabOrder = 11
    end
    object upd_nivel: TJvUpDown
      Left = 662
      Top = 123
      Width = 16
      Height = 21
      Associate = DBEdit7
      TabOrder = 13
    end
    object upd_tombo: TJvUpDown
      Left = 753
      Top = 123
      Width = 16
      Height = 21
      Associate = DBEdit6
      TabOrder = 15
    end
    object edt_Ano_Lancamento: TDBEdit
      Left = 411
      Top = 123
      Width = 72
      Height = 21
      DataField = 'Ano_Lancamento'
      DataSource = dts_master
      TabOrder = 9
    end
  end
  inherited tab_principal: TZQuery
    UpdateObject = ZupLivros
    Left = 312
    Top = 384
  end
  inherited dts_master: TDataSource
    Left = 376
    Top = 384
  end
  inherited pop_opcoes: TPopupMenu
    Left = 456
    Top = 384
    object NovaCategoria1: TMenuItem
      Caption = 'Nova Categoria'
      OnClick = NovaCategoria1Click
    end
    object NovaEditora1: TMenuItem
      Caption = 'Nova Editora'
      OnClick = NovaEditora1Click
    end
    object NovoGnero1: TMenuItem
      Caption = 'Novo G'#234'nero'
      OnClick = NovoGnero1Click
    end
    object NovoAutor1: TMenuItem
      Caption = 'Novo Autor'
      OnClick = NovoAutor1Click
    end
  end
  object ZupLivros: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 312
    Top = 440
  end
end
