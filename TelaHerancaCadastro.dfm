object frmTelaHerancaCadastro: TfrmTelaHerancaCadastro
  Left = 0
  Top = 0
  Caption = 'Heran'#231'ca Cadastro'
  ClientHeight = 536
  ClientWidth = 970
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 970
    Height = 472
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -6
    ExplicitHeight = 495
  end
  object Panel2: TPanel
    Left = 0
    Top = 472
    Width = 970
    Height = 64
    Align = alBottom
    TabOrder = 1
    object btnOK: TBitBtn
      Left = 624
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
    end
    object btnCancelar: TBitBtn
      Left = 705
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
    end
    object btnEditar: TBitBtn
      Left = 786
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Editar'
      Enabled = False
      TabOrder = 2
    end
    object btnSair: TBitBtn
      Left = 867
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 3
    end
  end
end
