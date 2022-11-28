inherited frmTelaCadastroFuncionarios: TfrmTelaCadastroFuncionarios
  Caption = 'Cadastro de Funcionarios'
  ClientHeight = 341
  ClientWidth = 474
  OnCreate = FormCreate
  ExplicitWidth = 490
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 474
    Height = 277
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 454
    ExplicitHeight = 277
    object lblNomeCompleto: TLabel
      Left = 50
      Top = 40
      Width = 75
      Height = 13
      Caption = 'Nome Completo'
    end
    object lblCPF: TLabel
      Left = 98
      Top = 82
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object lblSenha: TLabel
      Left = 87
      Top = 117
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object lblDataInclusao: TLabel
      Left = 44
      Top = 193
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
      Enabled = False
    end
    object lblDataEdicao: TLabel
      Left = 53
      Top = 227
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
      Enabled = False
    end
    object edtNomeCompleto: TEdit
      Left = 146
      Top = 37
      Width = 299
      Height = 21
      TabOrder = 0
    end
    object edtCPF: TEdit
      Left = 146
      Top = 79
      Width = 167
      Height = 21
      TabOrder = 1
    end
    object edtSenha: TEdit
      Left = 146
      Top = 114
      Width = 167
      Height = 21
      NumbersOnly = True
      PasswordChar = '*'
      TabOrder = 2
    end
    object edtInclusao: TEdit
      Left = 146
      Top = 190
      Width = 167
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object edtEdicao: TEdit
      Left = 146
      Top = 224
      Width = 167
      Height = 21
      Enabled = False
      TabOrder = 4
    end
  end
  inherited Panel2: TPanel
    Top = 277
    Width = 474
    ExplicitTop = 277
    ExplicitWidth = 454
    inherited btnOK: TBitBtn
      Left = 121
      Anchors = [akRight, akBottom]
      OnClick = btnOKClick
      ExplicitLeft = 101
    end
    inherited btnCancelar: TBitBtn
      Left = 202
      Anchors = [akRight, akBottom]
      OnClick = btnCancelarClick
      ExplicitLeft = 182
    end
    inherited btnEditar: TBitBtn
      Left = 283
      Anchors = [akRight, akBottom]
      Enabled = True
      OnClick = btnEditarClick
      ExplicitLeft = 263
    end
    inherited btnSair: TBitBtn
      Left = 370
      Anchors = [akRight, akBottom]
      OnClick = btnSairClick
      ExplicitLeft = 350
    end
  end
end
