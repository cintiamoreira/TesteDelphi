object frmTelaHerancaListagem: TfrmTelaHerancaListagem
  Left = 0
  Top = 0
  Caption = 'Tela heranca'
  ClientHeight = 511
  ClientWidth = 902
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdListagem: TDBGrid
    Left = 0
    Top = 0
    Width = 902
    Height = 470
    Align = alClient
    DataSource = dtsListagem
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 470
    Width = 902
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnCadastrar: TBitBtn
      Left = 576
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 0
    end
    object btnEditar: TBitBtn
      Left = 657
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
    end
    object btnDeletar: TBitBtn
      Left = 738
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 2
    end
    object btnFechar: TBitBtn
      Left = 819
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 3
    end
  end
  object dtsListagem: TDataSource
    DataSet = qryListagem
    Left = 744
    Top = 54
  end
  object qryListagem: TZQuery
    Params = <>
    Left = 632
    Top = 64
  end
end
