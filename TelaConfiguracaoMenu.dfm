object frmTelaConfiguracaoMenu: TfrmTelaConfiguracaoMenu
  Left = 0
  Top = 0
  Caption = 'Configura'#231#245'es'
  ClientHeight = 536
  ClientWidth = 461
  Color = 15202559
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    461
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
    Left = 208
    Top = 63
    Width = 126
    Height = 16
    Caption = 'APLICAR DESCONTO'
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
  object btnAplicarDesconto: TButton
    Tag = 1
    Left = 354
    Top = 60
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
  end
  object btnCadastrarEmail: TButton
    Left = 354
    Top = 146
    Width = 75
    Height = 25
    Caption = 'CADASTRAR'
    TabOrder = 2
    OnClick = btnCadastrarEmailClick
  end
  object btnSair: TButton
    Left = 354
    Top = 492
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'SAIR'
    TabOrder = 1
    OnClick = btnSairClick
    ExplicitTop = 438
  end
  object pnlPlanoDeFundo: TPanel
    Left = 18
    Top = 184
    Width = 427
    Height = 41
    TabOrder = 3
    object lblMudarPlanoFundo: TLabel
      Left = 159
      Top = 12
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
    object btnBuscarImagem: TButton
      Left = 336
      Top = 9
      Width = 75
      Height = 25
      Caption = 'BUSCAR'
      TabOrder = 0
      OnClick = btnBuscarImagemClick
    end
  end
  object pnlProgramaBandeja: TPanel
    Left = 16
    Top = 91
    Width = 429
    Height = 41
    TabOrder = 4
    object lblProgramaBandeja: TLabel
      Left = 107
      Top = 12
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
    object btnProgramaBandeja: TButton
      Tag = 2
      Left = 338
      Top = 9
      Width = 75
      Height = 25
      Caption = 'APLICAR'
      TabOrder = 0
      OnClick = btnProgramaBandejaClick
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'JPG files|*.jpg'
    Left = 48
    Top = 32
  end
end
