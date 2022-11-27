inherited frmTelaCadastroClientes: TfrmTelaCadastroClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 457
  ClientWidth = 581
  OnCreate = FormCreate
  ExplicitWidth = 597
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 581
    Height = 393
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 581
    ExplicitHeight = 393
    object lblNome: TLabel
      Left = 67
      Top = 43
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lblValor: TLabel
      Left = 75
      Top = 118
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'CPF'
    end
    object lblCEP: TLabel
      Left = 296
      Top = 118
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object lblDataInclusao: TLabel
      Left = 13
      Top = 265
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
    end
    object lblDescontoPromocional: TLabel
      Left = 49
      Top = 177
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o'
    end
    object lblDataEdicao: TLabel
      Left = 22
      Top = 307
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
    end
    object lblSobrenome: TLabel
      Left = 40
      Top = 80
      Width = 54
      Height = 13
      Caption = 'Sobrenome'
    end
    object lblTelefone: TLabel
      Left = 52
      Top = 222
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Telefone'
    end
    object lblCelular: TLabel
      Left = 282
      Top = 222
      Width = 33
      Height = 13
      Caption = 'Celular'
    end
    object edtNome: TEdit
      Left = 127
      Top = 40
      Width = 321
      Height = 21
      TabOrder = 0
    end
    object edtSobrenome: TEdit
      Left = 127
      Top = 77
      Width = 321
      Height = 21
      TabOrder = 1
    end
    object edtDataInclusao: TEdit
      Left = 128
      Top = 262
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object edtDataEdicao: TEdit
      Left = 127
      Top = 304
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object mskCpf: TMaskEdit
      Left = 128
      Top = 115
      Width = 118
      Height = 21
      EditMask = '999.999.999.99;0;_'
      MaxLength = 14
      TabOrder = 2
      Text = ''
    end
    object edtEndereco: TEdit
      Left = 128
      Top = 174
      Width = 316
      Height = 21
      TabOrder = 4
    end
    object edtTelefone: TEdit
      Left = 128
      Top = 219
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object edtCelular: TEdit
      Left = 332
      Top = 219
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object mskCEP: TMaskEdit
      Left = 332
      Top = 115
      Width = 120
      Height = 21
      EditMask = '99999-999;1;_'
      MaxLength = 9
      TabOrder = 3
      Text = '     -   '
      OnExit = mskCEPExit
    end
  end
  inherited Panel2: TPanel
    Top = 393
    Width = 581
    ExplicitTop = 393
    ExplicitWidth = 581
    inherited btnOK: TBitBtn
      Left = 251
      Anchors = [akRight, akBottom]
      OnClick = btnOKClick
      ExplicitLeft = 251
    end
    inherited btnCancelar: TBitBtn
      Left = 332
      Anchors = [akRight, akBottom]
      OnClick = btnCancelarClick
      ExplicitLeft = 332
    end
    inherited btnEditar: TBitBtn
      Left = 411
      Anchors = [akRight, akBottom]
      OnClick = btnEditarClick
      ExplicitLeft = 411
    end
    inherited btnSair: TBitBtn
      Left = 494
      Anchors = [akRight, akBottom]
      OnClick = btnSairClick
      ExplicitLeft = 494
    end
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://viacep.com.br/ws'
    Params = <>
    Left = 184
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Resource = '60415580/json'
    Response = RESTResponse1
    Left = 96
  end
  object RESTResponse1: TRESTResponse
    Left = 8
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = MemTable
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = Rich
    Left = 392
  end
  object MemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    Left = 264
  end
end
