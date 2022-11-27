inherited frmTelaListagemClientes: TfrmTelaListagemClientes
  Caption = 'Listagem de Clientes'
  ClientHeight = 600
  ClientWidth = 917
  ExplicitWidth = 933
  ExplicitHeight = 639
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdListagem: TDBGrid
    Width = 917
    Height = 559
    OnDblClick = grdListagemDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sobrenome'
        Width = 77
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
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'celular'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_inclusao'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_edicao'
        Width = 117
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    Top = 559
    Width = 917
    ExplicitTop = 559
    ExplicitWidth = 917
    inherited btnCadastrar: TBitBtn
      OnClick = btnCadastrarClick
    end
    inherited btnEditar: TBitBtn
      OnClick = btnEditarClick
    end
    inherited btnDeletar: TBitBtn
      OnClick = btnDeletarClick
    end
    inherited btnFechar: TBitBtn
      OnClick = btnFecharClick
    end
  end
  inherited qryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select * from clientes')
    object qryListagemid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object qryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
    end
    object qryListagemsobrenome: TWideStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'sobrenome'
    end
    object qryListagemcpf: TWideStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Size = 11
    end
    object qryListagemendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 50
    end
    object qryListagemcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 8
    end
    object qryListagemtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 11
    end
    object qryListagemcelular: TWideStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      Size = 11
    end
    object qryListagemdata_inclusao: TDateTimeField
      DisplayLabel = 'Data de Inclus'#227'o'
      FieldName = 'data_inclusao'
    end
    object qryListagemdata_edicao: TDateTimeField
      DisplayLabel = 'Data de Edi'#231#227'o'
      FieldName = 'data_edicao'
    end
  end
end
