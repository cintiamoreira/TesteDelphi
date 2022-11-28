inherited frmTelaCadastroProdutos: TfrmTelaCadastroProdutos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 341
  ClientWidth = 454
  OnCreate = FormCreate
  ExplicitWidth = 470
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 454
    Height = 277
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 454
    ExplicitHeight = 277
    object lblNome: TLabel
      Left = 98
      Top = 50
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lblValor: TLabel
      Left = 98
      Top = 82
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblQuantidade: TLabel
      Left = 69
      Top = 117
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object lblDataInclusao: TLabel
      Left = 44
      Top = 193
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
      Enabled = False
    end
    object lblDescontoPromocional: TLabel
      Left = 20
      Top = 150
      Width = 105
      Height = 13
      Caption = 'Desconto Promocional'
    end
    object lblDataEdicao: TLabel
      Left = 53
      Top = 227
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
      Enabled = False
    end
    object edtNome: TEdit
      Left = 146
      Top = 42
      Width = 279
      Height = 21
      TabOrder = 0
    end
    object edtValor: TEdit
      Left = 146
      Top = 79
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtQuantidade: TEdit
      Left = 146
      Top = 114
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 2
    end
    object edtDescontoPromocional: TEdit
      Left = 146
      Top = 147
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 3
    end
    object edtInclusao: TEdit
      Left = 146
      Top = 190
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edtEdicao: TEdit
      Left = 146
      Top = 224
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Top = 277
    Width = 454
    ExplicitTop = 277
    ExplicitWidth = 454
    inherited btnOK: TBitBtn
      Left = 101
      Anchors = [akRight, akBottom]
      OnClick = btnOKClick
      ExplicitLeft = 101
    end
    inherited btnCancelar: TBitBtn
      Left = 182
      Anchors = [akRight, akBottom]
      OnClick = btnCancelarClick
      ExplicitLeft = 182
    end
    inherited btnEditar: TBitBtn
      Left = 263
      Anchors = [akRight, akBottom]
      Enabled = True
      OnClick = btnEditarClick
      ExplicitLeft = 263
    end
    inherited btnSair: TBitBtn
      Left = 350
      Anchors = [akRight, akBottom]
      OnClick = btnSairClick
      ExplicitLeft = 350
    end
  end
end
