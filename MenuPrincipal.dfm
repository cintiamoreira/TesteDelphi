object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 535
  ClientWidth = 794
  Color = 14739951
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object mainPrincipal: TMainMenu
    Left = 720
    Top = 48
    object menuMenu: TMenuItem
      Caption = 'MENU'
      object menuConfiguracao: TMenuItem
        Caption = 'Configura'#231#227'o'
      end
    end
    object menuCadastros: TMenuItem
      Caption = 'CADASTROS'
      object menuCadastrosProdutos: TMenuItem
        Caption = 'Produtos'
        OnClick = menuCadastrosProdutosClick
      end
      object menuCadastrosClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = menuCadastrosClientesClick
      end
      object menuCadastrosPedidos: TMenuItem
        Caption = 'Pedidos'
        OnClick = menuCadastrosPedidosClick
      end
    end
    object menuFuncionarios: TMenuItem
      Caption = 'FUNCION'#193'RIOS'
      OnClick = menuFuncionariosClick
    end
    object menuRelatorios: TMenuItem
      Caption = 'RELAT'#211'RIOS'
      object menuRelatoriosProdutos: TMenuItem
        Caption = 'Relat'#243'rio de Produtos'
        OnClick = menuRelatoriosProdutosClick
      end
      object menuRelatoriosPedidos: TMenuItem
        Caption = 'Relat'#243'rio de Pedidos'
        OnClick = menuRelatoriosPedidosClick
      end
      object menuRelatorioProdutosData: TMenuItem
        Caption = 'FILTRO Relat'#243'rio de Produtos por DATA'
        OnClick = menuRelatorioProdutosDataClick
      end
      object menuRelatorioPedidosData: TMenuItem
        Caption = 'FILTRO Relat'#243'rio de Pedidos por DATA'
        OnClick = menuRelatorioPedidosDataClick
      end
    end
  end
end
