object frm_menu: Tfrm_menu
  Left = 0
  Top = 0
  Caption = 'Biblioteca Municipal De Itapui - Sistema de Gerenciamento'
  ClientHeight = 734
  ClientWidth = 1318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = JvMainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object sbar_menu: TStatusBar
    Left = 0
    Top = 715
    Width = 1318
    Height = 19
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Panels = <
      item
        Text = 'Usu'#225'rio:'
        Width = 50
      end
      item
        Width = 200
      end
      item
        Text = 'Status:'
        Width = 50
      end
      item
        Width = 120
      end>
  end
  object zconn: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = ''
    Port = 0
    Database = ''
    User = 'supervisor'
    Password = ''
    Protocol = 'mysql-5'
    Left = 40
    Top = 280
  end
  object JvMainMenu1: TJvMainMenu
    Style = msOffice
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    TextMargin = 12
    Left = 40
    Top = 224
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Livros1: TMenuItem
        AutoHotkeys = maAutomatic
        Caption = 'Livros'
        OnClick = Livros1Click
      end
      object SubCadastros1: TMenuItem
        Caption = 'Sub-Cadastros'
        object livrosCategoria1: TMenuItem
          Caption = 'Livros - Categoria'
          OnClick = livrosCategoria1Click
        end
        object Autores1: TMenuItem
          Caption = 'Livros - Autores'
          OnClick = Autores1Click
        end
        object LivrosEditoras1: TMenuItem
          Caption = 'Livros - Editoras'
          OnClick = LivrosEditoras1Click
        end
        object LivrosGneros1: TMenuItem
          Caption = 'Livros - G'#234'neros'
          OnClick = LivrosGneros1Click
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = Usurios1Click
      end
      object Doadores1: TMenuItem
        Caption = 'Doadores'
        OnClick = Doadores1Click
      end
    end
    object Movimentao1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object SadadeLivros1: TMenuItem
        Caption = 'Loca'#231#227'o de Livros'
        OnClick = SadadeLivros1Click
      end
      object DevoluesdeLivros1: TMenuItem
        Caption = 'Devolu'#231#245'es de Livros'
        OnClick = DevoluesdeLivros1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object DoaesdeLivros1: TMenuItem
        Caption = 'Doa'#231#245'es de Livros'
        OnClick = DoaesdeLivros1Click
      end
    end
    object mnu_Eventos1: TMenuItem
      Caption = 'Eventos'
      object mnu_Eventos2: TMenuItem
        Caption = 'Eventos'
        OnClick = mnu_Eventos2Click
      end
      object mnu_MAteriais1: TMenuItem
        Caption = 'Materiais'
        OnClick = mnu_MAteriais1Click
      end
      object mnu_Colaboradores1: TMenuItem
        Caption = 'Colaboradores'
        OnClick = mnu_Colaboradores1Click
      end
    end
    object RelaesRelatrios1: TMenuItem
      Caption = 'Rela'#231#245'es / Relat'#243'rios'
      object Biblioteca1: TMenuItem
        Caption = 'Biblioteca'
        Enabled = False
      end
      object RelaodeUsurios1: TMenuItem
        Caption = '   Rela'#231#227'o de Usu'#225'rios'
        OnClick = RelaodeUsurios1Click
      end
      object RelaoLivros1: TMenuItem
        Caption = '   Rela'#231#227'o de Livros'
        OnClick = RelaoLivros1Click
      end
      object RelaodeDoadores1: TMenuItem
        Caption = '   Rela'#231#227'o de Doadores'
        OnClick = RelaodeDoadores1Click
      end
      object mnu_livros_mensal: TMenuItem
        Caption = '   Rela'#231#227'o Mensal - Usu'#225'rios/Livros'
        OnClick = mnu_livros_mensalClick
      end
      object RelaodeDoales1: TMenuItem
        Caption = '   Rela'#231#227'o de Doa'#231#245'es'
        OnClick = RelaodeDoales1Click
      end
      object RelaodeLocaes1: TMenuItem
        Caption = '   Rela'#231#227'o de Loca'#231#245'es'
        OnClick = RelaodeLocaes1Click
      end
      object mniEventos1: TMenuItem
        Caption = 'Eventos'
        Enabled = False
      end
    end
    object Mnu_manutencao: TMenuItem
      Caption = 'Sistema'
      object NovoUsurio1: TMenuItem
        Caption = 'Novo Usu'#225'rio'
        OnClick = NovoUsurio1Click
      end
      object ManutenodeDados1: TMenuItem
        Caption = 'Manuten'#231#227'o de Dados'
        OnClick = ManutenodeDados1Click
      end
      object EfetuarBackup1: TMenuItem
        Caption = 'Efetuar Backup'
        OnClick = EfetuarBackup1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
  end
end
