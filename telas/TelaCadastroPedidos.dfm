inherited frmTelaCadastroPedidos: TfrmTelaCadastroPedidos
  Caption = 'Cadastro de Pedidos'
  ClientHeight = 482
  ClientWidth = 1112
  OnCreate = FormCreate
  ExplicitWidth = 1128
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 285
    Width = 1112
    Height = 133
    ExplicitLeft = 0
    ExplicitTop = 285
    ExplicitWidth = 1112
    ExplicitHeight = 133
    object lblQuantidade: TLabel
      Left = 910
      Top = 51
      Width = 83
      Height = 13
      Caption = 'Quantidade Total'
      Enabled = False
    end
    object lblValorTotalDesconto: TLabel
      Left = 466
      Top = 52
      Width = 99
      Height = 13
      Caption = 'Valor Total Desconto'
      Enabled = False
    end
    object lblDescontoPromocional: TLabel
      Left = 715
      Top = 51
      Width = 51
      Height = 13
      Caption = 'Valor Total'
      Enabled = False
    end
    object lblDataInclusao: TLabel
      Left = 86
      Top = 51
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
      Enabled = False
    end
    object lblDataEdicao: TLabel
      Left = 95
      Top = 86
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
      Enabled = False
    end
    object lblClienteSelecionado: TLabel
      Left = 298
      Top = 6
      Width = 96
      Height = 13
      Caption = 'Cliente selecionado:'
    end
    object lblProdutoSelecionado: TLabel
      Left = 780
      Top = 5
      Width = 101
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = 'Produto selecionado:'
    end
    object edtValorTotalDesconto: TEdit
      Left = 445
      Top = 71
      Width = 120
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object edtValorTotal: TEdit
      Left = 647
      Top = 71
      Width = 119
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object edtDataInclusao: TEdit
      Left = 191
      Top = 45
      Width = 112
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object edtDataEdicao: TEdit
      Left = 192
      Top = 83
      Width = 111
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edtQuantidadeTotal: TEdit
      Left = 872
      Top = 71
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnCalcular: TBitBtn
      Left = 1005
      Top = 67
      Width = 75
      Height = 25
      Caption = 'Calcular'
      Enabled = False
      TabOrder = 5
      OnClick = btnCalcularClick
    end
  end
  inherited Panel2: TPanel
    Top = 418
    Width = 1112
    ExplicitTop = 418
    ExplicitWidth = 1112
    inherited btnOK: TBitBtn
      Left = 766
      Anchors = [akRight, akBottom]
      OnClick = btnOKClick
      ExplicitLeft = 766
    end
    inherited btnCancelar: TBitBtn
      Left = 847
      Anchors = [akRight, akBottom]
      ExplicitLeft = 847
    end
    inherited btnEditar: TBitBtn
      Left = 928
      Anchors = [akRight, akBottom]
      Enabled = True
      OnClick = btnEditarClick
      ExplicitLeft = 928
    end
    inherited btnSair: TBitBtn
      Left = 1009
      Anchors = [akRight, akBottom]
      OnClick = btnSairClick
      ExplicitLeft = 1009
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1112
    Height = 285
    Align = alTop
    TabOrder = 2
    object grdProdutos: TDBGrid
      Left = 423
      Top = 1
      Width = 688
      Height = 283
      Align = alRight
      DataSource = dtsProdutos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = grdProdutosCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desconto_promocional'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_inclusao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_edicao'
          Visible = True
        end>
    end
    object grdClientes: TDBGrid
      Left = 1
      Top = 1
      Width = 416
      Height = 283
      Align = alLeft
      DataSource = dtsCliente
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = grdClientesCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sobrenome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'celular'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_inclusao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_edicao'
          Visible = True
        end>
    end
  end
  object queryClientes: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'select * from clientes')
    Params = <>
    Left = 136
    Top = 40
    object queryClientesid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object queryClientesnome: TWideStringField
      DisplayLabel = 'NOME'
      FieldName = 'nome'
    end
    object queryClientessobrenome: TWideStringField
      DisplayLabel = 'SOBRENOME'
      FieldName = 'sobrenome'
    end
    object queryClientescpf: TWideStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Size = 11
    end
    object queryClientesendereco: TWideStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'endereco'
      Size = 50
    end
    object queryClientescep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 8
    end
    object queryClientestelefone: TWideStringField
      DisplayLabel = 'TELEFONE'
      FieldName = 'telefone'
      Size = 11
    end
    object queryClientescelular: TWideStringField
      DisplayLabel = 'CELULAR'
      FieldName = 'celular'
      Size = 11
    end
    object queryClientesdata_inclusao: TDateTimeField
      DisplayLabel = 'DATA DE INCLUS'#195'O'
      FieldName = 'data_inclusao'
    end
    object queryClientesdata_edicao: TDateTimeField
      DisplayLabel = 'DATA DE EDI'#199#195'O'
      FieldName = 'data_edicao'
    end
  end
  object dtsCliente: TDataSource
    DataSet = queryClientes
    Left = 200
    Top = 40
  end
  object dtsProdutos: TDataSource
    DataSet = queryProdutos
    Left = 552
    Top = 48
  end
  object queryProdutos: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'select * from produtos')
    Params = <>
    Left = 472
    Top = 48
    object queryProdutosid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object queryProdutosnome: TWideStringField
      DisplayLabel = 'NOME'
      FieldName = 'nome'
    end
    object queryProdutosvalor: TFloatField
      DisplayLabel = 'VALOR'
      FieldName = 'valor'
    end
    object queryProdutosquantidade: TIntegerField
      DisplayLabel = 'QUANTIDADE'
      FieldName = 'quantidade'
    end
    object queryProdutosdesconto_promocional: TIntegerField
      DisplayLabel = 'DESCONTO PROMOCIONAL'
      FieldName = 'desconto_promocional'
    end
    object queryProdutosdata_inclusao: TDateTimeField
      DisplayLabel = 'DATA DE INCLUS'#195'O'
      FieldName = 'data_inclusao'
    end
    object queryProdutosdata_edicao: TDateTimeField
      DisplayLabel = 'DATA DE EDI'#199#195'O'
      FieldName = 'data_edicao'
    end
  end
end
