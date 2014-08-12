inherited frm_cadastro_livros: Tfrm_cadastro_livros
  Caption = 'Biblioteca - Cadastro de Livros'
  ClientHeight = 715
  ClientWidth = 1038
  OnActivate = FormActivate
  ExplicitWidth = 1044
  ExplicitHeight = 746
  PixelsPerInch = 120
  TextHeight = 17
  inherited Image1: TImage
    Width = 1038
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 1038
  end
  inherited lbl_titulo: TLabel
    Top = 10
    Width = 354
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Biblioteca - Cadastro de Livros'
    ExplicitTop = 10
    ExplicitWidth = 354
  end
  inherited Panel1: TPanel
    Top = 417
    Width = 1038
    Height = 298
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitTop = 417
    ExplicitWidth = 1038
    ExplicitHeight = 298
    inherited btn_salvar: TrkGlassButton
      Left = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 25
    end
    inherited btn_alterar: TrkGlassButton
      Left = 140
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 140
    end
    inherited btn_apagar: TrkGlassButton
      Left = 259
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 259
    end
    inherited btn_sair: TrkGlassButton
      Left = 892
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 5
      ExplicitLeft = 892
    end
    inherited btn_busca: TrkGlassButton
      Left = 374
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 3
      OnClick = btn_buscaClick
      ExplicitLeft = 374
    end
    inherited rkGlassButton1: TrkGlassButton
      Left = 490
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      TabOrder = 4
      ExplicitLeft = 490
    end
    inherited DBGrid1: TDBGrid
      Top = 56
      Width = 1032
      Height = 237
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
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
    Width = 1038
    Height = 363
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitWidth = 1038
    ExplicitHeight = 363
    object Label1: TLabel
      Left = 27
      Top = 26
      Width = 43
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 132
      Top = 26
      Width = 63
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Refer'#234'ncia'
    end
    object Label3: TLabel
      Left = 296
      Top = 26
      Width = 33
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Titulo'
    end
    object Label4: TLabel
      Left = 435
      Top = 84
      Width = 34
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Autor'
    end
    object Label5: TLabel
      Left = 27
      Top = 84
      Width = 43
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Editora'
    end
    object Label6: TLabel
      Left = 27
      Top = 141
      Width = 44
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'G'#234'nero'
    end
    object Label7: TLabel
      Left = 837
      Top = 84
      Width = 70
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Quantidade'
    end
    object Label8: TLabel
      Left = 282
      Top = 141
      Width = 58
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Categoria'
    end
    object Label10: TLabel
      Left = 27
      Top = 234
      Width = 79
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Observa'#231#245'es'
    end
    object Label11: TLabel
      Left = 650
      Top = 141
      Width = 47
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Armario'
    end
    object Label12: TLabel
      Left = 891
      Top = 141
      Width = 44
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Tombo'
    end
    object Label13: TLabel
      Left = 772
      Top = 141
      Width = 28
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'N'#237'vel'
    end
    object lbl_1: TLabel
      Left = 536
      Top = 143
      Width = 24
      Height = 17
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Ano'
    end
    object DBEdit1: TDBEdit
      Left = 27
      Top = 47
      Width = 96
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'ID'
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 129
      Top = 47
      Width = 159
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Referencia'
      DataSource = dts_master
      TabOrder = 1
    end
    object edt_titulo: TDBEdit
      Left = 296
      Top = 47
      Width = 710
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Titulo'
      DataSource = dts_master
      TabOrder = 2
    end
    object edt_quantidade: TDBEdit
      Left = 837
      Top = 103
      Width = 148
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Qtd_Estoque'
      DataSource = dts_master
      TabOrder = 5
      OnKeyPress = edt_quantidadeKeyPress
    end
    object DBMemo1: TDBMemo
      Left = 27
      Top = 255
      Width = 979
      Height = 93
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Observacoes'
      DataSource = dts_master
      TabOrder = 17
    end
    object DBEdit5: TDBEdit
      Left = 649
      Top = 161
      Width = 95
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Armario'
      DataSource = dts_master
      TabOrder = 10
    end
    object DBEdit6: TDBEdit
      Left = 889
      Top = 161
      Width = 96
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Tombo'
      DataSource = dts_master
      TabOrder = 14
    end
    object DBEdit7: TDBEdit
      Left = 770
      Top = 161
      Width = 96
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Nivel'
      DataSource = dts_master
      TabOrder = 12
    end
    object Panel3: TPanel
      Left = 27
      Top = 195
      Width = 979
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BevelInner = bvLowered
      TabOrder = 16
      object DBCheckBox1: TDBCheckBox
        Left = 896
        Top = 5
        Width = 63
        Height = 22
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taLeftJustify
        Caption = 'Ativo'
        DataField = 'Status'
        DataSource = dts_master
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ValueChecked = '-1'
        ValueUnchecked = '0'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 12
        Top = 5
        Width = 127
        Height = 22
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Loc'#225'vel'
        DataField = 'locavel'
        DataSource = dts_master
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueChecked = '-1'
        ValueUnchecked = '0'
      end
    end
    object upd_qtd: TJvUpDown
      Left = 985
      Top = 103
      Width = 20
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Associate = edt_quantidade
      TabOrder = 6
    end
    object upd_armario: TJvUpDown
      Left = 744
      Top = 161
      Width = 20
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Associate = DBEdit5
      TabOrder = 11
    end
    object upd_nivel: TJvUpDown
      Left = 866
      Top = 161
      Width = 20
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Associate = DBEdit7
      TabOrder = 13
    end
    object upd_tombo: TJvUpDown
      Left = 985
      Top = 161
      Width = 20
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Associate = DBEdit6
      TabOrder = 15
    end
    object edt_Ano_Lancamento: TDBEdit
      Left = 537
      Top = 161
      Width = 95
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Ano_Lancamento'
      DataSource = dts_master
      TabOrder = 9
    end
    object cbx_editora: TJvDBLookupCombo
      Left = 27
      Top = 103
      Width = 393
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Editora'
      DataSource = dts_master
      TabOrder = 3
      OnEnter = cbx_editoraEnter
      OnKeyUp = cbx_editoraKeyUp
    end
    object cbx_autor: TJvDBLookupCombo
      Left = 435
      Top = 103
      Width = 393
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Autor'
      DataSource = dts_master
      TabOrder = 4
      OnEnter = cbx_autorEnter
      OnKeyUp = cbx_autorKeyUp
    end
    object cbx_genero: TJvDBLookupCombo
      Left = 27
      Top = 161
      Width = 245
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Genero'
      DataSource = dts_master
      TabOrder = 7
      OnEnter = cbx_generoEnter
      OnKeyUp = cbx_generoKeyUp
    end
    object cbx_categoria: TJvDBLookupCombo
      Left = 282
      Top = 161
      Width = 245
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataField = 'Categoria'
      DataSource = dts_master
      TabOrder = 8
      OnEnter = cbx_categoriaEnter
      OnKeyUp = cbx_categoriaKeyUp
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
