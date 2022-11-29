object frmTelaConfiguracaoMenu: TfrmTelaConfiguracaoMenu
  Left = 0
  Top = 0
  Caption = 'Configura'#231#245'es'
  ClientHeight = 536
  ClientWidth = 464
  Color = 15202559
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    464
    536)
  PixelsPerInch = 96
  TextHeight = 13
  object imgBackground: TImage
    Left = 18
    Top = 255
    Width = 427
    Height = 210
    Center = True
    Stretch = True
  end
  object lblAplicarDesconto: TLabel
    Left = 18
    Top = 60
    Width = 236
    Height = 16
    Caption = 'LIBERAR DESCONTO PARA PRODUTOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10053171
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCadastrarEmail: TLabel
    Left = 75
    Top = 149
    Width = 259
    Height = 16
    Caption = 'CADASTRO DE EMAIL PARA RELAT'#211'RIOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10053171
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblStatusDesconto: TLabel
    Left = 324
    Top = 24
    Width = 105
    Height = 13
    Alignment = taRightJustify
    Caption = 'STATUS DESCONTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1508736
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 35
    Top = 100
    Width = 211
    Height = 16
    Caption = 'DEIXAR PROGRAMA NA BANDEJA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10053171
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 167
    Top = 194
    Width = 157
    Height = 16
    Caption = 'MUDAR PLANO DE FUNDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10053171
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnAplicarDescontos: TButton
    Tag = 1
    Left = 265
    Top = 57
    Width = 75
    Height = 25
    Caption = 'LIBERAR'
    TabOrder = 0
    OnClick = btnAplicarDescontosClick
  end
  object btnCadastrarEmail: TButton
    Left = 354
    Top = 146
    Width = 75
    Height = 25
    Caption = 'CADASTRAR'
    TabOrder = 5
    OnClick = btnCadastrarEmailClick
  end
  object btnSair: TButton
    Left = 357
    Top = 492
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'SAIR'
    TabOrder = 4
    OnClick = btnSairClick
    ExplicitLeft = 354
  end
  object btnRetirarDescontos: TButton
    Tag = 1
    Left = 354
    Top = 57
    Width = 75
    Height = 25
    Caption = 'RETIRAR'
    TabOrder = 1
    OnClick = btnRetirarDescontosClick
  end
  object btnMostrarProgramaBandeja: TButton
    Tag = 2
    Left = 266
    Top = 97
    Width = 75
    Height = 25
    Caption = 'MOSTRAR'
    TabOrder = 2
    OnClick = btnMostrarProgramaBandejaClick
  end
  object btnEsconderProgramaBandeja: TButton
    Tag = 2
    Left = 354
    Top = 97
    Width = 75
    Height = 25
    Caption = 'ESCONDER'
    TabOrder = 3
    OnClick = btnEsconderProgramaBandejaClick
  end
  object Button3: TButton
    Left = 354
    Top = 191
    Width = 75
    Height = 25
    Caption = 'BUSCAR'
    TabOrder = 6
    OnClick = btnBuscarImagemClick
  end
  object OpenDialog1: TOpenDialog
    Filter = 'JPG files|*.jpg'
    Left = 40
    Top = 16
  end
end
