inherited frmTelaCadastroPedidos: TfrmTelaCadastroPedidos
  Caption = 'Cadastro de Pedidos'
  ClientHeight = 482
  ClientWidth = 924
  OnCreate = FormCreate
  ExplicitWidth = 940
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 285
    Width = 924
    Height = 133
    ExplicitLeft = 0
    ExplicitTop = 285
    ExplicitWidth = 1112
    ExplicitHeight = 133
    object lblQuantidade: TLabel
      Left = 755
      Top = 36
      Width = 133
      Height = 13
      Caption = 'QUANTIDADE DESEJADA'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object lblValorTotalDesconto: TLabel
      Left = 622
      Top = 83
      Width = 99
      Height = 13
      Caption = 'Valor Total Desconto'
      Enabled = False
    end
    object lblDescontoPromocional: TLabel
      Left = 670
      Top = 36
      Width = 51
      Height = 13
      Caption = 'Valor Total'
      Enabled = False
    end
    object lblDataInclusao: TLabel
      Left = 486
      Top = 36
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
      Enabled = False
    end
    object lblDataEdicao: TLabel
      Left = 495
      Top = 83
      Width = 72
      Height = 13
      Caption = 'Data de Edi'#231#227'o'
      Enabled = False
    end
    object lblClienteSelecionado: TLabel
      Left = 134
      Top = 5
      Width = 126
      Height = 13
      Caption = 'CLIENTE SELECIONADO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblProdutoSelecionado: TLabel
      Left = 698
      Top = 5
      Width = 136
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = 'PRODUTO SELECIONADO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 690
    end
    object edtValorTotalDesconto: TEdit
      Left = 601
      Top = 98
      Width = 120
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object edtValorTotal: TEdit
      Left = 602
      Top = 55
      Width = 119
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object edtDataInclusao: TEdit
      Left = 455
      Top = 55
      Width = 112
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object edtDataEdicao: TEdit
      Left = 456
      Top = 98
      Width = 111
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edtQuantidadeTotal: TEdit
      Left = 767
      Top = 55
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnCalcular: TBitBtn
      Left = 813
      Top = 94
      Width = 75
      Height = 25
      Caption = 'CALCULAR'
      Enabled = False
      TabOrder = 5
      OnClick = btnCalcularClick
    end
  end
  inherited Panel2: TPanel
    Top = 418
    Width = 924
    ExplicitTop = 418
    ExplicitWidth = 1112
    inherited btnOK: TBitBtn
      Left = 589
      Anchors = [akRight, akBottom]
      OnClick = btnOKClick
      ExplicitLeft = 570
    end
    inherited btnCancelar: TBitBtn
      Left = 670
      Anchors = [akRight, akBottom]
      ExplicitLeft = 651
    end
    inherited btnEditar: TBitBtn
      Left = 751
      Anchors = [akRight, akBottom]
      Enabled = True
      OnClick = btnEditarClick
      ExplicitLeft = 732
    end
    inherited btnSair: TBitBtn
      Left = 832
      Anchors = [akRight, akBottom]
      OnClick = btnSairClick
      ExplicitLeft = 813
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 924
    Height = 285
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 1112
    object grdProdutos: TDBGrid
      Left = 422
      Top = 1
      Width = 501
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
          Width = 142
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
      Width = 424
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
